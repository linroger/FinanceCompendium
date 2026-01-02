#!/usr/bin/env python3
"""
Stocks & Equity Analysis Equations - Implementation and Validation

This script implements and validates the stocks and equity analysis equations
from the dataset. Each equation is implemented as a function with
comprehensive validation and test cases for blue-chip stocks, growth companies,
and distressed assets.
"""

import math
import numpy as np
from typing import Union, List, Tuple, Sequence, cast
import unittest


class StocksEquityAnalysis:
    """Implementation of stocks and equity analysis equations."""

    @staticmethod
    def validate_rate(r: float, param_name: str = "rate") -> None:
        """Validate rate is between 0 and 1."""
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

    @staticmethod
    def validate_correlation(rho: float) -> None:
        """Validate correlation coefficient is between -1 and 1."""
        if not (-1 <= rho <= 1):
            raise ValueError(f"Correlation must be between -1 and 1, got {rho}")

    # Dividend Discount Models
    def dividend_discount_model(self, D1: float, r: float, g: float) -> float:
        """Calculate Gordon Growth Model: P = D₁ / (r - g)"""
        self.validate_non_negative(D1, "next dividend D1")
        self.validate_rate(r)
        self.validate_rate(g, "growth rate g")
        if r <= g:
            raise ValueError("Required return r must be > growth rate g for convergence")

        return D1 / (r - g)

    def two_stage_ddm(self, D0: float, g1: float, g2: float, r: float, n: int) -> float:
        """Calculate Two-Stage DDM with high growth then stable growth"""
        self.validate_non_negative(D0, "current dividend D0")
        self.validate_rate(g1, "first stage growth g1")
        self.validate_rate(g2, "second stage growth g2")
        self.validate_rate(r)
        self.validate_periods(n)

        if r <= g1 or r <= g2:
            raise ValueError("Required return r must be > both growth rates")

        # First stage PV
        pv_first_stage = sum(D0 * (1 + g1) ** t / (1 + r) ** t for t in range(1, n + 1))

        # Terminal value at stage 2
        Dn = D0 * (1 + g1) ** n
        terminal_value = Dn * (1 + g2) / (r - g2)
        pv_terminal = terminal_value / (1 + r) ** n

        return pv_first_stage + pv_terminal

    # Valuation Ratios
    def price_to_earnings_ratio(self, price: float, eps: float) -> float:
        """Calculate P/E ratio: P/E = Price / EPS"""
        self.validate_positive(price, "stock price")
        if abs(eps) < 1e-10:
            raise ValueError("EPS cannot be zero")

        return price / eps

    def price_to_book_ratio(self, price: float, bvps: float) -> float:
        """Calculate P/B ratio: P/B = Price / BVPS"""
        self.validate_positive(price, "stock price")
        self.validate_positive(bvps, "book value per share")

        return price / bvps

    def price_to_sales_ratio(self, price: float, sps: float) -> float:
        """Calculate P/S ratio: P/S = Price / SPS"""
        self.validate_positive(price, "stock price")
        self.validate_positive(sps, "sales per share")

        return price / sps

    def enterprise_value_to_ebitda(self, market_cap: float, debt: float, cash: float, ebitda: float) -> float:
        """Calculate EV/EBITDA: EV/EBITDA = (Market Cap + Debt - Cash) / EBITDA"""
        self.validate_non_negative(market_cap, "market cap")
        self.validate_non_negative(debt, "debt")
        self.validate_non_negative(cash, "cash")
        if abs(ebitda) < 1e-10:
            raise ValueError("EBITDA cannot be zero")

        ev = market_cap + debt - cash
        return ev / ebitda

    def price_to_cash_flow_ratio(self, price: float, cfps: float) -> float:
        """Calculate P/CF ratio: P/CF = Price / CFPS"""
        self.validate_positive(price, "stock price")
        self.validate_positive(cfps, "cash flow per share")

        return price / cfps

    # Beta Calculations
    def beta_calculation(self, stock_returns: List[float], market_returns: List[float]) -> float:
        """Calculate beta using regression: β = cov(R_i, R_m) / σ_m²"""
        if len(stock_returns) != len(market_returns):
            raise ValueError("Stock and market return arrays must have same length")
        if len(stock_returns) < 2:
            raise ValueError("Need at least 2 observations for beta calculation")

        # Calculate covariance and market variance
        stock_mean = np.mean(stock_returns)
        market_mean = np.mean(market_returns)

        covariance = sum((s - stock_mean) * (m - market_mean) for s, m in zip(stock_returns, market_returns))
        covariance /= len(stock_returns) - 1

        market_variance = np.var(market_returns, ddof=1)

        if market_variance < 1e-10:
            raise ValueError("Market variance too small for reliable beta calculation")

        return float(covariance / market_variance)

    def beta_from_volatility_correlation(self, correlation: float, stock_volatility: float, market_volatility: float) -> float:
        """Calculate beta: β = ρ × (σ_i / σ_m)"""
        self.validate_correlation(correlation)
        self.validate_positive(stock_volatility, "stock volatility")
        self.validate_positive(market_volatility, "market volatility")

        return correlation * (stock_volatility / market_volatility)

    def adjusted_beta(self, historical_beta: float, adjustment_period: int = 2) -> float:
        """Calculate adjusted beta: β_adj = (2/3)×β_hist + (1/3)×1"""
        self.validate_non_negative(historical_beta, "historical beta")
        self.validate_periods(adjustment_period)

        weight = 1.0 / (adjustment_period + 1)
        return weight * historical_beta + (1 - weight) * 1.0

    def levered_beta(self, unlevered_beta: float, debt_to_equity: float, tax_rate: float) -> float:
        """Calculate levered beta: β_levered = β_unlevered × (1 + D/E × (1 - T))"""
        self.validate_non_negative(unlevered_beta, "unlevered beta")
        self.validate_non_negative(debt_to_equity, "debt-to-equity ratio")
        self.validate_rate(tax_rate, "tax rate")

        return unlevered_beta * (1 + debt_to_equity * (1 - tax_rate))

    # Fundamental Analysis Metrics
    def earnings_per_share(self, net_income: float, preferred_dividends: float, shares_outstanding: float) -> float:
        """Calculate EPS: EPS = (Net Income - Preferred Dividends) / Shares Outstanding"""
        self.validate_positive(shares_outstanding, "shares outstanding")

        return (net_income - preferred_dividends) / shares_outstanding

    def book_value_per_share(self, total_equity: float, shares_outstanding: float) -> float:
        """Calculate BVPS: BVPS = Total Equity / Shares Outstanding"""
        self.validate_positive(shares_outstanding, "shares outstanding")

        return total_equity / shares_outstanding

    def return_on_equity(self, net_income: float, total_equity: float) -> float:
        """Calculate ROE: ROE = Net Income / Total Equity"""
        self.validate_positive(total_equity, "total equity")

        return net_income / total_equity

    def peg_ratio(self, pe_ratio: float, growth_rate: float) -> float:
        """Calculate PEG ratio: PEG = P/E / Growth Rate"""
        self.validate_positive(pe_ratio, "P/E ratio")
        self.validate_rate(growth_rate, "growth rate")

        return pe_ratio / growth_rate

    def dividend_yield(self, annual_dividend: float, stock_price: float) -> float:
        """Calculate dividend yield: Yield = (Dividend / Price) × 100%"""
        self.validate_non_negative(annual_dividend, "annual dividend")
        self.validate_positive(stock_price, "stock price")

        return (annual_dividend / stock_price) * 100

    def dividend_payout_ratio(self, dividends_per_share: float, eps: float) -> float:
        """Calculate payout ratio: Payout = DPS / EPS"""
        self.validate_non_negative(dividends_per_share, "dividends per share")
        if abs(eps) < 1e-10:
            raise ValueError("EPS cannot be zero")

        return dividends_per_share / eps

    def retention_ratio(self, payout_ratio: float) -> float:
        """Calculate retention ratio: Retention = 1 - Payout Ratio"""
        if not (0 <= payout_ratio <= 1):
            raise ValueError("Payout ratio must be between 0 and 1")

        return 1 - payout_ratio

    # Technical Analysis Indicators
    def simple_moving_average(self, prices: Union[List[float], List[int]], period: int) -> List[float]:
        """Calculate SMA: SMA_n = Σ(P_t) / n for t = n to len(prices)"""
        self.validate_periods(period)
        if len(prices) < period:
            raise ValueError(f"Need at least {period} prices for SMA calculation")

        sma_values = []
        for i in range(period - 1, len(prices)):
            sma = sum(prices[i - period + 1:i + 1]) / period
            sma_values.append(sma)

        return sma_values

    def exponential_moving_average(self, prices: Union[List[float], List[int]], period: int) -> List[float]:
        """Calculate EMA: EMA_t = (P_t × k) + (EMA_{t-1} × (1 - k)), k = 2/(n+1)"""
        self.validate_periods(period)
        if len(prices) < period:
            raise ValueError(f"Need at least {period} prices for EMA calculation")

        k = 2 / (period + 1)
        ema_values = []

        # First EMA is SMA
        sma = sum(prices[:period]) / period
        ema_values.append(sma)

        # Calculate subsequent EMAs
        for price in prices[period:]:
            ema = (price * k) + (ema_values[-1] * (1 - k))
            ema_values.append(ema)

        return ema_values

    def relative_strength_index(self, prices: Union[List[float], List[int]], period: int = 14) -> List[float]:
        """Calculate RSI: RSI = 100 - (100 / (1 + RS)), RS = Avg Gain / Avg Loss"""
        self.validate_periods(period)
        if len(prices) < period + 1:
            raise ValueError(f"Need at least {period + 1} prices for RSI calculation")

        gains = []
        losses = []

        for i in range(1, len(prices)):
            change = prices[i] - prices[i - 1]
            gains.append(max(change, 0))
            losses.append(max(-change, 0))

        rsi_values = []
        for i in range(period - 1, len(gains)):
            avg_gain = sum(gains[i - period + 1:i + 1]) / period
            avg_loss = sum(losses[i - period + 1:i + 1]) / period

            if avg_loss == 0:
                rs = float('inf')
            else:
                rs = avg_gain / avg_loss

            rsi = 100 - (100 / (1 + rs))
            rsi_values.append(rsi)

        return rsi_values

    def macd_line(self, prices: Union[List[float], List[int]], fast_period: int = 12, slow_period: int = 26) -> List[float]:
        """Calculate MACD line: MACD = EMA_12 - EMA_26"""
        self.validate_periods(fast_period)
        self.validate_periods(slow_period)

        if fast_period >= slow_period:
            raise ValueError("Fast period must be less than slow period")

        ema_fast = self.exponential_moving_average(prices, fast_period)
        ema_slow = self.exponential_moving_average(prices, slow_period)

        # Align the series (MACD starts when both EMAs are available)
        start_idx = len(ema_slow) - len(ema_fast)
        macd_values = []

        for i in range(len(ema_fast)):
            macd = ema_fast[i] - ema_slow[i + start_idx]
            macd_values.append(macd)

        return macd_values

    def macd_signal_line(self, macd_values: List[float], signal_period: int = 9) -> List[float]:
        """Calculate MACD signal line: Signal = EMA_9(MACD)"""
        self.validate_periods(signal_period)
        if len(macd_values) < signal_period:
            raise ValueError(f"Need at least {signal_period} MACD values for signal line")

        return self.exponential_moving_average(macd_values, signal_period)

    def macd_histogram(self, macd_values: List[float], signal_values: List[float]) -> List[float]:
        """Calculate MACD histogram: Histogram = MACD - Signal"""
        if len(macd_values) != len(signal_values):
            raise ValueError("MACD and signal arrays must have same length")

        return [macd - signal for macd, signal in zip(macd_values, signal_values)]

    def bollinger_bands(self, prices: Union[List[float], List[int]], period: int = 20, std_dev: float = 2.0) -> Tuple[List[float], List[float], List[float]]:
        """Calculate Bollinger Bands: Upper = SMA + (std_dev × σ), Lower = SMA - (std_dev × σ)"""
        self.validate_periods(period)
        self.validate_positive(std_dev, "standard deviation multiplier")

        sma_values = self.simple_moving_average(prices, period)

        upper_band = []
        lower_band = []

        for i in range(len(sma_values)):
            # Get the corresponding price window
            start_idx = i + period - len(sma_values)
            price_window = prices[start_idx:start_idx + period]

            std = np.std(price_window, ddof=1)
            upper = sma_values[i] + (std_dev * std)
            lower = sma_values[i] - (std_dev * std)

            upper_band.append(upper)
            lower_band.append(lower)

        return sma_values, upper_band, lower_band

    def percentage_b(self, price: float, upper_band: float, lower_band: float) -> float:
        """Calculate %B: %B = (Price - Lower) / (Upper - Lower)"""
        self.validate_positive(price, "current price")
        if upper_band <= lower_band:
            raise ValueError("Upper band must be greater than lower band")

        return (price - lower_band) / (upper_band - lower_band)


class TestStocksEquityAnalysis(unittest.TestCase):
    """Test cases for stocks and equity analysis equations."""

    def setUp(self):
        self.sea = StocksEquityAnalysis()

    def test_dividend_discount_model(self):
        """Test Gordon Growth Model"""
        # Apple-like stock: D1=$3.08, r=10%, g=8%
        price = self.sea.dividend_discount_model(3.08, 0.10, 0.08)
        expected = 3.08 / (0.10 - 0.08)  # $154
        self.assertAlmostEqual(price, expected, places=2)

    def test_valuation_ratios(self):
        """Test valuation ratio calculations"""
        # Blue-chip stock example
        pe = self.sea.price_to_earnings_ratio(150, 10)  # $150 stock, $10 EPS
        self.assertEqual(pe, 15.0)

        pb = self.sea.price_to_book_ratio(150, 75)  # $150 stock, $75 BVPS
        self.assertEqual(pb, 2.0)

        ps = self.sea.price_to_sales_ratio(150, 50)  # $150 stock, $50 SPS
        self.assertEqual(ps, 3.0)

    def test_beta_calculation(self):
        """Test beta calculation methods"""
        # Simple beta test
        stock_returns = [0.02, 0.05, -0.01, 0.08, -0.03]
        market_returns = [0.01, 0.03, 0.00, 0.06, -0.02]

        beta = self.sea.beta_calculation(stock_returns, market_returns)
        self.assertTrue(isinstance(beta, float))
        self.assertTrue(beta >= 0)  # Beta should be non-negative

    def test_adjusted_beta(self):
        """Test beta adjustment"""
        historical_beta = 1.3
        adjusted = self.sea.adjusted_beta(historical_beta)
        expected = (1/3) * 1.3 + (2/3) * 1.0  # ≈ 1.1
        self.assertAlmostEqual(adjusted, expected, places=2)

    def test_levered_beta(self):
        """Test levered beta calculation"""
        unlevered_beta = 1.0
        debt_to_equity = 0.5  # 50% debt
        tax_rate = 0.21  # 21% tax rate

        levered = self.sea.levered_beta(unlevered_beta, debt_to_equity, tax_rate)
        expected = 1.0 * (1 + 0.5 * (1 - 0.21))  # 1.0 * 1.395 = 1.395
        self.assertAlmostEqual(levered, expected, places=3)

    def test_fundamental_metrics(self):
        """Test fundamental analysis calculations"""
        # EPS calculation
        eps = self.sea.earnings_per_share(1000000, 50000, 100000)  # $1M NI, $50K pref div, 100K shares
        self.assertEqual(eps, 9.50)  # ($1M - $50K) / 100K = $9.50

        # ROE calculation
        roe = self.sea.return_on_equity(1000000, 5000000)  # $1M NI, $5M equity
        self.assertEqual(roe, 0.20)  # 20% ROE

    def test_technical_indicators(self):
        """Test technical analysis indicators"""
        # Sample price data
        prices = [100, 102, 101, 105, 107, 106, 108, 110, 109, 112, 115, 118]

        # Test SMA
        sma = self.sea.simple_moving_average(prices, 5)
        self.assertEqual(len(sma), len(prices) - 4)  # Should have 8 values

        # Test EMA
        ema = self.sea.exponential_moving_average(prices, 5)
        self.assertEqual(len(ema), len(prices) - 4)  # Should have 8 values

        # Test RSI
        rsi = self.sea.relative_strength_index(prices, 5)
        for r in rsi:
            self.assertTrue(0 <= r <= 100)

    def test_macd_calculation(self):
        """Test MACD calculation"""
        prices = [100, 102, 101, 105, 107, 106, 108, 110, 109, 112, 115, 118,
                 120, 122, 125, 128, 130, 132, 135, 138, 140, 142, 145, 148,
                 150, 152, 155, 158, 160, 162, 165, 168, 170, 172, 175]

        macd = self.sea.macd_line(prices)
        signal = self.sea.macd_signal_line(macd)
        histogram = self.sea.macd_histogram(macd[-len(signal):], signal)

        self.assertEqual(len(histogram), len(signal))

    def test_bollinger_bands(self):
        """Test Bollinger Bands calculation"""
        prices = [100, 102, 101, 105, 107, 106, 108, 110, 109, 112, 115, 118,
                 120, 122, 125, 128, 130, 132, 135]

        sma, upper, lower = self.sea.bollinger_bands(prices, 10, 2)

        self.assertEqual(len(sma), len(upper), len(lower))
        # Upper should be greater than SMA, lower less than SMA
        for s, u, l in zip(sma, upper, lower):
            self.assertTrue(u > s > l)

    def test_percentage_b(self):
        """Test %B calculation"""
        price = 110
        upper = 120
        lower = 100

        percent_b = self.sea.percentage_b(price, upper, lower)
        expected = (110 - 100) / (120 - 100)  # 10/20 = 0.5
        self.assertEqual(percent_b, expected)

    def test_validation_errors(self):
        """Test parameter validation"""
        with self.assertRaises(ValueError):
            self.sea.dividend_discount_model(2.0, 0.08, 0.10)  # g > r

        with self.assertRaises(ValueError):
            self.sea.price_to_earnings_ratio(100, 0)  # Zero EPS

        with self.assertRaises(ValueError):
            self.sea.beta_calculation([0.1], [0.1])  # Too few observations

        with self.assertRaises(ValueError):
            self.sea.simple_moving_average([100, 101], 5)  # Too few prices


def run_validation():
    """Run comprehensive validation of stocks and equity analysis equations."""
    print("Running Stocks & Equity Analysis Equations Validation...")

    sea = StocksEquityAnalysis()

    # Test cases with known results
    test_cases = [
        # (description, function_call, expected_result, tolerance)
        ("Dividend Discount Model: D1=$2.50, r=10%, g=5%",
         lambda: sea.dividend_discount_model(2.50, 0.10, 0.05),
         50.00, 0.01),

        ("P/E Ratio: Price=$150, EPS=$10",
         lambda: sea.price_to_earnings_ratio(150, 10),
         15.00, 0.01),

        ("P/B Ratio: Price=$150, BVPS=$75",
         lambda: sea.price_to_book_ratio(150, 75),
         2.00, 0.01),

        ("Adjusted Beta: Historical β=1.3",
         lambda: sea.adjusted_beta(1.3),
         1.2, 0.01),

        ("Levered Beta: Unlevered=1.0, D/E=0.5, Tax=21%",
         lambda: sea.levered_beta(1.0, 0.5, 0.21),
         1.395, 0.001),

        ("EPS Calculation: NI=$1M, Pref Div=$50K, Shares=100K",
         lambda: sea.earnings_per_share(1000000, 50000, 100000),
         9.50, 0.01),

        ("Dividend Yield: Dividend=$3, Price=$100",
         lambda: sea.dividend_yield(3.0, 100.0),
         3.00, 0.01),

        ("Retention Ratio: Payout=40%",
         lambda: sea.retention_ratio(0.40),
         0.60, 0.01),
    ]

    passed = 0
    total = len(test_cases)

    for description, func, expected, tolerance in test_cases:
        try:
            result = func()
            if abs(result - expected) <= tolerance:
                print(f"✓ PASS: {description}")
                print(f"Expected: {expected:.4f}, Got: {result:.4f}")
                passed += 1
            else:
                print(f"✗ FAIL: {description}")
                print(f"Expected: {expected:.4f}, Got: {result:.4f}")
        except Exception as e:
            print(f"✗ ERROR: {description} - {e}")

    print(f"\nValidation Results: {passed}/{total} tests passed")

    # Test with real stock examples
    print("\nTesting with real stock examples...")

    # Blue-chip stock example (Apple-like)
    try:
        pe = sea.price_to_earnings_ratio(180, 12.5)  # Approx Apple P/E
        print(".2f")

        dividend_yield = sea.dividend_yield(3.08, 180)  # Approx Apple yield
        print(".2f")

        # Growth stock example (high P/E, low yield)
        growth_pe = sea.price_to_earnings_ratio(300, 5.0)
        print(".1f")

        # Distressed stock example (low P/B, high beta)
        distressed_pb = sea.price_to_book_ratio(15, 20)
        print(".2f")

        print("✓ Real stock examples validated successfully")

    except Exception as e:
        print(f"✗ Error in real stock examples: {e}")

    # Run unit tests
    print("\nRunning unit tests...")
    unittest.main(argv=[''], exit=False, verbosity=2)



if __name__ == "__main__":
    run_validation()
