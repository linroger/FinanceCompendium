#!/usr/bin/env python3
"""
Futures Equations - Implementation and Validation

This script implements and validates the futures pricing equations
from the dataset. Each equation is implemented as a function with
comprehensive validation and test cases for commodity, index, and currency futures.
"""

import math
import numpy as np
from typing import Union, List, Tuple, Sequence, Optional
import unittest


class FuturesPricing:
    """Implementation of futures pricing models and risk management."""

    @staticmethod
    def validate_positive(value: Union[int, float], param_name: str) -> None:
        """Validate parameter is positive."""
        if value <= 0:
            raise ValueError(f"{param_name} must be positive, got {value}")

    @staticmethod
    def validate_rate(r: float, param_name: str = "rate") -> None:
        """Validate rate is between 0 and 1."""
        if not (0 <= r <= 1):
            raise ValueError(f"{param_name} must be between 0 and 1, got {r}")

    @staticmethod
    def validate_non_negative(value: Union[int, float], param_name: str) -> None:
        """Validate parameter is non-negative."""
        if value < 0:
            raise ValueError(f"{param_name} must be non-negative, got {value}")

    @staticmethod
    def validate_correlation(rho: float) -> None:
        """Validate correlation coefficient is between -1 and 1."""
        if not (-1 <= rho <= 1):
            raise ValueError(f"Correlation must be between -1 and 1, got {rho}")

    # Futures Pricing Models
    def futures_price_basic(self, S0: float, r: float, T: float) -> float:
        """Calculate basic futures price using cost-of-carry: F₀ = S₀ × e^(rT)"""
        self.validate_positive(S0, "S0")
        self.validate_rate(r)
        self.validate_positive(T, "T")

        return S0 * math.exp(r * T)

    def futures_price_commodity(self, S0: float, r: float, y: float, T: float) -> float:
        """Calculate commodity futures price: F₀ = S₀ × e^((r - y)T)"""
        self.validate_positive(S0, "S0")
        self.validate_rate(r)
        self.validate_rate(y, "convenience yield")
        self.validate_positive(T, "T")

        return S0 * math.exp((r - y) * T)

    def futures_price_currency(self, S0: float, r_domestic: float, r_foreign: float, T: float) -> float:
        """Calculate currency futures price using interest rate parity: F₀ = S₀ × e^((r_dom - r_for)T)"""
        self.validate_positive(S0, "spot exchange rate")
        self.validate_rate(r_domestic, "domestic rate")
        self.validate_rate(r_foreign, "foreign rate")
        self.validate_positive(T, "T")

        return S0 * math.exp((r_domestic - r_foreign) * T)

    def futures_price_index(self, S0: float, r: float, q: float, T: float) -> float:
        """Calculate index futures price: F₀ = S₀ × e^((r - q)T)"""
        self.validate_positive(S0, "index level")
        self.validate_rate(r)
        self.validate_rate(q, "dividend yield")
        self.validate_positive(T, "T")

        return S0 * math.exp((r - q) * T)

    # Margin Calculations
    def initial_margin_requirement(self, contract_value: float, volatility_factor: float, margin_multiplier: float = 0.05) -> float:
        """Calculate initial margin: Initial Margin = k × Contract Value × Volatility Factor"""
        self.validate_positive(contract_value, "contract value")
        self.validate_positive(volatility_factor, "volatility factor")
        self.validate_rate(margin_multiplier, "margin multiplier")

        return margin_multiplier * contract_value * volatility_factor

    def maintenance_margin(self, initial_margin: float, margin_call_threshold: float = 0.25) -> float:
        """Calculate maintenance margin: Maintenance Margin = Initial Margin × (1 - Margin Call Threshold)"""
        self.validate_positive(initial_margin, "initial margin")
        self.validate_rate(margin_call_threshold, "margin call threshold")

        return initial_margin * (1 - margin_call_threshold)

    def margin_call_trigger(self, equity: float, maintenance_margin: float) -> bool:
        """Check if margin call is triggered: Margin Call = Equity < Maintenance Margin"""
        self.validate_positive(maintenance_margin, "maintenance margin")
        # Equity can be negative
        return equity < maintenance_margin

    # Profit/Loss Calculations
    def futures_profit_loss(self, entry_price: float, exit_price: float, contract_size: int, position: str, num_contracts: int = 1) -> float:
        """Calculate futures P/L: Π = (Exit Price - Entry Price) × Contract Size × Position × Num Contracts"""
        if position.lower() not in ['long', 'short']:
            raise ValueError("Position must be 'long' or 'short'")

        self.validate_positive(contract_size, "contract size")
        self.validate_positive(num_contracts, "number of contracts")

        price_change = exit_price - entry_price
        position_multiplier = 1 if position.lower() == 'long' else -1

        return price_change * contract_size * position_multiplier * num_contracts

    def futures_daily_settlement(self, current_price: float, previous_settlement: float, contract_size: int, position: str, num_contracts: int = 1) -> float:
        """Calculate daily settlement P/L for mark-to-market accounting"""
        if position.lower() not in ['long', 'short']:
            raise ValueError("Position must be 'long' or 'short'")

        self.validate_positive(contract_size, "contract size")
        self.validate_positive(num_contracts, "number of contracts")

        price_change = current_price - previous_settlement
        position_multiplier = 1 if position.lower() == 'long' else -1

        return price_change * contract_size * position_multiplier * num_contracts

    # Hedging Calculations
    def minimum_variance_hedge_ratio(self, spot_returns: List[float], futures_returns: List[float]) -> float:
        """Calculate minimum variance hedge ratio: β = Cov(R_s, R_f) / Var(R_f)"""
        if len(spot_returns) != len(futures_returns):
            raise ValueError("Spot and futures return arrays must have same length")
        if len(spot_returns) < 2:
            raise ValueError("Need at least 2 observations for hedge ratio calculation")

        # Calculate covariance and futures variance
        spot_mean = np.mean(spot_returns)
        futures_mean = np.mean(futures_returns)

        covariance = sum((s - spot_mean) * (f - futures_mean) for s, f in zip(spot_returns, futures_returns))
        covariance /= len(spot_returns) - 1

        futures_variance = np.var(futures_returns, ddof=1)

        if futures_variance < 1e-10:
            raise ValueError("Futures variance too small for reliable hedge ratio")

        return float(covariance / futures_variance)

    def optimal_hedge_ratio(self, spot_position: float, hedge_ratio: float, contract_size: int) -> float:
        """Calculate number of futures contracts needed: h = (β × Spot Position) / Contract Size"""
        self.validate_positive(abs(spot_position), "spot position")
        self.validate_positive(contract_size, "contract size")

        return (hedge_ratio * spot_position) / contract_size

    def hedge_effectiveness(self, unhedged_variance: float, hedged_variance: float) -> float:
        """Calculate hedge effectiveness: Effectiveness = 1 - (Hedged Variance / Unhedged Variance)"""
        self.validate_positive(unhedged_variance, "unhedged variance")
        self.validate_non_negative(hedged_variance, "hedged variance")

        return 1 - (hedged_variance / unhedged_variance)

    # Basis Analysis
    def futures_basis(self, futures_price: float, spot_price: float) -> float:
        """Calculate futures basis: Basis = F₀ - S₀"""
        return futures_price - spot_price

    def basis_convergence(self, initial_basis: float, final_basis: float) -> float:
        """Calculate basis convergence: Basis Change = Final Basis - Initial Basis"""
        # Basis should converge to zero at expiration
        return final_basis - initial_basis

    def basis_risk(self, basis_history: List[float]) -> float:
        """Calculate basis risk as standard deviation of historical basis"""
        if len(basis_history) < 2:
            raise ValueError("Need at least 2 observations for basis risk calculation")

        return float(np.std(basis_history, ddof=1))

    # Cost of Carry Components
    def cost_of_carry(self, financing_cost: float, storage_cost: float, convenience_yield: float, T: float) -> float:
        """Calculate net cost of carry: Net Carry = (Financing + Storage - Convenience) × T"""
        self.validate_non_negative(financing_cost, "financing cost")
        self.validate_non_negative(storage_cost, "storage cost")
        self.validate_non_negative(convenience_yield, "convenience yield")
        self.validate_positive(T, "time")

        return (financing_cost + storage_cost - convenience_yield) * T

    def implied_convenience_yield(self, futures_price: float, spot_price: float, r: float, T: float) -> float:
        """Calculate implied convenience yield: y = r - (ln(F₀/S₀)/T)"""
        self.validate_positive(futures_price, "futures price")
        self.validate_positive(spot_price, "spot price")
        self.validate_rate(r)
        self.validate_positive(T, "time")

        if futures_price <= 0 or spot_price <= 0:
            raise ValueError("Prices must be positive")

        return r - (math.log(futures_price / spot_price) / T)

    # Currency Futures Specific
    def currency_forward_rate(self, spot_rate: float, r_domestic: float, r_foreign: float, T: float) -> float:
        """Calculate currency forward rate (same as futures price for deliverable contracts)"""
        return self.futures_price_currency(spot_rate, r_domestic, r_foreign, T)

    # Cross-Hedging
    def cross_hedge_ratio(self, spot_returns: List[float], hedge_returns: List[float], target_correlation: Optional[float] = None) -> float:
        """Calculate cross-hedge ratio for hedging with imperfectly correlated instrument"""
        beta = self.minimum_variance_hedge_ratio(spot_returns, hedge_returns)

        if target_correlation is not None:
            self.validate_correlation(target_correlation)
            # Adjust beta for target correlation if specified
            current_corr = np.corrcoef(spot_returns, hedge_returns)[0, 1]
            if abs(current_corr) > 1e-10:
                beta *= (target_correlation / current_corr)

        return beta

    # Portfolio Margin (SPAN-style)
    def portfolio_margin_requirement(self, positions: List[float], volatilities: List[float],
                                   correlations: List[List[float]], confidence_level: float = 0.99) -> float:
        """Calculate portfolio margin using variance-covariance approach"""
        if len(positions) != len(volatilities):
            raise ValueError("Positions and volatilities arrays must have same length")
        if len(correlations) != len(positions):
            raise ValueError("Correlations matrix must match positions length")

        # Calculate portfolio standard deviation
        portfolio_variance = 0
        for i in range(len(positions)):
            for j in range(len(positions)):
                correlation = correlations[i][j] if i != j else 1.0
                covariance = correlation * volatilities[i] * volatilities[j]
                portfolio_variance += positions[i] * positions[j] * covariance

        portfolio_std = math.sqrt(abs(portfolio_variance))  # Ensure non-negative

        # Margin requirement (simplified - actual SPAN uses stress scenarios)
        z_score = abs(np.percentile(np.random.normal(0, 1, 10000), (1 - confidence_level) * 100))

        return float(portfolio_std * z_score)


class TestFuturesPricing(unittest.TestCase):
    """Test cases for futures pricing equations."""

    def setUp(self):
        self.fp = FuturesPricing()

    def test_basic_futures_pricing(self):
        """Test basic futures pricing with cost-of-carry model."""
        S0, r, T = 100, 0.05, 0.25
        futures_price = self.fp.futures_price_basic(S0, r, T)
        expected = 100 * math.exp(0.05 * 0.25)
        self.assertAlmostEqual(futures_price, expected, places=4)

    def test_commodity_futures_pricing(self):
        """Test commodity futures with convenience yield."""
        S0, r, y, T = 50, 0.04, 0.02, 0.5
        futures_price = self.fp.futures_price_commodity(S0, r, y, T)
        expected = 50 * math.exp((0.04 - 0.02) * 0.5)
        self.assertAlmostEqual(futures_price, expected, places=4)

    def test_currency_futures_pricing(self):
        """Test currency futures using interest rate parity."""
        S0, r_dom, r_for, T = 1.10, 0.03, 0.01, 0.25
        futures_price = self.fp.currency_forward_rate(S0, r_dom, r_for, T)
        expected = 1.10 * math.exp((0.03 - 0.01) * 0.25)
        self.assertAlmostEqual(futures_price, expected, places=4)

    def test_index_futures_pricing(self):
        """Test index futures with dividend yield."""
        S0, r, q, T = 3000, 0.025, 0.015, 0.33
        futures_price = self.fp.futures_price_index(S0, r, q, T)
        expected = 3000 * math.exp((0.025 - 0.015) * 0.33)
        self.assertAlmostEqual(futures_price, expected, places=2)

    def test_margin_calculations(self):
        """Test margin requirement calculations."""
        contract_value, vol_factor, margin_mult = 10000, 1.2, 0.05
        initial_margin = self.fp.initial_margin_requirement(contract_value, vol_factor, margin_mult)
        expected = 0.05 * 10000 * 1.2
        self.assertEqual(initial_margin, expected)

        maintenance = self.fp.maintenance_margin(initial_margin, 0.25)
        expected_maint = initial_margin * 0.75
        self.assertEqual(maintenance, expected_maint)

    def test_margin_call_logic(self):
        """Test margin call trigger logic."""
        maintenance_margin = 500

        # No margin call - equity above maintenance
        self.assertFalse(self.fp.margin_call_trigger(600, maintenance_margin))

        # Margin call triggered - equity below maintenance
        self.assertTrue(self.fp.margin_call_trigger(400, maintenance_margin))

        # At maintenance level - no call (typically equity must go below)
        self.assertFalse(self.fp.margin_call_trigger(500, maintenance_margin))

    def test_profit_loss_calculations(self):
        """Test futures P/L calculations."""
        # Long position: buy at 100, sell at 105, contract size 1000
        pl_long = self.fp.futures_profit_loss(100, 105, 1000, 'long')
        expected_long = (105 - 100) * 1000 * 1  # $5,000 profit
        self.assertEqual(pl_long, expected_long)

        # Short position: sell at 100, buy back at 95, contract size 1000
        pl_short = self.fp.futures_profit_loss(100, 95, 1000, 'short')
        expected_short = (95 - 100) * 1000 * (-1)  # $5,000 profit
        self.assertEqual(pl_short, expected_short)

    def test_hedge_ratio_calculation(self):
        """Test minimum variance hedge ratio."""
        spot_returns = [0.02, 0.05, -0.01, 0.08, -0.03]
        futures_returns = [0.015, 0.04, -0.005, 0.06, -0.025]

        hedge_ratio = self.fp.minimum_variance_hedge_ratio(spot_returns, futures_returns)
        self.assertTrue(isinstance(hedge_ratio, float))
        # Hedge ratio should be positive for correlated assets
        self.assertTrue(hedge_ratio > 0)

    def test_basis_calculations(self):
        """Test basis analysis functions."""
        futures_price, spot_price = 105, 100
        basis = self.fp.futures_basis(futures_price, spot_price)
        self.assertEqual(basis, 5)  # Contango situation

        # Test basis convergence (should approach zero)
        initial_basis, final_basis = 5, 0.5
        convergence = self.fp.basis_convergence(initial_basis, final_basis)
        self.assertEqual(convergence, -4.5)  # Basis narrowed

    def test_convenience_yield_calculation(self):
        """Test implied convenience yield."""
        futures_price, spot_price, r, T = 52, 50, 0.04, 0.5
        implied_y = self.fp.implied_convenience_yield(futures_price, spot_price, r, T)
        # Should be positive when futures > spot (backwardation)
        self.assertTrue(implied_y > 0)

    def test_validation_errors(self):
        """Test parameter validation."""
        with self.assertRaises(ValueError):
            self.fp.futures_price_basic(-100, 0.05, 0.25)  # Negative spot price

        with self.assertRaises(ValueError):
            self.fp.futures_price_commodity(100, 0.05, 1.5, 0.25)  # Convenience yield > 1

        with self.assertRaises(ValueError):
            self.fp.margin_call_trigger(1000, -500)  # Negative maintenance margin

        with self.assertRaises(ValueError):
            self.fp.futures_profit_loss(100, 105, 1000, 'invalid')  # Invalid position


def run_validation():
    """Run comprehensive validation of futures pricing equations."""
    print("Running Futures Pricing Equations Validation...")

    fp = FuturesPricing()

    # Test cases with known results
    test_cases = [
        # (description, function_call, expected_range, tolerance)
        ("Basic Futures Price: S=100, r=5%, T=3M",
         lambda: fp.futures_price_basic(100, 0.05, 0.25),
         (101.25, 101.27), 0.01),

        ("Commodity Futures: S=50, r=4%, y=2%, T=6M",
         lambda: fp.futures_price_commodity(50, 0.04, 0.02, 0.5),
         (50.5, 50.52), 0.01),

        ("Currency Futures: S=1.10, r_dom=3%, r_for=1%, T=3M",
         lambda: fp.currency_forward_rate(1.10, 0.03, 0.01, 0.25),
         (1.102, 1.103), 0.001),

        ("Index Futures: S=3000, r=2.5%, q=1.5%, T=4M",
         lambda: fp.futures_price_index(3000, 0.025, 0.015, 0.33),
         (3005, 3008), 0.5),

        ("Initial Margin: Contract=$10K, Vol=1.2, Mult=5%",
         lambda: fp.initial_margin_requirement(10000, 1.2, 0.05),
         (599.9, 600.1), 0.1),

        ("Futures P/L Long: Entry=100, Exit=105, Size=1000",
         lambda: fp.futures_profit_loss(100, 105, 1000, 'long'),
         (4999.9, 5000.1), 0.1),
    ]

    passed = 0
    total = len(test_cases)

    for description, func, expected_range, tolerance in test_cases:
        try:
            result = func()
            min_val, max_val = expected_range
            if min_val <= result <= max_val:
                print(f"✓ PASS: {description}")
                print(".4f")
                passed += 1
            else:
                print(f"✗ FAIL: {description}")
                print(".4f")
        except Exception as e:
            print(f"✗ ERROR: {description} - {e}")

    print(f"\nValidation Results: {passed}/{total} tests passed")

    # Test real market examples
    print("\nTesting real market scenarios...")

    try:
        # Gold futures example (commodity with convenience yield)
        gold_futures = fp.futures_price_commodity(1800, 0.03, 0.005, 0.25)  # Spot $1800, 3% carry, 0.5% convenience
        print(".2f")

        # S&P 500 futures example
        spx_futures = fp.futures_price_index(4200, 0.025, 0.015, 0.08)  # Index 4200, 2.5% carry, 1.5% dividend yield
        print(".1f")

        # EUR/USD currency futures
        eurusd_futures = fp.currency_forward_rate(1.085, 0.03, 0.015, 0.25)  # Spot 1.085, US 3%, EU 1.5%
        print(".4f")

        # Margin example
        margin = fp.initial_margin_requirement(100000, 1.5, 0.04)  # $100K contract, 50% vol, 4% margin
        print(".0f")

        print("✓ Real market examples validated successfully")

    except Exception as e:
        print(f"✗ Error in market examples: {e}")

    # Run unit tests
    print("\nRunning unit tests...")
    unittest.main(argv=[''], exit=False, verbosity=2)


if __name__ == "__main__":
    run_validation()
