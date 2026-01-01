@testable import CareerJourney
import XCTest

@MainActor
final class JobFilterManagerTests: XCTestCase {
    func testCacheSkipsRebuildWhenFiltersUnchanged() {
        let manager = JobFilterManager()
        let jobs = sampleJobs()

        let first = manager.filteredJobs(
            from: jobs,
            searchText: "",
            selectedStatus: nil,
            showFavoriteOnly: false,
            sortOption: .dateApplied
        )

        XCTAssertEqual(first.count, jobs.count)
        XCTAssertEqual(manager.rebuildCount, 1, "First filter pass should rebuild cache")

        let second = manager.filteredJobs(
            from: jobs,
            searchText: "",
            selectedStatus: nil,
            showFavoriteOnly: false,
            sortOption: .dateApplied
        )

        XCTAssertEqual(second.count, first.count)
        XCTAssertEqual(manager.rebuildCount, 1, "Cached result should be reused without additional rebuild")

        var updatedJobs = jobs
        updatedJobs[0].notes = "Updated"

        _ = manager.filteredJobs(
            from: updatedJobs,
            searchText: "",
            selectedStatus: nil,
            showFavoriteOnly: false,
            sortOption: .dateApplied
        )

        XCTAssertEqual(manager.rebuildCount, 2, "Data mutation should invalidate cache and trigger rebuild")
    }

    private func sampleJobs() -> [SwiftDataJobApplication] {
        [
            SwiftDataJobApplication(
                companyName: "Example Co",
                jobTitle: "iOS Engineer",
                status: .applied,
                dateOfApplication: Date().addingTimeInterval(-86_400),
                location: "San Francisco, CA",
                notes: "Initial application"
            ),
            SwiftDataJobApplication(
                companyName: "Another Inc",
                jobTitle: "macOS Engineer",
                status: .interview,
                dateOfApplication: Date(),
                location: "Remote",
                notes: "Interview scheduled"
            )
        ]
    }
}
