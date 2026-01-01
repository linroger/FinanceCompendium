//
//  EditJobView.swift
//  CareerKit
//
//  View for editing existing job applications
//

import SwiftUI
import SwiftData

struct EditJobView: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var modelContext
    
    @EnvironmentObject var jobStore: JobStore
    @EnvironmentObject var docStore: DocumentStore
    
    @Binding var isPresented: Bool
    
    @State private var viewModel: JobViewModel
    @State private var importedDocuments: [SwiftDataJobDocument] = []
    @State private var showDiscardAlert = false
    @State private var isSaving = false
    @State private var showError = false
    @State private var errorMessage = ""

    let job: SwiftDataJobApplication
    
    init(job: SwiftDataJobApplication, isPresented: Binding<Bool>) {
        self.job = job
        self._isPresented = isPresented
        
        // Initialize view model with job data
        self._viewModel = State(initialValue: JobViewModel(from: job))
    }
    
    var body: some View {
        NavigationSplitView {
            JobFormSection(
                viewModel: viewModel,
                importedDocuments: $importedDocuments,
                onSave: saveJob,
                onCancel: handleCancel,
                saveButtonTitle: "Save Changes",
                locations: jobStore.uniqueLocations,
                availableSkills: jobStore.uniqueSkills,
                jobStore: jobStore
            )
        } detail: {
            // Empty detail pane for edit sheet
            EmptyView()
        }
        .navigationTitle("Edit Job Application")
        .navigationSubtitle(subtitleText)
        .frame(minWidth: 820, idealWidth: 920, minHeight: 640, idealHeight: 760)
        .alert("Discard Changes?", isPresented: $showDiscardAlert) {
            Button("Discard", role: .destructive) {
                dismiss()
            }
            Button("Keep Editing", role: .cancel) {}
        } message: {
            Text("You have unsaved changes that will be lost.")
        }
        .alert("Unable to Save", isPresented: $showError) {
            Button("OK", role: .cancel) { }
        } message: {
            Text(errorMessage)
        }
        .interactiveDismissDisabled(viewModel.hasChanges)
        .onAppear {
            loadJobDocuments()
        }
    }

    // MARK: - Computed Properties

    private var subtitleText: String {
        if isSaving {
            return "Saving changes..."
        } else if viewModel.hasChanges {
            return "Unsaved changes"
        } else {
            return "\(viewModel.jobTitle) at \(viewModel.companyName)"
        }
    }
    
    // MARK: - Helper Methods
    
    private func loadJobDocuments() {
        // Load existing documents for this job
        importedDocuments = job.documents
    }
    
    private func handleCancel() {
        if viewModel.hasChanges {
            showDiscardAlert = true
        } else {
            dismiss()
        }
    }
    
    private func saveJob() {
        guard viewModel.isInputValid else { return }

        isSaving = true

        // Update job with view model data, including salary conversion metadata.
        viewModel.applyChanges(to: job)

        // Update documents
        job.documents = importedDocuments

        do {
            try modelContext.save()

            // Close the sheet
            isPresented = false
            dismiss()
        } catch {
            errorMessage = "Failed to save changes: \(error.localizedDescription)"
            showError = true
            isSaving = false
        }
    }
}

// MARK: - Preview
#Preview {
    EditJobView(
        job: SwiftDataJobApplication(
            companyName: "Apple Inc.",
            jobTitle: "Software Engineer",
            location: "Cupertino, CA"
        ),
        isPresented: .constant(true)
    )
    .environmentObject(JobStore())
    .environmentObject(DocumentStore())
    .modelContainer(for: [SwiftDataJobApplication.self, SwiftDataJobDocument.self], inMemory: true)
}
