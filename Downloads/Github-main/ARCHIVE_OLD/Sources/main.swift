import Cocoa
import WebKit

@NSApplicationMain
final class AppDelegate: NSObject, NSApplicationDelegate, WKNavigationDelegate {
    var window: NSWindow!
    private var webView: WKWebView!
    private var urlField: NSTextField!
    private var backButton: NSButton!
    private var forwardButton: NSButton!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        NSApp.setActivationPolicy(.regular)

        let contentRect = NSRect(x: 0, y: 0, width: 1200, height: 800)
        window = NSWindow(
            contentRect: contentRect,
            styleMask: [.titled, .closable, .miniaturizable, .resizable],
            backing: .buffered,
            defer: false
        )
        window.center()
        window.title = "GitHub"
        window.makeKeyAndOrderFront(nil)
        NSApp.activate(ignoringOtherApps: true)

        let rootView = NSView(frame: contentRect)
        rootView.autoresizingMask = [.width, .height]

        let toolbar = makeToolbarView()

        webView = WKWebView(frame: .zero)
        webView.navigationDelegate = self
        webView.translatesAutoresizingMaskIntoConstraints = false

        rootView.addSubview(toolbar)
        rootView.addSubview(webView)

        NSLayoutConstraint.activate([
            toolbar.leadingAnchor.constraint(equalTo: rootView.leadingAnchor),
            toolbar.trailingAnchor.constraint(equalTo: rootView.trailingAnchor),
            toolbar.topAnchor.constraint(equalTo: rootView.topAnchor),
            toolbar.heightAnchor.constraint(equalToConstant: 44),

            webView.leadingAnchor.constraint(equalTo: rootView.leadingAnchor),
            webView.trailingAnchor.constraint(equalTo: rootView.trailingAnchor),
            webView.topAnchor.constraint(equalTo: toolbar.bottomAnchor),
            webView.bottomAnchor.constraint(equalTo: rootView.bottomAnchor)
        ])

        window.contentView = rootView
        setupMenuBar()

        loadURLString("https://github.com")
        updateNavButtons()
    }

    private func makeToolbarView() -> NSView {
        let toolbar = NSView(frame: .zero)
        toolbar.translatesAutoresizingMaskIntoConstraints = false

        let stack = NSStackView()
        stack.orientation = .horizontal
        stack.alignment = .centerY
        stack.spacing = 8
        stack.edgeInsets = NSEdgeInsets(top: 8, left: 10, bottom: 8, right: 10)
        stack.translatesAutoresizingMaskIntoConstraints = false

        backButton = NSButton(title: "◀︎", target: self, action: #selector(goBack))
        backButton.bezelStyle = .texturedRounded
        backButton.setButtonType(.momentaryPushIn)

        forwardButton = NSButton(title: "▶︎", target: self, action: #selector(goForward))
        forwardButton.bezelStyle = .texturedRounded
        forwardButton.setButtonType(.momentaryPushIn)

        let reloadButton = NSButton(title: "Reload", target: self, action: #selector(reload))
        reloadButton.bezelStyle = .texturedRounded
        reloadButton.setButtonType(.momentaryPushIn)

        let homeButton = NSButton(title: "Home", target: self, action: #selector(goHome))
        homeButton.bezelStyle = .texturedRounded
        homeButton.setButtonType(.momentaryPushIn)

        urlField = NSTextField(string: "https://github.com")
        urlField.placeholderString = "Enter URL"
        urlField.isBezeled = true
        urlField.isEditable = true
        urlField.isSelectable = true
        urlField.lineBreakMode = .byTruncatingMiddle
        urlField.target = self
        urlField.action = #selector(goFromAddressBar)

        let goButton = NSButton(title: "Go", target: self, action: #selector(goFromAddressBar))
        goButton.bezelStyle = .texturedRounded
        goButton.setButtonType(.momentaryPushIn)

        stack.addArrangedSubview(backButton)
        stack.addArrangedSubview(forwardButton)
        stack.addArrangedSubview(reloadButton)
        stack.addArrangedSubview(homeButton)
        stack.addArrangedSubview(urlField)
        stack.addArrangedSubview(goButton)

        toolbar.addSubview(stack)

        NSLayoutConstraint.activate([
            stack.leadingAnchor.constraint(equalTo: toolbar.leadingAnchor),
            stack.trailingAnchor.constraint(equalTo: toolbar.trailingAnchor),
            stack.topAnchor.constraint(equalTo: toolbar.topAnchor),
            stack.bottomAnchor.constraint(equalTo: toolbar.bottomAnchor),
            urlField.widthAnchor.constraint(greaterThanOrEqualToConstant: 420)
        ])

        return toolbar
    }

    private func loadURLString(_ input: String) {
        let trimmed = input.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmed.isEmpty else { return }

        let urlString: String
        if trimmed.contains("://") {
            urlString = trimmed
        } else {
            urlString = "https://\(trimmed)"
        }

        guard let url = URL(string: urlString) else { return }
        urlField.stringValue = url.absoluteString
        webView.load(URLRequest(url: url))
    }

    private func updateNavButtons() {
        backButton.isEnabled = webView?.canGoBack ?? false
        forwardButton.isEnabled = webView?.canGoForward ?? false
    }
    
    func setupMenuBar() {
        let mainMenu = NSMenu()

        // App menu
        let appMenuItem = NSMenuItem()
        let appMenu = NSMenu()

        let aboutItem = NSMenuItem(title: "About GitHub App", action: #selector(showAbout), keyEquivalent: "")
        aboutItem.target = self
        appMenu.addItem(aboutItem)
        appMenu.addItem(NSMenuItem.separator())
        appMenu.addItem(NSMenuItem(title: "Quit GitHub App", action: #selector(NSApplication.terminate(_:)), keyEquivalent: "q"))

        appMenuItem.submenu = appMenu
        mainMenu.addItem(appMenuItem)

        // View menu (simple navigation)
        let viewMenuItem = NSMenuItem()
        let viewMenu = NSMenu(title: "View")

        let backItem = NSMenuItem(title: "Back", action: #selector(goBack), keyEquivalent: "[")
        backItem.keyEquivalentModifierMask = [.command]
        backItem.target = self
        viewMenu.addItem(backItem)

        let forwardItem = NSMenuItem(title: "Forward", action: #selector(goForward), keyEquivalent: "]")
        forwardItem.keyEquivalentModifierMask = [.command]
        forwardItem.target = self
        viewMenu.addItem(forwardItem)

        viewMenu.addItem(NSMenuItem.separator())

        let reloadItem = NSMenuItem(title: "Reload", action: #selector(reload), keyEquivalent: "r")
        reloadItem.keyEquivalentModifierMask = [.command]
        reloadItem.target = self
        viewMenu.addItem(reloadItem)

        let homeItem = NSMenuItem(title: "Home (github.com)", action: #selector(goHome), keyEquivalent: "h")
        homeItem.keyEquivalentModifierMask = [.command]
        homeItem.target = self
        viewMenu.addItem(homeItem)

        viewMenu.addItem(NSMenuItem.separator())

        let openInBrowserItem = NSMenuItem(title: "Open in Default Browser", action: #selector(openInBrowser), keyEquivalent: "o")
        openInBrowserItem.keyEquivalentModifierMask = [.command]
        openInBrowserItem.target = self
        viewMenu.addItem(openInBrowserItem)

        viewMenuItem.submenu = viewMenu
        mainMenu.addItem(viewMenuItem)

        NSApplication.shared.mainMenu = mainMenu
    }
    
    @objc func showAbout() {
        let alert = NSAlert()
        alert.messageText = "GitHub App"
        alert.informativeText = "A simple macOS WebKit wrapper for https://github.com.\n\nUnofficial client. Not affiliated with GitHub, Inc."
        alert.alertStyle = .informational
        alert.runModal()
    }

    @objc private func reload() { webView.reload(nil) }
    @objc private func goBack() { if webView.canGoBack { webView.goBack() } }
    @objc private func goForward() { if webView.canGoForward { webView.goForward() } }
    @objc private func goHome() { loadURLString("https://github.com") }
    @objc private func goFromAddressBar() { loadURLString(urlField.stringValue) }

    @objc private func openInBrowser() {
        guard let url = webView.url ?? URL(string: "https://github.com/") else { return }
        NSWorkspace.shared.open(url)
    }
    
    // WKNavigationDelegate methods
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        updateNavButtons()
    }

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        if let url = webView.url {
            urlField.stringValue = url.absoluteString
        }
        updateNavButtons()
    }

    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        updateNavButtons()
    }

    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        updateNavButtons()
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        // Clean up
    }
    
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }
}
