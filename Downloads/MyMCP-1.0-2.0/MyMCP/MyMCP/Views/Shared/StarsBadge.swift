import SwiftUI

/// Compact badge showing GitHub star count
struct StarsBadge: View {
    let count: Int

    private var formattedCount: String {
        if count >= 1000 {
            return String(format: "%.1fk", Double(count) / 1000)
        }
        return "\(count)"
    }

    var body: some View {
        HStack(spacing: 2) {
            Image(systemName: "star.fill")
                .foregroundStyle(.yellow)
            Text(formattedCount)
        }
        .font(.caption)
        .foregroundStyle(.secondary)
    }
}

/// Badge indicating a repository is archived
struct ArchivedBadge: View {
    var body: some View {
        ColoredBadge(text: "Archived", color: .orange)
    }
}

#Preview {
    VStack(spacing: 20) {
        HStack(spacing: 16) {
            StarsBadge(count: 25271)
            StarsBadge(count: 1842)
            StarsBadge(count: 156)
            StarsBadge(count: 42)
        }

        ArchivedBadge()
    }
    .padding()
}
