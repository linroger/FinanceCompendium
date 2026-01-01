//
//  CareerDataModel.swift
//  CareerKit
//
//  Central data model following Apple Sample Code patterns from Landmarks
//

import SwiftUI
import SwiftData
import Foundation
import OSLog
import Combine
import Observation

/// Central data model following Apple Sample Code patterns from Landmarks
@Observable @MainActor
final class CareerDataModel {
    // MARK: - Shared Instance
    static let shared = CareerDataModel()
    
    // MARK: - Published Properties
    var jobApplications: [SwiftDataJobApplication] = []
    var documents: [SwiftDataJobDocument] = []
    var notes: [SwiftDataNote] = []
    
    // Selection state following Landmarks pattern
    var selectedJob: SwiftDataJobApplication?
    var selectedDocument: SwiftDataJobDocument?
    var selectedNote: SwiftDataNote?
    
    // Navigation state following Landmarks pattern
    var path: NavigationPath = NavigationPath() {
        didSet {
            // Check if the person navigates away from a view that's showing the inspector.
            if path.count < oldValue.count && isInspectorPresented == true {
                // Dismiss the inspector.
                isInspectorPresented = false
            }
        }
    }
    var isInspectorPresented: Bool = false
    
    // Search and filter state
    var searchText: String = "" {
        didSet {
            if oldValue != searchText {
                updateFilteredContent()
            }
        }
    }
    
    var filterStatus: JobStatus? = nil {
        didSet {
            if oldValue != filterStatus {
                updateFilteredContent()
            }
        }
    }
    
    var showFavoritesOnly: Bool = false {
        didSet {
            if oldValue != showFavoritesOnly {
                updateFilteredContent()
            }
        }
    }
    
    var sortOption: JobSortOption = .dateApplied {
        didSet {
            if oldValue != sortOption {
                updateFilteredContent()
            }
        }
    }
    
    // Filtered results
    var filteredJobs: [SwiftDataJobApplication] = []
    var filteredDocuments: [SwiftDataJobDocument] = []
    var filteredNotes: [SwiftDataNote] = []
    
    // Computed properties for organization
    var favoriteJobs: [SwiftDataJobApplication] {
        filteredJobs.filter { $0.isFavorite }
    }
    
    var jobsByStatus: [JobStatus: [SwiftDataJobApplication]] {
        Dictionary(grouping: filteredJobs, by: { $0.status })
    }
    
    // UI State
    var isLoading = false
    var error: Error?
    
    // Window size for responsive design
    var windowSize: CGSize = .zero
    
    // Data stores
    private var jobStore: JobStore?
    private var documentStore: DocumentStore?
    private var noteStore: NoteStore?
    
    // Model context
    var modelContext: ModelContext?
    
    // Import/export state
    var pendingClipboardMarkdown: String?
    
    // Logger
    private let logger = Logger(subsystem: "com.careerkit.model", category: "CareerDataModel")
    @ObservationIgnored private var cancellables: Set<AnyCancellable> = []
    
    // MARK: - Initialization
    
    init() {
        initializeModelContainer()
    }
    
    private func initializeModelContainer() {
        do {
            let container = try ModelContainer(for: 
                SwiftDataJobApplication.self,
                SwiftDataJobDocument.self,
                SwiftDataNote.self
            )
            
            let modelContext = container.mainContext
            self.modelContext = modelContext
            
            // Initialize stores
            let documentStore = DocumentStore(modelContext: modelContext)
            let noteStore = NoteStore(modelContext: modelContext)
            let jobStore = JobStore(documentStore: documentStore, noteStore: noteStore, modelContext: modelContext)
            
            self.documentStore = documentStore
            self.noteStore = noteStore
            self.jobStore = jobStore
            documentStore.jobStore = jobStore
            noteStore.jobStore = jobStore
            
            // Load initial data
            initializeDataIfNeeded()
            bindStores()
            
        } catch {
            logger.error("❌ Failed to initialize model container: \(error.localizedDescription)")
        }
    }

    func configureStores(
        jobStore: JobStore,
        documentStore: DocumentStore,
        noteStore: NoteStore,
        modelContext: ModelContext
    ) {
        self.jobStore = jobStore
        self.documentStore = documentStore
        self.noteStore = noteStore
        self.modelContext = modelContext

        documentStore.jobStore = jobStore
        noteStore.jobStore = jobStore

        bindStores()
        updateFilteredContent()
    }
    
    // MARK: - Data Management

    func initializeDataIfNeeded() {
        guard let jobStore = jobStore,
              let documentStore = documentStore,
              let noteStore = noteStore else {
            logger.warning("⚠️ Stores not initialized")
            return
        }

        jobStore.initializeDataIfNeeded()
        documentStore.initializeDataIfNeeded()
        noteStore.initializeDataIfNeeded()

        // Load data - use Observation directly instead of Combine
        loadAllData()
    }

    private func loadAllData() {
        guard let jobStore = jobStore,
              let documentStore = documentStore,
              let noteStore = noteStore else { return }

        // Direct property access since all stores use @Observable/ObservableObject pattern
        jobApplications = jobStore.jobApplications
        documents = documentStore.documents
        notes = noteStore.notes

        bindStores()
        updateFilteredContent()
    }

    private func bindStores() {
        guard let jobStore = jobStore,
              let documentStore = documentStore,
              let noteStore = noteStore else { return }

        cancellables.removeAll()

        jobStore.$jobApplications
            .receive(on: RunLoop.main)
            .sink { [weak self] jobs in
                self?.jobApplications = jobs
                self?.updateFilteredContent()
            }
            .store(in: &cancellables)

        documentStore.$documents
            .receive(on: RunLoop.main)
            .sink { [weak self] documents in
                self?.documents = documents
                self?.updateFilteredContent()
            }
            .store(in: &cancellables)

        noteStore.$notes
            .receive(on: RunLoop.main)
            .sink { [weak self] notes in
                self?.notes = notes
                self?.updateFilteredContent()
            }
            .store(in: &cancellables)
    }
    
    func updateFilteredContent() {
        // Filter jobs
        filteredJobs = jobApplications.filter { job in
            // Search filter
            if !searchText.isEmpty {
                let matchesSearch = job.companyName.localizedCaseInsensitiveContains(searchText) ||
                                  job.jobTitle.localizedCaseInsensitiveContains(searchText) ||
                                  job.location.localizedCaseInsensitiveContains(searchText) ||
                                  job.notes.localizedCaseInsensitiveContains(searchText)
                if !matchesSearch { return false }
            }
            
            // Status filter
            if let status = filterStatus {
                guard job.status == status else { return false }
            }
            
            // Favorites filter
            if showFavoritesOnly && !job.isFavorite {
                return false
            }
            
            return true
        }
        
        // Apply sorting
        switch sortOption {
        case .dateApplied:
            filteredJobs.sort { $0.dateOfApplication > $1.dateOfApplication }
        case .company:
            filteredJobs.sort { $0.companyName < $1.companyName }
        case .jobTitle:
            filteredJobs.sort { $0.jobTitle < $1.jobTitle }
        case .status:
            filteredJobs.sort { $0.status.rawValue < $1.status.rawValue }
        case .location:
            filteredJobs.sort { $0.location < $1.location }
        case .salary:
            filteredJobs.sort { ($0.salaryMax ?? 0) > ($1.salaryMax ?? 0) }
        case .favorite:
            filteredJobs.sort { job1, job2 in
                if job1.isFavorite == job2.isFavorite {
                    return job1.dateOfApplication > job2.dateOfApplication
                }
                return job1.isFavorite && !job2.isFavorite
            }
        }
        
        // Filter documents and notes based on selected job
        if let selectedJob = selectedJob {
            filteredDocuments = documents.filter { $0.jobApplication?.id == selectedJob.id }
            filteredNotes = notes.filter { $0.associatedJobApplicationID == selectedJob.id }
        } else {
            filteredDocuments = documents
            filteredNotes = notes
        }
    }
    
    // MARK: - Favorite Management (Following Landmarks Pattern)
    
    func isFavorite(_ job: SwiftDataJobApplication) -> Bool {
        return job.isFavorite
    }
    
    func toggleFavorite(_ job: SwiftDataJobApplication) {
        if isFavorite(job) {
            removeFavorite(job)
        } else {
            addFavorite(job)
        }
    }
    
    func addFavorite(_ job: SwiftDataJobApplication) {
        job.isFavorite = true
        job.updateModifiedDate()
        
        // Save to SwiftData
        if let modelContext = modelContext {
            do {
                try modelContext.save()
                logger.info("✅ Added job to favorites: \(job.companyName) - \(job.jobTitle)")
            } catch {
                logger.error("❌ Failed to save favorite: \(error.localizedDescription)")
            }
        }
    }
    
    func removeFavorite(_ job: SwiftDataJobApplication) {
        job.isFavorite = false
        job.updateModifiedDate()
        
        // Save to SwiftData
        if let modelContext = modelContext {
            do {
                try modelContext.save()
                logger.info("✅ Removed job from favorites: \(job.companyName) - \(job.jobTitle)")
            } catch {
                logger.error("❌ Failed to save favorite removal: \(error.localizedDescription)")
            }
        }
    }
    
    // MARK: - Actions
    
    func showAddJobWindow() {
        jobStore?.showAddJobWindow()
    }
    
    func showEditJobWindow() {
        jobStore?.showEditJobWindow()
    }
    
    func deleteJob(_ job: SwiftDataJobApplication) {
        jobStore?.deleteJob(job)
    }
    
    func prepareClipboardImport(markdown: String) {
        pendingClipboardMarkdown = markdown
        jobStore?.prepareClipboardImport(markdown: markdown)
    }
    
    func importBackup(url: URL) {
        jobStore?.importBackup(url: url)
    }
    
    // MARK: - Navigation Path Extensions (Following Landmarks Pattern)
    
    func navigateToJob(_ job: SwiftDataJobApplication) {
        selectedJob = job
        path.append(job)
    }
    
    func navigateToDocument(_ document: SwiftDataJobDocument) {
        selectedDocument = document
        path.append(document)
    }
    
    func navigateToNote(_ note: SwiftDataNote) {
        selectedNote = note
        path.append(note)
    }
    
    func popNavigation() {
        if !path.isEmpty {
            path.removeLast()
        }
    }
    
    // MARK: - Utilities
    
    var uniqueCompanies: [String] {
        Array(Set(jobApplications.map { $0.companyName })).sorted()
    }
    
    var uniqueSkills: [String] {
        let allSkills = jobApplications.flatMap { $0.desiredSkillNames }
        return Array(Set(allSkills)).sorted()
    }
    
    var uniqueLocations: [String] {
        Array(Set(jobApplications.map { $0.location })).sorted()
    }
}

// MARK: - Preview Data Support

extension CareerDataModel {
    static var preview: CareerDataModel {
        let model = CareerDataModel()
        model.jobApplications = SwiftDataJobApplication.previewApplications
        model.filteredJobs = SwiftDataJobApplication.previewApplications
        return model
    }
}
