//
//  JobStore.swift
//  CareerKit
//
//  Central store for managing job applications - Uses ObservableObject for @EnvironmentObject compatibility
//

import SwiftUI
import SwiftData
import Foundation
import OSLog
import AppKit
import Combine
import UserNotifications

@MainActor
final class JobStore: ObservableObject {
    // Published properties for UI updates
    @Published var jobApplications: [SwiftDataJobApplication] = []
    @Published var selectedJobIDs: Set<UUID> = []
    @Published var isLoading = false
    @Published var error: Error?

    // Staged clipboard payload consumed by AddJobView to prefill the description and kick off AI parsing.
    @Published var pendingClipboardMarkdown: String?

    // Search and filter state
    @Published var searchText = ""
    @Published var filterStatus: JobStatus?
    @Published var showFavoritesOnly = false
    @Published var sortOption: JobSortOption = .dateApplied

    // Reference to other stores used for coordinated import actions.
    weak var documentStore: DocumentStore?
    weak var noteStore: NoteStore?

    // Model context for SwiftData operations
    private var modelContext: ModelContext?

    // User preferences
    @Published var lastUsedLocation: String?

    // Logger
    private let logger = Logger(subsystem: "com.careerkit.jobstore", category: "JobStore")
    
    init(documentStore: DocumentStore? = nil, noteStore: NoteStore? = nil, modelContext: ModelContext? = nil) {
        self.documentStore = documentStore
        self.noteStore = noteStore
        self.modelContext = modelContext
        
        // Set up store references
        documentStore?.jobStore = self
        noteStore?.jobStore = self
    }
    
    // MARK: - Computed Properties
    
    var selectedJob: SwiftDataJobApplication? {
        guard let firstID = selectedJobIDs.first else { return nil }
        return jobApplications.first { $0.id == firstID }
    }
    
    var filteredJobs: [SwiftDataJobApplication] {
        var results = jobApplications
        
        // Apply search filter
        if !searchText.isEmpty {
            results = results.filter { job in
                job.companyName.localizedCaseInsensitiveContains(searchText) ||
                job.jobTitle.localizedCaseInsensitiveContains(searchText) ||
                job.location.localizedCaseInsensitiveContains(searchText) ||
                job.notes.localizedCaseInsensitiveContains(searchText)
            }
        }
        
        // Apply status filter
        if let status = filterStatus {
            results = results.filter { $0.status == status }
        }
        
        // Apply favorites filter
        if showFavoritesOnly {
            results = results.filter { $0.isFavorite }
        }
        
        // Apply sorting
        switch sortOption {
        case .dateApplied:
            results.sort { $0.dateOfApplication > $1.dateOfApplication }
        case .company:
            results.sort { $0.companyName < $1.companyName }
        case .jobTitle:
            results.sort { $0.jobTitle < $1.jobTitle }
        case .status:
            results.sort { $0.status.rawValue < $1.status.rawValue }
        case .location:
            results.sort { $0.location < $1.location }
        case .salary:
            results.sort { ($0.salaryMax ?? 0) > ($1.salaryMax ?? 0) }
        case .favorite:
            results.sort { job1, job2 in
                if job1.isFavorite == job2.isFavorite {
                    return job1.dateOfApplication > job2.dateOfApplication
                }
                return job1.isFavorite && !job2.isFavorite
            }
        }
        
        return results
    }
    
    var uniqueLocations: [String] {
        let locations = Set(jobApplications.map { $0.location }.filter { !$0.isEmpty })
        return Array(locations).sorted()
    }
    
    var uniqueSkills: [String] {
        let allSkills = jobApplications.flatMap { $0.desiredSkillNames }
        let uniqueSkills = Set(allSkills.filter { !$0.isEmpty })
        return Array(uniqueSkills).sorted()
    }
    
    var uniqueCompanies: [String] {
        let allCompanies = jobApplications.map { $0.companyName }
        let uniqueCompanies = Set(allCompanies.filter { !$0.isEmpty })
        return Array(uniqueCompanies).sorted()
    }
    
    // MARK: - Data Management
    
    func initializeDataIfNeeded() {
        Task { @MainActor in
            guard let modelContext = modelContext else {
                logger.error("No model context available")
                return
            }
            
            do {
                let descriptor = FetchDescriptor<SwiftDataJobApplication>()
                jobApplications = try modelContext.fetch(descriptor)
                logger.info("Loaded \(self.jobApplications.count) job applications")
            } catch {
                logger.error("Failed to fetch job applications: \(error.localizedDescription)")
                self.error = error
            }
        }
    }
    
    func refreshData() async {
        isLoading = true
        
        do {
            guard let modelContext = modelContext else { throw StoreError.noModelContext }
            
            let descriptor = FetchDescriptor<SwiftDataJobApplication>(
                sortBy: [SortDescriptor(\.dateOfApplication, order: .reverse)]
            )
            
            let jobs = try modelContext.fetch(descriptor)
            
            await MainActor.run {
                self.jobApplications = jobs
                self.isLoading = false
                self.logger.info("Refreshed \(jobs.count) job applications")
            }
        } catch {
            await MainActor.run {
                self.error = error
                self.isLoading = false
                self.logger.error("Failed to refresh job applications: \(error.localizedDescription)")
            }
        }
    }
    
    func addJob(_ job: SwiftDataJobApplication) async throws {
        guard let modelContext = modelContext else {
            logger.error("No model context available")
            throw StoreError.noModelContext
        }
        
        do {
            modelContext.insert(job)
            try modelContext.save()
            jobApplications.append(job)
            logger.info("Added job: \(job.jobTitle) at \(job.companyName)")
        } catch {
            self.error = error
            logger.error("Failed to add job: \(error.localizedDescription)")
            throw error
        }
    }
    
    func updateJob(_ job: SwiftDataJobApplication) async throws {
        guard let modelContext = modelContext else {
            logger.error("No model context available")
            throw StoreError.noModelContext
        }

        do {
            try modelContext.save()
            logger.info("Updated job: \(job.jobTitle) at \(job.companyName)")
        } catch {
            self.error = error
            logger.error("Failed to update job: \(error.localizedDescription)")
            throw error
        }
    }

    func duplicateJob(_ job: SwiftDataJobApplication) {
        guard let modelContext = modelContext else {
            logger.error("No model context available")
            return
        }

        let duplicate = SwiftDataJobApplication(
            companyName: "\(job.companyName) (Copy)",
            jobTitle: job.jobTitle,
            status: job.status,
            dateOfApplication: Date(),
            location: job.location,
            linkToJobString: job.linkToJobString,
            salaryString: job.salaryString,
            salaryMin: job.salaryMin,
            salaryMax: job.salaryMax,
            salaryCurrency: job.salaryCurrency,
            salaryPeriod: job.salaryPeriod,
            jobDescription: job.jobDescription,
            coverLetter: job.coverLetter,
            notes: job.notes,
            isFavorite: false,
            jobType: job.jobType,
            desiredSkillNames: job.desiredSkillNames,
            jobDeadline: job.jobDeadline,
            latitude: job.latitude,
            longitude: job.longitude,
            remoteWorkType: job.remoteWorkType
        )

        do {
            modelContext.insert(duplicate)
            try modelContext.save()
            jobApplications.append(duplicate)
            logger.info("Duplicated job: \(job.jobTitle) at \(job.companyName)")
        } catch {
            self.error = error
            logger.error("Failed to duplicate job: \(error.localizedDescription)")
        }
    }

    func deleteJob(_ job: SwiftDataJobApplication) {
        guard let modelContext = modelContext else {
            logger.error("No model context available")
            return
        }
        
        do {
            modelContext.delete(job)
            try modelContext.save()
            jobApplications.removeAll { $0.id == job.id }
            selectedJobIDs.remove(job.id)
            logger.info("Deleted job: \(job.jobTitle) at \(job.companyName)")
        } catch {
            self.error = error
            logger.error("Failed to delete job: \(error.localizedDescription)")
        }
    }
    
    func deleteJobs(_ jobs: [SwiftDataJobApplication]) {
        guard let modelContext = modelContext else {
            logger.error("No model context available")
            return
        }
        
        do {
            for job in jobs {
                modelContext.delete(job)
                jobApplications.removeAll { $0.id == job.id }
                selectedJobIDs.remove(job.id)
            }
            try modelContext.save()
            logger.info("Deleted \(jobs.count) jobs")
        } catch {
            self.error = error
            logger.error("Failed to delete jobs: \(error.localizedDescription)")
        }
    }
    
    func toggleFavorite(_ job: SwiftDataJobApplication) {
        guard let modelContext = modelContext else {
            logger.error("No model context available")
            return
        }
        
        do {
            job.isFavorite.toggle()
            try modelContext.save()
            logger.info("Toggled favorite for job: \(job.jobTitle)")
        } catch {
            self.error = error
            logger.error("Failed to toggle favorite: \(error.localizedDescription)")
        }
    }

    func toggleFavorite(for jobID: UUID) {
        guard let job = jobApplications.first(where: { $0.id == jobID }) else {
            logger.warning("No job found for favorite toggle")
            return
        }
        toggleFavorite(job)
    }

    func updateJobDescription(_ job: SwiftDataJobApplication, description: String) {
        guard let modelContext = modelContext else {
            logger.error("No model context available")
            return
        }

        job.jobDescription = description

        do {
            try modelContext.save()
            logger.info("Updated job description for \(job.jobTitle)")
        } catch {
            self.error = error
            logger.error("Failed to update job description: \(error.localizedDescription)")
        }
    }

    func updateJobStatus(_ jobIDs: [UUID], to status: JobStatus) {
        guard let modelContext = modelContext else {
            logger.error("No model context available")
            return
        }

        for jobID in jobIDs {
            guard let job = jobApplications.first(where: { $0.id == jobID }) else {
                logger.warning("No job found with ID: \(jobID)")
                continue
            }
            job.status = status
        }

        do {
            try modelContext.save()
            logger.info("Updated status to \(status.rawValue) for \(jobIDs.count) jobs")
        } catch {
            self.error = error
            logger.error("Failed to update job statuses: \(error.localizedDescription)")
        }
    }

    // MARK: - Window Management
    
    func showAddJobWindow() {
        guard let documentStore = documentStore else {
            logger.error("No document store available")
            return
        }
        
        let addJobView = AddJobView(isPresented: .constant(true))
            .environmentObject(self)
            .environmentObject(documentStore)
        
        let window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 800, height: 900),
            styleMask: [.titled, .closable, .miniaturizable, .resizable],
            backing: .buffered,
            defer: false
        )
        
        window.title = "Add New Job Application"
        window.contentView = NSHostingView(rootView: addJobView)
        window.center()
        window.makeKeyAndOrderFront(nil)
    }
    
    func showEditJobWindow() {
        guard let job = selectedJob else {
            logger.warning("No job selected for editing")
            return
        }
        guard let documentStore = documentStore else {
            logger.error("No document store available")
            return
        }
        
        let editJobView = EditJobView(job: job, isPresented: .constant(true))
            .environmentObject(self)
            .environmentObject(documentStore)
        
        let window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 800, height: 900),
            styleMask: [.titled, .closable, .miniaturizable, .resizable],
            backing: .buffered,
            defer: false
        )
        
        window.title = "Edit Job Application"
        window.contentView = NSHostingView(rootView: editJobView)
        window.center()
        window.makeKeyAndOrderFront(nil)
    }
    
    // MARK: - Import/Export
    
    func prepareClipboardImport(markdown: String) {
        pendingClipboardMarkdown = markdown
        showAddJobWindow()
    }
    
    func importBackup(url: URL) {
        Task { @MainActor in
            isLoading = true
            defer { isLoading = false }
            
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let backup = try decoder.decode(JobBackup.self, from: data)
                
                guard let modelContext = modelContext else { throw StoreError.noModelContext }
                
                // Import jobs
                for jobData in backup.jobs {
                    let job = SwiftDataJobApplication(from: jobData)
                    modelContext.insert(job)
                    jobApplications.append(job)
                }
                
                try modelContext.save()
                
                // Import documents and notes through their respective stores
                if let documentStore = documentStore {
                    await documentStore.importDocuments(from: backup.documents)
                }
                
                if let noteStore = noteStore {
                    await noteStore.importNotes(from: backup.notes)
                }
                
                logger.info("Successfully imported \(backup.jobs.count) jobs, \(backup.documents.count) documents, \(backup.notes.count) notes")
                
                // Show success notification
                let content = UNMutableNotificationContent()
                content.title = "Import Successful"
                content.body = "Imported \(backup.jobs.count) jobs, \(backup.documents.count) documents, and \(backup.notes.count) notes"
                content.sound = UNNotificationSound.default
                
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: nil)
                try await UNUserNotificationCenter.current().add(request)
                
            } catch {
                self.error = error
                logger.error("Failed to import backup: \(error.localizedDescription)")
                
                // Show error notification
                let content = UNMutableNotificationContent()
                content.title = "Import Failed"
                content.body = error.localizedDescription
                content.sound = UNNotificationSound.default
                
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: nil)
                try? await UNUserNotificationCenter.current().add(request)
            }
        }
    }
    
    func exportBackup(url: URL) {
        Task { @MainActor in
            do {
                let backup = JobBackup(
                    jobs: jobApplications.map { JobBackupData(from: $0) },
                    documents: documentStore?.documents.map { DocumentBackupData(from: $0) } ?? [],
                    notes: noteStore?.notes.map { NoteBackupData(from: $0) } ?? []
                )
                
                let encoder = JSONEncoder()
                encoder.outputFormatting = .prettyPrinted
                let data = try encoder.encode(backup)
                try data.write(to: url)
                
                logger.info("Successfully exported backup to \(url.path)")
                
                // Show success notification
                let content = UNMutableNotificationContent()
                content.title = "Export Successful"
                content.body = "Your data has been exported to \(url.lastPathComponent)"
                content.sound = UNNotificationSound.default
                
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: nil)
                try await UNUserNotificationCenter.current().add(request)
                
            } catch {
                self.error = error
                logger.error("Failed to export backup: \(error.localizedDescription)")
            }
        }
    }
    
    func importJobsCSV(url: URL) {
        Task { @MainActor in
            isLoading = true
            defer { isLoading = false }
            
            do {
                let data = try Data(contentsOf: url)
                guard let csvString = String(data: data, encoding: .utf8) else {
                    throw StoreError.invalidData
                }
                
                let jobs = try CSVParser.parseJobs(from: csvString)
                guard let modelContext = modelContext else { throw StoreError.noModelContext }
                
                for jobData in jobs {
                    let job = SwiftDataJobApplication(from: jobData)
                    modelContext.insert(job)
                    jobApplications.append(job)
                }
                
                try modelContext.save()
                
                logger.info("Successfully imported \(jobs.count) jobs from CSV")
                
                // Show success notification
                let content = UNMutableNotificationContent()
                content.title = "CSV Import Successful"
                content.body = "Imported \(jobs.count) job applications"
                content.sound = UNNotificationSound.default
                
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: nil)
                try await UNUserNotificationCenter.current().add(request)
                
            } catch {
                self.error = error
                logger.error("Failed to import CSV: \(error.localizedDescription)")
            }
        }
    }
    
    func exportJobsCSV(url: URL) {
        Task { @MainActor in
            do {
                let csvString = try CSVExporter.exportJobs(jobApplications)
                try csvString.write(to: url, atomically: true, encoding: .utf8)
                
                logger.info("Successfully exported jobs CSV to \(url.path)")
                
                // Show success notification
                let content = UNMutableNotificationContent()
                content.title = "CSV Export Successful"
                content.body = "Exported \(jobApplications.count) job applications to \(url.lastPathComponent)"
                content.sound = UNNotificationSound.default
                
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: nil)
                try await UNUserNotificationCenter.current().add(request)
                
            } catch {
                self.error = error
                logger.error("Failed to export CSV: \(error.localizedDescription)")
            }
        }
    }
}

// MARK: - Supporting Types

enum StoreError: LocalizedError {
    case noModelContext
    case invalidData
    case importFailed(String)
    
    var errorDescription: String? {
        switch self {
        case .noModelContext:
            return "No model context available"
        case .invalidData:
            return "Invalid data format"
        case .importFailed(let reason):
            return "Import failed: \(reason)"
        }
    }
}

// MARK: - Backup Data Structures

struct JobBackup: Codable {
    let jobs: [JobBackupData]
    let documents: [DocumentBackupData]
    let notes: [NoteBackupData]
    let exportDate: Date
    let version: String
    
    init(jobs: [JobBackupData], documents: [DocumentBackupData], notes: [NoteBackupData]) {
        self.jobs = jobs
        self.documents = documents
        self.notes = notes
        self.exportDate = Date()
        self.version = "1.0"
    }
}

struct JobBackupData: Codable {
    let id: UUID
    let companyName: String
    let jobTitle: String
    let status: String
    let dateOfApplication: Date
    let location: String
    let jobDescription: String
    let notes: String
    let isFavorite: Bool
    let salaryMin: Double?
    let salaryMax: Double?
    let desiredSkillNames: [String]

    // Memberwise initializer for CSV parsing
    init(
        id: UUID,
        companyName: String,
        jobTitle: String,
        status: String,
        dateOfApplication: Date,
        location: String,
        jobDescription: String,
        notes: String,
        isFavorite: Bool,
        salaryMin: Double?,
        salaryMax: Double?,
        desiredSkillNames: [String]
    ) {
        self.id = id
        self.companyName = companyName
        self.jobTitle = jobTitle
        self.status = status
        self.dateOfApplication = dateOfApplication
        self.location = location
        self.jobDescription = jobDescription
        self.notes = notes
        self.isFavorite = isFavorite
        self.salaryMin = salaryMin
        self.salaryMax = salaryMax
        self.desiredSkillNames = desiredSkillNames
    }

    // Convenience initializer from SwiftData model
    init(from job: SwiftDataJobApplication) {
        self.id = job.id
        self.companyName = job.companyName
        self.jobTitle = job.jobTitle
        self.status = job.status.rawValue
        self.dateOfApplication = job.dateOfApplication
        self.location = job.location
        self.jobDescription = job.jobDescription
        self.notes = job.notes
        self.isFavorite = job.isFavorite
        self.salaryMin = job.salaryMin
        self.salaryMax = job.salaryMax
        self.desiredSkillNames = job.desiredSkillNames
    }
}

extension SwiftDataJobApplication {
    convenience init(from backup: JobBackupData) {
        self.init(
            id: backup.id,
            companyName: backup.companyName,
            jobTitle: backup.jobTitle,
            status: JobStatus.normalize(backup.status),
            dateOfApplication: backup.dateOfApplication,
            location: backup.location,
            salaryMin: backup.salaryMin,
            salaryMax: backup.salaryMax,
            jobDescription: backup.jobDescription,
            notes: backup.notes,
            isFavorite: backup.isFavorite,
            desiredSkillNames: backup.desiredSkillNames
        )
    }
}

struct DocumentBackupData: Codable {
    let id: UUID
    let fileName: String
    let documentType: String
    let jobApplicationID: UUID?
    let fileSize: Int
    let mimeType: String
    let uploadDate: Date
    let fileURL: URL?
    let associatedCompany: String?
    let associatedJobTitle: String?
    let associatedApplicationDate: Date?
    let createdDate: Date
    let modifiedDate: Date
    let categoryID: UUID?
    let categoryName: String?
    
    init(from document: SwiftDataJobDocument) {
        id = document.id
        fileName = document.fileName
        documentType = document.documentType
        jobApplicationID = document.jobApplication?.id
        fileSize = document.fileSize
        mimeType = document.mimeType
        uploadDate = document.uploadDate
        fileURL = document.fileURL
        associatedCompany = document.associatedCompany
        associatedJobTitle = document.associatedJobTitle
        associatedApplicationDate = document.associatedApplicationDate
        createdDate = document.createdDate
        modifiedDate = document.modifiedDate
        categoryID = document.category?.id
        categoryName = document.category?.name
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case fileName
        case documentType
        case jobApplicationID
        case fileSize
        case mimeType
        case uploadDate
        case fileURL
        case associatedCompany
        case associatedJobTitle
        case associatedApplicationDate
        case createdDate
        case modifiedDate
        case categoryID
        case categoryName
        case name
        case fileType
        case createdAt
        case filePath
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(UUID.self, forKey: .id) ?? UUID()
        fileName = try container.decodeIfPresent(String.self, forKey: .fileName)
            ?? container.decodeIfPresent(String.self, forKey: .name)
            ?? "Document"
        documentType = try container.decodeIfPresent(String.self, forKey: .documentType)
            ?? container.decodeIfPresent(String.self, forKey: .fileType)
            ?? ""
        jobApplicationID = try container.decodeIfPresent(UUID.self, forKey: .jobApplicationID)
        fileSize = try container.decodeIfPresent(Int.self, forKey: .fileSize) ?? 0
        mimeType = try container.decodeIfPresent(String.self, forKey: .mimeType) ?? ""
        uploadDate = try container.decodeIfPresent(Date.self, forKey: .uploadDate)
            ?? container.decodeIfPresent(Date.self, forKey: .createdAt)
            ?? Date()
        if let url = try container.decodeIfPresent(URL.self, forKey: .fileURL) {
            fileURL = url
        } else if let path = try container.decodeIfPresent(String.self, forKey: .filePath) {
            fileURL = URL(fileURLWithPath: path)
        } else {
            fileURL = nil
        }
        associatedCompany = try container.decodeIfPresent(String.self, forKey: .associatedCompany)
        associatedJobTitle = try container.decodeIfPresent(String.self, forKey: .associatedJobTitle)
        associatedApplicationDate = try container.decodeIfPresent(Date.self, forKey: .associatedApplicationDate)
        createdDate = try container.decodeIfPresent(Date.self, forKey: .createdDate) ?? uploadDate
        modifiedDate = try container.decodeIfPresent(Date.self, forKey: .modifiedDate) ?? createdDate
        categoryID = try container.decodeIfPresent(UUID.self, forKey: .categoryID)
        categoryName = try container.decodeIfPresent(String.self, forKey: .categoryName)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(fileName, forKey: .fileName)
        try container.encode(documentType, forKey: .documentType)
        try container.encode(jobApplicationID, forKey: .jobApplicationID)
        try container.encode(fileSize, forKey: .fileSize)
        try container.encode(mimeType, forKey: .mimeType)
        try container.encode(uploadDate, forKey: .uploadDate)
        try container.encodeIfPresent(fileURL, forKey: .fileURL)
        try container.encodeIfPresent(associatedCompany, forKey: .associatedCompany)
        try container.encodeIfPresent(associatedJobTitle, forKey: .associatedJobTitle)
        try container.encodeIfPresent(associatedApplicationDate, forKey: .associatedApplicationDate)
        try container.encode(createdDate, forKey: .createdDate)
        try container.encode(modifiedDate, forKey: .modifiedDate)
        try container.encodeIfPresent(categoryID, forKey: .categoryID)
        try container.encodeIfPresent(categoryName, forKey: .categoryName)
    }
}

struct NoteBackupData: Codable {
    let id: UUID
    let title: String
    let content: String
    let associatedJobApplicationID: UUID?
    let createdDate: Date
    let modifiedDate: Date
    let tags: [String]
    let isPinned: Bool
    
    init(from note: SwiftDataNote) {
        id = note.id
        title = note.title
        content = note.content
        associatedJobApplicationID = note.associatedJobApplicationID
        createdDate = note.createdDate
        modifiedDate = note.modifiedDate
        tags = note.tags
        isPinned = note.isPinned
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case content
        case associatedJobApplicationID
        case createdDate
        case modifiedDate
        case tags
        case isPinned
        case jobApplicationID
        case createdAt
        case updatedAt
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(UUID.self, forKey: .id) ?? UUID()
        title = try container.decodeIfPresent(String.self, forKey: .title) ?? "Untitled"
        content = try container.decodeIfPresent(String.self, forKey: .content) ?? ""
        associatedJobApplicationID = try container.decodeIfPresent(UUID.self, forKey: .associatedJobApplicationID)
            ?? container.decodeIfPresent(UUID.self, forKey: .jobApplicationID)
        createdDate = try container.decodeIfPresent(Date.self, forKey: .createdDate)
            ?? container.decodeIfPresent(Date.self, forKey: .createdAt)
            ?? Date()
        modifiedDate = try container.decodeIfPresent(Date.self, forKey: .modifiedDate)
            ?? container.decodeIfPresent(Date.self, forKey: .updatedAt)
            ?? createdDate
        tags = try container.decodeIfPresent([String].self, forKey: .tags) ?? []
        isPinned = try container.decodeIfPresent(Bool.self, forKey: .isPinned) ?? false
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(title, forKey: .title)
        try container.encode(content, forKey: .content)
        try container.encodeIfPresent(associatedJobApplicationID, forKey: .associatedJobApplicationID)
        try container.encode(createdDate, forKey: .createdDate)
        try container.encode(modifiedDate, forKey: .modifiedDate)
        try container.encode(tags, forKey: .tags)
        try container.encode(isPinned, forKey: .isPinned)
    }
}
