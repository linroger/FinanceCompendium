import SwiftUI

// MARK: - Common View Modifiers

extension View {
    /// Standard card styling with padding, background, and rounded corners
    func cardStyle(padding: CGFloat = 16) -> some View {
        self
            .padding(padding)
            .background(Color(nsColor: .controlBackgroundColor))
            .cornerRadius(8)
    }
}
