//
//  JobViewModel.swift
//  CareerKit
//
//  View model for job application forms following @Observable pattern
//

import SwiftUI
import SwiftData
import Foundation

/// Modern @Observable view model for job application management
@Observable @MainActor
final class JobViewModel {
    // MARK: - Observable Properties
    
    // Core Information
    var companyName: String = ""
    var jobTitle: String = ""
    var location: String = ""
    var applicationDate: Date = Date()
    var status: JobStatus = .applied
    
    // Salary Information (stored as USD/year for analytics; UI converts based on currency/period selection).
    var salaryMin: String = ""
    var salaryMax: String = ""
    var salaryCurrency: SalaryCurrency = .usd
    var salaryPeriod: SalaryPeriod = .yearly
    var remoteWorkType: RemoteWorkType = .onsite
    
    // Additional Information
    var jobLink: String = ""
    var jobDescription: String = ""
    var coverLetter: String = ""
    var notes: String = ""
    var skills: [String] = []
    var jobType: JobType = .fullTime
    
    // Validation State
    var isInputValid: Bool = false
    var validationErrors: [String] = []
    
    // AI Parsing State
    var isAIParsing: Bool = false
    var aiParsingProgress: String = ""
    
    // Change Tracking
    private var originalJob: SwiftDataJobApplication?
    var hasChanges: Bool = false
    
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
        self.applicationDate = job.dateOfApplication
        self.status = job.status
        self.salaryCurrency = job.salaryCurrency
        self.salaryPeriod = job.salaryPeriod
        self.salaryMin = job.salaryMin.map {
            String(format: "%.0f", SalaryConversion.fromUsdYearly(amount: $0, currency: salaryCurrency, period: salaryPeriod))
        } ?? ""
        self.salaryMax = job.salaryMax.map {
            String(format: "%.0f", SalaryConversion.fromUsdYearly(amount: $0, currency: salaryCurrency, period: salaryPeriod))
        } ?? ""
        self.remoteWorkType = job.remoteWorkType
        self.jobLink = job.linkToJobString ?? ""
        self.jobDescription = job.jobDescription
        self.coverLetter = job.coverLetter
        self.notes = job.notes
        self.skills = job.desiredSkillNames
        self.jobType = job.jobType
        
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
        if !jobLink.isEmpty && !isValidURL(jobLink) {
            validationErrors.append("Job link is not a valid URL")
        }
        
        // Salary validation
        if !salaryMin.isEmpty {
            if Double(salaryMin.replacingOccurrences(of: ",", with: "")) == nil {
                validationErrors.append("Minimum salary must be a valid number")
            }
        }
        
        if !salaryMax.isEmpty {
            if Double(salaryMax.replacingOccurrences(of: ",", with: "")) == nil {
                validationErrors.append("Maximum salary must be a valid number")
            }
        }
        
        // Check salary range
        if let minSal = parseSalary(salaryMin),
           let maxSal = parseSalary(salaryMax),
           minSal > maxSal {
            validationErrors.append("Minimum salary cannot be greater than maximum salary")
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
    
    private func parseSalary(_ salaryString: String) -> Double? {
        let cleanedString = salaryString
            .replacingOccurrences(of: "$", with: "")
            .replacingOccurrences(of: "¥", with: "")
            .replacingOccurrences(of: "rmb", with: "", options: .caseInsensitive)
            .replacingOccurrences(of: ",", with: "")
            .replacingOccurrences(of: "k", with: "000")
            .replacingOccurrences(of: "K", with: "000")
            .trimmingCharacters(in: .whitespacesAndNewlines)
        
        return Double(cleanedString)
    }
    
    private func updateChangeStatus() {
        guard let original = originalJob else {
            hasChanges = !companyName.isEmpty || !jobTitle.isEmpty || !location.isEmpty
            return
        }

        let originalMin = displaySalaryValue(original.salaryMin, currency: original.salaryCurrency, period: original.salaryPeriod)
        let originalMax = displaySalaryValue(original.salaryMax, currency: original.salaryCurrency, period: original.salaryPeriod)
        let originalMinText = originalMin.map { String(format: "%.0f", $0) } ?? ""
        let originalMaxText = originalMax.map { String(format: "%.0f", $0) } ?? ""
        
        hasChanges = companyName != original.companyName ||
                    jobTitle != original.jobTitle ||
                    location != original.location ||
                    applicationDate != original.dateOfApplication ||
                    status != original.status ||
                    salaryMin != originalMinText ||
                    salaryMax != originalMaxText ||
                    salaryCurrency != original.salaryCurrency ||
                    salaryPeriod != original.salaryPeriod ||
                    remoteWorkType != original.remoteWorkType ||
                    jobLink != (original.linkToJobString ?? "") ||
                    jobDescription != original.jobDescription ||
                    coverLetter != original.coverLetter ||
                    notes != original.notes ||
                    skills != original.desiredSkillNames
    }

    private func displaySalaryValue(_ amount: Double?, currency: SalaryCurrency, period: SalaryPeriod) -> Double? {
        guard let amount else { return nil }
        return SalaryConversion.fromUsdYearly(amount: amount, currency: currency, period: period)
    }
    
    // MARK: - AI Parsing (SystemLanguageModel)

    // AI parser feeds structured fields into the form while keeping descriptions close to user input.
    private var systemLMService: AnyObject?

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
            
            // Update fields with parsed data (overwrites existing values)
            aiParsingProgress = "Extracting company information..."
            if let company = parsedData.companyName {
                companyName = company
            }

            aiParsingProgress = "Extracting job title..."
            if let title = parsedData.jobTitle {
                jobTitle = title
            }

            aiParsingProgress = "Extracting location..."
            if let loc = parsedData.location {
                location = loc
            }

            aiParsingProgress = "Extracting salary information..."
            salaryCurrency = .usd
            salaryPeriod = .yearly
            if let minSal = parsedData.salaryMin {
                salaryMin = String(format: "%.0f", minSal)
            }

            if let maxSal = parsedData.salaryMax {
                salaryMax = String(format: "%.0f", maxSal)
            }

            aiParsingProgress = "Extracting skills..."
            if !parsedData.requiredSkills.isEmpty {
                skills = parsedData.requiredSkills
            }
            
            // Set remote work type if detected
            if let workType = parsedData.workType {
                switch workType.lowercased() {
                case "remote":
                    remoteWorkType = .remote
                case "hybrid":
                    remoteWorkType = .hybrid
                case "on-site", "onsite":
                    remoteWorkType = .onsite
                default:
                    break
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
            
            // Brief delay to show completion message
            try await Task.sleep(nanoseconds: 500_000_000) // 0.5 seconds
            
        } catch {
            aiParsingProgress = "Parsing failed: \(error.localizedDescription)"
            
            // Brief delay to show error message
            try? await Task.sleep(nanoseconds: 1_000_000_000) // 1 second
        }
        
        isAIParsing = false
        validateInputs()
    }
    
    // MARK: - Skill Management
    
    func addSkill(_ skill: String) {
        let trimmed = skill.trimmingCharacters(in: .whitespacesAndNewlines)
        if !trimmed.isEmpty && !skills.contains(trimmed) {
            skills.append(trimmed)
            validateInputs()
        }
    }
    
    func removeSkill(_ skill: String) {
        skills.removeAll { $0 == skill }
        validateInputs()
    }
    
    // MARK: - Data Export
    
    func createJob() -> SwiftDataJobApplication {
        let normalizedDescription = normalizedMarkdownBlock(jobDescription)
        let normalizedCoverLetter = normalizedMarkdownBlock(coverLetter)
        let normalizedNotes = normalizedMarkdownBlock(notes)
        jobDescription = normalizedDescription
        coverLetter = normalizedCoverLetter
        notes = normalizedNotes

        let normalizedMin = normalizedSalary(from: salaryMin)
        let normalizedMax = normalizedSalary(from: salaryMax)
        
        let job = SwiftDataJobApplication(
            companyName: companyName.trimmingCharacters(in: .whitespacesAndNewlines),
            jobTitle: jobTitle.trimmingCharacters(in: .whitespacesAndNewlines),
            status: status,
            dateOfApplication: applicationDate,
            location: location,
            linkToJobString: jobLink.isEmpty ? nil : jobLink,
            salaryString: nil,
            salaryMin: normalizedMin,
            salaryMax: normalizedMax,
            salaryCurrency: salaryCurrency,
            salaryPeriod: salaryPeriod,
            jobDescription: normalizedDescription,
            coverLetter: normalizedCoverLetter,
            notes: normalizedNotes,
            isFavorite: false,
            jobType: jobType,
            desiredSkillNames: skills,
            jobDeadline: nil,
            remoteWorkType: remoteWorkType
        )
        
        return job
    }

    func applyChanges(to job: SwiftDataJobApplication) {
        let normalizedDescription = normalizedMarkdownBlock(jobDescription)
        let normalizedCoverLetter = normalizedMarkdownBlock(coverLetter)
        let normalizedNotes = normalizedMarkdownBlock(notes)

        job.companyName = companyName.trimmingCharacters(in: .whitespacesAndNewlines)
        job.jobTitle = jobTitle.trimmingCharacters(in: .whitespacesAndNewlines)
        let locationChanged = job.location != location
        job.location = location
        if locationChanged {
            job.normalizedLocation = nil
            job.latitude = nil
            job.longitude = nil
        }
        job.dateOfApplication = applicationDate
        job.status = status
        job.salaryMin = normalizedSalary(from: salaryMin)
        job.salaryMax = normalizedSalary(from: salaryMax)
        job.salaryCurrency = salaryCurrency
        job.salaryPeriod = salaryPeriod
        job.remoteWorkType = remoteWorkType
        job.linkToJobString = jobLink.isEmpty ? nil : jobLink
        job.jobDescription = normalizedDescription
        job.coverLetter = normalizedCoverLetter
        job.notes = normalizedNotes
        job.desiredSkillNames = skills
        job.jobType = jobType
    }

    func normalizeMarkdown(_ text: String) -> String {
        normalizedMarkdownBlock(text)
    }
    
    private func normalizedMarkdownBlock(_ text: String) -> String {
        let trimmed = text.replacingOccurrences(of: "\r", with: "").trimmingCharacters(in: .whitespacesAndNewlines)
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

    private func normalizedSalary(from input: String) -> Double? {
        guard let parsed = parseSalary(input) else { return nil }
        return SalaryConversion.toUsdYearly(amount: parsed, currency: salaryCurrency, period: salaryPeriod)
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
