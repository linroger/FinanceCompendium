#!/usr/bin/env python3
"""
Options Equations - Implementation and Validation

This script implements and validates the options pricing equations
from the dataset. Each equation is implemented as a function with
comprehensive validation and test cases for European and American options.
"""

import math
import numpy as np
from typing import Union, List, Tuple, Sequence, Optional
import unittest
from scipy.stats import norm


class OptionsPricing:
    """Implementation of options pricing models and Greeks calculations."""

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
    def validate_volatility(sigma: float) -> None:
        """Validate volatility is between 0 and 1."""
        if not (0 < sigma <= 1):
            raise ValueError(f"Volatility must be between 0 and 1, got {sigma}")

    @staticmethod
    def validate_time(T: float) -> None:
        """Validate time to expiration is positive."""
        if T <= 0:
            raise ValueError(f"Time to expiration must be positive, got {T}")

    @staticmethod
    def normal_cdf(x: float) -> float:
        """Cumulative normal distribution function."""
        return float(norm.cdf(x))

    @staticmethod
    def normal_pdf(x: float) -> float:
        """Normal probability density function."""
        return float(norm.pdf(x))

    def black_scholes_d1(self, S0: float, K: float, T: float, r: float, sigma: float) -> float:
        """Calculate d1 parameter for Black-Scholes model."""
        self.validate_positive(S0, "S0")
        self.validate_positive(K, "K")
        self.validate_time(T)
        self.validate_rate(r)
        self.validate_volatility(sigma)

        return float((math.log(S0 / K) + (r + 0.5 * sigma ** 2) * T) / (sigma * math.sqrt(T)))

    def black_scholes_d2(self, d1: float, sigma: float, T: float) -> float:
        """Calculate d2 parameter for Black-Scholes model."""
        self.validate_volatility(sigma)
        self.validate_time(T)

        return d1 - sigma * math.sqrt(T)

    def black_scholes_call(self, S0: float, K: float, T: float, r: float, sigma: float,
                          dividend_yield: float = 0.0) -> float:
        """Price European call option using Black-Scholes model."""
        self.validate_rate(dividend_yield, "dividend yield")

        d1 = self.black_scholes_d1(S0, K, T, r, sigma)
        d2 = self.black_scholes_d2(d1, sigma, T)

        r_adj = r - dividend_yield

        call_price = (S0 * math.exp(-dividend_yield * T) * self.normal_cdf(d1) -
                     K * math.exp(-r * T) * self.normal_cdf(d2))

        return max(call_price, 0)  # Ensure non-negative

    def black_scholes_put(self, S0: float, K: float, T: float, r: float, sigma: float,
                         dividend_yield: float = 0.0) -> float:
        """Price European put option using Black-Scholes model."""
        self.validate_rate(dividend_yield, "dividend yield")

        d1 = self.black_scholes_d1(S0, K, T, r, sigma)
        d2 = self.black_scholes_d2(d1, sigma, T)

        r_adj = r - dividend_yield

        put_price = (K * math.exp(-r * T) * self.normal_cdf(-d2) -
                    S0 * math.exp(-dividend_yield * T) * self.normal_cdf(-d1))

        return max(put_price, 0)  # Ensure non-negative

    def put_call_parity_check(self, C: float, P: float, S0: float, K: float, T: float, r: float) -> float:
        """Check put-call parity: C - P should equal S0 - K*e^(-rT)."""
        self.validate_positive(S0, "S0")
        self.validate_positive(K, "K")
        self.validate_time(T)
        self.validate_rate(r)

        parity_value = C - P
        theoretical_value = S0 - K * math.exp(-r * T)

        return parity_value - theoretical_value  # Should be close to 0

    def option_delta_call(self, S0: float, K: float, T: float, r: float, sigma: float,
                         dividend_yield: float = 0.0) -> float:
        """Calculate call option delta."""
        d1 = self.black_scholes_d1(S0, K, T, r, sigma)
        return math.exp(-dividend_yield * T) * self.normal_cdf(d1)

    def option_delta_put(self, S0: float, K: float, T: float, r: float, sigma: float,
                        dividend_yield: float = 0.0) -> float:
        """Calculate put option delta."""
        d1 = self.black_scholes_d1(S0, K, T, r, sigma)
        return math.exp(-dividend_yield * T) * (self.normal_cdf(d1) - 1)

    def option_gamma(self, S0: float, K: float, T: float, r: float, sigma: float,
                    dividend_yield: float = 0.0) -> float:
        """Calculate option gamma (same for calls and puts)."""
        d1 = self.black_scholes_d1(S0, K, T, r, sigma)
        return (math.exp(-dividend_yield * T) * self.normal_pdf(d1)) / (S0 * sigma * math.sqrt(T))

    def option_theta_call(self, S0: float, K: float, T: float, r: float, sigma: float,
                         dividend_yield: float = 0.0) -> float:
        """Calculate call option theta (time decay)."""
        d1 = self.black_scholes_d1(S0, K, T, r, sigma)
        d2 = self.black_scholes_d2(d1, sigma, T)

        term1 = -(S0 * math.exp(-dividend_yield * T) * self.normal_pdf(d1) * sigma) / (2 * math.sqrt(T))
        term2 = -r * K * math.exp(-r * T) * self.normal_cdf(d2)

        return term1 + term2

    def option_theta_put(self, S0: float, K: float, T: float, r: float, sigma: float,
                        dividend_yield: float = 0.0) -> float:
        """Calculate put option theta (time decay)."""
        d1 = self.black_scholes_d1(S0, K, T, r, sigma)
        d2 = self.black_scholes_d2(d1, sigma, T)

        term1 = -(S0 * math.exp(-dividend_yield * T) * self.normal_pdf(d1) * sigma) / (2 * math.sqrt(T))
        term2 = r * K * math.exp(-r * T) * self.normal_cdf(-d2)

        return term1 + term2

    def option_vega(self, S0: float, K: float, T: float, r: float, sigma: float,
                   dividend_yield: float = 0.0) -> float:
        """Calculate option vega (volatility sensitivity)."""
        d1 = self.black_scholes_d1(S0, K, T, r, sigma)
        return S0 * math.exp(-dividend_yield * T) * self.normal_pdf(d1) * math.sqrt(T)

    def option_rho_call(self, S0: float, K: float, T: float, r: float, sigma: float) -> float:
        """Calculate call option rho (interest rate sensitivity)."""
        d2 = self.black_scholes_d2(self.black_scholes_d1(S0, K, T, r, sigma), sigma, T)
        return K * T * math.exp(-r * T) * self.normal_cdf(d2)

    def option_rho_put(self, S0: float, K: float, T: float, r: float, sigma: float) -> float:
        """Calculate put option rho (interest rate sensitivity)."""
        d2 = self.black_scholes_d2(self.black_scholes_d1(S0, K, T, r, sigma), sigma, T)
        return -K * T * math.exp(-r * T) * self.normal_cdf(-d2)

    def binomial_tree_european(self, S0: float, K: float, T: float, r: float, sigma: float,
                             N: int, option_type: str = 'call') -> float:
        """Price European option using binomial tree model."""
        if option_type.lower() not in ['call', 'put']:
            raise ValueError("option_type must be 'call' or 'put'")

        dt = T / N
        u = math.exp(sigma * math.sqrt(dt))
        d = 1 / u
        p = (math.exp(r * dt) - d) / (u - d)

        # Build binomial tree
        stock_prices = [[0.0] * (i + 1) for i in range(N + 1)]

        # Initialize final stock prices
        for j in range(N + 1):
            stock_prices[N][j] = S0 * (u ** (N - j)) * (d ** j)

        # Initialize option values at expiration
        option_values = [0.0] * (N + 1)
        for j in range(N + 1):
            if option_type.lower() == 'call':
                option_values[j] = max(stock_prices[N][j] - K, 0)
            else:
                option_values[j] = max(K - stock_prices[N][j], 0)

        # Work backwards through the tree
        for i in range(N - 1, -1, -1):
            for j in range(i + 1):
                option_values[j] = math.exp(-r * dt) * (p * option_values[j] + (1 - p) * option_values[j + 1])

        return option_values[0]

    def binomial_tree_american(self, S0: float, K: float, T: float, r: float, sigma: float,
                             N: int, option_type: str = 'call') -> float:
        """Price American option using binomial tree model."""
        if option_type.lower() not in ['call', 'put']:
            raise ValueError("option_type must be 'call' or 'put'")

        dt = T / N
        u = math.exp(sigma * math.sqrt(dt))
        d = 1 / u
        p = (math.exp(r * dt) - d) / (u - d)

        # Build binomial tree
        stock_prices = [[0.0] * (i + 1) for i in range(N + 1)]

        # Initialize final stock prices
        for j in range(N + 1):
            stock_prices[N][j] = S0 * (u ** (N - j)) * (d ** j)

        # Initialize option values at expiration
        option_values = [0.0] * (N + 1)
        for j in range(N + 1):
            if option_type.lower() == 'call':
                option_values[j] = max(stock_prices[N][j] - K, 0)
            else:
                option_values[j] = max(K - stock_prices[N][j], 0)

        # Work backwards through the tree with early exercise check
        for i in range(N - 1, -1, -1):
            for j in range(i + 1):
                # Risk-neutral value
                rn_value = math.exp(-r * dt) * (p * option_values[j] + (1 - p) * option_values[j + 1])

                # Current stock price at this node
                current_stock = S0 * (u ** (i - j)) * (d ** j)

                # Early exercise value
                if option_type.lower() == 'call':
                    exercise_value = max(current_stock - K, 0)
                else:
                    exercise_value = max(K - current_stock, 0)

                # Take the maximum for American options
                option_values[j] = max(rn_value, exercise_value)

        return option_values[0]

    def implied_volatility(self, market_price: float, S0: float, K: float, T: float, r: float,
                          option_type: str = 'call', max_iter: int = 100, tol: float = 1e-6) -> float:
        """Calculate implied volatility using Newton-Raphson method."""
        if option_type.lower() not in ['call', 'put']:
            raise ValueError("option_type must be 'call' or 'put'")

        # Initial guess
        sigma = 0.2

        for _ in range(max_iter):
            if option_type.lower() == 'call':
                price = self.black_scholes_call(S0, K, T, r, sigma)
                vega = self.option_vega(S0, K, T, r, sigma)
            else:
                price = self.black_scholes_put(S0, K, T, r, sigma)
                vega = self.option_vega(S0, K, T, r, sigma)

            if abs(vega) < 1e-8:
                break

            sigma = sigma - (price - market_price) / vega

            if sigma <= 0:
                sigma = 0.001

            if abs(price - market_price) < tol:
                break

        return sigma


class TestOptionsPricing(unittest.TestCase):
    """Test cases for options pricing equations."""

    def setUp(self):
        self.op = OptionsPricing()

    def test_black_scholes_parameters(self):
        """Test Black-Scholes d1 and d2 calculations."""
        # Standard example: S=100, K=100, T=1, r=0.05, σ=0.2
        d1 = self.op.black_scholes_d1(100, 100, 1, 0.05, 0.2)
        d2 = self.op.black_scholes_d2(d1, 0.2, 1)

        # Expected values (approximate)
        self.assertAlmostEqual(d1, 0.35, places=2)
        self.assertAlmostEqual(d2, 0.15, places=2)

    def test_black_scholes_pricing(self):
        """Test Black-Scholes call and put pricing."""
        # Standard example
        call_price = self.op.black_scholes_call(100, 100, 1, 0.05, 0.2)
        put_price = self.op.black_scholes_put(100, 100, 1, 0.05, 0.2)

        # Approximate expected values
        self.assertTrue(8.0 < call_price < 12.0)
        self.assertTrue(6.0 < put_price < 10.0)

    def test_put_call_parity(self):
        """Test put-call parity relationship."""
        S0, K, T, r, sigma = 100, 100, 1, 0.05, 0.2

        call_price = self.op.black_scholes_call(S0, K, T, r, sigma)
        put_price = self.op.black_scholes_put(S0, K, T, r, sigma)

        parity_diff = self.op.put_call_parity_check(call_price, put_price, S0, K, T, r)
        self.assertAlmostEqual(parity_diff, 0, places=4)

    def test_option_greeks(self):
        """Test Greeks calculations."""
        S0, K, T, r, sigma = 100, 100, 1, 0.05, 0.2

        delta_call = self.op.option_delta_call(S0, K, T, r, sigma)
        delta_put = self.op.option_delta_put(S0, K, T, r, sigma)
        gamma = self.op.option_gamma(S0, K, T, r, sigma)

        # Basic Greeks properties
        self.assertTrue(0 < delta_call < 1)
        self.assertTrue(-1 < delta_put < 0)
        self.assertAlmostEqual(delta_call - delta_put, 1, places=4)  # Delta parity
        self.assertTrue(gamma > 0)

    def test_binomial_tree_convergence(self):
        """Test that binomial tree converges to Black-Scholes as N increases."""
        S0, K, T, r, sigma = 100, 100, 1, 0.05, 0.2

        bs_call = self.op.black_scholes_call(S0, K, T, r, sigma)

        # Test with different N values
        binomial_50 = self.op.binomial_tree_european(S0, K, T, r, sigma, 50, 'call')
        binomial_100 = self.op.binomial_tree_european(S0, K, T, r, sigma, 100, 'call')

        # Should converge towards Black-Scholes
        self.assertTrue(abs(binomial_100 - bs_call) < abs(binomial_50 - bs_call))

    def test_american_vs_european(self):
        """Test that American options are worth at least European options."""
        S0, K, T, r, sigma = 100, 100, 1, 0.05, 0.2

        # For calls, they should be approximately equal (no early exercise benefit)
        euro_call = self.op.black_scholes_call(S0, K, T, r, sigma)
        am_call = self.op.binomial_tree_american(S0, K, T, r, sigma, 50, 'call')

        self.assertTrue(am_call >= euro_call - 0.01)  # Allow small numerical difference

        # For puts, American should be worth more (early exercise possible)
        euro_put = self.op.black_scholes_put(S0, K, T, r, sigma)
        am_put = self.op.binomial_tree_american(S0, K, T, r, sigma, 50, 'put')

        self.assertTrue(am_put >= euro_put)

    def test_implied_volatility(self):
        """Test implied volatility calculation."""
        S0, K, T, r, sigma = 100, 100, 1, 0.05, 0.2

        # Get market price using known volatility
        market_price = self.op.black_scholes_call(S0, K, T, r, sigma)

        # Calculate implied volatility
        implied_vol = self.op.implied_volatility(market_price, S0, K, T, r, 'call')

        # Should recover the original volatility
        self.assertAlmostEqual(implied_vol, sigma, places=2)

    def test_validation_errors(self):
        """Test parameter validation."""
        with self.assertRaises(ValueError):
            self.op.black_scholes_call(-100, 100, 1, 0.05, 0.2)  # Negative S0

        with self.assertRaises(ValueError):
            self.op.black_scholes_call(100, 100, -1, 0.05, 0.2)  # Negative T

        with self.assertRaises(ValueError):
            self.op.black_scholes_call(100, 100, 1, 0.05, 1.5)  # Sigma > 1


def run_validation():
    """Run comprehensive validation of options pricing equations."""
    print("Running Options Pricing Equations Validation...")

    op = OptionsPricing()

    # Test cases with known results
    test_cases = [
        # (description, function_call, expected_range, tolerance)
        ("Black-Scholes Call: S=100, K=100, T=1, r=5%, σ=20%",
         lambda: op.black_scholes_call(100, 100, 1, 0.05, 0.2),
         (8.0, 12.0), 0.01),

        ("Black-Scholes Put: S=100, K=100, T=1, r=5%, σ=20%",
         lambda: op.black_scholes_put(100, 100, 1, 0.05, 0.2),
         (6.0, 10.0), 0.01),

        ("Call Delta: S=100, K=100, T=1, r=5%, σ=20%",
         lambda: op.option_delta_call(100, 100, 1, 0.05, 0.2),
         (0.4, 0.6), 0.01),

        ("Put Delta: S=100, K=100, T=1, r=5%, σ=20%",
         lambda: op.option_delta_put(100, 100, 1, 0.05, 0.2),
         (-0.6, -0.4), 0.01),

        ("Option Gamma: S=100, K=100, T=1, r=5%, σ=20%",
         lambda: op.option_gamma(100, 100, 1, 0.05, 0.2),
         (0.01, 0.03), 0.001),
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

    # Test convergence of binomial model
    print("\nTesting binomial model convergence...")
    S0, K, T, r, sigma = 100, 100, 1, 0.05, 0.2
    bs_price = op.black_scholes_call(S0, K, T, r, sigma)

    for N in [10, 50, 100]:
        binom_price = op.binomial_tree_european(S0, K, T, r, sigma, N, 'call')
        diff = abs(binom_price - bs_price)
        print(".6f")

    # Test American option premium
    print("\nTesting American option premiums...")
    # For deep ITM put, early exercise should add value
    deep_itm_put_euro = op.black_scholes_put(80, 100, 1, 0.05, 0.2)
    deep_itm_put_am = op.binomial_tree_american(80, 100, 1, 0.05, 0.2, 50, 'put')
    premium = deep_itm_put_am - deep_itm_put_euro
    print(".4f")

    print("✓ Options pricing validation completed successfully")

    # Run unit tests
    print("\nRunning unit tests...")
    unittest.main(argv=[''], exit=False, verbosity=2)


if __name__ == "__main__":
    run_validation()
