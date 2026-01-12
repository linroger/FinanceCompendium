import SwiftUI

/// A badge view showing a Claude Code scope with icon and label
struct ScopeBadge: View {
    let scope: ClaudeCodeScope
    var showProjectName: Bool = true
    var size: BadgeSize = .regular

    enum BadgeSize {
        case small
        case regular

        var iconFont: Font {
            switch self {
            case .small: return .system(size: 9)
            case .regular: return .caption2
            }
        }

        var textFont: Font {
            switch self {
            case .small: return .system(size: 9)
            case .regular: return .caption
            }
        }

        var horizontalPadding: CGFloat {
            switch self {
            case .small: return 4
            case .regular: return 6
            }
        }

        var verticalPadding: CGFloat {
            switch self {
            case .small: return 1
            case .regular: return 2
            }
        }
    }

    var body: some View {
        HStack(spacing: 3) {
            Image(systemName: scope.systemIconName)
                .font(size.iconFont)

            Text(displayText)
                .font(size.textFont)
                .lineLimit(1)
        }
        .padding(.horizontal, size.horizontalPadding)
        .padding(.vertical, size.verticalPadding)
        .background(backgroundColor)
        .foregroundStyle(foregroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 4))
        .help(scope.description)
    }

    private var displayText: String {
        if showProjectName, let projectName = scope.projectName {
            return projectName
        }
        return scope.displayName
    }

    private var backgroundColor: Color {
        scope.color.opacity(0.15)
    }

    private var foregroundColor: Color {
        scope.color
    }
}

/// A compact indicator for showing scope count
struct ScopeCountIndicator: View {
    let globalCount: Int
    let projectCount: Int

    var body: some View {
        HStack(spacing: 4) {
            if globalCount > 0 {
                HStack(spacing: 2) {
                    Image(systemName: "globe")
                        .font(.caption2)
                    if globalCount > 1 {
                        Text("\(globalCount)")
                            .font(.caption2)
                    }
                }
                .foregroundStyle(.blue)
            }

            if projectCount > 0 {
                HStack(spacing: 2) {
                    Image(systemName: "folder")
                        .font(.caption2)
                    Text("\(projectCount)")
                        .font(.caption2)
                }
                .foregroundStyle(.secondary)
            }
        }
    }
}

/// A badge stack for showing multiple Claude Code scopes
struct ClaudeCodeScopeBadgeStack: View {
    let scopes: [ClaudeCodeScope]
    var maxVisible: Int = 2

    var body: some View {
        let sortedScopes = scopes.sorted()

        HStack(spacing: 4) {
            // Show global badge if present
            if let globalScope = sortedScopes.first(where: { $0.isGlobal }) {
                ScopeBadge(scope: globalScope, showProjectName: false, size: .small)
            }

            // Show project count
            let projectScopes = sortedScopes.filter { !$0.isGlobal }
            if !projectScopes.isEmpty {
                if projectScopes.count == 1, let scope = projectScopes.first {
                    ScopeBadge(scope: scope, showProjectName: true, size: .small)
                } else {
                    HStack(spacing: 2) {
                        Image(systemName: "folder")
                            .font(.system(size: 9))
                        Text("\(projectScopes.count)")
                            .font(.system(size: 9))
                    }
                    .padding(.horizontal, 4)
                    .padding(.vertical, 1)
                    .background(Color.secondary.opacity(0.15))
                    .foregroundStyle(.secondary)
                    .clipShape(RoundedRectangle(cornerRadius: 4))
                }
            }
        }
    }
}

#Preview {
    VStack(spacing: 16) {
        Text("Scope Badges").font(.headline)

        VStack(alignment: .leading, spacing: 8) {
            ScopeBadge(scope: .global)
            ScopeBadge(scope: .local(projectPath: "/Users/home/Projects/MyApp"))
            ScopeBadge(scope: .project(projectPath: "/Users/home/Projects/TeamProject"))
        }

        Divider()

        Text("Small Badges").font(.headline)
        HStack {
            ScopeBadge(scope: .global, size: .small)
            ScopeBadge(scope: .local(projectPath: "/path"), size: .small)
        }

        Divider()

        Text("Badge Stack").font(.headline)
        ClaudeCodeScopeBadgeStack(scopes: [
            .global,
            .local(projectPath: "/Users/home/Project1"),
            .local(projectPath: "/Users/home/Project2")
        ])
    }
    .padding()
    .frame(width: 300)
}
