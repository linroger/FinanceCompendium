import Foundation

// MARK: - Searchable Protocol

/// Protocol for types that can be searched by text
protocol Searchable {
    var searchableText: [String?] { get }
}

extension Array where Element: Searchable {
    /// Filter elements matching a search query
    func matching(query: String) -> [Element] {
        guard !query.isEmpty else { return self }
        let q = query.lowercased()
        return filter { item in
            item.searchableText.contains { $0?.lowercased().contains(q) ?? false }
        }
    }
}

// MARK: - MCPServer

/// Represents a server from the MCP registry
struct MCPServer: Codable, Identifiable, Hashable, Searchable {
    var id: String {
        if let repoUrl = repository?.url {
            // Create unique ID from name + normalized repo URL
            let normalized = repoUrl
                .replacingOccurrences(of: ".git", with: "")
                .trimmingCharacters(in: CharacterSet(charactersIn: "/"))
                .lowercased()
            return "\(name)|\(normalized)"
        }
        return name
    }

    let name: String
    let title: String?
    let description: String?
    let version: String?
    let packages: [MCPPackage]
    let icons: [MCPIcon]?
    let repository: MCPRepository?
    let websiteUrl: String?

    var displayName: String {
        title ?? name.components(separatedBy: "/").last ?? name
    }

    var primaryPackage: MCPPackage? {
        packages.first
    }

    var iconURL: URL? {
        guard let iconSrc = icons?.first?.src else { return nil }
        return URL(string: iconSrc)
    }

    var searchableText: [String?] {
        [name, displayName, description]
    }

    /// Unique transport types across all packages (deduplicated)
    var uniqueTransportTypes: [TransportType] {
        var seen = Set<TransportType>()
        return packages.compactMap { package in
            guard let transport = package.transport?.type else { return nil }
            if seen.contains(transport) { return nil }
            seen.insert(transport)
            return transport
        }
    }

    /// Repository URL for deduplication
    var repositoryUrl: String? {
        repository?.url
    }

    enum CodingKeys: String, CodingKey {
        case name, title, description, version, packages, icons, repository, websiteUrl
    }

    init(name: String, title: String? = nil, description: String? = nil,
         version: String? = nil, packages: [MCPPackage] = [],
         icons: [MCPIcon]? = nil, repository: MCPRepository? = nil,
         websiteUrl: String? = nil) {
        self.name = name
        self.title = title
        self.description = description
        self.version = version
        self.packages = packages
        self.icons = icons
        self.repository = repository
        self.websiteUrl = websiteUrl
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
        title = try container.decodeIfPresent(String.self, forKey: .title)
        description = try container.decodeIfPresent(String.self, forKey: .description)
        version = try container.decodeIfPresent(String.self, forKey: .version)
        packages = try container.decodeIfPresent([MCPPackage].self, forKey: .packages) ?? []
        icons = try container.decodeIfPresent([MCPIcon].self, forKey: .icons)
        repository = try container.decodeIfPresent(MCPRepository.self, forKey: .repository)
        websiteUrl = try container.decodeIfPresent(String.self, forKey: .websiteUrl)
    }
}

struct MCPIcon: Codable, Hashable {
    let src: String
    let mimeType: String?
    let theme: String?

    init(src: String, mimeType: String? = nil, theme: String? = nil) {
        self.src = src
        self.mimeType = mimeType
        self.theme = theme
    }
}

struct MCPRepository: Codable, Hashable {
    let url: String?
    let source: String?

    init(url: String? = nil, source: String? = nil) {
        self.url = url
        self.source = source
    }
}
