import SwiftUI

/// Smart auto-hide toolbar with navigation controls
@MainActor
struct ToolbarView: View {
    // MARK: - Environment

    @Environment(WebViewState.self) private var webViewState

    // MARK: - State

    @State private var urlFieldText: String = ""
    @FocusState private var isURLFieldFocused: Bool

    // MARK: - Body

    var body: some View {
        HStack(spacing: 12) {
            // Navigation buttons
            navigationButtons

            Spacer()

            // URL field
            urlField

            Spacer()

            // Action buttons
            actionButtons
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .background {
            // Frosted glass effect
            VisualEffectView(
                material: .hudWindow,
                blendingMode: .behindWindow
            )
        }
        .overlay(alignment: .bottom) {
            // Progress indicator
            if webViewState.isLoading {
                ProgressView(value: webViewState.estimatedProgress)
                    .progressViewStyle(.linear)
                    .frame(height: 2)
            }
        }
        .frame(height: 50)
        .onAppear {
            urlFieldText = webViewState.urlString
        }
        .onChange(of: webViewState.urlString) { _, newValue in
            if !isURLFieldFocused {
                urlFieldText = newValue
            }
        }
    }

    // MARK: - Subviews

    private var navigationButtons: some View {
        HStack(spacing: 8) {
            // Back button
            Button {
                webViewState.goBack()
            } label: {
                Image(systemName: "chevron.left")
                    .font(.system(size: 14, weight: .medium))
            }
            .buttonStyle(.plain)
            .disabled(!webViewState.canGoBack)
            .opacity(webViewState.canGoBack ? 1.0 : 0.4)
            .help("Go Back (⌘[)")

            // Forward button
            Button {
                webViewState.goForward()
            } label: {
                Image(systemName: "chevron.right")
                    .font(.system(size: 14, weight: .medium))
            }
            .buttonStyle(.plain)
            .disabled(!webViewState.canGoForward)
            .opacity(webViewState.canGoForward ? 1.0 : 0.4)
            .help("Go Forward (⌘])")

            // Reload button
            Button {
                if webViewState.isLoading {
                    webViewState.stopLoading()
                } else {
                    Task {
                        await webViewState.reload()
                    }
                }
            } label: {
                Image(systemName: webViewState.isLoading ? "xmark" : "arrow.clockwise")
                    .font(.system(size: 13, weight: .medium))
            }
            .buttonStyle(.plain)
            .help(webViewState.isLoading ? "Stop Loading" : "Reload (⌘R)")

            // Home button
            Button {
                Task {
                    await webViewState.navigateToHome()
                }
            } label: {
                Image(systemName: "house")
                    .font(.system(size: 13, weight: .medium))
            }
            .buttonStyle(.plain)
            .help("Home (⌘⇧H)")
        }
    }

    private var urlField: some View {
        HStack(spacing: 8) {
            // Lock icon for HTTPS
            if webViewState.currentURL?.scheme == "https" {
                Image(systemName: "lock.fill")
                    .font(.system(size: 11))
                    .foregroundStyle(.green)
            }

            // URL text field
            TextField("Enter URL or search GitHub", text: $urlFieldText)
                .textFieldStyle(.plain)
                .font(.system(.body, design: .monospaced))
                .focused($isURLFieldFocused)
                .onSubmit {
                    Task {
                        await webViewState.load(urlString: urlFieldText)
                    }
                    isURLFieldFocused = false
                }

            // Clear button
            if !urlFieldText.isEmpty && isURLFieldFocused {
                Button {
                    urlFieldText = ""
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .font(.system(size: 12))
                        .foregroundStyle(.secondary)
                }
                .buttonStyle(.plain)
            }
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 6)
        .background {
            RoundedRectangle(cornerRadius: 6)
                .fill(.background.opacity(0.5))
                .stroke(.separator, lineWidth: 0.5)
        }
        .frame(maxWidth: 500)
    }

    private var actionButtons: some View {
        HStack(spacing: 8) {
            // Share button
            Button {
                shareCurrentPage()
            } label: {
                Image(systemName: "square.and.arrow.up")
                    .font(.system(size: 13, weight: .medium))
            }
            .buttonStyle(.plain)
            .help("Share")

            // Bookmark button
            Button {
                addBookmark()
            } label: {
                Image(systemName: "bookmark")
                    .font(.system(size: 13, weight: .medium))
            }
            .buttonStyle(.plain)
            .help("Add Bookmark")
        }
    }

    // MARK: - Methods

    private func shareCurrentPage() {
        guard let url = webViewState.currentURL else { return }

        let picker = NSSharingServicePicker(items: [url])
        if let button = NSApp.keyWindow?.contentView {
            picker.show(relativeTo: .zero, of: button, preferredEdge: .minY)
        }
    }

    private func addBookmark() {
        guard let url = webViewState.currentURL else { return }

        // TODO: Implement bookmark creation with custom title
        // For now, use page title or URL
        let title = webViewState.pageTitle ?? url.absoluteString
        print("Add bookmark: \(title) - \(url.absoluteString)")
    }
}

// MARK: - Visual Effect View

struct VisualEffectView: NSViewRepresentable {
    let material: NSVisualEffectView.Material
    let blendingMode: NSVisualEffectView.BlendingMode

    func makeNSView(context: Context) -> NSVisualEffectView {
        let view = NSVisualEffectView()
        view.material = material
        view.blendingMode = blendingMode
        view.state = .active
        return view
    }

    func updateNSView(_ nsView: NSVisualEffectView, context: Context) {
        nsView.material = material
        nsView.blendingMode = blendingMode
    }
}

// MARK: - Preview

#Preview {
    VStack {
        ToolbarView()
            .environment(WebViewState())

        Spacer()
    }
    .frame(width: 1000, height: 200)
}
