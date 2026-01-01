//
//  AddJobView.swift
//  CareerKit
//
//  Add job view following Apple Sample Code patterns
//

import SwiftUI
import SwiftData

struct AddJobView: View {
    @Environment(CareerDataModel.self) private var modelData
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var modelContext
    
    @Binding var isPresented: Bool
    
    // Form state
    @State private var companyName = ""
    @State private var jobTitle = ""
    @State private var location = ""
    @State private var jobDescription = ""
    @State private var notes = ""
    @State private var jobLink = ""
    @State private var status: JobStatus = .applied
    @State private var jobType: JobType = .fullTime
    @State private var remoteWorkType: RemoteWorkType = .onsite
    @State private var dateOfApplication = Date()
    @State private var jobDeadline: Date?
    @State private var salaryMin: String = ""
    @State private var salaryMax: String = ""
    @State private var salaryCurrency: SalaryCurrency = .usd
    @State private var salaryPeriod: SalaryPeriod = .yearly
    @State private var desiredSkills: [String] = []
    @State private var newSkill = ""
    @State private var isFavorite = false
    @State private var coverLetter = ""
    
    @State private var showingError = false
    @State private var errorMessage = ""
    
    var body: some View {
        NavigationStack {
            Form {
                // Basic Information Section
                Section("Basic Information") {
                    TextField("Company Name", text: $companyName)
                        .textFieldStyle(.roundedBorder)
                    
                    TextField("Job Title", text: $jobTitle)
                        .textFieldStyle(.roundedBorder)
                    
                    TextField("Location", text: $location)
                        .textFieldStyle(.roundedBorder)
                    
                    TextField("Job Link (Optional)", text: $jobLink)
                        .textFieldStyle(.roundedBorder)
                    
                    Picker("Status", selection: $status) {
                        ForEach(JobStatus.allCases, id: \.self) { status in
                            Text(status.rawValue).tag(status)
                        }
                    }
                    
                    Picker("Job Type", selection: $jobType) {
                        ForEach(JobType.allCases, id: \.self) { type in
                            Text(type.rawValue).tag(type)
                        }
                    }
                    
                    Picker("Work Type", selection: $remoteWorkType) {
                        ForEach(RemoteWorkType.allCases, id: \.self) { type in
                            Text(type.rawValue).tag(type)
                        }
                    }
                }
                
                // Dates Section
                Section("Dates") {
                    DatePicker("Application Date", selection: $dateOfApplication, displayedComponents: .date)
                    
                    DatePicker("Job Deadline", selection: Binding(
                        get: { jobDeadline ?? Date() },
                        set: { jobDeadline = $0 }
                    ), displayedComponents: .date)
                    
                    Button("Clear Deadline") {
                        jobDeadline = nil
                    }
                    .disabled(jobDeadline == nil)
                }
                
                // Salary Section
                Section("Salary") {
                    HStack {
                        TextField("Min", text: $salaryMin)
                            .textFieldStyle(.roundedBorder)
                        
                        Text("-")
                        
                        TextField("Max", text: $salaryMax)
                            .textFieldStyle(.roundedBorder)
                    }
                    
                    Picker("Currency", selection: $salaryCurrency) {
                        ForEach(SalaryCurrency.allCases, id: \.self) { currency in
                            Text(currency.rawValue).tag(currency)
                        }
                    }
                    
                    Picker("Period", selection: $salaryPeriod) {
                        ForEach(SalaryPeriod.allCases, id: \.self) { period in
                            Text(period.rawValue).tag(period)
                        }
                    }
                }
                
                // Skills Section
                Section("Skills") {
                    HStack {
                        TextField("Add Skill", text: $newSkill)
                            .textFieldStyle(.roundedBorder)
                        
                        Button("Add") {
                            if !newSkill.isEmpty && !desiredSkills.contains(newSkill) {
                                desiredSkills.append(newSkill)
                                newSkill = ""
                            }
                        }
                        .disabled(newSkill.isEmpty)
                    }
                    
                    if !desiredSkills.isEmpty {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(desiredSkills, id: \.self) { skill in
                                    HStack {
                                        Text(skill)
                                            .font(.caption)
                                        Button(action: {
                                            desiredSkills.removeAll { $0 == skill }
                                        }) {
                                            Image(systemName: "xmark.circle.fill")
                                                .foregroundColor(.secondary)
                                        }
                                        .buttonStyle(.plain)
                                    }
                                    .padding(.horizontal, 8)
                                    .padding(.vertical, 4)
                                    .background(Color.accentColor.opacity(0.1))
                                    .cornerRadius(8)
                                }
                            }
                        }
                    }
                }
                
                // Description Section
                Section("Description") {
                    TextEditor(text: $jobDescription)
                        .frame(minHeight: 100)
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.secondary.opacity(0.2), lineWidth: 1)
                        )
                }
                
                // Cover Letter Section
                Section("Cover Letter") {
                    TextEditor(text: $coverLetter)
                        .frame(minHeight: 100)
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.secondary.opacity(0.2), lineWidth: 1)
                        )
                }
                
                // Notes Section
                Section("Notes") {
                    TextEditor(text: $notes)
                        .frame(minHeight: 80)
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.secondary.opacity(0.2), lineWidth: 1)
                        )
                }
                
                // Additional Options Section
                Section("Options") {
                    Toggle("Mark as Favorite", isOn: $isFavorite)
                }
            }
            .navigationTitle("Add Job Application")
            .navigationSubtitle("Create a new job application")
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .confirmationAction) {
                    Button("Add") {
                        addJob()
                    }
                    .disabled(!isValidForm)
                }
            }
        }
        .frame(minWidth: 500, idealWidth: 600, maxWidth: 700,
               minHeight: 600, idealHeight: 800, maxHeight: .infinity)
        .alert("Error", isPresented: $showingError) {
            Button("OK", role: .cancel) { }
        } message: {
            Text(errorMessage)
        }
    }
    
    private var isValidForm: Bool {
        !companyName.isEmpty && !jobTitle.isEmpty
    }
    
    private func addJob() {
        guard isValidForm else { return }
        
        do {
            // Parse salary values
            let minSalary = parseSalary(salaryMin)
            let maxSalary = parseSalary(salaryMax)
            
            let newJob = SwiftDataJobApplication(
                companyName: companyName.trimmingCharacters(in: .whitespacesAndNewlines),
                jobTitle: jobTitle.trimmingCharacters(in: .whitespacesAndNewlines),
                status: status,
                dateOfApplication: dateOfApplication,
                location: location.trimmingCharacters(in: .whitespacesAndNewlines),
                linkToJobString: jobLink.isEmpty ? nil : jobLink.trimmingCharacters(in: .whitespacesAndNewlines),
                salaryMin: minSalary,
                salaryMax: maxSalary,
                salaryCurrency: salaryCurrency,
                salaryPeriod: salaryPeriod,
                jobDescription: jobDescription.trimmingCharacters(in: .whitespacesAndNewlines),
                coverLetter: coverLetter.trimmingCharacters(in: .whitespacesAndNewlines),
                notes: notes.trimmingCharacters(in: .whitespacesAndNewlines),
                isFavorite: isFavorite,
                jobType: jobType,
                desiredSkillNames: desiredSkills,
                jobDeadline: jobDeadline,
                remoteWorkType: remoteWorkType
            )
            
            modelContext.insert(newJob)
            try modelContext.save()
            
            // Update the model data - the filtered content will be updated automatically via observation
            
            dismiss()
            
        } catch {
            errorMessage = "Failed to save job application: \(error.localizedDescription)"
            showingError = true
        }
    }
    
    private func parseSalary(_ text: String) -> Double? {
        let cleaned = text
            .replacingOccurrences(of: "$", with: "")
            .replacingOccurrences(of: ",", with: "")
            .replacingOccurrences(of: "k", with: "000")
            .replacingOccurrences(of: "K", with: "000")
            .trimmingCharacters(in: .whitespacesAndNewlines)
        
        return Double(cleaned)
    }
}

#Preview {
    @Previewable @State var isPresented = true
    
    AddJobView(isPresented: $isPresented)
        .environment(CareerDataModel.preview)
        .frame(width: 600, height: 800)
}