
//
//  DataMigrationService.swift
//  CareerKit
//
//  Handles data migration and validation
//

import SwiftUI
import SwiftData
import Foundation
import OSLog

// MARK: - Migration Errors
enum MigrationError: LocalizedError {
    case invalidData(String)
    case migrationFailed(String)
    case validationFailed(String)
    
    var errorDescription: String? {
        switch self {
        case .invalidData(let message):
            return "Invalid data: \(message)"
        case .migrationFailed(let message):
            return "Migration failed: \(message)"
        case .validationFailed(let message):
            return "Validation failed: \(message)"
        }
    }
}

// MARK: - Current Schema Version
struct SchemaVersion {
    static let current = 2
    static let minimumSupported = 1
}

@MainActor
class DataMigrationService {
    private let modelContext: ModelContext
    private let logger = Logger(subsystem: "com.careerkit.migration", category: "Migration")
    
    // Migration statistics
    private(set) var migrationStats = MigrationStatistics()
    
    init(modelContext: ModelContext) {
        self.modelContext = modelContext
    }
    
    func migrateData() async throws {
        logger.info("Starting comprehensive data migration and validation...")
        
        do {
            // Step 1: Create backup before migration
            let backupCreated = await createBackup()
            if !backupCreated {
                logger.warning("Failed to create backup, proceeding with caution")
            }
            
            // Step 2: Validate current data integrity
            try await validateDataIntegrity()
            
            // Step 3: Perform schema migrations
            try await performSchemaMigrations()
            
            // Step 4: Clean up and validate data
            try await validateData()
            
            // Step 5: Verify final state
            try await verifyFinalState()
            
            logger.info("✅ Data migration completed successfully. Stats: \(self.migrationStats.summary)")
        } catch {
            logger.error("❌ Migration failed: \(error.localizedDescription)")
            throw MigrationError.migrationFailed(error.localizedDescription)
        }
    }
    
    private func createBackup() async -> Bool {
        // Create a backup of current data
        do {
            let exportService = DataExportService(modelContext: modelContext)
            let backupURL = FileManager.default.temporaryDirectory.appendingPathComponent("careerkit_backup_\(Date().timeIntervalSince1970).json")
            try await exportService.exportAllData(to: backupURL)
            logger.info("📦 Backup created at: \(backupURL.path)")
            return true
        } catch {
            logger.error("Failed to create backup: \(error.localizedDescription)")
            return false
        }
    }
    
    private func validateDataIntegrity() async throws {
        let jobDescriptor = FetchDescriptor<SwiftDataJobApplication>()
        let jobs = try modelContext.fetch(jobDescriptor)
        
        let docDescriptor = FetchDescriptor<SwiftDataJobDocument>()
        let documents = try modelContext.fetch(docDescriptor)
        
        logger.info("🔍 Validating data integrity - Jobs: \(jobs.count), Documents: \(documents.count)")
        
        // Check for basic data integrity
        for job in jobs {
            if job.id == UUID(uuidString: "00000000-0000-0000-0000-000000000000") {
                throw MigrationError.invalidData("Found job with nil UUID")
            }
        }
    }
    
    private func performSchemaMigrations() async throws {
        let descriptor = FetchDescriptor<SwiftDataJobApplication>()
        let jobs = try modelContext.fetch(descriptor)
        
        var migratedCount = 0
        
        for job in jobs {
            if job.schemaVersion < SchemaVersion.current {
                try migrateJobToLatestSchema(job)
                migratedCount += 1
            }
        }
        
        if migratedCount > 0 {
            try modelContext.save()
            logger.info("📈 Migrated \(migratedCount) jobs to schema version \(SchemaVersion.current)")
            migrationStats.jobsMigrated = migratedCount
        }
    }
    
    private func migrateJobToLatestSchema(_ job: SwiftDataJobApplication) throws {
        let originalVersion = job.schemaVersion
        
        // Migrate from version 1 to 2
        if job.schemaVersion < 2 {
            // Ensure remote work type is set
            if job.location.lowercased().contains("remote") {
                job.remoteWorkType = .remote
            } else if job.location.lowercased().contains("hybrid") {
                job.remoteWorkType = .hybrid
            }
            
            // Ensure skills arrays are properly initialized
            if job.desiredSkillNames.isEmpty && !job.jobDescription.isEmpty {
                // Extract skills from job description (simplified example)
                let commonSkills = ["Swift", "SwiftUI", "iOS", "macOS", "Xcode", "Git", "API", "REST", "JSON"]
                let description = job.jobDescription.lowercased()
                job.desiredSkillNames = commonSkills.filter { description.contains($0.lowercased()) }
            }
            
            job.schemaVersion = 2
        }
        
        // Future migrations would go here
        // if job.schemaVersion < 3 { ... }
        
        logger.debug("Migrated job \(job.id) from version \(originalVersion) to \(job.schemaVersion)")
    }
    
    private func validateData() async throws {
        logger.info("🧹 Starting data validation and cleanup...")
        
        try await cleanupOrphanedDocuments()
        try await validateJobApplications()
        try await removeDuplicates()
        try await validateDocumentReferences()
        try await validateNotes()
    }
    
    private func verifyFinalState() async throws {
        // Verify all data is in a valid state
        let jobDescriptor = FetchDescriptor<SwiftDataJobApplication>()
        let jobs = try modelContext.fetch(jobDescriptor)
        
        for job in jobs {
            // Verify required fields
            guard !job.companyName.isEmpty,
                  !job.jobTitle.isEmpty,
                  job.schemaVersion >= SchemaVersion.minimumSupported else {
                throw MigrationError.validationFailed("Job \(job.id) has invalid data after migration")
            }
        }
        
        logger.info("✅ Final state verification passed")
    }
    
    private func cleanupOrphanedDocuments() async throws {
        let descriptor = FetchDescriptor<SwiftDataJobDocument>()
        let documents = try modelContext.fetch(descriptor)
        
        var orphanedCount = 0
        var preservedCount = 0
        
        for document in documents {
            if document.jobApplication == nil && document.category == nil {
                // Check if file still exists before deleting
                if let fileURL = document.fileURL,
                   FileManager.default.fileExists(atPath: fileURL.path) {
                    // Move to an uncategorized category instead of deleting
                    let uncategorized = try await getOrCreateUncategorizedCategory()
                    document.category = uncategorized
                    preservedCount += 1
                    logger.info("Preserved orphaned document: \(document.fileName)")
                } else {
                    modelContext.delete(document)
                    orphanedCount += 1
                }
            }
        }
        
        if orphanedCount > 0 || preservedCount > 0 {
            try modelContext.save()
            logger.info("📄 Cleaned up \(orphanedCount) orphaned documents, preserved \(preservedCount)")
            migrationStats.documentsCleanedUp = orphanedCount
            migrationStats.documentsPreserved = preservedCount
        }
    }
    
    private func getOrCreateUncategorizedCategory() async throws -> SwiftDataDocumentCategory {
        let descriptor = FetchDescriptor<SwiftDataDocumentCategory>(
            predicate: #Predicate { $0.name == "Uncategorized" }
        )
        
        if let existing = try modelContext.fetch(descriptor).first {
            return existing
        }
        
        let uncategorized = SwiftDataDocumentCategory(
            name: "Uncategorized",
            colorHex: "#808080",
            iconName: "folder.badge.questionmark"
        )
        modelContext.insert(uncategorized)
        return uncategorized
    }
    
    private func validateJobApplications() async throws {
        let descriptor = FetchDescriptor<SwiftDataJobApplication>()
        let jobs = try modelContext.fetch(descriptor)
        
        var fixedCount = 0
        for job in jobs {
            var needsFix = false
            
            if job.companyName.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                job.companyName = "Unknown Company"
                needsFix = true
            }
            
            if job.jobTitle.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                job.jobTitle = "Unknown Position"
                needsFix = true
            }
            
            if needsFix {
                fixedCount += 1
            }
        }
        
        if fixedCount > 0 {
            try modelContext.save()
            logger.info("Fixed \(fixedCount) job applications with invalid data")
            migrationStats.jobsFixed = fixedCount
        }
    }
    
    private func removeDuplicates() async throws {
        let descriptor = FetchDescriptor<SwiftDataJobApplication>(
            sortBy: [SortDescriptor(\.dateOfApplication, order: .reverse)]
        )
        let jobs = try modelContext.fetch(descriptor)
        
        var seen = Set<String>()
        var duplicatesRemoved = 0
        
        for job in jobs {
            let key = "\(job.companyName)|\(job.jobTitle)|\(job.dateOfApplication.timeIntervalSince1970)"
            
            if seen.contains(key) {
                modelContext.delete(job)
                duplicatesRemoved += 1
            } else {
                seen.insert(key)
            }
        }
        
        if duplicatesRemoved > 0 {
            try modelContext.save()
            logger.info("Removed \(duplicatesRemoved) duplicate job applications")
            migrationStats.duplicatesRemoved = duplicatesRemoved
        }
    }
    
    private func validateDocumentReferences() async throws {
        let descriptor = FetchDescriptor<SwiftDataJobDocument>()
        let documents = try modelContext.fetch(descriptor)
        
        var fixedCount = 0
        
        for document in documents {
            // Ensure document has valid metadata
            if document.fileSize == 0 && document.fileData != nil {
                document.fileSize = document.fileData?.count ?? 0
                fixedCount += 1
            }
            
            // Ensure MIME type is set
            if document.mimeType.isEmpty {
                document.mimeType = detectMimeType(for: document.fileName)
                fixedCount += 1
            }
        }
        
        if fixedCount > 0 {
            try modelContext.save()
            logger.info("🔧 Fixed \(fixedCount) document metadata issues")
        }
    }
    
    private func validateNotes() async throws {
        let descriptor = FetchDescriptor<SwiftDataNote>()
        let notes = try modelContext.fetch(descriptor)
        
        var fixedCount = 0
        
        for note in notes {
            // Ensure notes have titles
            if note.title.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                // Generate title from content
                let content = note.content.trimmingCharacters(in: .whitespacesAndNewlines)
                if !content.isEmpty {
                    note.title = String(content.prefix(50)) + (content.count > 50 ? "..." : "")
                } else {
                    note.title = "Untitled Note"
                }
                fixedCount += 1
            }
            
            // Ensure dates are valid
            if note.modifiedDate < note.createdDate {
                note.modifiedDate = note.createdDate
                fixedCount += 1
            }
        }
        
        if fixedCount > 0 {
            try modelContext.save()
            logger.info("📝 Fixed \(fixedCount) note issues")
            migrationStats.notesFixed = fixedCount
        }
    }
    
    private func detectMimeType(for fileName: String) -> String {
        let ext = (fileName as NSString).pathExtension.lowercased()
        switch ext {
        case "pdf": return "application/pdf"
        case "doc": return "application/msword"
        case "docx": return "application/vnd.openxmlformats-officedocument.wordprocessingml.document"
        case "txt": return "text/plain"
        case "rtf": return "application/rtf"
        case "png": return "image/png"
        case "jpg", "jpeg": return "image/jpeg"
        case "gif": return "image/gif"
        default: return "application/octet-stream"
        }
    }
}

// MARK: - Migration Statistics
struct MigrationStatistics {
    var jobsMigrated = 0
    var documentsCleanedUp = 0
    var documentsPreserved = 0
    var duplicatesRemoved = 0
    var jobsFixed = 0
    var notesFixed = 0
    
    var summary: String {
        "Jobs migrated: \(jobsMigrated), Documents cleaned: \(documentsCleanedUp), preserved: \(documentsPreserved), Duplicates removed: \(duplicatesRemoved), Jobs fixed: \(jobsFixed), Notes fixed: \(notesFixed)"
    }
}
