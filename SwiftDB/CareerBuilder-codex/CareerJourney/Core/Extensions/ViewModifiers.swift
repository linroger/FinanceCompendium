//
//  ViewModifiers.swift
//  CareerKit
//
//  Custom view modifiers for enhanced functionality
//

import SwiftUI
import AppKit

// MARK: - Responsive Layout System

/// Comprehensive breakpoint system for responsive design
enum ResponsiveBreakpoint: CaseIterable {
    case xSmall   // < 480px
    case small    // 480px - 768px
    case medium   // 768px - 1024px
    case large    // 1024px - 1440px
    case xLarge   // 1440px - 1920px
    case xxLarge  // > 1920px
    
    var minWidth: CGFloat {
        switch self {
        case .xSmall: return 0
        case .small: return 480
        case .medium: return 768
        case .large: return 1024
        case .xLarge: return 1440
        case .xxLarge: return 1920
        }
    }
    
    var maxWidth: CGFloat {
        switch self {
        case .xSmall: return 479
        case .small: return 767
        case .medium: return 1023
        case .large: return 1439
        case .xLarge: return 1919
        case .xxLarge: return .infinity
        }
    }
    
    static func from(width: CGFloat) -> ResponsiveBreakpoint {
        for breakpoint in ResponsiveBreakpoint.allCases {
            if width >= breakpoint.minWidth && width <= breakpoint.maxWidth {
                return breakpoint
            }
        }
        return .medium // fallback
    }
}

/// Comprehensive responsive configuration
struct ResponsiveConfiguration {
    let breakpoint: ResponsiveBreakpoint
    let windowSize: CGSize
    
    // MARK: - Layout Dimensions
    
    var sidebarMinWidth: CGFloat {
        switch breakpoint {
        case .xSmall: return 180
        case .small: return 200
        case .medium: return 250
        case .large: return 300
        case .xLarge: return 350
        case .xxLarge: return 400
        }
    }
    
    var sidebarIdealWidth: CGFloat {
        switch breakpoint {
        case .xSmall: return 220
        case .small: return 250
        case .medium: return 300
        case .large: return 350
        case .xLarge: return 400
        case .xxLarge: return 450
        }
    }
    
    var detailMinWidth: CGFloat {
        switch breakpoint {
        case .xSmall: return 400
        case .small: return 500
        case .medium: return 600
        case .large: return 800
        case .xLarge: return 1000
        case .xxLarge: return 1200
        }
    }
    
    var detailIdealWidth: CGFloat {
        switch breakpoint {
        case .xSmall: return 500
        case .small: return 600
        case .medium: return 800
        case .large: return 1000
        case .xLarge: return 1200
        case .xxLarge: return 1400
        }
    }
    
    // MARK: - Content Spacing
    
    var contentPadding: CGFloat {
        switch breakpoint {
        case .xSmall: return 8
        case .small: return 12
        case .medium: return 16
        case .large: return 20
        case .xLarge: return 24
        case .xxLarge: return 32
        }
    }
    
    var sectionSpacing: CGFloat {
        switch breakpoint {
        case .xSmall: return 12
        case .small: return 16
        case .medium: return 20
        case .large: return 24
        case .xLarge: return 28
        case .xxLarge: return 32
        }
    }
    
    var cardSpacing: CGFloat {
        switch breakpoint {
        case .xSmall: return 8
        case .small: return 12
        case .medium: return 16
        case .large: return 20
        case .xLarge: return 24
        case .xxLarge: return 28
        }
    }
    
    // MARK: - Typography Scaling
    
    var titleScale: CGFloat {
        switch breakpoint {
        case .xSmall: return 0.85
        case .small: return 0.9
        case .medium: return 1.0
        case .large: return 1.1
        case .xLarge: return 1.15
        case .xxLarge: return 1.2
        }
    }
    
    var bodyScale: CGFloat {
        switch breakpoint {
        case .xSmall: return 0.9
        case .small: return 0.95
        case .medium: return 1.0
        case .large: return 1.05
        case .xLarge: return 1.1
        case .xxLarge: return 1.15
        }
    }
    
    // MARK: - Chart Sizing
    
    var chartHeight: CGFloat {
        switch breakpoint {
        case .xSmall: return 200
        case .small: return 250
        case .medium: return 300
        case .large: return 350
        case .xLarge: return 400
        case .xxLarge: return 450
        }
    }
    
    var chartMargin: CGFloat {
        switch breakpoint {
        case .xSmall: return 8
        case .small: return 12
        case .medium: return 16
        case .large: return 20
        case .xLarge: return 24
        case .xxLarge: return 28
        }
    }
    
    // MARK: - Navigation Behavior
    
    var shouldCollapseSidebar: Bool {
        breakpoint == .xSmall || (breakpoint == .small && windowSize.width < 600)
    }
    
    var useCompactLayout: Bool {
        breakpoint == .xSmall || breakpoint == .small
    }
    
    var columnsInGrid: Int {
        switch breakpoint {
        case .xSmall: return 1
        case .small: return 2
        case .medium: return 3
        case .large: return 4
        case .xLarge: return 5
        case .xxLarge: return 6
        }
    }
}

struct ResponsiveLayoutModifier: ViewModifier {
    @State private var windowSize: CGSize = .zero
    @State private var configuration: ResponsiveConfiguration = ResponsiveConfiguration(
        breakpoint: .medium, 
        windowSize: .zero
    )
    
    func body(content: Content) -> some View {
        content
            .background(
                GeometryReader { geometry in
                    Color.clear
                        .onAppear {
                            updateConfiguration(with: geometry.size)
                        }
                        .onChange(of: geometry.size) { _, newSize in
                            updateConfiguration(with: newSize)
                        }
                }
            )
            .environment(\.windowSize, windowSize)
            .environment(\.responsiveConfiguration, configuration)
    }
    
    private func updateConfiguration(with size: CGSize) {
        windowSize = size
        let breakpoint = ResponsiveBreakpoint.from(width: size.width)
        configuration = ResponsiveConfiguration(breakpoint: breakpoint, windowSize: size)
    }
}

// MARK: - Global Keyboard Shortcuts Modifier

struct GlobalKeyboardShortcutsModifier: ViewModifier {
    let shortcuts: [KeyboardShortcutHandler]
    
    func body(content: Content) -> some View {
        content
            .onReceive(NotificationCenter.default.publisher(for: NSApplication.keyboardShortcutNotification)) { notification in
                if let keyboardShortcut = notification.object as? KeyboardShortcutHandler {
                    handleKeyboardShortcut(keyboardShortcut)
                }
            }
    }
    
    private func handleKeyboardShortcut(_ shortcut: KeyboardShortcutHandler) {
        // Handle global keyboard shortcuts
        for registeredShortcut in shortcuts {
            if registeredShortcut.key == shortcut.key && registeredShortcut.modifiers == shortcut.modifiers {
                // Execute shortcut action
                break
            }
        }
    }
}

// MARK: - Focus Area Modifier

struct FocusAreaModifier: ViewModifier {
    let identifier: String
    @FocusState private var isFocused: Bool
    
    func body(content: Content) -> some View {
        content
            .focused($isFocused)
            .onReceive(NotificationCenter.default.publisher(for: .focusArea)) { notification in
                if let focusIdentifier = notification.object as? String,
                   focusIdentifier == identifier {
                    isFocused = true
                }
            }
    }
}

// MARK: - Card Style Modifier

struct CardStyleModifier: ViewModifier {
    let elevation: CardElevation
    
    enum CardElevation {
        case low, medium, high
        
        var shadowRadius: CGFloat {
            switch self {
            case .low: return 2
            case .medium: return 4
            case .high: return 8
            }
        }
        
        var shadowOpacity: Double {
            switch self {
            case .low: return 0.1
            case .medium: return 0.15
            case .high: return 0.2
            }
        }
    }
    
    func body(content: Content) -> some View {
        content
            .background(Theme.Colors.secondaryBackground)
            .cornerRadius(Theme.CornerRadius.medium)
            .shadow(
                color: Color.black.opacity(elevation.shadowOpacity),
                radius: elevation.shadowRadius,
                x: 0,
                y: elevation.shadowRadius / 2
            )
    }
}

// MARK: - Hover Effect Modifier

struct HoverEffectModifier: ViewModifier {
    @State private var isHovered = false
    
    func body(content: Content) -> some View {
        content
            .scaleEffect(isHovered ? 1.02 : 1.0)
            .animation(.easeInOut(duration: 0.2), value: isHovered)
            .onHover { hovering in
                isHovered = hovering
            }
    }
}

// MARK: - View Extensions

extension View {
    func responsiveLayout() -> some View {
        modifier(ResponsiveLayoutModifier())
    }
    
    func withResponsiveLayout<Content: View>(@ViewBuilder content: @escaping (ResponsiveConfiguration) -> Content) -> some View {
        self.modifier(ResponsiveLayoutModifier())
            .overlay(
                GeometryReader { _ in
                    ResponsiveContentView(content: content)
                }
            )
    }
    
    func globalKeyboardShortcuts(_ shortcuts: [KeyboardShortcutHandler]) -> some View {
        modifier(GlobalKeyboardShortcutsModifier(shortcuts: shortcuts))
    }
    
    func focusArea(_ identifier: String) -> some View {
        modifier(FocusAreaModifier(identifier: identifier))
    }
    
    func cardStyle(elevation: CardStyleModifier.CardElevation = .medium) -> some View {
        modifier(CardStyleModifier(elevation: elevation))
    }
    
    func hoverEffect() -> some View {
        modifier(HoverEffectModifier())
    }
}

// MARK: - Responsive Content View

struct ResponsiveContentView<Content: View>: View {
    @Environment(\.responsiveConfiguration) private var configuration
    let content: (ResponsiveConfiguration) -> Content
    
    var body: some View {
        content(configuration)
    }
}

// MARK: - Responsive Helper Functions

struct ResponsiveLayoutHelper {
    static func calculateOptimalSidebarWidth(for windowWidth: CGFloat) -> CGFloat {
        let breakpoint = ResponsiveBreakpoint.from(width: windowWidth)
        let config = ResponsiveConfiguration(breakpoint: breakpoint, windowSize: CGSize(width: windowWidth, height: 800))
        return config.sidebarIdealWidth
    }
    
    static func shouldUseCompactLayout(for windowSize: CGSize) -> Bool {
        let breakpoint = ResponsiveBreakpoint.from(width: windowSize.width)
        let config = ResponsiveConfiguration(breakpoint: breakpoint, windowSize: windowSize)
        return config.useCompactLayout
    }
    
    static func optimalChartHeight(for windowWidth: CGFloat) -> CGFloat {
        let breakpoint = ResponsiveBreakpoint.from(width: windowWidth)
        let config = ResponsiveConfiguration(breakpoint: breakpoint, windowSize: CGSize(width: windowWidth, height: 800))
        return config.chartHeight
    }
}

// MARK: - Environment Values

private struct WindowSizeKey: EnvironmentKey {
    static let defaultValue: CGSize = .zero
}

private struct ResponsiveConfigurationKey: EnvironmentKey {
    static let defaultValue = ResponsiveConfiguration(
        breakpoint: .medium,
        windowSize: .zero
    )
}

extension EnvironmentValues {
    var windowSize: CGSize {
        get { self[WindowSizeKey.self] }
        set { self[WindowSizeKey.self] = newValue }
    }
    
    var responsiveConfiguration: ResponsiveConfiguration {
        get { self[ResponsiveConfigurationKey.self] }
        set { self[ResponsiveConfigurationKey.self] = newValue }
    }
}

// MARK: - Responsive Typography Extensions

extension Font {
    func responsiveScaled(_ configuration: ResponsiveConfiguration, for textStyle: Font.TextStyle = .body) -> Font {
        // Note: Scale could be applied here for responsive typography
        // let scale = textStyle == .title || textStyle == .title2 || textStyle == .title3 || textStyle == .largeTitle 
        //     ? configuration.titleScale 
        //     : configuration.bodyScale
        
        switch textStyle {
        case .largeTitle:
            return .system(.largeTitle, design: .default).weight(.bold)
        case .title:
            return .system(.title, design: .default).weight(.semibold)
        case .title2:
            return .system(.title2, design: .default).weight(.medium)
        case .headline:
            return .system(.headline, design: .default).weight(.medium)
        default:
            return .system(textStyle, design: .default)
        }
    }
}

// MARK: - Responsive View Extensions

extension View {
    func responsiveTitle(_ configuration: ResponsiveConfiguration) -> some View {
        self.font(.title.responsiveScaled(configuration, for: .title))
    }
    
    func responsiveHeadline(_ configuration: ResponsiveConfiguration) -> some View {
        self.font(.headline.responsiveScaled(configuration, for: .headline))
    }
    
    func responsiveBody(_ configuration: ResponsiveConfiguration) -> some View {
        self.font(.body.responsiveScaled(configuration, for: .body))
    }
    
    func responsivePadding(_ configuration: ResponsiveConfiguration) -> some View {
        self.padding(configuration.contentPadding)
    }
    
    func responsiveCardSpacing(_ configuration: ResponsiveConfiguration) -> some View {
        self.padding(configuration.cardSpacing)
    }
    
    func responsiveFrame(_ configuration: ResponsiveConfiguration, minWidth: ((ResponsiveConfiguration) -> CGFloat)? = nil, idealWidth: ((ResponsiveConfiguration) -> CGFloat)? = nil, minHeight: CGFloat? = nil, idealHeight: CGFloat? = nil) -> some View {
        self.frame(
            minWidth: minWidth?(configuration),
            idealWidth: idealWidth?(configuration),
            minHeight: minHeight,
            idealHeight: idealHeight
        )
    }
    
    @ViewBuilder
    func adaptiveNavigation(_ configuration: ResponsiveConfiguration, @ViewBuilder sidebar: () -> some View, @ViewBuilder detail: () -> some View) -> some View {
        if configuration.shouldCollapseSidebar {
            TabView {
                sidebar()
                    .tabItem {
                        Label("Jobs", systemImage: "briefcase")
                    }
                detail()
                    .tabItem {
                        Label("Details", systemImage: "doc.text")
                    }
            }
        } else {
            NavigationSplitView {
                sidebar()
            } detail: {
                detail()
            }
        }
    }
    
    @ViewBuilder
    func responsiveGrid<Data, Content>(_ configuration: ResponsiveConfiguration, data: Data, @ViewBuilder content: @escaping (Data.Element) -> Content) -> some View where Data: RandomAccessCollection, Content: View {
        let columns = Array(repeating: GridItem(.flexible()), count: configuration.columnsInGrid)
        
        LazyVGrid(columns: columns, spacing: configuration.cardSpacing) {
            ForEach(Array(data.enumerated()), id: \.offset) { index, item in
                content(item)
            }
        }
    }
}

// MARK: - Supporting Types

struct KeyboardShortcutHandler {
    let key: KeyEquivalent
    let modifiers: EventModifiers
    let action: () -> Void
    
    init(_ key: KeyEquivalent, modifiers: EventModifiers = [], action: @escaping () -> Void) {
        self.key = key
        self.modifiers = modifiers
        self.action = action
    }
}

// MARK: - Notification Extensions

extension Notification.Name {
    static let focusArea = Notification.Name("focusArea")
}

extension NSApplication {
    static let keyboardShortcutNotification = Notification.Name("keyboardShortcut")
}

// MARK: - Window Size Class

enum WindowSizeClass {
    case compact
    case regular
}

// Window Size Class Environment Key
struct WindowSizeClassKey: EnvironmentKey {
    static let defaultValue = WindowSizeClass.regular
}

extension EnvironmentValues {
    var windowSizeClass: WindowSizeClass {
        get { self[WindowSizeClassKey.self] }
        set { self[WindowSizeClassKey.self] = newValue }
    }
}