import Foundation

/// Configuration for an installed MCP server in a client's config file
struct InstalledServerConfig: Codable, Identifiable, Hashable {
    /// Unique identifier - includes scope for Claude Code servers to handle duplicates
    var id: String {
        if let scope = claudeCodeScope {
            return "\(name)_\(scope.id)"
        }
        return name
    }

    let name: String
    let command: String
    let args: [String]
    var env: [String: String]?

    /// Claude Code scope information (nil for non-Claude Code clients)
    var claudeCodeScope: ClaudeCodeScope?

    enum CodingKeys: String, CodingKey {
        case command, args, env, claudeCodeScope
    }

    init(name: String, command: String, args: [String], env: [String: String]? = nil, claudeCodeScope: ClaudeCodeScope? = nil) {
        self.name = name
        self.command = command
        self.args = args
        self.env = env
        self.claudeCodeScope = claudeCodeScope
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = ""
        self.command = try container.decode(String.self, forKey: .command)
        self.args = try container.decodeIfPresent([String].self, forKey: .args) ?? []
        self.env = try container.decodeIfPresent([String: String].self, forKey: .env)
        self.claudeCodeScope = try container.decodeIfPresent(ClaudeCodeScope.self, forKey: .claudeCodeScope)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(command, forKey: .command)
        try container.encode(args, forKey: .args)
        try container.encodeIfPresent(env, forKey: .env)
        try container.encodeIfPresent(claudeCodeScope, forKey: .claudeCodeScope)
    }
}

/// Unified view of a server across all clients
struct UnifiedInstalledServer: Identifiable, Hashable, Searchable {
    let id: String
    let name: String
    var clients: [MCPClientType: InstalledServerConfig]
    var registryServer: MCPServer?
    var disabledClients: Set<MCPClientType> = []

    /// Claude Code installations by scope (supports multiple scopes for same server)
    var claudeCodeScopes: [ClaudeCodeScope: InstalledServerConfig] = [:]

    /// Disabled Claude Code scopes
    var disabledClaudeCodeScopes: Set<ClaudeCodeScope> = []

    var searchableText: [String?] {
        [name, registryServer?.description]
    }

    var installedClientTypes: [MCPClientType] {
        var types = Set(clients.keys)
        if !claudeCodeScopes.isEmpty {
            types.insert(.claudeCode)
        }
        return Array(types).sorted { $0.displayName < $1.displayName }
    }

    /// All clients that have ever had this server (enabled + disabled), excluding Claude Code
    /// (Claude Code is handled separately in MenuBar with scope expansion)
    var allKnownNonClaudeCodeClients: [MCPClientType] {
        let enabled = Set(clients.keys).filter { $0 != .claudeCode }
        let disabled = disabledClients.filter { $0 != .claudeCode }
        return Array(enabled.union(disabled)).sorted { $0.displayName < $1.displayName }
    }

    /// All clients that have ever had this server (enabled + disabled)
    var allKnownClients: [MCPClientType] {
        var enabled = Set(clients.keys)
        // Include Claude Code if we have any scopes
        if !claudeCodeScopes.isEmpty || !disabledClaudeCodeScopes.isEmpty {
            enabled.insert(.claudeCode)
        }
        return Array(enabled.union(disabledClients)).sorted { $0.displayName < $1.displayName }
    }

    var primaryConfig: InstalledServerConfig? {
        clients.values.first
    }

    /// Check if server is enabled for a specific client
    func isEnabled(for clientType: MCPClientType) -> Bool {
        if clientType == .claudeCode {
            // Claude Code is enabled if ANY scope is enabled
            return !claudeCodeScopes.isEmpty
        }
        return clients[clientType] != nil
    }

    /// Check if server has any disabled clients
    var hasDisabledClients: Bool {
        !disabledClients.isEmpty
    }

    /// Check if Claude Code has mixed state (some scopes enabled, some disabled)
    var claudeCodeHasMixedState: Bool {
        !claudeCodeScopes.isEmpty && !disabledClaudeCodeScopes.isEmpty
    }

    /// Count of enabled clients (Claude Code counts as 1 if any scope is enabled)
    var enabledCount: Int {
        var count = clients.count
        if !claudeCodeScopes.isEmpty {
            count += 1
        }
        return count
    }

    /// Count of all known clients (enabled + disabled)
    var totalKnownCount: Int {
        allKnownClients.count
    }

    // MARK: - Claude Code Scope Properties

    /// Check if server is installed globally for Claude Code
    var isGlobalForClaudeCode: Bool {
        claudeCodeScopes.keys.contains { $0.isGlobal }
    }

    /// Check if server has any Claude Code installations
    var hasClaudeCodeInstallations: Bool {
        !claudeCodeScopes.isEmpty
    }

    /// All project paths where this server is installed for Claude Code
    var claudeCodeProjects: [String] {
        claudeCodeScopes.keys.compactMap { $0.projectPath }.sorted()
    }

    /// All scopes sorted for display
    var sortedClaudeCodeScopes: [ClaudeCodeScope] {
        claudeCodeScopes.keys.sorted()
    }

    /// All known Claude Code scopes (enabled + disabled)
    var allKnownClaudeCodeScopes: [ClaudeCodeScope] {
        Array(Set(claudeCodeScopes.keys).union(disabledClaudeCodeScopes)).sorted()
    }

    /// Check if a specific scope is enabled
    func isClaudeCodeScopeEnabled(_ scope: ClaudeCodeScope) -> Bool {
        claudeCodeScopes[scope] != nil
    }

    /// Get config for a specific scope
    func claudeCodeConfig(for scope: ClaudeCodeScope) -> InstalledServerConfig? {
        claudeCodeScopes[scope]
    }

    /// Get scopes for a specific project path
    func claudeCodeScopes(for projectPath: String) -> [ClaudeCodeScope] {
        claudeCodeScopes.keys.filter { $0.projectPath == projectPath }
    }

    /// Count of enabled Claude Code scopes
    var enabledClaudeCodeScopeCount: Int {
        claudeCodeScopes.count
    }

    /// Count of all known Claude Code scopes (enabled + disabled)
    var totalClaudeCodeScopeCount: Int {
        allKnownClaudeCodeScopes.count
    }

    /// Check if Claude Code has any disabled scopes
    var hasDisabledClaudeCodeScopes: Bool {
        !disabledClaudeCodeScopes.isEmpty
    }

    static func == (lhs: UnifiedInstalledServer, rhs: UnifiedInstalledServer) -> Bool {
        lhs.id == rhs.id
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    /// Returns clients that are available but don't have this server installed
    func availableClientsForInstall(from allClients: [MCPClient]) -> [MCPClient] {
        let installedTypes = Set(self.installedClientTypes)
        return allClients.filter { !installedTypes.contains($0.type) }
    }
}
