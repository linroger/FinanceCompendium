import Foundation

/// Service for managing disabled server state persistence
actor DisabledServersService {
    private let fileManager = FileManager.default

    /// Storage path: ~/Library/Application Support/MyMCP/disabled_servers.json
    private var storagePath: URL {
        guard let appSupport = fileManager.urls(for: .applicationSupportDirectory, in: .userDomainMask).first else {
            // Fallback to home directory if Application Support unavailable
            return fileManager.homeDirectoryForCurrentUser
                .appendingPathComponent(".mymcp")
                .appendingPathComponent("disabled_servers.json")
        }
        let myMCPDir = appSupport.appendingPathComponent("MyMCP")
        return myMCPDir.appendingPathComponent("disabled_servers.json")
    }

    /// Load the current disabled servers state
    func load() async throws -> DisabledServersStore {
        MCPLogger.config.debug("Loading disabled servers from: \(self.storagePath.path, privacy: .public)")

        guard fileManager.fileExists(atPath: storagePath.path) else {
            MCPLogger.config.debug("No disabled servers file found, returning empty store")
            return DisabledServersStore()
        }

        let data = try Data(contentsOf: storagePath)
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        let store = try decoder.decode(DisabledServersStore.self, from: data)
        MCPLogger.config.info("Loaded \(store.entries.count, privacy: .public) disabled server entries")
        return store
    }

    /// Save the disabled servers state
    func save(_ store: DisabledServersStore) async throws {
        MCPLogger.config.debug("Saving \(store.entries.count, privacy: .public) disabled server entries")

        let directory = storagePath.deletingLastPathComponent()
        if !fileManager.fileExists(atPath: directory.path) {
            MCPLogger.config.debug("Creating MyMCP directory: \(directory.path, privacy: .public)")
            try fileManager.createDirectory(at: directory, withIntermediateDirectories: true)
        }

        let encoder = JSONEncoder()
        encoder.outputFormatting = [.prettyPrinted, .sortedKeys]
        encoder.dateEncodingStrategy = .iso8601
        let data = try encoder.encode(store)
        try data.write(to: storagePath, options: .atomic)

        MCPLogger.config.info("Saved disabled servers to: \(self.storagePath.path, privacy: .public)")
    }

    // MARK: - Non-Claude Code Methods

    /// Disable a server by storing its config (for non-Claude Code clients)
    func disableServer(
        serverName: String,
        clientType: MCPClientType,
        config: InstalledServerConfig
    ) async throws {
        MCPLogger.config.info("Storing disabled config for '\(serverName, privacy: .public)' in \(clientType.displayName, privacy: .public)")

        var store = try await load()
        let entry = DisabledServerEntry(
            serverName: serverName,
            clientType: clientType,
            config: StoredServerConfig(from: config),
            disabledAt: Date()
        )
        store.add(entry)
        try await save(store)

        MCPLogger.config.info("Disabled config stored for '\(serverName, privacy: .public)'")
    }

    /// Enable a server by removing it from the disabled store (for non-Claude Code clients)
    func enableServer(serverName: String, clientType: MCPClientType) async throws {
        MCPLogger.config.info("Removing disabled entry for '\(serverName, privacy: .public)' from \(clientType.displayName, privacy: .public)")

        var store = try await load()
        store.remove(serverName: serverName, clientType: clientType)
        try await save(store)

        MCPLogger.config.info("Disabled entry removed for '\(serverName, privacy: .public)'")
    }

    /// Get stored config for a disabled server (for non-Claude Code clients)
    func getStoredConfig(serverName: String, clientType: MCPClientType) async throws -> StoredServerConfig? {
        let store = try await load()
        return store.getConfig(serverName: serverName, clientType: clientType)
    }

    /// Get all disabled entries
    func getDisabledEntries() async throws -> [DisabledServerEntry] {
        let store = try await load()
        return store.entries
    }

    /// Remove all disabled entries for a server (when fully uninstalling)
    func removeAllEntries(for serverName: String) async throws {
        MCPLogger.config.info("Removing all disabled entries for '\(serverName, privacy: .public)'")

        var store = try await load()
        store.removeAll(serverName: serverName)
        try await save(store)
    }

    // MARK: - Claude Code Scope Methods

    /// Disable a Claude Code server scope by storing its config
    func disableServer(
        serverName: String,
        scope: ClaudeCodeScope,
        config: InstalledServerConfig
    ) async throws {
        MCPLogger.config.info("Storing disabled config for '\(serverName, privacy: .public)' in Claude Code scope: \(scope.displayName, privacy: .public)")

        var store = try await load()
        let entry = DisabledServerEntry(
            serverName: serverName,
            clientType: .claudeCode,
            config: StoredServerConfig(from: config),
            disabledAt: Date(),
            claudeCodeScope: scope
        )
        store.add(entry)
        try await save(store)

        MCPLogger.config.info("Disabled config stored for '\(serverName, privacy: .public)' scope: \(scope.displayName, privacy: .public)")
    }

    /// Enable a Claude Code server scope by removing it from the disabled store
    func enableServer(serverName: String, scope: ClaudeCodeScope) async throws {
        MCPLogger.config.info("Removing disabled entry for '\(serverName, privacy: .public)' from Claude Code scope: \(scope.displayName, privacy: .public)")

        var store = try await load()
        store.remove(serverName: serverName, scope: scope)
        try await save(store)

        MCPLogger.config.info("Disabled entry removed for '\(serverName, privacy: .public)' scope: \(scope.displayName, privacy: .public)")
    }

    /// Get stored config for a disabled Claude Code server scope
    func getStoredConfig(serverName: String, scope: ClaudeCodeScope) async throws -> StoredServerConfig? {
        let store = try await load()
        return store.getConfig(serverName: serverName, scope: scope)
    }

    /// Get all disabled Claude Code scopes for a server
    func getDisabledScopes(for serverName: String) async throws -> Set<ClaudeCodeScope> {
        let store = try await load()
        return store.disabledClaudeCodeScopes(for: serverName)
    }
}
