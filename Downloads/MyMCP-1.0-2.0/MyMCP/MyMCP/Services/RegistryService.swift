import Foundation

/// Service for fetching MCP servers from the registry
actor RegistryService {
    private static let registryURLString = "https://registry.modelcontextprotocol.io/v0.1/servers"
    private let baseURL: URL
    private let session: URLSession

    init(session: URLSession = .shared) {
        // This URL is a compile-time constant and guaranteed to be valid
        guard let url = URL(string: Self.registryURLString) else {
            fatalError("Invalid registry URL constant: \(Self.registryURLString)")
        }
        self.baseURL = url
        self.session = session
    }

    /// Fetch servers with pagination support
    func fetchServers(cursor: String? = nil, limit: Int = 100) async throws -> (servers: [MCPServer], nextCursor: String?) {
        guard var urlComponents = URLComponents(url: baseURL, resolvingAgainstBaseURL: false) else {
            throw RegistryError.invalidResponse
        }
        var queryItems: [URLQueryItem] = [URLQueryItem(name: "limit", value: String(limit))]

        if let cursor = cursor {
            queryItems.append(URLQueryItem(name: "cursor", value: cursor))
        }

        urlComponents.queryItems = queryItems

        guard let requestURL = urlComponents.url else {
            throw RegistryError.invalidResponse
        }
        let (data, response) = try await session.data(from: requestURL)

        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw RegistryError.invalidResponse
        }

        let registryResponse = try JSONDecoder().decode(RegistryResponse.self, from: data)
        let servers = registryResponse.servers.map { $0.server }

        return (servers, registryResponse.metadata.nextCursor)
    }

    /// Fetch all servers (handles pagination automatically)
    func fetchAllServers() async throws -> [MCPServer] {
        var allServers: [MCPServer] = []
        var cursor: String? = nil

        repeat {
            let result = try await fetchServers(cursor: cursor)
            allServers.append(contentsOf: result.servers)
            cursor = result.nextCursor
        } while cursor != nil

        // Deduplicate by repository URL, keeping the entry with newest version
        return deduplicateByRepository(allServers)
    }

    /// Deduplicate servers by repository URL, keeping the entry with the newest version
    private func deduplicateByRepository(_ servers: [MCPServer]) -> [MCPServer] {
        var bestByRepo: [String: MCPServer] = [:]
        var noRepoServers: [String: MCPServer] = [:]

        for server in servers {
            guard let repoUrl = server.repositoryUrl else {
                // No repo URL - dedupe by name
                if noRepoServers[server.name] == nil {
                    noRepoServers[server.name] = server
                }
                continue
            }

            // Normalize repo URL (remove .git suffix, trailing slashes)
            let normalized = repoUrl
                .replacingOccurrences(of: ".git", with: "")
                .trimmingCharacters(in: CharacterSet(charactersIn: "/"))
                .lowercased()

            if let existing = bestByRepo[normalized] {
                // Keep the one with higher version (or more packages as tiebreaker)
                let serverVersion = server.version ?? ""
                let existingVersion = existing.version ?? ""
                if serverVersion.compare(existingVersion, options: .numeric) == .orderedDescending {
                    bestByRepo[normalized] = server
                } else if serverVersion == existingVersion && server.packages.count > existing.packages.count {
                    bestByRepo[normalized] = server
                }
            } else {
                bestByRepo[normalized] = server
            }
        }

        return Array(bestByRepo.values) + Array(noRepoServers.values)
    }
}

enum RegistryError: LocalizedError {
    case invalidResponse
    case decodingError(Error)
    case networkError(Error)

    var errorDescription: String? {
        switch self {
        case .invalidResponse: return "Invalid response from registry"
        case .decodingError(let error): return "Failed to decode: \(error.localizedDescription)"
        case .networkError(let error): return "Network error: \(error.localizedDescription)"
        }
    }
}
