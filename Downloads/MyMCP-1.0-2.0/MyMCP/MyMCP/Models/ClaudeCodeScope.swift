import Foundation
import SwiftUI

/// Represents the scope/source of a Claude Code MCP server configuration
/// Claude Code has three distinct configuration scopes with different visibility and sharing characteristics
enum ClaudeCodeScope: Codable, Hashable, Identifiable {
    /// Global scope: ~/.claude.json root-level mcpServers
    /// Available in all projects
    case global

    /// Local scope: ~/.claude.json under projects["/path"].mcpServers
    /// Personal config for a specific project, stored in user's home directory
    case local(projectPath: String)

    /// Project scope: .mcp.json in project root
    /// Team-shared config, meant to be version controlled
    case project(projectPath: String)

    // MARK: - Identifiable

    var id: String {
        switch self {
        case .global:
            return "global"
        case .local(let path):
            return "local:\(path)"
        case .project(let path):
            return "project:\(path)"
        }
    }

    // MARK: - Display Properties

    var displayName: String {
        switch self {
        case .global:
            return "Global"
        case .local:
            return "User Project"
        case .project:
            return "Project Shared"
        }
    }

    var projectPath: String? {
        switch self {
        case .global:
            return nil
        case .local(let path), .project(let path):
            return path
        }
    }

    var projectName: String? {
        projectPath.map { ($0 as NSString).lastPathComponent }
    }

    var isGlobal: Bool {
        if case .global = self { return true }
        return false
    }

    var isLocal: Bool {
        if case .local = self { return true }
        return false
    }

    var isProject: Bool {
        if case .project = self { return true }
        return false
    }

    /// Icon for UI display
    var systemIconName: String {
        switch self {
        case .global:
            return "globe"
        case .local:
            return "person.circle"
        case .project:
            return "folder.badge.gearshape"
        }
    }

    /// Color for UI display
    var color: Color {
        switch self {
        case .global:
            return .blue
        case .local:
            return .purple
        case .project:
            return .green
        }
    }

    /// Description for tooltips and help text
    var description: String {
        switch self {
        case .global:
            return "Available in all projects (stored in ~/.claude.json)"
        case .local(let path):
            return "Personal config for \(projectNameForDisplay(from: path)) (stored in ~/.claude.json)"
        case .project(let path):
            return "Team-shared config for \(projectNameForDisplay(from: path)) (stored in .mcp.json)"
        }
    }

    /// Config file path description
    var configFileDescription: String {
        switch self {
        case .global, .local:
            return "~/.claude.json"
        case .project(let path):
            return "\(path)/.mcp.json"
        }
    }

    private func projectNameForDisplay(from path: String) -> String {
        (path as NSString).lastPathComponent
    }

    // MARK: - Codable

    private enum CodingKeys: String, CodingKey {
        case type, projectPath
    }

    private enum ScopeType: String, Codable {
        case global, local, project
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let type = try container.decode(ScopeType.self, forKey: .type)

        switch type {
        case .global:
            self = .global
        case .local:
            let path = try container.decode(String.self, forKey: .projectPath)
            self = .local(projectPath: path)
        case .project:
            let path = try container.decode(String.self, forKey: .projectPath)
            self = .project(projectPath: path)
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        switch self {
        case .global:
            try container.encode(ScopeType.global, forKey: .type)
        case .local(let path):
            try container.encode(ScopeType.local, forKey: .type)
            try container.encode(path, forKey: .projectPath)
        case .project(let path):
            try container.encode(ScopeType.project, forKey: .type)
            try container.encode(path, forKey: .projectPath)
        }
    }
}

// MARK: - Sorting

extension ClaudeCodeScope: Comparable {
    static func < (lhs: ClaudeCodeScope, rhs: ClaudeCodeScope) -> Bool {
        // Sort order: global first, then local, then project (alphabetically by path within each)
        switch (lhs, rhs) {
        case (.global, .global):
            return false
        case (.global, _):
            return true
        case (_, .global):
            return false
        case (.local(let lPath), .local(let rPath)):
            return lPath.lowercased() < rPath.lowercased()
        case (.local, _):
            return true
        case (_, .local):
            return false
        case (.project(let lPath), .project(let rPath)):
            return lPath.lowercased() < rPath.lowercased()
        }
    }
}
