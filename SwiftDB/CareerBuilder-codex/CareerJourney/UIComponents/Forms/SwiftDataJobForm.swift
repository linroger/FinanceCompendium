//
//  SwiftDataJobForm.swift
//  CareerKit
//
//  SwiftData-compatible job application form
//

import SwiftUI
import SwiftData
import AppKit

struct SwiftDataJobForm: View {
    @ObservedObject var viewModel: SwiftDataJobViewModel
    let onSave: () -> Void
    let onCancel: () -> Void
    let saveButtonTitle: String
    let jobStore: JobStore
    
    @FocusState private var focusedField: FormField?
    @State private var showingLocationPicker = false
    private let labelColumnWidth: CGFloat = 140

    private var salarySymbol: String { viewModel.salaryCurrency.symbol }
    private var salaryPeriodSuffix: String { viewModel.salaryPeriod.suffix }
    private var salaryPlaceholder: String {
        "\(salarySymbol)80,000 - \(salarySymbol)100,000 / \(salaryPeriodSuffix)"
    }
    private var salaryMinLabel: String { "Min (\(salarySymbol)/\(salaryPeriodSuffix))" }
    private var salaryMaxLabel: String { "Max (\(salarySymbol)/\(salaryPeriodSuffix))" }
    
    enum FormField {
        case companyName, jobTitle, location, salaryString, linkToJob, jobDescription, coverLetter, notes
    }
    
    var body: some View {
        VStack(spacing: 0) {
            // Header section with validation
            if !viewModel.validationErrors.isEmpty {
                ValidationErrorsView(errors: viewModel.validationErrors)
                    .padding(.bottom)
            }
            
            // Native macOS Form with proper sections
            Form {
                // Basic Information Section
                Section("Basic Information") {
                    LabeledContent("Company Name") {
                        TextField("Enter company name", text: $viewModel.companyName)
                            .textFieldStyle(.plain)
                            .formInputField()
                            .focused($focusedField, equals: .companyName)
                            .onChange(of: viewModel.companyName) { 
                                viewModel.validateInputs()
                            }
                    }
                    
                    LabeledContent("Job Title") {
                        TextField("Enter job title", text: $viewModel.jobTitle)
                            .textFieldStyle(.plain)
                            .formInputField()
                            .focused($focusedField, equals: .jobTitle)
                            .onChange(of: viewModel.jobTitle) { 
                                viewModel.validateInputs()
                            }
                    }
                    
                    LabeledContent("Location") {
                        HStack {
                            if jobStore.uniqueLocations.isEmpty {
                                TextField("Enter location", text: $viewModel.location)
                                    .textFieldStyle(.plain)
                                    .formInputField()
                                    .focused($focusedField, equals: .location)
                            } else {
                                Menu {
                                    ForEach(jobStore.uniqueLocations, id: \.self) { location in
                                        Button(location) {
                                            viewModel.location = location
                                            viewModel.validateInputs()
                                        }
                                    }
                                    
                                    Divider()
                                    
                                    Button("Custom Location...") {
                                        showingLocationPicker = true
                                    }
                                } label: {
                                    HStack {
                                        Text(viewModel.location.isEmpty ? "Select location" : viewModel.location)
                                            .foregroundColor(viewModel.location.isEmpty ? .secondary : .primary)
                                        Spacer()
                                        Image(systemName: "chevron.down")
                                            .foregroundColor(.secondary)
                                    }
                                }
                                .buttonStyle(.plain)
                                .formInputField()
                                .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            
                            Button(action: { showingLocationPicker = true }) {
                                Image(systemName: "plus.circle")
                            }
                            .buttonStyle(.borderless)
                        }
                    }
                    
                    LabeledContent("Application Date") {
                        DatePicker("", selection: $viewModel.dateOfApplication, displayedComponents: .date)
                            .datePickerStyle(.field)
                            .labelsHidden()
                    }
                    
                    LabeledContent("Status") {
                        Picker("Status", selection: $viewModel.status) {
                            ForEach(JobStatus.allCases, id: \.self) { status in
                                Text(status.rawValue).tag(status)
                            }
                        }
                        .pickerStyle(.menu)
                        .labelsHidden()
                    }
                }
                
                // Job Details Section
                Section("Job Details") {
                    LabeledContent("Job Type") {
                        Picker("Job Type", selection: $viewModel.jobType) {
                            ForEach(JobType.allCases, id: \.self) { type in
                                Text(type.rawValue).tag(type)
                            }
                        }
                        .pickerStyle(.segmented)
                        .labelsHidden()
                    }
                    
                    LabeledContent("Salary Range") {
                        VStack(alignment: .leading, spacing: 12) {
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

                            TextField("e.g., \(salaryPlaceholder)", text: $viewModel.salaryString)
                                .textFieldStyle(.plain)
                                .font(.system(.body, design: .monospaced))
                                .lineLimit(1)
                                .formInputField()
                                .focused($focusedField, equals: .salaryString)
                                .onChange(of: viewModel.salaryString) { _, _ in
                                    viewModel.validateInputs()
                                }

                            HStack(spacing: 12) {
                                salaryAmountField(title: salaryMinLabel, placeholder: "80,000", value: $viewModel.salaryMin)
                                salaryAmountField(title: salaryMaxLabel, placeholder: "100,000", value: $viewModel.salaryMax)
                            }
                        }
                        .padding(12)
                        .background(
                            RoundedRectangle(cornerRadius: 14, style: .continuous)
                                .fill(Color(nsColor: .controlBackgroundColor))
                        )
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    
                    LabeledContent("Job Posting Link") {
                        TextField("https://example.com/job-posting", text: $viewModel.linkToJobString)
                            .textFieldStyle(.plain)
                            .formInputField()
                            .focused($focusedField, equals: .linkToJob)
                            .onChange(of: viewModel.linkToJobString) { 
                                viewModel.validateInputs()
                            }
                    }
                    
                    LabeledContent("Application Deadline") {
                        VStack(alignment: .leading, spacing: 8) {
                            Toggle("Has deadline", isOn: Binding(
                                get: { viewModel.jobDeadline != nil },
                                set: { hasDeadline in
                                    if hasDeadline {
                                        viewModel.jobDeadline = Date().addingTimeInterval(7 * 24 * 60 * 60) // 1 week from now
                                    } else {
                                        viewModel.jobDeadline = nil
                                    }
                                }
                            ))
                            .toggleStyle(.checkbox)
                            
                            if viewModel.jobDeadline != nil {
                                DatePicker("Deadline", selection: Binding($viewModel.jobDeadline)!, displayedComponents: .date)
                                    .datePickerStyle(.compact)
                            }
                        }
                    }
                    
                    LabeledContent("Favorite") {
                        Toggle("Mark as Favorite", isOn: $viewModel.isFavorite)
                            .toggleStyle(.checkbox)
                    }
                }
                
                // Skills Section
                Section("Skills") {
                    SkillsEditor(
                        skills: $viewModel.desiredSkillNames,
                        availableSkills: jobStore.uniqueSkills,
                        placeholder: "Add required skills...",
                        onAdd: viewModel.addDesiredSkill,
                        onRemove: viewModel.removeDesiredSkill
                    )
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                // Description Section
                Section("Job Description") {
                    VStack(alignment: .leading, spacing: 8) {
                        HStack {
                            if viewModel.isAIParsing {
                                HStack(spacing: 8) {
                                    ProgressView()
                                        .scaleEffect(0.8)
                                    Text(viewModel.aiParsingProgress)
                                        .font(.caption)
                                        .foregroundColor(.secondary)
                                }
                            } else {
                                HStack(spacing: 8) {
                                    Spacer()
                                    
                                    Button(action: {
                                        pasteFromClipboard()
                                    }) {
                                        HStack(spacing: 4) {
                                            Image(systemName: "doc.on.clipboard")
                                            Text("Paste")
                                        }
                                        .font(.caption)
                                    }
                                    .buttonStyle(.bordered)
                                    .controlSize(.small)
                                    .help("Paste job description from clipboard")
                                    
                                    Button(action: {
                                        Task {
                                            await viewModel.processPastedJobPostingWithAI()
                                        }
                                    }) {
                                        HStack(spacing: 4) {
                                            Image(systemName: "doc.text.magnifyingglass")
                                            Text("Parse with AI")
                                        }
                                        .font(.caption)
                                    }
                                    .buttonStyle(.bordered)
                                    .controlSize(.small)
                                    .disabled(viewModel.jobDescription.isEmpty)
                                    .help("Parse job posting to extract information using AI")
                                }
                            }
                        }
                        
                        PlainMarkdownEditor(
                            text: $viewModel.jobDescription,
                            placeholder: "Paste or type the job description...",
                            minHeight: 150
                        )
                        .focused($focusedField, equals: .jobDescription)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                // Cover Letter Section
                Section("Cover Letter") {
                    PlainMarkdownEditor(
                        text: $viewModel.coverLetter,
                        placeholder: "Draft your cover letter...",
                        minHeight: 140
                    )
                    .focused($focusedField, equals: .coverLetter)
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                // Notes Section
                Section("Notes") {
                    PlainMarkdownEditor(
                        text: $viewModel.notes,
                        placeholder: "Add notes or analysis...",
                        minHeight: 120
                    )
                    .focused($focusedField, equals: .notes)
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
            .formStyle(.grouped)
            .labeledContentStyle(FormLabeledContentStyle(labelWidth: labelColumnWidth))
            
            // Action Buttons
            Divider()
            HStack {
                Button("Cancel", action: onCancel)
                    .buttonStyle(.bordered)
                    .keyboardShortcut(.escape)
                
                Spacer()
                
                Button(saveButtonTitle, action: onSave)
                    .buttonStyle(.borderedProminent)
                    .keyboardShortcut(.return, modifiers: .command)
                    .disabled(!viewModel.isInputValid)
            }
            .padding(.horizontal)
            .padding(.vertical, 12)
        }
        .sheet(isPresented: $showingLocationPicker) {
            LocationPickerView(selectedLocation: $viewModel.location)
        }
        .onAppear {
            focusedField = .companyName
        }
    }
    
    // MARK: - Helper Functions
    
    private func pasteFromClipboard() {
        let pasteboard = NSPasteboard.general
        if let clipboardContent = pasteboard.string(forType: .string),
           !clipboardContent.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            viewModel.jobDescription = clipboardContent
            Task {
                await viewModel.processPastedJobPostingWithAI()
            }
        }
    }

    private func salaryAmountField(title: String, placeholder: String, value: Binding<Double?>) -> some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title)
                .font(.caption)
                .foregroundColor(.secondary)
            TextField(placeholder, value: value, format: .number)
                .textFieldStyle(.plain)
                .font(.system(.body, design: .monospaced))
                .salaryInputField()
                .onChange(of: value.wrappedValue) { _, _ in
                    viewModel.validateInputs()
                }
        }
        .frame(maxWidth: .infinity)
    }
}

private struct PlainMarkdownEditor: View {
    @Binding var text: String
    let placeholder: String
    let minHeight: CGFloat
    @FocusState private var isFocused: Bool
    @State private var isHovering = false
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            TextEditor(text: $text)
                .font(.body)
                .multilineTextAlignment(.leading)
                .frame(minHeight: minHeight, maxHeight: minHeight + 180)
                .padding(8)
                .background(
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(Color(nsColor: .controlBackgroundColor))
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .stroke(borderColor, lineWidth: 1)
                )
                .shadow(color: Color.black.opacity(isFocused ? 0.08 : 0.03), radius: isFocused ? 6 : 3, y: 2)
                .scrollContentBackground(.hidden)
                .focused($isFocused)
                .onHover { isHovering = $0 }
            if text.isEmpty {
                Text(placeholder)
                    .font(.body)
                    .foregroundColor(.secondary)
                    .padding(.horizontal, 14)
                    .padding(.vertical, 12)
                    .allowsHitTesting(false)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }

    private var borderColor: Color {
        if isFocused {
            return Color.accentColor.opacity(0.7)
        }
        if isHovering {
            return Color.accentColor.opacity(0.35)
        }
        return Color(nsColor: .separatorColor).opacity(0.7)
    }
}

private struct FormLabeledContentStyle: LabeledContentStyle {
    var labelWidth: CGFloat

    func makeBody(configuration: Configuration) -> some View {
        HStack(alignment: .firstTextBaseline, spacing: 12) {
            configuration.label
                .foregroundColor(.secondary)
                .frame(width: labelWidth, alignment: .trailing)

            configuration.content
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.vertical, 4)
    }
}

// MARK: - Supporting Views

struct ValidationErrorsView: View {
    let errors: [String]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Image(systemName: "exclamationmark.triangle.fill")
                    .foregroundColor(.orange)
                Text("Please fix the following issues:")
                    .font(.subheadline)
                    .fontWeight(.medium)
            }
            
            ForEach(errors, id: \.self) { error in
                HStack {
                    Text("•")
                        .foregroundColor(.orange)
                    Text(error)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
        }
        .padding()
        .background(Color.orange.opacity(0.1))
        .cornerRadius(Theme.CornerRadius.medium)
        .padding(.horizontal)
    }
}

struct SkillsEditor: View {
    @Binding var skills: [String]
    let availableSkills: [String]
    let placeholder: String
    let onAdd: (String) -> Void
    let onRemove: (String) -> Void
    
    @State private var newSkill = ""
    @State private var showingSkillPicker = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            // Existing skills
            if !skills.isEmpty {
                FlowLayout(spacing: 6) {
                    ForEach(skills, id: \.self) { skill in
                        RemovableSkillChip(skill: skill) {
                            onRemove(skill)
                        }
                    }
                }
            }
            
            // Add new skill
            HStack {
                TextField(placeholder, text: $newSkill)
                    .textFieldStyle(.plain)
                    .formInputField()
                    .frame(maxWidth: .infinity)
                    .onSubmit {
                        addSkill()
                    }
                
                Button("Add") {
                    addSkill()
                }
                .disabled(newSkill.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty)
                
                if !availableSkills.isEmpty {
                    Button("Choose...") {
                        showingSkillPicker = true
                    }
                    .buttonStyle(.bordered)
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .sheet(isPresented: $showingSkillPicker) {
            SkillPickerView(
                availableSkills: availableSkills,
                selectedSkills: skills,
                onSelect: onAdd
            )
        }
    }
    
    private func addSkill() {
        let trimmed = newSkill.trimmingCharacters(in: .whitespacesAndNewlines)
        if !trimmed.isEmpty {
            onAdd(trimmed)
            newSkill = ""
        }
    }
}

struct RemovableSkillChip: View {
    let skill: String
    let onRemove: () -> Void
    
    var body: some View {
        HStack(spacing: 4) {
            Text(skill)
                .font(.caption)
            
            Button(action: onRemove) {
                Image(systemName: "xmark")
                    .font(.caption2)
            }
            .buttonStyle(.plain)
        }
        .padding(.horizontal, 8)
        .padding(.vertical, 4)
        .background(Color.accentColor.opacity(0.1))
        .foregroundColor(.accentColor)
        .cornerRadius(Theme.CornerRadius.small)
    }
}

struct LocationPickerView: View {
    @Binding var selectedLocation: String
    @Environment(\.dismiss) private var dismiss
    @State private var customLocation = ""
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Enter Location")
                .font(.headline)
            
            TextField("Enter custom location", text: $customLocation)
                .textFieldStyle(.roundedBorder)
            
            HStack {
                Button("Cancel") {
                    dismiss()
                }
                .buttonStyle(.bordered)
                
                Button("Add") {
                    selectedLocation = customLocation
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .disabled(customLocation.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty)
            }
        }
        .padding()
        .frame(width: 300, height: 150)
    }
}

struct SkillPickerView: View {
    let availableSkills: [String]
    let selectedSkills: [String]
    let onSelect: (String) -> Void
    @Environment(\.dismiss) private var dismiss
    
    var unselectedSkills: [String] {
        availableSkills.filter { !selectedSkills.contains($0) }
    }
    
    var body: some View {
        VStack {
            Text("Choose Skills")
                .font(.headline)
                .padding()
            
            List(unselectedSkills, id: \.self) { skill in
                Button(skill) {
                    onSelect(skill)
                    dismiss()
                }
                .buttonStyle(.plain)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            
            Button("Done") {
                dismiss()
            }
            .buttonStyle(.borderedProminent)
            .padding()
        }
        .frame(width: 300, height: 400)
    }
}
