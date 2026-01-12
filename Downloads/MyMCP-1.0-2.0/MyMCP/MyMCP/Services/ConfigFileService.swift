import Foundation
import os.log

/// Service for reading and writing MCP client config files
actor ConfigFileService {
    private let fileManager = FileManager.default
    private let openCodeConverter = OpenCodeFormatConverter()

    /// Install a server to a client's config file
    /// - Parameters:
    ///   - server: The MCP server to install
    ///   - serverName: Name to use for the server entry
    ///   - toClient: Target client
    ///   - envVars: Environment variables
    ///   - claudeCodeScope: For Claude Code only, specifies the scope (global, local, or project)
    ///   - progress: Optional progress callback
    func installServer(
        server: MCPServer,
        serverName: String,
        toClient client: MCPClient,
        envVars: [String: String] = [:],
        claudeCodeScope: ClaudeCodeScope? = nil,
        progress: ((InstallProgress) -> Void)? = nil
    ) async throws {
        MCPLogger.config.info("Installing server '\(serverName, privacy: .public)' to \(client.type.displayName, privacy: .public)")

        guard let configPath = client.configPath else {
            MCPLogger.config.error("No config path for client \(client.type.displayName, privacy: .public)")
            progress?(.failed("No config path"))
            throw ConfigError.noConfigPath
        }
        MCPLogger.config.debug("Config path: \(configPath.path, privacy: .public)")

        guard let package = server.primaryPackage else {
            MCPLogger.config.error("No package info for server '\(serverName, privacy: .public)'")
            progress?(.failed("No package info"))
            throw ConfigError.noPackageInfo
        }
        MCPLogger.config.debug("Package type: \(String(describing: package.registryType), privacy: .public), identifier: \(package.identifier, privacy: .public)")

        progress?(.generatingConfig)
        MCPLogger.config.debug("Generating server config...")
        let serverConfig = generateServerConfig(for: package, envVars: envVars)
        MCPLogger.config.debug("Generated config with command: \(serverConfig["command"] as? String ?? "unknown", privacy: .public)")

        // Handle Claude Code scope-aware installation
        if client.type == .claudeCode, let scope = claudeCodeScope {
            try await installServerToClaudeCodeScope(
                serverName: serverName,
                serverConfig: serverConfig,
                scope: scope,
                configPath: configPath,
                progress: progress
            )
        } else {
            try await addServerToClientConfig(
                serverName: serverName,
                serverConfig: serverConfig,
                client: client,
                configPath: configPath,
                progress: progress
            )
        }

        MCPLogger.config.info("Successfully installed '\(serverName, privacy: .public)' to \(client.type.displayName, privacy: .public)")
    }

    /// Uninstall a server from a client's config file
    /// - Parameters:
    ///   - serverName: Name of the server to uninstall
    ///   - fromClient: Target client
    ///   - claudeCodeScope: For Claude Code only, specifies which scope to remove from
    ///   - progress: Optional progress callback
    func uninstallServer(
        serverName: String,
        fromClient client: MCPClient,
        claudeCodeScope: ClaudeCodeScope? = nil,
        progress: ((UninstallProgress) -> Void)? = nil
    ) async throws {
        MCPLogger.config.info("Uninstalling server '\(serverName, privacy: .public)' from \(client.type.displayName, privacy: .public)")

        guard let configPath = client.configPath else {
            MCPLogger.config.error("No config path for client \(client.type.displayName, privacy: .public)")
            progress?(.failed("No config path"))
            throw ConfigError.noConfigPath
        }
        MCPLogger.config.debug("Config path: \(configPath.path, privacy: .public)")

        progress?(.readingConfig)

        // Handle Claude Code scope-aware uninstallation
        if client.type == .claudeCode, let scope = claudeCodeScope {
            try await uninstallServerFromClaudeCodeScope(
                serverName: serverName,
                scope: scope,
                configPath: configPath,
                progress: progress
            )
            MCPLogger.config.info("Successfully uninstalled '\(serverName, privacy: .public)' from Claude Code scope: \(scope.displayName, privacy: .public)")
            return
        }

        guard fileManager.fileExists(atPath: configPath.path) else {
            MCPLogger.config.error("Config file not found: \(configPath.path, privacy: .public)")
            progress?(.failed("Config file not found"))
            throw ConfigError.configNotFound
        }
        MCPLogger.config.debug("Config file exists")

        if client.type.usesTomlConfig {
            MCPLogger.config.debug("Using TOML config format")
            progress?(.parsingConfig)
            progress?(.removingEntry)
            try await uninstallServerFromToml(serverName: serverName, configPath: configPath)
        } else if client.type.usesOpenCodeFormat {
            MCPLogger.config.debug("Using OpenCode config format")
            progress?(.parsingConfig)
            progress?(.removingEntry)
            try await uninstallServerFromOpenCode(serverName: serverName, configPath: configPath)
        } else {
            MCPLogger.config.debug("Using JSON config format")
            progress?(.parsingConfig)
            let data = try Data(contentsOf: configPath)
            MCPLogger.config.debug("Read config file: \(data.count, privacy: .public) bytes")

            var configDict = try JSONSerialization.jsonObject(with: data) as? [String: Any] ?? [:]
            MCPLogger.config.debug("Parsed config with \(configDict.count, privacy: .public) top-level keys")

            progress?(.removingEntry)
            configDict = removeServerFromConfig(configDict, clientType: client.type, serverName: serverName)
            MCPLogger.config.debug("Removed server '\(serverName, privacy: .public)' from config dictionary")

            progress?(.writingConfig)
            try await writeConfig(configDict, to: configPath)
        }

        MCPLogger.config.info("Successfully uninstalled '\(serverName, privacy: .public)' from \(client.type.displayName, privacy: .public)")
    }

    /// Update environment variables for an installed server
    func updateServerEnv(
        serverName: String,
        client: MCPClient,
        envVars: [String: String]
    ) async throws {
        MCPLogger.config.info("Updating env vars for '\(serverName, privacy: .public)' in \(client.type.displayName, privacy: .public)")
        MCPLogger.config.debug("New env vars: \(envVars.keys.joined(separator: ", "), privacy: .public)")

        guard let configPath = client.configPath else {
            MCPLogger.config.error("No config path for client")
            throw ConfigError.noConfigPath
        }

        let data = try Data(contentsOf: configPath)
        MCPLogger.config.debug("Read config: \(data.count, privacy: .public) bytes")

        var configDict = try JSONSerialization.jsonObject(with: data) as? [String: Any] ?? [:]

        configDict = updateServerEnvInConfig(configDict, clientType: client.type, serverName: serverName, envVars: envVars)

        try await writeConfig(configDict, to: configPath)
        MCPLogger.config.info("Env vars updated successfully for '\(serverName, privacy: .public)'")
    }

    /// Copy an existing server config to another client (for manually added servers)
    func copyServerConfig(
        config: InstalledServerConfig,
        serverName: String,
        toClient client: MCPClient,
        progress: ((InstallProgress) -> Void)? = nil
    ) async throws {
        MCPLogger.config.info("Copying server '\(serverName, privacy: .public)' to \(client.type.displayName, privacy: .public)")

        guard let configPath = client.configPath else {
            MCPLogger.config.error("No config path for client \(client.type.displayName, privacy: .public)")
            progress?(.failed("No config path"))
            throw ConfigError.noConfigPath
        }
        MCPLogger.config.debug("Config path: \(configPath.path, privacy: .public)")

        progress?(.generatingConfig)
        MCPLogger.config.debug("Building server config from existing config...")
        let serverConfig = buildServerConfigDict(command: config.command, args: config.args, env: config.env)
        MCPLogger.config.debug("Built config with command: \(config.command, privacy: .public)")

        try await addServerToClientConfig(
            serverName: serverName,
            serverConfig: serverConfig,
            client: client,
            configPath: configPath,
            progress: progress
        )

        MCPLogger.config.info("Successfully copied '\(serverName, privacy: .public)' to \(client.type.displayName, privacy: .public)")
    }

    // MARK: - Enable/Disable Server Methods

    /// Enable a previously disabled server by re-adding it to the client config
    /// - Parameters:
    ///   - serverName: Name of the server to enable
    ///   - config: Stored configuration to restore
    ///   - toClient: Target client
    ///   - claudeCodeScope: For Claude Code only, specifies which scope to enable in
    ///   - progress: Optional progress callback
    func enableServer(
        serverName: String,
        config: StoredServerConfig,
        toClient client: MCPClient,
        claudeCodeScope: ClaudeCodeScope? = nil,
        progress: ((InstallProgress) -> Void)? = nil
    ) async throws {
        MCPLogger.config.info("Re-enabling server '\(serverName, privacy: .public)' to \(client.type.displayName, privacy: .public)")

        guard let configPath = client.configPath else {
            MCPLogger.config.error("No config path for client \(client.type.displayName, privacy: .public)")
            progress?(.failed("No config path"))
            throw ConfigError.noConfigPath
        }

        let serverConfig = buildServerConfigDict(command: config.command, args: config.args, env: config.env)

        // Handle Claude Code scope-aware enabling
        if client.type == .claudeCode, let scope = claudeCodeScope {
            try await installServerToClaudeCodeScope(
                serverName: serverName,
                serverConfig: serverConfig,
                scope: scope,
                configPath: configPath,
                progress: progress
            )
        } else {
            try await addServerToClientConfig(
                serverName: serverName,
                serverConfig: serverConfig,
                client: client,
                configPath: configPath,
                progress: progress
            )
        }

        MCPLogger.config.info("Successfully re-enabled '\(serverName, privacy: .public)' in \(client.type.displayName, privacy: .public)")
    }

    // MARK: - Claude Code Scope Methods

    /// Install server to a specific Claude Code scope
    private func installServerToClaudeCodeScope(
        serverName: String,
        serverConfig: [String: Any],
        scope: ClaudeCodeScope,
        configPath: URL,
        progress: ((InstallProgress) -> Void)?
    ) async throws {
        MCPLogger.config.info("Installing to Claude Code scope: \(scope.displayName, privacy: .public)")

        switch scope {
        case .global:
            try await writeToClaudeCodeGlobal(serverName: serverName, serverConfig: serverConfig, configPath: configPath, progress: progress)

        case .local(let projectPath):
            try await writeToClaudeCodeLocal(serverName: serverName, serverConfig: serverConfig, projectPath: projectPath, configPath: configPath, progress: progress)

        case .project(let projectPath):
            let mcpJsonPath = URL(fileURLWithPath: projectPath).appendingPathComponent(".mcp.json")
            try await writeToProjectMcpJson(serverName: serverName, serverConfig: serverConfig, mcpJsonPath: mcpJsonPath, progress: progress)
        }
    }

    /// Uninstall server from a specific Claude Code scope
    private func uninstallServerFromClaudeCodeScope(
        serverName: String,
        scope: ClaudeCodeScope,
        configPath: URL,
        progress: ((UninstallProgress) -> Void)?
    ) async throws {
        MCPLogger.config.info("Uninstalling from Claude Code scope: \(scope.displayName, privacy: .public)")

        switch scope {
        case .global:
            try await removeFromClaudeCodeGlobal(serverName: serverName, configPath: configPath, progress: progress)

        case .local(let projectPath):
            try await removeFromClaudeCodeLocal(serverName: serverName, projectPath: projectPath, configPath: configPath, progress: progress)

        case .project(let projectPath):
            let mcpJsonPath = URL(fileURLWithPath: projectPath).appendingPathComponent(".mcp.json")
            try await removeFromProjectMcpJson(serverName: serverName, mcpJsonPath: mcpJsonPath, progress: progress)
        }
    }

    /// Write server to global scope (root-level mcpServers in ~/.claude.json)
    private func writeToClaudeCodeGlobal(
        serverName: String,
        serverConfig: [String: Any],
        configPath: URL,
        progress: ((InstallProgress) -> Void)?
    ) async throws {
        progress?(.readingExistingConfig)
        var configDict = try loadClaudeCodeConfig(from: configPath)

        progress?(.addingServerEntry)
        var mcpServers = configDict["mcpServers"] as? [String: Any] ?? [:]
        mcpServers[serverName] = serverConfig
        configDict["mcpServers"] = mcpServers

        progress?(.writingConfig)
        try await writeConfig(configDict, to: configPath)
        MCPLogger.config.info("Wrote server to global scope")
    }

    /// Write server to local scope (projects[path].mcpServers in ~/.claude.json)
    private func writeToClaudeCodeLocal(
        serverName: String,
        serverConfig: [String: Any],
        projectPath: String,
        configPath: URL,
        progress: ((InstallProgress) -> Void)?
    ) async throws {
        progress?(.readingExistingConfig)
        var configDict = try loadClaudeCodeConfig(from: configPath)

        progress?(.addingServerEntry)
        var projects = configDict["projects"] as? [String: Any] ?? [:]
        var projectConfig = projects[projectPath] as? [String: Any] ?? [:]
        var mcpServers = projectConfig["mcpServers"] as? [String: Any] ?? [:]
        mcpServers[serverName] = serverConfig
        projectConfig["mcpServers"] = mcpServers
        projects[projectPath] = projectConfig
        configDict["projects"] = projects

        progress?(.writingConfig)
        try await writeConfig(configDict, to: configPath)
        MCPLogger.config.info("Wrote server to local scope for project: \(projectPath, privacy: .public)")
    }

    /// Write server to project scope (.mcp.json file)
    private func writeToProjectMcpJson(
        serverName: String,
        serverConfig: [String: Any],
        mcpJsonPath: URL,
        progress: ((InstallProgress) -> Void)?
    ) async throws {
        progress?(.readingExistingConfig)
        try ensureDirectoryExists(for: mcpJsonPath)

        var configDict: [String: Any] = [:]
        if fileManager.fileExists(atPath: mcpJsonPath.path),
           let data = try? Data(contentsOf: mcpJsonPath),
           let existing = try? JSONSerialization.jsonObject(with: data) as? [String: Any] {
            configDict = existing
        }

        progress?(.addingServerEntry)
        var mcpServers = configDict["mcpServers"] as? [String: Any] ?? [:]
        mcpServers[serverName] = serverConfig
        configDict["mcpServers"] = mcpServers

        progress?(.writingConfig)
        try await writeConfig(configDict, to: mcpJsonPath)
        MCPLogger.config.info("Wrote server to project .mcp.json: \(mcpJsonPath.path, privacy: .public)")
    }

    /// Remove server from global scope
    private func removeFromClaudeCodeGlobal(
        serverName: String,
        configPath: URL,
        progress: ((UninstallProgress) -> Void)?
    ) async throws {
        progress?(.parsingConfig)
        var configDict = try loadClaudeCodeConfig(from: configPath)

        progress?(.removingEntry)
        if var mcpServers = configDict["mcpServers"] as? [String: Any] {
            mcpServers.removeValue(forKey: serverName)
            configDict["mcpServers"] = mcpServers
        }

        progress?(.writingConfig)
        try await writeConfig(configDict, to: configPath)
    }

    /// Remove server from local scope
    private func removeFromClaudeCodeLocal(
        serverName: String,
        projectPath: String,
        configPath: URL,
        progress: ((UninstallProgress) -> Void)?
    ) async throws {
        progress?(.parsingConfig)
        var configDict = try loadClaudeCodeConfig(from: configPath)

        progress?(.removingEntry)
        if var projects = configDict["projects"] as? [String: Any],
           var projectConfig = projects[projectPath] as? [String: Any],
           var mcpServers = projectConfig["mcpServers"] as? [String: Any] {
            mcpServers.removeValue(forKey: serverName)
            projectConfig["mcpServers"] = mcpServers
            projects[projectPath] = projectConfig
            configDict["projects"] = projects
        }

        progress?(.writingConfig)
        try await writeConfig(configDict, to: configPath)
    }

    /// Remove server from project .mcp.json
    private func removeFromProjectMcpJson(
        serverName: String,
        mcpJsonPath: URL,
        progress: ((UninstallProgress) -> Void)?
    ) async throws {
        guard fileManager.fileExists(atPath: mcpJsonPath.path) else {
            MCPLogger.config.warning("Project .mcp.json not found: \(mcpJsonPath.path, privacy: .public)")
            return
        }

        progress?(.parsingConfig)
        let data = try Data(contentsOf: mcpJsonPath)
        var configDict = try JSONSerialization.jsonObject(with: data) as? [String: Any] ?? [:]

        progress?(.removingEntry)
        if var mcpServers = configDict["mcpServers"] as? [String: Any] {
            mcpServers.removeValue(forKey: serverName)
            configDict["mcpServers"] = mcpServers
        }

        progress?(.writingConfig)
        try await writeConfig(configDict, to: mcpJsonPath)
    }

    /// Load Claude Code config from ~/.claude.json
    private func loadClaudeCodeConfig(from configPath: URL) throws -> [String: Any] {
        if fileManager.fileExists(atPath: configPath.path) {
            let data = try Data(contentsOf: configPath)
            return try JSONSerialization.jsonObject(with: data) as? [String: Any] ?? [:]
        }
        return [:]
    }

    // MARK: - Private Helpers

    /// Build a server config dictionary from command, args, and optional env
    private func buildServerConfigDict(command: String, args: [String], env: [String: String]?) -> [String: Any] {
        var config: [String: Any] = ["command": command, "args": args]
        if let env = env, !env.isEmpty { config["env"] = env }
        return config
    }

    /// Ensure parent directory exists for a file path
    private func ensureDirectoryExists(for path: URL) throws {
        let dir = path.deletingLastPathComponent()
        guard !fileManager.fileExists(atPath: dir.path) else { return }
        MCPLogger.config.debug("Creating directory: \(dir.path, privacy: .public)")
        try fileManager.createDirectory(at: dir, withIntermediateDirectories: true)
    }

    /// Add a server to a client's config (handles TOML, OpenCode, and standard JSON)
    private func addServerToClientConfig(
        serverName: String,
        serverConfig: [String: Any],
        client: MCPClient,
        configPath: URL,
        progress: ((InstallProgress) -> Void)?
    ) async throws {
        if client.type.usesTomlConfig {
            MCPLogger.config.debug("Using TOML config format")
            progress?(.readingExistingConfig)
            progress?(.addingServerEntry)
            try await installServerToToml(serverName: serverName, serverConfig: serverConfig, configPath: configPath)
        } else if client.type.usesOpenCodeFormat {
            MCPLogger.config.debug("Using OpenCode config format")
            progress?(.readingExistingConfig)
            // Convert standard config to OpenCode format before writing
            let openCodeConfig = await openCodeConverter.toOpenCodeFormat(serverConfig)
            try await installServerToOpenCode(serverName: serverName, serverConfig: openCodeConfig, configPath: configPath)
        } else {
            MCPLogger.config.debug("Using JSON config format")
            progress?(.readingExistingConfig)
            let configData = try? Data(contentsOf: configPath)
            MCPLogger.config.debug("Read existing config: \(configData?.count ?? 0, privacy: .public) bytes")

            var configDict = (try? JSONSerialization.jsonObject(with: configData ?? Data()) as? [String: Any]) ?? [:]
            MCPLogger.config.debug("Parsed config with \(configDict.count, privacy: .public) top-level keys")

            progress?(.addingServerEntry)
            configDict = updateConfigDict(configDict, clientType: client.type, serverName: serverName, serverConfig: serverConfig)
            MCPLogger.config.debug("Added server entry to config")

            progress?(.writingConfig)
            try await writeConfig(configDict, to: configPath)
        }
    }

    private func generateServerConfig(for package: MCPPackage, envVars: [String: String]) -> [String: Any] {
        var config: [String: Any] = [:]

        switch package.registryType {
        case .npm:
            config["command"] = "npx"
            config["args"] = ["-y", package.identifier]

        case .pypi:
            config["command"] = "uvx"
            config["args"] = [package.identifier]

        case .oci:
            config["command"] = "docker"
            config["args"] = ["run", "-i", "--rm", package.identifier]

        case .mcpb:
            // MCP Bundle - handled differently (desktop extension)
            config["command"] = "open"
            config["args"] = [package.identifier]

        case .unknown:
            // Fallback - use identifier as command
            config["command"] = package.identifier
            config["args"] = []
        }

        if !envVars.isEmpty {
            config["env"] = envVars
        }

        return config
    }

    // MARK: - Config Dictionary Helpers

    /// Get servers dictionary from config using client's key path
    private func getServers(from config: [String: Any], clientType: MCPClientType) -> [String: Any] {
        let keyPath = clientType.serversKeyPath
        guard !keyPath.isEmpty else { return [:] }

        var current: Any = config
        for key in keyPath {
            guard let dict = current as? [String: Any], let next = dict[key] else {
                return [:]
            }
            current = next
        }
        return current as? [String: Any] ?? [:]
    }

    /// Set servers dictionary in config using client's key path
    private func setServers(_ servers: [String: Any], in config: [String: Any], clientType: MCPClientType) -> [String: Any] {
        let keyPath = clientType.serversKeyPath
        guard !keyPath.isEmpty else { return config }

        var updated = config

        if keyPath.count == 1 {
            updated[keyPath[0]] = servers
        } else if keyPath.count == 2 {
            var parent = updated[keyPath[0]] as? [String: Any] ?? [:]
            parent[keyPath[1]] = servers
            updated[keyPath[0]] = parent
        }

        return updated
    }

    private func updateConfigDict(
        _ config: [String: Any],
        clientType: MCPClientType,
        serverName: String,
        serverConfig: [String: Any]
    ) -> [String: Any] {
        guard !clientType.usesTomlConfig else { return config }

        var servers = getServers(from: config, clientType: clientType)
        servers[serverName] = serverConfig
        return setServers(servers, in: config, clientType: clientType)
    }

    private func removeServerFromConfig(
        _ config: [String: Any],
        clientType: MCPClientType,
        serverName: String
    ) -> [String: Any] {
        guard !clientType.usesTomlConfig else { return config }

        var servers = getServers(from: config, clientType: clientType)
        servers.removeValue(forKey: serverName)
        return setServers(servers, in: config, clientType: clientType)
    }

    private func updateServerEnvInConfig(
        _ config: [String: Any],
        clientType: MCPClientType,
        serverName: String,
        envVars: [String: String]
    ) -> [String: Any] {
        guard !clientType.usesTomlConfig else { return config }

        var servers = getServers(from: config, clientType: clientType)
        if var serverConfig = servers[serverName] as? [String: Any] {
            serverConfig["env"] = envVars
            servers[serverName] = serverConfig
        }
        return setServers(servers, in: config, clientType: clientType)
    }

    // MARK: - TOML Helpers (OpenAI Codex)

    /// Install server to TOML config file (OpenAI Codex)
    private func installServerToToml(serverName: String, serverConfig: [String: Any], configPath: URL) async throws {
        MCPLogger.config.debug("Installing to TOML config: \(configPath.path, privacy: .public)")

        try ensureDirectoryExists(for: configPath)

        var existingContent = ""
        if fileManager.fileExists(atPath: configPath.path) {
            existingContent = (try? String(contentsOf: configPath, encoding: .utf8)) ?? ""
            MCPLogger.config.debug("Read existing TOML content: \(existingContent.count, privacy: .public) chars")
        } else {
            MCPLogger.config.debug("No existing TOML file, creating new")
        }

        // Generate TOML section for the server
        let tomlSection = generateTomlServerSection(serverName: serverName, serverConfig: serverConfig)
        MCPLogger.config.debug("Generated TOML section: \(tomlSection.count, privacy: .public) chars")

        // Check if server already exists and remove it first
        let cleanedContent = removeTomlServerSection(serverName: serverName, from: existingContent)

        // Append new server section
        var newContent = cleanedContent.trimmingCharacters(in: .whitespacesAndNewlines)
        if !newContent.isEmpty {
            newContent += "\n\n"
        }
        newContent += tomlSection

        try newContent.write(to: configPath, atomically: true, encoding: .utf8)
        MCPLogger.config.info("TOML config written: \(newContent.count, privacy: .public) chars")
    }

    /// Uninstall server from TOML config file (OpenAI Codex)
    private func uninstallServerFromToml(serverName: String, configPath: URL) async throws {
        MCPLogger.config.debug("Uninstalling from TOML config: \(configPath.path, privacy: .public)")

        guard fileManager.fileExists(atPath: configPath.path) else {
            MCPLogger.config.error("TOML config not found: \(configPath.path, privacy: .public)")
            throw ConfigError.configNotFound
        }

        let content = try String(contentsOf: configPath, encoding: .utf8)
        MCPLogger.config.debug("Read TOML content: \(content.count, privacy: .public) chars")

        let cleanedContent = removeTomlServerSection(serverName: serverName, from: content)
        MCPLogger.config.debug("Removed server section, new content: \(cleanedContent.count, privacy: .public) chars")

        try cleanedContent.write(to: configPath, atomically: true, encoding: .utf8)
        MCPLogger.config.info("TOML config updated successfully")
    }

    /// Generate TOML section for a server
    private func generateTomlServerSection(serverName: String, serverConfig: [String: Any]) -> String {
        var lines: [String] = []

        lines.append("[mcp_servers.\(serverName)]")

        if let command = serverConfig["command"] as? String {
            lines.append("command = \"\(command)\"")
        }

        if let args = serverConfig["args"] as? [String], !args.isEmpty {
            let quotedArgs = args.map { "\"\($0)\"" }.joined(separator: ", ")
            lines.append("args = [\(quotedArgs)]")
        }

        if let env = serverConfig["env"] as? [String: String], !env.isEmpty {
            for (key, value) in env.sorted(by: { $0.key < $1.key }) {
                lines.append("env.\(key) = \"\(value)\"")
            }
        }

        return lines.joined(separator: "\n")
    }

    /// Remove a server section from TOML content
    private func removeTomlServerSection(serverName: String, from content: String) -> String {
        let lines = content.components(separatedBy: .newlines)
        var result: [String] = []
        var skipUntilNextSection = false
        let sectionHeader = "[mcp_servers.\(serverName)]"

        for line in lines {
            let trimmed = line.trimmingCharacters(in: .whitespaces)

            if trimmed == sectionHeader {
                skipUntilNextSection = true
                continue
            }

            if skipUntilNextSection {
                // Check if we've hit a new section
                if trimmed.hasPrefix("[") && trimmed.hasSuffix("]") {
                    skipUntilNextSection = false
                    result.append(line)
                }
                // Skip lines belonging to the removed server
                continue
            }

            result.append(line)
        }

        return result.joined(separator: "\n")
    }

    // MARK: - OpenCode Helpers

    /// Install server to OpenCode JSON config file
    /// OpenCode format uses "mcp" key instead of "mcpServers" and has different structure
    private func installServerToOpenCode(serverName: String, serverConfig: [String: Any], configPath: URL) async throws {
        MCPLogger.config.debug("Installing to OpenCode config: \(configPath.path, privacy: .public)")

        try ensureDirectoryExists(for: configPath)

        var configDict: [String: Any] = [:]
        if fileManager.fileExists(atPath: configPath.path),
           let data = try? Data(contentsOf: configPath),
           let existing = try? JSONSerialization.jsonObject(with: data) as? [String: Any] {
            configDict = existing
            MCPLogger.config.debug("Read existing OpenCode config: \(data.count, privacy: .public) bytes")
        } else {
            MCPLogger.config.debug("No existing OpenCode config, creating new")
        }

        // Add server to "mcp" key (not "mcpServers")
        var mcpServers = configDict["mcp"] as? [String: Any] ?? [:]
        mcpServers[serverName] = serverConfig
        configDict["mcp"] = mcpServers

        try await writeConfig(configDict, to: configPath)
        MCPLogger.config.info("OpenCode config written successfully")
    }

    /// Uninstall server from OpenCode JSON config file
    private func uninstallServerFromOpenCode(serverName: String, configPath: URL) async throws {
        MCPLogger.config.debug("Uninstalling from OpenCode config: \(configPath.path, privacy: .public)")

        guard fileManager.fileExists(atPath: configPath.path) else {
            MCPLogger.config.error("OpenCode config not found: \(configPath.path, privacy: .public)")
            throw ConfigError.configNotFound
        }

        let data = try Data(contentsOf: configPath)
        MCPLogger.config.debug("Read OpenCode content: \(data.count, privacy: .public) bytes")

        var configDict = try JSONSerialization.jsonObject(with: data) as? [String: Any] ?? [:]

        // Remove from "mcp" key
        if var mcpServers = configDict["mcp"] as? [String: Any] {
            mcpServers.removeValue(forKey: serverName)
            configDict["mcp"] = mcpServers
            MCPLogger.config.debug("Removed server from OpenCode config")
        }

        try await writeConfig(configDict, to: configPath)
        MCPLogger.config.info("OpenCode config updated successfully")
    }

    private func writeConfig(_ config: [String: Any], to path: URL) async throws {
        MCPLogger.config.debug("Writing config to: \(path.path, privacy: .public)")

        try ensureDirectoryExists(for: path)

        let data = try JSONSerialization.data(withJSONObject: config, options: [.prettyPrinted, .sortedKeys])
        MCPLogger.config.debug("Serialized config: \(data.count, privacy: .public) bytes")

        try data.write(to: path, options: .atomic)
        MCPLogger.config.info("Config written successfully: \(data.count, privacy: .public) bytes to \(path.lastPathComponent, privacy: .public)")
    }
}

enum ConfigError: LocalizedError {
    case noConfigPath
    case configNotFound
    case noPackageInfo
    case invalidConfig
    case writeError(Error)

    var errorDescription: String? {
        switch self {
        case .noConfigPath: return "No config path for this client"
        case .configNotFound: return "Config file not found"
        case .noPackageInfo: return "No package information available"
        case .invalidConfig: return "Invalid config file format"
        case .writeError(let error): return "Failed to write config: \(error.localizedDescription)"
        }
    }
}
