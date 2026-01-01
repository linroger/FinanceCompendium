//
//  SystemLanguageModelService.swift
//  CareerJourney
//
//  On-device job parsing using Apple's Foundation Models (SystemLanguageModel)
//  with @Generable for type-safe structured generation
//

import Foundation
import SwiftUI
import OSLog
#if canImport(FoundationModels)
import FoundationModels
#endif

/// Service for job posting analysis using Apple's on-device SystemLanguageModel
@available(macOS 26.0, *)
@MainActor
final class SystemLanguageModelService: ObservableObject {
    private let logger = Logger(subsystem: "com.careerjourney.systemlm", category: "SystemLanguageModel")
    // Fallback keeps parsing available when Apple Intelligence isn't available or fails.
    private let fallbackService = AppleFoundationModelService()

    // Progress tracking
    @Published var parsingProgress: Double = 0.0
    @Published var parsingStatus: String = ""

    // Cancellation support
    private var currentParsingTask: Task<ParsedJobData, Error>?

    // MARK: - Generable Job Data Model

    /// Structured job data model using @Generable for type-safe LLM generation
    #if canImport(FoundationModels)
    @available(macOS 26.0, *)
    @Generable(description: "Extract structured information from a job posting")
    #endif
    struct ParsedJobData {
        #if canImport(FoundationModels)
        @available(macOS 26.0, *)
        @Guide(description: "The name of the company or organization hiring")
        #endif
        var companyName: String?

        #if canImport(FoundationModels)
        @available(macOS 26.0, *)
        @Guide(description: "The job title or position being offered")
        #endif
        var jobTitle: String?

        #if canImport(FoundationModels)
        @available(macOS 26.0, *)
        @Guide(description: "Job location in 'City, State' format or 'Remote'")
        #endif
        var location: String?

        #if canImport(FoundationModels)
        @available(macOS 26.0, *)
        @Guide(description: "Minimum annual salary in USD as a number, without commas or currency symbols")
        #endif
        var salaryMin: Double?

        #if canImport(FoundationModels)
        @available(macOS 26.0, *)
        @Guide(description: "Maximum annual salary in USD as a number, without commas or currency symbols")
        #endif
        var salaryMax: Double?

        #if canImport(FoundationModels)
        @available(macOS 26.0, *)
        @Guide(description: "Return 5-10 required skills as short phrases (≤3 words). Only include concrete tools, methods, or domain expertise explicitly mentioned; omit soft skills.")
        #endif
        var requiredSkills: [String]

        #if canImport(FoundationModels)
        @available(macOS 26.0, *)
        @Guide(description: "Work arrangement type: 'Remote', 'Hybrid', or 'On-site'")
        #endif
        var workType: String?

        #if canImport(FoundationModels)
        @available(macOS 26.0, *)
        @Guide(description: "Employment type: 'Full Time', 'Part Time', or 'Internship'")
        #endif
        var jobType: String

        #if canImport(FoundationModels)
        @available(macOS 26.0, *)
        @Guide(description: "List of job requirements or qualifications")
        #endif
        var requirements: [String]

        #if canImport(FoundationModels)
        @available(macOS 26.0, *)
        @Guide(description: "List of benefits or perks offered")
        #endif
        var benefits: [String]

        #if canImport(FoundationModels)
        @available(macOS 26.0, *)
        @Guide(description: "Markdown-formatted job description that preserves the original wording and order; only normalize whitespace and line breaks, do not paraphrase or add new headings")
        #endif
        var formattedJobDescription: String?

        #if canImport(FoundationModels)
        @available(macOS 26.0, *)
        @Guide(description: "Markdown outline (3 sections) for a tailored cover letter referencing the organization and its primary responsibilities")
        #endif
        var coverLetterMarkdown: String?

        #if canImport(FoundationModels)
        @available(macOS 26.0, *)
        @Guide(description: "Markdown summary with headings referencing the company/role, standout responsibilities, and how to align your experience")
        #endif
        var analysisNotes: String

        #if canImport(FoundationModels)
        @available(macOS 26.0, *)
        @Guide(description: "Confidence score for extraction quality from 0.0 to 1.0")
        #endif
        var confidenceScore: Double
    }

    // MARK: - System Language Model Parsing

    /// Parse a job posting using SystemLanguageModel with guided generation.
    /// JobViewModel/SwiftDataJobViewModel call this to populate Add/Edit forms; fallback keeps parsing available.
    func parseJobPosting(_ jobDescription: String) async throws -> ParsedJobData {
        guard !jobDescription.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {
            throw SystemLMError.emptyInput
        }

        // JobViewModel/SwiftDataJobViewModel call this to fill in Add/Edit job forms.
        logger.info("Starting SystemLanguageModel job parsing")

        // Cancel any existing parsing task
        currentParsingTask?.cancel()

        // Reset progress
        parsingProgress = 0.0
        parsingStatus = "Initializing language model..."

        // Check if AI parsing is enabled in settings
        guard SettingsManager.shared.enableAIParsing else {
            logger.info("AI parsing is disabled in settings")
            throw SystemLMError.parsingDisabled
        }

        // Check SystemLanguageModel availability and fall back if needed
        #if canImport(FoundationModels)
        let model = SystemLanguageModel.default
        let availability = model.availability
        if case .available = availability {
            let task = Task { () -> ParsedJobData in
                try await performSystemLMParsing(jobDescription)
            }

            currentParsingTask = task
            return try await task.value
        } else {
            logger.warning("SystemLanguageModel unavailable (\(String(describing: availability))). Falling back to on-device heuristics.")
            return try await performFallbackParsing(jobDescription, reason: availability)
        }
        #else
        logger.info("FoundationModels not available. Falling back to heuristics.")
        return try await performFallbackParsing(jobDescription, reason: "FoundationModels not available")
        #endif
    }

    // MARK: - SystemLanguageModel Extraction

    private func performFallbackParsing(_ jobDescription: String, reason: Any?) async throws -> ParsedJobData {
        if let reason {
            let reasonString = String(describing: reason)
            logger.info("Falling back to AppleFoundationModelService. Reason: \(reasonString, privacy: .public)")
        }

        parsingStatus = "Using enhanced on-device parser..."
        parsingProgress = 0.2

        do {
            let fallbackResult = try await fallbackService.parseJobPosting(jobDescription)
            parsingStatus = "Formatting results..."
            parsingProgress = 0.7
            let converted = convertFallbackResult(fallbackResult)
            parsingStatus = "Complete ✓"
            parsingProgress = 1.0
            return validateAndNormalize(converted)
        } catch {
            logger.error("Fallback parser failed: \(error.localizedDescription)")
            parsingStatus = "Parsing failed"
            throw SystemLMError.generationFailed(error.localizedDescription)
        }
    }

    private func convertFallbackResult(_ data: AppleFoundationModelService.ParsedJobData) -> ParsedJobData {
        ParsedJobData(
            companyName: data.companyName,
            jobTitle: data.jobTitle,
            location: data.location,
            salaryMin: data.salaryMin,
            salaryMax: data.salaryMax,
            requiredSkills: data.requiredSkills,
            workType: data.workType,
            jobType: data.jobType.rawValue,
            requirements: data.requirements,
            benefits: data.benefits,
            formattedJobDescription: data.formattedJobDescription,
            coverLetterMarkdown: data.coverLetterMarkdown,
            analysisNotes: data.analysisNotes,
            confidenceScore: data.confidenceScore
        )
    }

    private func performSystemLMParsing(_ jobDescription: String) async throws -> ParsedJobData {
        #if canImport(FoundationModels)
        parsingStatus = "Creating language model session..."
        parsingProgress = 0.1

        // Create a LanguageModelSession with instructions
        let session = LanguageModelSession(instructions: """
            You are an expert job posting analyzer.
            Extract accurate, structured information from job descriptions.
            Preserve the original job description wording and order when formatting it.
            Do not paraphrase, summarize, or reorder; only normalize whitespace and line breaks.
            If you cannot preserve wording, return the original text unchanged.
            Be precise with numbers and avoid hallucinations.
            """
        )

        parsingStatus = "Analyzing job posting with on-device AI..."
        parsingProgress = 0.3

        parsingStatus = "Generating structured output..."
        parsingProgress = 0.5

        do {
            // Use guided generation with @Generable type
            let response = try await session.respond(
                generating: ParsedJobData.self,
                includeSchemaInPrompt: true,
                options: GenerationOptions()
            ) {
                """
                Analyze the following job posting and extract structured information.

                Job Posting:
                \(jobDescription)

                Extract:
                - Company name
                - Job title
                - Location (format as "City, State" or "Remote")
                - Salary range (minimum and maximum as numbers without commas)
                - Required skills (5-10 items; each entry ≤3 words focusing on tangible tools/domains; exclude soft skills like communication/leadership)
                - Work type (Remote, Hybrid, or On-site)
                - Job type (Full Time, Part Time, or Internship)
                - Key requirements (list)
                - Benefits offered (list)
                - Markdown-ready cover letter outline referencing the organization and primary responsibilities
                - Job-specific Markdown analysis with headings (e.g., "Opportunity Snapshot", "Alignment Tips") referencing responsibilities, finance/tooling focus areas, salary, and work expectations
                - A lightly formatted Markdown version of the job description that preserves the original wording and order (no paraphrasing or summarizing; only normalize whitespace/line breaks)
                - If preserving wording is not possible, return the original job description unchanged in formattedJobDescription
                - Confidence score (0.0-1.0) based on clarity of the posting
                """
            }

            parsingStatus = "Validating extracted data..."
            parsingProgress = 0.8

            // Access the structured result
            let parsedData = response.content

            // Validate and normalize the extracted data
            let validatedData = validateAndNormalize(parsedData)

            parsingStatus = "Complete ✓"
            parsingProgress = 1.0

            logger.info("SystemLanguageModel parsing completed successfully")
            logger.info("Extracted company: \(validatedData.companyName ?? "N/A")")
            logger.info("Extracted title: \(validatedData.jobTitle ?? "N/A")")
            logger.info("Confidence: \(validatedData.confidenceScore)")

            return validatedData

        } catch let error as LanguageModelSession.GenerationError {
            logger.error("SystemLanguageModel generation error: \(error.localizedDescription). Falling back.")
            return try await performFallbackParsing(jobDescription, reason: error)
        } catch {
            logger.error("SystemLanguageModel parsing failed: \(error.localizedDescription). Falling back.")
            return try await performFallbackParsing(jobDescription, reason: error)
        }
        #else
        // Fall back if FoundationModels not available
        return try await performFallbackParsing(jobDescription, reason: "FoundationModels not available at compile time")
        #endif
    }

    // MARK: - Data Validation & Normalization

    private func validateAndNormalize(_ data: ParsedJobData) -> ParsedJobData {
        var normalized = data

        // Normalize formatted description
        if let formatted = normalized.formattedJobDescription?.trimmingCharacters(in: .whitespacesAndNewlines), !formatted.isEmpty {
            normalized.formattedJobDescription = formatted
        } else {
            normalized.formattedJobDescription = nil
        }

        if let coverLetter = normalized.coverLetterMarkdown?.trimmingCharacters(in: .whitespacesAndNewlines), !coverLetter.isEmpty {
            normalized.coverLetterMarkdown = coverLetter
        } else {
            normalized.coverLetterMarkdown = nil
        }

        // Normalize job type
        if let jobType = normalizeJobType(data.jobType) {
            normalized.jobType = jobType
        }

        // Normalize work type
        if let workType = normalizeWorkType(data.workType) {
            normalized.workType = workType
        }

        // Ensure salary min < max
        if let min = normalized.salaryMin, let max = normalized.salaryMax, min > max {
            // Swap them
            normalized.salaryMin = max
            normalized.salaryMax = min
        }

        // Clamp confidence score
        normalized.confidenceScore = max(0.0, min(1.0, data.confidenceScore))

        // Normalize and deduplicate skills into short phrases
        normalized.requiredSkills = normalizeSkills(data.requiredSkills)

        normalized.analysisNotes = refinedAnalysis(
            summary: data.analysisNotes,
            company: data.companyName,
            title: data.jobTitle,
            salary: (data.salaryMin, data.salaryMax),
            skills: normalized.requiredSkills,
            workType: data.workType,
            requirements: data.requirements
        )

        return normalized
    }

    private func normalizeSkills(_ skills: [String]) -> [String] {
        var results: [String] = []
        var seen = Set<String>()
        let separatorSet = CharacterSet(charactersIn: ",;/|\n")
        let sentenceTrimSet = CharacterSet(charactersIn: ".!?\"'")
        let maxSkills = 10
        let disallowedExact: Set<String> = [
            "communication",
            "teamwork",
            "collaboration",
            "leadership",
            "problem solving",
            "problem-solving",
            "organizational",
            "organization",
            "time management",
            "self starter",
            "self-starter",
            "attention to detail",
            "detail oriented",
            "detail-oriented",
            "critical thinking",
            "interpersonal",
            "work ethic",
            "adaptability",
            "flexibility"
        ]
        let disallowedContains = [
            "communication",
            "teamwork",
            "collaboration",
            "leadership",
            "self starter",
            "self-starter",
            "detail",
            "organizational",
            "interpersonal",
            "work ethic",
            "problem solving",
            "critical thinking",
            "experience",
            "knowledge",
            "ability",
            "skills",
            "background",
            "degree"
        ]
        let disallowedPrefixes = [
            "strong ability",
            "strong passion",
            "must possess",
            "must have",
            "outstanding communication",
            "excellent communication",
            "interpersonal",
            "organizational",
            "analytical",
            "experience with",
            "experience in",
            "knowledge of",
            "ability to"
        ]

        for skill in skills {
            let fragments = skill.components(separatedBy: separatorSet)
            for fragment in fragments {
                var candidate = fragment.trimmingCharacters(in: .whitespacesAndNewlines)
                candidate = candidate.trimmingCharacters(in: sentenceTrimSet)
                guard !candidate.isEmpty else { continue }

                let words = candidate.split(whereSeparator: { $0.isWhitespace })
                guard !words.isEmpty else { continue }
                guard words.count <= 3 else { continue }

                var limitedWords = words.prefix(3).map { String($0) }
                let trailingStopWords: Set<String> = ["to", "for", "and", "with", "of", "in", "on", "at", "by"]
                while let last = limitedWords.last, trailingStopWords.contains(last.lowercased()) {
                    limitedWords.removeLast()
                }
                guard !limitedWords.isEmpty else { continue }
                let normalized = limitedWords.joined(separator: " ")
                let dedupeKey = normalized.lowercased()

                if disallowedPrefixes.contains(where: { dedupeKey.hasPrefix($0) }) {
                    continue
                }

                if disallowedExact.contains(dedupeKey) || disallowedContains.contains(where: { dedupeKey.contains($0) }) {
                    continue
                }

                if dedupeKey.contains("master") || dedupeKey.contains("phd") {
                    continue
                }

                if normalized.count > 2 && !seen.contains(dedupeKey) {
                    seen.insert(dedupeKey)
                    results.append(normalized)
                    if results.count >= maxSkills {
                        return results
                    }
                }
            }
        }

        return results
    }

    private func refinedAnalysis(
        summary: String,
        company: String?,
        title: String?,
        salary: (Double?, Double?),
        skills: [String],
        workType: String?,
        requirements: [String]
    ) -> String {
        let trimmed = summary.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmed.isEmpty else {
            return JobInsightsFormatter.analysis(
                company: company,
                title: title,
                salaryRange: salary,
                skills: skills,
                workType: workType,
                requirements: requirements
            )
        }

        let mentionsCompany = company.map { trimmed.localizedCaseInsensitiveContains($0) } ?? false
        let mentionsTitle = title.map { trimmed.localizedCaseInsensitiveContains($0) } ?? false

        if trimmed.count < 140 || (!mentionsCompany && !mentionsTitle) {
            return JobInsightsFormatter.analysis(
                company: company,
                title: title,
                salaryRange: salary,
                skills: skills,
                workType: workType,
                requirements: requirements
            )
        }

        return trimmed
    }

    private func normalizeJobType(_ jobType: String) -> String? {
        let lowercased = jobType.lowercased()
        if lowercased.contains("full") || lowercased.contains("ft") {
            return "Full Time"
        } else if lowercased.contains("part") || lowercased.contains("pt") {
            return "Part Time"
        } else if lowercased.contains("intern") {
            return "Internship"
        }
        return jobType // Return as-is if can't normalize
    }

    private func normalizeWorkType(_ workType: String?) -> String? {
        guard let workType = workType else { return nil }
        let lowercased = workType.lowercased()
        if lowercased.contains("remote") {
            return "Remote"
        } else if lowercased.contains("hybrid") {
            return "Hybrid"
        } else if lowercased.contains("on-site") || lowercased.contains("onsite") || lowercased.contains("office") {
            return "On-site"
        }
        return workType
    }

    // MARK: - Parsing Control

    func cancelParsing() {
        currentParsingTask?.cancel()
        currentParsingTask = nil
        parsingProgress = 0.0
        parsingStatus = "Cancelled"
        logger.info("SystemLanguageModel parsing cancelled by user")
    }

    var isParsingInProgress: Bool {
        guard let task = currentParsingTask else { return false }
        return !task.isCancelled
    }
}

// MARK: - Error Types

enum SystemLMError: LocalizedError {
    case emptyInput
    case parsingDisabled
    case modelUnavailable
    case generationFailed(String)

    var errorDescription: String? {
        switch self {
        case .emptyInput:
            return "Job description is empty"
        case .parsingDisabled:
            return "AI parsing is disabled in settings"
        case .modelUnavailable:
            return "SystemLanguageModel is not available on this device. Requires macOS 26.0+ with Apple Intelligence."
        case .generationFailed(let details):
            return "Failed to generate structured output: \(details)"
        }
    }
}
