//
//  SalaryModels.swift
//  CareerKit
//
//  Salary currency/period metadata and conversion helpers
//

import Foundation

enum SalaryCurrency: String, CaseIterable, Codable, Identifiable {
    case usd = "USD"
    case rmb = "RMB"

    var id: String { rawValue }

    var symbol: String {
        switch self {
        case .usd: return "$"
        case .rmb: return "¥"
        }
    }

    var displayName: String {
        switch self {
        case .usd: return "USD"
        case .rmb: return "RMB"
        }
    }
}

enum SalaryPeriod: String, CaseIterable, Codable, Identifiable {
    case yearly = "Yearly"
    case monthly = "Monthly"

    var id: String { rawValue }

    var suffix: String {
        switch self {
        case .yearly: return "yr"
        case .monthly: return "mo"
        }
    }

    var displayName: String {
        switch self {
        case .yearly: return "Yearly"
        case .monthly: return "Monthly"
        }
    }
}

enum SalaryConversion {
    // Approximate FX rate for RMB to USD (1 RMB -> USD).
    static let rmbToUsdRate: Double = 0.14

    static func toUsdYearly(amount: Double, currency: SalaryCurrency, period: SalaryPeriod) -> Double {
        let yearly = period == .monthly ? amount * 12.0 : amount
        switch currency {
        case .usd:
            return yearly
        case .rmb:
            return yearly * rmbToUsdRate
        }
    }

    static func fromUsdYearly(amount: Double, currency: SalaryCurrency, period: SalaryPeriod) -> Double {
        let currencyAdjusted: Double
        switch currency {
        case .usd:
            currencyAdjusted = amount
        case .rmb:
            currencyAdjusted = amount / rmbToUsdRate
        }
        return period == .monthly ? currencyAdjusted / 12.0 : currencyAdjusted
    }
}
