//
//  JobApplicationsView.swift
//  CareerJourney
//
//  Main job applications view following Apple Sample Code patterns
//

import SwiftUI
import SwiftData

/// Main job applications view showing the consolidated sidebar and detail
struct JobApplicationsView: View {
    @Environment(CareerDataModel.self) private var model
    @EnvironmentObject var jobStore: JobStore
    @EnvironmentObject var documentStore: DocumentStore
    @EnvironmentObject var noteStore: NoteStore

    var body: some View {
        NavigationSplitView {
            ConsolidatedJobSidebar()
        } detail: {
            if let selectedJob = model.selectedJob {
                ConsolidatedJobDetailView(job: selectedJob)
            } else {
                ContentUnavailableView(
                    "Select a Job",
                    systemImage: "briefcase",
                    description: Text("Choose a job application from the sidebar to view details")
                )
            }
        }
        .navigationSplitViewStyle(.balanced)
    }
}

#Preview {
    JobApplicationsView()
        .environment(CareerDataModel.preview)
        .environmentObject(previewJobStore)
        .environmentObject(previewDocumentStore)
        .environmentObject(previewNoteStore)
}
