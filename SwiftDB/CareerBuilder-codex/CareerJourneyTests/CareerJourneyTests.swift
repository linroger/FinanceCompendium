//
//  CareerJourneyTests.swift
//  CareerJourneyTests
//
//  Modernized test coverage for core services.
//

import Foundation
import SwiftData
import Testing
@testable import CareerJourney

struct NoteStoreImportTests {

    @Test("CSV import produces notes with tags")
    @MainActor
    func csvImportCreatesNotes() throws {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: SwiftDataNote.self, configurations: config)
        let noteStore = NoteStore(modelContext: container.mainContext)

        let csv = "Title,Content,Tags\n\"First\",\"Line one, line two\",\"tag1;tag2\"\n\"Second\",\"Body\",\"tag3\""
        let tempURL = FileManager.default.temporaryDirectory.appendingPathComponent(UUID().uuidString).appendingPathExtension("csv")
        try csv.write(to: tempURL, atomically: true, encoding: .utf8)
        defer { try? FileManager.default.removeItem(at: tempURL) }

        noteStore.importNotes(from: tempURL)

        #expect(noteStore.notes.count == 2)
        let first = noteStore.notes.first(where: { $0.title == "First" })
        #expect(first?.tags.contains("tag1") == true)
        #expect(first?.tags.contains("tag2") == true)
    }
}

struct LegacyMigrationTests {

    @Test("Imports modern backup without version metadata")
    @MainActor
    func importsBackupWithoutVersion() async throws {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: SwiftDataJobApplication.self, configurations: config)
        let service = LegacyDataMigrationService(modelContext: container.mainContext)

        let json = """
        {
            "exportDate": "2025-11-01T00:00:00Z",
            "jobs": [
                {
                    "id": "\(UUID().uuidString)",
                    "companyName": "xAI",
                    "jobTitle": "AI Finance Tutor",
                    "status": "Applied",
                    "dateOfApplication": 1752999448,
                    "location": "Remote",
                    "jobDescription": "Teach AI systems advanced finance topics.",
                    "notes": "Finance-focused labeling",
                    "desiredSkillNames": ["Finance", "AI"],
                    "documents": []
                }
            ]
        }
        """

        let tempURL = FileManager.default.temporaryDirectory
            .appendingPathComponent(UUID().uuidString)
            .appendingPathExtension("json")
        try json.write(to: tempURL, atomically: true, encoding: .utf8)
        defer { try? FileManager.default.removeItem(at: tempURL) }

        let result = try await service.importData(from: tempURL)
        #expect(result.importedJobs == 1)
    }

    @Test("Skips duplicate jobs already stored")
    @MainActor
    func skipsDuplicates() async throws {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: SwiftDataJobApplication.self, configurations: config)
        let context = container.mainContext
        let existingID = UUID()
        let existingJob = SwiftDataJobApplication(
            id: existingID,
            companyName: "Existing Co",
            jobTitle: "Engineer"
        )
        context.insert(existingJob)
        try context.save()

        let service = LegacyDataMigrationService(modelContext: context)

        let duplicateJob: [String: Any] = [
            "id": existingID.uuidString,
            "companyName": "Existing Co",
            "jobTitle": "Engineer",
            "status": "Applied",
            "dateOfApplication": Date().timeIntervalSince1970,
            "location": "Remote",
            "desiredSkillNames": []
        ]
        let newJob: [String: Any] = [
            "id": UUID().uuidString,
            "companyName": "New Co",
            "jobTitle": "Analyst",
            "status": "Applied",
            "dateOfApplication": Date().timeIntervalSince1970,
            "location": "Remote",
            "desiredSkillNames": []
        ]

        let payload: [String: Any] = [
            "exportDate": "2025-11-01T00:00:00Z",
            "jobs": [duplicateJob, newJob]
        ]
        let data = try JSONSerialization.data(withJSONObject: payload)
        let tempURL = FileManager.default.temporaryDirectory
            .appendingPathComponent(UUID().uuidString)
            .appendingPathExtension("json")
        try data.write(to: tempURL)
        defer { try? FileManager.default.removeItem(at: tempURL) }

        let result = try await service.importData(from: tempURL)

        #expect(result.importedJobs == 1)
        #expect(result.skippedJobs == 1)
        let descriptor = FetchDescriptor<SwiftDataJobApplication>()
        let jobs = try context.fetch(descriptor)
        #expect(jobs.contains(where: { $0.companyName == "New Co" }))
    }

    @Test("Skips duplicates with matching signature even when IDs differ")
    @MainActor
    func skipsSignatureDuplicates() async throws {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: SwiftDataJobApplication.self, configurations: config)
        let context = container.mainContext

        let baselineDate = Date(timeIntervalSince1970: 1_752_999_448)
        let existing = SwiftDataJobApplication(
            companyName: "xAI",
            jobTitle: "AI Tutor",
            dateOfApplication: baselineDate,
            location: "Remote"
        )
        context.insert(existing)
        try context.save()

        let service = LegacyDataMigrationService(modelContext: context)

        let duplicateJob: [String: Any] = [
            "id": UUID().uuidString,
            "companyName": "xAI",
            "jobTitle": "AI Tutor",
            "status": "Applied",
            "dateOfApplication": baselineDate.timeIntervalSince1970,
            "location": "Remote",
            "desiredSkillNames": []
        ]
        let newJob: [String: Any] = [
            "id": UUID().uuidString,
            "companyName": "New Org",
            "jobTitle": "Finance Analyst",
            "status": "Applied",
            "dateOfApplication": Date().timeIntervalSince1970,
            "location": "New York, NY",
            "desiredSkillNames": []
        ]

        let payload: [String: Any] = [
            "exportDate": "2025-11-01T00:00:00Z",
            "jobs": [duplicateJob, newJob]
        ]
        let data = try JSONSerialization.data(withJSONObject: payload)
        let tempURL = FileManager.default.temporaryDirectory
            .appendingPathComponent(UUID().uuidString)
            .appendingPathExtension("json")
        try data.write(to: tempURL)
        defer { try? FileManager.default.removeItem(at: tempURL) }

        let result = try await service.importData(from: tempURL)
        #expect(result.importedJobs == 1)
        #expect(result.skippedJobs == 1)
    }

    @Test("Imports CareerKit_Backup-314.json")
    @MainActor
    func importsCareerKitBackup314() async throws {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: SwiftDataJobApplication.self, configurations: config)
        let service = LegacyDataMigrationService(modelContext: container.mainContext)

        let testFileURL = URL(fileURLWithPath: #filePath)
        let repoRoot = testFileURL
            .deletingLastPathComponent() // CareerJourneyTests
            .deletingLastPathComponent() // repo root
        let backupURL = repoRoot
            .appendingPathComponent("BACKUPS")
            .appendingPathComponent("CareerKit_Backup-314.json")

        #expect(FileManager.default.fileExists(atPath: backupURL.path))

        let result = try await service.importData(from: backupURL)
        #expect(result.importedJobs > 0)
    }
}
