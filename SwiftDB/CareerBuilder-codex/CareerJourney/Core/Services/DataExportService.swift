//
//  DataExportService.swift
//  CareerKit
//
//  Service for handling data import/export with schema versioning
//

import Foundation
import SwiftUI
import SwiftData
import OSLog
import Combine

// MARK: - Export Models

struct ExportData: Codable {
    let version: String
    let schemaVersion: Int
    let exportDate: Date
    let applicationInfo: ApplicationInfo
    let data: CareerKitData
    
    struct ApplicationInfo: Codable {
        let appVersion: String
        let platform: String
        let exportedBy: String?
    }
    
    struct CareerKitData: Codable {
        let jobs: [ExportableJob]
        let documents: [ExportableDocument]
        let notes: [ExportableNote]
        let skills: [String]
        let locations: [String]
    }
}

struct ExportableJob: Codable {
    let id: UUID
    let companyName: String
    let jobTitle: String
    let status: String
    let dateOfApplication: Date
    let location: String
    let normalizedLocation: String?
    let jobDescription: String
    let linkToJobString: String?
    let coverLetter: String
    let notes: String
    let isFavorite: Bool
    let jobType: String
    let desiredSkillNames: [String]
    let salaryMin: Double?
    let salaryMax: Double?
    let salaryString: String?
    let salaryCurrency: String?
    let salaryPeriod: String?
    let jobDeadline: Date?
    let latitude: Double?
    let longitude: Double?
    let documentIds: [UUID]
    
    init(from job: SwiftDataJobApplication) {
        self.id = job.id
        self.companyName = job.companyName
        self.jobTitle = job.jobTitle
        self.status = job.status.rawValue
        self.dateOfApplication = job.dateOfApplication
        self.location = job.location
        self.normalizedLocation = job.normalizedLocation
        self.jobDescription = job.jobDescription
        self.linkToJobString = job.linkToJobString
        self.coverLetter = job.coverLetter
        self.notes = job.notes
        self.isFavorite = job.isFavorite
        self.jobType = job.jobType.rawValue
        self.desiredSkillNames = job.desiredSkillNames
        self.salaryMin = job.salaryMin
        self.salaryMax = job.salaryMax
        self.salaryString = job.salaryString
        self.salaryCurrency = job.salaryCurrency.rawValue
        self.salaryPeriod = job.salaryPeriod.rawValue
        self.jobDeadline = job.jobDeadline
        self.latitude = job.latitude
        self.longitude = job.longitude
        self.documentIds = job.documents.map { $0.id }
    }
}

struct ExportableDocument: Codable {
    let id: UUID
    let fileName: String
    let fileSize: Int
    let mimeType: String
    let uploadDate: Date
    let documentType: String
    let fileData: String? // Base64 encoded
    let associatedJobTitle: String?
    let associatedCompany: String?
    let categoryId: UUID?
    
    init(from document: SwiftDataJobDocument) {
        self.id = document.id
        self.fileName = document.fileName
        self.fileSize = document.fileSize
        self.mimeType = document.mimeType
        self.uploadDate = document.uploadDate
        self.documentType = document.documentType
        self.fileData = document.fileData?.base64EncodedString()
        self.associatedJobTitle = document.associatedJobTitle
        self.associatedCompany = document.associatedCompany
        self.categoryId = document.category?.id
    }
}

struct ExportableNote: Codable {
    let id: UUID
    let title: String
    let content: String
    let createdDate: Date
    let modifiedDate: Date
    let isPinned: Bool
    let tags: [String]
    let associatedJobApplicationID: UUID?
    
    init(from note: SwiftDataNote) {
        self.id = note.id
        self.title = note.title
        self.content = note.content
        self.createdDate = note.createdDate
        self.modifiedDate = note.modifiedDate
        self.isPinned = note.isPinned
        self.tags = note.tags
        self.associatedJobApplicationID = note.associatedJobApplicationID
    }
}

// MARK: - Import/Export Service

@MainActor
final class DataExportService: ObservableObject {
    @Published var isExporting = false
    @Published var isImporting = false
    @Published var error: Error?
    @Published var progress: Double = 0
    @Published var statusMessage = ""
    
    // Export service aggregates data from stores into a single JSON payload for backup/restore flows.
    private let logger = Logger(subsystem: "com.careerkit.importexport", category: "ImportExport")
    private let currentSchemaVersion = 1
    
    var modelContext: ModelContext?
    var jobStore: JobStore?
    var documentStore: DocumentStore?
    var noteStore: NoteStore?
    
    init(modelContext: ModelContext? = nil, 
         jobStore: JobStore? = nil,
         documentStore: DocumentStore? = nil,
         noteStore: NoteStore? = nil) {
        self.modelContext = modelContext
        self.jobStore = jobStore
        self.documentStore = documentStore
        self.noteStore = noteStore
    }
    
    // MARK: - Export
    
    func exportAllData(to url: URL) async throws {
        let data = try await exportData()
        try data.write(to: url)
        logger.info("Exported all data to \(url.path)")
    }
    
    func exportData() async throws -> Data {
        isExporting = true
        progress = 0
        statusMessage = "Preparing export..."
        
        defer {
            isExporting = false
        }
        
        do {
            // Gather all data
            statusMessage = "Gathering job applications..."
            progress = 0.2
            
            let jobs = jobStore?.jobApplications ?? []
            let exportableJobs = jobs.map { ExportableJob(from: $0) }
            
            statusMessage = "Gathering documents..."
            progress = 0.4
            
            let documents = documentStore?.documents ?? []
            let exportableDocuments = documents.map { ExportableDocument(from: $0) }
            
            statusMessage = "Gathering notes..."
            progress = 0.6
            
            let notes = noteStore?.notes ?? []
            let exportableNotes = notes.map { ExportableNote(from: $0) }
            
            // Collect unique skills and locations
            let allSkills = Set(jobs.flatMap { $0.desiredSkillNames })
            let allLocations = Set(jobs.map { $0.location }.filter { !$0.isEmpty })
            
            // Create export data
            statusMessage = "Creating export file..."
            progress = 0.8
            
            let exportData = ExportData(
                version: "2.0",
                schemaVersion: currentSchemaVersion,
                exportDate: Date(),
                applicationInfo: ExportData.ApplicationInfo(
                    appVersion: Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "2.0",
                    platform: "macOS",
                    exportedBy: NSFullUserName()
                ),
                data: ExportData.CareerKitData(
                    jobs: exportableJobs,
                    documents: exportableDocuments,
                    notes: exportableNotes,
                    skills: Array(allSkills).sorted(),
                    locations: Array(allLocations).sorted()
                )
            )
            
            // Encode to JSON
            let encoder = JSONEncoder()
            encoder.outputFormatting = [.prettyPrinted, .sortedKeys]
            encoder.dateEncodingStrategy = .iso8601
            
            let data = try encoder.encode(exportData)
            
            statusMessage = "Export complete!"
            progress = 1.0
            
            logger.info("Successfully exported \(exportableJobs.count) jobs, \(exportableDocuments.count) documents, \(exportableNotes.count) notes")
            
            return data
            
        } catch {
            self.error = error
            logger.error("Export failed: \(error.localizedDescription)")
            throw error
        }
    }
    
    // MARK: - Import
    
    func importData(from url: URL) async throws {
        isImporting = true
        progress = 0
        statusMessage = "Reading import file..."
        
        defer {
            isImporting = false
        }
        
        do {
            // Start accessing security-scoped resource
            guard url.startAccessingSecurityScopedResource() else {
                throw ImportError.invalidData
            }
            defer {
                url.stopAccessingSecurityScopedResource()
            }
            
            // Read and decode file
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .iso8601
            
            let importData = try decoder.decode(ExportData.self, from: data)
            
            // Check schema version
            if importData.schemaVersion > currentSchemaVersion {
                throw ImportError.unsupportedSchemaVersion(importData.schemaVersion, currentSchemaVersion)
            }
            
            // Migrate data if needed
            let migratedData = try migrateDataIfNeeded(importData)
            
            // Import data
            try await performImport(migratedData)
            
            statusMessage = "Import complete!"
            progress = 1.0
            
        } catch {
            self.error = error
            logger.error("Import failed: \(error.localizedDescription)")
            throw error
        }
    }
    
    private func migrateDataIfNeeded(_ data: ExportData) throws -> ExportData {
        // Handle schema migrations here
        if data.schemaVersion < currentSchemaVersion {
            statusMessage = "Migrating data from version \(data.schemaVersion) to \(currentSchemaVersion)..."
            // Perform migrations based on version differences
            // For now, just return the data as-is since we're at version 1
        }
        
        return data
    }
    
    private func performImport(_ importData: ExportData) async throws {
        guard let modelContext = modelContext else {
            throw ImportError.noModelContext
        }
        
        // Track imported items for relationships
        var documentMap: [UUID: SwiftDataJobDocument] = [:]
        
        // Import documents first
        statusMessage = "Importing documents..."
        progress = 0.2
        
        for (index, exportDoc) in importData.data.documents.enumerated() {
            if let document = createDocument(from: exportDoc) {
                modelContext.insert(document)
                documentMap[exportDoc.id] = document
            }
            
            progress = 0.2 + (0.2 * Double(index) / Double(importData.data.documents.count))
        }
        
        // Import jobs
        statusMessage = "Importing job applications..."
        progress = 0.4
        
        for (index, exportJob) in importData.data.jobs.enumerated() {
            if let job = createJob(from: exportJob, documentMap: documentMap) {
                modelContext.insert(job)
            }
            
            progress = 0.4 + (0.3 * Double(index) / Double(importData.data.jobs.count))
        }
        
        // Import notes
        statusMessage = "Importing notes..."
        progress = 0.7
        
        for (index, exportNote) in importData.data.notes.enumerated() {
            if let note = createNote(from: exportNote) {
                modelContext.insert(note)
            }
            
            progress = 0.7 + (0.2 * Double(index) / Double(importData.data.notes.count))
        }
        
        // Save all changes
        statusMessage = "Saving imported data..."
        progress = 0.9
        
        try modelContext.save()
        
        logger.info("Successfully imported \(importData.data.jobs.count) jobs, \(importData.data.documents.count) documents, \(importData.data.notes.count) notes")
    }
    
    private func createJob(from exportable: ExportableJob, documentMap: [UUID: SwiftDataJobDocument]) -> SwiftDataJobApplication? {
        let job = SwiftDataJobApplication(
            companyName: exportable.companyName,
            jobTitle: exportable.jobTitle
        )
        
        job.id = exportable.id
        job.status = JobStatus(rawValue: exportable.status) ?? .applied
        job.dateOfApplication = exportable.dateOfApplication
        job.location = exportable.location
        job.normalizedLocation = exportable.normalizedLocation
        job.jobDescription = exportable.jobDescription
        job.linkToJobString = exportable.linkToJobString
        job.coverLetter = exportable.coverLetter
        job.notes = exportable.notes
        job.isFavorite = exportable.isFavorite
        job.jobType = JobType(rawValue: exportable.jobType) ?? .fullTime
        job.desiredSkillNames = exportable.desiredSkillNames
        job.salaryMin = exportable.salaryMin
        job.salaryMax = exportable.salaryMax
        job.salaryString = exportable.salaryString
        job.salaryCurrency = SalaryCurrency(rawValue: exportable.salaryCurrency ?? "USD") ?? .usd
        job.salaryPeriod = SalaryPeriod(rawValue: exportable.salaryPeriod ?? "Yearly") ?? .yearly
        job.jobDeadline = exportable.jobDeadline
        job.latitude = exportable.latitude
        job.longitude = exportable.longitude
        
        // Link documents
        for docId in exportable.documentIds {
            if let document = documentMap[docId] {
                job.documents.append(document)
            }
        }
        
        return job
    }
    
    private func createDocument(from exportable: ExportableDocument) -> SwiftDataJobDocument? {
        var fileData: Data?
        if let base64String = exportable.fileData {
            fileData = Data(base64Encoded: base64String)
        }
        
        let document = SwiftDataJobDocument(
            fileName: exportable.fileName,
            fileURL: nil,
            fileData: fileData,
            fileSize: exportable.fileSize,
            mimeType: exportable.mimeType,
            documentType: exportable.documentType
        )
        
        document.id = exportable.id
        document.uploadDate = exportable.uploadDate
        document.associatedJobTitle = exportable.associatedJobTitle
        document.associatedCompany = exportable.associatedCompany
        
        return document
    }
    
    private func createNote(from exportable: ExportableNote) -> SwiftDataNote? {
        let note = SwiftDataNote(
            id: exportable.id,
            title: exportable.title,
            content: exportable.content,
            createdDate: exportable.createdDate,
            modifiedDate: exportable.modifiedDate,
            tags: exportable.tags,
            isPinned: exportable.isPinned,
            associatedJobApplicationID: exportable.associatedJobApplicationID
        )
        
        return note
    }
}

// MARK: - Errors

enum ImportError: LocalizedError {
    case noModelContext
    case unsupportedSchemaVersion(Int, Int)
    case invalidData
    
    var errorDescription: String? {
        switch self {
        case .noModelContext:
            return "No model context available"
        case .unsupportedSchemaVersion(let fileVersion, let appVersion):
            return "This file was created with a newer version of CareerKit (schema v\(fileVersion)). Current version supports up to schema v\(appVersion)."
        case .invalidData:
            return "The import file contains invalid data"
        }
    }
}
