//
//  StoreIntegrationTests.swift
//  CareerJourneyTests
//
//  Validates core SwiftData store interactions.
//

import Testing
import SwiftData
import Foundation
@testable import CareerJourney

struct StoreIntegrationTests {

    @Test("Job and document stores persist relationships")
    @MainActor
    func jobDocumentRelationship() async throws {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(
            for: SwiftDataJobApplication.self,
                SwiftDataJobDocument.self,
                SwiftDataNote.self,
                SwiftDataDocumentCategory.self,
            configurations: config
        )
        let context = ModelContext(container)

        let documentStore = DocumentStore(modelContext: context)
        let jobStore = JobStore(documentStore: documentStore, modelContext: context)

        let job = SwiftDataJobApplication(
            companyName: "Test Company",
            jobTitle: "macOS Engineer",
            status: .applied,
            dateOfApplication: Date(),
            location: "Cupertino"
        )

        let category = SwiftDataDocumentCategory(name: "Resume")
        let document = SwiftDataJobDocument(
            fileName: "resume.pdf",
            fileData: Data("sample".utf8),
            fileSize: 6,
            mimeType: "application/pdf",
            uploadDate: Date(),
            documentType: "resume"
        )
        document.category = category
        document.jobApplication = job
        job.documents.append(document)

        try await jobStore.addJob(job)

        let fetchedJobs = try context.fetch(FetchDescriptor<SwiftDataJobApplication>())
        #expect(fetchedJobs.count == 1, "Exactly one job should persist")
        #expect(fetchedJobs.first?.documents.count == 1, "Job should retain associated document")
        #expect(jobStore.jobApplications.count == 1, "JobStore should reflect inserted job")
    }

    @Test("Notes store associates notes with jobs")
    @MainActor
    func notesAssociation() async throws {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: SwiftDataJobApplication.self, SwiftDataNote.self, configurations: config)
        let context = ModelContext(container)

        let noteStore = NoteStore(modelContext: context)

        let job = SwiftDataJobApplication(
            companyName: "Acme",
            jobTitle: "Product Designer",
            status: .interview,
            dateOfApplication: Date(),
            location: "Remote"
        )

        context.insert(job)

        let note = noteStore.createNote(
            title: "First Interview",
            content: "Discussed design systems and macOS guidelines."
        )
        note.associatedJobApplicationID = job.id
        noteStore.updateNote(note, content: note.content)

        let fetchedNotes = try context.fetch(FetchDescriptor<SwiftDataNote>())
        #expect(fetchedNotes.count == 1, "Note should persist")
        #expect(fetchedNotes.first?.associatedJobApplicationID == job.id, "Note should reference job")
        #expect(noteStore.notes.contains(where: { $0.id == note.id }), "NoteStore should expose created note")
    }
}
