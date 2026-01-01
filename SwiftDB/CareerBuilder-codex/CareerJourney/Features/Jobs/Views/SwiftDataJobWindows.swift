//
//  SwiftDataJobWindows.swift
//  CareerKit
//
//  Window controllers for SwiftData-compatible job management
//

import SwiftUI
import SwiftData
import AppKit

// MARK: - Add Job Window Controller

class SwiftDataAddJobWindowController: NSWindowController {
    private let jobStore: JobStore
    
    init(jobStore: JobStore) {
        self.jobStore = jobStore
        
        // Create the window
        let window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 900, height: 720),
            styleMask: [.titled, .closable, .resizable],
            backing: .buffered,
            defer: false
        )
        
        super.init(window: window)
        
        setupWindow()
        setupContent()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupWindow() {
        guard let window = window else { return }
        
        window.title = "Add Job Application"
        window.identifier = NSUserInterfaceItemIdentifier("AddJobWindow")
        window.isRestorable = true
        window.minSize = NSSize(width: 820, height: 680)
        window.maxSize = NSSize(width: 1200, height: 900)
        window.center()
        
        // Make window key when shown
        window.makeKeyAndOrderFront(nil)
    }
    
    private func setupContent() {
        guard let window = window else { return }
        
        let contentView = SwiftDataAddJobView(jobStore: jobStore) { [weak self] in
            self?.close()
        }
        
        let hostingView = NSHostingView(rootView: contentView)
        hostingView.translatesAutoresizingMaskIntoConstraints = false
        
        // Create a container view to avoid constraint conflicts
        let containerView = NSView()
        window.contentView = containerView
        
        containerView.addSubview(hostingView)
        
        // Add constraints to fill the container
        NSLayoutConstraint.activate([
            hostingView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            hostingView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            hostingView.topAnchor.constraint(equalTo: containerView.topAnchor),
            hostingView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor)
        ])
    }
}

// MARK: - Edit Job Window Controller

class SwiftDataEditJobWindowController: NSWindowController {
    private let job: SwiftDataJobApplication
    private let jobStore: JobStore
    
    init(job: SwiftDataJobApplication, jobStore: JobStore) {
        self.job = job
        self.jobStore = jobStore
        
        // Create the window
        let window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 900, height: 720),
            styleMask: [.titled, .closable, .resizable],
            backing: .buffered,
            defer: false
        )
        
        super.init(window: window)
        
        setupWindow()
        setupContent()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupWindow() {
        guard let window = window else { return }
        
        window.title = "Edit Job Application"
        window.identifier = NSUserInterfaceItemIdentifier("EditJobWindow")
        window.isRestorable = true
        window.minSize = NSSize(width: 820, height: 680)
        window.maxSize = NSSize(width: 1200, height: 900)
        window.center()
        
        // Make window key when shown
        window.makeKeyAndOrderFront(nil)
    }
    
    private func setupContent() {
        guard let window = window else { return }
        
        let contentView = SwiftDataEditJobView(job: job, jobStore: jobStore) { [weak self] in
            self?.close()
        }
        
        let hostingView = NSHostingView(rootView: contentView)
        hostingView.translatesAutoresizingMaskIntoConstraints = false
        
        // Create a container view to avoid constraint conflicts
        let containerView = NSView()
        window.contentView = containerView
        
        containerView.addSubview(hostingView)
        
        // Add constraints to fill the container
        NSLayoutConstraint.activate([
            hostingView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            hostingView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            hostingView.topAnchor.constraint(equalTo: containerView.topAnchor),
            hostingView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor)
        ])
    }
}

// MARK: - SwiftData Add Job View

/// Hosts the SwiftData job form and forwards saves to JobStore so the main list updates.
struct SwiftDataAddJobView: View {
    @ObservedObject var jobStore: JobStore
    let onClose: () -> Void
    
    @State private var viewModel = SwiftDataJobViewModel()
    @State private var isSaving = false
    @State private var showError = false
    @State private var errorMessage = ""
    
    var body: some View {
        NavigationStack {
            SwiftDataJobForm(
                viewModel: viewModel,
                onSave: saveJob,
                onCancel: onClose,
                saveButtonTitle: "Add Job",
                jobStore: jobStore
            )
            .navigationTitle("Add Job Application")
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel", action: onClose)
                }
                
                ToolbarItem(placement: .confirmationAction) {
                    Button("Add") {
                        saveJob()
                    }
                    .disabled(!viewModel.isInputValid || isSaving)
                }
            }
            .alert("Error", isPresented: $showError) {
                Button("OK") { }
            } message: {
                Text(errorMessage)
            }
        }
        .frame(minWidth: 820, idealWidth: 960, minHeight: 680, idealHeight: 780)
        .onAppear {
            setupDefaults()
            applyPendingClipboardIfNeeded()
        }
        .onChange(of: jobStore.pendingClipboardMarkdown) { _, _ in
            applyPendingClipboardIfNeeded()
        }
    }
    
    private func setupDefaults() {
        // Set default location if available
        if let lastUsedLocation = jobStore.lastUsedLocation,
           !lastUsedLocation.isEmpty {
            viewModel.location = lastUsedLocation
        } else if !jobStore.uniqueLocations.isEmpty {
            viewModel.location = jobStore.uniqueLocations[0]
        }
        
        // Set default status
        viewModel.status = .applied
    }

    private func applyPendingClipboardIfNeeded() {
        guard let markdown = jobStore.pendingClipboardMarkdown,
              !markdown.isEmpty else { return }

        viewModel.jobDescription = markdown
        jobStore.pendingClipboardMarkdown = nil

        Task {
            await viewModel.processPastedJobPostingWithAI()
        }
    }
    
    private func saveJob() {
        guard viewModel.isInputValid else { return }
        
        isSaving = true
        
        Task {
            do {
                // Create new job
                let newJob = viewModel.createJob()
                
                // Add to job store
                try await jobStore.addJob(newJob)
                
                // Update last used location
                jobStore.lastUsedLocation = newJob.location
                
                await MainActor.run {
                    onClose()
                }
            } catch {
                await MainActor.run {
                    errorMessage = "Failed to save job: \(error.localizedDescription)"
                    showError = true
                    isSaving = false
                }
            }
        }
    }
}

// MARK: - SwiftData Edit Job View

/// Edit flow mirrors Add but starts with an existing job and commits updates back through JobStore.
struct SwiftDataEditJobView: View {
    let job: SwiftDataJobApplication
    let jobStore: JobStore
    let onClose: () -> Void
    
    @State private var viewModel: SwiftDataJobViewModel
    @State private var showDiscardAlert = false
    @State private var isSaving = false
    
    init(job: SwiftDataJobApplication, jobStore: JobStore, onClose: @escaping () -> Void) {
        self.job = job
        self.jobStore = jobStore
        self.onClose = onClose
        
        // Initialize view model with job data
        self._viewModel = State(initialValue: SwiftDataJobViewModel(from: job))
    }
    
    var body: some View {
        NavigationStack {
            SwiftDataJobForm(
                viewModel: viewModel,
                onSave: saveJob,
                onCancel: handleCancel,
                saveButtonTitle: "Save Changes",
                jobStore: jobStore
            )
            .navigationTitle("Edit Job Application")
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel", action: handleCancel)
                }
                
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") {
                        saveJob()
                    }
                    .disabled(!viewModel.isInputValid || isSaving)
                }
            }
            .alert("Discard Changes?", isPresented: $showDiscardAlert) {
                Button("Discard", role: .destructive) {
                    onClose()
                }
                Button("Keep Editing", role: .cancel) {}
            } message: {
                Text("You have unsaved changes. Are you sure you want to discard them?")
            }
        }
        .frame(minWidth: 820, idealWidth: 960, minHeight: 680, idealHeight: 780)
    }
    
    private func handleCancel() {
        if viewModel.hasChanges {
            showDiscardAlert = true
        } else {
            onClose()
        }
    }
    
    private func saveJob() {
        guard viewModel.isInputValid else { return }
        
        isSaving = true
        
        Task {
            do {
                // Update job with view model data
                viewModel.updateJob(job)
                
                // Update job store
                try await jobStore.updateJob(job)
                
                await MainActor.run {
                    onClose()
                }
            } catch {
                await MainActor.run {
                    isSaving = false
                }
            }
        }
    }
}
