import Foundation

/// Response from MCP registry API
struct RegistryResponse: Codable {
    let servers: [ServerWrapper]
    let metadata: RegistryMetadata
}

struct ServerWrapper: Codable {
    let server: MCPServer
}

struct RegistryMetadata: Codable {
    let nextCursor: String?
    let count: Int
}
