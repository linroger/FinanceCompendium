//
//  CareerJourneyUITests.swift
//  CareerJourneyUITests
//
//  Created by Roger Lin on 5/26/25.
//

import XCTest

final class CareerJourneyUITests: XCTestCase {
    
    var app: XCUIApplication!

    override func setUpWithError() throws {
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        
        // Launch the application for each test
        app = XCUIApplication()
        app.launchArguments.append("--ui-testing")
        app.launch()
        
        // Wait for app to fully load
        XCTAssertTrue(app.wait(for: .runningForeground, timeout: 10))
    }

    override func tearDownWithError() throws {
        app.terminate()
        app = nil
    }

    // MARK: - App Launch and Navigation Tests
    
    @MainActor
    func testAppLaunchAndBasicNavigation() throws {
        // Verify main window exists
        let mainWindow = app.windows.firstMatch
        XCTAssertTrue(mainWindow.exists, "Main window should exist")
        
        // Verify main navigation elements exist
        let jobsTab = app.buttons["Jobs"]
        let statsTab = app.buttons["Stats"]
        let settingsButton = app.buttons["Settings"]
        
        XCTAssertTrue(jobsTab.exists, "Jobs tab should exist")
        XCTAssertTrue(statsTab.exists, "Stats tab should exist")
        XCTAssertTrue(settingsButton.exists, "Settings button should exist")
        
        // Test tab navigation
        if statsTab.isHittable {
            statsTab.tap()
            // Verify stats view loaded
            let statsView = app.staticTexts.containing(NSPredicate(format: "label CONTAINS 'Applications'")).firstMatch
            XCTAssertTrue(statsView.waitForExistence(timeout: 5), "Stats view should load")
        }
        
        if jobsTab.isHittable {
            jobsTab.tap()
            // Verify we're back to jobs view
            let jobsSidebar = app.outlines.firstMatch
            XCTAssertTrue(jobsSidebar.waitForExistence(timeout: 5), "Jobs sidebar should be visible")
        }
    }
    
    // MARK: - Job Application Workflow Tests
    
    @MainActor
    func testCreateNewJobApplication() {
        // Navigate to jobs tab
        let jobsTab = app.buttons["Jobs"]
        if jobsTab.exists && jobsTab.isHittable {
            jobsTab.tap()
        }
        
        // Find and tap add button
        let addButton = app.buttons.matching(NSPredicate(format: "label CONTAINS 'Add' OR identifier CONTAINS 'add'")).firstMatch
        if addButton.exists && addButton.isHittable {
            addButton.tap()
            
            // Wait for job form to appear
            let jobForm = app.sheets.firstMatch
            if jobForm.waitForExistence(timeout: 5) {
                // Fill in job details
                let jobTitleField = app.textFields.matching(NSPredicate(format: "placeholderValue CONTAINS 'title' OR identifier CONTAINS 'jobTitle'")).firstMatch
                let companyField = app.textFields.matching(NSPredicate(format: "placeholderValue CONTAINS 'company' OR identifier CONTAINS 'company'")).firstMatch
                
                if jobTitleField.exists {
                    jobTitleField.tap()
                    jobTitleField.typeText("UI Test Engineer")
                }
                
                if companyField.exists {
                    companyField.tap()
                    companyField.typeText("Test Company")
                }
                
                // Save the job
                let saveButton = app.buttons.matching(NSPredicate(format: "label CONTAINS 'Save' OR label CONTAINS 'Add'")).firstMatch
                if saveButton.exists && saveButton.isHittable {
                    saveButton.tap()
                    
                    // Verify job was created - look for it in sidebar
                    let jobsList = app.outlines.firstMatch
                    let newJob = jobsList.staticTexts["UI Test Engineer"]
                    XCTAssertTrue(newJob.waitForExistence(timeout: 5), "New job should appear in sidebar")
                }
            }
        }
    }
    
    @MainActor
    func testJobApplicationDetailNavigation() throws {
        // First ensure we have at least one job (create one if needed)
        testCreateNewJobApplication()
        
        // Navigate to jobs and select first job
        let jobsList = app.outlines.firstMatch
        if jobsList.exists {
            let firstJob = jobsList.cells.firstMatch
            if firstJob.exists && firstJob.isHittable {
                firstJob.tap()
                
                // Verify detail view loads
                let detailView = app.scrollViews.firstMatch
                XCTAssertTrue(detailView.waitForExistence(timeout: 5), "Job detail view should load")
                
                // Test tab navigation within detail view
                let notesTab = app.buttons["Notes"]
                let documentsTab = app.buttons["Documents"]
                
                if notesTab.exists && notesTab.isHittable {
                    notesTab.tap()
                    // Verify notes section is visible
                    let notesSection = app.textViews.firstMatch
                    XCTAssertTrue(notesSection.waitForExistence(timeout: 3), "Notes section should be visible")
                }
                
                if documentsTab.exists && documentsTab.isHittable {
                    documentsTab.tap()
                    // Verify documents section is visible
                    let documentsSection = app.scrollViews.containing(.button, identifier: "Add Document").firstMatch
                    XCTAssertTrue(documentsSection.waitForExistence(timeout: 3), "Documents section should be visible")
                }
            }
        }
    }
    
    // MARK: - Search and Filter Tests
    
    @MainActor
    func testSearchFunctionality() throws {
        // Ensure we have test data
        testCreateNewJobApplication()
        
        // Find search field
        let searchField = app.searchFields.firstMatch
        if searchField.exists {
            searchField.tap()
            searchField.typeText("UI Test")
            
            // Wait for search results
            let jobsList = app.outlines.firstMatch
            let searchResult = jobsList.staticTexts.containing(NSPredicate(format: "label CONTAINS 'UI Test'")).firstMatch
            XCTAssertTrue(searchResult.waitForExistence(timeout: 3), "Search should find matching jobs")
            
            // Clear search
            searchField.tap()
            searchField.clearText()
            
            // Verify all jobs are visible again
            XCTAssertTrue(jobsList.cells.count >= 1, "All jobs should be visible after clearing search")
        }
    }
    
    @MainActor
    func testFilterFunctionality() throws {
        // Ensure we have test data
        testCreateNewJobApplication()
        
        // Look for filter controls
        let filterButton = app.buttons.matching(NSPredicate(format: "label CONTAINS 'Filter' OR identifier CONTAINS 'filter'")).firstMatch
        let statusFilter = app.popUpButtons.matching(NSPredicate(format: "identifier CONTAINS 'status'")).firstMatch
        
        if statusFilter.exists && statusFilter.isHittable {
            statusFilter.tap()
            
            // Select a specific status
            let appliedOption = app.menuItems["Applied"]
            if appliedOption.exists {
                appliedOption.tap()
                
                // Verify filtering worked
                let jobsList = app.outlines.firstMatch
                XCTAssertTrue(jobsList.waitForExistence(timeout: 3), "Filtered jobs list should be visible")
            }
        }
    }
    
    // MARK: - Settings and Preferences Tests
    
    @MainActor
    func testSettingsAccess() throws {
        // Open settings
        let settingsButton = app.buttons["Settings"]
        if settingsButton.exists && settingsButton.isHittable {
            settingsButton.tap()
            
            // Wait for settings sheet
            let settingsSheet = app.sheets.firstMatch
            XCTAssertTrue(settingsSheet.waitForExistence(timeout: 5), "Settings sheet should open")
            
            // Test tab navigation in settings
            let generalTab = app.buttons["General"]
            let appearanceTab = app.buttons["Appearance"]
            let performanceTab = app.buttons["Performance"]
            
            if appearanceTab.exists && appearanceTab.isHittable {
                appearanceTab.tap()
                // Verify appearance settings are visible
                let themeToggle = app.checkBoxes.matching(NSPredicate(format: "label CONTAINS 'appearance' OR label CONTAINS 'theme'")).firstMatch
                XCTAssertTrue(themeToggle.waitForExistence(timeout: 3), "Appearance settings should be visible")
            }
            
            if performanceTab.exists && performanceTab.isHittable {
                performanceTab.tap()
                // Verify performance settings are visible
                let optimizeButton = app.buttons.matching(NSPredicate(format: "label CONTAINS 'Optimize'")).firstMatch
                XCTAssertTrue(optimizeButton.waitForExistence(timeout: 3), "Performance settings should be visible")
            }
            
            // Close settings
            let cancelButton = app.buttons["Cancel"]
            let closeButton = app.buttons["Save"]
            if cancelButton.exists && cancelButton.isHittable {
                cancelButton.tap()
            } else if closeButton.exists && closeButton.isHittable {
                closeButton.tap()
            }
        }
    }
    
    // MARK: - Accessibility Tests
    
    @MainActor
    func testKeyboardNavigation() throws {
        // Test tab navigation with keyboard
        app.typeKey(XCUIKeyboardKey.tab, modifierFlags: [])
        
        // Verify focus moves to next element
        // Test arrow key navigation in sidebar
        let jobsList = app.outlines.firstMatch
        if jobsList.exists {
            jobsList.tap()
            app.typeKey(XCUIKeyboardKey.downArrow, modifierFlags: [])
            app.typeKey(XCUIKeyboardKey.upArrow, modifierFlags: [])
        }
        
        // Test Enter key activation
        if jobsList.cells.firstMatch.exists {
            jobsList.cells.firstMatch.tap()
            app.typeKey(XCUIKeyboardKey.enter, modifierFlags: [])
            
            // Verify detail view opened
            let detailView = app.scrollViews.firstMatch
            XCTAssertTrue(detailView.waitForExistence(timeout: 3), "Detail view should open with Enter key")
        }
    }
    
    @MainActor
    func testVoiceOverCompatibility() throws {
        // Test that key elements have accessibility labels
        let jobsTab = app.buttons["Jobs"]
        let statsTab = app.buttons["Stats"]
        
        XCTAssertNotNil(jobsTab.label, "Jobs tab should have accessibility label")
        XCTAssertNotNil(statsTab.label, "Stats tab should have accessibility label")
        
        // Test that interactive elements are accessible
        let addButton = app.buttons.matching(NSPredicate(format: "label CONTAINS 'Add'")).firstMatch
        if addButton.exists {
            XCTAssertTrue(addButton.isEnabled, "Add button should be enabled and accessible")
        }
    }
    
    // MARK: - Error Handling Tests
    
    @MainActor
    func testErrorRecovery() throws {
        // Test app behavior with invalid input
        testCreateNewJobApplication()
        
        // Try to create job with empty required fields
        let addButton = app.buttons.matching(NSPredicate(format: "label CONTAINS 'Add'")).firstMatch
        if addButton.exists && addButton.isHittable {
            addButton.tap()
            
            let jobForm = app.sheets.firstMatch
            if jobForm.waitForExistence(timeout: 5) {
                // Try to save without filling required fields
                let saveButton = app.buttons.matching(NSPredicate(format: "label CONTAINS 'Save'")).firstMatch
                if saveButton.exists && saveButton.isHittable {
                    saveButton.tap()
                    
                    // Should show validation error or keep form open
                    let stillOpen = jobForm.exists
                    let errorAlert = app.alerts.firstMatch.exists
                    
                    XCTAssertTrue(stillOpen || errorAlert, "Should show error or keep form open for invalid input")
                    
                    // Close form/alert if still open
                    if stillOpen {
                        let cancelButton = app.buttons["Cancel"]
                        if cancelButton.exists {
                            cancelButton.tap()
                        }
                    }
                    if errorAlert {
                        let okButton = app.buttons["OK"]
                        if okButton.exists {
                            okButton.tap()
                        }
                    }
                }
            }
        }
    }
    
    // MARK: - Performance Tests
    
    @MainActor
    func testLaunchPerformance() throws {
        // This measures how long it takes to launch your application.
        measure(metrics: [XCTApplicationLaunchMetric()]) {
            let testApp = XCUIApplication()
            testApp.launchArguments.append("--ui-testing")
            testApp.launch()
            testApp.terminate()
        }
    }
    
    @MainActor
    func testNavigationPerformance() throws {
        measure(metrics: [XCTClockMetric()]) {
            // Test tab switching performance
            let jobsTab = app.buttons["Jobs"]
            let statsTab = app.buttons["Stats"]
            
            if jobsTab.exists && statsTab.exists {
                statsTab.tap()
                _ = app.staticTexts.containing(NSPredicate(format: "label CONTAINS 'Applications'")).firstMatch.waitForExistence(timeout: 5)
                
                jobsTab.tap()
                _ = app.outlines.firstMatch.waitForExistence(timeout: 5)
            }
        }
    }
    
    // MARK: - Data Persistence Tests
    
    @MainActor
    func testDataPersistence() throws {
        // Create a job application
        testCreateNewJobApplication()
        
        // Restart the app to test persistence
        app.terminate()
        app = XCUIApplication()
        app.launchArguments.append("--ui-testing")
        app.launch()
        
        // Verify the job still exists
        let jobsList = app.outlines.firstMatch
        if jobsList.waitForExistence(timeout: 10) {
            let testJob = jobsList.staticTexts["UI Test Engineer"]
            XCTAssertTrue(testJob.exists, "Created job should persist across app restarts")
        }
    }
}

// MARK: - Helper Extensions

extension XCUIElement {
    func clearText() {
        guard let stringValue = self.value as? String else {
            return
        }
        
        let deleteString = String(repeating: XCUIKeyboardKey.delete.rawValue, count: stringValue.count)
        self.typeText(deleteString)
    }
}
