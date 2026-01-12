import Foundation
import os.log

/// Service for fetching GitHub metadata from the josh.ing API
actor GitHubMetadataService {
    private let baseURL = "https://www.josh.ing/api/mymcp/servers"
    private let session: URLSession

    // Session-based cache (no TTL - lives until app quits)
    private var nameCache: [String: GitHubMetadata] = [:]
    private var urlCache: [String: GitHubMetadata] = [:]
    private var hasFetched = false

    init(session: URLSession = .shared) {
        self.session = session
    }

    /// Fetch all metadata (paginated, ~11 calls for ~1100 servers)
    /// Returns the name-keyed cache for use in views
    func fetchAllMetadata() async throws -> [String: GitHubMetadata] {
        guard !hasFetched else { return nameCache }

        var offset = 0
        let limit = 100
        var hasMore = true

        MCPLogger.services.debug("GitHubMetadataService: Starting fetch from josh.ing API")

        while hasMore {
            guard let url = URL(string: "\(baseURL)?limit=\(limit)&offset=\(offset)&latest_only=true") else {
                throw GitHubMetadataError.invalidURL
            }

            let (data, response) = try await session.data(from: url)

            guard let http = response as? HTTPURLResponse, http.statusCode == 200 else {
                MCPLogger.services.warning("GitHubMetadataService: Invalid response at offset \(offset, privacy: .public)")
                throw GitHubMetadataError.invalidResponse
            }

            let decoded = try JSONDecoder().decode(JoshIngResponse.self, from: data)

            for server in decoded.servers {
                // Skip servers without GitHub data or with null stats
                guard let gh = server.github,
                      gh.stars != nil  // Skip if GitHub data couldn't be fetched
                else { continue }

                let metadata = GitHubMetadata(from: gh)

                // Dual-key indexing
                nameCache[server.name] = metadata
                if let repoUrl = server.repositoryUrl {
                    urlCache[normalizeURL(repoUrl)] = metadata
                }
            }

            hasMore = decoded.pagination.hasMore
            offset += limit

            MCPLogger.services.debug("GitHubMetadataService: Fetched \(decoded.servers.count, privacy: .public) servers, offset now \(offset, privacy: .public)")
        }

        hasFetched = true
        MCPLogger.services.info("GitHubMetadataService: Completed fetch, cached \(self.nameCache.count, privacy: .public) servers")

        return nameCache
    }

    /// Get metadata for a server by name or repository URL
    func getMetadata(forName name: String, repoURL: String?) -> GitHubMetadata? {
        if let m = nameCache[name] { return m }
        if let url = repoURL, let m = urlCache[normalizeURL(url)] { return m }
        return nil
    }

    /// Force refresh (for manual refresh button)
    func clearCache() {
        nameCache.removeAll()
        urlCache.removeAll()
        hasFetched = false
        MCPLogger.services.debug("GitHubMetadataService: Cache cleared")
    }

    private func normalizeURL(_ url: String) -> String {
        url.lowercased()
            .replacingOccurrences(of: "https://", with: "")
            .replacingOccurrences(of: "http://", with: "")
            .replacingOccurrences(of: "www.", with: "")
            .trimmingCharacters(in: CharacterSet(charactersIn: "/"))
    }
}

enum GitHubMetadataError: LocalizedError {
    case invalidURL
    case invalidResponse
    case decodingError(Error)
    case networkError(Error)

    var errorDescription: String? {
        switch self {
        case .invalidURL: return "Invalid API URL"
        case .invalidResponse: return "Invalid response from GitHub metadata service"
        case .decodingError(let error): return "Failed to decode: \(error.localizedDescription)"
        case .networkError(let error): return "Network error: \(error.localizedDescription)"
        }
    }
}
