#!/usr/bin/env python3
"""
Basic Finance Math Equations - Implementation and Validation

This script implements and validates the basic finance math equations
from the dataset. Each equation is implemented as a function with
comprehensive validation and test cases.
"""

import math
import numpy as np
from typing import Union, List, Tuple, Sequence
import unittest

class BasicFinanceMath:
    """Implementation of basic finance mathematics equations."""

    @staticmethod
    def validate_rate(r: float, param_name: str = "rate") -> None:
        """Validate interest/discount rate is between 0 and 1."""
        if not (0 <= r <= 1):
            raise ValueError(f"{param_name} must be between 0 and 1, got {r}")

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
    def validate_periods(n: int) -> None:
        """Validate number of periods is positive integer."""
        if not isinstance(n, int) or n <= 0:
            raise ValueError(f"Number of periods must be positive integer, got {n}")

    def future_value_single_payment(self, PV: float, r: float, n: int) -> float:
        """Calculate future value of single payment: FV = PV × (1 + r)^n"""
        self.validate_positive(PV, "PV")
        self.validate_rate(r)
        self.validate_periods(n)

        return PV * (1 + r) ** n

    def present_value_single_payment(self, FV: float, r: float, n: int) -> float:
        """Calculate present value of single payment: PV = FV / (1 + r)^n"""
        self.validate_positive(FV, "FV")
        self.validate_rate(r)
        self.validate_periods(n)

        return FV / (1 + r) ** n

    def compound_interest(self, P: float, r: float, m: int, t: float) -> float:
        """Calculate compound interest: A = P × (1 + r/m)^(m×t)"""
        self.validate_positive(P, "P")
        self.validate_rate(r)
        self.validate_periods(m)
        self.validate_non_negative(t, "t")

        return P * (1 + r / m) ** (m * t)

    def simple_interest(self, P: float, r: float, t: float) -> float:
        """Calculate simple interest: I = P × r × t"""
        self.validate_positive(P, "P")
        self.validate_rate(r)
        self.validate_non_negative(t, "t")

        return P * r * t

    def effective_annual_rate(self, r: float, m: int) -> float:
        """Calculate effective annual rate: EAR = (1 + r/m)^m - 1"""
        self.validate_rate(r)
        self.validate_periods(m)

        return (1 + r / m) ** m - 1

    def future_value_ordinary_annuity(self, PMT: float, r: float, n: int) -> float:
        """Calculate future value of ordinary annuity: FVA = PMT × [(1+r)^n - 1]/r"""
        self.validate_rate(r)
        self.validate_periods(n)

        return PMT * ((1 + r) ** n - 1) / r

    def present_value_ordinary_annuity(self, PMT: float, r: float, n: int) -> float:
        """Calculate present value of ordinary annuity: PVA = PMT × [1 - (1+r)^(-n)]/r"""
        self.validate_rate(r)
        self.validate_periods(n)

        return PMT * (1 - (1 + r) ** (-n)) / r

    def future_value_annuity_due(self, PMT: float, r: float, n: int) -> float:
        """Calculate future value of annuity due: FVAD = FVA × (1 + r)"""
        fva = self.future_value_ordinary_annuity(PMT, r, n)
        return fva * (1 + r)

    def present_value_annuity_due(self, PMT: float, r: float, n: int) -> float:
        """Calculate present value of annuity due: PVAD = PVA × (1 + r)"""
        pva = self.present_value_ordinary_annuity(PMT, r, n)
        return pva * (1 + r)

    def perpetuity_present_value(self, PMT: float, r: float) -> float:
        """Calculate present value of perpetuity: PV∞ = PMT / r"""
        self.validate_rate(r)

        return PMT / r

    def growing_annuity_present_value(self, PMT: float, r: float, g: float, n: int) -> float:
        """Calculate present value of growing annuity: PVGA = PMT × [1 - ((1+g)/(1+r))^n]/(r-g)"""
        self.validate_rate(r)
        self.validate_rate(g, "growth rate g")
        if abs(r - g) < 1e-10:
            raise ValueError("Discount rate r cannot equal growth rate g")
        self.validate_periods(n)

        return PMT * (1 - ((1 + g) / (1 + r)) ** n) / (r - g)

    def growing_perpetuity_present_value(self, PMT: float, r: float, g: float) -> float:
        """Calculate present value of growing perpetuity: PVG∞ = PMT / (r - g)"""
        self.validate_rate(r)
        self.validate_rate(g, "growth rate g")
        if r <= g:
            raise ValueError("Discount rate r must be greater than growth rate g for perpetuity convergence")

        return PMT / (r - g)

    def loan_payment(self, PV: float, r: float, n: int) -> float:
        """Calculate loan payment: PMT = PV × [r(1+r)^n]/[(1+r)^n - 1]"""
        self.validate_positive(PV, "loan amount PV")
        self.validate_rate(r)
        self.validate_periods(n)

        return PV * (r * (1 + r) ** n) / ((1 + r) ** n - 1)

    def discount_factor(self, r: float, n: int) -> float:
        """Calculate discount factor: DF = 1/(1+r)^n"""
        self.validate_rate(r)
        self.validate_periods(n)

        return 1 / (1 + r) ** n

    def annuity_factor(self, r: float, n: int) -> float:
        """Calculate annuity factor: AF = [1 - (1+r)^(-n)]/r"""
        self.validate_rate(r)
        self.validate_periods(n)

        return (1 - (1 + r) ** (-n)) / r

    def net_present_value(self, cash_flows: Sequence[Union[int, float]], r: float) -> float:
        """Calculate NPV: NPV = Σ[CF_t / (1+r)^t] for t=1 to n"""
        self.validate_rate(r)
        if len(cash_flows) < 1:
            raise ValueError("Must provide at least one cash flow")

        npv = 0
        for t, cf in enumerate(cash_flows, 1):
            npv += cf / (1 + r) ** t

        return npv

    def internal_rate_of_return(self, cash_flows: List[float], initial_guess: float = 0.1) -> float:
        """Calculate IRR using numerical method (Newton-Raphson approximation)"""
        if len(cash_flows) < 1:
            raise ValueError("Must provide at least one cash flow")

        # Simple iterative approach for IRR
        irr = initial_guess
        max_iterations = 100
        tolerance = 1e-6

        for _ in range(max_iterations):
            npv = self.net_present_value(cash_flows, irr)
            dnpv_dr = 0

            for t, cf in enumerate(cash_flows, 1):
                dnpv_dr -= t * cf / (1 + irr) ** (t + 1)

            if abs(dnpv_dr) < tolerance:
                break

            irr = irr - npv / dnpv_dr

            if abs(npv) < tolerance:
                break

        return irr

    def profitability_index(self, cash_flows: List[float], r: float, initial_investment: float) -> float:
        """Calculate profitability index: PI = PV(CF) / Initial Investment"""
        pv_cf = self.net_present_value(cash_flows, r)
        self.validate_positive(initial_investment, "initial investment")

        return pv_cf / initial_investment

    def capm_expected_return(self, rf: float, beta: float, rm: float) -> float:
        """Calculate CAPM expected return: E[R] = rf + β(rm - rf)"""
        self.validate_rate(rf, "risk-free rate rf")
        self.validate_non_negative(beta, "beta")
        self.validate_rate(rm, "market return rm")
        if rm < rf:
            raise ValueError("Market return rm must be >= risk-free rate rf")

        return rf + beta * (rm - rf)

    def dividend_discount_model(self, D1: float, r: float, g: float) -> float:
        """Calculate DDM stock price: P = D1 / (r - g)"""
        self.validate_non_negative(D1, "next dividend D1")
        self.validate_rate(r)
        self.validate_rate(g, "growth rate g")
        if r <= g:
            raise ValueError("Required return r must be > growth rate g")

        return D1 / (r - g)

    def zero_coupon_bond_price(self, F: float, r: float, n: int) -> float:
        """Calculate zero-coupon bond price: ZCB = F / (1+r)^n"""
        self.validate_positive(F, "face value F")
        self.validate_rate(r)
        self.validate_periods(n)

        return F / (1 + r) ** n


class TestBasicFinanceMath(unittest.TestCase):
    """Test cases for basic finance math equations."""

    def setUp(self):
        self.fm = BasicFinanceMath()

    def test_future_value_single_payment(self):
        """Test FV = PV × (1+r)^n"""
        fv = self.fm.future_value_single_payment(1000, 0.05, 10)
        expected = 1000 * (1.05 ** 10)
        self.assertAlmostEqual(fv, expected, places=2)

    def test_present_value_single_payment(self):
        """Test PV = FV / (1+r)^n"""
        pv = self.fm.present_value_single_payment(1628.89, 0.05, 10)
        self.assertAlmostEqual(pv, 1000, places=2)

    def test_compound_interest(self):
        """Test compound interest calculation"""
        # $1000 at 5% for 10 years compounded annually
        amount = self.fm.compound_interest(1000, 0.05, 1, 10)
        expected = 1000 * (1.05 ** 10)
        self.assertAlmostEqual(amount, expected, places=2)

    def test_effective_annual_rate(self):
        """Test EAR calculation"""
        ear = self.fm.effective_annual_rate(0.05, 12)  # 5% nominal, monthly compounding
        expected = (1 + 0.05/12) ** 12 - 1
        self.assertAlmostEqual(ear, expected, places=4)

    def test_annuity_calculations(self):
        """Test ordinary annuity calculations"""
        pmt = 100
        r = 0.05
        n = 10

        pva = self.fm.present_value_ordinary_annuity(pmt, r, n)
        fva = self.fm.future_value_ordinary_annuity(pmt, r, n)

        # Verify relationship: FVA = PVA × (1+r)^n
        expected_fva = pva * (1 + r) ** n
        self.assertAlmostEqual(fva, expected_fva, places=2)

    def test_annuity_due_vs_ordinary(self):
        """Test annuity due vs ordinary annuity"""
        pmt = 1000
        r = 0.06
        n = 5

        pva_ordinary = self.fm.present_value_ordinary_annuity(pmt, r, n)
        pva_due = self.fm.present_value_annuity_due(pmt, r, n)

        # Annuity due should be higher by factor (1+r)
        expected_due = pva_ordinary * (1 + r)
        self.assertAlmostEqual(pva_due, expected_due, places=2)

    def test_perpetuity(self):
        """Test perpetuity calculation"""
        pmt = 100
        r = 0.05
        pv = self.fm.perpetuity_present_value(pmt, r)
        expected = pmt / r
        self.assertAlmostEqual(pv, expected, places=2)

    def test_loan_payment(self):
        """Test loan payment calculation"""
        loan_amount = 100000
        annual_rate = 0.06
        years = 30
        monthly_rate = annual_rate / 12
        months = years * 12

        monthly_payment = self.fm.loan_payment(loan_amount, monthly_rate, months)
        # Should be approximately $600 for a $100k 30-year mortgage at 6%
        self.assertTrue(590 < monthly_payment < 610)

    def test_net_present_value(self):
        """Test NPV calculation"""
        cash_flows = [100, 200, 300, 400, 500]  # Years 1-5
        r = 0.10

        npv = self.fm.net_present_value(cash_flows, r)

        # Manual calculation
        expected = sum(cf / (1 + r) ** t for t, cf in enumerate(cash_flows, 1))
        self.assertAlmostEqual(npv, expected, places=2)

    def test_capm(self):
        """Test CAPM calculation"""
        rf = 0.03  # 3% risk-free rate
        beta = 1.2  # Stock beta
        rm = 0.08  # 8% market return

        expected_return = self.fm.capm_expected_return(rf, beta, rm)
        expected = rf + beta * (rm - rf)
        self.assertAlmostEqual(expected_return, expected, places=4)

    def test_dividend_discount_model(self):
        """Test DDM calculation"""
        D1 = 2.0  # $2 dividend next year
        r = 0.10  # 10% required return
        g = 0.03  # 3% growth rate

        price = self.fm.dividend_discount_model(D1, r, g)
        expected = D1 / (r - g)
        self.assertAlmostEqual(price, expected, places=2)

    def test_validation_errors(self):
        """Test parameter validation"""
        with self.assertRaises(ValueError):
            self.fm.future_value_single_payment(-1000, 0.05, 10)  # Negative PV

        with self.assertRaises(ValueError):
            self.fm.present_value_single_payment(1000, 1.5, 10)  # Rate > 1

        with self.assertRaises(ValueError):
            self.fm.discount_factor(0.05, 0)  # Zero periods

        with self.assertRaises(ValueError):
            self.fm.growing_perpetuity_present_value(100, 0.05, 0.06)  # g > r


def run_validation():
    """Run comprehensive validation of all equations."""
    print("Running Basic Finance Math Equations Validation...")

    fm = BasicFinanceMath()

    # Test cases with known results
    test_cases = [
        # (description, function_call, expected_result, tolerance)
        ("Future Value: $1000 at 5% for 10 years",
         lambda: fm.future_value_single_payment(1000, 0.05, 10),
         1628.89, 0.01),

        ("Present Value: $1628.89 at 5% for 10 years",
         lambda: fm.present_value_single_payment(1628.89, 0.05, 10),
         1000.00, 0.01),

        ("Compound Interest: $1000 at 5% for 10 years",
         lambda: fm.compound_interest(1000, 0.05, 1, 10),
         1628.89, 0.01),

        ("Effective Annual Rate: 5% nominal, monthly compounding",
         lambda: fm.effective_annual_rate(0.05, 12),
         0.05116, 0.0001),

        ("Perpetuity: $100 annual payment at 5%",
         lambda: fm.perpetuity_present_value(100, 0.05),
         2000.00, 0.01),

        ("CAPM: β=1.2, rf=3%, rm=8%",
         lambda: fm.capm_expected_return(0.03, 1.2, 0.08),
         0.09, 0.001),
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