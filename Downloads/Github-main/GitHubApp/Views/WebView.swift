import SwiftUI
import WebKit

/// SwiftUI wrapper for WKWebView with modern async/await patterns
@MainActor
struct WebView: NSViewRepresentable {
    // MARK: - Environment

    @Environment(WebViewState.self) private var webViewState

    // MARK: - NSViewRepresentable

    func makeNSView(context: Context) -> WKWebView {
        let configuration = WKWebViewConfiguration()

        // Enable developer extras in debug builds
        #if DEBUG
        configuration.preferences.setValue(true, forKey: "developerExtrasEnabled")
        #endif

        // Configure for optimal performance
        configuration.websiteDataStore = .default()

        // Media playback settings (macOS specific)
        configuration.mediaTypesRequiringUserActionForPlayback = []

        // Enable Passkey & AutoFill support
        let preferences = WKWebpagePreferences()
        preferences.allowsContentJavaScript = true
        configuration.defaultWebpagePreferences = preferences

        // Enable credential AutoFill (passkeys, passwords, etc.)
        if #available(macOS 13.0, *) {
            // AutoFill is enabled by default on macOS 13+
            // WebKit automatically integrates with system AutoFill
            configuration.preferences.setValue(true, forKey: "autofillEnabled")
        }

        // Create webView
        let webView = WKWebView(frame: .zero, configuration: configuration)

        // Configure webView
        webView.allowsBackForwardNavigationGestures = true
        webView.allowsMagnification = true
        webView.customUserAgent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.0 Safari/605.1.15"

        // Set navigation delegate
        webView.navigationDelegate = context.coordinator

        // Set UI delegate for new windows
        webView.uiDelegate = context.coordinator

        // Store reference in state
        webViewState.webView = webView

        // Add progress observer
        webView.addObserver(
            context.coordinator,
            forKeyPath: "estimatedProgress",
            options: .new,
            context: nil
        )

        // Add title observer
        webView.addObserver(
            context.coordinator,
            forKeyPath: "title",
            options: .new,
            context: nil
        )

        // Load initial URL
        if let url = webViewState.currentURL {
            let request = URLRequest(url: url)
            webView.load(request)
        }

        return webView
    }

    func updateNSView(_ webView: WKWebView, context: Context) {
        // Update if needed (typically not necessary for WKWebView)
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(webViewState: webViewState)
    }

    // MARK: - Coordinator

    @MainActor
    final class Coordinator: NSObject, WKNavigationDelegate, WKUIDelegate {
        let webViewState: WebViewState

        init(webViewState: WebViewState) {
            self.webViewState = webViewState
            super.init()
        }

        deinit {
            // Cleanup will be handled automatically by weak references
            // KVO cleanup happens when webView is deallocated
        }

        // MARK: - KVO

        nonisolated override func observeValue(
            forKeyPath keyPath: String?,
            of object: Any?,
            change: [NSKeyValueChangeKey: Any]?,
            context: UnsafeMutableRawPointer?
        ) {
            Task { @MainActor in
                if keyPath == "estimatedProgress" {
                    let progress = webViewState.webView?.estimatedProgress ?? 0.0
                    webViewState.updateProgress(progress)
                } else if keyPath == "title" {
                    let title = webViewState.webView?.title
                    webViewState.updateTitle(title)
                }
            }
        }

        // MARK: - WKNavigationDelegate

        func webView(
            _ webView: WKWebView,
            didStartProvisionalNavigation navigation: WKNavigation!
        ) {
            webViewState.didStartProvisionalNavigation()
        }

        func webView(
            _ webView: WKWebView,
            didFinish navigation: WKNavigation!
        ) {
            webViewState.didFinishNavigation(url: webView.url)
        }

        func webView(
            _ webView: WKWebView,
            didFail navigation: WKNavigation!,
            withError error: Error
        ) {
            webViewState.didFail(withError: error)
        }

        func webView(
            _ webView: WKWebView,
            didFailProvisionalNavigation navigation: WKNavigation!,
            withError error: Error
        ) {
            webViewState.didFail(withError: error)
        }

        func webView(
            _ webView: WKWebView,
            decidePolicyFor navigationAction: WKNavigationAction
        ) async -> WKNavigationActionPolicy {
            // Allow GitHub URLs, block external links or open in browser
            guard let url = navigationAction.request.url else {
                return .cancel
            }

            // Allow GitHub domains
            let allowedDomains = ["github.com", "githubusercontent.com", "githubassets.com"]
            if let host = url.host, allowedDomains.contains(where: { host.hasSuffix($0) }) {
                return .allow
            }

            // Open external links in default browser
            if navigationAction.targetFrame == nil {
                NSWorkspace.shared.open(url)
                return .cancel
            }

            return .allow
        }

        // MARK: - WKUIDelegate

        func webView(
            _ webView: WKWebView,
            createWebViewWith configuration: WKWebViewConfiguration,
            for navigationAction: WKNavigationAction,
            windowFeatures: WKWindowFeatures
        ) -> WKWebView? {
            // Handle new window requests by loading in current webView
            if let url = navigationAction.request.url {
                Task { @MainActor in
                    await webViewState.load(url: url)
                }
            }
            return nil
        }

        func webView(
            _ webView: WKWebView,
            runJavaScriptAlertPanelWithMessage message: String,
            initiatedByFrame frame: WKFrameInfo
        ) async {
            let alert = NSAlert()
            alert.messageText = "GitHub"
            alert.informativeText = message
            alert.alertStyle = .informational
            alert.addButton(withTitle: "OK")
            alert.runModal()
        }

        func webView(
            _ webView: WKWebView,
            runJavaScriptConfirmPanelWithMessage message: String,
            initiatedByFrame frame: WKFrameInfo
        ) async -> Bool {
            let alert = NSAlert()
            alert.messageText = "GitHub"
            alert.informativeText = message
            alert.alertStyle = .warning
            alert.addButton(withTitle: "OK")
            alert.addButton(withTitle: "Cancel")
            return alert.runModal() == .alertFirstButtonReturn
        }

        func webView(
            _ webView: WKWebView,
            runJavaScriptTextInputPanelWithPrompt prompt: String,
            defaultText: String?,
            initiatedByFrame frame: WKFrameInfo
        ) async -> String? {
            let alert = NSAlert()
            alert.messageText = prompt
            alert.addButton(withTitle: "OK")
            alert.addButton(withTitle: "Cancel")

            let textField = NSTextField(frame: NSRect(x: 0, y: 0, width: 300, height: 24))
            textField.stringValue = defaultText ?? ""
            alert.accessoryView = textField

            if alert.runModal() == .alertFirstButtonReturn {
                return textField.stringValue
            }
            return nil
        }
    }
}

// MARK: - Preview

#Preview {
    WebView()
        .environment(WebViewState())
        .frame(width: 1200, height: 800)
}
