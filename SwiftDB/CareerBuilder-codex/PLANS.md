# PLANS.md

## Executive Summary
- Build succeeds but the automated test target is broken by removed modules, leaving quality gates unusable (1 blocker).
- Five major defects block key workflows: the Stats/Documents/Notes areas disappear without a selected job, nested navigation containers break SwiftUI expectations, AI parsing still ignores populated fields, the Foundation model pipeline relies on an external API that is unavailable on-device, and document blobs are stored inline without external storage safeguards.
- Three minor gaps (misreported performance metrics, unwired menu shortcuts, and AppIntents build warnings) reduce polish and confidence.
- Modernization opportunities include adopting Swift 6.2 strict concurrency, moving AI features to Apple’s on-device Foundation Models, and refreshing Charts/Table implementations for macOS 26.

## Tech & Build Snapshot
- Schemes: `CareerJourney` (primary macOS app) plus dependency helper `SwiftDraw`.
- Targets: app + `CareerJourneyTests` + `CareerJourneyUITests`; test target fails immediately (`MarkdownUI` module missing).
- Toolchain: Xcode 26 / Swift 6.1 (`SwiftLanguageVersion` not yet set to v6); strict concurrency checking currently at default minimalist level.
- Build warnings: `appintentsmetadataprocessor` reports missing `AppIntents.framework` during metadata extraction.
- Packages: 19 SPM dependencies including Swift Charts, SwiftSoup, SwiftOpenAI, SwiftData utilities.

## Compatibility & Modernization
| Area | Swift 6.1 State | Swift 6.2+ Opportunity | References |
| --- | --- | --- | --- |
| Concurrency safety | Project still relies on Swift 6.1 defaults; strict concurrency checks left at minimal. | Enable Swift 6.2 language mode with complete strict concurrency to surface data-race bugs earlier. | [Adopting strict concurrency in Swift 6 apps](https://developer.apple.com/documentation/swift/adoptingswift6/)
| Generative AI | `FoundationModelService` depends on external OpenAI endpoints; no SystemLanguageModel usage. | Migrate to `SystemLanguageModel` / `LanguageModelSession` for on-device prompting and adapter support. | [Generating content with Foundation Models](https://developer.apple.com/documentation/foundationmodels/generating-content-and-performing-tasks-with-foundation-models/), [SystemLanguageModel](https://developer.apple.com/documentation/foundationmodels/systemlanguagemodel/)
| Analytics UI | Stats view uses legacy Charts patterns without new marks. | Adopt Swift Charts 3D/vectorized marks and guided interactions available in 2025 updates. | [Swift Charts updates](https://developer.apple.com/documentation/updates/swiftcharts/)
| Document management | Documents rendered via custom Lists with manual layouts. | Transition to `Table` with column customization to align with macOS Table improvements. | [SwiftUI Tables](https://developer.apple.com/documentation/swiftui/tables/)

## Findings

### [Testing] Test target references removed modules
- **Severity:** Blocker  
- **Evidence:** `CareerJourneyTests/refactor.swift:21` imports `MarkdownUI` that is no longer a dependency; `CareerJourneyTests/CareerJourneyTests.swift:23` references nonexistent `FoundationModelParser`. Running `xcodebuild test` fails with “Unable to find module dependency: 'MarkdownUI'”.
- **Root Cause:** Legacy regression test files were copied forward without updating dependencies or aligning to the new SwiftData/AI stack.
- **Proposed Solution:** Replace or remove the outdated test sources; rebuild coverage using `Swift Testing` with the current services (JobStore, AppleFoundationModelService). Keep `Package.swift`/project test target dependencies in sync.  
- **Risk/Impact:** Without runnable tests, regressions ship undetected; CI remains red.  
- **Effort:** M  
- **References:** [Swift Testing](https://developer.apple.com/documentation/testing/)

### [UI Navigation] Stats/Documents/Notes vanish when no job is selected
- **Severity:** Major  
- **Evidence:** `CareerJourney/Features/Main/ContentView.swift:362-416` wraps the entire TabView in `if let selectedJob`, so secondary tabs are never reachable in the default empty state (matching user report).  
- **Root Cause:** Tab navigation is coupled to the detail selection instead of the sidebar section.  
- **Proposed Solution:** Promote the TabView outside the job-selection guard; show Stats/Documents/Notes with their own data sources (e.g., aggregated stats, document category lists, note library) even when `selectedJobIDs` is empty; only gate job-specific panels. Align selection state with sidebar sections.  
- **Risk/Impact:** New users cannot discover key features; accessibility announcements also fail because the tab never appears.  
- **Effort:** M  
- **References:** [TN3154: Adopting SwiftUI navigation split view](https://developer.apple.com/documentation/technotes/tn3154-adopting-swiftui-navigation-split-view/)

### [UI Navigation] Nested NavigationSplitView instances cause layout conflicts
- **Severity:** Major  
- **Evidence:** `EnhancedStatsView.swift:23`, `EnhancedDocumentsMainView.swift:31`, and `ConsolidatedNotesView.swift:33` each declare a `NavigationSplitView` even though the root scene already uses `NavigationSplitView`.  
- **Root Cause:** Embedding split views within the detail column violates SwiftUI’s recommended hierarchy and prevents predictable column behavior.  
- **Proposed Solution:** Refactor detail modules to use `NavigationStack` (or simple stacks) within the existing split view column. Keep column widths responsive via `navigationSplitViewColumnWidth` on the outer container.  
- **Risk/Impact:** Column visibility toggles and keyboard focus behave inconsistently; future SwiftUI updates may break nested split views outright.  
- **Effort:** M  
- **References:** [Migrating to new navigation types](https://developer.apple.com/documentation/swiftui/migrating-to-new-navigation-types/)

### [AI Parsing] Auto-apply still ignores populated fields
- **Severity:** Major  
- **Evidence:** `JobViewModel.processPastedJobPostingWithAI()` (CareerJourney/Core/ViewModels/JobViewModel.swift:201-239) only assigns parsed values when corresponding fields are empty, contradicting the documented fix; `SwiftDataJobViewModel` repeats the same guard (SwiftDataJobViewModel.swift:220-262).  
- **Root Cause:** Clipboard/import flows bypass the new `applyParsedData` path, so the old “only if empty” logic persists.  
- **Proposed Solution:** Remove the `isEmpty` guards (or offer a merge strategy) so explicit parse actions always overwrite fields; consolidate parsing into one shared path to avoid drift.  
- **Risk/Impact:** Users still have to clear fields manually, undermining the AI parsing experience and eroding trust.  
- **Effort:** S

### [AI Architecture] FoundationModelService calls external OpenAI endpoints
- **Severity:** Major  
- **Evidence:** `CareerJourney/Core/Services/FoundationModelService.swift:100-184` posts to `https://api.openai.com/v1/chat/completions`; network access is restricted and Apple Intelligence guidance expects `SystemLanguageModel`.  
- **Root Cause:** Legacy remote LLM integration was never migrated to Apple’s on-device Foundation Models.  
- **Proposed Solution:** Replace remote calls with `SystemLanguageModel.default` sessions (with tool-calling or guided generation as needed). Provide availability checks and fallbacks when the on-device model is unavailable.  
- **Risk/Impact:** Feature fails without network access, and app cannot ship on platforms that mandate on-device AI.  
- **Effort:** L  
- **References:** [Generating content with Foundation Models](https://developer.apple.com/documentation/foundationmodels/generating-content-and-performing-tasks-with-foundation-models/), [SystemLanguageModel](https://developer.apple.com/documentation/foundationmodels/systemlanguagemodel/)

### [Data Persistence] Document blobs stored inline without external storage
- **Severity:** Major  
- **Evidence:** `CareerJourney/Core/Models/SwiftDataModels.swift:137-168` persists `fileData: Data?` on `SwiftDataJobDocument` with no `@Attribute(.externalStorage)`; large files inflate the main store.  
- **Root Cause:** SwiftData defaults to inline storage, causing memory spikes and slower migrations for large attachments.  
- **Proposed Solution:** Mark binary properties with `@Attribute(.externalStorage)` or store only URLs and stream files from disk; add migration to move existing data.  
- **Risk/Impact:** Backups/migrations may exceed memory limits; UI stalls when loading big documents.  
- **Effort:** M  
- **References:** [SwiftData Attribute Option externalStorage](https://developer.apple.com/documentation/swiftdata/schema/attribute/option/externalstorage/)

### [Build] AppIntents metadata warnings clutter builds
- **Severity:** Minor  
- **Evidence:** `xcodebuild` `appintentsmetadataprocessor` warnings (“Metadata extraction skipped. No AppIntents.framework dependency found”).  
- **Root Cause:** The build setting `GENERATE_APP_INTENTS_METADATA` is enabled without an AppIntents extension.  
- **Proposed Solution:** Disable metadata generation for the app target or add the required AppIntents capability and framework if shortcuts are planned.  
- **Risk/Impact:** Noise hides meaningful warnings; CI may treat warnings as failures if toggled.  
- **Effort:** S

### [Performance] PerformanceOptimizer reports synthetic metrics
- **Severity:** Minor  
- **Evidence:** `CareerJourney/Core/Services/PerformanceOptimizer.swift:47-70` sets `cpuUsage = Double.random(in: 5...25)`; timer never stops.  
- **Root Cause:** Placeholder instrumentation was never replaced with real counters.  
- **Proposed Solution:** Capture CPU via `host_statistics`/`ProcessInfo`, memory via `task_info`, and stop timers on deinit; gate monitoring behind async tasks with cancellation.  
- **Risk/Impact:** Misleads debugging, can leak timers across scenes.  
- **Effort:** M

### [UX] Menu commands don’t update navigation state
- **Severity:** Minor  
- **Evidence:** `MenuBarCommands.swift:36-64` posts placeholders for “Job Details / Documents / Notes / Statistics” but no handler updates `selectedSection`.  
- **Root Cause:** The new menu was stubbed without wiring to shared state (`KeyboardShortcutManager` or bindings).  
- **Proposed Solution:** Publish a shared `@EnvironmentObject` or `Notification` that ContentView consumes to adjust `selectedSection`; add VoiceOver announcements.  
- **Risk/Impact:** Keyboard-driven navigation feels broken; violates HIG expectations for menu parity.  
- **Effort:** S

## Deprecation Migration Matrix
| Deprecated/Legacy | Modern Replacement | Notes | Min Version | References |
| --- | --- | --- | --- | --- |
| Remote `FoundationModelService` hitting OpenAI | `SystemLanguageModel` / `LanguageModelSession` | Keep prompts on-device, add tool-calling for structured extraction. | macOS 26 | [Generating content with Foundation Models](https://developer.apple.com/documentation/foundationmodels/generating-content-and-performing-tasks-with-foundation-models/), [SystemLanguageModel](https://developer.apple.com/documentation/foundationmodels/systemlanguagemodel/)
| Custom Lists for document management | `Table` with column customization | Gains column hiding, sorting, keyboard navigation. | macOS 13+ | [SwiftUI Tables](https://developer.apple.com/documentation/swiftui/tables/)
| Inline `Data` blobs in SwiftData | `@Attribute(.externalStorage)` / file streaming | Keeps stores small, speeds backup/migration. | macOS 14+ | [SwiftData Attribute Option externalStorage](https://developer.apple.com/documentation/swiftdata/schema/attribute/option/externalstorage/)

## Performance Notes
- Move document binaries to external storage to prevent SwiftData store bloat and reduce migration/backup time.
- Replace random CPU readings in `PerformanceOptimizer` with actual metrics and ensure timers cancel when scenes deallocate.
- Stats dashboards can benefit from Swift Charts vectorized/3D marks for large datasets, reducing manual aggregation while keeping UI smooth ([Swift Charts updates](https://developer.apple.com/documentation/updates/swiftcharts/)).

## Accessibility & HIG Checklist
- Ensure Stats/Documents/Notes tabs remain visible so VoiceOver can announce navigation changes even without a selected job.
- Wire menu commands to actual navigation updates to satisfy macOS menu parity expectations and keyboard accessibility.
- Review nested split views; restructuring into a single `NavigationSplitView` with nested `NavigationStack`s will restore predictable focus and column resizing ([TN3154](https://developer.apple.com/documentation/technotes/tn3154-adopting-swiftui-navigation-split-view/)).

## Test Plan (next phase)
- Migrate to `Swift Testing` suites covering JobStore CRUD, AI parsing pipelines (including overwrite scenarios), and document import/export flows.
- Add UI smoke tests for sidebar/tab navigation to confirm Stats/Documents/Notes display regardless of selection state.
- Introduce regression tests for the on-device Foundation Model pipeline once migrated (prompt → structured data parsing, confidence thresholds).
- Re-enable test targets in CI after removing legacy dependencies, and run `xcodebuild test -scheme CareerJourney` on every PR.
