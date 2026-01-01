//
//  EnhancedStatsView.swift
//  CareerKit
//
//  Enhanced statistics view with modern Swift Charts and native macOS styling
//

import SwiftUI
import Charts
import MapKit
import CoreLocation
import Foundation
import Accessibility // For AXChartDescriptorRepresentable
import PDFKit // For PDF export
import UniformTypeIdentifiers
import OSLog

struct EnhancedStatsView: View {
    @EnvironmentObject var jobStore: JobStore
    @EnvironmentObject private var keyboardManager: KeyboardShortcutManager
    
    // View state
    @State private var selectedTimeRange = TimeRange.allTime
    @State private var selectedChartType = ChartType.overview
    @State private var columnVisibility: NavigationSplitViewVisibility = .all
    
    // Chart hover states
    @State private var hoveredMonth: String?
    @State private var hoveredValue: Double?
    @State private var hoveredPosition: CGPoint?
    @State private var selectedDataPoint: (date: Date, count: Int)?
    @State private var chartSelection: String?
    @State private var showAnnotations = true
    @State private var animateCharts = true
    
    // Year selection
    @State private var selectedYear = Calendar.current.component(.year, from: Date())
    @State private var availableYears: [Int] = []
    
    // GitHub-style chart state
    @State private var hoveredContribution: Contribution? = nil
    @State private var contributionData: [Contribution] = []
    
    var body: some View {
        HStack(spacing: 0) {
            // Sidebar
            StatsSidebar(
                selectedTimeRange: $selectedTimeRange,
                selectedChartType: $selectedChartType
            )
            .frame(minWidth: 200, idealWidth: 250, maxWidth: 300)
            .background(Color(nsColor: .controlBackgroundColor))

            Divider()

            // Main content with NavigationStack
            NavigationStack {
                StatsDetailView(
                    timeRange: selectedTimeRange,
                    chartType: selectedChartType,
                    selectedYear: $selectedYear,
                    availableYears: availableYears,
                    contributionData: contributionData,
                    hoveredContribution: $hoveredContribution
                )
                .navigationTitle("Analytics")
                .onChange(of: selectedYear) { _, _ in
                    updateContributionData()
                }
            }
        }
        .onAppear {
            updateAvailableYears()
        }
        .toolbar {
            ToolbarItemGroup(placement: .primaryAction) {
                // Year picker
                if selectedChartType.requiresYearSelection {
                    Picker("Year", selection: $selectedYear) {
                        ForEach(availableYears, id: \.self) { year in
                            Text(year == -1 ? "Last 12 Months" : String(year))
                                .tag(year)
                        }
                    }
                    .pickerStyle(.menu)
                    .help("Select year")
                }
                
                // Export menu
                Menu {
                    Button("Export as PDF") { exportToPDF() }
                    Button("Export as CSV") { exportToCSV() }
                    Divider()
                    Button("Create Stat Card") { createStatCard() }
                    Divider()
                    Button("Print...") { printStats() }
                } label: {
                    Label("Export", systemImage: "square.and.arrow.up")
                }
                .help("Export Options")
            }
        }
    }
    
    // MARK: - Helper Functions
    
    private func updateAvailableYears() {
        let years = Set(jobStore.jobApplications.map { 
            Calendar.current.component(.year, from: $0.dateOfApplication) 
        })
        var sortedYears = Array(years).sorted(by: >)
        sortedYears.insert(-1, at: 0) // -1 represents the most recent 12 months
        availableYears = sortedYears
        
        if !availableYears.contains(selectedYear) && !availableYears.isEmpty {
            selectedYear = availableYears.first!
        }
        updateContributionData()
    }
    
    private func updateContributionData() {
        contributionData = buildContributionData(for: selectedYear)
    }
    
    private func buildContributionData(for year: Int) -> [Contribution] {
        let calendar = Calendar.current
        let currentDate = Date()
        
        // Determine date range
        let startDate: Date
        let endDate: Date
        
        if year == -1 {
            // Recent 12 months
            endDate = calendar.startOfDay(for: currentDate)
            startDate = calendar.date(byAdding: .month, value: -12, to: endDate) ?? endDate
        } else {
            // Specific year
            var components = DateComponents()
            components.year = year
            components.month = 1
            components.day = 1
            startDate = calendar.date(from: components) ?? currentDate
            
            components.month = 12
            components.day = 31
            endDate = calendar.date(from: components) ?? currentDate
        }
        
        // Create contribution map with all dates initialized to 0
        var contributionMap: [Date: Int] = [:]
        var iterationDate = startDate
        while iterationDate <= endDate {
            contributionMap[iterationDate] = 0
            iterationDate = calendar.date(byAdding: .day, value: 1, to: iterationDate) ?? iterationDate
        }
        
        // Count applications for each date
        for job in jobStore.jobApplications {
            let jobDate = calendar.startOfDay(for: job.dateOfApplication)
            if jobDate >= startDate && jobDate <= endDate {
                contributionMap[jobDate, default: 0] += 1
            }
        }
        
        // Convert to array and sort by date
        return contributionMap.map { Contribution(date: $0.key, count: $0.value) }
            .sorted { $0.date < $1.date }
    }
    
    private func filterJobsByTimeRange(_ jobs: [SwiftDataJobApplication]) -> [SwiftDataJobApplication] {
        guard let days = selectedTimeRange.days else { return jobs }
        let cutoffDate = Calendar.current.date(byAdding: .day, value: -days, to: Date()) ?? Date()
        return jobs.filter { $0.dateOfApplication >= cutoffDate }
    }
    
    private func exportToPDF() {
        Task {
            await exportChartsToPDF()
        }
    }
    
    @MainActor
    private func exportChartsToPDF() async {
        let savePanel = NSSavePanel()
        savePanel.allowedContentTypes = [.pdf]
        savePanel.nameFieldStringValue = "CareerKit_Analytics_\(Date().formatted(date: .numeric, time: .omitted)).pdf"
        
        guard savePanel.runModal() == .OK,
              let url = savePanel.url else { return }
        
        // Create PDF document
        let pdfDocument = PDFDocument()
        
        // Render current view to PDF
        let hostingController = NSHostingController(rootView: StatsDetailView(
            timeRange: selectedTimeRange,
            chartType: selectedChartType,
            selectedYear: .constant(selectedYear),
            availableYears: availableYears,
            contributionData: contributionData,
            hoveredContribution: .constant(nil)
        ).environmentObject(jobStore))
        
        let statsView = hostingController.view
        
        let pdfPage = PDFPage()
        let bounds = CGRect(origin: .zero, size: CGSize(width: 612, height: 792))
        
        if let context = CGContext(data: nil, width: Int(bounds.width), height: Int(bounds.height), bitsPerComponent: 8, bytesPerRow: 0, space: CGColorSpaceCreateDeviceRGB(), bitmapInfo: CGImageAlphaInfo.premultipliedLast.rawValue) {
            
            NSGraphicsContext.saveGraphicsState()
            NSGraphicsContext.current = NSGraphicsContext(cgContext: context, flipped: false)
            
            statsView.draw(bounds)
            
            NSGraphicsContext.restoreGraphicsState()
            
            if context.makeImage() != nil {
                pdfPage.setBounds(bounds, for: .mediaBox)
                // Note: Direct drawing to PDF page would need custom implementation
            }
        }
        
        if pdfDocument.pageCount == 0 {
            pdfDocument.insert(pdfPage, at: 0)
        }
        
        pdfDocument.write(to: url)
    }
    
    private func exportToCSV() {
        let savePanel = NSSavePanel()
        savePanel.allowedContentTypes = [.commaSeparatedText]
        savePanel.nameFieldStringValue = "CareerKit_Analytics_\(Date().formatted(.dateTime.day().month().year())).csv"
        
        guard savePanel.runModal() == .OK,
              let url = savePanel.url else { return }
        
        let filteredJobs = filterJobsByTimeRange(jobStore.filteredJobs)
        var csvContent = "Date,Company,Job Title,Status,Location,Salary,Job Type\n"
        
        for job in filteredJobs {
            let row = [
                job.dateOfApplication.formatted(.dateTime.day().month().year()),
                job.companyName.replacingOccurrences(of: ",", with: ";"),
                job.jobTitle.replacingOccurrences(of: ",", with: ";"),
                job.status.rawValue,
                job.location.replacingOccurrences(of: ",", with: ";"),
                job.salaryString ?? "N/A",
                job.jobType.rawValue
            ].joined(separator: ",")
            csvContent += row + "\n"
        }
        
        do {
            try csvContent.write(to: url, atomically: true, encoding: .utf8)
        } catch {
            Logger.data.error("Failed to export CSV: \(error)")
        }
    }
    
    private func createStatCard() {
        let filteredJobs = filterJobsByTimeRange(jobStore.filteredJobs)
        let totalApplications = filteredJobs.count
        let offers = filteredJobs.filter { $0.status == .offer }.count
        let interviews = filteredJobs.filter { $0.status == .interviewing || $0.status == .offer }.count
        let rejected = filteredJobs.filter { $0.status == .rejected }.count
        let successRate = totalApplications > 0 ? Double(offers) / Double(totalApplications) * 100 : 0

        let statText = """
        📊 CareerKit Statistics
        ━━━━━━━━━━━━━━━━━━━━━━━
        Period: \(selectedTimeRange.label)

        📝 Total Applications: \(totalApplications)
        🎉 Offers: \(offers)
        💼 Interviews: \(interviews)
        ❌ Rejected: \(rejected)
        📈 Success Rate: \(String(format: "%.1f%%", successRate))

        Generated by CareerKit
        \(Date().formatted(.dateTime.day().month().year()))
        """

        let savePanel = NSSavePanel()
        savePanel.allowedContentTypes = [.plainText, .png]
        savePanel.nameFieldStringValue = "CareerKit_Stats_\(Date().formatted(.dateTime.day().month().year())).txt"

        if savePanel.runModal() == .OK, let url = savePanel.url {
            do {
                try statText.write(to: url, atomically: true, encoding: .utf8)
            } catch {
                Logger.data.error("Failed to save stat card: \(error)")
            }
        }
    }

    private func printStats() {
        let filteredJobs = filterJobsByTimeRange(jobStore.filteredJobs)
        let totalApplications = filteredJobs.count
        let offers = filteredJobs.filter { $0.status == .offer }.count
        let interviews = filteredJobs.filter { $0.status == .interviewing || $0.status == .offer }.count
        let rejected = filteredJobs.filter { $0.status == .rejected }.count
        let pending = filteredJobs.filter { $0.status == .applied || $0.status == .interviewing }.count
        let successRate = totalApplications > 0 ? Double(offers) / Double(totalApplications) * 100 : 0

        let printContent = """
        CareerKit Analytics Report
        ==========================

        Period: \(selectedTimeRange.label)
        Generated: \(Date().formatted(.dateTime))

        Summary Statistics
        ------------------
        Total Applications: \(totalApplications)
        Offers Received: \(offers)
        Interview Stage: \(interviews)
        Rejected: \(rejected)
        Pending: \(pending)
        Success Rate: \(String(format: "%.1f%%", successRate))

        Top Companies Applied To:
        -------------------------
        \(topCompaniesText(from: filteredJobs))

        Status Distribution:
        --------------------
        \(statusDistributionText(from: filteredJobs))
        """

        let printInfo = NSPrintInfo.shared
        printInfo.horizontalPagination = .fit
        printInfo.verticalPagination = .automatic

        let textView = NSTextView(frame: NSRect(x: 0, y: 0, width: 500, height: 700))
        textView.string = printContent
        textView.font = NSFont.monospacedSystemFont(ofSize: 11, weight: .regular)

        let printOperation = NSPrintOperation(view: textView, printInfo: printInfo)
        printOperation.showsPrintPanel = true
        printOperation.showsProgressPanel = true
        printOperation.run()
    }

    private func topCompaniesText(from jobs: [SwiftDataJobApplication]) -> String {
        let companyCounts = Dictionary(grouping: jobs, by: { $0.companyName })
            .mapValues { $0.count }
            .sorted { $0.value > $1.value }
            .prefix(5)

        return companyCounts.map { "• \($0.key): \($0.value) application(s)" }.joined(separator: "\n")
    }

    private func statusDistributionText(from jobs: [SwiftDataJobApplication]) -> String {
        let statusCounts = Dictionary(grouping: jobs, by: { $0.status })
            .mapValues { $0.count }
            .sorted { $0.value > $1.value }

        return statusCounts.map { "• \($0.key.rawValue): \($0.value)" }.joined(separator: "\n")
    }
}

// MARK: - Supporting Types

extension EnhancedStatsView {
    enum TimeRange: String, CaseIterable, Identifiable {
        case week = "Last 7 Days"
        case month = "Last 30 Days"
        case threeMonths = "Last 3 Months"
        case sixMonths = "Last 6 Months"
        case year = "Last Year"
        case allTime = "All Time"
        
        var id: String { rawValue }
        var title: String { rawValue }
        
        var days: Int? {
            switch self {
            case .week: return 7
            case .month: return 30
            case .threeMonths: return 90
            case .sixMonths: return 180
            case .year: return 365
            case .allTime: return nil
            }
        }
    }
    
    enum ChartType: String, CaseIterable, Identifiable {
        case overview = "Overview"
        case applications = "Applications"
        case companies = "Companies"
        case locations = "Locations"
        case salaries = "Salaries"
        case timeline = "Timeline"
        case skills = "Skills"
        case activity = "Activity"
        case contributions = "Contributions"
        case cityDistribution = "City Distribution"
        case weeklyDistribution = "Weekly Distribution"
        case salaryRanges = "Salary Ranges"
        case dailyActivity = "Daily Activity"
        case yearProgress = "Year Progress"
        
        var id: String { rawValue }
        var title: String { rawValue }
        
        var icon: String {
            switch self {
            case .overview: return "chart.bar"
            case .applications: return "chart.line.uptrend.xyaxis"
            case .companies: return "building.2"
            case .locations: return "map"
            case .salaries: return "dollarsign.circle"
            case .timeline: return "calendar"
            case .skills: return "star"
            case .activity: return "flame"
            case .contributions: return "square.grid.3x3"
            case .cityDistribution: return "chart.bar.xaxis"
            case .weeklyDistribution: return "calendar.day.timeline.left"
            case .salaryRanges: return "chart.xyaxis.line"
            case .dailyActivity: return "square.grid.3x3.fill"
            case .yearProgress: return "calendar.circle"
            }
        }
        
        var requiresYearSelection: Bool {
            switch self {
            case .contributions, .yearProgress:
                return true
            default:
                return false
            }
        }
    }
}

// MARK: - Stats Sidebar

struct StatsSidebar: View {
    @Binding var selectedTimeRange: EnhancedStatsView.TimeRange
    @Binding var selectedChartType: EnhancedStatsView.ChartType
    @EnvironmentObject var jobStore: JobStore
    
    var body: some View {
        List(selection: $selectedChartType) {
            Section("Time Range") {
                ForEach(EnhancedStatsView.TimeRange.allCases) { timeRange in
                    Button(action: {
                        selectedTimeRange = timeRange
                    }) {
                        HStack {
                            Text(timeRange.title)
                                .foregroundColor(selectedTimeRange == timeRange ? .accentColor : .primary)
                            Spacer()
                            if selectedTimeRange == timeRange {
                                Image(systemName: "checkmark")
                                    .font(.caption)
                                    .foregroundColor(.accentColor)
                            }
                        }
                    }
                    .buttonStyle(.plain)
                }
            }
            
            Section("Charts") {
                ForEach(EnhancedStatsView.ChartType.allCases) { chartType in
                    Label(chartType.title, systemImage: chartType.icon)
                        .tag(chartType)
                }
            }
            
            Section("Quick Stats") {
                QuickStatsSection(timeRange: selectedTimeRange)
                    .environmentObject(jobStore)
            }
        }
        .listStyle(.sidebar)
        .navigationTitle("Analytics")
    }
}

// MARK: - Stats Detail View

struct StatsDetailView: View {
    let timeRange: EnhancedStatsView.TimeRange
    let chartType: EnhancedStatsView.ChartType
    @Binding var selectedYear: Int
    let availableYears: [Int]
    let contributionData: [Contribution]
    @Binding var hoveredContribution: Contribution?
    @EnvironmentObject var jobStore: JobStore
    
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                // Header with summary
                StatsHeaderCard(timeRange: timeRange)
                    .environmentObject(jobStore)
                
                // Main chart
                chartContent
                    .padding()
                    .background(Color.secondary.opacity(0.05))
                    .cornerRadius(Theme.CornerRadius.large)
            }
            .padding()
        }
    }
    
    @ViewBuilder
    private var chartContent: some View {
        switch chartType {
        case .overview:
            OverviewChartView(timeRange: timeRange)
                .environmentObject(jobStore)
        case .applications:
            ApplicationsTimelineChart(timeRange: timeRange)
                .environmentObject(jobStore)
        case .companies:
            CompaniesChart(timeRange: timeRange)
                .environmentObject(jobStore)
        case .locations:
            EnhancedMapClusteringView(timeRange: timeRange)
                .environmentObject(jobStore)
        case .salaries:
            SalaryDistributionChart(timeRange: timeRange)
                .environmentObject(jobStore)
        case .timeline:
            TimelineChart(timeRange: timeRange)
                .environmentObject(jobStore)
        case .skills:
            SkillsChart(timeRange: timeRange)
                .environmentObject(jobStore)
        case .activity:
            ActivityHeatmapChart(timeRange: timeRange)
                .environmentObject(jobStore)
        case .contributions:
            ApplicationsPerDayChartView(
                contributionData: contributionData,
                hoveredContribution: $hoveredContribution,
                selectedYear: $selectedYear,
                availableYears: availableYears
            )
        case .cityDistribution:
            HorizontalStackedBarChartView(timeRange: timeRange)
                .environmentObject(jobStore)
        case .weeklyDistribution:
            VerticalStackedBarChartView(timeRange: timeRange)
                .environmentObject(jobStore)
        case .salaryRanges:
            EnhancedSalaryRangeChartView(timeRange: timeRange)
                .environmentObject(jobStore)
        case .dailyActivity:
            TimeRangeApplicationsPerDayChartView(timeRange: timeRange)
                .environmentObject(jobStore)
        case .yearProgress:
            TimeRangeYearProgressChartView(timeRange: timeRange)
                .environmentObject(jobStore)
        }
    }
}

// MARK: - Quick Stats Section

struct QuickStatsSection: View {
    let timeRange: EnhancedStatsView.TimeRange
    @EnvironmentObject var jobStore: JobStore
    
    private var filteredJobs: [SwiftDataJobApplication] {
        guard let days = timeRange.days else { return jobStore.jobApplications }
        let cutoffDate = Calendar.current.date(byAdding: .day, value: -days, to: Date()) ?? Date()
        return jobStore.jobApplications.filter { $0.dateOfApplication >= cutoffDate }
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            StatItem(title: "Total", value: "\(filteredJobs.count)", icon: "briefcase.fill")
            StatItem(title: "Applied", value: "\(appliedCount)", icon: "paperplane.fill")
            StatItem(title: "In Progress", value: "\(inProgressCount)", icon: "hourglass")
            StatItem(title: "Response Rate", value: responseRate, icon: "percent")
        }
    }
    
    private var appliedCount: Int {
        filteredJobs.filter { $0.status == .applied }.count
    }
    
    private var inProgressCount: Int {
        filteredJobs.filter { $0.status == .interview }.count
    }
    
    private var responseRate: String {
        let responded = filteredJobs.filter { $0.status != .applied }.count
        let rate = filteredJobs.isEmpty ? 0 : Double(responded) / Double(filteredJobs.count) * 100
        return String(format: "%.0f%%", rate)
    }
}

struct StatItem: View {
    let title: String
    let value: String
    let icon: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .font(.caption)
                .foregroundColor(.secondary)
                .frame(width: 20)
            
            VStack(alignment: .leading, spacing: 2) {
                Text(title)
                    .font(.caption)
                    .foregroundColor(.secondary)
                Text(value)
                    .font(.system(.body, design: .rounded))
                    .fontWeight(.medium)
            }
            
            Spacer()
        }
    }
}

// MARK: - Stats Header Card

struct StatsHeaderCard: View {
    let timeRange: EnhancedStatsView.TimeRange
    @EnvironmentObject var jobStore: JobStore
    
    private var dateRangeText: String {
        if timeRange == .allTime {
            return "All Time Statistics"
        } else if let days = timeRange.days {
            let startDate = Calendar.current.date(byAdding: .day, value: -days, to: Date()) ?? Date()
            let formatter = DateFormatter()
            formatter.dateStyle = .medium
            return "\(formatter.string(from: startDate)) - Today"
        }
        return ""
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(dateRangeText)
                .font(.headline)
                .foregroundColor(.secondary)
            
            // Summary metrics grid
            LazyVGrid(columns: [
                GridItem(.flexible()),
                GridItem(.flexible()),
                GridItem(.flexible()),
                GridItem(.flexible())
            ], spacing: 16) {
                MetricCard(title: "Applications", value: totalApplications, trend: applicationTrend)
                MetricCard(title: "Companies", value: uniqueCompanies, trend: nil)
                MetricCard(title: "Avg Response Time", value: avgResponseTime, trend: nil)
                MetricCard(title: "Success Rate", value: successRate, trend: successTrend)
            }
        }
        .padding()
        .background(Color.secondary.opacity(0.05))
        .cornerRadius(Theme.CornerRadius.large)
    }
    
    private var totalApplications: String {
        let count = getFilteredJobs().count
        return "\(count)"
    }
    
    private var uniqueCompanies: String {
        let companies = Set(getFilteredJobs().map { $0.companyName })
        return "\(companies.count)"
    }
    
    private var avgResponseTime: String {
        // Response time tracking requires status change history in the data model
        return "N/A"
    }
    
    private var successRate: String {
        let jobs = getFilteredJobs()
        let offers = jobs.filter { $0.status == .offer }.count
        let rate = jobs.isEmpty ? 0 : Double(offers) / Double(jobs.count) * 100
        return String(format: "%.1f%%", rate)
    }
    
    private var applicationTrend: Double? {
        // Compare to previous period
        guard let days = timeRange.days else { return nil }
        let currentPeriodJobs = getFilteredJobs().count
        let previousPeriodJobs = getPreviousPeriodJobs(days: days).count
        
        if previousPeriodJobs == 0 { return nil }
        return Double(currentPeriodJobs - previousPeriodJobs) / Double(previousPeriodJobs) * 100
    }
    
    private var successTrend: Double? {
        guard let days = timeRange.days else { return nil }
        
        let currentJobs = getFilteredJobs()
        let currentOffers = currentJobs.filter { $0.status == .offer }.count
        let currentRate = currentJobs.isEmpty ? 0 : Double(currentOffers) / Double(currentJobs.count)
        
        let previousJobs = getPreviousPeriodJobs(days: days)
        let previousOffers = previousJobs.filter { $0.status == .offer }.count
        let previousRate = previousJobs.isEmpty ? 0 : Double(previousOffers) / Double(previousJobs.count)
        
        if previousRate == 0 { return nil }
        return (currentRate - previousRate) / previousRate * 100
    }
    
    private func getFilteredJobs() -> [SwiftDataJobApplication] {
        guard let days = timeRange.days else { return jobStore.jobApplications }
        let cutoffDate = Calendar.current.date(byAdding: .day, value: -days, to: Date()) ?? Date()
        return jobStore.jobApplications.filter { $0.dateOfApplication >= cutoffDate }
    }
    
    private func getPreviousPeriodJobs(days: Int) -> [SwiftDataJobApplication] {
        let endDate = Calendar.current.date(byAdding: .day, value: -days, to: Date()) ?? Date()
        let startDate = Calendar.current.date(byAdding: .day, value: -days * 2, to: Date()) ?? Date()
        return jobStore.jobApplications.filter { 
            $0.dateOfApplication >= startDate && $0.dateOfApplication < endDate
        }
    }
}

struct MetricCard: View {
    let title: String
    let value: String
    let trend: Double?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title)
                .font(.caption)
                .foregroundColor(.secondary)
            
            HStack(alignment: .lastTextBaseline, spacing: 4) {
                Text(value)
                    .font(.title3)
                    .fontWeight(.semibold)
                
                if let trend = trend {
                    HStack(spacing: 2) {
                        Image(systemName: trend > 0 ? "arrow.up.right" : "arrow.down.right")
                            .font(.caption2)
                        Text(String(format: "%.0f%%", abs(trend)))
                            .font(.caption2)
                    }
                    .foregroundColor(trend > 0 ? .green : .red)
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

private enum ChartSizing {
    static let minChartWidth: CGFloat = 420
    static let minGroupWidth: CGFloat = 84
    static let minBarWidth: CGFloat = 44
    static let minRowHeight: CGFloat = 40

    static func horizontalChartWidth(categoryCount: Int, groupCount: Int = 1, minWidth: CGFloat = minChartWidth) -> CGFloat {
        guard categoryCount > 0 else { return minWidth }
        let groupWidth = max(minGroupWidth, CGFloat(max(groupCount, 1)) * minBarWidth + 12)
        return max(minWidth, CGFloat(categoryCount) * groupWidth)
    }

    static func verticalChartHeight(rowCount: Int, rowHeight: CGFloat = minRowHeight, minHeight: CGFloat = 240) -> CGFloat {
        max(minHeight, CGFloat(rowCount) * rowHeight + 24)
    }
}

// MARK: - Supporting Data Types

struct Contribution: Identifiable, Equatable {
    let id = UUID()
    let date: Date
    let count: Int
    
    var color: Color {
        switch count {
        case 0: return Color.secondary.opacity(0.1)
        case 1...2: return Color.green.opacity(0.3)
        case 3...4: return Color.green.opacity(0.6)
        case 5...6: return Color.green.opacity(0.8)
        default: return Color.green
        }
    }
}

// MARK: - Chart Views

// Overview Chart
struct OverviewChartView: View {
    let timeRange: EnhancedStatsView.TimeRange
    @EnvironmentObject var jobStore: JobStore
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Application Overview")
                .font(.title3)
                .fontWeight(.semibold)
            
            // Status distribution pie chart
            Chart(statusData) { item in
                SectorMark(
                    angle: .value("Count", item.count),
                    innerRadius: .ratio(0.5),
                    angularInset: 1.5
                )
                .foregroundStyle(item.color)
                .annotation(position: .overlay) {
                    if item.count > 0 {
                        Text("\(item.count)")
                            .font(.caption)
                            .fontWeight(.medium)
                            .foregroundStyle(.white)
                    }
                }
            }
            .frame(height: 300)
            .chartBackground { _ in
                VStack {
                    Text("\(totalJobs)")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Text("Total")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
            
            // Legend
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))], spacing: 8) {
                ForEach(statusData) { item in
                    HStack {
                        Circle()
                            .fill(item.color)
                            .frame(width: 12, height: 12)
                        Text(item.status)
                            .font(.caption)
                        Spacer()
                        Text("\(item.count)")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                }
            }
        }
    }
    
    private var statusData: [StatusData] {
        let jobs = getFilteredJobs()
        return JobStatus.allCases.compactMap { status in
            let count = jobs.filter { $0.status == status }.count
            return StatusData(status: status.rawValue, count: count, color: status.color)
        }.filter { $0.count > 0 }
    }
    
    private var totalJobs: Int {
        getFilteredJobs().count
    }
    
    private func getFilteredJobs() -> [SwiftDataJobApplication] {
        guard let days = timeRange.days else { return jobStore.jobApplications }
        let cutoffDate = Calendar.current.date(byAdding: .day, value: -days, to: Date()) ?? Date()
        return jobStore.jobApplications.filter { $0.dateOfApplication >= cutoffDate }
    }
}

struct StatusData: Identifiable {
    let id = UUID()
    let status: String
    let count: Int
    let color: Color
}

// Applications Timeline Chart
struct ApplicationsTimelineChart: View {
    let timeRange: EnhancedStatsView.TimeRange
    @EnvironmentObject var jobStore: JobStore
    @State private var hoveredDate: Date?
    @State private var selectedDataPoint: (date: Date, count: Int)?
    @State private var showAnnotations = true
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Applications Timeline")
                .font(.title3)
                .fontWeight(.semibold)
            
            Chart(timelineData) { item in
                LineMark(
                    x: .value("Date", item.date),
                    y: .value("Applications", item.count)
                )
                .foregroundStyle(Color.accentColor)
                .interpolationMethod(.catmullRom)
                .lineStyle(StrokeStyle(lineWidth: 3))
                .symbol(.circle)
                .symbolSize(selectedDataPoint?.date == item.date ? 150 : 50)
                
                AreaMark(
                    x: .value("Date", item.date),
                    y: .value("Applications", item.count)
                )
                .foregroundStyle(
                    .linearGradient(
                        colors: [Color.accentColor.opacity(0.3), Color.accentColor.opacity(0.05)],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .interpolationMethod(.catmullRom)
                
                if showAnnotations,
                   let hoveredDate = hoveredDate,
                   Calendar.current.isDate(item.date, inSameDayAs: hoveredDate) {
                    RuleMark(
                        x: .value("Date", item.date)
                    )
                    .foregroundStyle(Color.secondary.opacity(0.3))
                    .lineStyle(StrokeStyle(lineWidth: 1, dash: [5, 5]))
                    .annotation(position: .top, alignment: .center) {
                        VStack(spacing: 4) {
                            Text("\(item.count) applications")
                                .font(.caption.bold())
                                .foregroundColor(.primary)
                            Text(item.date, format: .dateTime.month().day())
                                .font(.caption2)
                                .foregroundColor(.secondary)
                        }
                        .padding(6)
                        .background(Color(NSColor.controlBackgroundColor))
                        .cornerRadius(6)
                        .shadow(radius: 2)
                    }
                }
            }
            .frame(height: 300)
            .chartXAxis {
                AxisMarks(values: .stride(by: Calendar.Component.day, count: getDayStride())) { value in
                    AxisGridLine()
                    AxisValueLabel(format: .dateTime.month().day())
                }
            }
            .chartYAxis {
                AxisMarks { value in
                    AxisGridLine()
                    AxisValueLabel()
                }
            }
            .onContinuousHover { phase in
                switch phase {
                case .active(let location):
                    if let date = findClosestDate(at: location) {
                        hoveredDate = date
                    }
                case .ended:
                    hoveredDate = nil
                }
            }
        }
    }
    
    private var timelineData: [TimelineData] {
        let jobs = getFilteredJobs()
        let calendar = Calendar.current
        
        // Group by date
        let grouped = Dictionary(grouping: jobs) { job in
            calendar.startOfDay(for: job.dateOfApplication)
        }
        
        // Create continuous timeline
        var data: [TimelineData] = []
        if let earliestDate = jobs.map({ $0.dateOfApplication }).min(),
           let latestDate = jobs.map({ $0.dateOfApplication }).max() {
            
            var currentDate = calendar.startOfDay(for: earliestDate)
            let endDate = calendar.startOfDay(for: latestDate)
            
            while currentDate <= endDate {
                let count = grouped[currentDate]?.count ?? 0
                data.append(TimelineData(date: currentDate, count: count))
                currentDate = calendar.date(byAdding: .day, value: 1, to: currentDate) ?? currentDate
            }
        }
        
        return data
    }
    
    private func getDayStride() -> Int {
        guard let days = timeRange.days else { return 30 }
        switch days {
        case 0...7: return 1
        case 8...30: return 3
        case 31...90: return 7
        case 91...180: return 14
        default: return 30
        }
    }
    
    private func findClosestDate(at location: CGPoint) -> Date? {
        // This is a simplified implementation
        // In production, you'd calculate based on chart geometry
        return nil
    }
    
    private func getFilteredJobs() -> [SwiftDataJobApplication] {
        guard let days = timeRange.days else { return jobStore.jobApplications }
        let cutoffDate = Calendar.current.date(byAdding: .day, value: -days, to: Date()) ?? Date()
        return jobStore.jobApplications.filter { $0.dateOfApplication >= cutoffDate }
    }
} // <-- Added missing closing brace here

struct TimelineData: Identifiable {
    let id = UUID()
    let date: Date
    let count: Int
}

// Companies Chart
struct CompaniesChart: View {
    let timeRange: EnhancedStatsView.TimeRange
    @EnvironmentObject var jobStore: JobStore
    @State private var chartSelection: String?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Top Companies")
                .font(.title3)
                .fontWeight(.semibold)
            
            let chartHeight = ChartSizing.verticalChartHeight(rowCount: topCompanies.count)
            Chart(topCompanies) { company in
                BarMark(
                    x: .value("Applications", company.count),
                    y: .value("Company", company.name)
                )
                .foregroundStyle(
                    chartSelection == company.name
                    ? AnyShapeStyle(Color.accentColor)
                    : AnyShapeStyle(Color.accentColor.gradient)
                )
                .opacity(chartSelection == nil || chartSelection == company.name ? 1.0 : 0.5)
                .cornerRadius(4)
                .annotation(position: .trailing) {
                    Text("\(company.count)")
                        .font(.caption.monospacedDigit())
                        .fontWeight(chartSelection == company.name ? .bold : .regular)
                        .foregroundColor(.secondary)
                }
            }
            .animation(.easeInOut(duration: 0.3), value: chartSelection)
            .frame(height: chartHeight)
            .chartXScale(range: .plotDimension(endPadding: 12))
            .chartXAxis {
                AxisMarks { _ in
                    AxisGridLine()
                    AxisValueLabel()
                }
            }
            .chartYAxis {
                AxisMarks { value in
                    AxisValueLabel {
                        if let name = value.as(String.self) {
                            Text(name)
                                .font(.caption)
                                .lineLimit(1)
                                .truncationMode(.tail)
                        }
                    }
                }
            }
        }
    }
    
    private var topCompanies: [CompanyData] {
        let jobs = getFilteredJobs()
        let grouped = Dictionary(grouping: jobs) { $0.companyName }
        return grouped.map { CompanyData(name: $0.key, count: $0.value.count) }
            .sorted { $0.count > $1.count }
            .prefix(10)
            .reversed()
            .map { $0 }
    }
    
    private func getFilteredJobs() -> [SwiftDataJobApplication] {
        guard let days = timeRange.days else { return jobStore.jobApplications }
        let cutoffDate = Calendar.current.date(byAdding: .day, value: -days, to: Date()) ?? Date()
        return jobStore.jobApplications.filter { $0.dateOfApplication >= cutoffDate }
    }
}

struct CompanyData: Identifiable {
    let id = UUID()
    let name: String
    let count: Int
}

// Salary Distribution Chart
struct SalaryDistributionChart: View {
    let timeRange: EnhancedStatsView.TimeRange
    @EnvironmentObject var jobStore: JobStore
    @State private var chartSelection: String?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Salary Distribution")
                .font(.title3)
                .fontWeight(.semibold)
            
            if salaryData.isEmpty {
                ContentUnavailableView {
                    Label("No Salary Data", systemImage: "dollarsign.circle")
                } description: {
                    Text("No jobs with salary information in this time range")
                }
                .frame(height: 300)
            } else {
                let currencyCount = max(1, Set(salaryData.map(\.currency)).count)
                let chartWidth = ChartSizing.horizontalChartWidth(
                    categoryCount: salaryRangeLabels.count,
                    groupCount: currencyCount
                )
                ScrollView(.horizontal, showsIndicators: chartWidth > 520) {
                    Chart(salaryData) { item in
                        BarMark(
                            x: .value("Range", item.range),
                            y: .value("Count", item.count)
                        )
                        .foregroundStyle(by: .value("Currency", item.currency.displayName))
                        .position(by: .value("Currency", item.currency.displayName))
                        .cornerRadius(6)
                        .opacity(chartSelection == nil || chartSelection == item.range ? 1.0 : 0.7)
                    }
                    .chartForegroundStyleScale([
                        SalaryCurrency.usd.displayName: Color.green,
                        SalaryCurrency.rmb.displayName: Color.orange
                    ])
                    .frame(width: chartWidth, height: 320)
                    .chartXScale(range: .plotDimension(endPadding: 12))
                    .chartXAxis {
                        AxisMarks { value in
                            AxisValueLabel {
                                if let range = value.as(String.self) {
                                    Text(range)
                                        .font(.caption2)
                                        .frame(width: 80)
                                }
                            }
                        }
                    }
                    .chartYAxis {
                        AxisMarks { _ in
                            AxisGridLine()
                            AxisValueLabel()
                        }
                    }
                    .chartLegend(position: .top, alignment: .leading)
                }
            }
            
            // Summary stats
            if !salaryData.isEmpty {
                HStack(spacing: 24) {
                    VStack(alignment: .leading) {
                        Text("Average")
                            .font(.caption)
                            .foregroundColor(.secondary)
                        Text(averageSalary)
                            .font(.headline)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Median")
                            .font(.caption)
                            .foregroundColor(.secondary)
                        Text(medianSalary)
                            .font(.headline)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Range")
                            .font(.caption)
                            .foregroundColor(.secondary)
                        Text(salaryRange)
                            .font(.headline)
                    }
                }
            }
        }
    }
    
    private var salaryData: [SalaryRangeData] {
        let jobs = getFilteredJobs().filter { $0.salaryMin != nil || $0.salaryMax != nil }
        guard !jobs.isEmpty else { return [] }

        return salaryRanges.flatMap { range in
            SalaryCurrency.allCases.compactMap { currency in
                let count = jobs.filter { job in
                    guard job.salaryCurrency == currency else { return false }
                    let salary = job.salaryMax ?? job.salaryMin ?? 0
                    return Int(salary) >= range.min && Int(salary) < range.max
                }.count

                return count > 0 ? SalaryRangeData(range: range.label, count: count, currency: currency) : nil
            }
        }
    }

    private var salaryRanges: [(min: Int, max: Int, label: String)] {
        [
            (0, 50000, "$0-50k"),
            (50000, 75000, "$50k-75k"),
            (75000, 100000, "$75k-100k"),
            (100000, 125000, "$100k-125k"),
            (125000, 150000, "$125k-150k"),
            (150000, 200000, "$150k-200k"),
            (200000, Int.max, "$200k+")
        ]
    }

    private var salaryRangeLabels: [String] {
        salaryRanges.map { $0.label }
    }
    
    private var averageSalary: String {
        let salaries = getFilteredJobs().compactMap { $0.salaryMax ?? $0.salaryMin }
        guard !salaries.isEmpty else { return "N/A" }
        let avg = salaries.reduce(0.0, +) / Double(salaries.count)
        return "$\(avg / 1000)k"
    }
    
    private var medianSalary: String {
        let salaries = getFilteredJobs().compactMap { $0.salaryMax ?? $0.salaryMin }.sorted()
        guard !salaries.isEmpty else { return "N/A" }
        let median = salaries[salaries.count / 2]
        return "$\(median / 1000)k"
    }
    
    private var salaryRange: String {
        let salaries = getFilteredJobs().compactMap { $0.salaryMax ?? $0.salaryMin }
        guard let min = salaries.min(), let max = salaries.max() else { return "N/A" }
        return "$\(min / 1000)k - $\(max / 1000)k"
    }
    
    private func getFilteredJobs() -> [SwiftDataJobApplication] {
        guard let days = timeRange.days else { return jobStore.jobApplications }
        let cutoffDate = Calendar.current.date(byAdding: .day, value: -days, to: Date()) ?? Date()
        return jobStore.jobApplications.filter { $0.dateOfApplication >= cutoffDate }
    }
}

struct SalaryRangeData: Identifiable {
    let id = UUID()
    let range: String
    let count: Int
    let currency: SalaryCurrency
}

// Timeline Chart
struct TimelineChart: View {
    let timeRange: EnhancedStatsView.TimeRange
    @EnvironmentObject var jobStore: JobStore
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Application Pipeline")
                .font(.title3)
                .fontWeight(.semibold)
            
            // Funnel visualization
            VStack(spacing: 0) {
                ForEach(pipelineData) { stage in
                    PipelineStageView(stage: stage, maxCount: pipelineData.first?.count ?? 1)
                }
            }
        }
    }
    
    private var pipelineData: [PipelineStage] {
        let jobs = getFilteredJobs()
        
        return [
            PipelineStage(name: "Applied", count: jobs.count, color: .blue),
            PipelineStage(name: "Interview", count: jobs.filter { 
                [.interview, .offer, .accepted, .rejected].contains($0.status)
            }.count, color: .cyan),
            PipelineStage(name: "Offer", count: jobs.filter {
                [.offer, .accepted].contains($0.status)
            }.count, color: .green),
            PipelineStage(name: "Accepted", count: jobs.filter {
                $0.status == .accepted
            }.count, color: .purple)
        ]
    }
    
    private func getFilteredJobs() -> [SwiftDataJobApplication] {
        guard let days = timeRange.days else { return jobStore.jobApplications }
        let cutoffDate = Calendar.current.date(byAdding: .day, value: -days, to: Date()) ?? Date()
        return jobStore.jobApplications.filter { $0.dateOfApplication >= cutoffDate }
    }
}

struct PipelineStage: Identifiable {
    let id = UUID()
    let name: String
    let count: Int
    let color: Color
}

struct PipelineStageView: View {
    let stage: PipelineStage
    let maxCount: Int
    
    private var widthPercentage: Double {
        guard maxCount > 0 else { return 0 }
        return Double(stage.count) / Double(maxCount)
    }
    
    var body: some View {
        HStack(spacing: 0) {
            // Stage name and count
            HStack {
                Text(stage.name)
                    .font(.subheadline)
                    .fontWeight(.medium)
                Spacer()
                Text("\(stage.count)")
                    .font(.subheadline.monospacedDigit())
                    .foregroundColor(.secondary)
            }
            .frame(width: 120)
            .padding(.trailing, 12)
            
            // Bar
            GeometryReader { geometry in
                RoundedRectangle(cornerRadius: 6)
                    .fill(stage.color.gradient)
                    .frame(width: geometry.size.width * widthPercentage)
                    .animation(.easeInOut(duration: 0.5), value: widthPercentage)
            }
            .frame(height: 32)
        }
        .padding(.vertical, 4)
    }
}

// Skills Chart
struct SkillsChart: View {
    let timeRange: EnhancedStatsView.TimeRange
    @EnvironmentObject var jobStore: JobStore
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Top Skills")
                .font(.title3)
                .fontWeight(.semibold)
            
            if topSkills.isEmpty {
                ContentUnavailableView {
                    Label("No Skills Data", systemImage: "star")
                } description: {
                    Text("No skills tracked in this time range")
                }
                .frame(height: 300)
            } else {
                // Word cloud style visualization
                FlowLayout(spacing: 8) {
                    ForEach(topSkills) { skill in
                        SkillBubble(skill: skill, maxCount: topSkills.first?.count ?? 1)
                    }
                }
            }
        }
    }
    
    private var topSkills: [SkillData] {
        let jobs = getFilteredJobs()
        var skillCounts: [String: Int] = [:]
        
        for job in jobs {
            for skill in job.skills {
                skillCounts[skill, default: 0] += 1
            }
        }
        
        return skillCounts.map { SkillData(name: $0.key, count: $0.value) }
            .sorted { $0.count > $1.count }
            .prefix(20)
            .map { $0 }
    }
    
    private func getFilteredJobs() -> [SwiftDataJobApplication] {
        guard let days = timeRange.days else { return jobStore.jobApplications }
        let cutoffDate = Calendar.current.date(byAdding: .day, value: -days, to: Date()) ?? Date()
        return jobStore.jobApplications.filter { $0.dateOfApplication >= cutoffDate }
    }
}

struct SkillData: Identifiable {
    let id = UUID()
    let name: String
    let count: Int
}

struct SkillBubble: View {
    let skill: SkillData
    let maxCount: Int
    
    private var fontSize: CGFloat {
        let ratio = Double(skill.count) / Double(maxCount)
        return 12 + (ratio * 12)
    }
    
    private var opacity: Double {
        let ratio = Double(skill.count) / Double(maxCount)
        return 0.5 + (ratio * 0.5)
    }
    
    private var baseColor: Color {
        var hasher = Hasher()
        hasher.combine(skill.name.lowercased())
        let hash = abs(hasher.finalize())
        let hue = Double(hash % 360) / 360.0
        return Color(hue: hue, saturation: 0.55, brightness: 0.95)
    }
    
    private var gradient: LinearGradient {
        LinearGradient(
            colors: [baseColor.opacity(0.85), baseColor.opacity(0.45)],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
    }
    
    var body: some View {
        HStack(spacing: 4) {
            Text(skill.name)
                .font(.system(size: fontSize, weight: .medium))
            Text("(\(skill.count))")
                .font(.system(size: fontSize * 0.8))
                .foregroundColor(.secondary)
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 6)
        .background(gradient)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(baseColor.opacity(opacity), lineWidth: 1)
        )
        .cornerRadius(16)
        .shadow(color: baseColor.opacity(0.25), radius: 6, x: 0, y: 2)
    }
}

// Activity Heatmap Chart
struct ActivityHeatmapChart: View {
    let timeRange: EnhancedStatsView.TimeRange
    @EnvironmentObject var jobStore: JobStore
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Application Activity by Day & Hour")
                .font(.title3)
                .fontWeight(.semibold)
            
            // Day of week vs hour heatmap
            VStack(spacing: 4) {
                // Hour headers
                HStack(spacing: 4) {
                    Text("")
                        .frame(width: 60)
                    ForEach(0..<24) { hour in
                        Text("\(hour)")
                            .font(.caption2)
                            .frame(width: 20)
                            .foregroundColor(.secondary)
                    }
                }
                
                // Heatmap grid
                ForEach(DayOfWeek.allCases) { day in
                    HStack(spacing: 4) {
                        Text(day.shortName)
                            .font(.caption)
                            .frame(width: 60, alignment: .trailing)
                            .foregroundColor(.secondary)
                        
                        ForEach(0..<24) { hour in
                            RoundedRectangle(cornerRadius: 2)
                                .fill(colorForActivity(day: day, hour: hour))
                                .frame(width: 20, height: 20)
                                .help("\(activityCount(day: day, hour: hour)) applications")
                        }
                    }
                }
            }
            
            // Legend
            HStack(spacing: 16) {
                Text("Less")
                    .font(.caption)
                    .foregroundColor(.secondary)
                HStack(spacing: 4) {
                    ForEach(0..<5) { level in
                        RoundedRectangle(cornerRadius: 2)
                            .fill(heatmapColor(level: level))
                            .frame(width: 12, height: 12)
                    }
                }
                Text("More")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
    }
    
    private func activityCount(day: DayOfWeek, hour: Int) -> Int {
        let jobs = getFilteredJobs()
        let calendar = Calendar.current
        
        return jobs.filter { job in
            let weekday = calendar.component(.weekday, from: job.dateOfApplication)
            let jobHour = calendar.component(.hour, from: job.dateOfApplication)
            return weekday == day.weekdayNumber && jobHour == hour
        }.count
    }
    
    private func colorForActivity(day: DayOfWeek, hour: Int) -> Color {
        let count = activityCount(day: day, hour: hour)
        let maxCount = maxActivityCount()
        
        guard maxCount > 0 else { return heatmapColor(level: 0) }
        
        let level = Int((Double(count) / Double(maxCount)) * 4)
        return heatmapColor(level: min(level, 4))
    }
    
    private func heatmapColor(level: Int) -> Color {
        switch level {
        case 0: return Color.secondary.opacity(0.1)
        case 1: return Color.green.opacity(0.3)
        case 2: return Color.green.opacity(0.5)
        case 3: return Color.green.opacity(0.7)
        default: return Color.green.opacity(0.9)
        }
    }
    
    private func maxActivityCount() -> Int {
        var maxCount = 0
        for day in DayOfWeek.allCases {
            for hour in 0..<24 {
                maxCount = max(maxCount, activityCount(day: day, hour: hour))
            }
        }
        return maxCount
    }
    
    private func getFilteredJobs() -> [SwiftDataJobApplication] {
        guard let days = timeRange.days else { return jobStore.jobApplications }
        let cutoffDate = Calendar.current.date(byAdding: .day, value: -days, to: Date()) ?? Date()
        return jobStore.jobApplications.filter { $0.dateOfApplication >= cutoffDate }
    }
}

enum DayOfWeek: CaseIterable, Identifiable {
    case sunday, monday, tuesday, wednesday, thursday, friday, saturday
    
    var id: Self { self }
    
    var shortName: String {
        switch self {
        case .sunday: return "Sun"
        case .monday: return "Mon"
        case .tuesday: return "Tue"
        case .wednesday: return "Wed"
        case .thursday: return "Thu"
        case .friday: return "Fri"
        case .saturday: return "Sat"
        }
    }
    
    var weekdayNumber: Int {
        switch self {
        case .sunday: return 1
        case .monday: return 2
        case .tuesday: return 3
        case .wednesday: return 4
        case .thursday: return 5
        case .friday: return 6
        case .saturday: return 7
        }
    }
}

// GitHub-style contribution chart
struct ApplicationsPerDayChartView: View {
    let contributionData: [Contribution]
    @Binding var hoveredContribution: Contribution?
    @Binding var selectedYear: Int
    let availableYears: [Int]
    
    private let columns = 53 // 52 weeks + 1 partial week
    private let rows = 7 // Days of week
    private let cellSpacing: CGFloat = 3
    private let minCellSize: CGFloat = 10
    private let maxCellSize: CGFloat = 18
    @State private var currentCellSize: CGFloat = 12
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Daily Activity")
                .font(.title3)
                .fontWeight(.semibold)
            if !availableYears.isEmpty {
                Picker("Year", selection: $selectedYear) {
                    ForEach(availableYears, id: \.self) { year in
                        Text(year == -1 ? "Last 12 Months" : String(year))
                            .tag(year)
                    }
                }
                .labelsHidden()
                .pickerStyle(.menu)
                .frame(maxWidth: 220)
            }
            
            GeometryReader { proxy in
                let labelWidth: CGFloat = 36
                let rawAvailableWidth = max(240, proxy.size.width - labelWidth - 12)
                let computedCellSize = max(minCellSize, min(maxCellSize, (rawAvailableWidth / CGFloat(columns)) - cellSpacing))
                let gridWidth = CGFloat(columns) * (computedCellSize + cellSpacing) - cellSpacing
                let scrollWidth = min(gridWidth, rawAvailableWidth)
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Spacer()
                            .frame(width: labelWidth)
                        HStack(spacing: 0) {
                            ForEach(monthLabels(), id: \.month) { label in
                                Text(label.month)
                                    .font(.caption2)
                                    .foregroundColor(.secondary)
                                    .frame(width: CGFloat(label.weeks) * (computedCellSize + cellSpacing), alignment: .leading)
                            }
                        }
                        .frame(width: scrollWidth, alignment: .leading)
                    }
                    HStack(alignment: .top, spacing: 12) {
                        VStack(spacing: cellSpacing) {
                            ForEach(["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"], id: \.self) { day in
                                Text(day)
                                    .font(.caption2)
                                    .foregroundColor(.secondary)
                                    .frame(height: computedCellSize)
                            }
                        }
                        ScrollView(.horizontal, showsIndicators: gridWidth > scrollWidth) {
                            HStack(spacing: cellSpacing) {
                                ForEach(0..<columns, id: \.self) { week in
                                    VStack(spacing: cellSpacing) {
                                        ForEach(0..<rows, id: \.self) { day in
                                            if let contribution = contributionForWeekDay(week: week, day: day) {
                                                ContributionCell(
                                                    contribution: contribution,
                                                    isHovered: hoveredContribution?.id == contribution.id,
                                                    size: computedCellSize
                                                )
                                                .onHover { isHovered in
                                                    hoveredContribution = isHovered ? contribution : nil
                                                }
                                            } else {
                                                Rectangle()
                                                    .fill(Color.clear)
                                                    .frame(width: computedCellSize, height: computedCellSize)
                                            }
                                        }
                                    }
                                }
                            }
                            .frame(width: gridWidth, alignment: .leading)
                        }
                        .frame(width: scrollWidth, alignment: .leading)
                    }
                }
                .background(
                    Color.clear
                        .onAppear { currentCellSize = computedCellSize }
                        .onChange(of: computedCellSize) { _, newValue in
                            if abs(currentCellSize - newValue) > 0.05 {
                                currentCellSize = newValue
                            }
                        }
                )
            }
            .frame(minHeight: currentCellSize * CGFloat(rows) + 60)
            
            // Tooltip
            if let hovered = hoveredContribution {
                HStack {
                    Text("\(hovered.count) application\(hovered.count == 1 ? "" : "s") on")
                    Text(hovered.date, format: .dateTime.month().day().year())
                }
                .font(.caption)
                .padding(8)
                .background(Color(NSColor.windowBackgroundColor))
                .cornerRadius(6)
                .shadow(radius: 2)
            }
            
            // Legend
            HStack(spacing: 16) {
                Text("Less")
                    .font(.caption)
                    .foregroundColor(.secondary)
                HStack(spacing: cellSpacing) {
                    ForEach([0, 1, 3, 5, 7], id: \.self) { count in
                        let contribution = Contribution(date: Date(), count: count)
                        Rectangle()
                            .fill(contribution.color)
                            .frame(width: currentCellSize, height: currentCellSize)
                            .cornerRadius(2)
                    }
                }
                Text("More")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
    }
    
    private func contributionForWeekDay(week: Int, day: Int) -> Contribution? {
        guard !contributionData.isEmpty else { return nil }
        
        let calendar = Calendar.current
        let today = Date()
        
        // Calculate the date for this cell
        let weeksAgo = columns - week - 1
        let daysAgo = weeksAgo * 7 + (6 - day)
        
        guard let cellDate = calendar.date(byAdding: .day, value: -daysAgo, to: today) else { return nil }
        
        // Find contribution for this date
        return contributionData.first { contribution in
            calendar.isDate(contribution.date, inSameDayAs: cellDate)
        }
    }
    
    private func monthLabels() -> [(month: String, weeks: Int)] {
        // Simplified month labels
        let calendar = Calendar.current
        var labels: [(String, Int)] = []
        var currentMonth = ""
        var weekCount = 0
        
        for week in (0..<columns).reversed() {
            let weeksAgo = columns - week - 1
            let daysAgo = weeksAgo * 7
            
            if let date = calendar.date(byAdding: .day, value: -daysAgo, to: Date()) {
                let month = date.formatted(.dateTime.month(.abbreviated))
                
                if month != currentMonth {
                    if !currentMonth.isEmpty {
                        labels.append((currentMonth, weekCount))
                    }
                    currentMonth = month
                    weekCount = 1
                } else {
                    weekCount += 1
                }
            }
        }
        
        if !currentMonth.isEmpty && weekCount > 0 {
            labels.append((currentMonth, weekCount))
        }
        
        return labels.reversed()
    }
}

struct ContributionCell: View {
    let contribution: Contribution
    let isHovered: Bool
    let size: CGFloat
    
    var body: some View {
        RoundedRectangle(cornerRadius: 2)
            .fill(contribution.color)
            .frame(width: size, height: size)
            .scaleEffect(isHovered ? 1.2 : 1.0)
            .animation(.easeInOut(duration: 0.1), value: isHovered)
    }
}

// Year Progress Chart
struct YearProgressChartView: View {
    let contributionData: [Contribution]
    let selectedYear: Int
    @Binding var hoveredContribution: Contribution?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Monthly Progress - \(yearText)")
                .font(.title3)
                .fontWeight(.semibold)
            
            // Monthly grid
            LazyVGrid(columns: [
                GridItem(.flexible()),
                GridItem(.flexible()),
                GridItem(.flexible()),
                GridItem(.flexible())
            ], spacing: 16) {
                ForEach(monthlyData) { month in
                    MonthCard(month: month)
                }
            }
        }
    }
    
    private var yearText: String {
        selectedYear == -1 ? "Last 12 Months" : String(selectedYear)
    }
    
    private var monthlyData: [MonthData] {
        let calendar = Calendar.current
        var months: [MonthData] = []
        
        if selectedYear == -1 {
            // Last 12 months
            for monthOffset in (0..<12).reversed() {
                if let date = calendar.date(byAdding: .month, value: -monthOffset, to: Date()) {
                    let monthContributions = contributionData.filter { contribution in
                        calendar.isDate(contribution.date, equalTo: date, toGranularity: .month)
                    }
                    
                    months.append(MonthData(
                        date: date,
                        contributions: monthContributions,
                        total: monthContributions.reduce(0) { $0 + $1.count }
                    ))
                }
            }
        } else {
            // Specific year
            for month in 1...12 {
                var components = DateComponents()
                components.year = selectedYear
                components.month = month
                components.day = 1
                
                if let date = calendar.date(from: components) {
                    let monthContributions = contributionData.filter { contribution in
                        calendar.isDate(contribution.date, equalTo: date, toGranularity: .month)
                    }
                    
                    months.append(MonthData(
                        date: date,
                        contributions: monthContributions,
                        total: monthContributions.reduce(0) { $0 + $1.count }
                    ))
                }
            }
        }
        
        return months
    }
}

struct MonthData: Identifiable {
    let id = UUID()
    let date: Date
    let contributions: [Contribution]
    let total: Int
}

struct MonthCard: View {
    let month: MonthData
    
    private var monthName: String {
        month.date.formatted(.dateTime.month(.wide))
    }
    
    private var color: Color {
        switch month.total {
        case 0: return .secondary.opacity(0.2)
        case 1...5: return .green.opacity(0.4)
        case 6...10: return .green.opacity(0.6)
        case 11...20: return .green.opacity(0.8)
        default: return .green
        }
    }
    
    var body: some View {
        VStack(spacing: 8) {
            Text(monthName)
                .font(.headline)
            
            ZStack {
                Circle()
                    .fill(color)
                    .frame(width: 60, height: 60)
                
                Text("\(month.total)")
                    .font(.title2.bold())
                    .foregroundColor(.white)
            }
            
            Text("Applications")
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color.secondary.opacity(0.05))
        .cornerRadius(12)
    }
}

// MARK: - Stacked Bar Charts

// Horizontal Stacked Bar Chart for Monthly City Distribution
struct HorizontalStackedBarChartView: View {
    let timeRange: EnhancedStatsView.TimeRange
    @EnvironmentObject var jobStore: JobStore
    
    @State private var hoveredMonth: String?
    @State private var hoveredCity: String?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Monthly Distribution by Location")
                .font(.title3)
                .fontWeight(.semibold)
            
            if monthlyLocationData.isEmpty {
                ContentUnavailableView {
                    Label("No Location Data", systemImage: "map")
                } description: {
                    Text("No job applications with location data in this time range")
                }
                .frame(height: 300)
            } else {
                // Legend
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        ForEach(topCities, id: \.self) { city in
                            HStack(spacing: 4) {
                                Circle()
                                    .fill(colorForCity(city))
                                    .frame(width: 8, height: 8)
                                Text(city)
                                    .font(.caption)
                            }
                        }
                    }
                }
                .padding(.bottom, 8)
                
                // Chart
                Chart(monthlyLocationData) { data in
                    ForEach(data.cities, id: \.city) { cityData in
                        BarMark(
                            x: .value("Count", cityData.count),
                            y: .value("Month", data.monthStart, unit: .month)
                        )
                        .foregroundStyle(colorForCity(cityData.city))
                        .position(by: .value("City", cityData.city))
                        .opacity(hoveredCity == nil || hoveredCity == cityData.city ? 1.0 : 0.3)
                    }
                }
                .frame(height: CGFloat(max(monthlyLocationData.count * 46, 240)))
                .chartXScale(range: .plotDimension(endPadding: 8))
                .chartXAxis {
                    AxisMarks { _ in
                        AxisGridLine()
                        AxisValueLabel()
                    }
                }
                .chartYAxis {
                    AxisMarks { value in
                        AxisValueLabel(format: .dateTime.month(.abbreviated).year())
                    }
                }
                .onContinuousHover { phase in
                    switch phase {
                    case .active:
                        hoveredCity = nil
                    case .ended:
                        hoveredCity = nil
                        hoveredMonth = nil
                    }
                }
            }
        }
    }
    
    private var monthlyLocationData: [MonthlyLocationData] {
        let jobs = getFilteredJobs()
        let calendar = Calendar.current
        
        // Group by month
        let grouped = Dictionary(grouping: jobs) { job in
            calendar.dateInterval(of: .month, for: job.dateOfApplication)?.start ?? job.dateOfApplication
        }
        
        return grouped.map { monthStart, jobs in
            let locationCounts = Dictionary(grouping: jobs) { locationKey(for: $0) }
                .mapValues { $0.count }
                .map { LocationCount(city: $0.key, count: $0.value) }
                .sorted { $0.count > $1.count }
            
            return MonthlyLocationData(
                monthStart: monthStart,
                cities: locationCounts
            )
        }
        .sorted { $0.monthStart < $1.monthStart }
    }
    
    private var topCities: [String] {
        let cityCounts = monthlyLocationData
            .flatMap { $0.cities }
            .reduce(into: [:]) { totals, entry in
                totals[entry.city, default: 0] += entry.count
            }
            .sorted { $0.value > $1.value }
            .prefix(8)
            .map { $0.key }
        
        return Array(cityCounts)
    }

    private func colorForCity(_ city: String) -> Color {
        var hasher = Hasher()
        hasher.combine(city.lowercased())
        let hash = abs(hasher.finalize())
        let hue = Double(hash % 360) / 360.0
        return Color(hue: hue, saturation: 0.55, brightness: 0.85)
    }
    
    private func getFilteredJobs() -> [SwiftDataJobApplication] {
        guard let days = timeRange.days else { return jobStore.jobApplications }
        let cutoffDate = Calendar.current.date(byAdding: .day, value: -days, to: Date()) ?? Date()
        return jobStore.jobApplications.filter { $0.dateOfApplication >= cutoffDate }
    }

    private func locationKey(for job: SwiftDataJobApplication) -> String {
        let normalized = job.normalizedLocation?.trimmingCharacters(in: .whitespacesAndNewlines)
        if let normalized, !normalized.isEmpty {
            return normalized
        }
        return job.location
    }
}

struct MonthlyLocationData: Identifiable {
    let monthStart: Date
    let cities: [LocationCount]

    var id: Date { monthStart }
}

struct LocationCount {
    let city: String
    let count: Int
}

// Vertical Stacked Bar Chart for Weekly Distribution
struct VerticalStackedBarChartView: View {
    let timeRange: EnhancedStatsView.TimeRange
    @EnvironmentObject var jobStore: JobStore
    
    @State private var hoveredWeek: String?
    @State private var hoveredCity: String?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Weekly Distribution by Location")
                .font(.title3)
                .fontWeight(.semibold)
            
            if weeklyLocationData.isEmpty {
                ContentUnavailableView {
                    Label("No Location Data", systemImage: "map")
                } description: {
                    Text("No job applications with location data in this time range")
                }
                .frame(height: 300)
            } else {
                // Legend
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        ForEach(topCities, id: \.self) { city in
                            HStack(spacing: 4) {
                                Circle()
                                    .fill(colorForCity(city))
                                    .frame(width: 8, height: 8)
                                Text(city)
                                    .font(.caption)
                            }
                        }
                    }
                }
                .padding(.bottom, 8)
                
                // Chart
                let chartWidth = ChartSizing.horizontalChartWidth(
                    categoryCount: weeklyLocationData.count,
                    minWidth: 520
                )
                ScrollView(.horizontal, showsIndicators: chartWidth > 520) {
                    Chart(weeklyLocationData) { data in
                        ForEach(data.cities, id: \.city) { cityData in
                            BarMark(
                                x: .value("Week", data.weekStart, unit: .weekOfYear),
                                y: .value("Count", cityData.count)
                            )
                            .foregroundStyle(colorForCity(cityData.city))
                            .position(by: .value("City", cityData.city))
                            .opacity(hoveredCity == nil || hoveredCity == cityData.city ? 1.0 : 0.3)
                        }
                    }
                    .frame(width: chartWidth, height: 320)
                    .chartXScale(range: .plotDimension(endPadding: 12))
                    .chartXAxis {
                        AxisMarks { value in
                            AxisValueLabel(format: .dateTime.month().day())
                        }
                    }
                    .chartYAxis {
                        AxisMarks { _ in
                            AxisGridLine()
                            AxisValueLabel()
                        }
                    }
                }
            }
        }
    }
    
    private var weeklyLocationData: [WeeklyLocationData] {
        let jobs = getFilteredJobs()
        let calendar = Calendar.current
        
        // Group by week
        let grouped = Dictionary(grouping: jobs) { job in
            calendar.dateInterval(of: .weekOfYear, for: job.dateOfApplication)?.start ?? job.dateOfApplication
        }
        
        let sortedWeeks = grouped.map { weekStart, jobs in
            let locationCounts = Dictionary(grouping: jobs) { locationKey(for: $0) }
                .mapValues { $0.count }
                .map { LocationCount(city: $0.key, count: $0.value) }
                .sorted { $0.count > $1.count }
            
            return WeeklyLocationData(
                weekStart: weekStart,
                cities: locationCounts
            )
        }
        .sorted { $0.weekStart < $1.weekStart }

        return Array(sortedWeeks.suffix(12)) // Last 12 weeks
    }
    
    private var topCities: [String] {
        let cityCounts = weeklyLocationData
            .flatMap { $0.cities }
            .reduce(into: [:]) { totals, entry in
                totals[entry.city, default: 0] += entry.count
            }
            .sorted { $0.value > $1.value }
            .prefix(6)
            .map { $0.key }
        
        return Array(cityCounts)
    }
    
    private func colorForCity(_ city: String) -> Color {
        var hasher = Hasher()
        hasher.combine(city.lowercased())
        let hash = abs(hasher.finalize())
        let hue = Double(hash % 360) / 360.0
        return Color(hue: hue, saturation: 0.55, brightness: 0.85)
    }
    
    private func getFilteredJobs() -> [SwiftDataJobApplication] {
        guard let days = timeRange.days else { return jobStore.jobApplications }
        let cutoffDate = Calendar.current.date(byAdding: .day, value: -days, to: Date()) ?? Date()
        return jobStore.jobApplications.filter { $0.dateOfApplication >= cutoffDate }
    }

    private func locationKey(for job: SwiftDataJobApplication) -> String {
        let normalized = job.normalizedLocation?.trimmingCharacters(in: .whitespacesAndNewlines)
        if let normalized, !normalized.isEmpty {
            return normalized
        }
        return job.location
    }
}

struct WeeklyLocationData: Identifiable {
    let weekStart: Date
    let cities: [LocationCount]

    var id: Date { weekStart }
}

// Enhanced Salary Range Chart
struct EnhancedSalaryRangeChartView: View {
    let timeRange: EnhancedStatsView.TimeRange
    @EnvironmentObject var jobStore: JobStore
    
    @State private var selectedRange: String?
    @State private var hoveredRange: String?
    @State private var currencyFilter: SalaryChartCurrencyFilter = .all
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Salary Distribution Analysis")
                .font(.title3)
                .fontWeight(.semibold)

            if supportsCurrencyFilter {
                Picker("Currency", selection: $currencyFilter) {
                    ForEach(SalaryChartCurrencyFilter.allCases) { filter in
                        Text(filter.displayName).tag(filter)
                    }
                }
                .pickerStyle(.segmented)
                .frame(maxWidth: 320)
            }
            
            if salaryRangeData.isEmpty {
                ContentUnavailableView {
                    Label("No Salary Data", systemImage: "dollarsign.circle")
                } description: {
                    Text("No jobs with salary information in this time range")
                }
                .frame(height: 300)
            } else {
                // Main chart
                Chart(salaryRangeData) { range in
                    SectorMark(
                        angle: .value("Count", range.count),
                        innerRadius: .ratio(0.618),
                        angularInset: 1.5
                    )
                    .foregroundStyle(range.color.gradient)
                    .opacity(hoveredRange == nil || hoveredRange == range.range ? 1.0 : 0.5)
                    .cornerRadius(4)
                }
                .frame(height: 300)
                .chartBackground { chartProxy in
                    GeometryReader { geometry in
                        VStack {
                            Text("Average")
                                .font(.caption)
                                .foregroundColor(.secondary)
                            Text(averageSalaryFormatted)
                                .font(.title2.bold())
                        }
                        .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
                    }
                }
                .onContinuousHover { phase in
                    switch phase {
                    case .active:
                        hoveredRange = nil
                    case .ended:
                        hoveredRange = nil
                    }
                }
                
                // Distribution details
                VStack(spacing: 12) {
                    ForEach(salaryRangeData) { range in
                        HStack {
                            Circle()
                                .fill(range.color)
                                .frame(width: 12, height: 12)
                            
                            Text(range.range)
                                .font(.subheadline)
                            
                            Spacer()
                            
                            Text("\(range.count) jobs")
                                .font(.caption)
                                .foregroundColor(.secondary)
                            
                            Text(String(format: "%.0f%%", range.percentage))
                                .font(.caption.monospacedDigit())
                                .foregroundColor(.secondary)
                                .frame(width: 40, alignment: .trailing)
                        }
                        .padding(.vertical, 4)
                        .background(hoveredRange == range.range ? Color.secondary.opacity(0.1) : Color.clear)
                        .cornerRadius(6)
                        .onHover { isHovered in
                            hoveredRange = isHovered ? range.range : nil
                        }
                    }
                }
                .padding()
                .background(Color.secondary.opacity(0.05))
                .cornerRadius(8)
            }
        }
    }
    
    private var salaryRangeData: [SalaryRangeInfo] {
        let jobs = filteredSalaryJobs()
        let total = jobs.count
        
        guard total > 0 else { return [] }
        
        // Define salary ranges with colors
        let ranges: [(min: Int, max: Int, label: String, color: Color)] = [
            (0, 50000, "$0-50k", .blue),
            (50000, 75000, "$50k-75k", .cyan),
            (75000, 100000, "$75k-100k", .green),
            (100000, 125000, "$100k-125k", .yellow),
            (125000, 150000, "$125k-150k", .orange),
            (150000, 200000, "$150k-200k", .red),
            (200000, Int.max, "$200k+", .purple)
        ]
        
        return ranges.compactMap { min, max, label, color in
            let count = jobs.filter { job in
                let salary = job.salaryMax ?? job.salaryMin ?? 0
                return Int(salary) >= Int(min) && Int(salary) < Int(max)
            }.count
            
            guard count > 0 else { return nil }
            
            let percentage = Double(count) / Double(total) * 100
            return SalaryRangeInfo(
                range: label,
                count: count,
                percentage: percentage,
                color: color
            )
        }
    }
    
    private var averageSalaryFormatted: String {
        let salaries = filteredSalaryJobs().compactMap { $0.salaryMax ?? $0.salaryMin }
        guard !salaries.isEmpty else { return "N/A" }
        
        let average = salaries.reduce(0.0, +) / Double(salaries.count)
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.maximumFractionDigits = 0
        formatter.currencySymbol = "$"
        
        if average >= 1000 {
            return "$\(average / 1000)k"
        } else {
            return formatter.string(from: NSNumber(value: average)) ?? "N/A"
        }
    }
    
    private func getFilteredJobs() -> [SwiftDataJobApplication] {
        guard let days = timeRange.days else { return jobStore.jobApplications }
        let cutoffDate = Calendar.current.date(byAdding: .day, value: -days, to: Date()) ?? Date()
        return jobStore.jobApplications.filter { $0.dateOfApplication >= cutoffDate }
    }

    private func filteredSalaryJobs() -> [SwiftDataJobApplication] {
        let jobs = getFilteredJobs().filter { $0.salaryMin != nil || $0.salaryMax != nil }
        if let currency = currencyFilter.currency {
            return jobs.filter { $0.salaryCurrency == currency }
        }
        return jobs
    }

    private var supportsCurrencyFilter: Bool {
        let currencies = Set(getFilteredJobs().map { $0.salaryCurrency })
        return currencies.count > 1
    }
}

struct SalaryRangeInfo: Identifiable {
    let id = UUID()
    let range: String
    let count: Int
    let percentage: Double
    let color: Color
}

private enum SalaryChartCurrencyFilter: String, CaseIterable, Identifiable {
    case all = "All"
    case usd = "USD"
    case rmb = "RMB"

    var id: String { rawValue }

    var displayName: String { rawValue }

    var currency: SalaryCurrency? {
        switch self {
        case .all: return nil
        case .usd: return .usd
        case .rmb: return .rmb
        }
    }
}

// MARK: - TimeRange-based GitHub-Style Chart Wrappers

// Wrapper view for ApplicationsPerDayChartView that accepts TimeRange
struct TimeRangeApplicationsPerDayChartView: View {
    @EnvironmentObject var jobStore: JobStore
    let timeRange: EnhancedStatsView.TimeRange
    @State private var hoveredContribution: Contribution?
    
    private var contributionData: [Contribution] {
        buildContributionData(for: timeRange)
    }
    
    var body: some View {
        ApplicationsPerDayChartView(
            contributionData: contributionData,
            hoveredContribution: $hoveredContribution,
            selectedYear: .constant(-1),
            availableYears: []
        )
    }
    
    private func buildContributionData(for timeRange: EnhancedStatsView.TimeRange) -> [Contribution] {
        let calendar = Calendar.current
        let currentDate = Date()
        
        // Determine date range based on TimeRange
        let endDate = calendar.startOfDay(for: currentDate)
        let startDate: Date
        
        switch timeRange {
        case .week:
            startDate = calendar.date(byAdding: .day, value: -7, to: endDate) ?? endDate
        case .month:
            startDate = calendar.date(byAdding: .month, value: -1, to: endDate) ?? endDate
        case .threeMonths:
            startDate = calendar.date(byAdding: .month, value: -3, to: endDate) ?? endDate
        case .sixMonths:
            startDate = calendar.date(byAdding: .month, value: -6, to: endDate) ?? endDate
        case .year:
            startDate = calendar.date(byAdding: .year, value: -1, to: endDate) ?? endDate
        case .allTime:
            // For "all", use the last 365 days to match GitHub-style grid
            startDate = calendar.date(byAdding: .day, value: -365, to: endDate) ?? endDate
        }
        
        // Create contribution map with all dates initialized to 0
        var contributionMap: [Date: Int] = [:]
        var iterationDate = startDate
        while iterationDate <= endDate {
            contributionMap[iterationDate] = 0
            iterationDate = calendar.date(byAdding: .day, value: 1, to: iterationDate) ?? Date()
        }
        
        // Count applications per day within the time range
        for job in jobStore.jobApplications {
            let jobDate = calendar.startOfDay(for: job.dateOfApplication)
            if jobDate >= startDate && jobDate <= endDate {
                contributionMap[jobDate, default: 0] += 1
            }
        }
        
        // Convert to Contribution array
        return contributionMap.map { Contribution(date: $0.key, count: $0.value) }
            .sorted { $0.date < $1.date }
    }
}

// Wrapper view for YearProgressChartView that accepts TimeRange
struct TimeRangeYearProgressChartView: View {
    @EnvironmentObject var jobStore: JobStore
    let timeRange: EnhancedStatsView.TimeRange
    @State private var hoveredContribution: Contribution?
    
    private var contributionData: [Contribution] {
        buildContributionData(for: timeRange)
    }
    
    private var selectedYear: Int {
        switch timeRange {
        case .year, .allTime:
            return Calendar.current.component(.year, from: Date())
        default:
            return -1 // Use -1 to indicate "recent 12 months"
        }
    }
    
    var body: some View {
        YearProgressChartView(
            contributionData: contributionData,
            selectedYear: selectedYear,
            hoveredContribution: $hoveredContribution
        )
    }
    
    private func buildContributionData(for timeRange: EnhancedStatsView.TimeRange) -> [Contribution] {
        let calendar = Calendar.current
        let currentDate = Date()
        
        // For year progress, we always show 12 months
        let endDate = calendar.startOfDay(for: currentDate)
        let startDate = calendar.date(byAdding: .month, value: -12, to: endDate) ?? endDate
        
        // Create contribution map with all dates initialized to 0
        var contributionMap: [Date: Int] = [:]
        var iterationDate = startDate
        while iterationDate <= endDate {
            contributionMap[iterationDate] = 0
            iterationDate = calendar.date(byAdding: .day, value: 1, to: iterationDate) ?? Date()
        }
        
        // Count applications per day
        for job in jobStore.jobApplications {
            let jobDate = calendar.startOfDay(for: job.dateOfApplication)
            if jobDate >= startDate && jobDate <= endDate {
                contributionMap[jobDate, default: 0] += 1
            }
        }
        
        // Convert to Contribution array
        return contributionMap.map { Contribution(date: $0.key, count: $0.value) }
            .sorted { $0.date < $1.date }
    }
}

// MARK: - Helper Views
// FlowLayout is already defined in SharedComponents.swift

// MARK: - Preview

#Preview {
    EnhancedStatsView()
        .environmentObject(JobStore())
        .environmentObject(KeyboardShortcutManager.shared)
}
