//
//  PerformanceOptimizerTests.swift
//  CareerJourneyTests
//
//  Ensures PerformanceOptimizer reports realistic metrics.
//

import Testing
import SwiftData
@testable import CareerJourney

struct PerformanceOptimizerTests {

    @Test("Metrics collection produces sane values")
    @MainActor
    func metricsCollection() async throws {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: SwiftDataJobApplication.self, configurations: config)

        let optimizer = PerformanceOptimizer(container: container)

        optimizer.collectPerformanceMetrics()
        let metrics = optimizer.metrics

        #expect(metrics.timestamp != .distantPast, "Metrics timestamp should update")
        #expect(metrics.memoryUsageMB >= 0, "Memory usage should be non-negative")
        #expect(metrics.cpuUsagePercent >= 0, "CPU usage should be non-negative")
        #expect(metrics.cpuUsagePercent <= 400, "CPU usage should be within reasonable bounds")
        #expect(metrics.diskUsagePercent >= 0 && metrics.diskUsagePercent <= 100, "Disk usage percentage should be valid")
    }

    @Test("Database optimization records completion time")
    @MainActor
    func optimizationRecordsTimestamp() async throws {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: SwiftDataJobApplication.self, configurations: config)

        let optimizer = PerformanceOptimizer(container: container)
        await optimizer.optimizeDatabase()

        #expect(optimizer.lastOptimizationDate != nil, "Optimizer should record the completion timestamp")
    }
}
