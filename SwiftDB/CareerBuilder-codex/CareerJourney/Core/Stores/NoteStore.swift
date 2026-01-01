//
//  NoteStore.swift
//  CareerKit
//
//  Central store for managing notes
//

import SwiftUI
import SwiftData
import Foundation
import OSLog
import Combine

@MainActor
final class NoteStore: ObservableObject {
    // NoteStore owns the Notes tab and participates in backup imports when note files are detected.
    // Notes associated with jobs appear in job detail views via shared SwiftData relationships.
    // Published properties
    @Published var notes: [SwiftDataNote] = []
    @Published var selectedNoteID: UUID?
    @Published var searchText = ""
    @Published var showPinnedOnly = false
    @Published var sortOption: NoteSortOption = .modifiedDate
    @Published var isLoading = false
    @Published var error: Error?

    weak var jobStore: JobStore?
    
    // Model context
    private var modelContext: ModelContext?
    
    // Logger
    private let logger = Logger(subsystem: "com.careerkit.notestore", category: "NoteStore")
    
    init(modelContext: ModelContext? = nil) {
        self.modelContext = modelContext
    }
    
    // MARK: - Computed Properties
    
    var selectedNote: SwiftDataNote? {
        guard let id = selectedNoteID else { return nil }
        return notes.first { $0.id == id }
    }
    
    var filteredNotes: [SwiftDataNote] {
        var results = notes
        
        // Apply search filter
        if !searchText.isEmpty {
            results = results.filter { note in
                note.title.localizedCaseInsensitiveContains(searchText) ||
                note.content.localizedCaseInsensitiveContains(searchText) ||
                note.tags.contains { $0.localizedCaseInsensitiveContains(searchText) }
            }
        }
        
        // Apply pinned filter
        if showPinnedOnly {
            results = results.filter { $0.isPinned }
        }
        
        // Apply sorting
        switch sortOption {
        case .modifiedDate:
            results.sort { $0.modifiedDate > $1.modifiedDate }
        case .createdDate:
            results.sort { $0.createdDate > $1.createdDate }
        case .title:
            results.sort { $0.title < $1.title }
        case .pinned:
            results.sort { note1, note2 in
                if note1.isPinned == note2.isPinned {
                    return note1.modifiedDate > note2.modifiedDate
                }
                return note1.isPinned && !note2.isPinned
            }
        }
        
        return results
    }
    
    var pinnedNotes: [SwiftDataNote] {
        notes.filter { $0.isPinned }
            .sorted { $0.modifiedDate > $1.modifiedDate }
    }
    
    var recentNotes: [SwiftDataNote] {
        notes.filter { !$0.isPinned }
            .sorted { $0.modifiedDate > $1.modifiedDate }
            .prefix(10)
            .map { $0 }
    }
    
    var allTags: [String] {
        let tags = notes.flatMap { $0.tags }
        return Array(Set(tags)).sorted()
    }
    
    // MARK: - Data Management
    
    func initializeDataIfNeeded() {
        Task { @MainActor in
            guard let modelContext = modelContext else {
                logger.error("No model context available")
                return
            }
            
            do {
                let descriptor = FetchDescriptor<SwiftDataNote>(
                    sortBy: [SortDescriptor(\.modifiedDate, order: .reverse)]
                )
                notes = try modelContext.fetch(descriptor)
                logger.info("Loaded \(self.notes.count) notes")
                
                // Select the first note if none selected
                if selectedNoteID == nil && !notes.isEmpty {
                    selectedNoteID = notes.first?.id
                }
            } catch {
                logger.error("Failed to fetch notes: \(error.localizedDescription)")
                self.error = error
            }
        }
    }
    
    // MARK: - CRUD Operations
    
    func createNote(title: String = "New Note", content: String = "", tags: [String] = []) -> SwiftDataNote {
        let note = SwiftDataNote(
            title: title.isEmpty ? "New Note" : title,
            content: content,
            tags: tags
        )
        
        modelContext?.insert(note)
        notes.insert(note, at: 0)
        selectedNoteID = note.id
        
        saveChanges()
        logger.info("Created new note: \(note.title)")
        
        return note
    }
    
    func updateNote(_ note: SwiftDataNote, title: String? = nil, content: String? = nil, tags: [String]? = nil) {
        if let title = title {
            note.title = title
        }
        
        if let content = content {
            note.content = content
        }
        
        if let tags = tags {
            note.tags = tags
        }
        
        note.updateModifiedDate()
        
        // Re-sort notes if needed
        if let index = notes.firstIndex(where: { $0.id == note.id }) {
            notes[index] = note
        }
        
        saveChanges()
    }
    
    func deleteNote(_ noteID: UUID) {
        guard let note = notes.first(where: { $0.id == noteID }) else { return }
        
        modelContext?.delete(note)
        notes.removeAll { $0.id == noteID }
        
        // Select another note if the deleted one was selected
        if selectedNoteID == noteID {
            selectedNoteID = notes.first?.id
        }
        
        saveChanges()
        logger.info("Deleted note: \(note.title)")
    }
    
    func deleteNotes(_ noteIDs: Set<UUID>) {
        for id in noteIDs {
            if let note = notes.first(where: { $0.id == id }) {
                modelContext?.delete(note)
            }
        }
        
        notes.removeAll { noteIDs.contains($0.id) }
        
        if let selectedID = selectedNoteID, noteIDs.contains(selectedID) {
            selectedNoteID = notes.first?.id
        }
        
        saveChanges()
        logger.info("Deleted \(noteIDs.count) notes")
    }
    
    // MARK: - Note Actions
    
    func togglePin(for noteID: UUID) {
        guard let note = notes.first(where: { $0.id == noteID }) else { return }
        
        note.isPinned.toggle()
        note.updateModifiedDate()
        
        saveChanges()
    }
    
    func duplicateNote(_ noteID: UUID) {
        guard let originalNote = notes.first(where: { $0.id == noteID }) else { return }
        
        _ = createNote(
            title: "\(originalNote.title) (Copy)",
            content: originalNote.content,
            tags: originalNote.tags
        )
        
        logger.info("Duplicated note: \(originalNote.title)")
    }
    
    func addTag(_ tag: String, to noteID: UUID) {
        guard let note = notes.first(where: { $0.id == noteID }),
              !note.tags.contains(tag) else { return }
        
        note.tags.append(tag)
        note.updateModifiedDate()
        
        saveChanges()
    }
    
    func removeTag(_ tag: String, from noteID: UUID) {
        guard let note = notes.first(where: { $0.id == noteID }) else { return }
        
        note.tags.removeAll { $0 == tag }
        note.updateModifiedDate()
        
        saveChanges()
    }
    
    // MARK: - Import/Export

    func importNotes(from backups: [NoteBackupData]) async {
        guard let modelContext = modelContext else {
            logger.error("No model context available")
            return
        }

        isLoading = true
        defer { isLoading = false }

        var importedCount = 0

        for backup in backups {
            let note = SwiftDataNote(
                id: backup.id,
                title: backup.title,
                content: backup.content,
                createdDate: backup.createdDate,
                modifiedDate: backup.modifiedDate,
                tags: backup.tags,
                isPinned: backup.isPinned,
                associatedJobApplicationID: backup.associatedJobApplicationID
            )

            modelContext.insert(note)
            notes.append(note)
            importedCount += 1
        }

        saveChanges()
        logger.info("Imported \(importedCount) notes from backup")
    }

    func importNotes(from url: URL) {
        var existingSignatures = Set(notes.compactMap { noteSignature(title: $0.title, content: $0.content, tags: $0.tags) })
        var importedNotes = 0
        var skippedNotes = 0

        do {
            switch url.pathExtension.lowercased() {
            case "csv":
                try importNotesFromCSV(url, existingSignatures: &existingSignatures, imported: &importedNotes, skipped: &skippedNotes)
            default:
                try importNotesFromMarkdown(url, existingSignatures: &existingSignatures, imported: &importedNotes, skipped: &skippedNotes)
            }

            logger.info("Successfully imported notes from \(url.lastPathComponent): \(importedNotes) added, \(skippedNotes) skipped")
        } catch {
            logger.error("Failed to import notes: \(error.localizedDescription)")
            self.error = error
        }
    }

    private func importNotesFromMarkdown(
        _ url: URL,
        existingSignatures: inout Set<String>,
        imported: inout Int,
        skipped: inout Int
    ) throws {
        let content = try String(contentsOf: url, encoding: .utf8).replacingOccurrences(of: "\r", with: "")
        let lines = content.components(separatedBy: "\n")
        var currentTitle: String?
        var buffer: [String] = []
        
        func flush() {
            guard let title = currentTitle else { return }
            let filtered = buffer
                .filter { !$0.starts(with: "_Last modified:") && $0.trimmingCharacters(in: .whitespacesAndNewlines) != "---" }
            let noteContent = filtered.joined(separator: "\n").trimmingCharacters(in: .whitespacesAndNewlines)
            let resolvedTitle = title.isEmpty ? "Untitled Note" : title
            guard let signature = noteSignature(title: resolvedTitle, content: noteContent, tags: []) else { return }
            guard !existingSignatures.contains(signature) else {
                skipped += 1
                buffer.removeAll()
                return
            }
            _ = createNote(title: resolvedTitle, content: noteContent)
            existingSignatures.insert(signature)
            imported += 1
            buffer.removeAll()
        }
        
        for rawLine in lines {
            let trimmed = rawLine.trimmingCharacters(in: .whitespaces)
            if trimmed.hasPrefix("#") {
                flush()
                let cleanedTitle = trimmed.trimmingCharacters(in: CharacterSet(charactersIn: "# "))
                currentTitle = cleanedTitle
                continue
            }
            if currentTitle == nil && buffer.isEmpty && trimmed.isEmpty {
                continue
            }
            buffer.append(rawLine)
        }
        if currentTitle == nil && !buffer.isEmpty {
            currentTitle = buffer.first?.trimmingCharacters(in: .whitespacesAndNewlines) ?? "Imported Note"
        }
        flush()
    }

    private func importNotesFromCSV(
        _ url: URL,
        existingSignatures: inout Set<String>,
        imported: inout Int,
        skipped: inout Int
    ) throws {
        let content = try String(contentsOf: url, encoding: .utf8)
        let rows = parseCSVRows(from: content)
        guard let header = rows.first else { return }

        let lowercasedHeader = header.map { $0.lowercased() }
        let titleIndex = lowercasedHeader.firstIndex(of: "title") ?? 0
        let contentIndex = lowercasedHeader.firstIndex(of: "content") ?? min(header.count - 1, 1)
        let tagsIndex = lowercasedHeader.firstIndex(of: "tags")

        for row in rows.dropFirst() {
            guard row.indices.contains(titleIndex) else { continue }

            let title = row[safe: titleIndex].trimmingCharacters(in: .whitespacesAndNewlines)
            let body = row.indices.contains(contentIndex) ? row[contentIndex].trimmingCharacters(in: .whitespacesAndNewlines) : ""
            let tagsString = tagsIndex.flatMap { row.indices.contains($0) ? row[$0] : nil } ?? ""

            guard !title.isEmpty || !body.isEmpty else { continue }

            let delimiters: Set<Character> = [",", ";", "|"]
            let tags = tagsString
                .split(whereSeparator: { delimiters.contains($0) })
                .map { String($0).trimmingCharacters(in: .whitespacesAndNewlines) }
                .filter { !$0.isEmpty }
            let resolvedTitle = title.isEmpty ? "Untitled Note" : title
            let normalizedTags = tags.sorted()
            guard let signature = noteSignature(title: resolvedTitle, content: body, tags: normalizedTags) else { continue }
            guard !existingSignatures.contains(signature) else {
                skipped += 1
                continue
            }

            let note = createNote(title: resolvedTitle, content: body)
            if !normalizedTags.isEmpty {
                note.tags = normalizedTags
            }
            existingSignatures.insert(signature)
            imported += 1
        }
    }

    private func parseCSVRows(from text: String) -> [[String]] {
        let characters = Array(text)
        var index = 0
        var rows: [[String]] = []
        var currentRow: [String] = []
        var currentField = ""
        var inQuotes = false

        while index < characters.count {
            let char = characters[index]

            switch char {
            case "\"":
                if inQuotes, index + 1 < characters.count, characters[index + 1] == "\"" {
                    currentField.append("\"")
                    index += 1
                } else {
                    inQuotes.toggle()
                }
            case "," where !inQuotes:
                currentRow.append(currentField)
                currentField.removeAll(keepingCapacity: false)
            case "\n" where !inQuotes:
                currentRow.append(currentField)
                rows.append(currentRow)
                currentRow.removeAll(keepingCapacity: true)
                currentField.removeAll(keepingCapacity: false)
            case "\r":
                break
            default:
                currentField.append(char)
            }

            index += 1
        }

        if !currentField.isEmpty || !currentRow.isEmpty {
            currentRow.append(currentField)
            rows.append(currentRow)
        }

        return rows
    }

    private func noteSignature(title: String, content: String, tags: [String]) -> String? {
        let normalizedTitle = normalizeNoteText(title)
        let normalizedContent = normalizeNoteText(content)
        if normalizedTitle.isEmpty && normalizedContent.isEmpty {
            return nil
        }
        let normalizedTags = tags
            .map { normalizeNoteText($0) }
            .filter { !$0.isEmpty }
            .sorted()
            .joined(separator: "|")
        return [normalizedTitle, normalizedContent, normalizedTags].joined(separator: "::")
    }

    private func normalizeNoteText(_ text: String) -> String {
        let cleaned = text.replacingOccurrences(of: "\r", with: "")
        let collapsed = cleaned.replacingOccurrences(of: "\\s+", with: " ", options: .regularExpression)
        return collapsed.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
    }

    func exportNotes(to url: URL) {
        var markdown = "# Notes Export\n\n"
        markdown += "_Exported on \(formatDate(Date()))_\n\n"
        
        for note in notes {
            markdown += "## \(note.title)\n\n"
            markdown += "\(note.content)\n\n"
            
            if !note.tags.isEmpty {
                markdown += "**Tags:** \(note.tags.joined(separator: ", "))\n\n"
            }
            
            markdown += "_Last modified: \(formatDate(note.modifiedDate))_\n\n"
            markdown += "---\n\n"
        }
        
        do {
            try markdown.write(to: url, atomically: true, encoding: .utf8)
            logger.info("Successfully exported \(self.notes.count) notes")
        } catch {
            logger.error("Failed to export notes: \(error.localizedDescription)")
            self.error = error
        }
    }
    
    // MARK: - Search
    
    func searchNotes(with query: String) -> [SwiftDataNote] {
        guard !query.isEmpty else { return notes }
        
        return notes.filter { note in
            note.title.localizedCaseInsensitiveContains(query) ||
            note.content.localizedCaseInsensitiveContains(query) ||
            note.tags.contains { $0.localizedCaseInsensitiveContains(query) }
        }
    }
    
    func notesWithTag(_ tag: String) -> [SwiftDataNote] {
        notes.filter { $0.tags.contains(tag) }
            .sorted { $0.modifiedDate > $1.modifiedDate }
    }
    
    func notesForJob(_ jobID: UUID) -> [SwiftDataNote] {
        notes.filter { $0.associatedJobApplicationID == jobID }
            .sorted { $0.modifiedDate > $1.modifiedDate }
    }
    
    // MARK: - Private Methods
    
    private func saveChanges() {
        do {
            try modelContext?.save()
        } catch {
            logger.error("Failed to save changes: \(error.localizedDescription)")
            self.error = error
        }
    }
    
private func formatDate(_ date: Date) -> String {
    let formatter = DateFormatter()
    formatter.dateStyle = .medium
    formatter.timeStyle = .short
    return formatter.string(from: date)
}
}

private extension Array where Element == String {
    subscript(safe index: Index) -> String {
        guard indices.contains(index) else { return "" }
        return self[index]
    }
}

// MARK: - Supporting Types

enum NoteSortOption: String, CaseIterable {
    case modifiedDate = "Last Modified"
    case createdDate = "Date Created"
    case title = "Title"
    case pinned = "Pinned First"
    
    var title: String { rawValue }
}
