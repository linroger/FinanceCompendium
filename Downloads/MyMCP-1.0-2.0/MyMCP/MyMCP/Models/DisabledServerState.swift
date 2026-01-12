import Foundation

/// Stored server configuration for re-enabling disabled servers
struct StoredServerConfig: Codable, Hashable {
    let command: String
    let args: [String]
    let env: [String: String]?

    init(command: String, args: [String], env: [String: String]? = nil) {
        self.command = command
        self.args = args
        self.env = env
    }

    init(from installedConfig: InstalledServerConfig) {
        self.command = installedConfig.command
        self.args = installedConfig.args
        self.env = installedConfig.env
    }

    func toInstalledServerConfig(name: String, claudeCodeScope: ClaudeCodeScope? = nil) -> InstalledServerConfig {
        InstalledServerConfig(name: name, command: command, args: args, env: env, claudeCodeScope: claudeCodeScope)
    }
}

/// Represents the disabled state of a server for a specific client
struct DisabledServerEntry: Codable, Identifiable, Hashable {
    /// Unique identifier - includes scope for Claude Code entries
    var id: String {
        if let scope = claudeCodeScope {
            return "\(serverName)_\(clientType.rawValue)_\(scope.id)"
        }
        return "\(serverName)_\(clientType.rawValue)"
    }

    let serverName: String
    let clientType: MCPClientType
    let config: StoredServerConfig
    let disabledAt: Date

    /// Claude Code scope (nil for other clients)
    let claudeCodeScope: ClaudeCodeScope?

    init(serverName: String, clientType: MCPClientType, config: StoredServerConfig, disabledAt: Date = Date(), claudeCodeScope: ClaudeCodeScope? = nil) {
        self.serverName = serverName
        self.clientType = clientType
        self.config = config
        self.disabledAt = disabledAt
        self.claudeCodeScope = claudeCodeScope
    }
}

/// The complete disabled servers state stored by MyMCP
struct DisabledServersStore: Codable {
    var entries: [DisabledServerEntry]
    var version: Int = 2  // Bumped for scope support

    init(entries: [DisabledServerEntry] = []) {
        self.entries = entries
    }

    // MARK: - Non-Claude Code Methods (backwards compatible)

    /// Check if a server is disabled for a specific client (non-Claude Code)
    func isDisabled(serverName: String, clientType: MCPClientType) -> Bool {
        entries.contains { $0.serverName == serverName && $0.clientType == clientType && $0.claudeCodeScope == nil }
    }

    /// Get the stored config for a disabled server (non-Claude Code)
    func getConfig(serverName: String, clientType: MCPClientType) -> StoredServerConfig? {
        entries.first { $0.serverName == serverName && $0.clientType == clientType && $0.claudeCodeScope == nil }?.config
    }

    /// Get all disabled client types for a server (non-Claude Code clients only)
    func disabledClients(for serverName: String) -> Set<MCPClientType> {
        Set(entries.filter { $0.serverName == serverName && $0.claudeCodeScope == nil }.map { $0.clientType })
    }

    /// Add a disabled server entry (replaces existing if present)
    mutating func add(_ entry: DisabledServerEntry) {
        if let scope = entry.claudeCodeScope {
            // Claude Code: match by server name, client type, AND scope
            entries.removeAll { $0.serverName == entry.serverName && $0.clientType == entry.clientType && $0.claudeCodeScope == scope }
        } else {
            // Other clients: match by server name and client type only
            entries.removeAll { $0.serverName == entry.serverName && $0.clientType == entry.clientType && $0.claudeCodeScope == nil }
        }
        entries.append(entry)
    }

    /// Remove a disabled server entry (when re-enabling) for non-Claude Code
    mutating func remove(serverName: String, clientType: MCPClientType) {
        entries.removeAll { $0.serverName == serverName && $0.clientType == clientType && $0.claudeCodeScope == nil }
    }

    /// Remove all entries for a server (when fully uninstalling)
    mutating func removeAll(serverName: String) {
        entries.removeAll { $0.serverName == serverName }
    }

    // MARK: - Claude Code Scope Methods

    /// Check if a Claude Code server scope is disabled
    func isDisabled(serverName: String, scope: ClaudeCodeScope) -> Bool {
        entries.contains { $0.serverName == serverName && $0.clientType == .claudeCode && $0.claudeCodeScope == scope }
    }

    /// Get the stored config for a disabled Claude Code server scope
    func getConfig(serverName: String, scope: ClaudeCodeScope) -> StoredServerConfig? {
        entries.first { $0.serverName == serverName && $0.clientType == .claudeCode && $0.claudeCodeScope == scope }?.config
    }

    /// Get all disabled Claude Code scopes for a server
    func disabledClaudeCodeScopes(for serverName: String) -> Set<ClaudeCodeScope> {
        Set(entries.filter { $0.serverName == serverName && $0.clientType == .claudeCode && $0.claudeCodeScope != nil }.compactMap { $0.claudeCodeScope })
    }

    /// Remove a disabled Claude Code scope entry (when re-enabling)
    mutating func remove(serverName: String, scope: ClaudeCodeScope) {
        entries.removeAll { $0.serverName == serverName && $0.clientType == .claudeCode && $0.claudeCodeScope == scope }
    }

    /// Get all disabled entries for a server (both regular clients and Claude Code scopes)
    func allDisabledEntries(for serverName: String) -> [DisabledServerEntry] {
        entries.filter { $0.serverName == serverName }
    }
}
