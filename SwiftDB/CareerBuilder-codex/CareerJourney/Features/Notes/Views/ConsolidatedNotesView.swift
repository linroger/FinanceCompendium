//
//  ConsolidatedNotesView.swift
//  CareerKit
//
//  Comprehensive notes management interface with tagging, search, and job association
//

import SwiftUI
import SwiftData
import OSLog
import UniformTypeIdentifiers

struct ConsolidatedNotesView: View {
    @EnvironmentObject var noteStore: NoteStore
    @EnvironmentObject var jobStore: JobStore
    @EnvironmentObject private var settingsManager: SettingsManager
    @EnvironmentObject private var importExportHelper: ImportExportHelper
    @Environment(\.modelContext) private var modelContext
    
    @State private var selectedViewMode: NotesViewMode = .splitView
    @State private var showingImportExport = false
    @State private var showingNoteEditor = false
    @State private var showingDeleteAlert = false
    @State private var noteToDelete: SwiftDataNote?
    @State private var isEditingNote = false
    @State private var selectedTag: String? = nil
    @State private var showingTagManager = false
    
    // Editor state
    @State private var editingTitle = ""
    @State private var editingContent = ""
    @State private var editingTags: [String] = []
    @State private var newTag = ""
    
    // Layout settings
    @AppStorage("notesShowPreview") private var showPreview: Bool = true
    @AppStorage("notesCompactMode") private var compactMode: Bool = false
    @AppStorage("notesSidebarWidth") private var sidebarWidth: Double = 300
    
    enum NotesViewMode: String, CaseIterable {
        case splitView = "Split View"
        case editor = "Editor Only"
        case list = "List Only"
        
        var icon: String {
            switch self {
            case .splitView: return "sidebar.left"
            case .editor: return "doc.text"
            case .list: return "list.bullet"
            }
        }
    }
    
    var body: some View {
        HStack(spacing: 0) {
            // Sidebar
            sidebarContent
                .frame(minWidth: 250, idealWidth: 300, maxWidth: 350)
                .background(Color(nsColor: .controlBackgroundColor))

            Divider()

            // Main content with NavigationStack
            NavigationStack {
                mainContent
                    .navigationTitle("Notes")
            }
        }
        .toolbar {
            toolbarContent
        }
        .onAppear {
            loadSelectedNote()
        }
        .sheet(isPresented: $showingImportExport) {
            ImportExportView()
                .environmentObject(noteStore)
                .environmentObject(SettingsManager.shared)
        }
        .sheet(isPresented: $showingTagManager) {
            TagManagerView()
                .environmentObject(noteStore)
                .environmentObject(SettingsManager.shared)
        }
        .alert("Delete Note", isPresented: $showingDeleteAlert, presenting: noteToDelete) { note in
            Button("Cancel", role: .cancel) { }
            Button("Delete", role: .destructive) {
                noteStore.deleteNote(note.id)
            }
        } message: { note in
            Text("Are you sure you want to delete '\(note.title)'? This action cannot be undone.")
        }
        .responsiveLayout()
        .globalKeyboardShortcuts([
            KeyboardShortcutHandler("n", modifiers: .command) {
                createNewNote()
            },
            KeyboardShortcutHandler("s", modifiers: .command) {
                saveCurrentNote()
            },
            KeyboardShortcutHandler("f", modifiers: .command) {
                // Focus search
            }
        ])
    }
    
    // MARK: - Sidebar Content
    
    private var sidebarContent: some View {
        VStack(spacing: 0) {
            // Section header
            HStack {
                Text("Notes")
                    .font(.headline)
                    .fontWeight(.semibold)
                Spacer()
            }
            .padding()
            .background(Color(nsColor: .controlBackgroundColor))

            Divider()

            // Search and filters
            searchAndFiltersSection

            Divider()

            // Quick access sections
            quickAccessSection

            Divider()

            // Notes list
            notesListSection
                .frame(maxHeight: .infinity)
        }
        .background(Color.clear)
    }
    
    private var searchAndFiltersSection: some View {
        VStack(spacing: Theme.Spacing.small) {
            // Search field
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.secondary)
                    .font(.system(size: 14))
                
                TextField("Search notes...", text: $noteStore.searchText)
                    .textFieldStyle(.plain)
                    .accessibilityLabel("Search Notes")
                
                if !noteStore.searchText.isEmpty {
                    Button(action: {
                        noteStore.searchText = ""
                    }) {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(.secondary)
                            .font(.system(size: 14))
                    }
                    .buttonStyle(.plain)
                }
            }
            .padding(8)
            .background(Material.ultraThin, in: RoundedRectangle(cornerRadius: 6))
            
            // Filter toggles
            HStack {
                Button(action: {
                    noteStore.showPinnedOnly.toggle()
                }) {
                    HStack(spacing: 4) {
                        Image(systemName: noteStore.showPinnedOnly ? "pin.fill" : "pin")
                            .font(.system(size: 11))
                        Text("Pinned Only")
                            .font(.system(size: 11))
                    }
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(
                        Capsule()
                            .fill(noteStore.showPinnedOnly ? Color.accentColor.opacity(0.2) : Color.secondary.opacity(0.1))
                    )
                    .foregroundColor(noteStore.showPinnedOnly ? .accentColor : .primary)
                }
                .buttonStyle(.plain)
                
                Menu {
                    ForEach(NoteSortOption.allCases, id: \.self) { option in
                        Button(action: {
                            noteStore.sortOption = option
                        }) {
                            HStack {
                                Text(option.title)
                                if noteStore.sortOption == option {
                                    Image(systemName: "checkmark")
                                }
                            }
                        }
                    }
                } label: {
                    HStack(spacing: 4) {
                        Image(systemName: "arrow.up.arrow.down")
                            .font(.system(size: 11))
                        Text(noteStore.sortOption.title)
                            .font(.system(size: 11))
                    }
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(Capsule().fill(Color.secondary.opacity(0.1)))
                }
                .buttonStyle(.plain)
                
                Spacer()
            }
        }
        .padding()
    }
    
    private var quickAccessSection: some View {
        VStack(alignment: .leading, spacing: Theme.Spacing.small) {
            Text("Quick Access")
                .font(.caption)
                .fontWeight(.medium)
                .foregroundColor(.secondary)
                .padding(.horizontal)
            
            LazyVGrid(columns: [
                GridItem(.flexible()),
                GridItem(.flexible())
            ], spacing: Theme.Spacing.small) {
                QuickAccessCard(
                    title: "All Notes",
                    count: noteStore.notes.count,
                    icon: "note.text",
                    color: .blue,
                    isSelected: selectedTag == nil && !noteStore.showPinnedOnly
                ) {
                    selectedTag = nil
                    noteStore.showPinnedOnly = false
                }
                
                QuickAccessCard(
                    title: "Pinned",
                    count: noteStore.pinnedNotes.count,
                    icon: "pin.fill",
                    color: .orange,
                    isSelected: noteStore.showPinnedOnly
                ) {
                    noteStore.showPinnedOnly = true
                }
            }
            .padding(.horizontal)
            
            // Tags section
            if !noteStore.allTags.isEmpty {
                VStack(alignment: .leading, spacing: Theme.Spacing.xSmall) {
                    HStack {
                        Text("Tags")
                            .font(.caption)
                            .fontWeight(.medium)
                            .foregroundColor(.secondary)
                        
                        Spacer()
                        
                        Button("Manage") {
                            showingTagManager = true
                        }
                        .font(.caption2)
                        .buttonStyle(.plain)
                        .foregroundColor(.accentColor)
                    }
                    .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 6) {
                            ForEach(noteStore.allTags.prefix(10), id: \.self) { tag in
                                TagChip(
                                    tag: tag,
                                    count: noteStore.notesWithTag(tag).count,
                                    isSelected: selectedTag == tag
                                ) {
                                    if selectedTag == tag {
                                        selectedTag = nil
                                    } else {
                                        selectedTag = tag
                                        noteStore.showPinnedOnly = false
                                    }
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
        }
        .padding(.vertical)
    }
    
    private var notesListSection: some View {
        List(filteredNotesForDisplay, selection: $noteStore.selectedNoteID) { note in
            NoteRowView(note: note, compactMode: compactMode)
                .tag(note.id)
                .contextMenu {
                    noteContextMenu(note)
                }
        }
        .listStyle(.sidebar)
        .onChange(of: noteStore.selectedNoteID) { _, newValue in
            if newValue != nil {
                loadSelectedNote()
            }
        }
    }
    
    // MARK: - Main Content
    
    private var mainContent: some View {
        Group {
            switch selectedViewMode {
            case .splitView:
                splitViewContent
            case .editor:
                editorOnlyContent
            case .list:
                listOnlyContent
            }
        }
    }
    
    private var splitViewContent: some View {
        HSplitView {
            // Editor
            noteEditorView
                .frame(minWidth: 400)
            
            // Preview (if enabled)
            if showPreview && !editingContent.isEmpty {
                notePreviewView
                    .frame(minWidth: 300)
            }
        }
    }
    
    private var editorOnlyContent: some View {
        noteEditorView
    }
    
    private var listOnlyContent: some View {
        NotesTableView(notes: noteStore.filteredNotes)
            .environmentObject(noteStore)
    }
    
    private var noteEditorView: some View {
        VStack(spacing: 0) {
            // Note header
            if let selectedNote = noteStore.selectedNote {
                noteHeaderView(selectedNote)
            }
            
            Divider()
            
            // Editor content
            VStack(alignment: .leading, spacing: Theme.Spacing.medium) {
                // Title editor
                TextField("Note title...", text: $editingTitle)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .textFieldStyle(.plain)
                    .onSubmit {
                        saveCurrentNote()
                    }
                
                // Tags editor
                TagsEditorView(
                    tags: $editingTags,
                    newTag: $newTag,
                    availableTags: noteStore.allTags
                )
                
                Divider()
                
                // Content editor
                VStack(alignment: .leading, spacing: Theme.Spacing.small) {
                    HStack {
                        Text("Content")
                            .font(.subheadline)
                            .fontWeight(.medium)
                        
                        Spacer()
                        
                        if settingsManager.enableSpellCheck {
                            Text("Spell check enabled")
                                .font(.caption2)
                                .foregroundColor(.secondary)
                        }
                    }
                    
                    TextEditor(text: $editingContent)
                        .font(.body)
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.clear)
                        .scrollContentBackground(.hidden)
                        .frame(minHeight: 200)
                        .focusArea("noteContent")
                }
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        }
        .background(Color.clear)
    }
    
    private var notePreviewView: some View {
        VStack(alignment: .leading, spacing: Theme.Spacing.medium) {
            HStack {
                Text("Preview")
                    .font(.subheadline)
                    .fontWeight(.medium)
                
                Spacer()
                
                Button("Hide Preview") {
                    showPreview = false
                }
                .font(.caption)
                .buttonStyle(.plain)
            }
            
            ScrollView {
                VStack(alignment: .leading, spacing: Theme.Spacing.medium) {
                    // Title preview
                    if !editingTitle.isEmpty {
                        Text(editingTitle)
                            .font(.title2)
                            .fontWeight(.semibold)
                    }
                    
                    // Tags preview
                    if !editingTags.isEmpty {
                        HStack {
                            ForEach(editingTags, id: \.self) { tag in
                                Text(tag)
                                    .font(.caption)
                                    .padding(.horizontal, 8)
                                    .padding(.vertical, 2)
                                    .background(Color.accentColor.opacity(0.2))
                                    .foregroundColor(.accentColor)
                                    .cornerRadius(8)
                            }
                        }
                    }
                    
                    Divider()
                    
                    // Content preview
                    Text(editingContent)
                        .font(.system(.body, design: .monospaced))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
        .padding()
        .background(Color.secondary.opacity(0.05))
    }
    
    private func noteHeaderView(_ note: SwiftDataNote) -> some View {
        HStack {
            VStack(alignment: .leading, spacing: 2) {
                HStack {
                    if note.isPinned {
                        Image(systemName: "pin.fill")
                            .font(.caption)
                            .foregroundColor(.orange)
                    }
                    
                    Text("Last modified: \(note.modifiedDate.formatted(date: .abbreviated, time: .shortened))")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                
                if let jobID = note.associatedJobApplicationID,
                   let job = jobStore.jobApplications.first(where: { $0.id == jobID }) {
                    HStack {
                        Image(systemName: "briefcase")
                            .font(.caption2)
                            .foregroundColor(.accentColor)
                        Text("\(job.companyName) - \(job.jobTitle)")
                            .font(.caption2)
                            .foregroundColor(.accentColor)
                    }
                }
            }
            
            Spacer()
            
            HStack(spacing: 8) {
                Button {
                    noteStore.togglePin(for: note.id)
                    loadSelectedNote()
                } label: {
                    Image(systemName: note.isPinned ? "pin.slash" : "pin")
                        .foregroundColor(note.isPinned ? .orange : .secondary)
                }
                .buttonStyle(.plain)
                .help(note.isPinned ? "Unpin note" : "Pin note")
                
                Button {
                    noteStore.duplicateNote(note.id)
                } label: {
                    Image(systemName: "doc.on.doc")
                        .foregroundColor(.secondary)
                }
                .buttonStyle(.plain)
                .help("Duplicate note")
                
                Button {
                    noteToDelete = note
                    showingDeleteAlert = true
                } label: {
                    Image(systemName: "trash")
                        .foregroundColor(.red)
                }
                .buttonStyle(.plain)
                .help("Delete note")
            }
        }
        .padding()
    }
    
    // MARK: - Toolbar Content
    
    @ToolbarContentBuilder
    private var toolbarContent: some ToolbarContent {
        ToolbarItemGroup {
            Button {
                createNewNote()
            } label: {
                Label("New Note", systemImage: "plus")
            }
            .keyboardShortcut("n", modifiers: .command)
            
            Divider()
            
            // View mode picker
            Picker("View Mode", selection: $selectedViewMode) {
                ForEach(NotesViewMode.allCases, id: \.self) { mode in
                    Label(mode.rawValue, systemImage: mode.icon).tag(mode)
                }
            }
            .pickerStyle(.segmented)
            .frame(width: 200)
            
            Toggle("Preview", isOn: $showPreview)
                .toggleStyle(.switch)
                .controlSize(.mini)
                .disabled(selectedViewMode != .splitView)
            
            Divider()
            
            Button {
                showingImportExport = true
            } label: {
                Label("Import/Export", systemImage: "square.and.arrow.up")
            }
            
            Button {
                showingTagManager = true
            } label: {
                Label("Manage Tags", systemImage: "tag")
            }
        }
    }
    
    // MARK: - Helper Methods
    
    private var filteredNotesForDisplay: [SwiftDataNote] {
        if let tag = selectedTag {
            return noteStore.notesWithTag(tag)
        }
        return noteStore.filteredNotes
    }
    
    private func createNewNote() {
        let note = noteStore.createNote()
        editingTitle = note.title
        editingContent = note.content
        editingTags = note.tags
    }
    
    private func loadSelectedNote() {
        if let selectedNote = noteStore.selectedNote {
            editingTitle = selectedNote.title
            editingContent = selectedNote.content
            editingTags = selectedNote.tags
        }
    }
    
    private func saveCurrentNote() {
        guard let selectedNote = noteStore.selectedNote else { return }
        
        noteStore.updateNote(
            selectedNote,
            title: editingTitle.isEmpty ? "Untitled Note" : editingTitle,
            content: editingContent,
            tags: editingTags
        )
    }
    
    @ViewBuilder
    private func noteContextMenu(_ note: SwiftDataNote) -> some View {
        Button("Edit") {
            noteStore.selectedNoteID = note.id
            loadSelectedNote()
        }
        
        Button(note.isPinned ? "Unpin" : "Pin") {
            noteStore.togglePin(for: note.id)
        }
        
        Button("Duplicate") {
            noteStore.duplicateNote(note.id)
        }
        
        Menu("Associate with Job") {
            Button("None") {
                noteStore.updateNote(note, content: note.content)
            }
            
            ForEach(jobStore.jobApplications.prefix(10)) { job in
                Button("\(job.companyName) - \(job.jobTitle)") {
                    // Update note with job association
                    // This would require extending the note model
                }
            }
        }
        
        Divider()
        
        Button("Delete", role: .destructive) {
            noteToDelete = note
            showingDeleteAlert = true
        }
    }
}

// MARK: - Supporting Views

struct QuickAccessCard: View {
    let title: String
    let count: Int
    let icon: String
    let color: Color
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            VStack(spacing: 4) {
                HStack {
                    Image(systemName: icon)
                        .foregroundColor(color)
                        .font(.caption)
                    
                    Spacer()
                    
                    Text("\(count)")
                        .font(.caption)
                        .fontWeight(.medium)
                        .foregroundColor(.primary)
                }
                
                Text(title)
                    .font(.caption2)
                    .foregroundColor(.secondary)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(8)
            .background(
                RoundedRectangle(cornerRadius: 6)
                    .fill(isSelected ? color.opacity(0.15) : Color.secondary.opacity(0.05))
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(isSelected ? color.opacity(0.3) : Color.clear, lineWidth: 1)
                    )
            )
        }
        .buttonStyle(.plain)
    }
}

struct TagChip: View {
    let tag: String
    let count: Int
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack(spacing: 2) {
                Text(tag)
                    .font(.caption2)
                Text("(\(count))")
                    .font(.caption2)
                    .foregroundColor(.secondary)
            }
            .padding(.horizontal, 6)
            .padding(.vertical, 2)
            .background(
                Capsule()
                    .fill(isSelected ? Color.accentColor.opacity(0.2) : Color.secondary.opacity(0.1))
            )
            .foregroundColor(isSelected ? .accentColor : .primary)
        }
        .buttonStyle(.plain)
    }
}

struct NoteRowView: View {
    let note: SwiftDataNote
    let compactMode: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: compactMode ? 2 : 4) {
            HStack {
                if note.isPinned {
                    Image(systemName: "pin.fill")
                        .font(.caption2)
                        .foregroundColor(.orange)
                }
                
                Text(note.title)
                    .font(compactMode ? .caption : .body)
                    .fontWeight(.medium)
                    .lineLimit(1)
                
                Spacer()
                
                Text(note.modifiedDate.formatted(date: .omitted, time: .shortened))
                    .font(.caption2)
                    .foregroundColor(.secondary)
            }
            
            if !compactMode && !note.content.isEmpty {
                Text(note.content)
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .lineLimit(2)
            }
            
            if !note.tags.isEmpty {
                HStack {
                    ForEach(note.tags.prefix(3), id: \.self) { tag in
                        Text(tag)
                            .font(.caption2)
                            .padding(.horizontal, 4)
                            .padding(.vertical, 1)
                            .background(Color.accentColor.opacity(0.1))
                            .foregroundColor(.accentColor)
                            .cornerRadius(4)
                    }
                    
                    if note.tags.count > 3 {
                        Text("+\(note.tags.count - 3)")
                            .font(.caption2)
                            .foregroundColor(.secondary)
                    }
                }
            }
        }
        .padding(.vertical, compactMode ? 2 : 4)
    }
}

struct TagsEditorView: View {
    @Binding var tags: [String]
    @Binding var newTag: String
    let availableTags: [String]
    
    var body: some View {
        VStack(alignment: .leading, spacing: Theme.Spacing.small) {
            HStack {
                Text("Tags")
                    .font(.subheadline)
                    .fontWeight(.medium)
                
                Spacer()
                
                HStack {
                    TextField("Add tag...", text: $newTag)
                        .textFieldStyle(.roundedBorder)
                        .frame(width: 120)
                        .onSubmit {
                            addTag()
                        }
                    
                    Button("Add") {
                        addTag()
                    }
                    .buttonStyle(.bordered)
                    .controlSize(.small)
                    .disabled(newTag.isEmpty)
                }
            }
            
            if !tags.isEmpty {
                FlowLayout(spacing: 6) {
                    ForEach(tags, id: \.self) { tag in
                        HStack(spacing: 4) {
                            Text(tag)
                                .font(.caption)
                            
                            Button {
                                removeTag(tag)
                            } label: {
                                Image(systemName: "xmark")
                                    .font(.caption2)
                            }
                            .buttonStyle(.plain)
                        }
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .background(Color.accentColor.opacity(0.2))
                        .foregroundColor(.accentColor)
                        .cornerRadius(8)
                    }
                }
            }
        }
    }
    
    private func addTag() {
        let trimmed = newTag.trimmingCharacters(in: .whitespacesAndNewlines)
        if !trimmed.isEmpty && !tags.contains(trimmed) {
            tags.append(trimmed)
            newTag = ""
        }
    }
    
    private func removeTag(_ tag: String) {
        tags.removeAll { $0 == tag }
    }
}

struct NotesTableView: View {
    @EnvironmentObject var noteStore: NoteStore
    let notes: [SwiftDataNote]
    
    var body: some View {
        Table(notes, selection: $noteStore.selectedNoteID) {
            TableColumn("Title") { note in
                HStack {
                    if note.isPinned {
                        Image(systemName: "pin.fill")
                            .foregroundColor(.orange)
                            .font(.caption)
                    }
                    Text(note.title)
                        .fontWeight(.medium)
                }
            }
            .width(min: 200)
            
            TableColumn("Modified") { note in
                Text(note.modifiedDate.formatted(date: .abbreviated, time: .shortened))
                    .foregroundColor(.secondary)
            }
            .width(ideal: 150)
            
            TableColumn("Tags") { note in
                HStack {
                    ForEach(note.tags.prefix(2), id: \.self) { tag in
                        Text(tag)
                            .font(.caption)
                            .padding(.horizontal, 4)
                            .padding(.vertical, 1)
                            .background(Color.accentColor.opacity(0.1))
                            .foregroundColor(.accentColor)
                            .cornerRadius(4)
                    }
                    if note.tags.count > 2 {
                        Text("+\(note.tags.count - 2)")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .width(ideal: 150)
        }
    }
}

// MARK: - Import/Export View

struct ImportExportView: View {
    @EnvironmentObject var noteStore: NoteStore
    @EnvironmentObject private var importExportHelper: ImportExportHelper
    @Environment(\.dismiss) var dismiss
    
    @State private var showingFileImporter = false
    @State private var showingFileExporter = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Import/Export Notes")
                .font(.title2)
                .fontWeight(.semibold)
            
            VStack(spacing: 12) {
                Button("Import Notes (Markdown or CSV)") {
                    importExportHelper.importNotes { url in
                        Task { @MainActor in
                            noteStore.importNotes(from: url)
                            dismiss()
                        }
                    }
                }
                .buttonStyle(.borderedProminent)
                
                Button("Export All Notes to Markdown") {
                    importExportHelper.exportNotes(defaultName: "CareerKit_Notes.md") { url in
                        Task { @MainActor in
                            noteStore.exportNotes(to: url)
                            dismiss()
                        }
                    }
                }
                .buttonStyle(.bordered)
            }
        }
    }
}

// MARK: - Tag Manager View

struct TagManagerView: View {
    @EnvironmentObject var noteStore: NoteStore
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Tag Manager")
                .font(.title2)
                .fontWeight(.semibold)
            
            List {
                ForEach(noteStore.allTags, id: \.self) { tag in
                    HStack {
                        Text(tag)
                        Spacer()
                        Text("\(noteStore.notesWithTag(tag).count)")
                            .foregroundColor(.secondary)
                    }
                }
            }
            .frame(height: 200)
            
            Button("Close") {
                dismiss()
            }
            .buttonStyle(.bordered)
        }
        .padding()
        .frame(width: 300, height: 300)
    }
}

// MARK: - Supporting Types

struct NotesDocument: FileDocument {
    static var readableContentTypes: [UTType] { [.plainText] }
    
    var content: String
    
    init(content: String) {
        self.content = content
    }
    
    init(configuration: ReadConfiguration) throws {
        guard let data = configuration.file.regularFileContents,
              let string = String(data: data, encoding: .utf8) else {
            throw CocoaError(.fileReadCorruptFile)
        }
        content = string
    }
    
    func fileWrapper(configuration: WriteConfiguration) throws -> FileWrapper {
        FileWrapper(regularFileWithContents: Data(content.utf8))
    }
}

// MARK: - Preview

#Preview {
    ConsolidatedNotesView()
        .environmentObject(NoteStore())
        .environmentObject(JobStore())
        .environmentObject(SettingsManager.shared)
        .environmentObject(ImportExportHelper())
}
