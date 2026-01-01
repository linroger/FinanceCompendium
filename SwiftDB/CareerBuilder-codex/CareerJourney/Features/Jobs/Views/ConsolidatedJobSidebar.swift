//
//  ConsolidatedJobSidebar.swift
//  CareerKit
//
//  Native macOS job sidebar with proper styling and enhanced features
//

import SwiftUI
import SwiftData
import AppKit

struct ConsolidatedJobSidebar: View {
    @EnvironmentObject var jobStore: JobStore
    @EnvironmentObject var documentStore: DocumentStore
    @EnvironmentObject private var keyboardManager: KeyboardShortcutManager
    @Environment(CareerDataModel.self) private var modelData
    @Environment(\.windowSizeClass) var sizeClass

    @State private var searchText = ""
    @State private var selectedStatus: JobStatus? = nil
    @State private var showFavoriteOnly = false
    @FocusState private var isSearchFocused: Bool
    @FocusState private var isListFocused: Bool
    
    // High-performance filtering with caching
    @StateObject private var filterManager = JobFilterManager()
    
    var body: some View {
        VStack(spacing: 0) {
            // Header
            sidebarHeader
            
            Divider()
            
            // Search field
            searchField
            
            // Quick filters
            quickFilters
            
            Divider()
            
            // Job list or empty state
            jobListSection
        }
        .background(Color.clear)
        .navigationTitle("Applications")
        .accessibilityElement(children: .contain)
        .accessibilityLabel("Job Applications Sidebar")
    }
    
    // MARK: - Header
    
    private var sidebarHeader: some View {
        HStack {
            Text("Applications")
                .font(.system(size: 13, weight: .medium))
                .foregroundColor(.secondary)
            
            Spacer()
            
            // Sort menu
            Menu {
                ForEach(JobSortOption.allCases, id: \.self) { option in
                    Button(action: {
                        withAnimation(.spring(response: 0.3, dampingFraction: 0.8)) {
                            modelData.sortOption = option
                        }
                    }) {
                        HStack {
                            Text(option.title)
                            if modelData.sortOption == option {
                                Image(systemName: "checkmark")
                            }
                        }
                    }
                }
            } label: {
                Image(systemName: "arrow.up.arrow.down")
                    .font(.system(size: 11))
                    .foregroundColor(.secondary)
            }
            .buttonStyle(.plain)
            .help("Sort jobs")
            
            // Add button
            Button(action: {
                jobStore.showAddJobWindow()
            }) {
                Image(systemName: "plus")
                    .font(.system(size: 11))
                    .foregroundColor(.secondary)
            }
            .buttonStyle(.plain)
            .help("Add new job application")
            .keyboardShortcut("n", modifiers: .command)
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 8)
    }
    
    // MARK: - Search Field
    
    private var searchField: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.secondary)
                .font(.system(size: 14))
            
            TextField("Search jobs...", text: $searchText)
                .textFieldStyle(.plain)
                .accessibilityLabel("Search Jobs")
                .accessibilityHint("Type to filter job applications by company, title, or location")
                .focused($isSearchFocused)
                .onSubmit {
                    isListFocused = true
                }
            
            // Clear button
            if !searchText.isEmpty {
                Button(action: { 
                    withAnimation(.easeOut(duration: 0.15)) {
                        searchText = ""
                    }
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.secondary.opacity(0.7))
                        .font(.system(size: 14))
                }
                .buttonStyle(.plain)
                .transition(.asymmetric(
                    insertion: .scale.combined(with: .opacity),
                    removal: .scale.combined(with: .opacity)
                ))
                .help("Clear search")
            }
        }
        .padding(8)
        .background(Material.ultraThin, in: RoundedRectangle(cornerRadius: 6))
        .overlay(
            RoundedRectangle(cornerRadius: 6)
                .stroke(isSearchFocused ? Color.accentColor.opacity(0.3) : Color.gray.opacity(0.3), lineWidth: 0.5)
        )
        .animation(.easeInOut(duration: 0.2), value: isSearchFocused)
        .padding(.horizontal, 12)
        .padding(.vertical, 8)
        .accessibilityElement(children: .contain)
        .accessibilityLabel("Search Bar")
    }
    
    // MARK: - Quick Filters
    
    private var quickFilters: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
                // Favorites toggle
                Button(action: {
                    withAnimation(.spring(response: 0.3, dampingFraction: 0.8)) {
                        showFavoriteOnly.toggle()
                    }
                }) {
                    HStack(spacing: 4) {
                        Image(systemName: showFavoriteOnly ? "star.fill" : "star")
                            .font(.system(size: 11))
                            .foregroundColor(showFavoriteOnly ? Theme.Colors.warning : .primary)
                        Text("Favorites")
                            .font(.system(size: 11, weight: .medium))
                    }
                    .padding(.horizontal, 10)
                    .padding(.vertical, 4)
                    .background(
                        Capsule()
                            .fill(showFavoriteOnly ? Theme.Colors.warning.opacity(0.15) : Color.secondary.opacity(0.1))
                            .overlay(
                                Capsule()
                                    .stroke(showFavoriteOnly ? Theme.Colors.warning.opacity(0.3) : Color.secondary.opacity(0.3), lineWidth: 0.5)
                            )
                    )
                    .foregroundColor(showFavoriteOnly ? Theme.Colors.warning : .primary)
                }
                .buttonStyle(.plain)
                .accessibilityLabel(showFavoriteOnly ? "Showing favorites only" : "Show all jobs")
                .accessibilityHint("Toggle to filter favorite jobs")
                
                Divider()
                    .frame(height: 20)
                    .padding(.horizontal, 4)
                
                // Status filters
                FilterChip(
                    title: "All",
                    isSelected: selectedStatus == nil && !showFavoriteOnly,
                    count: jobStore.jobApplications.count
                ) {
                    withAnimation(.spring(response: 0.3, dampingFraction: 0.8)) {
                        selectedStatus = nil
                    }
                }
                .accessibilityLabel("Show all jobs")
                .accessibilityHint("Filter to show all \(jobStore.jobApplications.count) job applications")
                
                ForEach(JobStatus.allCases, id: \.self) { status in
                    FilterChip(
                        title: status.rawValue,
                        isSelected: selectedStatus == status,
                        count: jobStore.jobApplications.filter { job in
                            job.status == status && (!showFavoriteOnly || job.isFavorite)
                        }.count
                    ) {
                        withAnimation(.spring(response: 0.3, dampingFraction: 0.8)) {
                            selectedStatus = status
                        }
                    }
                    .accessibilityLabel("Filter by \(status.rawValue)")
                    .accessibilityHint("Show only jobs with \(status.rawValue) status")
                }
            }
            .padding(.horizontal, 12)
            .padding(.bottom, 8)
        }
    }
    
    // MARK: - Job List Section
    
    @ViewBuilder
    private var jobListSection: some View {
        if jobStore.jobApplications.isEmpty {
            // Empty state
            EmptyJobsView()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.clear)
        } else if filteredJobs.isEmpty {
            // No search results
            NoSearchResultsView(
                searchText: searchText,
                searchTextBinding: $searchText,
                selectedStatus: $selectedStatus,
                showFavoriteOnly: $showFavoriteOnly
            )
            .environmentObject(jobStore)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.clear)
        } else {
            // Job list
            List(selection: $jobStore.selectedJobIDs) {
                ForEach(filteredJobs) { job in
                    JobRowView(job: job)
                        .tag(job.id)
                        .draggable(job.id.uuidString) {
                            dragPreview(for: job)
                        }
                        .contextMenu {
                            jobContextMenu(for: job)
                        }
                        .accessibilityLabel("\(job.companyName) - \(job.jobTitle)")
                        .accessibilityHint("Double tap to select, or use context menu for more options")
                        .accessibilityAddTraits(.isButton)
                }
                .onDelete(perform: deleteJobs)
            }
            .listStyle(.sidebar)
            .focused($isListFocused)
            .onKeyPress(.upArrow) {
                navigateUp()
                return .handled
            }
            .onKeyPress(.downArrow) {
                navigateDown()
                return .handled
            }
            .accessibilityElement(children: .contain)
            .accessibilityLabel("Job applications list")
            .accessibilityHint("Use arrow keys to navigate, space to select")
        }
    }
    
    // MARK: - Helper Views
    
    private func dragPreview(for job: SwiftDataJobApplication) -> some View {
        RoundedRectangle(cornerRadius: 6)
            .fill(Color.accentColor.opacity(0.2))
            .frame(width: 250, height: 60)
            .overlay(
                VStack(alignment: .leading, spacing: 2) {
                    Text(job.companyName)
                        .font(.system(size: 12, weight: .medium))
                    Text(job.jobTitle)
                        .font(.system(size: 11))
                        .foregroundColor(.secondary)
                }
                .padding(8)
            )
            .shadow(radius: 4)
    }
    
    @ViewBuilder
    private func jobContextMenu(for job: SwiftDataJobApplication) -> some View {
        Button("Add New Application") {
            jobStore.showAddJobWindow()
        }
        
        Button("Duplicate Application") {
            jobStore.duplicateJob(job)
        }
        
        Button("Edit Application Info") {
            jobStore.selectedJobIDs = [job.id]
            jobStore.showEditJobWindow()
        }
        
        Menu("Update Status") {
            ForEach(JobStatus.allCases, id: \.self) { status in
                Button(status.rawValue) {
                    jobStore.updateJobStatus([job.id], to: status)
                }
            }
        }
        
        Divider()
        
        Button(job.isFavorite ? "Remove from Favorites" : "Add to Favorites") {
            jobStore.toggleFavorite(for: job.id)
        }
        
        Divider()
        
        Button("Delete Application", role: .destructive) {
            jobStore.deleteJob(job)
        }
    }
    
    // MARK: - Computed Properties
    
    private var filteredJobs: [SwiftDataJobApplication] {
        // Use high-performance filter manager with intelligent caching
        filterManager.filteredJobs(
            from: jobStore.jobApplications,
            searchText: searchText,
            selectedStatus: selectedStatus,
            showFavoriteOnly: showFavoriteOnly,
            sortOption: modelData.sortOption
        )
    }
    
    // MARK: - Actions
    
    private func deleteJobs(at offsets: IndexSet) {
        for index in offsets {
            let job = filteredJobs[index]
            jobStore.deleteJob(job)
        }
        
        // Invalidate filter cache after modifications
        filterManager.invalidateCache()
    }
    
    private func navigateUp() {
        guard let currentSelection = jobStore.selectedJobIDs.first,
              let currentIndex = filteredJobs.firstIndex(where: { $0.id == currentSelection }),
              currentIndex > 0 else { return }
        
        let newIndex = currentIndex - 1
        jobStore.selectedJobIDs = [filteredJobs[newIndex].id]
    }
    
    private func navigateDown() {
        guard let currentSelection = jobStore.selectedJobIDs.first,
              let currentIndex = filteredJobs.firstIndex(where: { $0.id == currentSelection }),
              currentIndex < filteredJobs.count - 1 else { return }
        
        let newIndex = currentIndex + 1
        jobStore.selectedJobIDs = [filteredJobs[newIndex].id]
    }
}

// MARK: - Supporting Views

struct FilterChip: View {
    let title: String
    let isSelected: Bool
    let count: Int
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack(spacing: 4) {
                Text(title)
                    .font(.system(size: 11, weight: .medium))
                Text("\(count)")
                    .font(.system(size: 10))
                    .foregroundColor(.secondary)
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 4)
            .background(
                Capsule()
                    .fill(isSelected ? Color.accentColor.opacity(0.15) : Color.secondary.opacity(0.1))
                    .overlay(
                        Capsule()
                            .stroke(isSelected ? Color.accentColor.opacity(0.3) : Color.secondary.opacity(0.3), lineWidth: 0.5)
                    )
            )
            .foregroundColor(isSelected ? .accentColor : .primary)
        }
        .buttonStyle(.plain)
    }
}

struct JobRowView: View {
    @EnvironmentObject var jobStore: JobStore
    let job: SwiftDataJobApplication
    
    var isSelected: Bool {
        jobStore.selectedJobIDs.contains(job.id)
    }
    
    var body: some View {
        HStack(spacing: 8) {
            // Favorite indicator
            if job.isFavorite {
                Image(systemName: "star.fill")
                    .font(.system(size: 10))
                    .foregroundColor(Theme.Colors.warning)
                    .help("Favorite")
            }
            
            // Company info
            VStack(alignment: .leading, spacing: 2) {
                Text(job.companyName)
                    .font(.system(size: 13, weight: .medium))
                    .foregroundColor(isSelected ? .white : .primary)
                    .lineLimit(1)
                
                Text(job.jobTitle)
                    .font(.system(size: 11))
                    .foregroundColor(isSelected ? .white.opacity(0.8) : .secondary)
                    .lineLimit(1)
                
                // Location and date
                HStack(spacing: 4) {
                    if !job.location.isEmpty {
                        Label(job.location, systemImage: "location")
                            .font(.system(size: 10))
                            .foregroundColor(isSelected ? .white.opacity(0.7) : .secondary)
                    }
                    
                    Spacer()
                    
                    Text(job.dateOfApplication.formatted(date: .abbreviated, time: .omitted))
                        .font(.system(size: 10))
                        .foregroundColor(isSelected ? .white.opacity(0.7) : .secondary)
                }
            }
            
            Spacer()
            
            // Status badge
            StatusBadge(status: job.status, isSelected: isSelected)
        }
        .padding(.vertical, 6)
        .padding(.horizontal, 8)
        .background(
            RoundedRectangle(cornerRadius: 4)
                .fill(isSelected ? Color.accentColor : Color.clear)
        )
        .contentShape(Rectangle())
    }
}

struct StatusBadge: View {
    let status: JobStatus
    let isSelected: Bool
    
    var body: some View {
        Text(status.rawValue)
            .font(.system(size: 10, weight: .medium))
            .padding(.horizontal, 8)
            .padding(.vertical, 3)
            .background(
                Capsule()
                    .fill(isSelected ? Color.white.opacity(0.2) : status.displayColor.opacity(0.15))
                    .overlay(
                        Capsule()
                            .stroke(isSelected ? Color.white.opacity(0.3) : status.displayColor.opacity(0.3), lineWidth: 0.5)
                    )
            )
            .foregroundColor(isSelected ? .white : status.displayColor)
    }
}

struct EmptyJobsView: View {
    @EnvironmentObject var jobStore: JobStore
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "briefcase")
                .font(.system(size: 48))
                .foregroundColor(.secondary.opacity(0.5))
            
            Text("No Job Applications")
                .font(.system(size: 18, weight: .medium))
                .foregroundColor(.primary)
            
            Text("Get started by adding your first job application")
                .font(.system(size: 13))
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
            
            Button("Add Job Application") {
                jobStore.showAddJobWindow()
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.regular)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct NoSearchResultsView: View {
    let searchText: String
    @Binding var searchTextBinding: String
    @Binding var selectedStatus: JobStatus?
    @Binding var showFavoriteOnly: Bool
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "magnifyingglass")
                .font(.system(size: 48))
                .foregroundColor(.secondary.opacity(0.5))
            
            Text("No Results Found")
                .font(.system(size: 18, weight: .medium))
                .foregroundColor(.primary)
            
            Text("No jobs match '\(searchText)'")
                .font(.system(size: 13))
                .foregroundColor(.secondary)
            
            Button("Clear Filters") {
                withAnimation {
                    searchTextBinding = ""
                    selectedStatus = nil
                    showFavoriteOnly = false
                }
            }
            .buttonStyle(.bordered)
            .controlSize(.regular)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

