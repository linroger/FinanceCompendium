#!/usr/bin/env python3
"""
Bonds and Fixed Income Equations - Implementation and Validation

This script implements and validates the bonds and fixed income equations
from the dataset. Each equation is implemented as a function with
comprehensive validation and test cases.
"""

import math
import numpy as np
from typing import List, Union, Tuple, Optional, Sequence
import unittest

class BondsFixedIncome:
    """Implementation of bonds and fixed income equations."""

    @staticmethod
    def validate_positive(value: Union[int, float], param_name: str) -> None:
        """Validate parameter is positive."""
        if value <= 0:
            raise ValueError(f"{param_name} must be positive, got {value}")

    @staticmethod
    def validate_non_negative(value: Union[int, float], param_name: str) -> None:
        """Validate parameter is non-negative."""
        if value < 0:
            raise ValueError(f"{param_name} must be non-negative, got {value}")

    @staticmethod
    def validate_rate(r: float, param_name: str = "rate") -> None:
        """Validate interest/discount rate is between 0 and 1."""
        if not (0 <= r <= 1):
            raise ValueError(f"{param_name} must be between 0 and 1, got {r}")

    @staticmethod
    def validate_periods(n: int) -> None:
        """Validate number of periods is positive integer."""
        if not isinstance(n, int) or n <= 0:
            raise ValueError(f"Number of periods must be positive integer, got {n}")

    def zero_coupon_bond_price(self, F: float, y: float, n: int) -> float:
        """Calculate zero-coupon bond price: P = F / (1 + y)^n"""
        self.validate_positive(F, "face value F")
        self.validate_rate(y)
        self.validate_periods(n)

        return F / (1 + y) ** n

    def coupon_bond_price(self, F: float, C: float, y: float, n: int) -> float:
        """Calculate coupon bond price: P = Σ[C/(1+y)^t] + F/(1+y)^n"""
        self.validate_positive(F, "face value F")
        self.validate_non_negative(C, "coupon payment C")
        self.validate_rate(y)
        self.validate_periods(n)

        price = 0
        for t in range(1, n + 1):
            price += C / (1 + y) ** t
        price += F / (1 + y) ** n

        return price

    def semi_annual_coupon_bond_price(self, F: float, c: float, y: float, n_years: int) -> float:
        """Calculate semi-annual coupon bond price"""
        self.validate_positive(F, "face value F")
        self.validate_rate(c, "coupon rate c")
        self.validate_rate(y)
        self.validate_periods(n_years)

        C = c * F / 2  # Semi-annual coupon payment
        y_sa = y / 2   # Semi-annual yield
        n_periods = n_years * 2

        price = 0
        for t in range(1, n_periods + 1):
            price += C / (1 + y_sa) ** t
        price += F / (1 + y_sa) ** n_periods

        return price

    def current_yield(self, C: float, P: float) -> float:
        """Calculate current yield: CY = C / P"""
        self.validate_non_negative(C, "coupon payment C")
        self.validate_positive(P, "bond price P")

        return C / P

    def macaulay_duration(self, cash_flows: Sequence[Union[int, float]], y: float, P: float) -> float:
        """Calculate Macaulay duration: D_mac = Σ[t * CF_t / (1+y)^t] / P"""
        self.validate_rate(y)
        self.validate_positive(P, "bond price P")

        if len(cash_flows) == 0:
            raise ValueError("Must provide cash flows")

        duration = 0
        pv_cf = 0

        for t, cf in enumerate(cash_flows, 1):
            pv = cf / (1 + y) ** t
            duration += t * pv
            pv_cf += pv

        if pv_cf == 0:
            raise ValueError("Present value of cash flows cannot be zero")

        return duration / pv_cf

    def modified_duration(self, D_mac: float, y: float, m: int = 1) -> float:
        """Calculate modified duration: D_mod = D_mac / (1 + y/m)"""
        self.validate_non_negative(D_mac, "Macaulay duration D_mac")
        self.validate_rate(y)
        self.validate_periods(m)

        return D_mac / (1 + y / m)

    def convexity(self, cash_flows: Sequence[Union[int, float]], y: float, P: float) -> float:
        """Calculate convexity: C = Σ[t(t+1) * CF_t / (1+y)^(t+2)] / P"""
        self.validate_rate(y)
        self.validate_positive(P, "bond price P")

        if len(cash_flows) == 0:
            raise ValueError("Must provide cash flows")

        convexity = 0

        for t, cf in enumerate(cash_flows, 1):
            convexity += t * (t + 1) * cf / (1 + y) ** (t + 2)

        return convexity / P

    def effective_duration(self, P_minus: float, P_plus: float, P_0: float, delta_y: float) -> float:
        """Calculate effective duration: D_eff = (P- - P+) / (2 * P0 * Δy)"""
        self.validate_positive(P_minus, "P_minus")
        self.validate_positive(P_plus, "P_plus")
        self.validate_positive(P_0, "P_0")
        self.validate_positive(delta_y, "delta_y")

        return (P_minus - P_plus) / (2 * P_0 * delta_y)

    def effective_convexity(self, P_minus: float, P_plus: float, P_0: float, delta_y: float) -> float:
        """Calculate effective convexity: C_eff = (P- + P+) / (P0 * (Δy)^2)"""
        self.validate_positive(P_minus, "P_minus")
        self.validate_positive(P_plus, "P_plus")
        self.validate_positive(P_0, "P_0")
        self.validate_positive(delta_y, "delta_y")

        return (P_minus + P_plus - 2 * P_0) / (P_0 * delta_y ** 2)

    def price_change_approximation(self, P: float, D_mod: float, C: float, delta_y: float) -> float:
        """Calculate price change approximation: ΔP/P ≈ -D_mod * Δy + 0.5 * C * (Δy)^2"""
        self.validate_positive(P, "bond price P")
        self.validate_non_negative(D_mod, "modified duration D_mod")
        self.validate_non_negative(C, "convexity C")

        return -D_mod * delta_y + 0.5 * C * delta_y ** 2

    def bootstrap_spot_rate(self, P: float, F: float, C: float, prev_spot_rates: List[float], maturity: int) -> float:
        """Bootstrap spot rate from bond price using previous spot rates"""
        self.validate_positive(P, "bond price P")
        self.validate_positive(F, "face value F")
        self.validate_non_negative(C, "coupon C")
        self.validate_periods(maturity)

        if maturity < len(prev_spot_rates) + 1:
            raise ValueError("Maturity must be greater than number of previous spot rates")

        # Calculate PV of known cash flows
        pv_known = 0
        for t in range(1, maturity):
            if t <= len(prev_spot_rates):
                pv_known += C / (1 + prev_spot_rates[t-1]) ** t

        # Solve for the new spot rate
        remaining_cf = C + F
        target_pv = P - pv_known

        if target_pv <= 0:
            raise ValueError("Invalid bond price for bootstrapping")

        # Binary search for spot rate
        low, high = 0.0001, 0.50  # 0.01% to 50%
        tolerance = 1e-8

        for _ in range(100):
            mid = (low + high) / 2
            pv_calc = remaining_cf / (1 + mid) ** maturity

            if abs(pv_calc - target_pv) < tolerance:
                return mid
            elif pv_calc > target_pv:
                low = mid
            else:
                high = mid

        return (low + high) / 2

    def forward_rate(self, y_t: float, y_t1: float) -> float:
        """Calculate forward rate: f_{t,t+1} = [(1+y_{t+1})^{t+1} / (1+y_t)^t] - 1"""
        self.validate_rate(y_t, "y_t")
        self.validate_rate(y_t1, "y_t1")

        return ((1 + y_t1) ** (len([y_t]) + 1) / (1 + y_t) ** len([y_t])) - 1

    def z_spread(self, y: float, y_spot: float) -> float:
        """Calculate Z-spread: Z = y - y_spot"""
        self.validate_rate(y)
        self.validate_rate(y_spot, "y_spot")

        return y - y_spot

    def dv01(self, D_mod: float, P: float) -> float:
        """Calculate DV01: DV01 = -D_mod * P * 0.0001"""
        self.validate_non_negative(D_mod, "modified duration D_mod")
        self.validate_positive(P, "bond price P")

        return -D_mod * P * 0.0001

    def clean_price(self, dirty_price: float, accrued: float) -> float:
        """Calculate clean price: Clean = Dirty - Accrued"""
        self.validate_positive(dirty_price, "dirty price")
        self.validate_non_negative(accrued, "accrued interest")

        return dirty_price - accrued

    def dirty_price(self, clean_price: float, accrued: float) -> float:
        """Calculate dirty price: Dirty = Clean + Accrued"""
        self.validate_positive(clean_price, "clean price")
        self.validate_non_negative(accrued, "accrued interest")

        return clean_price + accrued

    def accrued_interest(self, C: float, d: int, D: int) -> float:
        """Calculate accrued interest: Accrued = C * (d / D)"""
        self.validate_non_negative(C, "coupon payment C")
        if not (0 <= d <= D):
            raise ValueError(f"Days since last coupon d must be between 0 and D, got d={d}, D={D}")
        self.validate_positive(D, "days in coupon period D")

        return C * (d / D)

    def bond_equivalent_yield(self, F: float, P: float, d: int) -> float:
        """Calculate bond equivalent yield: BEY = (F/P - 1) * (365/d)"""
        self.validate_positive(F, "face value F")
        self.validate_positive(P, "purchase price P")
        self.validate_positive(d, "days to maturity d")

        return ((F / P) - 1) * (365 / d)

    def discount_yield(self, F: float, P: float, d: int) -> float:
        """Calculate discount yield: DY = (F - P)/F * (360/d)"""
        self.validate_positive(F, "face value F")
        self.validate_positive(P, "purchase price P")
        self.validate_positive(d, "days to maturity d")

        return ((F - P) / F) * (360 / d)


class TestBondsFixedIncome(unittest.TestCase):
    """Test cases for bonds and fixed income equations."""

    def setUp(self):
        self.bonds = BondsFixedIncome()

    def test_zero_coupon_bond_price(self):
        """Test zero-coupon bond price calculation"""
        F, y, n = 1000, 0.05, 5
        price = self.bonds.zero_coupon_bond_price(F, y, n)
        expected = F / (1 + y) ** n
        self.assertAlmostEqual(price, expected, places=2)

    def test_coupon_bond_price(self):
        """Test coupon bond price calculation"""
        F, C, y, n = 1000, 50, 0.05, 10
        price = self.bonds.coupon_bond_price(F, C, y, n)

        # Manual calculation
        expected = 0
        for t in range(1, n + 1):
            expected += C / (1 + y) ** t
        expected += F / (1 + y) ** n

        self.assertAlmostEqual(price, expected, places=2)

    def test_semi_annual_coupon_bond(self):
        """Test semi-annual coupon bond pricing"""
        F, c, y, n_years = 1000, 0.06, 0.05, 5
        price = self.bonds.semi_annual_coupon_bond_price(F, c, y, n_years)

        # Should be greater than par for premium bond (6% coupon > 5% yield)
        self.assertTrue(price > F)

    def test_duration_calculations(self):
        """Test duration calculations"""
        # 5-year bond, 5% coupon, 5% yield
        cash_flows = [50, 50, 50, 50, 50, 1050]  # Semi-annual coupons + principal
        y, P = 0.05, 1000  # Par bond

        D_mac = self.bonds.macaulay_duration(cash_flows, y, P)
        D_mod = self.bonds.modified_duration(D_mac, y, 1)

        # For par bond, duration should be close to maturity
        self.assertTrue(4 < D_mac < 6)  # Between 4-6 years
        self.assertTrue(D_mod < D_mac)  # Modified < Macaulay

    def test_convexity(self):
        """Test convexity calculation"""
        cash_flows = [50, 50, 50, 50, 50, 1050]
        y, P = 0.05, 1000

        C = self.bonds.convexity(cash_flows, y, P)
        self.assertTrue(C > 0)  # Convexity should be positive

    def test_price_change_approximation(self):
        """Test price change approximation using duration and convexity"""
        P, D_mod, C, delta_y = 1000, 5.0, 50, 0.01

        percent_change = self.bonds.price_change_approximation(P, D_mod, C, delta_y)
        self.assertTrue(percent_change < 0)  # Price should decrease with higher yield

    def test_accrued_interest(self):
        """Test accrued interest calculation"""
        C, d, D = 60, 45, 180  # $60 annual coupon, 45 days since last coupon, 180 day period
        accrued = self.bonds.accrued_interest(C, d, D)
        expected = C * (d / D)
        self.assertAlmostEqual(accrued, expected, places=2)

    def test_clean_dirty_price_conversion(self):
        """Test clean and dirty price conversions"""
        clean_price, accrued = 1010, 12.5
        dirty_price = self.bonds.dirty_price(clean_price, accrued)
        clean_back = self.bonds.clean_price(dirty_price, accrued)

        self.assertAlmostEqual(dirty_price, clean_price + accrued, places=2)
        self.assertAlmostEqual(clean_back, clean_price, places=2)

    def test_dv01_calculation(self):
        """Test DV01 calculation"""
        D_mod, P = 7.5, 1000  # 7.5 year modified duration, $1000 bond
        dv01 = self.bonds.dv01(D_mod, P)
        expected = -D_mod * P * 0.0001
        self.assertAlmostEqual(dv01, expected, places=2)
        self.assertTrue(dv01 < 0)  # DV01 should be negative

    def test_validation_errors(self):
        """Test parameter validation"""
        with self.assertRaises(ValueError):
            self.bonds.zero_coupon_bond_price(-1000, 0.05, 5)  # Negative face value

        with self.assertRaises(ValueError):
            self.bonds.coupon_bond_price(1000, 50, 1.5, 10)  # Yield > 1

        with self.assertRaises(ValueError):
            self.bonds.macaulay_duration([], 0.05, 1000)  # Empty cash flows

        with self.assertRaises(ValueError):
            self.bonds.accrued_interest(60, 200, 180)  # Days > period


def run_validation():
    """Run comprehensive validation of bond equations."""
    print("Running Bonds and Fixed Income Equations Validation...")

    bonds = BondsFixedIncome()

    # Test cases with known results
    test_cases = [
        # (description, function_call, expected_result, tolerance)
        ("Zero-coupon bond: $1000 face, 5% yield, 5 years",
         lambda: bonds.zero_coupon_bond_price(1000, 0.05, 5),
         783.53, 0.01),

        ("Coupon bond: $1000 face, $50 coupon, 5% yield, 10 years",
         lambda: bonds.coupon_bond_price(1000, 50, 0.05, 10),
         1000.00, 0.01),  # Should be par

        ("Current yield: $50 coupon, $1000 price",
         lambda: bonds.current_yield(50, 1000),
         0.05, 0.001),

        ("DV01: 7.5 year duration, $1000 bond",
         lambda: bonds.dv01(7.5, 1000),
         -0.75, 0.001),

        ("Accrued interest: $60 coupon, 45 days, 180 day period",
         lambda: bonds.accrued_interest(60, 45, 180),
         15.0, 0.01),
    ]

    passed = 0
    total = len(test_cases)

    for description, func, expected, tolerance in test_cases:
        try:
            result = func()
            if abs(result - expected) <= tolerance:
                print(f"✓ PASS: {description}")
                print(".4f")
                passed += 1
            else:
                print(f"✗ FAIL: {description}")
                print(".4f")
        except Exception as e:
            print(f"✗ ERROR: {description} - {e}")

    print(f"\nValidation Results: {passed}/{total} tests passed")

    # Run unit tests
    print("\nRunning unit tests...")
    unittest.main(argv=[''], exit=False, verbosity=2)


if __name__ == "__main__":
    run_validation()