import Foundation
import os.log

/// Service for converting MCP server configurations between standard format and OpenCode format
///
/// Standard Format (mcpServers):
/// ```json
/// {
///   "command": "npx",
///   "args": ["-y", "@package/name"],
///   "env": { "KEY": "value" }
/// }
/// ```
///
/// OpenCode Format (mcp):
/// ```json
/// {
///   "command": ["npx", "-y", "@package/name"],
///   "enabled": true,
///   "environment": { "KEY": "value" },
///   "type": "local"
/// }
/// ```
actor OpenCodeFormatConverter {

    /// Convert standard MCP config to OpenCode format
    /// - Parameter standardConfig: Config in standard format (command/args/env)
    /// - Returns: Config in OpenCode format (command array/environment/enabled/type)
    func toOpenCodeFormat(_ standardConfig: [String: Any]) -> [String: Any] {
        MCPLogger.config.debug("Converting standard format to OpenCode format")

        guard let command = standardConfig["command"] as? String else {
            MCPLogger.config.warning("No command found in standard config, returning as-is")
            return standardConfig
        }

        let args = standardConfig["args"] as? [String] ?? []
        var openCodeConfig: [String: Any] = [:]

        // Merge command and args into single array
        var commandArray = [command]
        commandArray.append(contentsOf: args)
        openCodeConfig["command"] = commandArray
        MCPLogger.config.debug("Combined command array: \(commandArray, privacy: .public)")

        // Convert env to environment
        if let env = standardConfig["env"] as? [String: String], !env.isEmpty {
            openCodeConfig["environment"] = env
            MCPLogger.config.debug("Converted env to environment: \(env.count, privacy: .public) entries")
        }

        // Add OpenCode-specific fields
        openCodeConfig["enabled"] = true
        openCodeConfig["type"] = "local"
        MCPLogger.config.debug("Added OpenCode fields: enabled=true, type=local")

        return openCodeConfig
    }

    /// Convert OpenCode format to standard MCP config
    /// - Parameter openCodeConfig: Config in OpenCode format
    /// - Returns: Config in standard format
    func fromOpenCodeFormat(_ openCodeConfig: [String: Any]) -> [String: Any] {
        MCPLogger.config.debug("Converting OpenCode format to standard format")

        guard let commandArray = openCodeConfig["command"] as? [String],
              !commandArray.isEmpty else {
            MCPLogger.config.warning("No command array found in OpenCode config, returning as-is")
            return openCodeConfig
        }

        var standardConfig: [String: Any] = [:]

        // Split command array: first element is command, rest are args
        standardConfig["command"] = commandArray[0]
        MCPLogger.config.debug("Extracted command: \(commandArray[0], privacy: .public)")

        if commandArray.count > 1 {
            let args = Array(commandArray.dropFirst())
            standardConfig["args"] = args
            MCPLogger.config.debug("Extracted args: \(args.count, privacy: .public) items")
        } else {
            standardConfig["args"] = []
            MCPLogger.config.debug("No args in command array")
        }

        // Convert environment to env
        if let environment = openCodeConfig["environment"] as? [String: String], !environment.isEmpty {
            standardConfig["env"] = environment
            MCPLogger.config.debug("Converted environment to env: \(environment.count, privacy: .public) entries")
        }

        return standardConfig
    }

    /// Check if a config is in OpenCode format
    /// - Parameter config: Configuration dictionary to check
    /// - Returns: True if config uses OpenCode format (command is array)
    func isOpenCodeFormat(_ config: [String: Any]) -> Bool {
        return config["command"] is [String]
    }
}
