import SwiftUI

/// Card displaying a statistic with icon, title, and value
struct StatCard: View {
    let title: String
    let value: String
    let icon: String
    let color: Color

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack(spacing: 4) {
                Image(systemName: icon)
                    .foregroundStyle(color)
                Text(title)
                    .foregroundStyle(.secondary)
            }
            .font(.caption)

            Text(value)
                .font(.title3)
                .fontWeight(.semibold)
        }
        .padding(12)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(nsColor: .controlBackgroundColor))
        .cornerRadius(8)
    }
}

/// Activity status indicator based on last commit recency
struct ActivityIndicator: View {
    let status: ActivityStatus

    private var color: Color {
        switch status {
        case .active: return .green
        case .recent: return .yellow
        case .stale: return .orange
        case .archived: return .red
        case .unknown: return .gray
        }
    }

    var body: some View {
        HStack(spacing: 4) {
            Circle()
                .fill(color)
                .frame(width: 8, height: 8)
            Text(status.rawValue)
                .font(.caption)
                .foregroundStyle(.secondary)
        }
    }
}

/// Topic pill for displaying repository topics
struct TopicPill: View {
    let topic: String

    var body: some View {
        Text(topic)
            .font(.caption2)
            .padding(.horizontal, 8)
            .padding(.vertical, 4)
            .background(Color.blue.opacity(0.1))
            .foregroundStyle(.blue)
            .cornerRadius(12)
    }
}

#Preview {
    VStack(spacing: 20) {
        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 12) {
            StatCard(title: "Stars", value: "25.2k", icon: "star.fill", color: .yellow)
            StatCard(title: "Forks", value: "1.8k", icon: "arrow.triangle.branch", color: .blue)
            StatCard(title: "Issues", value: "156", icon: "exclamationmark.circle", color: .orange)
            StatCard(title: "Language", value: "TypeScript", icon: "chevron.left.forwardslash.chevron.right", color: .purple)
        }

        HStack(spacing: 12) {
            ActivityIndicator(status: .active)
            ActivityIndicator(status: .recent)
            ActivityIndicator(status: .stale)
            ActivityIndicator(status: .archived)
        }

        HStack(spacing: 8) {
            TopicPill(topic: "mcp")
            TopicPill(topic: "ai")
            TopicPill(topic: "model-context-protocol")
        }
    }
    .padding()
    .frame(width: 400)
}
