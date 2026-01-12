import Foundation
import SwiftUI

/// Known MCP client applications
enum MCPClientType: String, CaseIterable, Identifiable, Codable {
    case claudeDesktop = "claude_desktop"
    case claudeCode = "claude_code"
    case cursor = "cursor"
    case vscode = "vscode"
    case windsurf = "windsurf"
    case geminiCLI = "gemini_cli"
    case openaiCodex = "openai_codex"
    case qwenCLI = "qwen_cli"
    case iflowCLI = "iflow_cli"
    case minimaxCLI = "minimax_cli"
    case openCodeCLI = "opencode_cli"
    case kimiCLI = "kimi_cli"

    var id: String { rawValue }

    var displayName: String {
        switch self {
        case .claudeDesktop: return "Claude Desktop"
        case .claudeCode: return "Claude Code"
        case .cursor: return "Cursor"
        case .vscode: return "VS Code"
        case .windsurf: return "Windsurf"
        case .geminiCLI: return "Gemini CLI"
        case .openaiCodex: return "OpenAI Codex"
        case .qwenCLI: return "Qwen CLI"
        case .iflowCLI: return "iFlow CLI"
        case .minimaxCLI: return "Minimax CLI"
        case .openCodeCLI: return "OpenCode"
        case .kimiCLI: return "Kimi CLI"
        }
    }

    var iconName: String {
        switch self {
        case .claudeDesktop: return "claude_icon"
        case .claudeCode: return "claude_code_icon"
        case .cursor: return "cursor_icon"
        case .vscode: return "vscode_icon"
        case .windsurf: return "windsurf_icon"
        case .geminiCLI: return "gemini_icon"
        case .openaiCodex: return "openai_icon"
        case .qwenCLI: return "qwen_icon"
        case .iflowCLI: return "iflow_icon"
        case .minimaxCLI: return "minimax_icon"
        case .openCodeCLI: return "opencode_icon"
        case .kimiCLI: return "kimi_icon"
        }
    }

    var systemIconFallback: String {
        "terminal"
    }

    var accentColor: Color {
        switch self {
        case .claudeDesktop, .claudeCode: return .orange
        case .cursor: return .blue
        case .vscode: return .cyan
        case .windsurf: return .green
        case .geminiCLI: return .blue
        case .openaiCodex: return .mint
        case .qwenCLI: return .purple
        case .iflowCLI: return .indigo
        case .minimaxCLI: return .red
        case .openCodeCLI: return .teal
        case .kimiCLI: return .pink
        }
    }

    /// Whether this client uses TOML config format instead of JSON
    var usesTomlConfig: Bool {
        self == .openaiCodex
    }

    /// Whether this client uses OpenCode format (command array, environment key)
    var usesOpenCodeFormat: Bool {
        self == .openCodeCLI
    }

    /// Paths to config files (relative to home directory)
    var configPaths: [String] {
        switch self {
        case .claudeDesktop:
            return ["Library/Application Support/Claude/claude_desktop_config.json"]
        case .claudeCode:
            // MCP servers defined in ~/.claude.json under "mcpServers" key
            // Note: ~/.claude/settings.json is for permissions, NOT for defining servers
            return [".claude.json"]
        case .cursor:
            return [".cursor/mcp.json"]
        case .vscode:
            return [
                "Library/Application Support/Code/User/settings.json",
                ".vscode/mcp.json"
            ]
        case .windsurf:
            // ~/.codeium/windsurf/mcp_config.json is the current standard location
            return [".codeium/windsurf/mcp_config.json"]
        case .geminiCLI:
            return [".gemini/settings.json"]
        case .openaiCodex:
            return [".codex/config.toml"]
        case .qwenCLI:
            return [".qwen/settings.json"]
        case .iflowCLI:
            return [".iflow/settings.json"]
        case .minimaxCLI:
            return [".cc-mirror/minimax/config/.claude.json"]
        case .openCodeCLI:
            return [".config/opencode/opencode.json"]
        case .kimiCLI:
            return [".kimi/mcp.json"]
        }
    }

    /// Bundle identifier for checking if app is installed
    var bundleIdentifiers: [String] {
        switch self {
        case .claudeDesktop: return ["com.anthropic.claudefordesktop"]
        case .claudeCode: return []
        case .cursor: return ["com.todesktop.230313mzl4w4u92"]
        case .vscode: return ["com.microsoft.VSCode"]
        case .windsurf: return ["com.codeium.windsurf"]
        case .geminiCLI: return []  // CLI tool
        case .openaiCodex: return []  // CLI tool
        case .qwenCLI: return []  // CLI tool
        case .iflowCLI: return []  // CLI tool
        case .minimaxCLI: return []  // CLI tool
        case .openCodeCLI: return []  // CLI tool
        case .kimiCLI: return []  // CLI tool
        }
    }

    /// Process names for detecting running status
    var processNames: [String] {
        switch self {
        case .claudeDesktop: return ["Claude"]
        case .claudeCode: return ["claude"]
        case .cursor: return ["Cursor"]
        case .vscode: return ["Code"]
        case .windsurf: return ["Windsurf"]
        case .geminiCLI: return ["gemini"]
        case .openaiCodex: return ["codex"]
        case .qwenCLI: return ["qwen"]
        case .iflowCLI: return ["iflow"]
        case .minimaxCLI: return ["minimax"]
        case .openCodeCLI: return ["opencode"]
        case .kimiCLI: return ["kimi"]
        }
    }

    /// The key used in the config file to store MCP servers
    var configKey: String {
        switch self {
        case .claudeDesktop, .cursor, .windsurf, .claudeCode, .geminiCLI, .qwenCLI, .iflowCLI, .minimaxCLI, .kimiCLI:
            return "mcpServers"
        case .vscode:
            return "mcp.servers"
        case .openaiCodex:
            return "mcp_servers"  // TOML table prefix
        case .openCodeCLI:
            return "mcp"  // OpenCode uses "mcp" key
        }
    }

    /// Key path for accessing MCP servers in config dictionary
    /// Returns array of keys to traverse (e.g., ["mcpServers"] or ["mcp", "servers"])
    var serversKeyPath: [String] {
        switch self {
        case .vscode:
            return ["mcp", "servers"]
        case .openaiCodex:
            return []  // TOML handled separately
        case .openCodeCLI:
            return ["mcp"]  // OpenCode uses "mcp" key
        default:
            return ["mcpServers"]
        }
    }

    /// CLI command name for CLI-based clients (used for detection via `which`)
    var cliCommand: String? {
        switch self {
        case .claudeCode: return "claude"
        case .geminiCLI: return "gemini"
        case .openaiCodex: return "codex"
        case .qwenCLI: return "qwen"
        case .iflowCLI: return "iflow"
        case .minimaxCLI: return "minimax"
        case .openCodeCLI: return "opencode"
        case .kimiCLI: return "kimi"
        default: return nil
        }
    }
}

/// Represents a detected MCP client on the system
struct MCPClient: Identifiable, Hashable {
    let id: UUID
    let type: MCPClientType
    let configPath: URL?
    let isInstalled: Bool
    var installedServers: [String: InstalledServerConfig]

    init(type: MCPClientType, configPath: URL? = nil, isInstalled: Bool = false,
         installedServers: [String: InstalledServerConfig] = [:]) {
        self.id = UUID()
        self.type = type
        self.configPath = configPath
        self.isInstalled = isInstalled
        self.installedServers = installedServers
    }

    static func == (lhs: MCPClient, rhs: MCPClient) -> Bool {
        lhs.type == rhs.type
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(type)
    }
}
