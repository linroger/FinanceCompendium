//
//  AppleFoundationModelService.swift
//  CareerKit v2.0
//
//  On-device job parsing using Apple's Foundation Model and NaturalLanguage frameworks
//

import Foundation
import SwiftUI
import OSLog
import NaturalLanguage
import CoreML
import Combine

/// Service for job posting analysis using Apple's on-device ML capabilities
@MainActor
final class AppleFoundationModelService: ObservableObject {
    private let logger = Logger(subsystem: "com.careerkit.foundationmodel", category: "AppleFoundationModel")
    
    // Progress tracking
    @Published var parsingProgress: Double = 0.0
    @Published var parsingStatus: String = ""
    
    // Cancellation support
    private var currentParsingTask: Task<ParsedJobData, Error>?
    
    // NLP Components
    private let tagger = NLTagger(tagSchemes: [.nameType, .tokenType, .lemma])
    private let languageRecognizer = NLLanguageRecognizer()
    
    // MARK: - Enhanced Job Parsing Models
    
    struct ParsedJobData {
        let companyName: String?
        let jobTitle: String?
        let location: String?
        let salaryMin: Double?
        let salaryMax: Double?
        let requiredSkills: [String]
        let workType: String?
        let jobType: JobTypeEnum
        let requirements: [String]
        let benefits: [String]
        let formattedJobDescription: String
        let coverLetterMarkdown: String?
        let analysisNotes: String
        let confidenceScore: Double
    }
    
    enum JobTypeEnum: String, CaseIterable {
        case fullTime = "Full Time"
        case partTime = "Part Time"
        case internship = "Internship"

        static func normalize(from input: String) -> JobTypeEnum {
            let lowercased = input.lowercased()
            if lowercased.contains("intern") { return .internship }
            if lowercased.contains("part") { return .partTime }
            return .fullTime
        }
    }

    // MARK: - Error Types

    enum AppleFoundationModelError: LocalizedError {
        case emptyInput
        case parsingFailed(String)

        var errorDescription: String? {
            switch self {
            case .emptyInput:
                return "Job description is empty"
            case .parsingFailed(let details):
                return "Failed to parse job posting: \(details)"
            }
        }
    }

    // MARK: - On-Device Parsing Methods
    
    /// Parse a job posting using on-device NLP
    func parseJobPosting(_ jobDescription: String) async throws -> ParsedJobData {
        guard !jobDescription.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {
            throw AppleFoundationModelError.emptyInput
        }
        
        logger.info("Starting on-device job posting analysis")
        
        // Cancel any existing parsing task
        currentParsingTask?.cancel()
        
        // Reset progress
        parsingProgress = 0.0
        parsingStatus = "Analyzing text..."
        
        // Check if AI parsing is enabled
        guard SettingsManager.shared.enableAIParsing else {
            logger.info("AI parsing is disabled, using pattern extraction")
            return try await performPatternExtraction(jobDescription)
        }
        
        // Perform on-device extraction
        let task = Task { () -> ParsedJobData in
            return try await performOnDeviceExtraction(jobDescription)
        }
        
        currentParsingTask = task
        return try await task.value
    }
    
    // MARK: - On-Device Extraction
    
    private func performOnDeviceExtraction(_ jobDescription: String) async throws -> ParsedJobData {
        parsingStatus = "Detecting language..."
        parsingProgress = 0.1
        
        // Detect language
        languageRecognizer.processString(jobDescription)
        let detectedLanguage = languageRecognizer.dominantLanguage ?? .english
        logger.info("Detected language: \(detectedLanguage.rawValue)")
        
        parsingStatus = "Analyzing entities..."
        parsingProgress = 0.2
        
        // Extract named entities
        tagger.string = jobDescription
        let entities = extractNamedEntities(from: jobDescription)
        
        parsingStatus = "Extracting information..."
        parsingProgress = 0.4
        
        // Extract structured information
        let companyName = extractCompanyName(from: jobDescription, entities: entities)
        let jobTitle = extractJobTitle(from: jobDescription, entities: entities)
        let location = extractLocation(from: jobDescription, entities: entities)
        let salaryRange = extractSalaryRange(from: jobDescription)
        let workType = extractWorkType(from: jobDescription)
        let jobType = extractJobType(from: jobDescription)
        let requirements = extractRequirements(from: jobDescription)
        let benefits = extractBenefits(from: jobDescription)
        let skills = refineSkills(extractSkills(from: jobDescription, hints: requirements))
        
        parsingStatus = "Formatting results..."
        parsingProgress = 0.8
        
        // Format the job description
        let formattedDescription = formatJobDescription(jobDescription)
        
        // Generate analysis notes & cover letter guidance
        let analysisNotes = JobInsightsFormatter.analysis(
            company: companyName,
            title: jobTitle,
            salaryRange: salaryRange,
            skills: skills,
            workType: workType,
            requirements: requirements
        )
        
        let coverLetterDraft = generateCoverLetterDraft(
            company: companyName,
            title: jobTitle,
            requirements: requirements,
            skills: skills,
            workType: workType
        )
        
        // Calculate confidence score
        let confidenceScore = calculateConfidence(
            company: companyName,
            title: jobTitle,
            location: location,
            skills: skills
        )
        
        parsingStatus = "Complete"
        parsingProgress = 1.0
        
        return ParsedJobData(
            companyName: companyName,
            jobTitle: jobTitle,
            location: location,
            salaryMin: salaryRange.min,
            salaryMax: salaryRange.max,
            requiredSkills: skills,
            workType: workType,
            jobType: jobType,
            requirements: requirements,
            benefits: benefits,
            formattedJobDescription: formattedDescription,
            coverLetterMarkdown: coverLetterDraft,
            analysisNotes: analysisNotes,
            confidenceScore: confidenceScore
        )
    }
    
    // MARK: - Pattern-Based Extraction (Fallback)
    
    private func performPatternExtraction(_ jobDescription: String) async throws -> ParsedJobData {
        // Use the existing pattern-based extraction logic
        let companyName = extractCompanyNamePattern(from: jobDescription)
        let jobTitle = extractJobTitlePattern(from: jobDescription)
        let location = extractLocationPattern(from: jobDescription)
        let salaryRange = extractSalaryRange(from: jobDescription)
        let requirements = extractRequirements(from: jobDescription)
        let benefits = extractBenefits(from: jobDescription)
        let workType = extractWorkType(from: jobDescription)
        let jobType = extractJobType(from: jobDescription)
        let skills = refineSkills(extractSkills(from: jobDescription, hints: requirements))
        
        let formattedDescription = formatJobDescription(jobDescription)
        let analysisNotes = JobInsightsFormatter.analysis(
            company: companyName,
            title: jobTitle,
            salaryRange: salaryRange,
            skills: skills,
            workType: workType,
            requirements: requirements
        )
        
        let coverLetterDraft = generateCoverLetterDraft(
            company: companyName,
            title: jobTitle,
            requirements: requirements,
            skills: skills,
            workType: workType
        )
        
        let confidenceScore = calculateConfidence(
            company: companyName,
            title: jobTitle,
            location: location,
            skills: skills
        )
        
        return ParsedJobData(
            companyName: companyName,
            jobTitle: jobTitle,
            location: location,
            salaryMin: salaryRange.min,
            salaryMax: salaryRange.max,
            requiredSkills: skills,
            workType: workType,
            jobType: jobType,
            requirements: requirements,
            benefits: benefits,
            formattedJobDescription: formattedDescription,
            coverLetterMarkdown: coverLetterDraft,
            analysisNotes: analysisNotes,
            confidenceScore: confidenceScore
        )
    }
    
    // MARK: - Named Entity Extraction
    
    private func extractNamedEntities(from text: String) -> [String: [String]] {
        var entities: [String: [String]] = [
            "organizations": [],
            "places": [],
            "personalNames": []
        ]
        
        let range = text.startIndex..<text.endIndex
        tagger.enumerateTags(in: range, unit: .word, scheme: .nameType) { tag, tokenRange in
            if let tag = tag {
                let token = String(text[tokenRange])
                switch tag {
                case .organizationName:
                    entities["organizations"]?.append(token)
                case .placeName:
                    entities["places"]?.append(token)
                case .personalName:
                    entities["personalNames"]?.append(token)
                default:
                    break
                }
            }
            return true
        }
        
        return entities
    }
    
    // MARK: - Information Extraction Methods
    
    private func extractCompanyName(from text: String, entities: [String: [String]]) -> String? {
        // First try to use named entities
        if let organizations = entities["organizations"], !organizations.isEmpty {
            // Look for the most likely company name
            for org in organizations {
                if text.lowercased().contains(org.lowercased() + " is") ||
                   text.lowercased().contains("at " + org.lowercased()) ||
                   text.lowercased().contains("join " + org.lowercased()) {
                    return org
                }
            }
            return organizations.first
        }
        
        // Fall back to pattern matching
        return extractCompanyNamePattern(from: text)
    }
    
    private func extractJobTitle(from text: String, entities: [String: [String]]) -> String? {
        // Use pattern matching enhanced with entity recognition
        let lines = text.components(separatedBy: .newlines)
        let titleKeywords = [
            "engineer", "developer", "designer", "manager", "director", "analyst",
            "specialist", "coordinator", "lead", "senior", "junior", "intern",
            "associate", "executive", "consultant", "architect", "scientist"
        ]
        
        for line in lines.prefix(5) {
            let trimmed = line.trimmingCharacters(in: .whitespacesAndNewlines)
            let words = trimmed.lowercased().components(separatedBy: .whitespacesAndNewlines)
            
            for keyword in titleKeywords {
                if words.contains(keyword) && trimmed.count < 100 {
                    return trimmed
                }
            }
        }
        
        return nil
    }
    
    private func extractLocation(from text: String, entities: [String: [String]]) -> String? {
        // Try to use place entities first
        if let places = entities["places"], !places.isEmpty {
            // Look for city, state patterns
            let stateAbbreviations = Set(["CA", "NY", "TX", "FL", "WA", "IL", "MA", "CO", "OR", "VA"])
            
            for place in places {
                // Check if this place is followed by a state
                if let range = text.range(of: place) {
                    let afterPlace = String(text[range.upperBound...].prefix(10))
                    for state in stateAbbreviations {
                        if afterPlace.contains(state) {
                            return "\(place), \(state)"
                        }
                    }
                }
            }
            
            return places.first
        }
        
        // Fall back to pattern matching
        return extractLocationPattern(from: text)
    }
    
    // MARK: - Pattern-Based Extractors
    
    private func extractCompanyNamePattern(from text: String) -> String? {
        let patterns = [
            "company:\\s*([^\\n]+)",
            "employer:\\s*([^\\n]+)",
            "at\\s+([A-Z][\\w\\s&]+?)\\s+(?:is|we|,)",
            "join\\s+([A-Z][\\w\\s&]+?)\\s+(?:as|in|,)"
        ]
        
        for pattern in patterns {
            if let regex = try? NSRegularExpression(pattern: pattern, options: [.caseInsensitive]) {
                let matches = regex.matches(in: text, range: NSRange(text.startIndex..., in: text))
                if let match = matches.first, match.numberOfRanges > 1 {
                    let range = match.range(at: 1)
                    if let swiftRange = Range(range, in: text) {
                        return String(text[swiftRange]).trimmingCharacters(in: .whitespacesAndNewlines)
                    }
                }
            }
        }
        
        return nil
    }
    
    private func extractJobTitlePattern(from text: String) -> String? {
        // Similar to existing implementation
        let lines = text.components(separatedBy: .newlines)
        let titleKeywords = [
            "engineer", "developer", "designer", "manager", "director", "analyst",
            "specialist", "coordinator", "lead", "senior", "junior", "intern"
        ]
        
        for line in lines.prefix(3) {
            let trimmed = line.trimmingCharacters(in: .whitespacesAndNewlines)
            let lowercased = trimmed.lowercased()
            
            for keyword in titleKeywords {
                if lowercased.contains(keyword) && trimmed.count < 100 {
                    return trimmed
                }
            }
        }
        
        return nil
    }
    
    private func extractLocationPattern(from text: String) -> String? {
        let locationPatterns = [
            "location:\\s*([^\\n]+)",
            "based in\\s+([^\\n,]+)",
            "office in\\s+([^\\n,]+)"
        ]
        
        for pattern in locationPatterns {
            if let regex = try? NSRegularExpression(pattern: pattern, options: [.caseInsensitive]) {
                let matches = regex.matches(in: text, range: NSRange(text.startIndex..., in: text))
                if let match = matches.first, match.numberOfRanges > 1 {
                    let range = match.range(at: 1)
                    if let swiftRange = Range(range, in: text) {
                        let location = String(text[swiftRange]).trimmingCharacters(in: .whitespacesAndNewlines)
                        return formatLocation(location)
                    }
                }
            }
        }
        
        // Look for common city names
        let cities = ["New York", "San Francisco", "Los Angeles", "Chicago", "Boston", "Seattle", "Austin", "Denver"]
        for city in cities {
            if text.contains(city) {
                return city
            }
        }
        
        return nil
    }
    
    private func extractSalaryRange(from text: String) -> (min: Double?, max: Double?) {
        let salaryPatterns = [
            "\\$([0-9,]+)\\s*-\\s*\\$([0-9,]+)",
            "\\$([0-9,]+)k\\s*-\\s*\\$([0-9,]+)k",
            "salary\\s*range:?\\s*\\$([0-9,]+)\\s*-\\s*\\$([0-9,]+)"
        ]
        
        for pattern in salaryPatterns {
            if let regex = try? NSRegularExpression(pattern: pattern, options: [.caseInsensitive]) {
                let matches = regex.matches(in: text, range: NSRange(text.startIndex..., in: text))
                if let match = matches.first, match.numberOfRanges >= 3 {
                    let minRange = match.range(at: 1)
                    let maxRange = match.range(at: 2)
                    
                    if let minSwiftRange = Range(minRange, in: text),
                       let maxSwiftRange = Range(maxRange, in: text) {
                        let minString = String(text[minSwiftRange]).replacingOccurrences(of: ",", with: "")
                        let maxString = String(text[maxSwiftRange]).replacingOccurrences(of: ",", with: "")
                        
                        let minValue = Double(minString) ?? 0
                        let maxValue = Double(maxString) ?? 0
                        
                        // Handle 'k' notation
                        let multiplier = text[minSwiftRange].contains("k") || text[maxSwiftRange].contains("k") ? 1000 : 1
                        
                        return (minValue * Double(multiplier), maxValue * Double(multiplier))
                    }
                }
            }
        }
        
        return (nil, nil)
    }
    
    private func extractSkillsPattern(from text: String) -> [String] {
        let skillKeywords = [
            // Programming Languages
            "Swift", "SwiftUI", "Python", "JavaScript", "Java", "C++", "SQL", "React", "Angular",
            // General Skills
            "Machine Learning", "Data Analysis", "Project Management", "Communication",
            "Leadership", "Problem Solving", "Teamwork", "Agile", "Scrum"
        ]
        
        var extractedSkills: [String] = []
        let lowercaseText = text.lowercased()
        
        for skill in skillKeywords {
            if lowercaseText.contains(skill.lowercased()) {
                extractedSkills.append(skill)
            }
        }
        
        return extractedSkills
    }

    private func extractSkillPhrases(from text: String) -> [String] {
        let patterns = [
            "(?:experience|proficiency|expertise|knowledge|ability|background)\\s+(?:in|with|of|using)\\s+([^.;\\n]+)",
            "(?:strong|solid)\\s+(?:skills|ability)\\s+(?:in|with)\\s+([^.;\\n]+)"
        ]
        var results: [String] = []
        for pattern in patterns {
            guard let regex = try? NSRegularExpression(pattern: pattern, options: [.caseInsensitive]) else { continue }
            let matches = regex.matches(in: text, range: NSRange(text.startIndex..., in: text))
            for match in matches where match.numberOfRanges > 1 {
                let range = match.range(at: 1)
                if let swiftRange = Range(range, in: text) {
                    let snippet = String(text[swiftRange])
                    let components = snippet
                        .replacingOccurrences(of: "and", with: ",")
                        .components(separatedBy: CharacterSet(charactersIn: ",;|"))
                    for component in components {
                        if let clean = sanitizeSkillCandidate(component) {
                            results.append(clean)
                        }
                    }
                }
            }
        }
        return results
    }
    
    private func sanitizeSkillCandidate(_ raw: String, lemma: String? = nil) -> String? {
        var candidate = raw.trimmingCharacters(in: .whitespacesAndNewlines)
        candidate = candidate.trimmingCharacters(in: CharacterSet(charactersIn: "-•–·*"))
        candidate = candidate.replacingOccurrences(of: "\\s+", with: " ", options: .regularExpression)
        if candidate.isEmpty { return nil }
        var words = candidate.split(separator: " ").map { String($0) }
        guard !words.isEmpty else { return nil }
        let trailingStopWords: Set<String> = ["to", "for", "and", "with", "of", "in", "on", "at", "by"]
        while let last = words.last, trailingStopWords.contains(last.lowercased()) {
            words.removeLast()
        }
        guard !words.isEmpty else { return nil }
        let limited = words.prefix(3)
        let normalized = limited.joined(separator: " ")
        let lowercased = normalized.lowercased()
        guard lowercased.rangeOfCharacter(from: .letters) != nil else { return nil }
        if normalized.count < 3 { return nil }
        if normalized.allSatisfy({ $0.isNumber }) { return nil }
        if let lemma, lemma.count <= 2 { return nil }
        return normalized
    }
    
    private func extractSkills(from text: String, hints: [String] = []) -> [String] {
        // Use NLP + heuristics to find technical terms and skill phrases
        var skills: Set<String> = []
        
        // Seed with known keywords
        skills.formUnion(extractSkillsPattern(from: text))
        
        // Mine explicit phrases ("experience with", "proficiency in", etc.)
        extractSkillPhrases(from: text).forEach { skills.insert($0) }
        hints.forEach { line in
            extractSkillPhrases(from: line).forEach { skills.insert($0) }
        }
        
        // Use NLP lemmas to capture uppercase abbreviations / technologies
        let options: NLTagger.Options = [.omitWhitespace, .omitPunctuation, .joinNames]
        tagger.string = text
        
        tagger.enumerateTags(in: text.startIndex..<text.endIndex, unit: .word, scheme: .lemma, options: options) { tag, tokenRange in
            guard let lemma = tag?.rawValue else { return true }
            let token = String(text[tokenRange])
            if let normalized = sanitizeSkillCandidate(token, lemma: lemma) {
                skills.insert(normalized)
            }
            return true
        }
        
        return Array(skills).sorted()
    }

    private func refineSkills(_ skills: [String]) -> [String] {
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

        var results: [String] = []
        var seen = Set<String>()

        for skill in skills {
            let trimmed = skill.trimmingCharacters(in: .whitespacesAndNewlines)
            guard !trimmed.isEmpty else { continue }
            let normalized = trimmed.replacingOccurrences(of: "\\s+", with: " ", options: .regularExpression)
            let wordCount = normalized.split(whereSeparator: { $0.isWhitespace }).count
            guard wordCount <= 3 else { continue }
            let dedupeKey = normalized.lowercased()
            if disallowedExact.contains(dedupeKey) || disallowedContains.contains(where: { dedupeKey.contains($0) }) {
                continue
            }
            guard !seen.contains(dedupeKey) else { continue }
            seen.insert(dedupeKey)
            results.append(normalized)
            if results.count >= maxSkills {
                break
            }
        }

        return results
    }
    
    private func extractWorkType(from text: String) -> String? {
        let lowercased = text.lowercased()
        
        if lowercased.contains("remote") || lowercased.contains("work from home") {
            return "Remote"
        } else if lowercased.contains("hybrid") {
            return "Hybrid"
        } else if lowercased.contains("on-site") || lowercased.contains("onsite") || lowercased.contains("in-office") {
            return "On-site"
        }
        
        return nil
    }
    
    private func extractJobType(from text: String) -> JobTypeEnum {
        let lowercased = text.lowercased()
        
        if lowercased.contains("part-time") || lowercased.contains("part time") {
            return .partTime
        } else if lowercased.contains("internship") || lowercased.contains("intern") {
            return .internship
        }
        
        return .fullTime
    }
    
    private func extractRequirements(from text: String) -> [String] {
        var requirements: [String] = []
        let requirementIndicators = ["requirements:", "qualifications:", "must have:", "required:"]
        
        for indicator in requirementIndicators {
            if let range = text.lowercased().range(of: indicator) {
                let afterIndicator = String(text[range.upperBound...])
                let lines = afterIndicator.components(separatedBy: .newlines)
                
                for line in lines.prefix(10) {
                    let trimmed = line.trimmingCharacters(in: .whitespacesAndNewlines)
                    if trimmed.hasPrefix("•") || trimmed.hasPrefix("-") || trimmed.hasPrefix("*") {
                        let requirement = trimmed.dropFirst().trimmingCharacters(in: .whitespacesAndNewlines)
                        if !requirement.isEmpty && requirement.count < 200 {
                            requirements.append(requirement)
                        }
                    }
                    
                    if requirements.count >= 8 { break }
                }
                break
            }
        }
        
        return requirements
    }
    
    private func extractBenefits(from text: String) -> [String] {
        var benefits: [String] = []
        let benefitIndicators = ["benefits:", "perks:", "we offer:", "compensation:"]
        
        for indicator in benefitIndicators {
            if let range = text.lowercased().range(of: indicator) {
                let afterIndicator = String(text[range.upperBound...])
                let lines = afterIndicator.components(separatedBy: .newlines)
                
                for line in lines.prefix(8) {
                    let trimmed = line.trimmingCharacters(in: .whitespacesAndNewlines)
                    if trimmed.hasPrefix("•") || trimmed.hasPrefix("-") || trimmed.hasPrefix("*") {
                        let benefit = trimmed.dropFirst().trimmingCharacters(in: .whitespacesAndNewlines)
                        if !benefit.isEmpty && benefit.count < 150 {
                            benefits.append(benefit)
                        }
                    }
                    
                    if benefits.count >= 6 { break }
                }
                break
            }
        }
        
        return benefits
    }
    
    // MARK: - Helper Methods
    
    private func formatLocation(_ location: String) -> String {
        // Try to format as "City, State"
        let components = location.components(separatedBy: ",")
        if components.count >= 2 {
            let city = components[0].trimmingCharacters(in: .whitespacesAndNewlines)
            let state = components[1].trimmingCharacters(in: .whitespacesAndNewlines)
            return "\(city), \(state)"
        }
        return location
    }
    
    private func formatJobDescription(_ text: String) -> String {
        let cleaned = text.replacingOccurrences(of: "\r", with: "")
        let collapsed = cleaned.replacingOccurrences(of: "\n{3,}", with: "\n\n", options: .regularExpression)
        return collapsed.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    private func generateCoverLetterDraft(
        company: String?,
        title: String?,
        requirements: [String],
        skills: [String],
        workType: String?
    ) -> String? {
        guard company != nil || title != nil else { return nil }
        let introCompany = company ?? "the organization"
        let role = title ?? "this role"
        let responsibilities = requirements
            .map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
            .filter { !$0.isEmpty }
            .prefix(3)
        let highlights = responsibilities.map { "   - \($0)" }.joined(separator: "\n")
        let skillSnippet = skills.prefix(3).joined(separator: ", ")
        let workphrase = workType != nil ? " I am comfortable with the \(workType!.lowercased()) expectations mentioned." : ""
        var outline = "### Cover Letter Outline\n"
        outline += "1. **Opening** — Express enthusiasm for supporting **\(introCompany)** as a **\(role)** and reference how your background aligns with the mission.\n"
        if !highlights.isEmpty {
            outline += "2. **Impact Highlights** — Mirror the posting by touching on:\n\(highlights)\n"
        } else {
            outline += "2. **Impact Highlights** — Reference two recent projects that map to the stated responsibilities.\n"
        }
        let skillLine = skillSnippet.isEmpty ? "specialized domain knowledge" : "expertise in **\(skillSnippet)**"
        outline += "3. **Closing** — Reinforce \(skillLine) and articulate the value you can add.\(workphrase)"
        return outline
    }
    
    private func calculateConfidence(
        company: String?,
        title: String?,
        location: String?,
        skills: [String]
    ) -> Double {
        var score = 0.0
        var total = 0.0
        
        // Company name (25% weight)
        total += 0.25
        if company != nil {
            score += 0.25
        }
        
        // Job title (25% weight)
        total += 0.25
        if title != nil {
            score += 0.25
        }
        
        // Location (20% weight)
        total += 0.20
        if location != nil {
            score += 0.20
        }
        
        // Skills (30% weight)
        total += 0.30
        if !skills.isEmpty {
            let skillScore = min(Double(skills.count) / 5.0, 1.0) * 0.30
            score += skillScore
        }
        
        return score / total
    }
    
    // MARK: - Parsing Control
    
    func cancelParsing() {
        currentParsingTask?.cancel()
        currentParsingTask = nil
        parsingProgress = 0.0
        parsingStatus = "Cancelled"
        logger.info("Job parsing cancelled by user")
    }
    
    var isParsingInProgress: Bool {
        currentParsingTask != nil && !currentParsingTask!.isCancelled
    }
}

struct JobInsightsFormatter {
    static func analysis(
        company: String?,
        title: String?,
        salaryRange: (min: Double?, max: Double?),
        skills: [String],
        workType: String?,
        requirements: [String]
    ) -> String {
        var sections: [String] = []

        var snapshot: [String] = []
        if let company = company, !company.isEmpty {
            snapshot.append("- Employer: **\(company)**")
        }
        if let title = title, !title.isEmpty {
            snapshot.append("- Role: **\(title)** (\(determineJobLevel(title)))")
        }
        if let min = salaryRange.min, let max = salaryRange.max {
            snapshot.append("- Range: **$\(Int(min)) – $\(Int(max))** annually")
        }
        if let workType = workType, !workType.isEmpty {
            snapshot.append("- Work style: **\(workType)**")
        }
        if !snapshot.isEmpty {
            sections.append("### Opportunity Snapshot\n" + snapshot.joined(separator: "\n"))
        }

        let responsibilityBullets = requirements
            .map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
            .filter { !$0.isEmpty }
            .prefix(4)
            .map { "- \($0)" }
        if !responsibilityBullets.isEmpty {
            sections.append("### Key Responsibilities\n" + responsibilityBullets.joined(separator: "\n"))
        }

        var alignment: [String] = []
        let domains = detectFocusDomains(from: requirements)
        if !domains.isEmpty {
            alignment.append("- Emphasize experience in **\(domains.joined(separator: ", "))** when speaking with the team.")
        }
        if !skills.isEmpty {
            let highlighted = skills.prefix(4).joined(separator: ", ")
            alignment.append("- Highlight background with **\(highlighted)** to mirror the posting.")
        }
        if let workType = workType {
            alignment.append("- Confirm availability for the **\(workType.lowercased())** expectations noted in the ad.")
        }
        if !alignment.isEmpty {
            sections.append("### Alignment Tips\n" + alignment.joined(separator: "\n"))
        }

        return sections.joined(separator: "\n\n")
    }

    private static func determineJobLevel(_ title: String) -> String {
        let lowercased = title.lowercased()

        if lowercased.contains("senior") || lowercased.contains("sr") || lowercased.contains("lead") {
            return "Senior"
        } else if lowercased.contains("junior") || lowercased.contains("jr") || lowercased.contains("entry") {
            return "Junior"
        } else if lowercased.contains("principal") || lowercased.contains("staff") {
            return "Principal"
        } else if lowercased.contains("director") || lowercased.contains("vp") {
            return "Executive"
        } else if lowercased.contains("intern") {
            return "Internship"
        }

        return "Mid-Level"
    }

    private static func detectFocusDomains(from requirements: [String]) -> [String] {
        let domainKeywords: [String: [String]] = [
            "Finance": ["finance", "equity", "portfolio", "investment", "derivative", "commodit"],
            "AI": ["ai", "annotation", "model", "ml", "machine learning"],
            "Data Quality": ["label", "dataset", "quality", "review"],
            "Communication": ["communicat", "stakeholder", "present", "collaborate"]
        ]
        var hits: [String: Int] = [:]
        for requirement in requirements {
            let lower = requirement.lowercased()
            for (domain, keywords) in domainKeywords {
                if keywords.contains(where: { lower.contains($0) }) {
                    hits[domain, default: 0] += 1
                }
            }
        }
        return hits.sorted { $0.value > $1.value }.map { $0.key }.prefix(2).map { $0 }
    }
}
