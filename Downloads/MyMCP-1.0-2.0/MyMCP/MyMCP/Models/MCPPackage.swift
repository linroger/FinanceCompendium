import Foundation

/// Package information for installing an MCP server
struct MCPPackage: Codable, Identifiable, Hashable {
    var id: String { identifier }

    let registryType: PackageRegistryType
    let identifier: String
    let transport: MCPTransport?
    let environmentVariables: [MCPEnvironmentVariable]?

    init(registryType: PackageRegistryType, identifier: String,
         transport: MCPTransport? = nil, environmentVariables: [MCPEnvironmentVariable]? = nil) {
        self.registryType = registryType
        self.identifier = identifier
        self.transport = transport
        self.environmentVariables = environmentVariables
    }
}

enum PackageRegistryType: String, Codable, Hashable, CaseIterable {
    case npm
    case pypi
    case oci
    case mcpb
    case unknown

    static var allCases: [PackageRegistryType] {
        [.npm, .pypi, .oci, .mcpb]
    }

    init(from decoder: Decoder) throws {
        let value = try decoder.singleValueContainer().decode(String.self)
        self = PackageRegistryType(rawValue: value) ?? .unknown
    }

    var displayName: String {
        switch self {
        case .npm: return "NPM"
        case .pypi: return "PyPI"
        case .oci: return "Docker"
        case .mcpb: return "MCP Bundle"
        case .unknown: return "Other"
        }
    }

    var installCommand: String {
        switch self {
        case .npm: return "npx"
        case .pypi: return "uvx"
        case .oci: return "docker"
        case .mcpb: return "open"
        case .unknown: return ""
        }
    }
}

struct MCPTransport: Codable, Hashable {
    let type: TransportType
    let url: String?

    init(type: TransportType, url: String? = nil) {
        self.type = type
        self.url = url
    }

    enum CodingKeys: String, CodingKey {
        case type, url
    }
}

enum TransportType: String, Codable, Hashable {
    case stdio
    case streamableHttp = "streamable-http"
    case sse
    case unknown

    init(from decoder: Decoder) throws {
        let value = try decoder.singleValueContainer().decode(String.self)
        switch value {
        case "stdio": self = .stdio
        case "streamable-http": self = .streamableHttp
        case "sse": self = .sse
        default: self = .unknown
        }
    }

    var displayName: String {
        switch self {
        case .stdio: return "stdio"
        case .sse: return "sse"
        case .streamableHttp: return "http"
        case .unknown: return "other"
        }
    }
}

struct MCPEnvironmentVariable: Codable, Hashable, Identifiable {
    var id: String { name }

    let name: String
    let description: String?
    let format: String?
    let isSecret: Bool?

    init(name: String, description: String? = nil, format: String? = nil, isSecret: Bool? = nil) {
        self.name = name
        self.description = description
        self.format = format
        self.isSecret = isSecret
    }
}
