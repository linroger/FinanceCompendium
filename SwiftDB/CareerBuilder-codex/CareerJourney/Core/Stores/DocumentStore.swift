//
//  DocumentStore.swift
//  CareerKit
//
//  Central store for managing documents
//

import SwiftUI
import SwiftData
import Foundation
import UniformTypeIdentifiers
import PDFKit
import QuickLook
import OSLog
import Combine

@MainActor
final class DocumentStore: ObservableObject {
    // DocumentStore backs the Documents feature and is invoked during bulk imports from JobStore.
    // Updates here surface in job detail views because documents are linked by job IDs.
    // Published properties
    @Published var documents: [SwiftDataJobDocument] = []
    @Published var categories: [SwiftDataDocumentCategory] = []
    @Published var selectedDocumentID: UUID?
    @Published var selectedCategoryID: UUID?
    @Published var isLoading = false
    @Published var error: Error?

    weak var jobStore: JobStore?
    
    // Search and filter
    @Published var searchText = ""
    @Published var filterByType: String = "All"
    
    // Cache for document previews
    private var previewCache: [UUID: NSImage] = [:]
    private let previewQueue = DispatchQueue(label: "com.careerkit.documentstore.preview", qos: .userInitiated)
    
    // Performance optimization
    private let largeFileThreshold: Int = 10 * 1024 * 1024 // 10MB
    private let streamingChunkSize: Int = 1024 * 1024 // 1MB
    private let fileOperationQueue = OperationQueue()
    
    // Model context
    var modelContext: ModelContext?
    
    // Logger
    private let logger = Logger(subsystem: "com.careerkit.documentstore", category: "DocumentStore")
    
    init(modelContext: ModelContext? = nil) {
        self.modelContext = modelContext
    }
    
    // MARK: - Computed Properties
    
    var selectedDocument: SwiftDataJobDocument? {
        guard let id = selectedDocumentID else { return nil }
        return documents.first { $0.id == id }
    }
    
    var selectedCategory: SwiftDataDocumentCategory? {
        guard let id = selectedCategoryID else { return nil }
        return categories.first { $0.id == id }
    }
    
    var filteredDocuments: [SwiftDataJobDocument] {
        var results = documents
        
        // Apply search filter
        if !searchText.isEmpty {
            results = results.filter { doc in
                doc.fileName.localizedCaseInsensitiveContains(searchText) ||
                (doc.associatedCompany?.localizedCaseInsensitiveContains(searchText) ?? false) ||
                (doc.associatedJobTitle?.localizedCaseInsensitiveContains(searchText) ?? false)
            }
        }
        
        // Apply type filter
        if filterByType != "All" {
            results = results.filter { $0.documentType == filterByType }
        }
        
        // Apply category filter
        if let categoryID = selectedCategoryID {
            results = results.filter { $0.category?.id == categoryID }
        }
        
        // Sort by upload date
        results.sort { $0.uploadDate > $1.uploadDate }
        
        return results
    }
    
    var documentTypes: [String] {
        let types = Set(documents.map { $0.documentType }).filter { !$0.isEmpty }
        return ["All"] + types.sorted()
    }
    
    // MARK: - Data Management
    
    func initializeDataIfNeeded() {
        Task { @MainActor in
            guard let modelContext = modelContext else {
                logger.error("No model context available")
                return
            }
            
            do {
                // Fetch documents
                let documentDescriptor = FetchDescriptor<SwiftDataJobDocument>(
                    sortBy: [SortDescriptor(\.uploadDate, order: .reverse)]
                )
                documents = try modelContext.fetch(documentDescriptor)
                
                // Fetch categories
                let categoryDescriptor = FetchDescriptor<SwiftDataDocumentCategory>(
                    sortBy: [SortDescriptor(\.name)]
                )
                categories = try modelContext.fetch(categoryDescriptor)
                
                // Create default categories if none exist
                if categories.isEmpty {
                    createDefaultCategories()
                }
                
                logger.info("Loaded \(self.documents.count) documents and \(self.categories.count) categories")
            } catch {
                logger.error("Failed to fetch documents: \(error.localizedDescription)")
                self.error = error
            }
        }
    }
    
    private func createDefaultCategories() {
        let defaultCategories = [
            ("Resumes", "#007AFF", "doc.text"),
            ("Cover Letters", "#34C759", "envelope"),
            ("Portfolios", "#FF9500", "folder"),
            ("References", "#AF52DE", "person.2"),
            ("Certificates", "#FF3B30", "seal"),
            ("Other", "#8E8E93", "doc")
        ]
        
        for (name, color, icon) in defaultCategories {
            let category = SwiftDataDocumentCategory(
                name: name,
                colorHex: color,
                iconName: icon
            )
            modelContext?.insert(category)
            categories.append(category)
        }
        
        saveChanges()
    }
    
    // MARK: - Document Operations
    
    func uploadDocuments(from urls: [URL]) async {
        await MainActor.run {
            isLoading = true
        }

        let resolvedURLs = resolveDocumentSources(from: urls)
        var existingSignatures = existingDocumentSignatures()
        var skippedDuplicates = 0

        for url in resolvedURLs {
            let hasAccess = url.startAccessingSecurityScopedResource()
            defer { if hasAccess { url.stopAccessingSecurityScopedResource() } }
            do {
                let attributes = try FileManager.default.attributesOfItem(atPath: url.path)
                let fileSize = attributes[.size] as? Int ?? 0
                let mimeType = UTType(filenameExtension: url.pathExtension)?.preferredMIMEType ?? "application/octet-stream"
                let signature = documentSignature(url: url, fileSize: fileSize, mimeType: mimeType)

                guard !existingSignatures.contains(signature) else {
                    skippedDuplicates += 1
                    continue
                }

                let document = try await createDocument(from: url, fileSize: fileSize, mimeType: mimeType)
                modelContext?.insert(document)
                existingSignatures.insert(signature)

                await MainActor.run {
                    documents.append(document)
                }
            } catch {
                logger.error("Failed to upload document \(url.lastPathComponent): \(error.localizedDescription)")
            }
        }

        if skippedDuplicates > 0 {
            logger.info("Skipped \(skippedDuplicates) duplicate documents during import")
        }
        
        saveChanges()
        
        await MainActor.run {
            isLoading = false
        }
    }

    func importDocuments(from backups: [DocumentBackupData]) async {
        guard let modelContext = modelContext else {
            logger.error("No model context available")
            return
        }

        isLoading = true
        defer { isLoading = false }

        if categories.isEmpty {
            createDefaultCategories()
        }

        var importedCount = 0

        for backup in backups {
            let document = SwiftDataJobDocument(
                id: backup.id,
                fileName: backup.fileName,
                fileURL: backup.fileURL,
                fileData: nil,
                fileSize: backup.fileSize,
                mimeType: backup.mimeType,
                uploadDate: backup.uploadDate,
                documentType: backup.documentType,
                associatedCompany: backup.associatedCompany,
                associatedJobTitle: backup.associatedJobTitle,
                associatedApplicationDate: backup.associatedApplicationDate,
                createdDate: backup.createdDate,
                modifiedDate: backup.modifiedDate
            )

            if let jobID = backup.jobApplicationID,
               let job = jobStore?.jobApplications.first(where: { $0.id == jobID }) {
                document.jobApplication = job
            }

            if let categoryID = backup.categoryID,
               let category = categories.first(where: { $0.id == categoryID }) {
                document.category = category
            } else if let categoryName = backup.categoryName,
                      let category = categories.first(where: { $0.name == categoryName }) {
                document.category = category
            }

            modelContext.insert(document)
            documents.append(document)
            importedCount += 1
        }

        saveChanges()
        logger.info("Imported \(importedCount) documents from backup")
    }

    private func resolveDocumentSources(from urls: [URL]) -> [URL] {
        var results: [URL] = []
        var seen = Set<URL>()
        let fileManager = FileManager.default
        let allowedExtensions: Set<String> = [
            "pdf", "docx", "doc", "rtf", "txt", "md", "png", "jpg", "jpeg"
        ]

        for url in urls {
            if url.hasDirectoryPath {
                if let enumerator = fileManager.enumerator(at: url, includingPropertiesForKeys: [.isRegularFileKey], options: [.skipsHiddenFiles]) {
                    for case let fileURL as URL in enumerator {
                        do {
                            let values = try fileURL.resourceValues(forKeys: [.isRegularFileKey])
                            guard values.isRegularFile == true else { continue }
                            if allowedExtensions.contains(fileURL.pathExtension.lowercased()),
                               !seen.contains(fileURL) {
                                results.append(fileURL)
                                seen.insert(fileURL)
                            }
                        } catch {
                            logger.error("Failed to enumerate file \(fileURL.lastPathComponent, privacy: .public): \(error.localizedDescription, privacy: .public)")
                        }
                    }
                }
            } else if !seen.contains(url) {
                results.append(url)
                seen.insert(url)
            }
        }

        return results
    }

    private func uniqueDestinationURL(for fileName: String, in directory: URL, usedNames: inout Set<String>) -> URL {
        let sanitized = fileName
            .replacingOccurrences(of: "/", with: "-")
            .replacingOccurrences(of: ":", with: "-")
        let base = sanitized.isEmpty ? "Document" : sanitized
        let ext = (base as NSString).pathExtension
        let stem = ext.isEmpty ? base : (base as NSString).deletingPathExtension

        var candidate = base
        var counter = 1
        while usedNames.contains(candidate) || FileManager.default.fileExists(atPath: directory.appendingPathComponent(candidate).path) {
            candidate = ext.isEmpty ? "\(stem)-\(counter)" : "\(stem)-\(counter).\(ext)"
            counter += 1
        }

        usedNames.insert(candidate)
        return directory.appendingPathComponent(candidate)
    }
    
    func uploadDocumentsNonAsync(from urls: [URL]) {
        Task {
            await uploadDocuments(from: urls)
        }
    }

    // MARK: - Export

    func exportDocuments(to directory: URL) {
        let fileManager = FileManager.default
        let targetDirectory = directory
        var exportedCount = 0
        var usedNames = Set<String>()

        do {
            if !fileManager.fileExists(atPath: targetDirectory.path) {
                try fileManager.createDirectory(at: targetDirectory, withIntermediateDirectories: true)
            }

            for document in documents {
                let destination = uniqueDestinationURL(
                    for: document.fileName,
                    in: targetDirectory,
                    usedNames: &usedNames
                )

                if let data = document.fileData {
                    try data.write(to: destination, options: [.atomic])
                    exportedCount += 1
                } else if let sourceURL = document.fileURL {
                    let hasAccess = sourceURL.startAccessingSecurityScopedResource()
                    defer { if hasAccess { sourceURL.stopAccessingSecurityScopedResource() } }
                    if fileManager.fileExists(atPath: sourceURL.path) {
                        try fileManager.copyItem(at: sourceURL, to: destination)
                        exportedCount += 1
                    }
                }
            }

            logger.info("Successfully exported \(exportedCount) documents to \(targetDirectory.lastPathComponent, privacy: .public)")
        } catch {
            logger.error("Failed to export documents: \(error.localizedDescription, privacy: .public)")
            self.error = error
        }
    }
    
    private func createDocument(from url: URL, fileSize: Int, mimeType: String) async throws -> SwiftDataJobDocument {
        // Read file data
        let fileData = try Data(contentsOf: url)
        
        // Determine document type
        let documentType = determineDocumentType(from: url.lastPathComponent)
        
        // Create document
        let document = SwiftDataJobDocument(
            fileName: url.lastPathComponent,
            fileURL: url,
            fileData: fileData,
            fileSize: fileSize,
            mimeType: mimeType,
            documentType: documentType
        )
        
        // Auto-assign category
        if let category = categories.first(where: { $0.name.lowercased().contains(documentType.lowercased()) }) {
            document.category = category
        }
        
        return document
    }

    private func existingDocumentSignatures() -> Set<String> {
        Set(documents.compactMap { documentSignature(for: $0) })
    }

    private func documentSignature(for document: SwiftDataJobDocument) -> String? {
        if let url = document.fileURL {
            return url.standardizedFileURL.path.lowercased()
        }
        guard !document.fileName.isEmpty else { return nil }
        return [document.fileName.lowercased(), String(document.fileSize), document.mimeType.lowercased()]
            .joined(separator: "|")
    }

    private func documentSignature(url: URL, fileSize: Int, mimeType: String) -> String {
        let path = url.standardizedFileURL.path.lowercased()
        if !path.isEmpty {
            return path
        }
        return [url.lastPathComponent.lowercased(), String(fileSize), mimeType.lowercased()]
            .joined(separator: "|")
    }
    
    private func determineDocumentType(from fileName: String) -> String {
        let lowercased = fileName.lowercased()
        
        if lowercased.contains("resume") || lowercased.contains("cv") {
            return "resume"
        } else if lowercased.contains("cover") && lowercased.contains("letter") {
            return "cover_letter"
        } else if lowercased.contains("portfolio") {
            return "portfolio"
        } else if lowercased.contains("reference") || lowercased.contains("recommendation") {
            return "reference"
        } else if lowercased.contains("certificate") || lowercased.contains("certification") {
            return "certificate"
        } else {
            return "other"
        }
    }
    
    func deleteDocument(_ documentID: UUID) {
        guard let document = documents.first(where: { $0.id == documentID }) else { return }
        
        modelContext?.delete(document)
        documents.removeAll { $0.id == documentID }
        
        if selectedDocumentID == documentID {
            selectedDocumentID = nil
        }
        
        saveChanges()
    }
    
    func downloadSelectedDocument() {
        guard let document = selectedDocument else { return }
        
        // Extract data before the closure to avoid capturing non-sendable type
        let fileName = document.fileName
        let fileData = document.fileData
        
        let savePanel = NSSavePanel()
        savePanel.nameFieldStringValue = fileName
        savePanel.canCreateDirectories = true
        
        savePanel.begin { response in
            Task { @MainActor in
                if response == .OK, let url = savePanel.url {
                    do {
                        if let data = fileData {
                            try data.write(to: url)
                            self.logger.info("Downloaded document to \(url.path)")
                        }
                    } catch {
                        self.logger.error("Failed to download document: \(error.localizedDescription)")
                        self.error = error
                    }
                }
            }
        }
    }
    
    // MARK: - Category Operations
    
    func createCategory(name: String, color: String, icon: String) {
        let category = SwiftDataDocumentCategory(
            name: name,
            colorHex: color,
            iconName: icon
        )
        
        modelContext?.insert(category)
        categories.append(category)
        saveChanges()
    }
    
    func deleteCategory(_ categoryID: UUID) {
        guard let category = categories.first(where: { $0.id == categoryID }) else { return }
        
        // SwiftData will automatically handle nullifying the relationship
        // due to the deleteRule: .nullify in the @Relationship definition
        modelContext?.delete(category)
        categories.removeAll { $0.id == categoryID }
        
        if selectedCategoryID == categoryID {
            selectedCategoryID = nil
        }
        
        saveChanges()
    }
    
    func assignDocumentToCategory(documentID: UUID, categoryID: UUID?) {
        guard let document = documents.first(where: { $0.id == documentID }) else { return }
        
        if let categoryID = categoryID,
           let category = categories.first(where: { $0.id == categoryID }) {
            document.category = category
        } else {
            document.category = nil
        }
        
        saveChanges()
    }
    
    // MARK: - Preview Generation
    
    func previewImage(for document: SwiftDataJobDocument, completion: @escaping (NSImage?) -> Void) {
        // Check cache first
        if let cached = previewCache[document.id] {
            completion(cached)
            return
        }
        
        // Generate preview on background queue
        guard let fileData = document.fileData else {
            completion(nil)
            return
        }
        
        let documentId = document.id
        let mimeType = document.mimeType
        
        previewQueue.async { [weak self] in
            var preview: NSImage?
            
            if mimeType.hasPrefix("image/") {
                // Image preview
                preview = NSImage(data: fileData)
            } else if mimeType == "application/pdf" {
                // PDF preview
                if let pdfDocument = PDFDocument(data: fileData),
                   let page = pdfDocument.page(at: 0) {
                    let pageRect = page.bounds(for: .mediaBox)
                    let scale: CGFloat = 2.0 // For better quality on retina displays
                    let scaledSize = NSSize(width: pageRect.width * scale, height: pageRect.height * scale)
                    
                    let imageRep = NSBitmapImageRep(
                        bitmapDataPlanes: nil,
                        pixelsWide: Int(scaledSize.width),
                        pixelsHigh: Int(scaledSize.height),
                        bitsPerSample: 8,
                        samplesPerPixel: 4,
                        hasAlpha: true,
                        isPlanar: false,
                        colorSpaceName: .deviceRGB,
                        bytesPerRow: 0,
                        bitsPerPixel: 0
                    )
                    
                    if let imageRep = imageRep {
                        NSGraphicsContext.saveGraphicsState()
                        NSGraphicsContext.current = NSGraphicsContext(bitmapImageRep: imageRep)
                        
                        if let context = NSGraphicsContext.current?.cgContext {
                            context.setFillColor(NSColor.white.cgColor)
                            context.fill(CGRect(origin: .zero, size: scaledSize))
                            context.scaleBy(x: scale, y: scale)
                            page.draw(with: .mediaBox, to: context)
                        }
                        
                        NSGraphicsContext.restoreGraphicsState()
                        
                        preview = NSImage(size: pageRect.size)
                        preview?.addRepresentation(imageRep)
                    }
                }
            }
            
            // Cache and return the preview on main thread
            DispatchQueue.main.async {
                if let preview = preview {
                    self?.previewCache[documentId] = preview
                }
                completion(preview)
            }
        }
    }
    
    // Synchronous wrapper for backward compatibility
    func previewImage(for document: SwiftDataJobDocument) -> NSImage? {
        // Return cached image if available
        return previewCache[document.id]
    }
    
    func clearCaches() {
        previewCache.removeAll()
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
    
    // MARK: - Performance Optimization Helpers
    
    private func streamLargeFile(from url: URL) async throws -> Data {
        return try await withCheckedThrowingContinuation { continuation in
            fileOperationQueue.addOperation {
                do {
                    let handle = try FileHandle(forReadingFrom: url)
                    defer { handle.closeFile() }
                    
                    var data = Data()
                    var shouldContinue = true
                    while shouldContinue {
                        autoreleasepool {
                            let chunk = handle.readData(ofLength: self.streamingChunkSize)
                            if chunk.isEmpty { 
                                shouldContinue = false
                            } else {
                                data.append(chunk)
                            }
                        }
                    }
                    continuation.resume(returning: data)
                } catch {
                    continuation.resume(throwing: error)
                }
            }
        }
    }
    
    private func detectMIMEType(for url: URL) -> String? {
        // Try to get MIME type from file extension
        if let uti = UTType(filenameExtension: url.pathExtension) {
            return uti.preferredMIMEType
        }
        
        // Fallback to reading file header for better detection
        guard let handle = try? FileHandle(forReadingFrom: url) else { return nil }
        defer { handle.closeFile() }
        
        let headerData = handle.readData(ofLength: 16)
        return detectMIMETypeFromHeader(headerData) ?? "application/octet-stream"
    }
    
    private func detectMIMETypeFromHeader(_ data: Data) -> String? {
        guard data.count >= 4 else { return nil }
        
        let bytes = [UInt8](data.prefix(4))
        
        // PDF magic number
        if bytes[0] == 0x25 && bytes[1] == 0x50 && bytes[2] == 0x44 && bytes[3] == 0x46 {
            return "application/pdf"
        }
        
        // PNG magic number
        if bytes[0] == 0x89 && bytes[1] == 0x50 && bytes[2] == 0x4E && bytes[3] == 0x47 {
            return "image/png"
        }
        
        // JPEG magic number
        if bytes[0] == 0xFF && bytes[1] == 0xD8 && bytes[2] == 0xFF {
            return "image/jpeg"
        }
        
        // Microsoft Office documents
        if bytes[0] == 0xD0 && bytes[1] == 0xCF && bytes[2] == 0x11 && bytes[3] == 0xE0 {
            return "application/vnd.ms-office"
        }
        
        // ZIP-based formats (docx, xlsx, etc.)
        if bytes[0] == 0x50 && bytes[1] == 0x4B && bytes[2] == 0x03 && bytes[3] == 0x04 {
            return "application/zip"
        }
        
        return nil
    }
    
    private func intelligentDocumentTypeDetection(url: URL, mimeType: String) -> String {
        let fileName = url.lastPathComponent.lowercased()
        
        // Check for common document patterns
        if fileName.contains("resume") || fileName.contains("cv") || fileName.contains("curriculum") {
            return "resume"
        } else if fileName.contains("cover") && (fileName.contains("letter") || fileName.contains("note")) {
            return "cover_letter"
        } else if fileName.contains("portfolio") || fileName.contains("work") && fileName.contains("sample") {
            return "portfolio"
        } else if fileName.contains("reference") || fileName.contains("recommendation") {
            return "reference"
        } else if fileName.contains("certificate") || fileName.contains("certification") || fileName.contains("cert") {
            return "certificate"
        } else if fileName.contains("transcript") || fileName.contains("grade") {
            return "transcript"
        }
        
        // Fallback to MIME type based detection
        if mimeType.contains("pdf") {
            return "document"
        } else if mimeType.contains("image") {
            return "portfolio"
        } else if mimeType.contains("video") {
            return "portfolio"
        }
        
        return "other"
    }
}
