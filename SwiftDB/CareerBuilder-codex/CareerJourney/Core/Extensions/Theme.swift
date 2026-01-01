//
//  Theme.swift
//  CareerKit
//
//  Design system and theme configuration
//

import SwiftUI

// MARK: - Theme Namespace
enum Theme {
    
    // MARK: - Semantic Colors
    enum Colors {
        // MARK: - Primary Colors
        static let accent = Color.accentColor
        static let primary = Color.accentColor
        
        // MARK: - Text Colors (Semantic)
        static let primaryText = Color.primary
        static let secondaryText = Color.secondary
        static let tertiaryText = Color(nsColor: .tertiaryLabelColor)
        static let quaternaryText = Color(nsColor: .quaternaryLabelColor)
        static let placeholderText = Color(nsColor: .placeholderTextColor)
        
        // MARK: - Background Colors (Semantic)
        static let primaryBackground = Color(nsColor: .windowBackgroundColor)
        static let secondaryBackground = Color(nsColor: .controlBackgroundColor)
        static let tertiaryBackground = Color(nsColor: .underPageBackgroundColor)
        static let quaternaryBackground = Color(nsColor: .unemphasizedSelectedContentBackgroundColor)
        
        // MARK: - Surface Colors
        static let surfacePrimary = Color(nsColor: .textBackgroundColor)
        static let surfaceSecondary = Color(nsColor: .alternatingContentBackgroundColors.first ?? .controlBackgroundColor)
        static let surfaceHighlight = Color(nsColor: .selectedContentBackgroundColor)
        static let surfaceSelection = Color(nsColor: .unemphasizedSelectedContentBackgroundColor)
        
        // MARK: - Border & Separator Colors
        static let border = Color(nsColor: .separatorColor)
        static let divider = Color(nsColor: .separatorColor)
        static let gridLine = Color(nsColor: .gridColor)
        static let outline = Color(nsColor: .controlColor)
        
        // MARK: - Interactive Element Colors
        static let controlText = Color(nsColor: .controlTextColor)
        static let disabledControlText = Color(nsColor: .disabledControlTextColor)
        static let selectedControlText = Color(nsColor: .selectedControlTextColor)
        static let keyboardFocusIndicator = Color(nsColor: .keyboardFocusIndicatorColor)
        
        // MARK: - System Status Colors (Semantic)
        static let systemRed = Color(nsColor: .systemRed)
        static let systemGreen = Color(nsColor: .systemGreen)
        static let systemBlue = Color(nsColor: .systemBlue)
        static let systemOrange = Color(nsColor: .systemOrange)
        static let systemYellow = Color(nsColor: .systemYellow)
        static let systemPink = Color(nsColor: .systemPink)
        static let systemPurple = Color(nsColor: .systemPurple)
        static let systemTeal = Color(nsColor: .systemTeal)
        static let systemIndigo = Color(nsColor: .systemIndigo)
        static let systemBrown = Color(nsColor: .systemBrown)
        static let systemMint = Color(nsColor: .systemMint)
        static let systemCyan = Color(nsColor: .systemCyan)
        static let systemGray = Color(nsColor: .systemGray)
        
        // MARK: - Status Colors (Semantic)
        static let success = Color(nsColor: .systemGreen)
        static let warning = Color(nsColor: .systemOrange)
        static let error = Color(nsColor: .systemRed)
        static let info = Color(nsColor: .systemBlue)
        static let destructive = Color(nsColor: .systemRed)
        
        // MARK: - Job Status Colors (Enhanced Semantic)
        static let applied = Color(nsColor: .systemBlue)
        static let interview = Color(nsColor: .systemOrange)
        static let offer = Color(nsColor: .systemGreen)
        static let accepted = Color(nsColor: .systemMint)
        static let rejected = Color(nsColor: .systemRed)
        static let withdrawn = Color(nsColor: .systemGray)
        
        // MARK: - Accessibility Colors
        static let highContrastText = Color(nsColor: .labelColor)
        static let highContrastBackground = Color(nsColor: .textBackgroundColor)
        
        // MARK: - Link Colors
        static let link = Color(nsColor: .linkColor)
        static let linkPressed = Color(nsColor: .controlAccentColor)
    }
    
    // MARK: - Typography
    enum Typography {
        static let largeTitle = Font.largeTitle
        static let title = Font.title
        static let title2 = Font.title2
        static let title3 = Font.title3
        static let headline = Font.headline
        static let subheadline = Font.subheadline
        static let body = Font.body
        static let callout = Font.callout
        static let footnote = Font.footnote
        static let caption = Font.caption
        static let caption2 = Font.caption2
        
        // Custom fonts
        static let monospacedBody = Font.system(.body, design: .monospaced)
        static let monospacedCaption = Font.system(.caption, design: .monospaced)
    }
    
    // MARK: - Materials & Visual Effects
    enum Materials {
        // MARK: - Standard Materials
        static let ultraThin = Material.ultraThin
        static let thin = Material.thin
        static let regular = Material.regular
        static let thick = Material.thick
        static let ultraThick = Material.ultraThick
        
        // MARK: - Contextual Materials
        static let sidebar = Material.ultraThin
        static let toolbar = Material.thin
        static let popover = Material.regular
        static let sheet = Material.thick
        static let window = Material.ultraThick
        
        // MARK: - Component Materials
        static let card = Material.regular
        static let panel = Material.thin
        static let overlay = Material.ultraThin
        static let background = Material.ultraThick
    }
    
    // MARK: - Blur Effects
    enum BlurRadius {
        static let subtle: CGFloat = 2
        static let light: CGFloat = 4
        static let medium: CGFloat = 8
        static let heavy: CGFloat = 16
        static let intense: CGFloat = 32
    }
    
    // MARK: - Vibrancy
    enum Vibrancy {
        static let primary = Material.ultraThin
        static let secondary = Material.thin
        static let tertiary = Material.regular
        
        // Component-specific vibrancy
        static let menuBar = Material.ultraThin
        static let statusBar = Material.ultraThin
        static let selection = Material.thin
        static let notification = Material.regular
    }
    
    // MARK: - Spacing
    enum Spacing {
        static let xxxSmall: CGFloat = 2
        static let xxSmall: CGFloat = 4
        static let xSmall: CGFloat = 6
        static let small: CGFloat = 8
        static let medium: CGFloat = 12
        static let large: CGFloat = 16
        static let xLarge: CGFloat = 20
        static let xxLarge: CGFloat = 24
        static let xxxLarge: CGFloat = 32
    }
    
    // MARK: - Corner Radius
    enum CornerRadius {
        static let small: CGFloat = 4
        static let medium: CGFloat = 8
        static let large: CGFloat = 12
        static let xLarge: CGFloat = 16
    }
    
    // MARK: - Animation
    enum Animation {
        static let defaultDuration: Double = 0.25
        static let shortDuration: Double = 0.15
        static let longDuration: Double = 0.35
        
        static let defaultAnimation = SwiftUI.Animation.easeInOut(duration: defaultDuration)
        static let springAnimation = SwiftUI.Animation.spring(response: 0.5, dampingFraction: 0.8)
    }
    
    // MARK: - Shadow
    enum Shadow {
        static let small = ShadowStyle(
            color: Color.black.opacity(0.1),
            radius: 2,
            x: 0,
            y: 1
        )
        
        static let medium = ShadowStyle(
            color: Color.black.opacity(0.15),
            radius: 4,
            x: 0,
            y: 2
        )
        
        static let large = ShadowStyle(
            color: Color.black.opacity(0.2),
            radius: 8,
            x: 0,
            y: 4
        )
    }
}

// MARK: - Shadow Style
struct ShadowStyle {
    let color: Color
    let radius: CGFloat
    let x: CGFloat
    let y: CGFloat
}

// MARK: - View Extensions
extension View {
    // MARK: - Card & Panel Styles
    
    func cardStyle() -> some View {
        self
            .background(Theme.Materials.card, in: RoundedRectangle(cornerRadius: Theme.CornerRadius.medium))
            .overlay(
                RoundedRectangle(cornerRadius: Theme.CornerRadius.medium)
                    .stroke(Theme.Colors.border.opacity(0.3), lineWidth: 0.5)
            )
            .shadow(
                color: Theme.Shadow.small.color,
                radius: Theme.Shadow.small.radius,
                x: Theme.Shadow.small.x,
                y: Theme.Shadow.small.y
            )
    }
    
    func panelStyle() -> some View {
        self
            .background(Theme.Materials.panel, in: RoundedRectangle(cornerRadius: Theme.CornerRadius.large))
            .overlay(
                RoundedRectangle(cornerRadius: Theme.CornerRadius.large)
                    .stroke(Theme.Colors.border.opacity(0.2), lineWidth: 0.5)
            )
    }
    
    func glassMorphismStyle() -> some View {
        self
            .background(Theme.Materials.ultraThin, in: RoundedRectangle(cornerRadius: Theme.CornerRadius.medium))
            .overlay(
                RoundedRectangle(cornerRadius: Theme.CornerRadius.medium)
                    .stroke(.white.opacity(0.2), lineWidth: 1)
            )
            .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 5)
    }
    
    // MARK: - Button Styles
    
    func primaryButtonStyle() -> some View {
        self
            .buttonStyle(.borderedProminent)
            .controlSize(.regular)
            .tint(Theme.Colors.accent)
    }
    
    func secondaryButtonStyle() -> some View {
        self
            .buttonStyle(.bordered)
            .controlSize(.regular)
            .tint(Theme.Colors.accent)
    }
    
    func destructiveButtonStyle() -> some View {
        self
            .buttonStyle(.bordered)
            .controlSize(.regular)
            .tint(Theme.Colors.destructive)
    }
    
    func ghostButtonStyle() -> some View {
        self
            .buttonStyle(.plain)
            .foregroundColor(Theme.Colors.accent)
            .padding(.horizontal, Theme.Spacing.medium)
            .padding(.vertical, Theme.Spacing.small)
            .background(
                RoundedRectangle(cornerRadius: Theme.CornerRadius.small)
                    .fill(Theme.Colors.accent.opacity(0.1))
            )
    }
    
    // MARK: - Surface Styles
    
    func surfaceStyle() -> some View {
        self
            .background(Theme.Colors.surfacePrimary)
            .cornerRadius(Theme.CornerRadius.medium)
    }
    
    func highlightedSurfaceStyle() -> some View {
        self
            .background(Theme.Colors.surfaceHighlight)
            .cornerRadius(Theme.CornerRadius.medium)
    }
    
    func selectedSurfaceStyle() -> some View {
        self
            .background(Theme.Colors.surfaceSelection)
            .cornerRadius(Theme.CornerRadius.medium)
    }
    
    // MARK: - Layout Styles
    
    func sidebarStyle() -> some View {
        self
            .background(Theme.Materials.sidebar, in: Rectangle())
            .overlay(
                Rectangle()
                    .fill(Theme.Colors.border.opacity(0.3))
                    .frame(width: 0.5)
                    .offset(x: 1),
                alignment: .trailing
            )
    }
    
    func toolbarStyle() -> some View {
        self
            .background(Theme.Materials.toolbar, in: Rectangle())
            .overlay(
                Rectangle()
                    .fill(Theme.Colors.border.opacity(0.3))
                    .frame(height: 0.5),
                alignment: .bottom
            )
    }
    
    func statusBarStyle() -> some View {
        self
            .background(Theme.Materials.ultraThin, in: Rectangle())
            .overlay(
                Rectangle()
                    .fill(Theme.Colors.border.opacity(0.2))
                    .frame(height: 0.5),
                alignment: .top
            )
    }
    
    // MARK: - Text Styles
    
    func primaryTextStyle() -> some View {
        self
            .foregroundColor(Theme.Colors.primaryText)
            .font(Theme.Typography.body)
    }
    
    func secondaryTextStyle() -> some View {
        self
            .foregroundColor(Theme.Colors.secondaryText)
            .font(Theme.Typography.callout)
    }
    
    func headlineStyle() -> some View {
        self
            .foregroundColor(Theme.Colors.primaryText)
            .font(Theme.Typography.headline)
            .fontWeight(.medium)
    }
    
    func captionStyle() -> some View {
        self
            .foregroundColor(Theme.Colors.tertiaryText)
            .font(Theme.Typography.caption)
    }
    
    // MARK: - Interactive States
    
    func hoverableStyle() -> some View {
        self
            .overlay(
                Rectangle()
                    .fill(Color.white.opacity(0.05))
                    .cornerRadius(Theme.CornerRadius.small)
                    .opacity(0)
            )
            .scaleEffect(1.0)
            .animation(Theme.Animation.defaultAnimation, value: false)
    }
    
    func selectableStyle(isSelected: Bool) -> some View {
        self
            .background(
                RoundedRectangle(cornerRadius: Theme.CornerRadius.small)
                    .fill(isSelected ? Theme.Colors.surfaceSelection : Color.clear)
            )
            .overlay(
                RoundedRectangle(cornerRadius: Theme.CornerRadius.small)
                    .stroke(isSelected ? Theme.Colors.accent.opacity(0.3) : Color.clear, lineWidth: 1)
            )
    }
    
    // MARK: - Focus States
    
    func focusedStyle(isFocused: Bool) -> some View {
        self
            .overlay(
                RoundedRectangle(cornerRadius: Theme.CornerRadius.small)
                    .stroke(isFocused ? Theme.Colors.keyboardFocusIndicator : Color.clear, lineWidth: 2)
            )
    }
    
    // MARK: - Status Styles
    
    func successStyle() -> some View {
        self
            .foregroundColor(Theme.Colors.success)
            .background(Theme.Colors.success.opacity(0.1))
            .cornerRadius(Theme.CornerRadius.small)
    }
    
    func warningStyle() -> some View {
        self
            .foregroundColor(Theme.Colors.warning)
            .background(Theme.Colors.warning.opacity(0.1))
            .cornerRadius(Theme.CornerRadius.small)
    }
    
    func errorStyle() -> some View {
        self
            .foregroundColor(Theme.Colors.error)
            .background(Theme.Colors.error.opacity(0.1))
            .cornerRadius(Theme.CornerRadius.small)
    }
    
    func infoStyle() -> some View {
        self
            .foregroundColor(Theme.Colors.info)
            .background(Theme.Colors.info.opacity(0.1))
            .cornerRadius(Theme.CornerRadius.small)
    }
}