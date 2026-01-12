import SwiftUI
import WebKit
import Observation

/// WebView state management with Swift 6.2 strict concurrency
/// All mutations must happen on MainActor for thread safety
@Observable
@MainActor
final class WebViewState: Sendable {
    // MARK: - Properties

    /// Current URL being displayed
    var currentURL: URL?

    /// URL text field binding
    var urlString: String = "https://github.com"

    /// Loading state
    var isLoading: Bool = false

    /// Can navigate back
    var canGoBack: Bool = false

    /// Can navigate forward
    var canGoForward: Bool = false

    /// Page title
    var pageTitle: String?

    /// Estimated loading progress (0.0 to 1.0)
    var estimatedProgress: Double = 0.0

    /// Reference to the actual WKWebView (set by WebView wrapper)
    weak var webView: WKWebView?

    // MARK: - Initialization

    init() {
        self.currentURL = URL(string: "https://github.com")
    }

    // MARK: - Navigation Methods

    func load(url: URL) async {
        guard let webView else { return }

        isLoading = true
        currentURL = url
        urlString = url.absoluteString

        let request = URLRequest(url: url)
        webView.load(request)
    }

    func load(urlString: String) async {
        let trimmed = urlString.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmed.isEmpty else { return }

        let finalURLString: String
        if trimmed.contains("://") {
            finalURLString = trimmed
        } else if trimmed.contains(".") {
            finalURLString = "https://\(trimmed)"
        } else {
            // Search GitHub
            finalURLString = "https://github.com/search?q=\(trimmed)"
        }

        if let url = URL(string: finalURLString) {
            await load(url: url)
        }
    }

    func reload() async {
        guard let webView else { return }
        webView.reload()
    }

    func goBack() {
        guard let webView, webView.canGoBack else { return }
        webView.goBack()
    }

    func goForward() {
        guard let webView, webView.canGoForward else { return }
        webView.goForward()
    }

    func navigateToHome() async {
        if let url = URL(string: "https://github.com") {
            await load(url: url)
        }
    }

    func stopLoading() {
        guard let webView else { return }
        webView.stopLoading()
        isLoading = false
    }

    // MARK: - State Update Methods (Called by WKNavigationDelegate)

    func updateNavigationState() {
        guard let webView else { return }
        canGoBack = webView.canGoBack
        canGoForward = webView.canGoForward
    }

    func didStartProvisionalNavigation() {
        isLoading = true
    }

    func didFinishNavigation(url: URL?) {
        isLoading = false
        if let url {
            currentURL = url
            urlString = url.absoluteString
        }
        updateNavigationState()
    }

    func didFail(withError error: Error) {
        isLoading = false
        updateNavigationState()
        // TODO: Show error UI
        print("Navigation failed: \(error.localizedDescription)")
    }

    func updateProgress(_ progress: Double) {
        estimatedProgress = progress
    }

    func updateTitle(_ title: String?) {
        pageTitle = title
    }
}
