//
//  AddJobView.swift
//  CareerKit
//
//  View for adding new job applications
//

import SwiftUI
import SwiftData

struct AddJobView: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var modelContext
    
    @EnvironmentObject var jobStore: JobStore
    @EnvironmentObject var docStore: DocumentStore
    
    @Binding var isPresented: Bool
    
    @State private var viewModel = JobViewModel()
    @State private var importedDocuments: [SwiftDataJobDocument] = []
    @State private var isSaving = false
    @State private var showError = false
    @State private var errorMessage = ""
    
    var body: some View {
        NavigationStack {
            JobFormSection(
                viewModel: viewModel,
                importedDocuments: $importedDocuments,
                onSave: saveJob,
                onCancel: dismiss.callAsFunction,
                saveButtonTitle: "Add Job",
                locations: jobStore.uniqueLocations,
                availableSkills: jobStore.uniqueSkills,
                jobStore: jobStore
            )
            .navigationTitle("Add Job Application")
            .navigationSubtitle(subtitleText)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        dismiss()
                    }
                    .buttonStyle(.bordered)
                    .keyboardShortcut(.cancelAction)
                }

                ToolbarItem(placement: .confirmationAction) {
                    HStack(spacing: 8) {
                        if isSaving {
                            ProgressView()
                                .controlSize(.small)
                                .frame(width: 16, height: 16)
                        }

                        Button(isSaving ? "Adding..." : "Add Job") {
                            saveJob()
                        }
                        .buttonStyle(.borderedProminent)
                        .disabled(!viewModel.isInputValid || isSaving)
                        .keyboardShortcut(.defaultAction)
                    }
                }
            }
            .alert("Unable to Save", isPresented: $showError) {
                Button("OK", role: .cancel) { }
            } message: {
                Text(errorMessage)
            }
        }
        .frame(minWidth: 820, idealWidth: 920, minHeight: 640, idealHeight: 760)
        .onAppear {
            setupDefaults()
            applyPendingClipboardIfNeeded()
        }
        .onChange(of: jobStore.pendingClipboardMarkdown) { _, _ in
            applyPendingClipboardIfNeeded()
        }
    }

    // MARK: - Computed Properties

    private var subtitleText: String {
        if isSaving {
            return "Saving application..."
        } else if !viewModel.companyName.isEmpty && !viewModel.jobTitle.isEmpty {
            return "\(viewModel.jobTitle) at \(viewModel.companyName)"
        } else {
            return "Fill in the required fields to continue"
        }
    }
    
    // MARK: - Helper Methods
    
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

        // JobStore stages clipboard text; AddJobView consumes it and triggers AI parsing.
        viewModel.jobDescription = markdown
        jobStore.pendingClipboardMarkdown = nil

        Task {
            await viewModel.processPastedJobPostingWithAI()
        }
    }
    
    private func saveJob() {
        guard viewModel.isInputValid else { return }
        
        isSaving = true
        
        // Create new job
        let newJob = viewModel.createJob()
        
        // Attach documents
        newJob.documents = importedDocuments
        
        // Update document metadata
        for document in importedDocuments {
            document.associatedCompany = newJob.companyName
            document.associatedJobTitle = newJob.jobTitle
            document.associatedApplicationDate = newJob.applicationDate
        }
        
        // Add to model context
        modelContext.insert(newJob)
        
        do {
            try modelContext.save()
            
            // Update job store asynchronously
            Task {
                do {
                    try await jobStore.addJob(newJob)
                    
                    await MainActor.run {
                        // Update last used location
                        jobStore.lastUsedLocation = newJob.location
                        
                        // Close the sheet
                        isPresented = false
                        dismiss()
                    }
                } catch {
                    await MainActor.run {
                        errorMessage = "Failed to update job store: \(error.localizedDescription)"
                        showError = true
                        isSaving = false
                    }
                }
            }
        } catch {
            errorMessage = "Failed to save job: \(error.localizedDescription)"
            showError = true
            isSaving = false
        }
    }
}

// MARK: - Window Presenter
struct AddJobWindowPresenter: View {
    @EnvironmentObject var jobStore: JobStore
    @EnvironmentObject var docStore: DocumentStore
    @State private var windowRef: NSWindow?
    
    let onClose: (() -> Void)?
    
    var body: some View {
        AddJobView(isPresented: .constant(true))
            .environmentObject(jobStore)
            .environmentObject(docStore)
            .background(WindowAccessor(window: $windowRef))
            .onAppear {
                configureWindow()
            }
    }
    
    private func configureWindow() {
        guard let window = windowRef else { return }
        
        window.title = "Add Job Application"
        window.isRestorable = true
        window.identifier = NSUserInterfaceItemIdentifier("AddJobWindow")
        
        // Set window constraints
        window.minSize = NSSize(width: 700, height: 600)
        window.maxSize = NSSize(width: 1000, height: 800)
        
        // Center window
        window.center()
        
        // Make key and order front
        window.makeKeyAndOrderFront(nil)
    }
}

// MARK: - Window Accessor
private struct WindowAccessor: NSViewRepresentable {
    @Binding var window: NSWindow?
    
    func makeNSView(context: Context) -> NSView {
        let view = NSView()
        DispatchQueue.main.async {
            self.window = view.window
        }
        return view
    }
    
    func updateNSView(_ nsView: NSView, context: Context) {}
}

// MARK: - Preview
#Preview {
    AddJobView(isPresented: .constant(true))
        .environmentObject(JobStore())
        .environmentObject(DocumentStore())
        .modelContainer(for: [SwiftDataJobApplication.self, SwiftDataJobDocument.self], inMemory: true)
}
