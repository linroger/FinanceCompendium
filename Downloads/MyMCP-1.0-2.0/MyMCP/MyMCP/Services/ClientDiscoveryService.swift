import Foundation
import AppKit
import os.log

/// Service for auto-detecting installed MCP clients
actor ClientDiscoveryService {
    private let fileManager = FileManager.default
    private let openCodeConverter = OpenCodeFormatConverter()

    /// Discover all MCP clients on the system
    func discoverClients() -> [MCPClient] {
        MCPLogger.discovery.info("Starting client discovery...")
        let startTime = CFAbsoluteTimeGetCurrent()

        let clients = MCPClientType.allCases.map { discoverClient(type: $0) }

        let elapsed = CFAbsoluteTimeGetCurrent() - startTime
        let installedCount = clients.filter { $0.isInstalled }.count
        let totalServers = clients.reduce(0) { $0 + $1.installedServers.count }
        MCPLogger.discovery.info("Discovery complete in \(String(format: "%.3f", elapsed), privacy: .public)s: \(installedCount, privacy: .public) clients installed, \(totalServers, privacy: .public) servers found")

        return clients
    }

    /// Discover a specific client type
    private func discoverClient(type: MCPClientType) -> MCPClient {
        MCPLogger.discovery.debug("Discovering client: \(type.displayName, privacy: .public)")

        let isInstalled = checkIfInstalled(type: type)
        MCPLogger.discovery.debug("  \(type.displayName, privacy: .public) installed: \(isInstalled, privacy: .public)")

        let configPath = findConfigPath(for: type)
        if let path = configPath {
            MCPLogger.discovery.debug("  Config path: \(path.path, privacy: .public)")
        } else {
            MCPLogger.discovery.debug("  No config path found")
        }

        var installedServers: [String: InstalledServerConfig] = [:]

        if let configPath = configPath, fileManager.fileExists(atPath: configPath.path) {
            MCPLogger.discovery.debug("  Loading servers from config...")
            installedServers = loadInstalledServers(from: configPath, clientType: type)
            MCPLogger.discovery.debug("  Found \(installedServers.count, privacy: .public) servers: \(installedServers.keys.joined(separator: ", "), privacy: .public)")
        } else if configPath != nil {
            MCPLogger.discovery.debug("  Config file does not exist yet")
        }

        return MCPClient(
            type: type,
            configPath: configPath,
            isInstalled: isInstalled,
            installedServers: installedServers
        )
    }

    /// Check if a client application is installed
    private func checkIfInstalled(type: MCPClientType) -> Bool {
        // Check bundle identifiers for GUI apps
        for bundleId in type.bundleIdentifiers {
            if NSWorkspace.shared.urlForApplication(withBundleIdentifier: bundleId) != nil {
                return true
            }
        }

        // Check CLI command for CLI-based clients
        if let cliCommand = type.cliCommand {
            if checkCommandExists(cliCommand) {
                return true
            }
        }

        // Special case: Claude Code can also be detected via config file
        // (in case the CLI isn't in PATH but the config file exists with usage evidence)
        if type == .claudeCode {
            if checkClaudeCodeConfigExists() {
                return true
            }
        }

        return false
    }

    /// Check if Claude Code config file exists and shows evidence of being installed
    private func checkClaudeCodeConfigExists() -> Bool {
        let configPath = fileManager.homeDirectoryForCurrentUser.appendingPathComponent(".claude.json")

        guard fileManager.fileExists(atPath: configPath.path),
              let data = try? Data(contentsOf: configPath),
              let json = try? JSONSerialization.jsonObject(with: data) as? [String: Any] else {
            return false
        }

        // Check for evidence of Claude Code installation
        // installMethod or numStartups > 0 indicates actual usage
        if json["installMethod"] != nil {
            return true
        }
        if let numStartups = json["numStartups"] as? Int, numStartups > 0 {
            return true
        }

        return false
    }

    /// Check if command exists in PATH
    private func checkCommandExists(_ command: String) -> Bool {
        let task = Process()
        task.executableURL = URL(fileURLWithPath: "/usr/bin/which")
        task.arguments = [command]
        task.standardOutput = FileHandle.nullDevice
        task.standardError = FileHandle.nullDevice

        do {
            try task.run()
            task.waitUntilExit()
            return task.terminationStatus == 0
        } catch {
            return false
        }
    }

    /// Find the config file path for a client
    private func findConfigPath(for type: MCPClientType) -> URL? {
        let homeDir = fileManager.homeDirectoryForCurrentUser

        for relativePath in type.configPaths {
            let fullPath = homeDir.appendingPathComponent(relativePath)
            if fileManager.fileExists(atPath: fullPath.path) {
                return fullPath
            }
        }

        if let firstPath = type.configPaths.first {
            return homeDir.appendingPathComponent(firstPath)
        }

        return nil
    }

    /// Load installed servers from config file
    private func loadInstalledServers(from configPath: URL, clientType: MCPClientType) -> [String: InstalledServerConfig] {
        MCPLogger.discovery.debug("Loading servers from: \(configPath.lastPathComponent, privacy: .public)")

        do {
            if clientType.usesTomlConfig {
                MCPLogger.discovery.debug("Parsing TOML config...")
                let content = try String(contentsOf: configPath, encoding: .utf8)
                MCPLogger.discovery.debug("Read TOML content: \(content.count, privacy: .public) chars")
                let servers = parseTomlServers(content)
                MCPLogger.discovery.debug("Parsed \(servers.count, privacy: .public) servers from TOML")
                return servers
            } else {
                MCPLogger.discovery.debug("Parsing JSON config...")
                let data = try Data(contentsOf: configPath)
                MCPLogger.discovery.debug("Read JSON data: \(data.count, privacy: .public) bytes")
                let servers = try parseServersFromConfig(data: data, clientType: clientType)
                MCPLogger.discovery.debug("Parsed \(servers.count, privacy: .public) servers from JSON")
                return servers
            }
        } catch {
            MCPLogger.discovery.error("Failed to load servers from \(configPath.path, privacy: .public): \(error.localizedDescription, privacy: .public)")
            return [:]
        }
    }

    /// Parse servers from JSON config data based on client type
    private func parseServersFromConfig(data: Data, clientType: MCPClientType) throws -> [String: InstalledServerConfig] {
        let json = try JSONSerialization.jsonObject(with: data) as? [String: Any] ?? [:]

        var servers: [String: InstalledServerConfig] = [:]

        switch clientType {
        case .claudeDesktop:
            if let serversDict = json["mcpServers"] as? [String: Any] {
                servers = parseServersDictionary(serversDict)
            }

        case .claudeCode:
            // Claude Code stores servers per-project in: projects["/path"].mcpServers
            servers = parseClaudeCodeServers(from: json)

        case .cursor:
            if let serversDict = json["mcpServers"] as? [String: Any] {
                servers = parseServersDictionary(serversDict)
            }

        case .vscode:
            if let mcp = json["mcp"] as? [String: Any],
               let serversDict = mcp["servers"] as? [String: Any] {
                servers = parseServersDictionary(serversDict)
            } else if let serversDict = json["servers"] as? [String: Any] {
                servers = parseServersDictionary(serversDict)
            }

        case .windsurf:
            if let serversDict = json["mcpServers"] as? [String: Any] {
                servers = parseServersDictionary(serversDict)
            }

        case .geminiCLI:
            // Gemini CLI uses standard mcpServers key
            if let serversDict = json["mcpServers"] as? [String: Any] {
                servers = parseServersDictionary(serversDict)
            }

        case .qwenCLI:
            // Qwen CLI uses standard mcpServers key
            if let serversDict = json["mcpServers"] as? [String: Any] {
                servers = parseServersDictionary(serversDict)
            }

        case .iflowCLI:
            // iFlow CLI uses standard mcpServers key
            // Note: iFlow supports a "disabled" flag per server
            if let serversDict = json["mcpServers"] as? [String: Any] {
                servers = parseServersDictionary(serversDict)
            }

        case .minimaxCLI:
            // Minimax CLI uses Claude Code compatible format
            if let serversDict = json["mcpServers"] as? [String: Any] {
                servers = parseServersDictionary(serversDict)
            }

        case .openCodeCLI:
            // OpenCode uses "mcp" key and different format (command array, environment)
            if let mcpDict = json["mcp"] as? [String: Any] {
                servers = await parseOpenCodeServers(mcpDict)
            }

        case .openaiCodex:
            // Should not reach here - handled by TOML parser
            break
        }

        return servers
    }

    // MARK: - TOML Parsing (OpenAI Codex)

    /// Parse MCP servers from TOML config
    /// Format: [mcp_servers.server-name]
    ///         command = "npx"
    ///         args = ["-y", "@modelcontextprotocol/server"]
    private func parseTomlServers(_ content: String) -> [String: InstalledServerConfig] {
        var servers: [String: InstalledServerConfig] = [:]
        var current: (name: String, command: String?, args: [String], env: [String: String])?

        for line in content.components(separatedBy: .newlines) {
            let trimmed = line.trimmingCharacters(in: .whitespaces)
            guard !trimmed.isEmpty else { continue }

            // Section header: [mcp_servers.server-name]
            if let name = extractServerName(from: trimmed) {
                if let (n, cmd, args, env) = current, let command = cmd {
                    servers[n] = InstalledServerConfig(name: n, command: command, args: args, env: env.isEmpty ? nil : env)
                }
                current = (name, nil, [], [:])
            }
            // Key-value pairs within a section
            else if current != nil, let (key, value) = parseTomlKeyValue(trimmed) {
                switch key {
                case "command":
                    current?.command = value
                case "args":
                    current?.args = parseTomlArray(value)
                case let k where k.hasPrefix("env."):
                    current?.env[String(k.dropFirst(4))] = value
                default:
                    break
                }
            }
        }

        // Save last server
        if let (n, cmd, args, env) = current, let command = cmd {
            servers[n] = InstalledServerConfig(name: n, command: command, args: args, env: env.isEmpty ? nil : env)
        }

        return servers
    }

    /// Extract server name from section header: [mcp_servers.name] -> name
    private func extractServerName(from line: String) -> String? {
        guard line.hasPrefix("[mcp_servers.") && line.hasSuffix("]") else { return nil }
        return String(line.dropFirst("[mcp_servers.".count).dropLast())
    }

    /// Parse TOML key-value: key = "value" or env.KEY = "value"
    private func parseTomlKeyValue(_ line: String) -> (key: String, value: String)? {
        guard let equalsIndex = line.firstIndex(of: "=") else { return nil }
        let key = String(line[..<equalsIndex]).trimmingCharacters(in: .whitespaces)
        var value = String(line[line.index(after: equalsIndex)...]).trimmingCharacters(in: .whitespaces)
        if value.hasPrefix("\"") && value.hasSuffix("\"") {
            value = String(value.dropFirst().dropLast())
        }
        return (key, value)
    }

    /// Parse TOML array string: ["a", "b"] -> ["a", "b"]
    private func parseTomlArray(_ value: String) -> [String] {
        var content = value
        if content.hasPrefix("[") { content = String(content.dropFirst()) }
        if content.hasSuffix("]") { content = String(content.dropLast()) }

        var result: [String] = []
        var current = ""
        var inQuotes = false

        for char in content {
            switch (char, inQuotes) {
            case ("\"", _): inQuotes.toggle()
            case (",", false):
                let trimmed = current.trimmingCharacters(in: .whitespaces)
                if !trimmed.isEmpty { result.append(trimmed) }
                current = ""
            case (_, true): current.append(char)
            default: break
            }
        }

        let trimmed = current.trimmingCharacters(in: .whitespaces)
        if !trimmed.isEmpty { result.append(trimmed) }

        return result
    }

    /// Parse Claude Code's nested project structure with scope preservation
    /// Structure: { "mcpServers": {...}, "projects": { "/path": { "mcpServers": { ... } } } }
    /// Returns servers with composite keys: "servername_global", "servername_local:/path", "servername_project:/path"
    private func parseClaudeCodeServers(from json: [String: Any]) -> [String: InstalledServerConfig] {
        var allServers: [String: InstalledServerConfig] = [:]

        // 1. Parse root-level mcpServers (global scope)
        if let rootServers = json["mcpServers"] as? [String: Any] {
            let parsed = parseServersDictionary(rootServers, scope: .global)
            MCPLogger.discovery.debug("Found \(parsed.count, privacy: .public) global Claude Code servers")
            allServers.merge(parsed) { _, new in new }
        }

        // 2. Parse per-project servers from ~/.claude.json (local scope)
        if let projects = json["projects"] as? [String: Any] {
            for (projectPath, projectConfig) in projects {
                guard let projectDict = projectConfig as? [String: Any],
                      let mcpServers = projectDict["mcpServers"] as? [String: Any],
                      !mcpServers.isEmpty else {
                    continue
                }

                let scope = ClaudeCodeScope.local(projectPath: projectPath)
                let parsed = parseServersDictionary(mcpServers, scope: scope)
                MCPLogger.discovery.debug("Found \(parsed.count, privacy: .public) servers for local project: \(projectPath, privacy: .public)")
                allServers.merge(parsed) { _, new in new }
            }
        }

        // 3. Discover .mcp.json files in known project directories (project scope)
        let projectMcpServers = discoverProjectMcpJsonFiles(from: json)
        allServers.merge(projectMcpServers) { _, new in new }

        return allServers
    }

    /// Discover .mcp.json files in project directories known to Claude Code
    private func discoverProjectMcpJsonFiles(from claudeJson: [String: Any]) -> [String: InstalledServerConfig] {
        var allServers: [String: InstalledServerConfig] = [:]

        // Get project paths from ~/.claude.json projects section
        guard let projects = claudeJson["projects"] as? [String: Any] else {
            return allServers
        }

        for projectPath in projects.keys {
            let mcpJsonPath = URL(fileURLWithPath: projectPath).appendingPathComponent(".mcp.json")

            guard fileManager.fileExists(atPath: mcpJsonPath.path),
                  let data = try? Data(contentsOf: mcpJsonPath),
                  let json = try? JSONSerialization.jsonObject(with: data) as? [String: Any],
                  let mcpServers = json["mcpServers"] as? [String: Any],
                  !mcpServers.isEmpty else {
                continue
            }

            let scope = ClaudeCodeScope.project(projectPath: projectPath)
            let parsed = parseServersDictionary(mcpServers, scope: scope)
            MCPLogger.discovery.debug("Found \(parsed.count, privacy: .public) servers in .mcp.json for: \(projectPath, privacy: .public)")
            allServers.merge(parsed) { _, new in new }
        }

        return allServers
    }

    /// Get all known project paths from Claude Code config
    func getKnownProjectPaths() -> [String] {
        let claudeConfigPath = fileManager.homeDirectoryForCurrentUser.appendingPathComponent(".claude.json")

        guard fileManager.fileExists(atPath: claudeConfigPath.path),
              let data = try? Data(contentsOf: claudeConfigPath),
              let json = try? JSONSerialization.jsonObject(with: data) as? [String: Any],
              let projects = json["projects"] as? [String: Any] else {
            return []
        }

        return Array(projects.keys).sorted()
    }

    /// Parse a standard mcpServers dictionary
    /// - Parameters:
    ///   - serversDict: The mcpServers dictionary to parse
    ///   - scope: Optional Claude Code scope to attach to each config (nil for non-Claude Code clients)
    private func parseServersDictionary(_ serversDict: [String: Any], scope: ClaudeCodeScope? = nil) -> [String: InstalledServerConfig] {
        var servers: [String: InstalledServerConfig] = [:]

        for (name, value) in serversDict {
            guard let serverDict = value as? [String: Any],
                  let command = serverDict["command"] as? String else {
                continue
            }

            let args = serverDict["args"] as? [String] ?? []
            let env = serverDict["env"] as? [String: String]

            let config = InstalledServerConfig(name: name, command: command, args: args, env: env, claudeCodeScope: scope)

            // Use composite key for Claude Code to allow same server name in different scopes
            if let scope = scope {
                let compositeKey = "\(name)_\(scope.id)"
                servers[compositeKey] = config
            } else {
                servers[name] = config
            }
        }

        return servers
    }

    /// Parse OpenCode format servers (mcp key with command array and environment)
    /// Converts from OpenCode format to standard format before creating InstalledServerConfig
    private func parseOpenCodeServers(_ mcpDict: [String: Any]) async -> [String: InstalledServerConfig] {
        var servers: [String: InstalledServerConfig] = [:]

        for (name, value) in mcpDict {
            guard let openCodeServerDict = value as? [String: Any],
                  let commandArray = openCodeServerDict["command"] as? [String],
                  !commandArray.isEmpty else {
                MCPLogger.discovery.debug("Skipping invalid OpenCode server: \(name, privacy: .public)")
                continue
            }

            // Convert from OpenCode format to standard format
            let standardConfig = await openCodeConverter.fromOpenCodeFormat(openCodeServerDict)

            guard let command = standardConfig["command"] as? String else {
                MCPLogger.discovery.warning("Failed to convert OpenCode server: \(name, privacy: .public)")
                continue
            }

            let args = standardConfig["args"] as? [String] ?? []
            let env = standardConfig["env"] as? [String: String]

            let config = InstalledServerConfig(name: name, command: command, args: args, env: env)
            servers[name] = config
        }

        MCPLogger.discovery.debug("Parsed \(servers.count, privacy: .public) OpenCode servers")
        return servers
    }
}
