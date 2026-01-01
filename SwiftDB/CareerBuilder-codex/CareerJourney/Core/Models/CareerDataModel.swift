//
//  CareerDataModel.swift
//  CareerKit
//
//  Central data model following Apple Sample Code patterns
//

import SwiftUI
import SwiftData
import Foundation
import OSLog
import Combine
import Observation

/// Central data model following Apple Sample Code patterns from Landmarks and FoodTruck
@Observable @MainActor
final class CareerDataModel {
    // MARK: - Shared Instance

    static let shared = CareerDataModel()

    // MARK: - Published Properties
    
    var jobApplications: [SwiftDataJobApplication] = []
    var documents: [SwiftDataJobDocument] = []
    var notes: [SwiftDataNote] = []
    
    // Selection state
    var selectedJobIDs: Set<UUID> = []
    var selectedDocumentID: UUID?
    var selectedNoteID: UUID?
    
    var selectedJob: SwiftDataJobApplication? {
        guard let firstID = selectedJobIDs.first else { return nil }
        return jobApplications.first { $0.id == firstID }
    }
    
    // Navigation state
    var path: NavigationPath = NavigationPath()
    var isInspectorPresented: Bool = false
    
    // Search and filter state
    var searchText: String = "" {
        didSet {
            if jobStore?.searchText != searchText {
                jobStore?.searchText = searchText
            }
            updateFilteredContent()
        }
    }
    
    var filterStatus: JobStatus? = nil {
        didSet {
            if jobStore?.filterStatus != filterStatus {
                jobStore?.filterStatus = filterStatus
            }
            updateFilteredContent()
        }
    }
    
    var showFavoritesOnly: Bool = false {
        didSet {
            if jobStore?.showFavoritesOnly != showFavoritesOnly {
                jobStore?.showFavoritesOnly = showFavoritesOnly
            }
            updateFilteredContent()
        }
    }
    
    var sortOption: JobSortOption = .dateApplied {
        didSet {
            if jobStore?.sortOption != sortOption {
                jobStore?.sortOption = sortOption
            }
            updateFilteredContent()
        }
    }
    
    // Filtered results
    var filteredJobs: [SwiftDataJobApplication] = []
    var filteredDocuments: [SwiftDataJobDocument] = []
    var filteredNotes: [SwiftDataNote] = []
    
    // UI State
    var isLoading = false
    var error: Error?
    
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
            bindStores()

        } catch {
            logger.error("❌ Failed to initialize model container: \(error.localizedDescription)")
        }
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
        selectedJobIDs = jobStore.selectedJobIDs
        selectedDocumentID = documentStore.selectedDocumentID
        selectedNoteID = noteStore.selectedNoteID

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

        jobStore.$selectedJobIDs
            .receive(on: RunLoop.main)
            .sink { [weak self] selection in
                self?.selectedJobIDs = selection
                self?.updateFilteredContent()
            }
            .store(in: &cancellables)

        jobStore.$searchText
            .receive(on: RunLoop.main)
            .sink { [weak self] text in
                guard let self, self.searchText != text else { return }
                self.searchText = text
            }
            .store(in: &cancellables)

        jobStore.$filterStatus
            .receive(on: RunLoop.main)
            .sink { [weak self] status in
                guard let self, self.filterStatus != status else { return }
                self.filterStatus = status
            }
            .store(in: &cancellables)

        jobStore.$showFavoritesOnly
            .receive(on: RunLoop.main)
            .sink { [weak self] showFavoritesOnly in
                guard let self, self.showFavoritesOnly != showFavoritesOnly else { return }
                self.showFavoritesOnly = showFavoritesOnly
            }
            .store(in: &cancellables)

        jobStore.$sortOption
            .receive(on: RunLoop.main)
            .sink { [weak self] sortOption in
                guard let self, self.sortOption != sortOption else { return }
                self.sortOption = sortOption
            }
            .store(in: &cancellables)

        documentStore.$documents
            .receive(on: RunLoop.main)
            .sink { [weak self] documents in
                self?.documents = documents
                self?.updateFilteredContent()
            }
            .store(in: &cancellables)

        documentStore.$selectedDocumentID
            .receive(on: RunLoop.main)
            .sink { [weak self] documentID in
                self?.selectedDocumentID = documentID
            }
            .store(in: &cancellables)

        noteStore.$notes
            .receive(on: RunLoop.main)
            .sink { [weak self] notes in
                self?.notes = notes
                self?.updateFilteredContent()
            }
            .store(in: &cancellables)

        noteStore.$selectedNoteID
            .receive(on: RunLoop.main)
            .sink { [weak self] noteID in
                self?.selectedNoteID = noteID
            }
            .store(in: &cancellables)
    }
    
    private func updateFilteredContent() {
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

// MARK: - Navigation Path Extensions

extension CareerDataModel {
    func navigateToJob(_ job: SwiftDataJobApplication) {
        selectedJobIDs = [job.id]
        path.append(job)
    }
    
    func navigateToDocument(_ document: SwiftDataJobDocument) {
        path.append(document)
    }
    
    func navigateToNote(_ note: SwiftDataNote) {
        path.append(note)
    }
    
    func popNavigation() {
        if !path.isEmpty {
            path.removeLast()
        }
    }
}
