//
//  PreviewHelpers.swift
//  CareerJourney
//
//  Preview helpers for SwiftUI previews
//

import SwiftUI
import SwiftData

// MARK: - Preview Store Instances

/// Preview instances for use in SwiftUI #Preview blocks
/// These stores are initialized without ModelContext for preview purposes

@MainActor
let previewJobStore: JobStore = {
    let store = JobStore()
    store.jobApplications = SwiftDataJobApplication.previewApplications
    return store
}()

@MainActor
let previewDocumentStore: DocumentStore = {
    let store = DocumentStore()
    return store
}()

@MainActor
let previewNoteStore: NoteStore = {
    let store = NoteStore()
    return store
}()
