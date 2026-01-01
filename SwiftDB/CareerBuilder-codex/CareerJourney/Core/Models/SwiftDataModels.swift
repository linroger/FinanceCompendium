//
//  SwiftDataModels.swift
//  CareerKit
//
//  SwiftData model definitions for persistent storage
//  Refactored following Apple Sample Code patterns from Trips sample
//

import SwiftUI
import SwiftData
import Foundation
import UniformTypeIdentifiers

// MARK: - Type Aliases
/// Alias for SwiftDataJobApplication to avoid namespace collision with Swift's concurrency Job type
typealias Job = SwiftDataJobApplication

// MARK: - SwiftData Job Application Model
@Model
final class SwiftDataJobApplication {
    // Note: #Index and #Unique macros require macOS 15+
    // For macOS 14 compatibility, we rely on @Attribute(.unique) instead
    
    // MARK: - Core Attributes
    @Attribute(.unique)
    var id: UUID
    
    @Attribute(.preserveValueOnDeletion)
    var companyName: String
    
    @Attribute(.preserveValueOnDeletion)
    var jobTitle: String
    
    private var statusRawValue: String = JobStatus.applied.rawValue
    
    @Attribute(.preserveValueOnDeletion)
    var dateOfApplication: Date
    
    var location: String
    var normalizedLocation: String?
    var linkToJobString: String?
    var salaryString: String?
    var salaryMin: Double?
    var salaryMax: Double?
    private var salaryCurrencyRawValue: String = SalaryCurrency.usd.rawValue
    private var salaryPeriodRawValue: String = SalaryPeriod.yearly.rawValue
    var jobDescription: String
    var coverLetter: String
    var notes: String
    var isFavorite: Bool
    private var jobTypeRawValue: String = JobType.fullTime.rawValue
    
    // MARK: - Complex Data
    private var desiredSkillNamesData: Data?
    var jobDeadline: Date?
    
    // MARK: - Location Data
    var latitude: Double?
    var longitude: Double?
    
    // MARK: - Metadata
    @Attribute(.preserveValueOnDeletion)
    var schemaVersion: Int = SchemaVersion.current
    
    var createdDate: Date
    var modifiedDate: Date
    
    // MARK: - Remote Work Type
    private var remoteWorkTypeRawValue: String = RemoteWorkType.onsite.rawValue
    
    // MARK: - Relationships
    @Relationship(deleteRule: .cascade, inverse: \SwiftDataJobDocument.jobApplication)
    var documents: [SwiftDataJobDocument] = []
    
    // MARK: - Computed Properties
    var salaryCurrency: SalaryCurrency {
        get { SalaryCurrency(rawValue: salaryCurrencyRawValue) ?? .usd }
        set { salaryCurrencyRawValue = newValue.rawValue }
    }

    var salaryPeriod: SalaryPeriod {
        get { SalaryPeriod(rawValue: salaryPeriodRawValue) ?? .yearly }
        set { salaryPeriodRawValue = newValue.rawValue }
    }
    
    var status: JobStatus {
        get { JobStatus.normalize(statusRawValue) }
        set { statusRawValue = newValue.rawValue }
    }
    
    var jobType: JobType {
        get { JobType.normalize(jobTypeRawValue) }
        set { jobTypeRawValue = newValue.rawValue }
    }
    
    var remoteWorkType: RemoteWorkType {
        get { RemoteWorkType(rawValue: remoteWorkTypeRawValue) ?? .onsite }
        set { remoteWorkTypeRawValue = newValue.rawValue }
    }
    
    // MARK: - Complex Data Handling
    var desiredSkillNames: [String] {
        get {
            guard let data = desiredSkillNamesData else { return [] }
            return (try? JSONDecoder().decode([String].self, from: data)) ?? []
        }
        set {
            desiredSkillNamesData = try? JSONEncoder().encode(newValue)
        }
    }
    
    // MARK: - Compatibility Properties
    var applicationDate: Date {
        get { dateOfApplication }
        set { dateOfApplication = newValue }
    }
    
    var jobLink: String? {
        get { linkToJobString }
        set { linkToJobString = newValue }
    }
    
    var skills: [String] {
        get { desiredSkillNames }
        set { desiredSkillNames = newValue }
    }
    
    // MARK: - Initialization
    init(
        id: UUID = UUID(),
        companyName: String,
        jobTitle: String,
        status: JobStatus = .applied,
        dateOfApplication: Date = Date(),
        location: String = "",
        normalizedLocation: String? = nil,
        linkToJobString: String? = nil,
        salaryString: String? = nil,
        salaryMin: Double? = nil,
        salaryMax: Double? = nil,
        salaryCurrency: SalaryCurrency = .usd,
        salaryPeriod: SalaryPeriod = .yearly,
        jobDescription: String = "",
        coverLetter: String = "",
        notes: String = "",
        isFavorite: Bool = false,
        jobType: JobType = .fullTime,
        desiredSkillNames: [String] = [],
        jobDeadline: Date? = nil,
        latitude: Double? = nil,
        longitude: Double? = nil,
        remoteWorkType: RemoteWorkType = .onsite,
        createdDate: Date = Date(),
        modifiedDate: Date = Date()
    ) {
        self.id = id
        self.companyName = companyName
        self.jobTitle = jobTitle
        self.statusRawValue = status.rawValue
        self.dateOfApplication = dateOfApplication
        self.location = location
        self.normalizedLocation = normalizedLocation
        self.linkToJobString = linkToJobString
        self.salaryString = salaryString
        self.salaryMin = salaryMin
        self.salaryMax = salaryMax
        self.salaryCurrencyRawValue = salaryCurrency.rawValue
        self.salaryPeriodRawValue = salaryPeriod.rawValue
        self.jobDescription = jobDescription
        self.coverLetter = coverLetter
        self.notes = notes
        self.isFavorite = isFavorite
        self.jobTypeRawValue = jobType.rawValue
        self.desiredSkillNamesData = try? JSONEncoder().encode(desiredSkillNames)
        self.jobDeadline = jobDeadline
        self.latitude = latitude
        self.longitude = longitude
        self.remoteWorkTypeRawValue = remoteWorkType.rawValue
        self.createdDate = createdDate
        self.modifiedDate = modifiedDate
        self.schemaVersion = SchemaVersion.current
    }
    
    // MARK: - Update Modified Date
    func updateModifiedDate() {
        modifiedDate = Date()
    }
}

// MARK: - SwiftData Job Document Model
@Model
final class SwiftDataJobDocument {
    // MARK: - Core Attributes
    @Attribute(.unique)
    var id: UUID
    
    @Attribute(.preserveValueOnDeletion)
    var fileName: String
    
    var fileURL: URL?
    
    @Attribute(.externalStorage)
    var fileData: Data?
    
    var fileSize: Int
    var mimeType: String
    
    @Attribute(.preserveValueOnDeletion)
    var uploadDate: Date
    
    var documentType: String // "resume", "cover_letter", "portfolio", etc.
    var associatedCompany: String?
    var associatedJobTitle: String?
    var associatedApplicationDate: Date?
    
    // MARK: - Metadata
    @Attribute(.preserveValueOnDeletion)
    var schemaVersion: Int = SchemaVersion.current
    
    var createdDate: Date
    var modifiedDate: Date
    
    // MARK: - Relationships
    var jobApplication: SwiftDataJobApplication?
    var category: SwiftDataDocumentCategory?
    
    // MARK: - Initialization
    init(
        id: UUID = UUID(),
        fileName: String,
        fileURL: URL? = nil,
        fileData: Data? = nil,
        fileSize: Int = 0,
        mimeType: String = "",
        uploadDate: Date = Date(),
        documentType: String = "",
        associatedCompany: String? = nil,
        associatedJobTitle: String? = nil,
        associatedApplicationDate: Date? = nil,
        createdDate: Date = Date(),
        modifiedDate: Date = Date()
    ) {
        self.id = id
        self.fileName = fileName
        self.fileURL = fileURL
        self.fileData = fileData
        self.fileSize = fileSize
        self.mimeType = mimeType
        self.uploadDate = uploadDate
        self.documentType = documentType
        self.associatedCompany = associatedCompany
        self.associatedJobTitle = associatedJobTitle
        self.associatedApplicationDate = associatedApplicationDate
        self.createdDate = createdDate
        self.modifiedDate = modifiedDate
        self.schemaVersion = SchemaVersion.current
    }
    
    // MARK: - Update Modified Date
    func updateModifiedDate() {
        modifiedDate = Date()
    }
}

// MARK: - SwiftData Document Category Model
@Model
final class SwiftDataDocumentCategory {
    // MARK: - Core Attributes
    @Attribute(.unique)
    var id: UUID
    
    @Attribute(.preserveValueOnDeletion)
    var name: String
    
    var colorHex: String
    var iconName: String
    
    @Attribute(.preserveValueOnDeletion)
    var createdDate: Date
    
    var isExpanded: Bool = true
    
    // MARK: - Metadata
    @Attribute(.preserveValueOnDeletion)
    var schemaVersion: Int = SchemaVersion.current
    
    var modifiedDate: Date
    
    // MARK: - Relationships
    @Relationship(deleteRule: .nullify, inverse: \SwiftDataJobDocument.category)
    var documents: [SwiftDataJobDocument] = []
    
    // MARK: - Initialization
    init(
        id: UUID = UUID(),
        name: String,
        colorHex: String = "#007AFF",
        iconName: String = "folder",
        createdDate: Date = Date(),
        isExpanded: Bool = true,
        modifiedDate: Date = Date()
    ) {
        self.id = id
        self.name = name
        self.colorHex = colorHex
        self.iconName = iconName
        self.createdDate = createdDate
        self.isExpanded = isExpanded
        self.modifiedDate = modifiedDate
        self.schemaVersion = SchemaVersion.current
    }
    
    // MARK: - Update Modified Date
    func updateModifiedDate() {
        modifiedDate = Date()
    }
}

// MARK: - SwiftData Note Model
@Model
final class SwiftDataNote {
    // MARK: - Core Attributes
    @Attribute(.unique)
    var id: UUID
    
    @Attribute(.preserveValueOnDeletion)
    var title: String
    
    var content: String
    
    @Attribute(.preserveValueOnDeletion)
    var createdDate: Date
    
    @Attribute(.preserveValueOnDeletion)
    var modifiedDate: Date
    
    // MARK: - Complex Data
    private var tagsData: Data?
    var isPinned: Bool
    var associatedJobApplicationID: UUID?
    
    // MARK: - Metadata
    @Attribute(.preserveValueOnDeletion)
    var schemaVersion: Int = SchemaVersion.current
    
    // MARK: - Complex Data Handling
    var tags: [String] {
        get {
            guard let data = tagsData else { return [] }
            return (try? JSONDecoder().decode([String].self, from: data)) ?? []
        }
        set {
            tagsData = try? JSONEncoder().encode(newValue)
        }
    }
    
    // MARK: - Initialization
    init(
        id: UUID = UUID(),
        title: String,
        content: String = "",
        createdDate: Date = Date(),
        modifiedDate: Date = Date(),
        tags: [String] = [],
        isPinned: Bool = false,
        associatedJobApplicationID: UUID? = nil
    ) {
        self.id = id
        self.title = title
        self.content = content
        self.createdDate = createdDate
        self.modifiedDate = modifiedDate
        self.tagsData = try? JSONEncoder().encode(tags)
        self.isPinned = isPinned
        self.associatedJobApplicationID = associatedJobApplicationID
        self.schemaVersion = SchemaVersion.current
    }
    
    // MARK: - Update Modified Date
    func updateModifiedDate() {
        modifiedDate = Date()
    }
}

// MARK: - Supporting Enums
enum JobStatus: String, CaseIterable, Codable, Identifiable {
    case applied = "Applied"
    case screening = "Screening"
    case interview = "Interview"
    case offer = "Offer"
    case rejected = "Rejected"
    case withdrawn = "Withdrawn"
    case accepted = "Accepted"
    
    var id: String { rawValue }
    
    static func normalize(_ rawValue: String) -> JobStatus {
        // Handle various case variations
        let normalized = rawValue.lowercased()
        switch normalized {
        case "applied": return .applied
        case "screening", "screen": return .screening
        case "interview", "interviewing": return .interview
        case "offer", "offered": return .offer
        case "rejected": return .rejected
        case "withdrawn": return .withdrawn
        case "accepted": return .accepted
        default: return .applied
        }
    }
    
    var color: Color {
        switch self {
        case .applied: return .blue
        case .screening: return .orange
        case .interview: return .orange
        case .offer: return .green
        case .accepted: return .mint
        case .rejected: return .red
        case .withdrawn: return .gray
        }
    }
    
    var displayColor: Color {
        return color
    }
    
    var displayName: String {
        return rawValue
    }
}

// MARK: - Job Sort Option
enum JobSortOption: String, CaseIterable, Identifiable {
    case dateApplied = "Date Applied"
    case company = "Company"
    case jobTitle = "Job Title"
    case status = "Status"
    case location = "Location"
    case salary = "Salary"
    case favorite = "Favorite"

    public var id: String { rawValue }

    public var title: String { rawValue }

    public var icon: String {
        switch self {
        case .dateApplied: return "calendar"
        case .company: return "building.2"
        case .jobTitle: return "briefcase"
        case .status: return "flag"
        case .location: return "mappin.and.ellipse"
        case .salary: return "dollarsign.circle"
        case .favorite: return "star"
        }
    }
}

enum JobType: String, CaseIterable, Codable, Identifiable {
    case fullTime = "Full Time"
    case partTime = "Part Time"
    case contract = "Contract"
    case internship = "Internship"
    case freelance = "Freelance"
    case temporary = "Temporary"
    
    var id: String { rawValue }
    
    var displayName: String {
        return self.rawValue
    }

    static func normalize(_ rawValue: String) -> JobType {
        // Handle various case variations
        let normalized = rawValue.lowercased().replacingOccurrences(of: "-", with: " ")
        switch normalized {
        case "full time", "fulltime": return .fullTime
        case "part time", "parttime": return .partTime
        case "contract": return .contract
        case "internship", "intern": return .internship
        case "freelance": return .freelance
        case "temporary", "temp": return .temporary
        default: return .fullTime
        }
    }
}

enum RemoteWorkType: String, CaseIterable, Codable, Identifiable {
    case onsite = "On-site"
    case remote = "Remote"
    case hybrid = "Hybrid"
    
    var id: String { rawValue }
    
    var displayName: String {
        return self.rawValue
    }
}

// MARK: - Preview Data Support
extension SwiftDataJobApplication {
    static var preview: SwiftDataJobApplication {
        SwiftDataJobApplication(
            companyName: "Apple Inc.",
            jobTitle: "Senior Software Engineer",
            status: .applied,
            dateOfApplication: Date().addingTimeInterval(-86400 * 7), // 7 days ago
            location: "Cupertino, CA",
            jobDescription: "Join our team to build amazing products",
            jobType: .fullTime,
            remoteWorkType: .hybrid
        )
    }
    
    static var previewApplications: [SwiftDataJobApplication] {
        [
            SwiftDataJobApplication(
                companyName: "Apple Inc.",
                jobTitle: "Senior Software Engineer",
                status: .applied,
                dateOfApplication: Date().addingTimeInterval(-86400 * 7),
                location: "Cupertino, CA",
                jobDescription: "Build next-generation software products",
                jobType: .fullTime,
                remoteWorkType: .hybrid
            ),
            SwiftDataJobApplication(
                companyName: "Google LLC",
                jobTitle: "iOS Developer",
                status: .interview,
                dateOfApplication: Date().addingTimeInterval(-86400 * 14),
                location: "Mountain View, CA",
                jobDescription: "Develop iOS applications for Google services",
                jobType: .fullTime,
                remoteWorkType: .remote
            ),
            SwiftDataJobApplication(
                companyName: "Microsoft",
                jobTitle: "Software Engineer",
                status: .offer,
                dateOfApplication: Date().addingTimeInterval(-86400 * 21),
                location: "Redmond, WA",
                jobDescription: "Work on Azure cloud services",
                jobType: .fullTime,
                remoteWorkType: .onsite
            )
        ]
    }
}

extension SwiftDataJobDocument {
    static var preview: SwiftDataJobDocument {
        SwiftDataJobDocument(
            fileName: "Resume_JohnDoe.pdf",
            mimeType: "application/pdf",
            documentType: "resume",
            associatedCompany: "Apple Inc.",
            associatedJobTitle: "Senior Software Engineer"
        )
    }
}

extension SwiftDataDocumentCategory {
    static var preview: SwiftDataDocumentCategory {
        SwiftDataDocumentCategory(
            name: "Resumes",
            colorHex: "#007AFF",
            iconName: "doc.text"
        )
    }
}

extension SwiftDataNote {
    static var preview: SwiftDataNote {
        SwiftDataNote(
            title: "Interview Notes",
            content: "Remember to ask about team culture and growth opportunities",
            tags: ["interview", "preparation"],
            isPinned: true
        )
    }
}









// MARK: - Extensions for Compatibility
extension SwiftDataJobApplication {
    /// Factory method to create a new job application
    static func create(
        companyName: String,
        jobTitle: String,
        status: JobStatus = .applied,
        dateOfApplication: Date = Date(),
        location: String = "",
        normalizedLocation: String? = nil,
        linkToJobString: String? = nil,
        salaryString: String? = nil,
        salaryMin: Double? = nil,
        salaryMax: Double? = nil,
        salaryCurrency: SalaryCurrency = .usd,
        salaryPeriod: SalaryPeriod = .yearly,
        jobDescription: String = "",
        coverLetter: String = "",
        notes: String = "",
        isFavorite: Bool = false,
        jobType: JobType = .fullTime,
        desiredSkillNames: [String] = [],
        jobDeadline: Date? = nil,
        latitude: Double? = nil,
        longitude: Double? = nil,
        remoteWorkType: RemoteWorkType = .onsite
    ) -> SwiftDataJobApplication {
        return SwiftDataJobApplication(
            companyName: companyName,
            jobTitle: jobTitle,
            status: status,
            dateOfApplication: dateOfApplication,
            location: location,
            normalizedLocation: normalizedLocation,
            linkToJobString: linkToJobString,
            salaryString: salaryString,
            salaryMin: salaryMin,
            salaryMax: salaryMax,
            salaryCurrency: salaryCurrency,
            salaryPeriod: salaryPeriod,
            jobDescription: jobDescription,
            coverLetter: coverLetter,
            notes: notes,
            isFavorite: isFavorite,
            jobType: jobType,
            desiredSkillNames: desiredSkillNames,
            jobDeadline: jobDeadline,
            latitude: latitude,
            longitude: longitude,
            remoteWorkType: remoteWorkType
        )
    }

    var formattedSalaryDisplay: String? {
        if let salaryString = salaryString?.trimmingCharacters(in: .whitespacesAndNewlines),
           !salaryString.isEmpty {
            return salaryString
        }

        guard salaryMin != nil || salaryMax != nil else { return nil }

        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 0

        let symbol = salaryCurrency.symbol
        let suffix = "/\(salaryPeriod.suffix)"

        let formattedMin = salaryMin.map { SalaryConversion.fromUsdYearly(amount: $0, currency: salaryCurrency, period: salaryPeriod) }
        let formattedMax = salaryMax.map { SalaryConversion.fromUsdYearly(amount: $0, currency: salaryCurrency, period: salaryPeriod) }

        switch (formattedMin, formattedMax) {
        case let (min?, max?):
            let minText = formatter.string(from: NSNumber(value: min)) ?? "0"
            let maxText = formatter.string(from: NSNumber(value: max)) ?? "0"
            return "\(symbol)\(minText) - \(symbol)\(maxText) \(suffix)"
        case let (min?, nil):
            let minText = formatter.string(from: NSNumber(value: min)) ?? "0"
            return "From \(symbol)\(minText) \(suffix)"
        case let (nil, max?):
            let maxText = formatter.string(from: NSNumber(value: max)) ?? "0"
            return "Up to \(symbol)\(maxText) \(suffix)"
        default:
            return nil
        }
    }
    
    /// Convert to dictionary for backup/export
    func toDictionary() -> [String: Any] {
        var dict: [String: Any] = [
            "id": id.uuidString,
            "companyName": companyName,
            "jobTitle": jobTitle,
            "status": status.rawValue,
            "dateOfApplication": dateOfApplication.timeIntervalSince1970,
            "location": location,
            "jobDescription": jobDescription,
            "coverLetter": coverLetter,
            "notes": notes,
            "isFavorite": isFavorite,
            "jobType": jobType.rawValue,
            "desiredSkillNames": desiredSkillNames,
            "schemaVersion": schemaVersion,
            "createdDate": createdDate.timeIntervalSince1970,
            "modifiedDate": modifiedDate.timeIntervalSince1970,
            "remoteWorkType": remoteWorkType.rawValue
        ]
        
        // Optional fields
        if let linkToJobString = linkToJobString {
            dict["linkToJobString"] = linkToJobString
        }

        if let normalizedLocation = normalizedLocation {
            dict["normalizedLocation"] = normalizedLocation
        }
        
        if let salaryString = salaryString {
            dict["salaryString"] = salaryString
        }
        
        if let salaryMin = salaryMin {
            dict["salaryMin"] = salaryMin
        }
        
        if let salaryMax = salaryMax {
            dict["salaryMax"] = salaryMax
        }

        dict["salaryCurrency"] = salaryCurrency.rawValue
        dict["salaryPeriod"] = salaryPeriod.rawValue
        
        if let jobDeadline = jobDeadline {
            dict["jobDeadline"] = jobDeadline.timeIntervalSince1970
        }
        
        if let latitude = latitude {
            dict["latitude"] = latitude
        }
        
        if let longitude = longitude {
            dict["longitude"] = longitude
        }
        
        // Include documents
        dict["documents"] = documents.map { $0.toDictionary() }
        
        return dict
    }
    
    /// Create from dictionary (for backup loading)
    static func fromDictionary(_ dict: [String: Any]) -> SwiftDataJobApplication? {
        // Accept multiple backup shapes (timestamps, ISO strings, optional fields) to keep imports resilient.
        let id = parseUUID(from: dict["id"])
        let rawCompany = (dict["companyName"] as? String)?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        let rawTitle = (dict["jobTitle"] as? String)?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        guard !rawCompany.isEmpty || !rawTitle.isEmpty else { return nil }

        let companyName = rawCompany.isEmpty ? "Unknown Company" : rawCompany
        let jobTitle = rawTitle.isEmpty ? "Unknown Position" : rawTitle
        let status = JobStatus.normalize(dict["status"] as? String ?? "Applied")
        let dateOfApplication = parseDateValue(from: dict["dateOfApplication"]) ?? Date()

        let location = (dict["location"] as? String) ?? ""
        let normalizedLocation = (dict["normalizedLocation"] as? String)?.trimmingCharacters(in: .whitespacesAndNewlines)
        let linkToJobString = (dict["linkToJobString"] as? String)?.trimmingCharacters(in: .whitespacesAndNewlines)
        let salaryString = dict["salaryString"] as? String
        let salaryMin = parseDoubleValue(from: dict["salaryMin"])
        let salaryMax = parseDoubleValue(from: dict["salaryMax"])
        let salaryCurrency = SalaryCurrency(rawValue: (dict["salaryCurrency"] as? String ?? "USD")) ?? .usd
        let salaryPeriod = SalaryPeriod(rawValue: (dict["salaryPeriod"] as? String ?? "Yearly")) ?? .yearly
        let jobDescription = dict["jobDescription"] as? String ?? ""
        let coverLetter = dict["coverLetter"] as? String ?? ""
        let notes = dict["notes"] as? String ?? ""
        let isFavorite = dict["isFavorite"] as? Bool ?? false

        let jobType = JobType.normalize(dict["jobType"] as? String ?? "Full Time")

        let desiredSkills = parseStringArray(from: dict["desiredSkillNames"])
        let crossSkills = parseStringArray(from: dict["crossJobSkillNames"])
        let desiredSkillNames = Array(Set(desiredSkills + crossSkills)).sorted()

        let jobDeadline = parseDateValue(from: dict["jobDeadline"])
        let latitude = parseDoubleValue(from: dict["latitude"])
        let longitude = parseDoubleValue(from: dict["longitude"])
        let remoteWorkType = parseRemoteWorkType(from: dict["remoteWorkType"], fallbackLocation: location)
        
        let schemaVersion = dict["schemaVersion"] as? Int ?? 1
        let createdDate = parseDateValue(from: dict["createdDate"]) ?? dateOfApplication
        let modifiedDate = parseDateValue(from: dict["modifiedDate"]) ?? createdDate

        let job = SwiftDataJobApplication(
            id: id,
            companyName: companyName,
            jobTitle: jobTitle,
            status: status,
            dateOfApplication: dateOfApplication,
            location: location,
            normalizedLocation: normalizedLocation,
            linkToJobString: linkToJobString,
            salaryString: salaryString,
            salaryMin: salaryMin,
            salaryMax: salaryMax,
            salaryCurrency: salaryCurrency,
            salaryPeriod: salaryPeriod,
            jobDescription: jobDescription,
            coverLetter: coverLetter,
            notes: notes,
            isFavorite: isFavorite,
            jobType: jobType,
            desiredSkillNames: desiredSkillNames,
            jobDeadline: jobDeadline,
            latitude: latitude,
            longitude: longitude,
            remoteWorkType: remoteWorkType,
            createdDate: createdDate,
            modifiedDate: modifiedDate
        )
        
        // Set schema version from backup data
        job.schemaVersion = schemaVersion

        return job
    }

    private static func parseUUID(from value: Any?) -> UUID {
        if let uuid = value as? UUID {
            return uuid
        }
        if let idString = value as? String, let uuid = UUID(uuidString: idString) {
            return uuid
        }
        return UUID()
    }

    private static func parseDateValue(from value: Any?) -> Date? {
        if let date = value as? Date {
            return date
        }
        if let interval = value as? TimeInterval {
            return Date(timeIntervalSince1970: interval)
        }
        if let intValue = value as? Int {
            return Date(timeIntervalSince1970: TimeInterval(intValue))
        }
        if let string = value as? String {
            let trimmed = string.trimmingCharacters(in: .whitespacesAndNewlines)
            if trimmed.isEmpty {
                return nil
            }
            if let interval = Double(trimmed) {
                return Date(timeIntervalSince1970: interval)
            }
            let isoFormatter = ISO8601DateFormatter()
            if let isoDate = isoFormatter.date(from: trimmed) {
                return isoDate
            }
            let formatters = [
                "yyyy-MM-dd'T'HH:mm:ssZ",
                "yyyy-MM-dd'T'HH:mm:ss.SSSZ",
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
                if let date = formatter.date(from: trimmed) {
                    return date
                }
            }
        }
        return nil
    }

    private static func parseDoubleValue(from value: Any?) -> Double? {
        if let doubleValue = value as? Double {
            return doubleValue
        }
        if let intValue = value as? Int {
            return Double(intValue)
        }
        if let string = value as? String {
            let cleaned = string
                .replacingOccurrences(of: "$", with: "")
                .replacingOccurrences(of: ",", with: "")
                .replacingOccurrences(of: "k", with: "000")
                .replacingOccurrences(of: "K", with: "000")
                .trimmingCharacters(in: .whitespacesAndNewlines)
            return Double(cleaned)
        }
        return nil
    }

    private static func parseStringArray(from value: Any?) -> [String] {
        if let strings = value as? [String] {
            return strings.filter { !$0.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty }
        }
        if let raw = value as? [Any] {
            return raw.compactMap { $0 as? String }.filter { !$0.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty }
        }
        if let string = value as? String {
            let delimiters = CharacterSet(charactersIn: ",;|")
            return string
                .components(separatedBy: delimiters)
                .map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
                .filter { !$0.isEmpty }
        }
        return []
    }

    private static func parseRemoteWorkType(from value: Any?, fallbackLocation: String) -> RemoteWorkType {
        if let string = value as? String {
            let normalized = string.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
            if normalized.contains("remote") {
                return .remote
            }
            if normalized.contains("hybrid") {
                return .hybrid
            }
            if normalized.contains("on-site") || normalized.contains("onsite") || normalized.contains("office") {
                return .onsite
            }
        }

        let lowercased = fallbackLocation.lowercased()
        if lowercased.contains("remote") {
            return .remote
        }
        if lowercased.contains("hybrid") {
            return .hybrid
        }
        return .onsite
    }
}

extension SwiftDataJobDocument {
    func toDictionary() -> [String: Any] {
        var dict: [String: Any] = [
            "id": id.uuidString,
            "fileName": fileName,
            "fileSize": fileSize,
            "mimeType": mimeType,
            "uploadDate": uploadDate.timeIntervalSince1970,
            "documentType": documentType,
            "schemaVersion": schemaVersion,
            "createdDate": createdDate.timeIntervalSince1970,
            "modifiedDate": modifiedDate.timeIntervalSince1970
        ]
        
        if let fileURL = fileURL {
            dict["fileURL"] = fileURL.absoluteString
        }
        
        if let fileData = fileData {
            dict["fileData"] = fileData.base64EncodedString()
        }
        
        if let associatedCompany = associatedCompany {
            dict["associatedCompany"] = associatedCompany
        }
        
        if let associatedJobTitle = associatedJobTitle {
            dict["associatedJobTitle"] = associatedJobTitle
        }
        
        if let associatedApplicationDate = associatedApplicationDate {
            dict["associatedApplicationDate"] = associatedApplicationDate.timeIntervalSince1970
        }

        return dict
    }
}

extension SwiftDataNote {
    /// Convert to dictionary for backup/export
    func toDictionary() -> [String: Any] {
        var dict: [String: Any] = [
            "id": id.uuidString,
            "title": title,
            "content": content,
            "createdDate": createdDate.timeIntervalSince1970,
            "modifiedDate": modifiedDate.timeIntervalSince1970,
            "tags": tags,
            "isPinned": isPinned,
            "associatedJobApplicationID": associatedJobApplicationID?.uuidString ?? "",
            "schemaVersion": schemaVersion
        ]

        return dict
    }
}

// MARK: - Preview Data Provider
@MainActor
struct CareerDataPreviewProvider {
    static var previewContainer: ModelContainer {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try! ModelContainer(
            for: SwiftDataJobApplication.self,
                 SwiftDataJobDocument.self,
                 SwiftDataDocumentCategory.self,
                 SwiftDataNote.self,
            configurations: config
        )
        
        // Insert preview data
        let applications = SwiftDataJobApplication.previewApplications
        let documents = SwiftDataJobDocument.preview
        let category = SwiftDataDocumentCategory.preview
        let note = SwiftDataNote.preview
        
        applications.forEach { container.mainContext.insert($0) }
        container.mainContext.insert(documents)
        container.mainContext.insert(category)
        container.mainContext.insert(note)
        
        // Set up relationships
        if let firstApplication = applications.first {
            documents.jobApplication = firstApplication
            documents.category = category
            note.associatedJobApplicationID = firstApplication.id
        }
        
        try? container.mainContext.save()
        
        return container
    }
}
