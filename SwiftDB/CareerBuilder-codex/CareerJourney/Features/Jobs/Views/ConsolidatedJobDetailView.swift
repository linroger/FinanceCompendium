//
//  ConsolidatedJobDetailView.swift
//  CareerKit
//
//  Consolidated job detail view with enhanced features
//

import SwiftUI
import SwiftData
import MapKit
import Charts
import PDFKit
import QuickLook
import Combine
import WebKit
import UniformTypeIdentifiers
import OSLog

struct ConsolidatedJobDetailView: View {
    @EnvironmentObject var jobStore: JobStore
    @EnvironmentObject var documentStore: DocumentStore
    @EnvironmentObject private var importExportHelper: ImportExportHelper
    @Environment(\.modelContext) private var modelContext
    @EnvironmentObject private var settingsManager: SettingsManager
    
    let job: SwiftDataJobApplication?
    
    @State private var selectedTab = 0
    @State private var showingEditSheet = false
    @State private var showingDeleteConfirmation = false
    @State private var showingDocumentPicker = false
    @State private var isShowingFullMap = false
    @State private var isEditingDescription = false
    @State private var editedDescription = ""
    @State private var quickLookURL: URL? = nil
    
    // Layout settings
    @AppStorage("showSkillsInDetail") private var showSkillsInDetail = true
    @AppStorage("showSalaryInDetail") private var showSalaryInDetail = true
    @AppStorage("showCoverLetterInDetail") private var showCoverLetterInDetail = true
    @AppStorage("useTabLayout") private var useTabLayout = false
    
    var body: some View {
        if let job = job {
            ZStack {
                if useTabLayout {
                    tabbedLayoutView(job: job)
                        .transition(.asymmetric(
                            insertion: .move(edge: .trailing).combined(with: .opacity),
                            removal: .move(edge: .leading).combined(with: .opacity)
                        ))
                } else {
                    unifiedLayoutView(job: job)
                        .transition(.asymmetric(
                            insertion: .move(edge: .leading).combined(with: .opacity),
                            removal: .move(edge: .trailing).combined(with: .opacity)
                        ))
                }
            }
            .animation(.spring(response: 0.4, dampingFraction: 0.8), value: useTabLayout)
            .navigationTitle(job.jobTitle)
            .navigationSubtitle(job.companyName)
            .toolbar {
                toolbarContent(for: job)
            }
            .sheet(isPresented: $showingEditSheet) {
                EditJobView(job: job, isPresented: $showingEditSheet)
                    .environmentObject(jobStore)
                    .environmentObject(documentStore)
            }
            .alert("Delete Job?", isPresented: $showingDeleteConfirmation) {
                Button("Cancel", role: .cancel) { }
                Button("Delete", role: .destructive) {
                    jobStore.deleteJob(job)
                }
            } message: {
                Text("Are you sure you want to delete this job application? This action cannot be undone.")
            }
            .quickLookPreview($quickLookURL)
        } else {
            EmptyDetailView()
        }
    }
    
    // MARK: - Unified Layout View (Default)
    
    private func unifiedLayoutView(job: SwiftDataJobApplication) -> some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                // Top section with job info
                jobInfoSection(job: job)
                    .padding(.horizontal, Theme.Spacing.xLarge)
                    .padding(.vertical, Theme.Spacing.xLarge)
                    .background(
                        Material.ultraThin.opacity(0.5)
                    )
                
                Divider()
                    .background(.separator)
                
                VStack(alignment: .leading, spacing: Theme.Spacing.large) {
                    // Job description section
                    descriptionSection(job: job)
                        .padding(.bottom, Theme.Spacing.medium)
                    
                    // Documents section
                    if !job.documents.isEmpty {
                        documentsSection(job: job)
                            .padding(.bottom, Theme.Spacing.medium)
                    }
                    
                    // Skills section
                    if showSkillsInDetail && !job.desiredSkillNames.isEmpty {
                        skillsSection(job: job)
                            .padding(.bottom, Theme.Spacing.medium)
                    }
                    
                    // Cover letter section
                    if showCoverLetterInDetail && !job.coverLetter.isEmpty {
                        coverLetterSection(job: job)
                            .padding(.bottom, Theme.Spacing.medium)
                    }
                    
                    // Link to job
                    if let linkString = job.linkToJobString, !linkString.isEmpty {
                        linkSection(linkString: linkString)
                            .padding(.bottom, Theme.Spacing.medium)
                    }
                    
                    // Map for location
                    if !job.location.isEmpty {
                        locationSection(job: job)
                            .padding(.bottom, Theme.Spacing.medium)
                    }
                    
                    
                    // Job notes section
                    notesSection(job: job)
                        .padding(.bottom, Theme.Spacing.large)
                    
                    Spacer(minLength: Theme.Spacing.large)
                }
                .padding(.horizontal, Theme.Spacing.xLarge)
                .padding(.vertical, Theme.Spacing.xxxLarge)
            }
        }
        .sheet(isPresented: $isShowingFullMap) {
            FullMapView(location: job.location)
        }
        .sheet(isPresented: $isEditingDescription) {
            EditDescriptionView(job: job, isEditingDescription: $isEditingDescription)
                .environmentObject(jobStore)
        }
    }
    
    // MARK: - Tabbed Layout View
    
    private func tabbedLayoutView(job: SwiftDataJobApplication) -> some View {
        VStack(spacing: 0) {
            // Header section
            jobInfoSection(job: job)
                .padding(.horizontal, Theme.Spacing.xLarge)
                .padding(.vertical, Theme.Spacing.large)
                .background(Material.ultraThin.opacity(0.5))
            
            Divider()
            
            // Tab View
            TabView(selection: $selectedTab) {
                // Overview Tab
                ScrollView {
                    VStack(alignment: .leading, spacing: Theme.Spacing.large) {
                        descriptionSection(job: job)
                        
                        if showCoverLetterInDetail && !job.coverLetter.isEmpty {
                            coverLetterSection(job: job)
                        }
                        
                        if let linkString = job.linkToJobString, !linkString.isEmpty {
                            linkSection(linkString: linkString)
                        }
                    }
                    .padding(Theme.Spacing.large)
                }
                .tag(0)
                .tabItem {
                    Label("Overview", systemImage: "info.circle.fill")
                }
                
                // Documents Tab
                ScrollView {
                    VStack(alignment: .leading, spacing: Theme.Spacing.large) {
                        documentsSection(job: job)
                    }
                    .padding(Theme.Spacing.large)
                }
                .tag(1)
                .tabItem {
                    Label("Documents", systemImage: "folder.fill")
                }
                
                
                // Notes Tab
                ScrollView {
                    notesSection(job: job)
                        .padding(Theme.Spacing.large)
                }
                .tag(3)
                .tabItem {
                    Label("Notes", systemImage: "note.text")
                }
                
                // Location Tab
                if !job.location.isEmpty {
                    ScrollView {
                        locationSection(job: job)
                            .padding(Theme.Spacing.large)
                    }
                    .tag(4)
                    .tabItem {
                        Label("Location", systemImage: "map.fill")
                    }
                }
            }
            .frame(minHeight: 400)
        }
    }
    
    // MARK: - Section Views
    
    private func jobInfoSection(job: SwiftDataJobApplication) -> some View {
        VStack(alignment: .leading, spacing: Theme.Spacing.medium) {
            // Company and title
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 8) {
                    HStack(spacing: 8) {
                        // Company logo placeholder
                        RoundedRectangle(cornerRadius: 8)
                            .fill(LinearGradient(
                                colors: [Theme.Colors.primary.opacity(0.2), Theme.Colors.primary.opacity(0.1)],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            ))
                            .frame(width: 48, height: 48)
                            .overlay(
                                Text(job.companyName.prefix(2).uppercased())
                                    .font(.system(size: 18, weight: .bold, design: .rounded))
                                    .foregroundColor(Theme.Colors.primary)
                            )
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text(job.companyName)
                                .font(Theme.Typography.largeTitle)
                                .fontWeight(.bold)
                                .foregroundStyle(
                                    LinearGradient(
                                        colors: [Theme.Colors.primary, .blue],
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    )
                                )
                            
                            Text(job.jobTitle)
                                .font(Theme.Typography.title2)
                                .foregroundColor(.primary)
                        }
                    }
                }
                
                Spacer()
                
                VStack(alignment: .trailing, spacing: 8) {
                    // Status badge with animation
                    StatusBadge(status: job.status, isSelected: false)
                        .scaleEffect(1.2)
                        .animation(.spring(response: 0.3, dampingFraction: 0.7), value: job.status)
                    
                    if job.isFavorite {
                        Image(systemName: "star.fill")
                            .foregroundColor(Theme.Colors.warning)
                            .font(.title3)
                            .transition(.scale.combined(with: .opacity))
                    }
                }
            }
            
            // Job details grid
            LazyVGrid(columns: [
                GridItem(.flexible()),
                GridItem(.flexible()),
                GridItem(.flexible())
            ], spacing: Theme.Spacing.medium) {
                InfoItem(
                    icon: "calendar",
                    title: "Applied",
                    value: job.dateOfApplication.formatted(date: .abbreviated, time: .omitted)
                )
                
                InfoItem(
                    icon: "location",
                    title: "Location",
                    value: job.location.isEmpty ? "Not specified" : job.location
                )
                
                InfoItem(
                    icon: "briefcase",
                    title: "Type",
                    value: job.jobType.rawValue
                )
                
                if showSalaryInDetail, let salaryDisplay = job.formattedSalaryDisplay {
                    InfoItem(
                        icon: "dollarsign.circle",
                        title: "Salary",
                        value: salaryDisplay
                    )
                }
                
                if let deadline = job.jobDeadline {
                    InfoItem(
                        icon: "clock.badge.exclamationmark",
                        title: "Deadline",
                        value: deadline.formatted(date: .abbreviated, time: .omitted),
                        color: Theme.Colors.error
                    )
                }
                
                if job.isFavorite {
                    InfoItem(
                        icon: "star.fill",
                        title: "Status",
                        value: "Favorite",
                        color: Theme.Colors.warning
                    )
                }
            }
        }
    }
    
    private func descriptionSection(job: SwiftDataJobApplication) -> some View {
        VStack(alignment: .leading, spacing: Theme.Spacing.small) {
            HStack {
                Label("Description", systemImage: "doc.text")
                    .font(Theme.Typography.headline)
                    .foregroundColor(.primary)
                
                Spacer()
                
                Button("Edit") {
                    isEditingDescription = true
                }
                .buttonStyle(.bordered)
                .controlSize(.small)
            }
            
            if job.jobDescription.isEmpty {
                Text("No description provided")
                    .foregroundColor(.secondary)
                    .font(Theme.Typography.body)
                    .padding(.vertical, Theme.Spacing.medium)
            } else {
                EnhancedMarkdownView(markdown: job.jobDescription)
                    .padding(.vertical, Theme.Spacing.small)
            }
        }
        .padding()
        .background(Color.secondary.opacity(0.05))
        .cornerRadius(Theme.CornerRadius.medium)
    }
    
    private func documentsSection(job: SwiftDataJobApplication) -> some View {
        VStack(alignment: .leading, spacing: Theme.Spacing.small) {
            HStack {
                Label("Documents (\(job.documents.count))", systemImage: "folder")
                    .font(Theme.Typography.headline)
                    .foregroundColor(.primary)
                
                Spacer()
                
                Button("Add Document") {
                    showingDocumentPicker = true
                }
                .buttonStyle(.bordered)
                .controlSize(.small)
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: Theme.Spacing.medium) {
                    ForEach(job.documents, id: \.id) { document in
                        DocumentCard(document: document) {
                            openQuickLook(document)
                        }
                        .contextMenu {
                            Button("Quick Look") {
                                openQuickLook(document)
                            }
                            
                            Divider()
                            
                            Button("Delete", role: .destructive) {
                                documentStore.deleteDocument(document.id)
                            }
                        }
                    }
                }
                .padding(.vertical, 4)
            }
        }
        .padding()
        .background(Color.secondary.opacity(0.05))
        .cornerRadius(Theme.CornerRadius.medium)
        .onChange(of: showingDocumentPicker) { oldValue, newValue in
            if newValue {
                importExportHelper.importDocuments { urls in
                    Task { @MainActor in
                        await documentStore.uploadDocuments(from: urls)
                        showingDocumentPicker = false
                    }
                }
            }
        }
    }
    
    private func skillsSection(job: SwiftDataJobApplication) -> some View {
        VStack(alignment: .leading, spacing: Theme.Spacing.small) {
            Label("Required Skills", systemImage: "star.square.on.square")
                .font(Theme.Typography.headline)
                .foregroundColor(.primary)
            
            LazyVGrid(columns: [
                GridItem(.adaptive(minimum: 80), spacing: 8)
            ], spacing: 8) {
                ForEach(job.desiredSkillNames, id: \.self) { skill in
                    Text(skill)
                        .font(.caption)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .background(Theme.Colors.primary.opacity(0.1))
                        .foregroundColor(Theme.Colors.primary)
                        .cornerRadius(Theme.CornerRadius.small)
                }
            }
            .padding(.top, 4)
        }
        .padding()
        .background(Color.secondary.opacity(0.05))
        .cornerRadius(Theme.CornerRadius.medium)
    }
    
    private func coverLetterSection(job: SwiftDataJobApplication) -> some View {
        VStack(alignment: .leading, spacing: Theme.Spacing.small) {
            Label("Cover Letter", systemImage: "envelope")
                .font(Theme.Typography.headline)
                .foregroundColor(.primary)
            
            if job.coverLetter.isEmpty {
                Text("No cover letter drafted")
                    .foregroundColor(.secondary)
                    .font(Theme.Typography.body)
                    .padding(.vertical, Theme.Spacing.small)
            } else {
                EnhancedMarkdownView(markdown: job.coverLetter)
                    .padding(.vertical, Theme.Spacing.small)
            }
        }
        .padding()
        .background(Color.secondary.opacity(0.05))
        .cornerRadius(Theme.CornerRadius.medium)
    }
    
    private func linkSection(linkString: String) -> some View {
        VStack(alignment: .leading, spacing: Theme.Spacing.small) {
            Label("Job Posting", systemImage: "link")
                .font(Theme.Typography.headline)
                .foregroundColor(.primary)
            
            if let url = URL(string: linkString) {
                Link(destination: url) {
                    HStack {
                        Text("View Original Posting")
                        Image(systemName: "arrow.up.right")
                    }
                    .foregroundColor(.accentColor)
                }
                .buttonStyle(.plain)
                .padding(.vertical, 4)
            }
        }
        .padding()
        .background(Color.secondary.opacity(0.05))
        .cornerRadius(Theme.CornerRadius.medium)
    }
    
    private func locationSection(job: SwiftDataJobApplication) -> some View {
        VStack(alignment: .leading, spacing: Theme.Spacing.small) {
            HStack {
                Label("Location", systemImage: "map")
                    .font(Theme.Typography.headline)
                    .foregroundColor(.primary)
                
                Spacer()
                
                Button("Expand Map") {
                    isShowingFullMap = true
                }
                .buttonStyle(.bordered)
                .controlSize(.small)
            }
            
            MiniMapView(location: job.location)
                .frame(height: 200)
                .cornerRadius(Theme.CornerRadius.medium)
                .onTapGesture {
                    isShowingFullMap = true
                }
        }
        .padding()
        .background(Color.secondary.opacity(0.05))
        .cornerRadius(Theme.CornerRadius.medium)
    }
    
    
    private func notesSection(job: SwiftDataJobApplication) -> some View {
        VStack(alignment: .leading, spacing: Theme.Spacing.small) {
            HStack {
                Label("Notes & Analysis", systemImage: "note.text")
                    .font(Theme.Typography.headline)
                    .foregroundColor(.primary)
                
                Spacer()
                
                // Check if notes were AI-generated
                if job.notes.contains("📊") || job.notes.contains("💼") || job.notes.contains("🎯") || job.notes.contains("### Opportunity Snapshot") {
                    Label("AI Analysis", systemImage: "sparkle")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
            
            if job.notes.isEmpty {
                Text("No notes added")
                    .foregroundColor(.secondary)
                    .font(Theme.Typography.body)
                    .padding(.vertical, Theme.Spacing.medium)
            } else {
                ScrollView {
                    EnhancedMarkdownView(markdown: job.notes)
                        .padding(.vertical, Theme.Spacing.small)
                }
                .frame(maxHeight: 320)
            }
        }
        .padding()
        .background(Color.secondary.opacity(0.05))
        .cornerRadius(Theme.CornerRadius.medium)
    }
    
    // MARK: - Toolbar
    
    @ToolbarContentBuilder
    private func toolbarContent(for job: SwiftDataJobApplication) -> some ToolbarContent {
        ToolbarItemGroup {
            Button {
                showingEditSheet = true
            } label: {
                Label("Edit", systemImage: "pencil")
            }
            .keyboardShortcut("e", modifiers: .command)
            
            Button {
                jobStore.toggleFavorite(for: job.id)
            } label: {
                Label(
                    job.isFavorite ? "Remove from Favorites" : "Add to Favorites",
                    systemImage: job.isFavorite ? "star.fill" : "star"
                )
            }
            
            Button {
                shareJob(job)
            } label: {
                Label("Share", systemImage: "square.and.arrow.up")
            }
            
            Divider()
            
            Button(role: .destructive) {
                showingDeleteConfirmation = true
            } label: {
                Label("Delete", systemImage: "trash")
            }
        }
    }
    
    // MARK: - Helper Functions
    
    private func openQuickLook(_ document: SwiftDataJobDocument) {
        if let url = document.fileURL {
            quickLookURL = url
        } else {
            // Create temporary file for preview
            let tempURL = FileManager.default.temporaryDirectory
                .appendingPathComponent(document.fileName)
            do {
                try document.fileData?.write(to: tempURL)
                quickLookURL = tempURL
            } catch {
                Logger.data.error("Failed to create temporary file: \(error)")
            }
        }
    }

    private func shareJob(_ job: SwiftDataJobApplication) {
        let content = """
        Job Application: \(job.jobTitle)
        Company: \(job.companyName)
        Location: \(job.location)
        Applied: \(job.dateOfApplication.formatted())
        Status: \(job.status.rawValue)
        """
        
        let sharingPicker = NSSharingServicePicker(items: [content])
        sharingPicker.show(relativeTo: .zero, of: NSApp.keyWindow!.contentView!, preferredEdge: .minY)
    }
}

// MARK: - Supporting Views

struct EmptyDetailView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "briefcase")
                .font(.system(size: 64))
                .foregroundColor(.secondary.opacity(0.5))
            
            Text("Select a Job Application")
                .font(.title2)
                .foregroundColor(.primary)
            
            Text("Choose a job from the sidebar to view details")
                .font(.body)
                .foregroundColor(.secondary)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.clear)
    }
}

struct InfoItem: View {
    let icon: String
    let title: String
    let value: String
    var color: Color = .primary
    
    var body: some View {
        HStack(spacing: 12) {
            // Icon with background
            Image(systemName: icon)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(color.opacity(0.8))
                .frame(width: 32, height: 32)
                .background(color.opacity(0.1))
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 2) {
                Text(title)
                    .font(.caption)
                    .foregroundColor(.secondary)
                
                Text(value)
                    .font(.body)
                    .fontWeight(.medium)
                    .foregroundColor(color)
            }
            
            Spacer()
        }
        .padding(.vertical, 4)
    }
}

struct DocumentCard: View {
    let document: SwiftDataJobDocument
    let action: () -> Void
    @State private var isHovered = false
    
    var body: some View {
        Button(action: action) {
            VStack(spacing: 12) {
                // Document icon with type-specific styling
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(documentColor.opacity(0.1))
                        .frame(width: 56, height: 56)
                    
                    Image(systemName: documentIcon)
                        .font(.system(size: 28))
                        .foregroundColor(documentColor)
                }
                .scaleEffect(isHovered ? 1.1 : 1.0)
                .animation(.spring(response: 0.3, dampingFraction: 0.7), value: isHovered)
                
                VStack(spacing: 4) {
                    Text(document.fileName)
                        .font(.caption)
                        .fontWeight(.medium)
                        .lineLimit(2)
                        .multilineTextAlignment(.center)
                        .frame(width: 100)
                    
                    Text(formatFileSize(document.fileSize))
                        .font(.caption2)
                        .foregroundColor(.secondary)
                }
            }
            .padding(.vertical, 16)
            .padding(.horizontal, 12)
            .background(
                RoundedRectangle(cornerRadius: Theme.CornerRadius.medium)
                    .fill(Color.secondary.opacity(isHovered ? 0.15 : 0.08))
                    .shadow(color: .black.opacity(isHovered ? 0.1 : 0), radius: 8, x: 0, y: 4)
            )
            .overlay(
                RoundedRectangle(cornerRadius: Theme.CornerRadius.medium)
                    .stroke(documentColor.opacity(isHovered ? 0.3 : 0), lineWidth: 1)
            )
        }
        .buttonStyle(.plain)
        .onHover { hovering in
            withAnimation(.easeInOut(duration: 0.2)) {
                isHovered = hovering
            }
        }
    }
    
    private var documentIcon: String {
        let ext = document.fileName.split(separator: ".").last?.lowercased() ?? ""
        switch ext {
        case "pdf": return "doc.fill"
        case "doc", "docx": return "doc.text.fill"
        case "png", "jpg", "jpeg": return "photo.fill"
        default: return "doc.fill"
        }
    }
    
    private var documentColor: Color {
        let ext = document.fileName.split(separator: ".").last?.lowercased() ?? ""
        switch ext {
        case "pdf": return .red
        case "doc", "docx": return .blue
        case "png", "jpg", "jpeg": return .green
        default: return .gray
        }
    }
    
    private func formatFileSize(_ bytes: Int) -> String {
        let formatter = ByteCountFormatter()
        formatter.countStyle = .file
        return formatter.string(fromByteCount: Int64(bytes))
    }
}


struct MiniMapView: View {
    let location: String
    var interactionModes: MapInteractionModes = []
    var showsControls: Bool = false

    @State private var markers: [LocationMarker] = []
    @State private var isResolving = false
    @State private var lookupTask: Task<Void, Never>?

    var body: some View {
        LocationMarkersMap(markers: markers, interactionModes: interactionModes, showsMapControls: showsControls)
            .overlay(alignment: .topTrailing) {
                if isResolving {
                    ProgressView()
                        .controlSize(.small)
                        .padding(8)
                        .background(.thinMaterial)
                        .cornerRadius(8)
                        .padding(8)
                }
            }
            .onAppear(perform: resolveMarkers)
            .onChange(of: location) { _, _ in resolveMarkers() }
            .onDisappear { lookupTask?.cancel() }
    }

    private func resolveMarkers() {
        lookupTask?.cancel()
        let trimmed = location.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmed.isEmpty else {
            Task { await MainActor.run { markers = [] } }
            return
        }

        isResolving = true
        lookupTask = Task {
            let entries = LocationParser.parseLocations(from: trimmed)
            guard !entries.isEmpty else {
                await MainActor.run {
                    markers = []
                    isResolving = false
                }
                return
            }

            var resolvedByName: [String: LocationMarker] = [:]
            for entry in entries {
                if Task.isCancelled { return }
                if let resolved = await LocationGeocoder.shared.resolveLocation(for: entry) {
                    resolvedByName[resolved.name] = LocationMarker(name: resolved.name, coordinate: resolved.coordinate)
                }
            }

            await MainActor.run {
                withAnimation(.easeInOut(duration: 0.25)) {
                    markers = Array(resolvedByName.values)
                }
                isResolving = false
            }
        }
    }
}

struct FullMapView: View {
    let location: String
    @Environment(\.dismiss) private var dismiss

    private var resolvedLocationNames: [String] {
        LocationParser.parseLocations(from: location)
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Job Locations")
                        .font(.title2)
                        .fontWeight(.semibold)
                    if resolvedLocationNames.count > 1 {
                        Text("Showing \(resolvedLocationNames.count) places")
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }
                }

                Spacer()

                Button("Close") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .keyboardShortcut(.escape)
            }
            .padding(.top)

            MiniMapView(location: location, interactionModes: .all, showsControls: true)
                .frame(height: 420)
                .clipShape(RoundedRectangle(cornerRadius: 18, style: .continuous))

            if !resolvedLocationNames.isEmpty {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Resolved Places")
                        .font(.headline)
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 150), spacing: 8)], alignment: .leading, spacing: 8) {
                        ForEach(resolvedLocationNames, id: \.self) { name in
                            Text(name)
                                .font(.caption)
                                .padding(.vertical, 6)
                                .padding(.horizontal, 10)
                                .background(
                                    Capsule(style: .continuous)
                                        .fill(Color.accentColor.opacity(0.12))
                                )
                                .overlay(
                                    Capsule(style: .continuous)
                                        .stroke(Color.accentColor.opacity(0.3), lineWidth: 1)
                                )
                        }
                    }
                }
            }
        }
        .padding(24)
        .frame(minWidth: 640, minHeight: 500)
    }
}

struct EditDescriptionView: View {
    let job: SwiftDataJobApplication
    @Binding var isEditingDescription: Bool
    @EnvironmentObject var jobStore: JobStore
    @State private var tempDescription: String = ""
    
    var body: some View {
        VStack {
            HStack {
                Text("Edit Job Description")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button("Cancel") {
                    isEditingDescription = false
                }
                .buttonStyle(.bordered)
                .keyboardShortcut(.escape)
                
                Button("Save") {
                    jobStore.updateJobDescription(job, description: tempDescription)
                    isEditingDescription = false
                }
                .buttonStyle(.borderedProminent)
                .keyboardShortcut(.return, modifiers: .command)
            }
            .padding()
            
            TextEditor(text: $tempDescription)
                .font(.body)
                .padding(4)
                .background(Color.secondary.opacity(0.05))
                .cornerRadius(Theme.CornerRadius.medium)
                .padding(.horizontal)
                .padding(.bottom)
        }
        .frame(minWidth: 600, minHeight: 400)
        .onAppear {
            tempDescription = job.jobDescription
        }
    }
}
