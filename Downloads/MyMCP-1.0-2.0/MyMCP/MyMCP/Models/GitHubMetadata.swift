import Foundation

/// GitHub repository metadata from the josh.ing API
struct GitHubMetadata: Codable, Hashable {
    let stars: Int
    let forks: Int
    let openIssues: Int
    let language: String?
    let topics: [String]
    let license: String?
    let lastCommitAt: Date?
    let archived: Bool

    /// Formatted star count (e.g., "1.2k", "25.3k")
    var formattedStars: String {
        if stars >= 1000 {
            return String(format: "%.1fk", Double(stars) / 1000)
        }
        return "\(stars)"
    }

    /// Activity status based on last commit date
    var activityStatus: ActivityStatus {
        if archived {
            return .archived
        }
        guard let lastCommit = lastCommitAt else {
            return .unknown
        }
        let now = Date()
        guard let oneMonthAgo = Calendar.current.date(byAdding: .month, value: -1, to: now),
              let sixMonthsAgo = Calendar.current.date(byAdding: .month, value: -6, to: now) else {
            return .unknown
        }

        if lastCommit > oneMonthAgo {
            return .active
        } else if lastCommit > sixMonthsAgo {
            return .recent
        } else {
            return .stale
        }
    }

    /// Relative time string for last commit (e.g., "2 days ago")
    var lastCommitRelative: String? {
        guard let lastCommit = lastCommitAt else { return nil }
        let formatter = RelativeDateTimeFormatter()
        formatter.unitsStyle = .full
        return formatter.localizedString(for: lastCommit, relativeTo: Date())
    }

    /// Initialize from JoshIngGitHub response
    init(from github: JoshIngGitHub) {
        self.stars = github.stars ?? 0
        self.forks = github.forks ?? 0
        self.openIssues = github.openIssues ?? 0
        self.language = github.language
        self.topics = github.topics ?? []
        self.license = github.license
        self.archived = github.archived ?? false

        // Parse ISO8601 date
        if let dateString = github.lastCommitAt {
            let formatter = ISO8601DateFormatter()
            formatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
            self.lastCommitAt = formatter.date(from: dateString)
                ?? ISO8601DateFormatter().date(from: dateString)
        } else {
            self.lastCommitAt = nil
        }
    }

    /// Direct initializer for testing
    init(stars: Int, forks: Int, openIssues: Int, language: String?,
         topics: [String], license: String?, lastCommitAt: Date?, archived: Bool) {
        self.stars = stars
        self.forks = forks
        self.openIssues = openIssues
        self.language = language
        self.topics = topics
        self.license = license
        self.lastCommitAt = lastCommitAt
        self.archived = archived
    }
}

/// Activity status based on last commit recency
enum ActivityStatus: String {
    case active = "Active"
    case recent = "Recent"
    case stale = "Stale"
    case archived = "Archived"
    case unknown = "Unknown"

    var color: String {
        switch self {
        case .active: return "green"
        case .recent: return "yellow"
        case .stale: return "orange"
        case .archived: return "red"
        case .unknown: return "gray"
        }
    }
}
