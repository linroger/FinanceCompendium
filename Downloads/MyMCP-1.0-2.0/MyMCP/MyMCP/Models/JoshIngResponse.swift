import Foundation

/// Response from the josh.ing API /servers endpoint
struct JoshIngResponse: Codable {
    let servers: [JoshIngServer]
    let pagination: JoshIngPagination
}

/// Server entry from josh.ing API
struct JoshIngServer: Codable {
    let name: String
    let repositoryUrl: String?
    let github: JoshIngGitHub?

    enum CodingKeys: String, CodingKey {
        case name
        case repositoryUrl = "repository_url"
        case github
    }
}

/// GitHub metadata from josh.ing API
struct JoshIngGitHub: Codable {
    let stars: Int?
    let forks: Int?
    let openIssues: Int?
    let language: String?
    let topics: [String]?
    let license: String?
    let lastCommitAt: String?
    let archived: Bool?

    enum CodingKeys: String, CodingKey {
        case stars, forks
        case openIssues = "open_issues"
        case language, topics, license
        case lastCommitAt = "last_commit_at"
        case archived
    }
}

/// Pagination info from josh.ing API
struct JoshIngPagination: Codable {
    let total: Int
    let limit: Int
    let offset: Int
    let hasMore: Bool

    enum CodingKeys: String, CodingKey {
        case total, limit, offset
        case hasMore = "has_more"
    }
}
