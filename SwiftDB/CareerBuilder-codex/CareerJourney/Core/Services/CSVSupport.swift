//
//  CSVSupport.swift
//  CareerKit
//
//  CSV import/export helpers for job data
//

import Foundation

enum CSVError: LocalizedError {
    case missingHeader
    case invalidRow(String)

    var errorDescription: String? {
        switch self {
        case .missingHeader:
            return "CSV is missing a header row"
        case .invalidRow(let message):
            return "CSV row is invalid: \(message)"
        }
    }
}

enum CSVParser {
    static func parseJobs(from csvString: String) throws -> [JobBackupData] {
        let rows = splitRows(from: csvString)
        guard let headerRow = rows.first else {
            throw CSVError.missingHeader
        }

        let headerFields = parseRow(headerRow)
        let normalizedHeaders = headerFields.map(normalizeHeader)
        let indexByKey = buildHeaderIndex(from: normalizedHeaders)

        if indexByKey.isEmpty {
            throw CSVError.missingHeader
        }

        var results: [JobBackupData] = []

        for row in rows.dropFirst() {
            let fields = parseRow(row)
            if fields.allSatisfy({ $0.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty }) {
                continue
            }

            let id = value(for: "id", fields: fields, indexByKey: indexByKey)
                .flatMap { UUID(uuidString: $0) } ?? UUID()
            let companyName = value(for: "companyName", fields: fields, indexByKey: indexByKey) ?? ""
            let jobTitle = value(for: "jobTitle", fields: fields, indexByKey: indexByKey) ?? ""

            if companyName.isEmpty && jobTitle.isEmpty {
                continue
            }

            let statusRaw = value(for: "status", fields: fields, indexByKey: indexByKey) ?? JobStatus.applied.rawValue
            let status = JobStatus.normalize(statusRaw).rawValue
            let dateString = value(for: "dateOfApplication", fields: fields, indexByKey: indexByKey) ?? ""
            let dateOfApplication = parseDate(dateString) ?? Date()
            let location = value(for: "location", fields: fields, indexByKey: indexByKey) ?? ""
            let jobDescription = value(for: "jobDescription", fields: fields, indexByKey: indexByKey) ?? ""
            let notes = value(for: "notes", fields: fields, indexByKey: indexByKey) ?? ""
            let isFavorite = parseBool(value(for: "isFavorite", fields: fields, indexByKey: indexByKey) ?? "")
            let salaryMin = parseDouble(value(for: "salaryMin", fields: fields, indexByKey: indexByKey) ?? "")
            let salaryMax = parseDouble(value(for: "salaryMax", fields: fields, indexByKey: indexByKey) ?? "")
            let skillsRaw = value(for: "desiredSkillNames", fields: fields, indexByKey: indexByKey) ?? ""
            let desiredSkillNames = parseStringArray(skillsRaw)

            results.append(JobBackupData(
                id: id,
                companyName: companyName,
                jobTitle: jobTitle,
                status: status,
                dateOfApplication: dateOfApplication,
                location: location,
                jobDescription: jobDescription,
                notes: notes,
                isFavorite: isFavorite,
                salaryMin: salaryMin,
                salaryMax: salaryMax,
                desiredSkillNames: desiredSkillNames
            ))
        }

        return results
    }

    private static func splitRows(from content: String) -> [String] {
        var rows: [String] = []
        var current = ""
        var inQuotes = false
        var index = content.startIndex

        while index < content.endIndex {
            let char = content[index]
            if char == "\"" {
                if inQuotes {
                    let nextIndex = content.index(after: index)
                    if nextIndex < content.endIndex, content[nextIndex] == "\"" {
                        current.append("\"")
                        index = nextIndex
                    } else {
                        inQuotes = false
                    }
                } else {
                    inQuotes = true
                }
            } else if (char == "\n" || char == "\r") && !inQuotes {
                if char == "\r" {
                    let nextIndex = content.index(after: index)
                    if nextIndex < content.endIndex, content[nextIndex] == "\n" {
                        index = nextIndex
                    }
                }
                rows.append(current)
                current = ""
            } else {
                current.append(char)
            }
            index = content.index(after: index)
        }

        if !current.isEmpty {
            rows.append(current)
        }

        return rows
    }

    private static func parseRow(_ row: String) -> [String] {
        let characters = Array(row)
        var fields: [String] = []
        var current = ""
        var inQuotes = false
        var index = 0

        while index < characters.count {
            let char = characters[index]
            if char == "\"" {
                if inQuotes && index + 1 < characters.count && characters[index + 1] == "\"" {
                    current.append("\"")
                    index += 1
                } else {
                    inQuotes.toggle()
                }
            } else if char == "," && !inQuotes {
                fields.append(current)
                current = ""
            } else {
                current.append(char)
            }
            index += 1
        }

        fields.append(current)
        return fields.map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
    }

    private static func normalizeHeader(_ header: String) -> String {
        let normalized = header
            .trimmingCharacters(in: CharacterSet(charactersIn: "\u{FEFF}"))
            .lowercased()
        return normalized
            .replacingOccurrences(of: " ", with: "")
            .replacingOccurrences(of: "_", with: "")
    }

    private static func buildHeaderIndex(from headers: [String]) -> [String: Int] {
        var indexByKey: [String: Int] = [:]
        let mapping: [String: String] = [
            "id": "id",
            "company": "companyName",
            "companyname": "companyName",
            "jobtitle": "jobTitle",
            "title": "jobTitle",
            "status": "status",
            "date": "dateOfApplication",
            "dateofapplication": "dateOfApplication",
            "applicationdate": "dateOfApplication",
            "location": "location",
            "jobdescription": "jobDescription",
            "description": "jobDescription",
            "notes": "notes",
            "isfavorite": "isFavorite",
            "favorite": "isFavorite",
            "salarymin": "salaryMin",
            "minsalary": "salaryMin",
            "salarymax": "salaryMax",
            "maxsalary": "salaryMax",
            "desiredskillnames": "desiredSkillNames",
            "skills": "desiredSkillNames"
        ]

        for (index, header) in headers.enumerated() {
            if let key = mapping[header] {
                indexByKey[key] = index
            }
        }

        return indexByKey
    }

    private static func value(for key: String, fields: [String], indexByKey: [String: Int]) -> String? {
        guard let index = indexByKey[key], index < fields.count else { return nil }
        let value = fields[index].trimmingCharacters(in: .whitespacesAndNewlines)
        return value.isEmpty ? nil : value
    }

    private static func parseBool(_ value: String) -> Bool {
        let normalized = value.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        return ["true", "yes", "1", "y"].contains(normalized)
    }

    private static func parseDouble(_ value: String) -> Double? {
        let cleaned = value
            .replacingOccurrences(of: "\"", with: "")
            .replacingOccurrences(of: "$", with: "")
            .replacingOccurrences(of: ",", with: "")
            .replacingOccurrences(of: "k", with: "000")
            .replacingOccurrences(of: "K", with: "000")
            .trimmingCharacters(in: .whitespacesAndNewlines)
        return Double(cleaned)
    }

    private static func parseStringArray(_ value: String) -> [String] {
        let delimiters = CharacterSet(charactersIn: ",;|")
        return value
            .components(separatedBy: delimiters)
            .map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
            .filter { !$0.isEmpty }
    }

    private static func parseDate(_ value: String) -> Date? {
        let trimmed = value.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmed.isEmpty else { return nil }

        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
        if let date = formatter.date(from: trimmed) {
            return date
        }

        for formatter in makeFallbackFormatters() {
            if let date = formatter.date(from: trimmed) {
                return date
            }
        }

        return nil
    }



    private static func makeFallbackFormatters() -> [DateFormatter] {
        ["yyyy-MM-dd", "MM/dd/yyyy", "M/d/yyyy"].map { pattern in
            let formatter = DateFormatter()
            formatter.locale = Locale(identifier: "en_US_POSIX")
            formatter.dateFormat = pattern
            return formatter
        }
    }
}

enum CSVExporter {
    static func exportJobs(_ jobs: [SwiftDataJobApplication]) throws -> String {
        var lines: [String] = []
        lines.append([
            "id",
            "companyName",
            "jobTitle",
            "status",
            "dateOfApplication",
            "location",
            "jobDescription",
            "notes",
            "isFavorite",
            "salaryMin",
            "salaryMax",
            "desiredSkillNames"
        ].joined(separator: ","))

        for job in jobs {
            let formatter = ISO8601DateFormatter()
            formatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
            let dateString = formatter.string(from: job.dateOfApplication)
            let skills = job.desiredSkillNames.joined(separator: ";")
            let row = [
                job.id.uuidString,
                job.companyName,
                job.jobTitle,
                job.status.rawValue,
                dateString,
                job.location,
                job.jobDescription,
                job.notes,
                job.isFavorite ? "true" : "false",
                job.salaryMin.map { String($0) } ?? "",
                job.salaryMax.map { String($0) } ?? "",
                skills
            ].map(escape)
            lines.append(row.joined(separator: ","))
        }

        return lines.joined(separator: "\n")
    }

    private static func escape(_ value: String) -> String {
        var escaped = value.replacingOccurrences(of: "\"", with: "\"\"")
        if escaped.contains(",") || escaped.contains("\n") || escaped.contains("\r") {
            escaped = "\"\(escaped)\""
        }
        return escaped
    }

    private static func makeISOFormatter() -> ISO8601DateFormatter {
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
        return formatter
    }
}
