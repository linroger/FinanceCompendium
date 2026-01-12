import SwiftUI

/// Main content view with sidebar and web view
@MainActor
struct ContentView: View {
    // MARK: - Environment

    @Environment(NavigationState.self) private var navigationState
    @Environment(WebViewState.self) private var webViewState

    // MARK: - State

    @State private var isToolbarVisible = false
    @State private var mouseTracker: MouseTracker?

    // MARK: - Body

    var body: some View {
        NavigationSplitView(columnVisibility: .constant(.all)) {
            // Sidebar
            SidebarView()
                .navigationSplitViewColumnWidth(min: 200, ideal: 250, max: 300)
        } detail: {
            // Main content area with WebView
            ZStack(alignment: .top) {
                // WebView fills the entire area
                WebView()
                    .ignoresSafeArea()

                // Smart auto-hide toolbar
                if isToolbarVisible || webViewState.isLoading {
                    ToolbarView()
                        .transition(.move(edge: .top).combined(with: .opacity))
                        .animation(.spring(response: 0.3, dampingFraction: 0.8), value: isToolbarVisible)
                }
            }
            .onHover { hovering in
                // Show toolbar when hovering near top of window
                withAnimation {
                    isToolbarVisible = hovering
                }
            }
            .background {
                // Mouse tracking for auto-hide behavior
                MouseTrackingView { position in
                    // Show toolbar if mouse is in top 100px
                    isToolbarVisible = position.y < 100
                }
            }
        }
        .navigationTitle("GitHub")
    }
}

// MARK: - Mouse Tracking

/// Helper view to track mouse position for auto-hide toolbar
struct MouseTrackingView: NSViewRepresentable {
    let onMouseMove: (CGPoint) -> Void

    func makeNSView(context: Context) -> MouseTrackingNSView {
        let view = MouseTrackingNSView()
        view.onMouseMove = onMouseMove
        return view
    }

    func updateNSView(_ nsView: MouseTrackingNSView, context: Context) {
        nsView.onMouseMove = onMouseMove
    }
}

final class MouseTrackingNSView: NSView {
    var onMouseMove: ((CGPoint) -> Void)?

    private var trackingArea: NSTrackingArea?

    override func updateTrackingAreas() {
        super.updateTrackingAreas()

        if let trackingArea {
            removeTrackingArea(trackingArea)
        }

        let options: NSTrackingArea.Options = [
            .mouseEnteredAndExited,
            .mouseMoved,
            .activeInKeyWindow,
            .inVisibleRect
        ]

        trackingArea = NSTrackingArea(
            rect: bounds,
            options: options,
            owner: self,
            userInfo: nil
        )

        if let trackingArea {
            addTrackingArea(trackingArea)
        }
    }

    override func mouseMoved(with event: NSEvent) {
        let location = convert(event.locationInWindow, from: nil)
        onMouseMove?(location)
    }

    override func mouseEntered(with event: NSEvent) {
        let location = convert(event.locationInWindow, from: nil)
        onMouseMove?(location)
    }
}

// MARK: - Supporting Types

@Observable
@MainActor
final class MouseTracker {
    var position: CGPoint = .zero
}

// MARK: - Preview

#Preview {
    ContentView()
        .environment(NavigationState())
        .environment(WebViewState())
        .frame(width: 1200, height: 800)
}
