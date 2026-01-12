import SwiftUI

/// Badge showing a count value
struct CountBadge: View {
    let count: Int

    var body: some View {
        Text("\(count)")
            .font(.caption)
            .foregroundStyle(.secondary)
            .padding(.horizontal, 6)
            .padding(.vertical, 2)
            .background(Color(nsColor: .controlBackgroundColor))
            .cornerRadius(4)
    }
}

#Preview {
    HStack {
        CountBadge(count: 5)
        CountBadge(count: 42)
        CountBadge(count: 1234)
    }
}
