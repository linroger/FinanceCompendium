//
//  PerformanceOptimizer.swift
//  CareerKit
//
//  Manages performance optimization and monitoring
//

import SwiftUI
import SwiftData
import Foundation
import OSLog
import Combine

struct PerformanceMetrics: Sendable {
    var timestamp: Date
    var memoryUsageMB: Double
    var cpuUsagePercent: Double
    var diskUsagePercent: Double
}

@MainActor
final class PerformanceOptimizer: ObservableObject {
    @Published var isOptimizing = false
    @Published var memoryUsage: Double = 0
    @Published var cpuUsage: Double = 0
    @Published var diskUsage: Double = 0
    @Published private(set) var metrics = PerformanceMetrics(timestamp: .distantPast, memoryUsageMB: 0, cpuUsagePercent: 0, diskUsagePercent: 0)
    @Published private(set) var lastOptimizationDate: Date?

    private let container: ModelContainer
    private let logger = Logger(subsystem: "com.careerkit.performance", category: "Performance")
    private var monitoringTask: Task<Void, Never>?
    private let monitoringInterval: Duration = .seconds(5)

    init(container: ModelContainer) {
        self.container = container
        startMonitoring()
    }

    @MainActor
    deinit {
        stopMonitoring()
    }
    
    private func startMonitoring() {
        stopMonitoring()
        updateMetrics()

        monitoringTask = Task { [weak self] in
            while !Task.isCancelled {
                do {
                    try await Task.sleep(for: self?.monitoringInterval ?? .seconds(5))
                } catch {
                    if Task.isCancelled { break }
                    continue
                }

                guard let strongSelf = self else { break }
                await MainActor.run {
                    strongSelf.updateMetrics()
                }
            }
        }
    }
    
    private func stopMonitoring() {
        monitoringTask?.cancel()
        monitoringTask = nil
    }
    
    private func updateMetrics() {
        // Update memory usage
        var info = mach_task_basic_info()
        var count = mach_msg_type_number_t(MemoryLayout<mach_task_basic_info>.size) / 4

        let result = withUnsafeMutablePointer(to: &info) {
            $0.withMemoryRebound(to: integer_t.self, capacity: 1) {
                task_info(mach_task_self_,
                         task_flavor_t(MACH_TASK_BASIC_INFO),
                         $0,
                         &count)
            }
        }

        if result == KERN_SUCCESS {
            memoryUsage = Double(info.resident_size) / 1024.0 / 1024.0 // Convert to MB
        }

        // Update CPU usage with real data
        cpuUsage = getCPUUsage()

        // Update disk usage
        if let attributes = try? FileManager.default.attributesOfFileSystem(forPath: NSHomeDirectory()),
           let totalSize = attributes[.systemSize] as? NSNumber,
           let freeSize = attributes[.systemFreeSize] as? NSNumber {
            let usedSize = totalSize.doubleValue - freeSize.doubleValue
            diskUsage = (usedSize / totalSize.doubleValue) * 100
        }

        metrics = PerformanceMetrics(
            timestamp: Date(),
            memoryUsageMB: memoryUsage,
            cpuUsagePercent: cpuUsage,
            diskUsagePercent: diskUsage
        )

        let roundedMemory = (memoryUsage * 10).rounded() / 10
        let roundedCPU = (cpuUsage * 10).rounded() / 10
        logger.debug("Performance metrics updated — memory: \(roundedMemory, privacy: .public) MB, cpu: \(roundedCPU, privacy: .public)%")
    }

    private func getCPUUsage() -> Double {
        var threadList: thread_act_array_t?
        var threadCount: mach_msg_type_number_t = 0

        let threadResult = task_threads(mach_task_self_, &threadList, &threadCount)

        guard threadResult == KERN_SUCCESS, let threads = threadList else {
            return 0.0
        }

        var totalCPU: Double = 0.0

        for i in 0..<Int(threadCount) {
            var threadInfo = thread_basic_info()
            var threadInfoCount = mach_msg_type_number_t(THREAD_INFO_MAX)

            let result = withUnsafeMutablePointer(to: &threadInfo) {
                $0.withMemoryRebound(to: integer_t.self, capacity: 1) {
                    thread_info(threads[i], thread_flavor_t(THREAD_BASIC_INFO), $0, &threadInfoCount)
                }
            }

            if result == KERN_SUCCESS {
                if threadInfo.flags & TH_FLAGS_IDLE == 0 {
                    totalCPU += Double(threadInfo.cpu_usage) / Double(TH_USAGE_SCALE) * 100.0
                }
            }
        }

        // Clean up thread list
        let threadListAddress = vm_address_t(UInt(bitPattern: threads))
        let threadListSize = vm_size_t(threadCount) * vm_size_t(MemoryLayout<thread_t>.stride)
        vm_deallocate(mach_task_self_, threadListAddress, threadListSize)

        return totalCPU
    }
    
    func optimizeDatabase() async {
        isOptimizing = true
        
        do {
            // Perform vacuum-like operation
            try container.mainContext.save()
            
            // Clear caches
            URLCache.shared.removeAllCachedResponses()
            
            logger.info("Database optimization completed")
            lastOptimizationDate = Date()
        } catch {
            logger.error("Database optimization failed: \(error.localizedDescription)")
        }
        
        isOptimizing = false
    }
    
    func clearCaches() {
        URLCache.shared.removeAllCachedResponses()
        
        // Clear image caches
        if let cacheURL = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).first {
            try? FileManager.default.removeItem(at: cacheURL.appendingPathComponent("com.careerkit.imagecache"))
        }
        
        logger.info("Caches cleared")
    }

    func collectPerformanceMetrics() {
        updateMetrics()
    }
    
    func performanceSummary() -> String {
        return """
        Memory Usage: \(String(format: "%.1f", memoryUsage)) MB
        CPU Usage: \(String(format: "%.1f", cpuUsage))%
        Disk Usage: \(String(format: "%.1f", diskUsage))%
        """
    }
}

