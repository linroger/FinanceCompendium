import SwiftUI
import AppKit

/// A button that copies text to clipboard with visual feedback
struct CopyButton: View {
    let text: String
    let label: String?

    @State private var showingCopied = false

    init(_ text: String, label: String? = nil) {
        self.text = text
        self.label = label
    }

    var body: some View {
        Button(action: copyToClipboard) {
            if let label = label {
                Label(showingCopied ? "Copied!" : label,
                      systemImage: showingCopied ? "checkmark" : "doc.on.doc")
            } else {
                Image(systemName: showingCopied ? "checkmark" : "doc.on.doc")
            }
        }
        .foregroundStyle(showingCopied ? .green : .secondary)
        .animation(.easeInOut(duration: 0.2), value: showingCopied)
    }

    private func copyToClipboard() {
        NSPasteboard.general.clearContents()
        NSPasteboard.general.setString(text, forType: .string)

        showingCopied = true

        // Reset after delay
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            showingCopied = false
        }
    }
}

#Preview {
    VStack(spacing: 20) {
        CopyButton("Hello World")
            .buttonStyle(.borderless)

        CopyButton("Hello World", label: "Copy Path")
            .buttonStyle(.borderless)
    }
    .padding()
}
