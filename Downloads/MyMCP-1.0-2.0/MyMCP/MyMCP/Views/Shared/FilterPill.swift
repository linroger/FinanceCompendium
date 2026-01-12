import SwiftUI

struct FilterPill: View {
    let title: String
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.caption)
                .fontWeight(isSelected ? .semibold : .regular)
                .padding(.horizontal, 12)
                .padding(.vertical, 6)
                .background(isSelected ? Color.accentColor : Color(nsColor: .controlBackgroundColor))
                .foregroundStyle(isSelected ? .white : .primary)
                .cornerRadius(16)
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    VStack {
        HStack {
            FilterPill(title: "All", isSelected: true, action: {})
            FilterPill(title: "NPM", isSelected: false, action: {})
            FilterPill(title: "PyPI", isSelected: false, action: {})
        }
    }
    .padding()
}
