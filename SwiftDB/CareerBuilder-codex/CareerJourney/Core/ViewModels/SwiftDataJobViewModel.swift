//
//  SwiftDataJobViewModel.swift
//  CareerKit
//
//  SwiftData-compatible view model for job application forms
//

import SwiftUI
import SwiftData
import Combine
import Foundation

/// SwiftData-compatible ObservableObject view model for job application management
@MainActor
final class SwiftDataJobViewModel: ObservableObject {
    // MARK: - Published Properties
    
    // Core Information
    @Published var companyName: String = ""
    @Published var jobTitle: String = ""
    @Published var location: String = ""
    @Published var dateOfApplication: Date = Date()
    @Published var status: JobStatus = .applied
    
    // Salary Information (stored as USD/year for charts; UI converts based on currency/period selection).
    @Published var salaryString: String = ""
    @Published var salaryMin: Double? = nil
    @Published var salaryMax: Double? = nil
    @Published var salaryCurrency: SalaryCurrency = .usd
    @Published var salaryPeriod: SalaryPeriod = .yearly
    @Published var jobType: JobType = .fullTime
    @Published var remoteWorkType: RemoteWorkType = .onsite

    // Additional Information
    @Published var linkToJobString: String = ""
    @Published var jobDescription: String = ""
    @Published var coverLetter: String = ""
    @Published var notes: String = ""
    @Published var desiredSkillNames: [String] = []
    @Published var jobDeadline: Date? = nil
    @Published var isFavorite: Bool = false
    
    // Location coordinates
    @Published var latitude: Double? = nil
    @Published var longitude: Double? = nil
    
    // Validation State
    @Published var isInputValid: Bool = false
    @Published var validationErrors: [String] = []
    
    // AI Parsing State
    @Published var isAIParsing: Bool = false
    @Published var aiParsingProgress: String = ""
    
    // Change Tracking
    private var originalJob: SwiftDataJobApplication?
    @Published var hasChanges: Bool = false

    // Foundation Model Service (macOS 26.0+) populates form fields from pasted descriptions.
    private var systemLMService: AnyObject?
    
    // MARK: - Initialization

    init() {
        if #available(macOS 26.0, *) {
            self.systemLMService = SystemLanguageModelService()
        }
        validateInputs()
    }
    
    init(from job: SwiftDataJobApplication) {
        if #available(macOS 26.0, *) {
            self.systemLMService = SystemLanguageModelService()
        }

        self.originalJob = job

        // Load data from job
        self.companyName = job.companyName
        self.jobTitle = job.jobTitle
        self.location = job.location
        self.dateOfApplication = job.dateOfApplication
        self.status = job.status
        self.salaryString = job.salaryString ?? ""
        self.salaryCurrency = job.salaryCurrency
        self.salaryPeriod = job.salaryPeriod
        self.salaryMin = job.salaryMin.map { SalaryConversion.fromUsdYearly(amount: $0, currency: salaryCurrency, period: salaryPeriod) }
        self.salaryMax = job.salaryMax.map { SalaryConversion.fromUsdYearly(amount: $0, currency: salaryCurrency, period: salaryPeriod) }
        self.jobType = job.jobType
        self.linkToJobString = job.linkToJobString ?? ""
        self.jobDescription = job.jobDescription
        self.coverLetter = job.coverLetter
        self.notes = job.notes
        self.desiredSkillNames = job.desiredSkillNames
        self.jobDeadline = job.jobDeadline
        self.isFavorite = job.isFavorite
        self.latitude = job.latitude
        self.longitude = job.longitude
        self.remoteWorkType = job.remoteWorkType

        validateInputs()
    }
    
    // MARK: - Validation
    
    func validateInputs() {
        validationErrors.removeAll()
        
        // Company name validation
        if companyName.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            validationErrors.append("Company name is required")
        } else if companyName.count < 2 {
            validationErrors.append("Company name must be at least 2 characters")
        }
        
        // Job title validation
        if jobTitle.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            validationErrors.append("Job title is required")
        } else if jobTitle.count < 2 {
            validationErrors.append("Job title must be at least 2 characters")
        }
        
        // Location validation
        if location.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            validationErrors.append("Location is required")
        }
        
        // URL validation
        if !linkToJobString.isEmpty && !isValidURL(linkToJobString) {
            validationErrors.append("Job link is not a valid URL")
        }
        
        // Salary validation
        if let salaryMin = salaryMin, let salaryMax = salaryMax {
            if salaryMin > salaryMax {
                validationErrors.append("Minimum salary cannot be greater than maximum salary")
            }
        }
        
        isInputValid = validationErrors.isEmpty
        updateChangeStatus()
    }
    
    // MARK: - Helper Methods
    
    private func isValidURL(_ urlString: String) -> Bool {
        guard !urlString.isEmpty else { return true }
        
        if let url = URL(string: urlString) {
            return url.scheme != nil && url.host != nil
        }
        
        // Try adding https://
        if let url = URL(string: "https://\(urlString)") {
            return url.host != nil
        }
        
        return false
    }
    
    private func updateChangeStatus() {
        guard let original = originalJob else {
            hasChanges = !companyName.isEmpty || !jobTitle.isEmpty || !location.isEmpty
            return
        }

        let originalMin = displaySalaryValue(original.salaryMin, currency: original.salaryCurrency, period: original.salaryPeriod)
        let originalMax = displaySalaryValue(original.salaryMax, currency: original.salaryCurrency, period: original.salaryPeriod)
        
        hasChanges = companyName != original.companyName ||
                    jobTitle != original.jobTitle ||
                    location != original.location ||
                    dateOfApplication != original.dateOfApplication ||
                    status != original.status ||
                    salaryString != (original.salaryString ?? "") ||
                    salaryMin != originalMin ||
                    salaryMax != originalMax ||
                    salaryCurrency != original.salaryCurrency ||
                    salaryPeriod != original.salaryPeriod ||
                    jobType != original.jobType ||
                    linkToJobString != (original.linkToJobString ?? "") ||
                    jobDescription != original.jobDescription ||
                    coverLetter != original.coverLetter ||
                    notes != original.notes ||
                    desiredSkillNames != original.desiredSkillNames ||
                    jobDeadline != original.jobDeadline ||
                    isFavorite != original.isFavorite ||
                    latitude != original.latitude ||
                    longitude != original.longitude ||
                    remoteWorkType != original.remoteWorkType
    }

    private func displaySalaryValue(_ amount: Double?, currency: SalaryCurrency, period: SalaryPeriod) -> Double? {
        guard let amount else { return nil }
        return SalaryConversion.fromUsdYearly(amount: amount, currency: currency, period: period)
    }
    
    // MARK: - Skill Management
    
    func addDesiredSkill(_ skill: String) {
        let trimmed = skill.trimmingCharacters(in: .whitespacesAndNewlines)
        if !trimmed.isEmpty && !desiredSkillNames.contains(trimmed) {
            desiredSkillNames.append(trimmed)
            validateInputs()
        }
    }
    
    func removeDesiredSkill(_ skill: String) {
        desiredSkillNames.removeAll { $0 == skill }
        validateInputs()
    }
    
    
    // MARK: - AI Parsing (System Language Model)

    @MainActor
    func processPastedJobPostingWithAI() async {
        guard !jobDescription.isEmpty else { return }

        isAIParsing = true
        aiParsingProgress = "Analyzing job posting with on-device AI..."

        do {
            guard #available(macOS 26.0, *),
                  let service = systemLMService as? SystemLanguageModelService else {
                aiParsingProgress = "AI parsing requires macOS 26.0 or later"
                try await Task.sleep(nanoseconds: 1_000_000_000)
                isAIParsing = false
                return
            }

            let parsedData = try await service.parseJobPosting(jobDescription)

            aiParsingProgress = "Applying extracted company information..."
            if let company = parsedData.companyName?.trimmingCharacters(in: .whitespacesAndNewlines), !company.isEmpty {
                companyName = company
            }

            aiParsingProgress = "Applying job title..."
            if let title = parsedData.jobTitle?.trimmingCharacters(in: .whitespacesAndNewlines), !title.isEmpty {
                jobTitle = title
            }

            aiParsingProgress = "Applying location..."
            if let loc = parsedData.location?.trimmingCharacters(in: .whitespacesAndNewlines), !loc.isEmpty {
                location = loc
            }

            aiParsingProgress = "Applying salary details..."
            salaryCurrency = .usd
            salaryPeriod = .yearly
            if let minSal = parsedData.salaryMin {
                salaryMin = minSal
            }

            if let maxSal = parsedData.salaryMax {
                salaryMax = maxSal
            }

            if parsedData.salaryMin != nil || parsedData.salaryMax != nil {
                salaryString = formatSalaryString(min: parsedData.salaryMin, max: parsedData.salaryMax)
            }

            aiParsingProgress = "Applying key skills..."
            if !parsedData.requiredSkills.isEmpty {
                desiredSkillNames = parsedData.requiredSkills
            }

            if let workType = parsedData.workType?.lowercased() {
                switch workType {
                case "remote": remoteWorkType = .remote
                case "hybrid": remoteWorkType = .hybrid
                case "on-site", "onsite": remoteWorkType = .onsite
                default: break
                }
            }

            switch parsedData.jobType.lowercased() {
            case "full time":
                jobType = .fullTime
            case "part time":
                jobType = .partTime
            case "internship":
                jobType = .internship
            default:
                break
            }

            if let description = parsedData.formattedJobDescription?.trimmingCharacters(in: .whitespacesAndNewlines), !description.isEmpty {
                // Keep the user's pasted description intact unless the formatter stayed close to the original text.
                jobDescription = selectJobDescription(original: jobDescription, candidate: description)
            }

            if let coverLetterMarkdown = parsedData.coverLetterMarkdown?.trimmingCharacters(in: .whitespacesAndNewlines), !coverLetterMarkdown.isEmpty {
                coverLetter = normalizedMarkdownBlock(coverLetterMarkdown)
            }

            let analysis = parsedData.analysisNotes.trimmingCharacters(in: .whitespacesAndNewlines)
            if !analysis.isEmpty {
                notes = normalizedMarkdownBlock(analysis)
            }

            aiParsingProgress = "Parsing complete! ✓"
            try await Task.sleep(nanoseconds: 300_000_000)

        } catch {
            aiParsingProgress = "Parsing failed: \(error.localizedDescription)"
            try? await Task.sleep(nanoseconds: 1_000_000_000)
        }

        isAIParsing = false
        validateInputs()
    }

    private func formatSalaryString(min: Double?, max: Double?) -> String {
        let symbol = salaryCurrency.symbol
        let suffix = "/\(salaryPeriod.suffix)"
        let displayMin = min.map { SalaryConversion.fromUsdYearly(amount: $0, currency: salaryCurrency, period: salaryPeriod) }
        let displayMax = max.map { SalaryConversion.fromUsdYearly(amount: $0, currency: salaryCurrency, period: salaryPeriod) }

        switch (displayMin, displayMax) {
        case let (min?, max?):
            return String(format: "%@%.0f - %@%.0f %@", symbol, min, symbol, max, suffix)
        case let (min?, nil):
            return String(format: "%@%.0f %@", symbol, min, suffix)
        case let (nil, max?):
            return String(format: "%@%.0f %@", symbol, max, suffix)
        default:
            return salaryString
        }
    }

    // MARK: - Data Export
    
    func createJob() -> SwiftDataJobApplication {
        let normalizedDescription = normalizedMarkdownBlock(jobDescription)
        let normalizedCoverLetter = normalizedMarkdownBlock(coverLetter)
        let normalizedNotes = normalizedMarkdownBlock(notes)
        jobDescription = normalizedDescription
        coverLetter = normalizedCoverLetter
        notes = normalizedNotes

        let normalizedMin = normalizedSalary(salaryMin)
        let normalizedMax = normalizedSalary(salaryMax)

        let job = SwiftDataJobApplication(
            companyName: companyName.trimmingCharacters(in: .whitespacesAndNewlines),
            jobTitle: jobTitle.trimmingCharacters(in: .whitespacesAndNewlines),
            status: status,
            dateOfApplication: dateOfApplication,
            location: location,
            linkToJobString: linkToJobString.isEmpty ? nil : linkToJobString,
            salaryString: salaryString.isEmpty ? nil : salaryString,
            salaryMin: normalizedMin,
            salaryMax: normalizedMax,
            salaryCurrency: salaryCurrency,
            salaryPeriod: salaryPeriod,
            jobDescription: normalizedDescription,
            coverLetter: normalizedCoverLetter,
            notes: normalizedNotes,
            isFavorite: isFavorite,
            jobType: jobType,
            desiredSkillNames: desiredSkillNames,
            jobDeadline: jobDeadline,
            latitude: latitude,
            longitude: longitude,
            remoteWorkType: remoteWorkType
        )

        return job
    }
    
    func updateJob(_ job: SwiftDataJobApplication) {
        let locationChanged = job.location != location
        job.companyName = companyName.trimmingCharacters(in: .whitespacesAndNewlines)
        job.jobTitle = jobTitle.trimmingCharacters(in: .whitespacesAndNewlines)
        job.location = location
        if locationChanged {
            job.normalizedLocation = nil
            job.latitude = nil
            job.longitude = nil
        }
        job.dateOfApplication = dateOfApplication
        job.status = status
        job.salaryString = salaryString.isEmpty ? nil : salaryString
        job.salaryMin = normalizedSalary(salaryMin)
        job.salaryMax = normalizedSalary(salaryMax)
        job.salaryCurrency = salaryCurrency
        job.salaryPeriod = salaryPeriod
        job.jobType = jobType
        job.linkToJobString = linkToJobString.isEmpty ? nil : linkToJobString
        job.jobDescription = normalizedMarkdownBlock(jobDescription)
        job.coverLetter = normalizedMarkdownBlock(coverLetter)
        job.notes = normalizedMarkdownBlock(notes)
        job.isFavorite = isFavorite
        job.desiredSkillNames = desiredSkillNames
        job.jobDeadline = jobDeadline
        job.latitude = latitude
        job.longitude = longitude
        job.remoteWorkType = remoteWorkType
    }

    private func normalizedSalary(_ amount: Double?) -> Double? {
        guard let amount else { return nil }
        return SalaryConversion.toUsdYearly(amount: amount, currency: salaryCurrency, period: salaryPeriod)
    }

    private func normalizedMarkdownBlock(_ text: String) -> String {
        let trimmed = text.replacingOccurrences(of: "\r", with: "")
            .trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmed.isEmpty else { return "" }
        let collapsed = trimmed.replacingOccurrences(of: "\n{3,}", with: "\n\n", options: .regularExpression)
        return collapsed
    }

    private func selectJobDescription(original: String, candidate: String) -> String {
        let normalizedOriginal = normalizedMarkdownBlock(original)
        let normalizedCandidate = normalizedMarkdownBlock(candidate)
        guard !normalizedOriginal.isEmpty else { return normalizedCandidate }

        let originalTokens = tokenSet(for: normalizedOriginal)
        let candidateTokens = tokenSet(for: normalizedCandidate)
        let sharedTokens = originalTokens.intersection(candidateTokens)
        let coverage = originalTokens.isEmpty ? 1.0 : Double(sharedTokens.count) / Double(originalTokens.count)
        let lengthRatio = normalizedCandidate.isEmpty ? 0.0 : Double(normalizedCandidate.count) / Double(normalizedOriginal.count)

        if coverage < 0.8 || lengthRatio < 0.7 || lengthRatio > 1.3 {
            return normalizedOriginal
        }
        return normalizedCandidate
    }

    private func tokenSet(for text: String) -> Set<String> {
        let lowered = text.lowercased()
        let cleaned = lowered.unicodeScalars.map { scalar in
            CharacterSet.alphanumerics.contains(scalar) ? String(scalar) : " "
        }.joined()
        let tokens = cleaned.split(whereSeparator: { $0.isWhitespace })
        return Set(tokens.map { String($0) })
    }
}
