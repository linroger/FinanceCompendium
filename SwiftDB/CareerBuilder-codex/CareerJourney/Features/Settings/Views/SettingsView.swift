//
//  SettingsView.swift
//  CareerKit
//
//  App settings and preferences view
//

import SwiftUI
import OSLog
import UniformTypeIdentifiers

// MARK: - Temporary Settings State

struct TempSettingsState {
    // General Settings
    var defaultJobStatus: JobStatus = .applied
    var autoSaveInterval: Int = 30
    var dateFormat: String = "MM/dd/yyyy"
    var showNewJobNotifications: Bool = true
    var remindFollowUps: Bool = true
    var dailySummaryNotifications: Bool = false
    var rememberWindowState: Bool = true
    var closeToSystemTray: Bool = false
    var startMinimized: Bool = false
    
    // Appearance Settings
    var appearanceMode: AppearanceMode = .system
    var accentColor: Color = .blue
    var sidebarWidth: Double = 250
    var fontSize: FontSize = .medium
    var showJobThumbnails: Bool = true
    var showStatusBadges: Bool = true
    var compactListView: Bool = false
    
    // AI Settings
    var enableAIParsing: Bool = true
    var autoParseOnPaste: Bool = false
    var extractSkillsAutomatically: Bool = true
    var detectSalaryRanges: Bool = true
    var identifyRemoteWork: Bool = true
    var parsingConfidenceThreshold: Double = 0.7
    var processDataLocallyOnly: Bool = false
    var clearParsingHistoryOnExit: Bool = true
    var maxConcurrentParsingOperations: Int = 2
    var parsingTimeout: Int = 60
    
    // Privacy Settings
    var shareAnalytics: Bool = false
    var crashReporting: Bool = true
    var trashRetentionDays: Int = 30
    var autoDeleteAfterDays: Int = -1
    var requireAuthentication: Bool = false
    var autoLockAfterInactivity: Bool = false
    var autoLockTimeoutMinutes: Int = 15
    
    // Backup Settings
    var autoBackupToiCloud: Bool = false
    var backupFrequency: BackupFrequency = .weekly
    var backupRetention: Int = 90
    var lastBackupDate: Date? = nil
    var nextScheduledBackup: Date? = nil
    
    init() {}
    
    @MainActor
    init(from settings: SettingsManager) {
        self.defaultJobStatus = settings.defaultJobStatus
        self.autoSaveInterval = settings.autoSaveInterval
        self.dateFormat = settings.dateFormat
        self.showNewJobNotifications = settings.showNewJobNotifications
        self.remindFollowUps = settings.remindFollowUps
        self.dailySummaryNotifications = settings.dailySummaryNotifications
        self.rememberWindowState = settings.rememberWindowState
        self.closeToSystemTray = settings.closeToSystemTray
        self.startMinimized = settings.startMinimized
        
        self.appearanceMode = settings.appearanceMode
        self.accentColor = settings.accentColor
        self.sidebarWidth = settings.sidebarWidth
        self.fontSize = settings.fontSize
        self.showJobThumbnails = settings.showJobThumbnails
        self.showStatusBadges = settings.showStatusBadges
        self.compactListView = settings.compactListView
        
        self.enableAIParsing = settings.enableAIParsing
        self.autoParseOnPaste = settings.autoParseOnPaste
        self.extractSkillsAutomatically = settings.extractSkillsAutomatically
        self.detectSalaryRanges = settings.detectSalaryRanges
        self.identifyRemoteWork = settings.identifyRemoteWork
        self.parsingConfidenceThreshold = settings.parsingConfidenceThreshold
        self.processDataLocallyOnly = settings.processDataLocallyOnly
        self.clearParsingHistoryOnExit = settings.clearParsingHistoryOnExit
        self.maxConcurrentParsingOperations = settings.maxConcurrentParsingOperations
        self.parsingTimeout = settings.parsingTimeout
        
        self.shareAnalytics = settings.shareAnalytics
        self.crashReporting = settings.crashReporting
        self.trashRetentionDays = settings.trashRetentionDays
        self.autoDeleteAfterDays = settings.autoDeleteAfterDays
        self.requireAuthentication = settings.requireAuthentication
        self.autoLockAfterInactivity = settings.autoLockAfterInactivity
        self.autoLockTimeoutMinutes = settings.autoLockTimeoutMinutes
        
        self.autoBackupToiCloud = settings.autoBackupToiCloud
        self.backupFrequency = settings.backupFrequency
        self.backupRetention = settings.backupRetention
    }
    
    @MainActor
    func applyTo(_ settings: SettingsManager) {
        settings.defaultJobStatus = self.defaultJobStatus
        settings.autoSaveInterval = self.autoSaveInterval
        settings.dateFormat = self.dateFormat
        settings.showNewJobNotifications = self.showNewJobNotifications
        settings.remindFollowUps = self.remindFollowUps
        settings.dailySummaryNotifications = self.dailySummaryNotifications
        settings.rememberWindowState = self.rememberWindowState
        settings.closeToSystemTray = self.closeToSystemTray
        settings.startMinimized = self.startMinimized
        
        settings.appearanceMode = self.appearanceMode
        settings.accentColor = self.accentColor
        settings.sidebarWidth = self.sidebarWidth
        settings.fontSize = self.fontSize
        settings.showJobThumbnails = self.showJobThumbnails
        settings.showStatusBadges = self.showStatusBadges
        settings.compactListView = self.compactListView
        
        settings.enableAIParsing = self.enableAIParsing
        settings.autoParseOnPaste = self.autoParseOnPaste
        settings.extractSkillsAutomatically = self.extractSkillsAutomatically
        settings.detectSalaryRanges = self.detectSalaryRanges
        settings.identifyRemoteWork = self.identifyRemoteWork
        settings.parsingConfidenceThreshold = self.parsingConfidenceThreshold
        settings.processDataLocallyOnly = self.processDataLocallyOnly
        settings.clearParsingHistoryOnExit = self.clearParsingHistoryOnExit
        settings.maxConcurrentParsingOperations = self.maxConcurrentParsingOperations
        settings.parsingTimeout = self.parsingTimeout
        
        settings.shareAnalytics = self.shareAnalytics
        settings.crashReporting = self.crashReporting
        settings.trashRetentionDays = self.trashRetentionDays
        settings.autoDeleteAfterDays = self.autoDeleteAfterDays
        settings.requireAuthentication = self.requireAuthentication
        settings.autoLockAfterInactivity = self.autoLockAfterInactivity
        settings.autoLockTimeoutMinutes = self.autoLockTimeoutMinutes
        
        settings.autoBackupToiCloud = self.autoBackupToiCloud
        settings.backupFrequency = self.backupFrequency
        settings.backupRetention = self.backupRetention
    }
}

struct SettingsView: View {
    @EnvironmentObject private var settingsManager: SettingsManager
    @EnvironmentObject var documentStore: DocumentStore
    @EnvironmentObject var noteStore: NoteStore
    @EnvironmentObject var jobStore: JobStore
    @Environment(\.modelContext) private var modelContext
    @State private var selectedTab: SettingsTab = .general
    @State private var showingExportDialog = false
    @State private var showingImportDialog = false
    @State private var showingDeleteConfirmation = false
    @State private var showingDocumentImportDialog = false
    @State private var showingNotesImportDialog = false
    @State private var showingExportError = false
    @State private var showingImportError = false
    @State private var exportData: Data?
    @State private var errorMessage = ""
    @Environment(\.dismiss) private var dismiss
    
    // Import/Export Service
    @StateObject private var dataExportService = DataExportService()
    
    // Temporary state for Cancel/Save functionality
    @State private var tempSettings = TempSettingsState()
    
    enum SettingsTab: String, CaseIterable {
        case general = "General"
        case appearance = "Appearance"
        case data = "Data"
        case ai = "AI & Parsing"
        case privacy = "Privacy"
        case about = "About"
        
        var icon: String {
            switch self {
            case .general: return "gear"
            case .appearance: return "paintbrush"
            case .data: return "externaldrive"
            case .ai: return "brain.head.profile"
            case .privacy: return "lock.shield"
            case .about: return "info.circle"
            }
        }
    }
    
    var body: some View {
        VStack(spacing: 0) {
            // Main content
            NavigationSplitView {
                // Sidebar
                List(SettingsTab.allCases, id: \.self, selection: $selectedTab) { tab in
                    Label(tab.rawValue, systemImage: tab.icon)
                        .tag(tab)
                }
                .navigationTitle("Settings")
            } detail: {
                // Content with scrolling
                ScrollView {
                    VStack(spacing: 0) {
                        switch selectedTab {
                        case .general:
                            GeneralSettingsView(tempSettings: $tempSettings)
                        case .appearance:
                            AppearanceSettingsView(tempSettings: $tempSettings)
                        case .data:
                            DataSettingsView(tempSettings: $tempSettings,
                                              showingDocumentImportDialog: $showingDocumentImportDialog,
                                              showingNotesImportDialog: $showingNotesImportDialog)
                                .environmentObject(dataExportService)
                                .environmentObject(documentStore)
                                .environmentObject(noteStore)
                                .environmentObject(jobStore)
                        case .ai:
                            AISettingsView(tempSettings: $tempSettings)
                        case .privacy:
                            PrivacySettingsView(tempSettings: $tempSettings)
                        case .about:
                            AboutSettingsView()
                        }
                    }
                }
                .navigationTitle(selectedTab.rawValue)
            }
            
            // Cancel/Save buttons at bottom
            HStack {
                Button("Cancel") {
                    // Reset temp settings to current settings
                    tempSettings = TempSettingsState(from: settingsManager)
                    dismiss()
                }
                .buttonStyle(.bordered)
                .keyboardShortcut(.escape)
                
                Spacer()
                
                Button("Reset to Defaults") {
                    tempSettings = TempSettingsState()
                }
                .buttonStyle(.bordered)
                
                Button("Save") {
                    // Apply temp settings to actual settings
                    tempSettings.applyTo(settingsManager)
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .keyboardShortcut(.return)
            }
            .padding()
            .background(Color(NSColor.controlBackgroundColor))
            .border(Color(NSColor.separatorColor), width: 1)
        }
        .frame(minWidth: 700, minHeight: 500)
        .onAppear {
            // Initialize temp settings with current values
            tempSettings = TempSettingsState(from: settingsManager)
            
            // Initialize import/export service
            dataExportService.modelContext = modelContext
            dataExportService.jobStore = jobStore
            dataExportService.documentStore = documentStore
            dataExportService.noteStore = noteStore
        }
        .fileImporter(
            isPresented: $showingDocumentImportDialog,
            allowedContentTypes: [
                .pdf, .text, .rtf, .rtfd, .plainText,
                UTType(filenameExtension: "doc")!,
                UTType(filenameExtension: "docx")!,
                UTType(filenameExtension: "md")!,
                UTType(filenameExtension: "markdown")!,
                .image, .png, .jpeg
            ],
            allowsMultipleSelection: true
        ) { result in
            handleDocumentImport(result)
        }
        .fileImporter(
            isPresented: $showingNotesImportDialog,
            allowedContentTypes: [.text, .plainText, .utf8PlainText, UTType(filenameExtension: "md")!, UTType(filenameExtension: "markdown")!],
            allowsMultipleSelection: true
        ) { result in
            handleNotesImport(result)
        }
    }
    
    // MARK: - Import Handlers
    
    private func handleDocumentImport(_ result: Result<[URL], Error>) {
        switch result {
        case .success(let urls):
            Task {
                await importDocuments(from: urls)
            }
        case .failure(let error):
            Logger.data.error("Document import failed: \(error.localizedDescription)")
            showingImportError = true
            errorMessage = error.localizedDescription
        }
    }
    
    private func handleNotesImport(_ result: Result<[URL], Error>) {
        switch result {
        case .success(let urls):
            Task {
                await importNotes(from: urls)
            }
        case .failure(let error):
            Logger.data.error("Notes import failed: \(error.localizedDescription)")
            showingImportError = true
            errorMessage = error.localizedDescription
        }
    }
    
    @MainActor
    private func importDocuments(from urls: [URL]) async {
        // Use DocumentStore's existing upload functionality
        await documentStore.uploadDocuments(from: urls)
        Logger.data.info("Successfully imported \(urls.count) document(s)")
    }
    
    @MainActor
    private func importNotes(from urls: [URL]) async {
        var importedCount = 0
        for url in urls {
            guard url.startAccessingSecurityScopedResource() else { continue }
            defer { url.stopAccessingSecurityScopedResource() }

            noteStore.importNotes(from: url)
            importedCount += 1
        }
        Logger.data.info("Successfully imported \(importedCount) note(s)")
    }
}

// MARK: - General Settings

struct GeneralSettingsView: View {
    @Binding var tempSettings: TempSettingsState

    var body: some View {
        Form {
            Section("Application Behavior") {
                LabeledContent("Default status for new jobs") {
                    Picker("Default status", selection: $tempSettings.defaultJobStatus) {
                        ForEach(JobStatus.allCases, id: \.self) { status in
                            Text(status.rawValue).tag(status)
                        }
                    }
                    .pickerStyle(.menu)
                    .labelsHidden()
                }

                LabeledContent("Auto-save interval") {
                    Picker("Auto-save", selection: $tempSettings.autoSaveInterval) {
                        Text("Immediately").tag(0)
                        Text("Every 30 seconds").tag(30)
                        Text("Every minute").tag(60)
                        Text("Every 5 minutes").tag(300)
                    }
                    .pickerStyle(.menu)
                    .labelsHidden()
                }

                LabeledContent("Date format") {
                    Picker("Date format", selection: $tempSettings.dateFormat) {
                        Text("MM/dd/yyyy").tag("MM/dd/yyyy")
                        Text("dd/MM/yyyy").tag("dd/MM/yyyy")
                        Text("yyyy-MM-dd").tag("yyyy-MM-dd")
                        Text("MMM dd, yyyy").tag("MMM dd, yyyy")
                    }
                    .pickerStyle(.menu)
                    .labelsHidden()
                }
            }

            Section("Notifications") {
                Toggle("Show notification for new jobs", isOn: $tempSettings.showNewJobNotifications)
                Toggle("Remind about follow-ups", isOn: $tempSettings.remindFollowUps)
                Toggle("Daily summary notifications", isOn: $tempSettings.dailySummaryNotifications)
            }

            Section("Window Behavior") {
                Toggle("Remember window size and position", isOn: $tempSettings.rememberWindowState)
                Toggle("Close to system tray", isOn: $tempSettings.closeToSystemTray)
                Toggle("Start minimized", isOn: $tempSettings.startMinimized)
            }
        }
        .formStyle(.grouped)
        .padding()
    }
}

// MARK: - Appearance Settings

struct AppearanceSettingsView: View {
    @Binding var tempSettings: TempSettingsState
    @State private var previewText = "Sample job application text"
    
    var body: some View {
        Form {
            Section("Theme") {
                LabeledContent("Appearance") {
                    Picker("Appearance", selection: $tempSettings.appearanceMode) {
                        Text("System").tag(AppearanceMode.system)
                        Text("Light").tag(AppearanceMode.light)
                        Text("Dark").tag(AppearanceMode.dark)
                    }
                    .pickerStyle(.segmented)
                    .labelsHidden()
                }

                LabeledContent("Accent color") {
                    HStack {
                        ColorPicker("Accent color", selection: $tempSettings.accentColor, supportsOpacity: false)
                            .labelsHidden()

                        Button("Reset to Default") {
                            tempSettings.accentColor = .blue
                        }
                        .buttonStyle(.bordered)
                    }
                }
            }

            Section("Layout") {
                LabeledContent("Sidebar width") {
                    HStack {
                        Slider(value: $tempSettings.sidebarWidth, in: 200...400, step: 10)

                        Text("\(Int(tempSettings.sidebarWidth))px")
                            .foregroundColor(.secondary)
                            .frame(minWidth: 50)
                    }
                }

                LabeledContent("Font size") {
                    Picker("Font size", selection: $tempSettings.fontSize) {
                        Text("Small").tag(FontSize.small)
                        Text("Medium").tag(FontSize.medium)
                        Text("Large").tag(FontSize.large)
                    }
                    .pickerStyle(.segmented)
                    .labelsHidden()
                }

                Toggle("Show job thumbnails in list", isOn: $tempSettings.showJobThumbnails)
                Toggle("Show status badges", isOn: $tempSettings.showStatusBadges)
                Toggle("Compact list view", isOn: $tempSettings.compactListView)
            }
            
            Section("Accessibility") {
                VStack(alignment: .leading, spacing: Theme.Spacing.medium) {
                    Toggle("Enable enhanced keyboard navigation", isOn: .constant(true))
                        .disabled(true)
                        .help("Always enabled for better accessibility")
                    
                    Toggle("Increase contrast", isOn: .constant(false))
                        .help("Use high contrast colors for better visibility")
                    
                    Toggle("Reduce transparency", isOn: .constant(false))
                        .help("Make backgrounds more opaque")
                    
                    Toggle("Reduce motion", isOn: .constant(false))
                        .help("Minimize animations and motion effects")
                    
                    Text("Additional accessibility options can be configured in System Settings > Accessibility")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
            
            Section("Preview") {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Preview:")
                        .font(.subheadline)
                        .fontWeight(.medium)
                    
                    HStack {
                        Image(systemName: "building.2")
                            .foregroundColor(tempSettings.accentColor)
                        
                        VStack(alignment: .leading, spacing: 2) {
                            Text("Software Engineer")
                                .font(tempSettings.fontSize.font)
                                .fontWeight(.medium)
                            
                            Text("Apple Inc. • Cupertino, CA")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                        
                        Spacer()
                        
                        if tempSettings.showStatusBadges {
                            Text("Applied")
                                .font(.caption)
                                .padding(.horizontal, 8)
                                .padding(.vertical, 2)
                                .background(tempSettings.accentColor.opacity(0.2))
                                .foregroundColor(tempSettings.accentColor)
                                .cornerRadius(8)
                        }
                    }
                    .padding()
                    .background(Color(NSColor.controlBackgroundColor))
                    .cornerRadius(8)
                }
            }
        }
        .formStyle(.grouped)
        .padding()
    }
}

// MARK: - Data Settings

struct DataSettingsView: View {
    @Binding var tempSettings: TempSettingsState
    @Binding var showingDocumentImportDialog: Bool
    @Binding var showingNotesImportDialog: Bool
    @State private var showingExportDialog = false
    @State private var showingImportDialog = false
    @State private var showingDeleteConfirmation = false
    @State private var showingExportError = false
    @State private var showingImportError = false
    @State private var exportData: Data?
    @State private var errorMessage = ""
    @State private var storageSize = "0 MB"
    @EnvironmentObject var dataExportService: DataExportService
    @EnvironmentObject var documentStore: DocumentStore
    @EnvironmentObject var noteStore: NoteStore
    @EnvironmentObject var jobStore: JobStore
    
    var body: some View {
        ZStack {
            Form {
                Section("Import & Export") {
                VStack(alignment: .leading, spacing: Theme.Spacing.medium) {
                    HStack {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Export Data")
                                .font(.subheadline)
                                .fontWeight(.medium)
                            Text("Export all job applications to JSON")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                        
                        Spacer()
                        
                        Button("Export...") {
                            Task {
                                do {
                                    exportData = try await dataExportService.exportData()
                                    showingExportDialog = true
                                } catch {
                                    errorMessage = error.localizedDescription
                                    showingExportError = true
                                }
                            }
                        }
                        .buttonStyle(.bordered)
                        .disabled(dataExportService.isExporting)
                    }
                    
                    HStack {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Import Data")
                                .font(.subheadline)
                                .fontWeight(.medium)
                            Text("Import job applications from JSON")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                        
                        Spacer()
                        
                        Button("Import...") {
                            showingImportDialog = true
                        }
                        .buttonStyle(.bordered)
                    }
                    
                    HStack {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Import Documents")
                                .font(.subheadline)
                                .fontWeight(.medium)
                            Text("Import PDFs, Word docs, images, markdown, and more")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }

                        Spacer()

                        Button("Import Files...") {
                            showingDocumentImportDialog = true
                        }
                        .buttonStyle(.bordered)
                    }

                    HStack {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Import Notes")
                                .font(.subheadline)
                                .fontWeight(.medium)
                            Text("Import text files, markdown (.md), and notes")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }

                        Spacer()

                        Button("Import Files...") {
                            showingNotesImportDialog = true
                        }
                        .buttonStyle(.bordered)
                    }
                }
            }
            
            Section("Backup") {
                Toggle("Auto-backup to iCloud", isOn: $tempSettings.autoBackupToiCloud)

                LabeledContent("Backup frequency") {
                    Picker("Backup frequency", selection: $tempSettings.backupFrequency) {
                        Text("Daily").tag(BackupFrequency.daily)
                        Text("Weekly").tag(BackupFrequency.weekly)
                        Text("Monthly").tag(BackupFrequency.monthly)
                    }
                    .pickerStyle(.menu)
                    .labelsHidden()
                }
                .disabled(!tempSettings.autoBackupToiCloud)

                LabeledContent("Keep backups for") {
                    Picker("Keep backups", selection: $tempSettings.backupRetention) {
                        Text("1 month").tag(30)
                        Text("3 months").tag(90)
                        Text("6 months").tag(180)
                        Text("1 year").tag(365)
                        Text("Forever").tag(-1)
                    }
                    .pickerStyle(.menu)
                    .labelsHidden()
                }
                .disabled(!tempSettings.autoBackupToiCloud)

                VStack(alignment: .leading, spacing: Theme.Spacing.medium) {
                    
                    Divider()
                    
                    // Backup status
                    VStack(alignment: .leading, spacing: 8) {
                        if let lastBackup = tempSettings.lastBackupDate {
                            HStack {
                                Image(systemName: "clock.arrow.2.circlepath")
                                    .foregroundColor(.green)
                                Text("Last backup: \(lastBackup.formatted(.relative(presentation: .named)))")
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                            }
                        } else {
                            HStack {
                                Image(systemName: "exclamationmark.triangle")
                                    .foregroundColor(.orange)
                                Text("No backups yet")
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                            }
                        }
                        
                        if tempSettings.autoBackupToiCloud, let nextBackup = tempSettings.nextScheduledBackup {
                            HStack {
                                Image(systemName: "calendar")
                                    .foregroundColor(.blue)
                                Text("Next backup: \(nextBackup.formatted(.relative(presentation: .named)))")
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                            }
                        }
                    }
                    
                    HStack {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Manual Backup")
                                .font(.subheadline)
                                .fontWeight(.medium)
                            Text("Create a backup right now")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                        
                        Spacer()
                        
                        Button("Backup Now") {
                            performManualBackup()
                        }
                        .buttonStyle(.bordered)
                    }
                }
            }
            
            Section("Storage") {
                VStack(alignment: .leading, spacing: Theme.Spacing.medium) {
                    HStack {
                        Text("Data usage:")
                        Spacer()
                        Text(storageSize)
                            .foregroundColor(.secondary)
                    }
                    
                    HStack {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Clear Cache")
                                .font(.subheadline)
                                .fontWeight(.medium)
                            Text("Remove temporary files and cached data")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                        
                        Spacer()
                        
                        Button("Clear Cache") {
                            clearCache()
                        }
                        .buttonStyle(.bordered)
                    }
                    
                    HStack {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Delete All Data")
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundColor(.red)
                            Text("Permanently delete all job applications")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                        
                        Spacer()
                        
                        Button("Delete All...") {
                            showingDeleteConfirmation = true
                        }
                        .buttonStyle(.bordered)
                        .foregroundColor(.red)
                    }
                }
            }
        }
        .formStyle(.grouped)
        .padding()
        .fileExporter(
            isPresented: $showingExportDialog,
            document: JSONDocument(data: exportData ?? Data()),
            contentType: .json,
            defaultFilename: "CareerKit-Export-\(Date().formatted(date: .numeric, time: .omitted).replacingOccurrences(of: "/", with: "-"))"
        ) { result in
            switch result {
            case .success:
                // Export completed successfully
                break
            case .failure(let error):
                errorMessage = "Export failed: \(error.localizedDescription)"
                showingExportError = true
            }
        }
        .fileImporter(
            isPresented: $showingImportDialog,
            allowedContentTypes: [.json],
            allowsMultipleSelection: false
        ) { result in
            switch result {
            case .success(let urls):
                if let url = urls.first {
                    Task {
                        do {
                            try await dataExportService.importData(from: url)
                        } catch {
                            errorMessage = error.localizedDescription
                            showingImportError = true
                        }
                    }
                }
            case .failure(let error):
                errorMessage = "Import failed: \(error.localizedDescription)"
                showingImportError = true
            }
        }
        .alert("Delete All Data", isPresented: $showingDeleteConfirmation) {
            Button("Cancel", role: .cancel) {}
            Button("Delete All", role: .destructive) {
                deleteAllData()
            }
        } message: {
            Text("This action cannot be undone. All job applications, documents, and notes will be permanently deleted.")
        }
        .alert("Export Error", isPresented: $showingExportError) {
            Button("OK") {}
        } message: {
            Text(errorMessage)
        }
        .alert("Import Error", isPresented: $showingImportError) {
            Button("OK") {}
        } message: {
            Text(errorMessage)
        }
        .onAppear {
            calculateStorageSize()
        }
            
            // Progress overlay
            if dataExportService.isExporting || dataExportService.isImporting {
                VStack(spacing: Theme.Spacing.medium) {
                    ProgressView()
                        .scaleEffect(1.5)
                    
                    Text(dataExportService.statusMessage)
                        .font(.headline)
                    
                    if dataExportService.progress > 0 {
                        ProgressView(value: dataExportService.progress)
                            .frame(width: 200)
                    }
                }
                .padding(Theme.Spacing.xLarge)
                .background(Material.regular)
                .cornerRadius(Theme.CornerRadius.medium)
                .shadow(radius: 10)
            }
        }
    }
    
    private func calculateStorageSize() {
        Task {
            let totalSize = await calculateActualStorageSize()
            await MainActor.run {
                storageSize = formatBytes(totalSize)
            }
        }
    }
    
    private func calculateActualStorageSize() async -> Int64 {
        var totalSize: Int64 = 0
        
        // Calculate SwiftData storage
        if let appSupport = FileManager.default.urls(for: .applicationSupportDirectory, in: .userDomainMask).first {
            let dbURL = appSupport.appendingPathComponent("default.store")
            if let attributes = try? FileManager.default.attributesOfItem(atPath: dbURL.path) {
                totalSize += attributes[.size] as? Int64 ?? 0
            }
        }
        
        // Calculate document storage
        let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        let documentsURL = URL(fileURLWithPath: documentsPath)
        
        if let enumerator = FileManager.default.enumerator(at: documentsURL, includingPropertiesForKeys: [.fileSizeKey]) {
            while let fileURL = enumerator.nextObject() as? URL {
                if let attributes = try? FileManager.default.attributesOfItem(atPath: fileURL.path) {
                    totalSize += attributes[.size] as? Int64 ?? 0
                }
            }
        }
        
        return totalSize
    }
    
    private func formatBytes(_ bytes: Int64) -> String {
        let formatter = ByteCountFormatter()
        formatter.countStyle = .file
        return formatter.string(fromByteCount: bytes)
    }
    
    private func clearCache() {
        Task {
            // Clear document preview cache
            await MainActor.run {
                documentStore.clearCaches()
            }
            
            // Clear temporary files
            if let tempDirectory = FileManager.default.temporaryDirectory.appendingPathComponent("CareerKit", isDirectory: true).path as String? {
                try? FileManager.default.removeItem(atPath: tempDirectory)
            }
            
            // Clear URL cache
            URLCache.shared.removeAllCachedResponses()
            
            // Recalculate storage size
            calculateStorageSize()
            
            // Show success feedback
            await MainActor.run {
                NSSound.beep()
            }
        }
    }
    
    private func deleteAllData() {
        Task { @MainActor in
            // Delete all jobs through JobStore
            let jobs = jobStore.jobApplications
            for job in jobs {
                jobStore.deleteJob(job)
            }
            
            // Clear all stores
            documentStore.clearCaches()
            noteStore.notes.removeAll()
            
            // Recalculate storage
            calculateStorageSize()
        }
    }
    
    private func performManualBackup() {
        Task {
            do {
                // Export data to backup format
                let backupData = try await dataExportService.exportData()
                
                // Determine backup location
                let backupName = "CareerKit-Backup-\(Date().formatted(date: .numeric, time: .omitted).replacingOccurrences(of: "/", with: "-"))"
                
                if tempSettings.autoBackupToiCloud {
                    // Save to iCloud
                    if let iCloudURL = FileManager.default.url(forUbiquityContainerIdentifier: nil)?
                        .appendingPathComponent("Documents")
                        .appendingPathComponent("Backups") {
                        
                        try FileManager.default.createDirectory(at: iCloudURL, withIntermediateDirectories: true)
                        let fileURL = iCloudURL.appendingPathComponent("\(backupName).json")
                        try backupData.write(to: fileURL)
                        
                        // Update last backup date
                        await MainActor.run {
                            tempSettings.lastBackupDate = Date()
                            tempSettings.nextScheduledBackup = calculateNextBackupDate()
                        }
                    }
                } else {
                    // Show save dialog for local backup
                    await MainActor.run {
                        exportData = backupData
                        showingExportDialog = true
                    }
                }
            } catch {
                await MainActor.run {
                    errorMessage = "Backup failed: \(error.localizedDescription)"
                    showingExportError = true
                }
            }
        }
    }
    
    private func calculateNextBackupDate() -> Date? {
        guard tempSettings.autoBackupToiCloud,
              let lastBackup = tempSettings.lastBackupDate else { return nil }
        
        switch tempSettings.backupFrequency {
        case .daily:
            return Calendar.current.date(byAdding: .day, value: 1, to: lastBackup)
        case .weekly:
            return Calendar.current.date(byAdding: .weekOfYear, value: 1, to: lastBackup)
        case .monthly:
            return Calendar.current.date(byAdding: .month, value: 1, to: lastBackup)
        }
    }
}

// MARK: - AI Settings

struct AISettingsView: View {
    @Binding var tempSettings: TempSettingsState

    var body: some View {
        Form {
            Section("On-Device AI") {
                VStack(alignment: .leading, spacing: Theme.Spacing.medium) {
                    HStack {
                        Image(systemName: "checkmark.shield.fill")
                            .foregroundColor(.green)
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Privacy-First AI Processing")
                                .font(.subheadline)
                                .fontWeight(.medium)
                            Text("All AI parsing happens on your device using Apple's Foundation Models. No data ever leaves your Mac.")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                    }
                }
            }

            Section("Job Posting Parser") {
                VStack(alignment: .leading, spacing: Theme.Spacing.medium) {
                    Toggle("Enable AI job posting parsing", isOn: $tempSettings.enableAIParsing)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Parsing Behavior")
                            .font(.subheadline)
                            .fontWeight(.medium)
                        
                        Toggle("Auto-parse when job description is pasted", isOn: $tempSettings.autoParseOnPaste)
                            .disabled(!tempSettings.enableAIParsing)
                        
                        Toggle("Extract skills automatically", isOn: $tempSettings.extractSkillsAutomatically)
                            .disabled(!tempSettings.enableAIParsing)
                        
                        Toggle("Detect salary ranges", isOn: $tempSettings.detectSalaryRanges)
                            .disabled(!tempSettings.enableAIParsing)
                        
                        Toggle("Identify remote work opportunities", isOn: $tempSettings.identifyRemoteWork)
                            .disabled(!tempSettings.enableAIParsing)
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Parsing Confidence")
                            .font(.subheadline)
                            .fontWeight(.medium)

                        LabeledContent("Minimum confidence level") {
                            HStack {
                                Slider(value: $tempSettings.parsingConfidenceThreshold, in: 0.1...1.0, step: 0.1)

                                Text("\(Int(tempSettings.parsingConfidenceThreshold * 100))%")
                                    .foregroundColor(.secondary)
                                    .frame(minWidth: 40)
                            }
                        }
                        .disabled(!tempSettings.enableAIParsing)

                        Text("Lower values will accept more suggestions, higher values will be more selective")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                }
            }
            
            Section("Privacy") {
                VStack(alignment: .leading, spacing: Theme.Spacing.medium) {
                    Toggle("Process data locally only", isOn: $tempSettings.processDataLocallyOnly)
                    
                    Text("When enabled, all AI processing happens on your device. No data is sent to external servers.")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    
                    Toggle("Clear parsing history on app exit", isOn: $tempSettings.clearParsingHistoryOnExit)
                }
            }
            
            Section("Performance") {
                LabeledContent("Max concurrent parsing operations") {
                    Picker("Max concurrent operations", selection: $tempSettings.maxConcurrentParsingOperations) {
                        Text("1").tag(1)
                        Text("2").tag(2)
                        Text("3").tag(3)
                        Text("4").tag(4)
                    }
                    .pickerStyle(.menu)
                    .labelsHidden()
                }

                LabeledContent("Parsing timeout") {
                    Picker("Parsing timeout", selection: $tempSettings.parsingTimeout) {
                        Text("30 seconds").tag(30)
                        Text("60 seconds").tag(60)
                        Text("2 minutes").tag(120)
                        Text("5 minutes").tag(300)
                    }
                    .pickerStyle(.menu)
                    .labelsHidden()
                }
            }
        }
        .formStyle(.grouped)
        .padding()
    }
}

// MARK: - Privacy Settings

struct PrivacySettingsView: View {
    @Binding var tempSettings: TempSettingsState
    
    var body: some View {
        Form {
            Section("Data Collection") {
                VStack(alignment: .leading, spacing: Theme.Spacing.medium) {
                    Toggle("Share anonymous usage analytics", isOn: $tempSettings.shareAnalytics)
                    
                    Text("Helps improve CareerKit by sharing anonymous usage patterns. No personal data or job information is collected.")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    
                    Toggle("Crash reporting", isOn: $tempSettings.crashReporting)
                    
                    Text("Automatically send crash reports to help diagnose and fix issues.")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
            
            Section("Data Retention") {
                LabeledContent("Keep deleted jobs in trash") {
                    Picker("Trash retention", selection: $tempSettings.trashRetentionDays) {
                        Text("7 days").tag(7)
                        Text("30 days").tag(30)
                        Text("90 days").tag(90)
                        Text("Forever").tag(-1)
                    }
                    .pickerStyle(.menu)
                    .labelsHidden()
                }

                LabeledContent("Auto-delete old applications") {
                    Picker("Auto-delete", selection: $tempSettings.autoDeleteAfterDays) {
                        Text("Never").tag(-1)
                        Text("1 year").tag(365)
                        Text("2 years").tag(730)
                        Text("5 years").tag(1825)
                    }
                    .pickerStyle(.menu)
                    .labelsHidden()
                }
            }
            
            Section("Security") {
                Toggle("Require authentication to open app", isOn: $tempSettings.requireAuthentication)

                Toggle("Auto-lock after inactivity", isOn: $tempSettings.autoLockAfterInactivity)

                LabeledContent("Lock after") {
                    Picker("Lock timeout", selection: $tempSettings.autoLockTimeoutMinutes) {
                        Text("5 minutes").tag(5)
                        Text("15 minutes").tag(15)
                        Text("30 minutes").tag(30)
                        Text("1 hour").tag(60)
                    }
                    .pickerStyle(.menu)
                    .labelsHidden()
                    .disabled(!tempSettings.autoLockAfterInactivity)
                }
            }
        }
        .formStyle(.grouped)
        .padding()
    }
}

// MARK: - About Settings

struct AboutSettingsView: View {
    @State private var appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "1.0"
    @State private var buildNumber = Bundle.main.infoDictionary?["CFBundleVersion"] as? String ?? "1"
    
    var body: some View {
        VStack(spacing: Theme.Spacing.large) {
            // App Icon and Info
            VStack(spacing: Theme.Spacing.medium) {
                Image(nsImage: NSApp.applicationIconImage)
                    .resizable()
                    .frame(width: 128, height: 128)
                
                VStack(spacing: 4) {
                    Text("CareerKit")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Text("Version \(appVersion) (\(buildNumber))")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("Professional Job Application Tracker")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
            
            // Features
            VStack(alignment: .leading, spacing: Theme.Spacing.small) {
                Text("Features")
                    .font(.headline)
                
                FeatureRow(icon: "chart.bar.xaxis", title: "Advanced Analytics", description: "Comprehensive job application statistics and insights")
                FeatureRow(icon: "brain.head.profile", title: "AI Job Parsing", description: "Intelligent extraction of job details using Foundation Model API")
                FeatureRow(icon: "map", title: "Location Tracking", description: "Interactive map visualization of job locations")
                FeatureRow(icon: "doc.on.doc.fill", title: "Document Management", description: "Organize resumes, cover letters, and job documents")
                FeatureRow(icon: "shield.checkered", title: "Privacy First", description: "Your data stays private and secure on your device")
            }
            
            Spacer()
            
            // Links
            HStack(spacing: Theme.Spacing.large) {
                Button("Privacy Policy") {
                    if let url = URL(string: "https://careerkit.app/privacy") {
                        NSWorkspace.shared.open(url)
                    }
                }
                .buttonStyle(.link)
                
                Button("Support") {
                    if let url = URL(string: "mailto:support@careerkit.app?subject=CareerKit%20Support%20Request") {
                        NSWorkspace.shared.open(url)
                    }
                }
                .buttonStyle(.link)
                
                Button("GitHub") {
                    if let url = URL(string: "https://github.com/careerkit/careerkit-mac") {
                        NSWorkspace.shared.open(url)
                    }
                }
                .buttonStyle(.link)
            }
            
            // Copyright
            Text("© 2024 CareerKit. All rights reserved.")
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct FeatureRow: View {
    let icon: String
    let title: String
    let description: String
    
    var body: some View {
        HStack(spacing: Theme.Spacing.medium) {
            Image(systemName: icon)
                .foregroundColor(.accentColor)
                .frame(width: 20)
            
            VStack(alignment: .leading, spacing: 2) {
                Text(title)
                    .font(.subheadline)
                    .fontWeight(.medium)
                
                Text(description)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
        }
    }
}

struct JSONDocument: FileDocument {
    static var readableContentTypes: [UTType] { [.json] }
    
    var data: Data
    
    init(data: Data) {
        self.data = data
    }
    
    init(configuration: ReadConfiguration) throws {
        guard let data = configuration.file.regularFileContents else {
            throw CocoaError(.fileReadCorruptFile)
        }
        self.data = data
    }
    
    func fileWrapper(configuration: WriteConfiguration) throws -> FileWrapper {
        FileWrapper(regularFileWithContents: data)
    }
}

// MARK: - Preview

#Preview {
    SettingsView()
        .frame(width: 700, height: 500)
}
