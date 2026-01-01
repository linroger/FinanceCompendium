//
//  LegacyDataMigrationService.swift
//  CareerKit v2.0
//
//  Service for migrating legacy backup data to current format
//

import Foundation
import SwiftData
import OSLog

/// Service for handling legacy data migration from older CareerKit versions
@MainActor
final class LegacyDataMigrationService {
    // JobStore uses this service to normalize backup JSON into SwiftData models.
    private let logger = Logger(subsystem: "com.careerkit.migration", category: "LegacyMigration")
    private let modelContext: ModelContext
    private var existingJobIDs: Set<UUID> = []
    private var existingJobSignatures: Set<String> = []
    private var existingJobLinks: Set<String> = []
    
    init(modelContext: ModelContext) {
        self.modelContext = modelContext
        refreshExistingJobFingerprints()
    }
    
    // MARK: - Backup Data Model (Modern Format)

    struct BackupData: Decodable {
        let version: String?
        let exportDate: String?
        let jobs: [[String: AnyCodable]]

        enum CodingKeys: String, CodingKey {
            case version, exportDate, jobs
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            version = try container.decodeIfPresent(String.self, forKey: .version)
            exportDate = try container.decodeIfPresent(String.self, forKey: .exportDate)
            jobs = try container.decode([[String: AnyCodable]].self, forKey: .jobs)
        }
    }

    // Helper type for decoding arbitrary JSON
    struct AnyCodable: Decodable {
        let value: Any

        init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let bool = try? container.decode(Bool.self) {
                value = bool
            } else if let int = try? container.decode(Int.self) {
                value = int
            } else if let double = try? container.decode(Double.self) {
                value = double
            } else if let string = try? container.decode(String.self) {
                value = string
            } else if let array = try? container.decode([AnyCodable].self) {
                value = array.map { $0.value }
            } else if let dict = try? container.decode([String: AnyCodable].self) {
                value = dict.mapValues { $0.value }
            } else if container.decodeNil() {
                value = NSNull()
            } else {
                throw DecodingError.typeMismatch(Any.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Unsupported type"))
            }
        }
    }

    // MARK: - Legacy Job Model (Old Format)

    struct LegacyJob: Decodable {
        let id: String
        let companyName: String
        let jobTitle: String
        let status: String
        let dateOfApplication: String
        let location: String?
        let linkToJobString: String?
        let salaryString: String?
        let salaryMin: Double?
        let salaryMax: Double?
        let jobDescription: String?
        let coverLetter: String?
        let notes: String?
        let isFavorite: Bool?
        let jobType: String?
        let desiredSkillNames: [String]?
        let crossJobSkillNames: [String]?
        // Ignore documents for now since they're complex and empty in the backup
        let jobDeadline: String?
    }
    
    // MARK: - Migration Methods
    
    /// Attempts to import data from a URL, automatically detecting the format
    func importData(from url: URL) async throws -> ImportResult {
        logger.info("Starting data import from: \(url.lastPathComponent)")
        
        let data = try Data(contentsOf: url)
        
        // Try to detect the format
        if let format = detectBackupFormat(data) {
            logger.info("Detected backup format: \(String(describing: format))")
            
            switch format {
            case .legacy:
                return try await importLegacyFormat(data)
            case .modern:
                return try await importModernFormat(data)
            }
        } else {
            throw LegacyMigrationError.unsupportedFormat
        }
    }
    
    /// Detects the backup format from the data
    private func detectBackupFormat(_ data: Data) -> BackupFormat? {
        // Try parsing as modern format first (has version field)
        if let _ = try? JSONDecoder().decode(BackupData.self, from: data) {
            return .modern
        }
        if let jsonObject = try? JSONSerialization.jsonObject(with: data, options: []),
           let dict = jsonObject as? [String: Any],
           dict["jobs"] != nil {
            return .modern
        }
        
        // Try parsing as legacy format (array of jobs)
        if let _ = try? JSONDecoder().decode([LegacyJob].self, from: data) {
            return .legacy
        }
        
        // Try parsing as single legacy job
        if let _ = try? JSONDecoder().decode(LegacyJob.self, from: data) {
            return .legacy
        }

        if let jsonObject = try? JSONSerialization.jsonObject(with: data, options: []),
           let array = jsonObject as? [[String: Any]],
           array.first?["companyName"] != nil || array.first?["jobTitle"] != nil {
            return .legacy
        }
        
        return nil
    }
    
    /// Imports legacy format data
    private func importLegacyFormat(_ data: Data) async throws -> ImportResult {
        logger.info("Importing legacy format data")
        
        var importedJobs = 0
        var skippedJobs = 0
        var errors: [String] = []
        
        // Try to parse as array first
        var legacyJobs: [LegacyJob] = []

        if let jobArray = try? JSONDecoder().decode([LegacyJob].self, from: data) {
            legacyJobs = jobArray
        } else if let singleJob = try? JSONDecoder().decode(LegacyJob.self, from: data) {
            legacyJobs = [singleJob]
        } else if let dictArray = decodeDictionaryArray(data) {
            logger.info("Found \(dictArray.count) dictionary-based legacy jobs to import")
            return try await importJobDictionaries(dictArray, format: .legacy, sourceDescription: "legacy dictionary array")
        } else {
            throw LegacyMigrationError.parseError("Unable to parse legacy job data")
        }
        
        if !legacyJobs.isEmpty {
            logger.info("Found \(legacyJobs.count) legacy jobs to import")

            for legacyJob in legacyJobs {
                do {
                    let migratedJob = try migrateLegacyJob(legacyJob)
                    guard shouldImport(migratedJob) else {
                        logger.info("Skipping duplicate legacy job \(legacyJob.id)")
                        skippedJobs += 1
                        continue
                    }
                    modelContext.insert(migratedJob)
                    register(job: migratedJob)
                    importedJobs += 1
                } catch {
                    logger.error("Failed to migrate job \(legacyJob.id): \(error.localizedDescription)")
                    errors.append("Job \(legacyJob.companyName) - \(legacyJob.jobTitle): \(error.localizedDescription)")
                    skippedJobs += 1
                }
            }
        }
        
        // Save all migrated jobs
        try modelContext.save()
        
        return ImportResult(
            importedJobs: importedJobs,
            skippedJobs: skippedJobs,
            errors: errors,
            format: .legacy
        )
    }
    
    /// Migrates a single legacy job to the modern format
    private func migrateLegacyJob(_ legacy: LegacyJob) throws -> SwiftDataJobApplication {
        // Parse the date
        let dateOfApplication = parseLegacyDate(legacy.dateOfApplication) ?? Date()
        
        // Parse the status
        let status = JobStatus.normalize(legacy.status)
        
        // Parse job type
        let jobType = JobType.normalize(legacy.jobType ?? "Full Time")
        
        // Combine skill arrays
        var allSkills: [String] = []
        if let desiredSkills = legacy.desiredSkillNames {
            allSkills.append(contentsOf: desiredSkills)
        }
        if let crossSkills = legacy.crossJobSkillNames {
            allSkills.append(contentsOf: crossSkills)
        }
        // Remove duplicates
        allSkills = Array(Set(allSkills))
        
        // Create the migrated job
        let job = SwiftDataJobApplication(
            id: UUID(uuidString: legacy.id) ?? UUID(),
            companyName: legacy.companyName,
            jobTitle: legacy.jobTitle,
            status: status,
            dateOfApplication: dateOfApplication,
            location: legacy.location ?? "",
            linkToJobString: legacy.linkToJobString,
            salaryString: legacy.salaryString,
            salaryMin: legacy.salaryMin,
            salaryMax: legacy.salaryMax,
            jobDescription: legacy.jobDescription ?? "",
            coverLetter: legacy.coverLetter ?? "",
            notes: legacy.notes ?? "",
            isFavorite: legacy.isFavorite ?? false,
            jobType: jobType,
            desiredSkillNames: allSkills,
            jobDeadline: nil,
            latitude: nil,
            longitude: nil,
            remoteWorkType: determineRemoteWorkType(from: legacy.location)
        )
        
        logger.info("Successfully migrated job: \(job.companyName) - \(job.jobTitle)")
        return job
    }
    
    /// Imports modern format data
    private func importModernFormat(_ data: Data) async throws -> ImportResult {
        logger.info("Importing modern format data")
        
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        
        let jobsPayload: [[String: Any]]
        if let backup = try? decoder.decode(BackupData.self, from: data) {
            // Convert from [[String: AnyCodable]] to [[String: Any]]
            jobsPayload = backup.jobs.map { dict in
                dict.mapValues { $0.value }
            }
        } else {
            jobsPayload = try decodeLooseModernBackup(data)
        }
        
        return try await importJobDictionaries(jobsPayload, format: .modern, sourceDescription: "modern backup")
    }

    func importJobDictionaries(
        _ jobsPayload: [[String: Any]],
        format: BackupFormat,
        sourceDescription: String? = nil
    ) async throws -> ImportResult {
        var importedJobs = 0
        var skippedJobs = 0
        var errors: [String] = []

        if let sourceDescription {
            logger.info("Importing \(jobsPayload.count) jobs from \(sourceDescription)")
        }

        for jobDict in jobsPayload {
            if let job = SwiftDataJobApplication.fromDictionary(jobDict) {
                guard shouldImport(job) else {
                    skippedJobs += 1
                    errors.append("Duplicate job skipped: \(job.companyName) - \(job.jobTitle)")
                    continue
                }
                modelContext.insert(job)
                register(job: job)
                importedJobs += 1
            } else {
                skippedJobs += 1
                errors.append("Failed to parse job from dictionary")
            }
        }

        if importedJobs > 0 {
            try modelContext.save()
        }

        return ImportResult(
            importedJobs: importedJobs,
            skippedJobs: skippedJobs,
            errors: errors,
            format: format
        )
    }
    
    // MARK: - Helper Methods
    
    /// Parses various date formats from legacy data
    private func parseLegacyDate(_ dateString: String) -> Date? {
        // Try ISO 8601 format first
        let isoFormatter = ISO8601DateFormatter()
        if let date = isoFormatter.date(from: dateString) {
            return date
        }
        
        // Try other common formats
        let formatters = [
            "yyyy-MM-dd'T'HH:mm:ssZ",
            "yyyy-MM-dd'T'HH:mm:ss'Z'",
            "yyyy-MM-dd HH:mm:ss",
            "yyyy-MM-dd",
            "MM/dd/yyyy",
            "MM-dd-yyyy"
        ]
        
        for format in formatters {
            let formatter = DateFormatter()
            formatter.dateFormat = format
            formatter.locale = Locale(identifier: "en_US_POSIX")
            if let date = formatter.date(from: dateString) {
                return date
            }
        }
        
        logger.warning("Unable to parse date: \(dateString)")
        return nil
    }
    
    /// Determines remote work type from location string
    private func determineRemoteWorkType(from location: String?) -> RemoteWorkType {
        guard let location = location?.lowercased() else { return .onsite }
        
        if location.contains("remote") {
            return .remote
        } else if location.contains("hybrid") {
            return .hybrid
        }
        
        return .onsite
    }
    
    private func refreshExistingJobFingerprints() {
        do {
            let descriptor = FetchDescriptor<SwiftDataJobApplication>()
            let jobs = try modelContext.fetch(descriptor)
            existingJobIDs = Set(jobs.map { $0.id })
            existingJobSignatures = Set(jobs.compactMap { signature(for: $0) })
            existingJobLinks = Set(jobs.compactMap { normalizedLink($0.linkToJobString) })
        } catch {
            logger.error("Failed to load existing job IDs: \(error.localizedDescription)")
            existingJobIDs = []
            existingJobSignatures = []
            existingJobLinks = []
        }
    }

    private func register(job: SwiftDataJobApplication) {
        existingJobIDs.insert(job.id)
        if let signature = signature(for: job) {
            existingJobSignatures.insert(signature)
        }
        if let link = normalizedLink(job.linkToJobString) {
            existingJobLinks.insert(link)
        }
    }

    private func shouldImport(_ job: SwiftDataJobApplication) -> Bool {
        if existingJobIDs.contains(job.id) {
            return false
        }
        if let signature = signature(for: job), existingJobSignatures.contains(signature) {
            return false
        }
        if let link = normalizedLink(job.linkToJobString), existingJobLinks.contains(link) {
            return false
        }
        return true
    }

    private func signature(for job: SwiftDataJobApplication) -> String? {
        let normalizedCompany = job.companyName.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        let normalizedTitle = job.jobTitle.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        if normalizedCompany.isEmpty && normalizedTitle.isEmpty {
            return nil
        }
        let calendar = Calendar(identifier: .gregorian)
        let date = calendar.startOfDay(for: job.dateOfApplication)
        let timestamp = String(Int(date.timeIntervalSince1970))
        let location = job.location.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        return [normalizedCompany, normalizedTitle, timestamp, location].joined(separator: "|")
    }

    private func normalizedLink(_ link: String?) -> String? {
        guard let link = link?.trimmingCharacters(in: .whitespacesAndNewlines), !link.isEmpty else { return nil }
        if let url = URL(string: link), let host = url.host {
            if var components = URLComponents(url: url, resolvingAgainstBaseURL: false) {
                components.query = nil
                components.fragment = nil
                if components.path.hasSuffix("/") {
                    components.path.removeLast()
                }
                if let normalized = components.url?.absoluteString.lowercased() {
                    return normalized
                }
            }
            return host.lowercased()
        }
        return link.lowercased()
    }

    private func decodeLooseModernBackup(_ data: Data) throws -> [[String: Any]] {
        guard let json = try JSONSerialization.jsonObject(with: data, options: [.fragmentsAllowed]) as? [String: Any] else {
            throw LegacyMigrationError.parseError("Unable to read backup JSON structure")
        }
        guard let jobs = json["jobs"] as? [Any] else {
            throw LegacyMigrationError.parseError("Missing jobs array in backup")
        }
        let dicts = jobs.compactMap { $0 as? [String: Any] }
        guard !dicts.isEmpty else {
            throw LegacyMigrationError.parseError("Jobs array could not be parsed")
        }
        return dicts
    }

    private func decodeDictionaryArray(_ data: Data) -> [[String: Any]]? {
        guard let json = try? JSONSerialization.jsonObject(with: data, options: [.fragmentsAllowed]) else {
            return nil
        }
        if let array = json as? [[String: Any]] {
            return array
        }
        if let dict = json as? [String: Any], let jobs = dict["jobs"] as? [[String: Any]] {
            return jobs
        }
        return nil
    }
}

// MARK: - Supporting Types

enum BackupFormat {
    case legacy
    case modern
}

struct ImportResult {
    let importedJobs: Int
    let skippedJobs: Int
    let errors: [String]
    let format: BackupFormat
}

enum LegacyMigrationError: LocalizedError {
    case unsupportedFormat
    case parseError(String)
    case validationError(String)
    
    var errorDescription: String? {
        switch self {
        case .unsupportedFormat:
            return "The backup file format is not supported"
        case .parseError(let message):
            return "Failed to parse backup data: \(message)"
        case .validationError(let message):
            return "Validation error: \(message)"
        }
    }
}
