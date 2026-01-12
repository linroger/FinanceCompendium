import SwiftUI

/// Badge indicating a server is disabled
struct DisabledBadge: View {
    var body: some View {
        ColoredBadge(text: "Disabled", color: .orange, font: .caption)
    }
}

#Preview {
    DisabledBadge()
}
