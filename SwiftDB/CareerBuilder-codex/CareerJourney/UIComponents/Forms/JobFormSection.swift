//
//  JobFormSection.swift
//  CareerKit
//
//  Shared job form component for Add and Edit views
//  Redesigned for perfect macOS native appearance
//

import SwiftUI
import UniformTypeIdentifiers
import MapKit
import OSLog

struct JobFormSection: View {
    @Bindable var viewModel: JobViewModel
    @Binding var importedDocuments: [SwiftDataJobDocument]
    @State private var isImporting = false
    @State private var isImportingFolder = false
    @State private var showNewLocationWindow = false
    @State private var validationErrors: [String: String] = [:]
    @State private var skillSuggestions: [String] = []
    @State private var newSkillText = ""
    @State private var locationMarkers: [LocationMarker] = []
    @State private var locationLookupTask: Task<Void, Never>?

    private let labelColumnWidth: CGFloat = 150
    private var salarySymbol: String { viewModel.salaryCurrency.symbol }
    private var salaryPeriodSuffix: String { viewModel.salaryPeriod.suffix }
    private var salaryPlaceholder: String { "\(salarySymbol)80,000 - \(salarySymbol)100,000 / \(salaryPeriodSuffix)" }
    private var salaryMinLabel: String { "Min (\(salarySymbol)/\(salaryPeriodSuffix))" }
    private var salaryMaxLabel: String { "Max (\(salarySymbol)/\(salaryPeriodSuffix))" }

    // AI Parsing UI State
    @State private var showAIParsingSheet = false
    @State private var parsedPreview: AnyObject? // SystemLanguageModelService.ParsedJobData on macOS 26.0+
    @State private var parseConfidence: Double = 0.0
    @State private var jobPostingText = ""
    @State private var showParsingError = false
    @State private var parsingErrorMessage = ""

    let onSave: () -> Void
    let onCancel: () -> Void
    let saveButtonTitle: String
    let locations: [String]
    let jobStore: JobStore?

    private let availableSkills: [String]

    init(
        viewModel: JobViewModel,
        importedDocuments: Binding<[SwiftDataJobDocument]>,
        onSave: @escaping () -> Void,
        onCancel: @escaping () -> Void,
        saveButtonTitle: String = "Save",
        locations: [String] = [],
        availableSkills: [String] = [],
        jobStore: JobStore? = nil
    ) {
        self.viewModel = viewModel
        self._importedDocuments = importedDocuments
        self.onSave = onSave
        self.onCancel = onCancel
        self.saveButtonTitle = saveButtonTitle
        self.locations = locations.isEmpty ? JobFormSection.defaultLocations : locations
        self.availableSkills = availableSkills.isEmpty ? JobFormSection.defaultSkills : availableSkills
        self.jobStore = jobStore
    }

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                quickActionsCard

                if #available(macOS 26.0, *), parsedPreview != nil {
                    aiParsedDataCard
                }

                jobDetailsCard
                compensationCard
                jobPostingCard
                documentsCard
                jobDescriptionCard
                coverLetterCard
                notesCard
                skillsCard
            }
            .padding(.vertical, 24)
            .padding(.horizontal, 28)
            .frame(maxWidth: 900, alignment: .center)
        }
        .background(Color(nsColor: .underPageBackgroundColor))
        .fileImporter(
            isPresented: $isImporting,
            allowedContentTypes: [.pdf, .plainText, .rtf, .image],
            allowsMultipleSelection: true
        ) { result in
            handleFileImport(result)
        }
        .fileImporter(
            isPresented: $isImportingFolder,
            allowedContentTypes: [.folder],
            allowsMultipleSelection: false
        ) { result in
            handleFolderImport(result)
        }
        .sheet(isPresented: $showNewLocationWindow) {
            NewLocationWindowView(
                locations: .constant(locations),
                selectedLocation: $viewModel.location
            )
        }
        .onKeyPress(keys: [.escape]) { _ in
            onCancel()
            return .handled
        }
        .onKeyPress(keys: [KeyEquivalent("s")]) { keyPress in
            if keyPress.modifiers.contains(.command) && viewModel.isInputValid {
                onSave()
                return .handled
            }
            return .ignored
        }
        .sheet(isPresented: $showAIParsingSheet) {
            if #available(macOS 26.0, *) {
                let binding = Binding<SystemLanguageModelService.ParsedJobData?>(
                    get: { parsedPreview as? SystemLanguageModelService.ParsedJobData },
                    set: { parsedPreview = $0 as AnyObject? }
                )
                AIParsingSheet(
                    jobPostingText: $jobPostingText,
                    parsedPreview: binding,
                    parseConfidence: $parseConfidence,
                    onApply: applyParsedData,
                    onCancel: { showAIParsingSheet = false }
                )
            } else {
                Text("AI parsing requires macOS 26.0 or later")
                    .padding()
            }
        }
        .alert("Parsing Error", isPresented: $showParsingError) {
            Button("OK") { }
        } message: {
            Text(parsingErrorMessage)
        }
        .onAppear {
            scheduleLocationLookup(for: viewModel.location)
        }
        .onDisappear {
            locationLookupTask?.cancel()
        }
    }

    // MARK: - AI Quick Actions

    private var quickActionsCard: some View {
        FormCard(title: "Quick Actions", systemImage: "bolt.fill") {
            if viewModel.isAIParsing {
                HStack(spacing: 12) {
                    ProgressView()
                        .controlSize(.small)

                    Text(viewModel.aiParsingProgress)
                        .font(.callout)
                        .foregroundStyle(.secondary)

                    Spacer()
                }
            } else {
                HStack(spacing: 12) {
                    Button {
                        importFromClipboard()
                    } label: {
                        Label("Import from Clipboard", systemImage: "doc.on.clipboard")
                    }
                    .buttonStyle(.bordered)
                    .help("Import job posting text from clipboard")

                    Button {
                        showAIParsingSheet = true
                    } label: {
                        Label("Parse with AI", systemImage: "sparkles")
                    }
                    .buttonStyle(.borderedProminent)
                    .disabled(viewModel.jobDescription.isEmpty && jobPostingText.isEmpty)
                    .help("Use AI to extract job information")
                }
            }
        }
    }

    // MARK: - AI Parsed Data Preview

    @available(macOS 26.0, *)
    private var aiParsedDataCard: some View {
        FormCard(title: "AI Parsing Results", systemImage: "checkmark.circle") {
            if let preview = parsedPreview as? SystemLanguageModelService.ParsedJobData {
                VStack(alignment: .leading, spacing: 12) {
                    HStack {
                        Label("AI Extracted Data", systemImage: preview.confidenceScore > 0.7 ? "sparkles" : "exclamationmark.triangle")
                            .font(.subheadline)
                            .fontWeight(.medium)
                            .foregroundStyle(preview.confidenceScore > 0.7 ? .green : .orange)

                        Spacer()

                        Text("\(Int(preview.confidenceScore * 100))% Confidence")
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }

                    Divider()

                    VStack(alignment: .leading, spacing: 8) {
                        if let company = preview.companyName {
                            dataRow(label: "Company", value: company)
                        }
                        if let title = preview.jobTitle {
                            dataRow(label: "Title", value: title)
                        }
                        if let location = preview.location {
                            dataRow(label: "Location", value: location)
                        }
                        if preview.salaryMin != nil || preview.salaryMax != nil {
                            dataRow(label: "Salary", value: formatSalaryRange(min: preview.salaryMin, max: preview.salaryMax))
                        }
                        if !preview.requiredSkills.isEmpty {
                            dataRow(label: "Skills", value: preview.requiredSkills.prefix(6).joined(separator: ", "))
                        }
                    }
                    .font(.callout)

                    Divider()

                    HStack(spacing: 12) {
                        Button("Apply to Form") {
                            applyParsedData()
                        }
                        .buttonStyle(.borderedProminent)

                        Button("Parse Again") {
                            showAIParsingSheet = true
                        }
                        .buttonStyle(.bordered)

                        Button("Clear") {
                            clearParsedData()
                        }
                        .buttonStyle(.borderless)
                    }
                }
            }
        }
    }

    private func dataRow(label: String, value: String) -> some View {
        HStack(alignment: .top, spacing: 8) {
            Text(label + ":")
                .fontWeight(.medium)
                .frame(width: 80, alignment: .leading)

            Text(value)
                .foregroundStyle(.secondary)
                .textSelection(.enabled)

            Spacer()
        }
    }

    // MARK: - Form Cards

    private var jobDetailsCard: some View {
        FormCard(title: "Job Details", systemImage: "briefcase.fill") {
            VStack(spacing: 12) {
                companyField
                jobTitleField
                locationField
                applicationDateField
                statusPicker
            }
            .labeledContentStyle(MacFormLabeledContentStyle(labelWidth: labelColumnWidth))
        }
    }

    private var compensationCard: some View {
        FormCard(title: "Compensation & Type", systemImage: "dollarsign.square") {
            VStack(spacing: 12) {
                salaryRangeFields
                remoteWorkPicker
                jobTypePicker
            }
            .labeledContentStyle(MacFormLabeledContentStyle(labelWidth: labelColumnWidth))
        }
    }

    private var jobPostingCard: some View {
        FormCard(title: "Job Posting", systemImage: "link") {
            VStack(spacing: 12) {
                jobLinkField
            }
            .labeledContentStyle(MacFormLabeledContentStyle(labelWidth: labelColumnWidth))
        }
    }

    private var documentsCard: some View {
        FormCard(title: "Attached Documents", systemImage: "folder.fill") {
            VStack(alignment: .leading, spacing: 16) {
                documentsListView

                HStack(spacing: 12) {
                    Button {
                        isImporting = true
                    } label: {
                        Label("Add Files", systemImage: "doc.badge.plus")
                    }
                    .buttonStyle(.bordered)

                    Button {
                        isImportingFolder = true
                    } label: {
                        Label("Import Folder", systemImage: "folder.badge.plus")
                    }
                    .buttonStyle(.bordered)
                    .help("Import all PDFs from a folder")
                }
            }
        }
    }

    private var jobDescriptionCard: some View {
        FormCard(title: "Job Description", systemImage: "text.alignleft") {
            jobDescriptionEditor
        }
    }

    private var coverLetterCard: some View {
        FormCard(title: "Cover Letter", systemImage: "envelope.open") {
            coverLetterEditor
        }
    }

    private var notesCard: some View {
        FormCard(title: "Notes & Analysis", systemImage: "note.text") {
            notesEditor
        }
    }

    private var skillsCard: some View {
        FormCard(title: "Required Skills", systemImage: "checklist") {
            skillsManagement
        }
    }

    // MARK: - Form Fields

    private var companyField: some View {
        LabeledContent {
            TextField("Company Name", text: $viewModel.companyName)
                .textFieldStyle(.plain)
                .formInputField()
                .onChange(of: viewModel.companyName) { _, _ in
                    viewModel.validateInputs()
                }

            if !viewModel.companyName.isEmpty && viewModel.companyName.count < 2 {
                Text("At least 2 characters required")
                    .font(.caption)
                    .foregroundStyle(.red)
            }
        } label: {
            HStack {
                Text("Company")
                Text("*").foregroundStyle(.red)
            }
        }
    }

    private var jobTitleField: some View {
        LabeledContent {
            TextField("Job Title", text: $viewModel.jobTitle)
                .textFieldStyle(.plain)
                .formInputField()
                .onChange(of: viewModel.jobTitle) { _, _ in
                    viewModel.validateInputs()
                }

            if !viewModel.jobTitle.isEmpty && viewModel.jobTitle.count < 2 {
                Text("At least 2 characters required")
                    .font(.caption)
                    .foregroundStyle(.red)
            }
        } label: {
            HStack {
                Text("Job Title")
                Text("*").foregroundStyle(.red)
            }
        }
    }

    private var locationField: some View {
        LabeledContent {
            VStack(alignment: .leading, spacing: 8) {
                HStack(spacing: 8) {
                    TextField("City, State or multiple cities (comma separated)", text: $viewModel.location)
                        .textFieldStyle(.plain)
                        .formInputField()
                        .onChange(of: viewModel.location) { _, newValue in
                            viewModel.validateInputs()
                            scheduleLocationLookup(for: newValue)
                        }

                    if !locations.isEmpty {
                        Menu {
                            ForEach(locations, id: \.self) { suggestion in
                                Button(suggestion) {
                                    viewModel.location = suggestion
                                }
                            }
                        } label: {
                            Image(systemName: "clock.arrow.circlepath")
                        }
                        .help("Recent locations")
                    }

                    Button {
                        showNewLocationWindow = true
                    } label: {
                        Image(systemName: "plus.circle.fill")
                    }
                    .buttonStyle(.borderless)
                    .help("Save a location preset")
                }

                if !locationMarkers.isEmpty {
                    LocationMarkersMap(markers: locationMarkers)
                        .frame(height: 170)
                        .transition(.opacity)
                } else {
                    Text("Enter a location to preview it on the map")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
            }
        } label: {
            HStack {
                Text("Location")
                Text("*").foregroundStyle(.red)
            }
        }
    }

    private var applicationDateField: some View {
        LabeledContent("Application Date") {
            DatePicker("", selection: $viewModel.applicationDate, displayedComponents: .date)
                .datePickerStyle(.field)
                .labelsHidden()
        }
    }

    private var statusPicker: some View {
        LabeledContent("Status") {
            Picker("", selection: $viewModel.status) {
                ForEach(JobStatus.allCases, id: \.self) { status in
                    Text(status.rawValue).tag(status)
                }
            }
            .pickerStyle(.segmented)
            .labelsHidden()
        }
    }

    private var salaryRangeFields: some View {
        LabeledContent("Salary Range") {
            VStack(alignment: .leading, spacing: 8) {
                HStack(spacing: 12) {
                    Picker("Currency", selection: $viewModel.salaryCurrency) {
                        ForEach(SalaryCurrency.allCases) { currency in
                            Text(currency.displayName).tag(currency)
                        }
                    }
                    .pickerStyle(.segmented)
                    .onChange(of: viewModel.salaryCurrency) { _, _ in
                        viewModel.validateInputs()
                    }

                    Picker("Period", selection: $viewModel.salaryPeriod) {
                        ForEach(SalaryPeriod.allCases) { period in
                            Text(period.displayName).tag(period)
                        }
                    }
                    .pickerStyle(.segmented)
                    .onChange(of: viewModel.salaryPeriod) { _, _ in
                        viewModel.validateInputs()
                    }
                }

                Text("e.g., \(salaryPlaceholder)")
                    .font(.caption)
                    .foregroundColor(.secondary)

                HStack(spacing: 12) {
                    salaryInputField(title: salaryMinLabel, placeholder: "80,000", text: $viewModel.salaryMin)
                    salaryInputField(title: salaryMaxLabel, placeholder: "100,000", text: $viewModel.salaryMax)
                }
            }
        }
    }

    private var remoteWorkPicker: some View {
        LabeledContent("Work Location") {
            Picker("", selection: $viewModel.remoteWorkType) {
                ForEach(RemoteWorkType.allCases, id: \.self) { type in
                    Text(type.displayName).tag(type)
                }
            }
            .pickerStyle(.segmented)
            .labelsHidden()
        }
    }

    private var jobTypePicker: some View {
        LabeledContent("Job Type") {
            Picker("", selection: $viewModel.jobType) {
                ForEach(JobType.allCases, id: \.self) { type in
                    Text(type.displayName).tag(type)
                }
            }
            .pickerStyle(.segmented)
            .labelsHidden()
        }
    }

    private var jobLinkField: some View {
        LabeledContent("Job Link") {
            HStack {
                TextField("https://example.com/job-posting", text: $viewModel.jobLink)
                    .textFieldStyle(.plain)
                    .formInputField()

                if !viewModel.jobLink.isEmpty, let url = URL(string: viewModel.jobLink) {
                    Button {
                        NSWorkspace.shared.open(url)
                    } label: {
                        Image(systemName: "arrow.up.right.square")
                    }
                    .buttonStyle(.borderless)
                    .help("Open in browser")
                }
            }
        }
    }

    private func salaryInputField(title: String, placeholder: String, text: Binding<String>) -> some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title)
                .font(.caption)
                .foregroundStyle(.secondary)

            TextField(placeholder, text: text)
                .textFieldStyle(.plain)
                .multilineTextAlignment(.leading)
                .salaryInputField()
                .onChange(of: text.wrappedValue) { _, _ in
                    viewModel.validateInputs()
                }
        }
    }

// MARK: - Shared Field Styling

    // MARK: - Documents List

    private var documentsListView: some View {
        Group {
            if importedDocuments.isEmpty {
                Text("No documents attached")
                    .font(.callout)
                    .foregroundStyle(.secondary)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical, 8)
            } else {
                VStack(alignment: .leading, spacing: 8) {
                    ForEach(importedDocuments) { document in
                        HStack(spacing: 12) {
                            Image(systemName: documentIcon(for: document))
                                .foregroundStyle(.blue)
                                .frame(width: 20)

                            VStack(alignment: .leading, spacing: 2) {
                                Text(document.fileName)
                                    .font(.callout)
                                    .lineLimit(1)
                                    .truncationMode(.middle)

                                Text(formatFileSize(document.fileSize))
                                    .font(.caption2)
                                    .foregroundStyle(.secondary)
                            }

                            Spacer()

                            Button {
                                removeDocument(document)
                            } label: {
                                Image(systemName: "xmark.circle.fill")
                                    .foregroundStyle(.secondary)
                            }
                            .buttonStyle(.borderless)
                            .help("Remove document")
                        }
                        .padding(8)
                        .background(.quaternary.opacity(0.5))
                        .cornerRadius(6)
                    }
                }
            }
        }
    }

    // MARK: - Text Editors

    private var jobDescriptionEditor: some View {
        RichTextEditor(
            text: $viewModel.jobDescription,
            placeholder: "Paste or type the job description...",
            minHeight: 150
        )
        .frame(minHeight: 150, maxHeight: 300)
    }

    private var coverLetterEditor: some View {
        RichTextEditor(
            text: $viewModel.coverLetter,
            placeholder: "Draft your cover letter...",
            minHeight: 200
        )
        .frame(minHeight: 200, maxHeight: 400)
    }

    private var notesEditor: some View {
        RichTextEditor(
            text: $viewModel.notes,
            placeholder: "Additional notes and observations...",
            minHeight: 100
        )
        .frame(minHeight: 100, maxHeight: 200)
    }

    // MARK: - Skills Management

    private var skillsManagement: some View {
        VStack(alignment: .leading, spacing: 12) {
            // Skill input
            SkillComboBoxField(
                text: $newSkillText,
                suggestions: $skillSuggestions,
                onCommit: addSkill
            )
            .onChange(of: newSkillText) { _, newValue in
                updateSkillSuggestions(for: newValue)
            }

            // Skill tags
            if viewModel.skills.isEmpty {
                Text("No skills added yet")
                    .font(.callout)
                    .foregroundStyle(.secondary)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical, 8)
            } else {
                FlowLayout(spacing: 8) {
                    ForEach(viewModel.skills, id: \.self) { skill in
                        SkillTag(skillName: skill) {
                            viewModel.skills.removeAll { $0 == skill }
                        }
                    }
                }
            }
        }
    }

    // MARK: - Form Building Blocks

    private struct FormCard<Content: View>: View {
        let title: String
        let systemImage: String
        private let content: Content

        init(title: String, systemImage: String, @ViewBuilder content: () -> Content) {
            self.title = title
            self.systemImage = systemImage
            self.content = content()
        }

        var body: some View {
            VStack(alignment: .leading, spacing: 16) {
                Label(title, systemImage: systemImage)
                    .font(.headline)
                    .fontWeight(.semibold)

                Divider()

                content
            }
            .padding(20)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(
                RoundedRectangle(cornerRadius: 14, style: .continuous)
                    .fill(.ultraThinMaterial)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 14, style: .continuous)
                    .stroke(Color.primary.opacity(0.06))
            )
        }
    }

    private struct MacFormLabeledContentStyle: LabeledContentStyle {
        var labelWidth: CGFloat

        func makeBody(configuration: Configuration) -> some View {
            HStack(alignment: .firstTextBaseline, spacing: 14) {
                configuration.label
                    .font(.callout)
                    .foregroundStyle(.secondary)
                    .frame(width: labelWidth, alignment: .trailing)

                configuration.content
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.vertical, 4)
        }
    }

    // MARK: - Helper Methods

    private func handleFileImport(_ result: Result<[URL], Error>) {
        switch result {
        case .success(let urls):
            for url in urls {
                guard url.startAccessingSecurityScopedResource() else { continue }
                defer { url.stopAccessingSecurityScopedResource() }

                do {
                    let fileData = try Data(contentsOf: url)
                    let mimeType = UTType(filenameExtension: url.pathExtension)?.preferredMIMEType ?? "application/octet-stream"
                    let document = SwiftDataJobDocument(
                        fileName: url.lastPathComponent,
                        fileURL: url,
                        fileData: fileData,
                        fileSize: fileData.count,
                        mimeType: mimeType,
                        uploadDate: Date(),
                        documentType: determineDocumentType(from: url.lastPathComponent)
                    )

                    if !importedDocuments.contains(where: { $0.fileName == document.fileName }) {
                        importedDocuments.append(document)
                    }
                } catch {
                    Logger.data.error("Error importing file: \(error)")
                }
            }
        case .failure(let error):
            Logger.data.error("File import failed: \(error)")
        }
    }

    private func handleFolderImport(_ result: Result<[URL], Error>) {
        switch result {
        case .success(let urls):
            guard let folderURL = urls.first else { return }

            guard folderURL.startAccessingSecurityScopedResource() else { return }
            defer { folderURL.stopAccessingSecurityScopedResource() }

            // Find all PDF files in the folder recursively
            let pdfFiles = findPDFFiles(in: folderURL)

            // Import each PDF
            for pdfURL in pdfFiles {
                do {
                    let fileData = try Data(contentsOf: pdfURL)
                    let document = SwiftDataJobDocument(
                        fileName: pdfURL.lastPathComponent,
                        fileURL: pdfURL,
                        fileData: fileData,
                        fileSize: fileData.count,
                        mimeType: "application/pdf",
                        uploadDate: Date(),
                        documentType: determineDocumentType(from: pdfURL.lastPathComponent)
                    )

                    if !importedDocuments.contains(where: { $0.fileName == document.fileName }) {
                        importedDocuments.append(document)
                    }
                } catch {
                    Logger.data.error("Error importing PDF \(pdfURL.lastPathComponent, privacy: .public): \(error)")
                }
            }
        case .failure(let error):
            Logger.data.error("Folder import failed: \(error)")
        }
    }

    private func findPDFFiles(in directory: URL) -> [URL] {
        var pdfFiles: [URL] = []

        guard let enumerator = FileManager.default.enumerator(
            at: directory,
            includingPropertiesForKeys: [.isRegularFileKey, .nameKey],
            options: [.skipsHiddenFiles]
        ) else {
            return pdfFiles
        }

        for case let fileURL as URL in enumerator {
            do {
                let resourceValues = try fileURL.resourceValues(forKeys: [.isRegularFileKey])
                guard resourceValues.isRegularFile == true else { continue }

                if fileURL.pathExtension.lowercased() == "pdf" {
                    pdfFiles.append(fileURL)
                }
            } catch {
                Logger.data.error("Error checking file \(fileURL.lastPathComponent, privacy: .public): \(error)")
            }
        }

        return pdfFiles
    }

    private func removeDocument(_ document: SwiftDataJobDocument) {
        importedDocuments.removeAll { $0.id == document.id }
    }

    private func formatFileSize(_ bytes: Int) -> String {
        let formatter = ByteCountFormatter()
        formatter.allowedUnits = [.useKB, .useMB]
        formatter.countStyle = .file
        return formatter.string(fromByteCount: Int64(bytes))
    }

    private func openURL(_ urlString: String) {
        guard let url = URL(string: urlString) else { return }
        NSWorkspace.shared.open(url)
    }

    private func addSkill() {
        let trimmedSkill = newSkillText.trimmingCharacters(in: .whitespacesAndNewlines)
        if !trimmedSkill.isEmpty && !viewModel.skills.contains(trimmedSkill) {
            viewModel.skills.append(trimmedSkill)
            newSkillText = ""
            skillSuggestions = []
        }
    }

    private func updateSkillSuggestions(for text: String) {
        guard !text.isEmpty else {
            skillSuggestions = []
            return
        }

        skillSuggestions = availableSkills
            .filter { $0.localizedCaseInsensitiveContains(text) && !viewModel.skills.contains($0) }
            .prefix(5)
            .map { $0 }
    }

    // MARK: - AI Parsing Helpers

    private func importFromClipboard() {
        if let clipboardString = NSPasteboard.general.string(forType: .string) {
            if viewModel.jobDescription.isEmpty {
                viewModel.jobDescription = clipboardString
            } else {
                jobPostingText = clipboardString
            }
        }
    }

    private func applyParsedData() {
        guard #available(macOS 26.0, *),
              let parsed = parsedPreview as? SystemLanguageModelService.ParsedJobData else { return }

        if let company = parsed.companyName?.trimmingCharacters(in: .whitespacesAndNewlines), !company.isEmpty {
            viewModel.companyName = company
        }

        if let title = parsed.jobTitle?.trimmingCharacters(in: .whitespacesAndNewlines), !title.isEmpty {
            viewModel.jobTitle = title
        }

        if let location = parsed.location?.trimmingCharacters(in: .whitespacesAndNewlines), !location.isEmpty {
            viewModel.location = location
        }

        if let minSalary = parsed.salaryMin {
            viewModel.salaryMin = String(format: "%.0f", minSalary)
        }

        if let maxSalary = parsed.salaryMax {
            viewModel.salaryMax = String(format: "%.0f", maxSalary)
        }

        if !parsed.requiredSkills.isEmpty {
            viewModel.skills = parsed.requiredSkills
        }

        if let workType = parsed.workType?.lowercased() {
            switch workType {
            case "remote": viewModel.remoteWorkType = .remote
            case "hybrid": viewModel.remoteWorkType = .hybrid
            case "on-site", "onsite": viewModel.remoteWorkType = .onsite
            default: break
            }
        }

        switch parsed.jobType.lowercased() {
        case "full time":
            viewModel.jobType = .fullTime
        case "part time":
            viewModel.jobType = .partTime
        case "internship":
            viewModel.jobType = .internship
        default:
            break
        }

        if let description = parsed.formattedJobDescription?.trimmingCharacters(in: .whitespacesAndNewlines), !description.isEmpty {
            viewModel.jobDescription = viewModel.normalizeMarkdown(description)
        }

        if let coverLetterMarkdown = parsed.coverLetterMarkdown?.trimmingCharacters(in: .whitespacesAndNewlines), !coverLetterMarkdown.isEmpty {
            viewModel.coverLetter = viewModel.normalizeMarkdown(coverLetterMarkdown)
        }

        let analysis = parsed.analysisNotes.trimmingCharacters(in: .whitespacesAndNewlines)
        if !analysis.isEmpty {
            viewModel.notes = viewModel.normalizeMarkdown(analysis)
        }

        parsedPreview = nil
        viewModel.validateInputs()
    }

    private func clearParsedData() {
        parsedPreview = nil
        parseConfidence = 0.0
    }

    private func scheduleLocationLookup(for rawValue: String) {
        locationLookupTask?.cancel()
        locationLookupTask = Task {
            let entries = LocationParser.parseLocations(from: rawValue)
            guard !entries.isEmpty else {
                await MainActor.run { locationMarkers = [] }
                return
            }
            var resolvedByName: [String: LocationMarker] = [:]
            for entry in entries {
                if Task.isCancelled { return }
                if let resolved = await LocationGeocoder.shared.resolveLocation(for: entry) {
                    resolvedByName[resolved.name] = LocationMarker(name: resolved.name, coordinate: resolved.coordinate)
                }
            }
            if Task.isCancelled { return }
            await MainActor.run {
                withAnimation(.easeInOut(duration: 0.2)) {
                    locationMarkers = Array(resolvedByName.values)
                }
            }
        }
    }

    private func formatSalaryRange(min: Double?, max: Double?) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.maximumFractionDigits = 0

        if let min = min, let max = max {
            return "\(formatter.string(from: NSNumber(value: min)) ?? "$0") - \(formatter.string(from: NSNumber(value: max)) ?? "$0")"
        } else if let min = min {
            return "From \(formatter.string(from: NSNumber(value: min)) ?? "$0")"
        } else if let max = max {
            return "Up to \(formatter.string(from: NSNumber(value: max)) ?? "$0")"
        }

        return "Not specified"
    }

    // MARK: - Default Data

    static let defaultLocations = [
        "Remote",
        "San Francisco, CA",
        "New York, NY",
        "Los Angeles, CA",
        "Seattle, WA",
        "Austin, TX",
        "Chicago, IL",
        "Boston, MA",
        "Denver, CO",
        "Portland, OR"
    ]

    static let defaultSkills = [
        "Swift", "SwiftUI", "UIKit", "iOS", "macOS",
        "Python", "JavaScript", "TypeScript", "React", "Node.js",
        "Java", "Kotlin", "Android", "Flutter",
        "Machine Learning", "AI", "Data Science",
        "AWS", "Azure", "Google Cloud",
        "Docker", "Kubernetes", "CI/CD",
        "Git", "Agile", "Scrum"
    ]

    // MARK: - Helper Functions

    private func documentIcon(for document: SwiftDataJobDocument) -> String {
        let mimeType = document.mimeType.lowercased()

        if mimeType.contains("pdf") {
            return "doc.fill"
        } else if mimeType.contains("image") {
            return "photo.fill"
        } else if mimeType.contains("word") || mimeType.contains("document") {
            return "doc.richtext.fill"
        } else if mimeType.contains("sheet") || mimeType.contains("excel") {
            return "tablecells.fill"
        } else {
            return "doc.fill"
        }
    }

    private func determineDocumentType(from fileName: String) -> String {
        let lowercased = fileName.lowercased()

        if lowercased.contains("resume") || lowercased.contains("cv") {
            return "resume"
        } else if lowercased.contains("cover") && lowercased.contains("letter") {
            return "cover_letter"
        } else if lowercased.contains("portfolio") {
            return "portfolio"
        } else if lowercased.contains("reference") || lowercased.contains("recommendation") {
            return "reference"
        } else if lowercased.contains("certificate") || lowercased.contains("certification") {
            return "certificate"
        } else {
            return "other"
        }
    }
}

// MARK: - AI Parsing Sheet

@available(macOS 26.0, *)
struct AIParsingSheet: View {
    @Binding var jobPostingText: String
    @Binding var parsedPreview: SystemLanguageModelService.ParsedJobData?
    @Binding var parseConfidence: Double

    let onApply: () -> Void
    let onCancel: () -> Void

    @State private var isParsing = false
    @State private var parsingError: Error?
    @State private var showError = false

    @StateObject private var foundationModelService = SystemLanguageModelService()

    var body: some View {
        VStack(spacing: 0) {
            // Toolbar
            HStack {
                Text("AI Job Posting Parser")
                    .font(.title3)
                    .fontWeight(.semibold)

                Spacer()

                Button("Import from Clipboard") {
                    if let clipboardString = NSPasteboard.general.string(forType: .string) {
                        jobPostingText = clipboardString
                    }
                }
                .buttonStyle(.bordered)
                .controlSize(.small)

                Button {
                    onCancel()
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .imageScale(.large)
                        .foregroundStyle(.secondary)
                }
                .buttonStyle(.borderless)
            }
            .padding()
            .background(.background)

            Divider()

            // Main content
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    // Input section
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Job Posting Text")
                            .font(.headline)

                        TextEditor(text: $jobPostingText)
                            .font(.body)
                            .frame(minHeight: 200, maxHeight: 300)
                            .scrollContentBackground(.hidden)
                            .multilineTextAlignment(.leading)
                            .background(.background)
                            .cornerRadius(6)
                            .overlay {
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color(nsColor: .separatorColor), lineWidth: 0.5)
                            }
                    }

                    // Progress indicator
                    if isParsing {
                        HStack(spacing: 12) {
                            ProgressView()
                                .controlSize(.small)

                            VStack(alignment: .leading, spacing: 4) {
                                Text(foundationModelService.parsingStatus)
                                    .font(.callout)

                                Text("\(Int(foundationModelService.parsingProgress * 100))%")
                                    .font(.caption)
                                    .foregroundStyle(.secondary)
                            }

                            Spacer()
                        }
                        .padding()
                        .background(.quaternary.opacity(0.5))
                        .cornerRadius(8)
                    }

                    // Results section
                    if let preview = parsedPreview {
                        VStack(alignment: .leading, spacing: 12) {
                            HStack {
                                Label("Parsing Results", systemImage: "checkmark.circle.fill")
                                    .font(.headline)
                                    .foregroundStyle(.green)

                                Spacer()

                                Text("\(Int(preview.confidenceScore * 100))% Confidence")
                                    .font(.caption)
                                    .foregroundStyle(preview.confidenceScore > 0.7 ? .green : .orange)
                            }

                            VStack(alignment: .leading, spacing: 8) {
                                ForEach(parseResultItems(from: preview), id: \.label) { item in
                                    HStack(alignment: .top, spacing: 12) {
                                        Text(item.label)
                                            .fontWeight(.medium)
                                            .frame(width: 120, alignment: .leading)

                                        Text(item.value)
                                            .foregroundStyle(.secondary)
                                            .textSelection(.enabled)

                                        Spacer()
                                    }
                                    .font(.callout)
                                }
                            }
                            .padding()
                            .background(.quaternary.opacity(0.3))
                            .cornerRadius(8)

                            if !preview.analysisNotes.isEmpty {
                                VStack(alignment: .leading, spacing: 8) {
                                    Label("Analysis Notes", systemImage: "lightbulb")
                                        .font(.subheadline)
                                        .fontWeight(.medium)

                                    EnhancedMarkdownView(markdown: preview.analysisNotes)
                                        .frame(minHeight: 80, maxHeight: 220)
                                }
                                .padding()
                                .background(.quaternary.opacity(0.3))
                                .cornerRadius(8)
                            }

                            if let coverLetter = preview.coverLetterMarkdown, !coverLetter.isEmpty {
                                VStack(alignment: .leading, spacing: 8) {
                                    Label("Cover Letter Outline", systemImage: "envelope")
                                        .font(.subheadline)
                                        .fontWeight(.medium)

                                    EnhancedMarkdownView(markdown: coverLetter)
                                        .frame(minHeight: 80, maxHeight: 240)
                                }
                                .padding()
                                .background(.quaternary.opacity(0.3))
                                .cornerRadius(8)
                            }
                        }
                    }
                }
                .padding()
            }

            Divider()

            // Bottom toolbar
            HStack {
                Button("Cancel", action: onCancel)
                    .keyboardShortcut(.escape)

                Spacer()

                Button("Parse") {
                    Task {
                        await parseJobPosting()
                    }
                }
                .buttonStyle(.borderedProminent)
                .disabled(jobPostingText.isEmpty || isParsing)
                .keyboardShortcut(.return)

                if parsedPreview != nil {
                    Button("Apply & Close") {
                        onApply()
                        onCancel()
                    }
                    .buttonStyle(.borderedProminent)
                }
            }
            .padding()
            .background(.background)
        }
        .frame(width: 700, height: 600)
        .alert("Parsing Error", isPresented: $showError) {
            Button("OK") { }
        } message: {
            Text(parsingError?.localizedDescription ?? "An unknown error occurred")
        }
    }

    private func parseJobPosting() async {
        isParsing = true
        parsingError = nil

        do {
            let parsed = try await foundationModelService.parseJobPosting(jobPostingText)
            parsedPreview = parsed
            parseConfidence = parsed.confidenceScore
        } catch {
            parsingError = error
            showError = true
        }

        isParsing = false
    }

    private func parseResultItems(from preview: SystemLanguageModelService.ParsedJobData) -> [(label: String, value: String)] {
        var items: [(label: String, value: String)] = []

        if let company = preview.companyName {
            items.append(("Company:", company))
        }

        if let title = preview.jobTitle {
            items.append(("Job Title:", title))
        }

        if let location = preview.location {
            items.append(("Location:", location))
        }

        if let workType = preview.workType {
            items.append(("Work Type:", workType))
        }

        items.append(("Job Type:", preview.jobType))

        if preview.salaryMin != nil || preview.salaryMax != nil {
            let formatter = NumberFormatter()
            formatter.numberStyle = .currency
            formatter.maximumFractionDigits = 0

            var salaryText = ""
            if let min = preview.salaryMin, let max = preview.salaryMax {
                salaryText = "\(formatter.string(from: NSNumber(value: min)) ?? "$0") - \(formatter.string(from: NSNumber(value: max)) ?? "$0")"
            } else if let min = preview.salaryMin {
                salaryText = "From \(formatter.string(from: NSNumber(value: min)) ?? "$0")"
            } else if let max = preview.salaryMax {
                salaryText = "Up to \(formatter.string(from: NSNumber(value: max)) ?? "$0")"
            }
            items.append(("Salary:", salaryText))
        }

        if !preview.requiredSkills.isEmpty {
            items.append(("Skills:", preview.requiredSkills.prefix(8).joined(separator: ", ")))
        }

        return items
    }
}

private struct FormInputFieldModifier: ViewModifier {
    @State private var isHovering = false

    func body(content: Content) -> some View {
        content
            .padding(.vertical, 8)
            .padding(.horizontal, 10)
            .background(
                RoundedRectangle(cornerRadius: 11, style: .continuous)
                    .fill(Color(nsColor: .textBackgroundColor))
            )
            .overlay(
                RoundedRectangle(cornerRadius: 11, style: .continuous)
                    .stroke(borderColor, lineWidth: 1)
            )
            .shadow(color: Color.black.opacity(isHovering ? 0.08 : 0.03), radius: isHovering ? 7 : 3, y: 2)
            .onHover { isHovering = $0 }
    }

    private var borderColor: Color {
        isHovering ? Color.accentColor.opacity(0.45) : Color(nsColor: .separatorColor).opacity(0.65)
    }
}

private struct SalaryInputFieldModifier: ViewModifier {
    @State private var isHovering = false

    func body(content: Content) -> some View {
        content
            .padding(.vertical, 8)
            .padding(.horizontal, 10)
            .background(
                RoundedRectangle(cornerRadius: 11, style: .continuous)
                    .fill(Color(nsColor: .selectedTextBackgroundColor).opacity(0.18))
            )
            .overlay(
                RoundedRectangle(cornerRadius: 11, style: .continuous)
                    .stroke(borderColor, lineWidth: 1)
            )
            .shadow(color: Color.black.opacity(isHovering ? 0.08 : 0.03), radius: isHovering ? 7 : 3, y: 2)
            .onHover { isHovering = $0 }
    }

    private var borderColor: Color {
        isHovering ? Color.accentColor.opacity(0.55) : Color(nsColor: .separatorColor).opacity(0.65)
    }
}

extension View {
    func formInputField() -> some View {
        modifier(FormInputFieldModifier())
    }

    func salaryInputField() -> some View {
        modifier(SalaryInputFieldModifier())
    }
}
