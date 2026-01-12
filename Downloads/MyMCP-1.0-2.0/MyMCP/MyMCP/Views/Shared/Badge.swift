import SwiftUI

/// Generic badge with customizable color and font
/// Used as base component for typed badges throughout the app
struct ColoredBadge: View {
    let text: String
    let color: Color
    var font: Font = .caption2
    var fontWeight: Font.Weight = .medium

    var body: some View {
        Text(text)
            .font(font)
            .fontWeight(fontWeight)
            .padding(.horizontal, 6)
            .padding(.vertical, 2)
            .background(color.opacity(0.15))
            .foregroundStyle(color)
            .cornerRadius(4)
    }
}

/// Badge for displaying MCP transport type with color coding
struct TransportTypeBadge: View {
    let type: TransportType

    private var color: Color {
        switch type {
        case .stdio: return .green
        case .sse: return .orange
        case .streamableHttp: return .blue
        case .unknown: return .gray
        }
    }

    var body: some View {
        ColoredBadge(text: type.displayName, color: color)
    }
}

#Preview {
    HStack {
        ColoredBadge(text: "npm", color: .red)
        ColoredBadge(text: "Disabled", color: .orange)
        ColoredBadge(text: "stdio", color: .green)
        ColoredBadge(text: "Active", color: .blue)
    }
    .padding()
}
