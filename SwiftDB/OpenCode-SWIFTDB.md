# macOS App Development Insights from Apple Sample Code Analysis

## Architecture Patterns

### App Entry Point with TipKit Integration
```swift
@main
struct TipKitExamples: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }

    init() {
        do {
            try setupTips()
        } catch {
            print("Error initializing tips: \(error)")
        }
    }

    private func setupTips() throws {
        // Production: Clean configuration
        try Tips.configure()

        // Development: Testing overrides (remove for production)
        // Tips.showAllTipsForTesting()
        // try Tips.resetDatastore()
    }
}
```
**Reference**: `tipkit-highlightingappfeatureswithtipkit/TipKitExamples.swift`

### Navigation with State Management
```swift
struct ContentView: View {
    @Parameter  // App-level state coordination
    static var isLoggedIn: Bool = false

    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Inline tip view") { InlineView() }
                NavigationLink("Popover tip view") { PopoverView() }
                NavigationLink("Parameter rules") { ParameterView() }
                NavigationLink("Event rules") { EventView() }
                NavigationLink("Combined rules") { ComboView() }
            }
            .navigationTitle("TipKit Examples")
        }
    }
}
```
**Reference**: `tipkit-highlightingappfeatureswithtipkit/TipKitExamples/ContentView.swift`

## TipKit Framework Patterns

### Tip Definition with Complex Rules
```swift
struct FavoritePlantTip: Tip {
    struct FavoritePlants: Codable, Sendable {
        var plants: Set<String> = []
        var arrayValue: [String] { Array(plants) }
        mutating func setPlants(_ newValue: [String]) {
            plants = Set(newValue)
        }
    }

    @Parameter(.transient)
    static var favoritePlants: FavoritePlants = FavoritePlants(plants: ["Sunflower", "Cactus"])

    var title: Text { Text("Explore Favorite Plants") }
    var message: Text? { Text("Discover your favorite plants and flowers.") }
    var image: Image? { Image(systemName: "leaf.fill") }

    var rules: [Rule] {
        #Rule(FavoritePlantTip.$favoritePlants) { $0.plants.count >= 3 }
        #Rule(FavoritePlantTip.$favoritePlants) { $0.plants.contains("Rose") }
    }
}
```
**Reference**: `tipkit-highlightingappfeatureswithtipkit/TipKitExamples/Examples/Parameter rules/FavoritePlantsView.swift`

### Event-Based User Interaction Tracking
```swift
struct FoodEventTip: Tip {
    struct Item: Codable, Sendable {
        var name: String
        var isFavorite: Bool
    }

    static let viewedSpecificFood: Tips.Event<Item> = Tips.Event(id: "viewed-specific-food")
    static let viewedDetailView = Tips.Event(id: "FoodDetailViewDidOpen")

    var rules: [Rule] {
        #Rule(FoodEventTip.viewedDetailView) { $0.donations.count >= 1 }
        #Rule(FoodEventTip.viewedSpecificFood) {
            $0.donations.smallestSubset(groupedBy: \.name).count > 1
        }
        #Rule(FoodEventTip.viewedSpecificFood) {
            $0.donations.donatedWithin(.hour).filter({ $0.isFavorite == true }).count > 4
        }
    }
}
```
**Reference**: `tipkit-highlightingappfeatureswithtipkit/TipKitExamples/Examples/Event rules/FoodDetailView.swift`

## SwiftUI View Composition Patterns

### Inline Tip Integration (Preferred)
```swift
struct InlineView: View {
    let inlineTip = InlineTip()

    var body: some View {
        VStack(spacing: 20) {
            Text("A TipView embeds itself directly in the view.")

            // Inline tip - doesn't obscure UI
            TipView(inlineTip, arrowEdge: .bottom)

            Button {
                // Invalidate when user performs action
                inlineTip.invalidate(reason: .actionPerformed)
            } label: {
                Label("Favorite", systemImage: "star")
            }

            Text("Dismiss by tapping close button or using the feature.")
            Spacer()
        }
        .padding()
        .navigationTitle("Inline tip view")
    }
}
```
**Reference**: `tipkit-highlightingappfeatureswithtipkit/TipKitExamples/Examples/Inline tip/InlineView.swift`

### Popover Tip for Complex Layouts
```swift
struct PopoverView: View {
    let popoverTip = PopoverTip()

    var body: some View {
        VStack(spacing: 20) {
            Text("Popover views display on top of UI elements.")

            Image(systemName: "wand.and.stars")
                .imageScale(.large)
                .popoverTip(popoverTip)  // Obscures underlying UI
                .onTapGesture {
                    popoverTip.invalidate(reason: .actionPerformed)
                }

            Text("Use when layout adjustment is undesirable.")
            Spacer()
        }
        .padding()
        .navigationTitle("Popover tip view")
    }
}
```
**Reference**: `tipkit-highlightingappfeatureswithtipkit/TipKitExamples/Examples/Popover tip/PopoverView.swift`

### Action Buttons for User Guidance
```swift
struct PasswordResetTip: Tip {
    var title: Text { Text("Need Help?") }
    var message: Text? { Text("Do you need help logging in to your account?") }
    var image: Image? { Image(systemName: "lock.shield") }

    var actions: [Action] {
        Action(id: "reset-password", title: "Reset Password")
        Action(id: "faq", title: "View our FAQ")
    }
}

struct PasswordResetView: View {
    @Environment(\.openURL) var openURL
    let passwordResetTip = PasswordResetTip()

    var body: some View {
        VStack(spacing: 20) {
            TipView(passwordResetTip, arrowEdge: .bottom) { action in
                if action.id == "reset-password",
                   let url = URL(string: "https://iforgot.apple.com") {
                    openURL(url) { accepted in
                        print(accepted ? "Success Reset" : "Failure")
                    }
                }
                // Handle other actions...
            }
            Button("Login") { /* login action */ }
            Spacer()
        }
        .padding()
    }
}
```
**Reference**: `tipkit-highlightingappfeatureswithtipkit/TipKitExamples/Examples/Tip actions/PasswordResetView.swift`

## Advanced Rule Composition

### Parameter + Event Combination (Logical AND)
```swift
struct ComboTip: Tip {
    @Parameter
    static var isLoggedIn: Bool = false

    static let enteredView = Event(id: "enteredView")

    var title: Text { Text("Save as a Favorite") }
    var message: Text? { Text("Your favorite backyards always appear at the top.") }

    // All rules must be true (AND logic)
    var rules: [Rule] {
        #Rule(Self.$isLoggedIn) { $0 == true }
        #Rule(Self.enteredView) { $0.donations.count >= 3 }
    }
}

struct ComboView: View {
    let comboTip = ComboTip()

    var body: some View {
        VStack(spacing: 20) {
            TipView(comboTip, arrowEdge: .bottom)
            Button(ContentView.isLoggedIn ? "Logout" : "Login") {
                ContentView.isLoggedIn.toggle()
            }
            Text("Entered view: \(ComboTip.enteredView.donations.count + 1) times")
        }
        .onAppear {
            ComboTip.enteredView.sendDonation()
        }
        .padding()
    }
}
```
**Reference**: `tipkit-highlightingappfeatureswithtipkit/TipKitExamples/Examples/Combo rules/ComboView.swift`

## State Management Patterns

### Event Donation with Associated Data
```swift
struct FoodItem: View {
    @Binding var food: FoodEventTip.Item

    var body: some View {
        Button {
            food.isFavorite.toggle()
            // Donate event with associated data
            FoodEventTip.viewedSpecificFood.sendDonation(food)
        } label: {
            VStack {
                Text(food.name)
                Image(systemName: food.isFavorite ? "heart.fill" : "heart")
                    .foregroundColor(food.isFavorite ? .red : .primary)
            }
        }
    }
}
```
**Reference**: `tipkit-highlightingappfeatureswithtipkit/TipKitExamples/Examples/Event rules/FoodDetailView.swift`

### Simple Event Donation
```swift
struct EventRuleTip: Tip {
    static let didTriggerControlEvent = Event(id: "didTriggerControlEvent")

    var rules: [Rule] {
        #Rule(Self.didTriggerControlEvent) { $0.donations.count >= 3 }
    }
}

struct EventRuleView: View {
    let eventRuleTip = EventRuleTip()

    var body: some View {
        VStack(spacing: 20) {
            TipView(eventRuleTip)
            Button(action: {
                // Donate simple event
                EventRuleTip.didTriggerControlEvent.sendDonation()
            }, label: {
                Label("Tap three times", systemImage: "lock")
            })
            Text("Tap the button three times to make the tip appear.")
            Spacer()
        }
        .padding()
    }
}
```
**Reference**: `tipkit-highlightingappfeatureswithtipkit/TipKitExamples/Examples/Event rules/EventRuleView.swift`

## Display Control Patterns

### Display Frequency Options
```swift
struct OptionTip: Tip {
    var title: Text { Text("Edit Actions in One Place") }
    var message: Text? { Text("Find actions such as Copy, Hide, Edit, and Paste under the ellipsis menu.") }
    var image: Image? { Image(systemName: "ellipsis.circle") }

    var options: [Option] {
        MaxDisplayCount(1)  // Show only once per app installation
    }
}

struct OptionView: View {
    let optionTip = OptionTip()

    var body: some View {
        VStack(spacing: 20) {
            Text("Use options to control tip frequency.")
            TipView(optionTip, arrowEdge: .bottom)
            Image(systemName: "ellipsis.circle").imageScale(.large)
            Text("This tip appears only once.")
            Spacer()
        }
        .padding()
    }
}
```
**Reference**: `tipkit-highlightingappfeatureswithtipkit/TipKitExamples/Examples/Tip options/OptionView.swift`

## Testing & Development Patterns

### Development Testing Configuration
```swift
private func setupTipsForTesting() throws {
    // Show all tips for UI testing
    Tips.showAllTipsForTesting()

    // Or show specific tips only
    // Tips.showTipsForTesting([tip1, tip2, tip3])

    // Or hide all tips
    // Tips.hideAllTipsForTesting()

    // Reset tip state between test runs
    try Tips.resetDatastore()

    // Configure TipKit
    try Tips.configure()
}
```
**Reference**: `tipkit-highlightingappfeatureswithtipkit/TipKitExamples/TipKitExamples.swift`

## Best Practices Summary

### When to Use Each Tip Style
- **Inline Tips (TipView)**: Preferred for most cases - doesn't obscure UI, integrates with layout
- **Popover Tips (.popoverTip)**: When layout adjustment is undesirable or UI underneath isn't interactive
- **Action Buttons**: When tips need to direct users to specific actions or external resources

### Rule Composition Strategy
- **Parameter Rules**: For app state that persists across sessions
- **Transient Parameters**: For session-only state that resets on app launch
- **Event Rules**: For tracking specific user interactions and behaviors
- **Combined Rules**: AND logic - all conditions must be met

### Performance Considerations
- Tip evaluation is efficient and only occurs when dependencies change
- Event donations are lightweight operations
- Use transient parameters to prevent persistent state bloat
- Reset datastore during development to test tip reappearance

### User Experience Guidelines
- Show tips at relevant moments when users can immediately benefit
- Use MaxDisplayCount to prevent tip fatigue
- Always provide clear invalidation paths
- Test tip appearance with various user paths

### Error Handling
- TipKit initialization should not crash the app if it fails
- Log errors but continue execution - tips are not critical features
- Use graceful fallbacks when TipKit is unavailable

These patterns from the TipKit sample demonstrate Apple's systematic approach to user onboarding, ensuring features are discoverable without being intrusive, while maintaining clean, maintainable code architecture.