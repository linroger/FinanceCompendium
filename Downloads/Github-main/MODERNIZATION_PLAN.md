# GitHub Desktop Wrapper - Apple Silicon Modernization Plan

## Executive Summary
Complete overhaul of GitHub Desktop Wrapper to create a modern, native macOS app optimized for Apple Silicon (M4) using Swift 6.2, SwiftUI, and macOS 26 Tahoe features.

## Current State Analysis

### Existing Implementation
- **Electron Version**: Node.js/Electron 28, targets Intel x86_64 only
- **Swift Version**: AppKit-based (NSWindow, NSApplication), uses `@NSApplicationMain` (deprecated), primarily x86_64 with arm64 fallback
- **Architecture**: Traditional imperative UI code, WKWebView for rendering
- **Dependencies**: Electron dependencies, legacy Swift patterns

### Technical Debt
1. Using deprecated `@NSApplicationMain` instead of `@main`
2. No Swift concurrency support (async/await)
3. AppKit instead of modern SwiftUI
4. Intel-first architecture (requires Rosetta on Apple Silicon)
5. No modern macOS features (sidebar, widgets, etc.)
6. Electron adds ~200MB overhead for a simple web wrapper

## Modernization Goals

### Primary Objectives
1. ✅ **Native Swift/SwiftUI Only** - Remove Electron entirely
2. ✅ **Apple Silicon First** - Optimize for M-series chips (M4 MacBook Pro)
3. ✅ **Swift 6.2** - Strict concurrency, modern async/await patterns
4. ✅ **macOS 26 Tahoe** - Target latest macOS with modern APIs
5. ✅ **Smart Auto-Hide Toolbar** - Modern macOS UX patterns
6. ✅ **Sidebar/Split View** - Advanced navigation and multitasking
7. ✅ **Widgets & Extensions** - macOS integration features

### Performance Targets
- **App Size**: < 5MB (vs current ~200MB with Electron)
- **Memory Usage**: < 50MB idle (vs ~150MB+ with Electron)
- **Launch Time**: < 0.5s cold start
- **Native Feel**: 60fps scrolling, instant interactions

## Technical Architecture

### Tech Stack
```
┌─────────────────────────────────────┐
│         SwiftUI App Layer           │
│  - WindowGroup with Scene protocol  │
│  - @Observable state management     │
│  - Swift 6.2 strict concurrency     │
└─────────────────────────────────────┘
              │
┌─────────────────────────────────────┐
│      WebKit Integration Layer       │
│  - WKWebView with async/await       │
│  - Modern navigation delegation     │
│  - Content injection & JS bridge    │
└─────────────────────────────────────┘
              │
┌─────────────────────────────────────┐
│      Extensions & Widgets           │
│  - App Intents framework            │
│  - WidgetKit integration            │
│  - Share Extension (optional)       │
└─────────────────────────────────────┘
```

### Project Structure
```
GitHubApp/
├── GitHubApp.xcodeproj
├── GitHubApp/
│   ├── App/
│   │   ├── GitHubApp.swift           # @main entry point
│   │   ├── AppConfig.swift           # Configuration
│   │   └── AppEnvironment.swift      # Environment values
│   ├── Views/
│   │   ├── ContentView.swift         # Main container
│   │   ├── WebView.swift             # WKWebView wrapper
│   │   ├── SidebarView.swift         # Navigation sidebar
│   │   ├── ToolbarView.swift         # Smart auto-hide toolbar
│   │   └── Components/               # Reusable UI components
│   ├── Models/
│   │   ├── NavigationState.swift     # @Observable navigation
│   │   ├── WebViewState.swift        # Web view state management
│   │   └── BookmarkStore.swift       # Bookmark persistence
│   ├── Services/
│   │   ├── WebKitManager.swift       # WebKit coordination
│   │   └── KeychainManager.swift     # Secure storage
│   └── Resources/
│       ├── Assets.xcassets
│       └── Info.plist
├── GitHubWidget/                     # Widget extension
│   ├── GitHubWidget.swift
│   └── GitHubWidgetView.swift
├── GitHubAppIntents/                 # App Intents
│   └── OpenRepositoryIntent.swift
└── Shared/
    └── Models/                       # Shared data models
```

## Implementation Phases

### Phase 1: Foundation (Core SwiftUI App)
**Timeline**: Day 1
**Status**: 🔄 In Progress

#### Tasks
- [x] Create new Xcode project targeting macOS 26+
- [ ] Set up Swift 6.2 with strict concurrency
- [ ] Configure Apple Silicon (arm64) primary architecture
- [ ] Implement `@main` app entry point with SwiftUI
- [ ] Create basic ContentView with NavigationSplitView
- [ ] Set up @Observable state management pattern
- [ ] Configure build settings for optimization

#### Deliverables
- ✅ Clean Xcode project structure
- ✅ Swift 6.2 strict concurrency enabled
- ✅ Universal binary support (arm64 primary, x64 secondary)
- ✅ Basic app shell running

### Phase 2: WebKit Integration
**Timeline**: Day 1-2
**Status**: 🔜 Pending

#### Tasks
- [ ] Create SwiftUI WKWebView wrapper using NSViewRepresentable
- [ ] Implement async/await navigation methods
- [ ] Set up WKNavigationDelegate with @MainActor isolation
- [ ] Add JavaScript injection capabilities
- [ ] Implement cookie/session management
- [ ] Add developer tools integration (optional)

#### Deliverables
- ✅ Functional WebView displaying GitHub.com
- ✅ Navigation controls (back, forward, reload)
- ✅ URL state synchronization
- ✅ Proper memory management

### Phase 3: Smart Toolbar
**Timeline**: Day 2
**Status**: 🔜 Pending

#### Tasks
- [ ] Design auto-hide toolbar with SwiftUI animations
- [ ] Implement hover detection for show/hide
- [ ] Add URL bar with autocomplete
- [ ] Create navigation button group
- [ ] Add share/bookmark actions
- [ ] Implement toolbar customization

#### Deliverables
- ✅ Auto-hiding toolbar that appears on hover
- ✅ Smooth SwiftUI animations
- ✅ Functional navigation controls
- ✅ Native macOS look and feel

### Phase 4: Sidebar & Navigation
**Timeline**: Day 2-3
**Status**: 🔜 Pending

#### Tasks
- [ ] Implement NavigationSplitView for sidebar
- [ ] Create favorite repositories list
- [ ] Add quick access shortcuts (Issues, PRs, Notifications)
- [ ] Implement sidebar filtering and search
- [ ] Add drag-and-drop bookmark organization
- [ ] Create sidebar toggle with keyboard shortcut

#### Deliverables
- ✅ Collapsible sidebar with favorites
- ✅ Quick navigation to common GitHub sections
- ✅ Persistent sidebar state
- ✅ Keyboard shortcuts (⌘+B to toggle)

### Phase 5: Widgets & Extensions
**Timeline**: Day 3-4
**Status**: 🔜 Pending

#### Tasks
- [ ] Create Widget Extension target
- [ ] Implement GitHub notifications widget
- [ ] Add trending repositories widget
- [ ] Create App Intents for Shortcuts integration
- [ ] Add Share Extension for quick PR creation
- [ ] Implement Today Extension (if applicable)

#### Deliverables
- ✅ Notification Center widgets
- ✅ Shortcuts app integration
- ✅ Share extensions
- ✅ Quick Actions support

### Phase 6: Performance Optimization
**Timeline**: Day 4-5
**Status**: 🔜 Pending

#### Tasks
- [ ] Enable Link-Time Optimization (LTO)
- [ ] Configure Metal acceleration for WebKit
- [ ] Implement view caching strategies
- [ ] Optimize SwiftUI view updates
- [ ] Add lazy loading for heavy components
- [ ] Profile with Instruments for bottlenecks
- [ ] Implement background task optimization

#### Deliverables
- ✅ < 5MB app bundle size
- ✅ < 50MB memory usage
- ✅ 60fps UI performance
- ✅ Instant cold start

### Phase 7: Polish & Testing
**Timeline**: Day 5
**Status**: 🔜 Pending

#### Tasks
- [ ] Add comprehensive error handling
- [ ] Implement crash reporting
- [ ] Create app icon variants
- [ ] Add Dark Mode support verification
- [ ] Test accessibility features
- [ ] Add unit tests for core functionality
- [ ] Perform UI testing on M4 MacBook Pro
- [ ] Documentation and README update

#### Deliverables
- ✅ Polished, production-ready app
- ✅ Comprehensive test coverage
- ✅ Updated documentation
- ✅ Release notes

### Phase 8: Cleanup & Migration
**Timeline**: Day 5
**Status**: 🔜 Pending

#### Tasks
- [ ] Remove all Electron dependencies
- [ ] Delete old build scripts (build.sh, package-dmg.sh)
- [ ] Remove package.json and node_modules
- [ ] Archive old Swift/AppKit code
- [ ] Update GitHub Actions CI/CD workflows
- [ ] Create new DMG packaging script
- [ ] Update README with new instructions

#### Deliverables
- ✅ Clean repository without Electron
- ✅ Modern build and distribution system
- ✅ Updated CI/CD pipelines

## Technical Specifications

### Compiler & Build Settings

```swift
// Swift Language Settings
SWIFT_VERSION = 6.2
SWIFT_STRICT_CONCURRENCY = complete
SWIFT_EMIT_MODULE_INTERFACE = YES

// Optimization
SWIFT_COMPILATION_MODE = wholemodule
SWIFT_OPTIMIZATION_LEVEL = -O
LLVM_LTO = YES_THIN

// Architecture
ARCHS = arm64 x86_64
VALID_ARCHS = arm64 x86_64
ONLY_ACTIVE_ARCH = NO (for Release)

// Deployment
MACOSX_DEPLOYMENT_TARGET = 15.0  // macOS Sequoia minimum
PRODUCT_BUNDLE_IDENTIFIER = com.github.wrapper.swift
```

### Key Technologies

| Technology | Version | Purpose |
|------------|---------|---------|
| Swift | 6.2 | Core language with strict concurrency |
| SwiftUI | Latest | Modern declarative UI framework |
| WebKit | Latest | Web rendering engine |
| WidgetKit | Latest | Home Screen & Notification Center widgets |
| AppIntents | Latest | Shortcuts and Siri integration |
| Combine | Latest | Reactive programming (where needed) |

### Modern Swift 6.2 Features

1. **Strict Concurrency**
   ```swift
   @MainActor
   class WebViewModel: ObservableObject {
       @Published var currentURL: URL?
       @Published var isLoading = false

       func navigate(to url: URL) async {
           // All UI updates on MainActor
       }
   }
   ```

2. **@Observable Pattern**
   ```swift
   @Observable
   class NavigationState {
       var selectedItem: SidebarItem?
       var favorites: [Repository] = []
   }
   ```

3. **Async/Await WKWebView**
   ```swift
   func loadPage(_ url: URL) async throws {
       await webView.load(URLRequest(url: url))
   }
   ```

## Migration Strategy

### What's Being Removed
- ❌ Electron framework (~200MB)
- ❌ Node.js dependencies
- ❌ package.json, package-lock.json
- ❌ main.js, preload.js, index.html (Electron files)
- ❌ Old AppKit Swift code (Sources/main.swift)
- ❌ build.sh (replaced with Xcode build)

### What's Being Added
- ✅ Modern SwiftUI app architecture
- ✅ Swift 6.2 with strict concurrency
- ✅ Widget extensions
- ✅ App Intents integration
- ✅ Modern build system

### Backward Compatibility
- **macOS**: Requires macOS 15 Sequoia or later
- **Architecture**: Universal binary (arm64 primary, x64 for Intel Macs)
- **No Rosetta**: Native Apple Silicon binary

## Success Metrics

### Performance
- ✅ App size < 5MB (target: 3-4MB)
- ✅ Memory usage < 50MB idle
- ✅ Launch time < 0.5s
- ✅ 60fps UI rendering

### Code Quality
- ✅ 100% Swift 6.2 concurrency safe
- ✅ Zero Rosetta dependencies
- ✅ Modern SwiftUI best practices
- ✅ Comprehensive error handling

### User Experience
- ✅ Native macOS look and feel
- ✅ Smooth animations
- ✅ Keyboard shortcut support
- ✅ Accessibility compliant

## Risk Mitigation

### Risks
1. **macOS Version Adoption**: Users on older macOS can't use app
   - *Mitigation*: Keep legacy version in separate branch

2. **Widget Complexity**: Widgets may require GitHub API integration
   - *Mitigation*: Start with simple read-only widgets

3. **WebKit Limitations**: Some GitHub features may not work in WKWebView
   - *Mitigation*: Test extensively, fall back to Safari for unsupported features

## Next Steps

1. ✅ Get user approval on modernization plan
2. 🔄 Create Xcode project structure (Phase 1)
3. ⏳ Implement core WebView functionality (Phase 2)
4. ⏳ Build smart toolbar (Phase 3)
5. ⏳ Add sidebar navigation (Phase 4)
6. ⏳ Develop widgets (Phase 5)
7. ⏳ Optimize performance (Phase 6)
8. ⏳ Final polish (Phase 7)
9. ⏳ Clean up old code (Phase 8)

## Timeline Summary

| Phase | Duration | Complexity |
|-------|----------|------------|
| 1. Foundation | 4 hours | Medium |
| 2. WebKit Integration | 6 hours | High |
| 3. Smart Toolbar | 4 hours | Medium |
| 4. Sidebar & Navigation | 6 hours | Medium |
| 5. Widgets & Extensions | 8 hours | High |
| 6. Performance Optimization | 6 hours | High |
| 7. Polish & Testing | 4 hours | Medium |
| 8. Cleanup & Migration | 2 hours | Low |
| **Total** | **40 hours** | **~ 1 week** |

---

**Status**: 🚀 Ready to begin implementation
**Last Updated**: 2026-01-12
**Author**: Claude Code (Sonnet 4.5)
