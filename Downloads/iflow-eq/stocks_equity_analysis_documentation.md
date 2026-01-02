# Stocks & Equity Analysis Equations - Documentation

## Overview
Stock and equity analysis encompasses fundamental valuation models, technical indicators, and risk assessment tools used to evaluate publicly traded companies. These equations help investors determine fair stock prices, assess company health, and make informed investment decisions across different market conditions.

## Key Concepts

### Fundamental Analysis
Evaluation of a company's intrinsic value based on financial statements, management quality, competitive advantages, and market position. Focuses on understanding what a business is worth.

### Technical Analysis
Study of price movements and trading volumes to identify patterns and predict future price behavior. Uses historical data to forecast market trends and entry/exit points.

### Valuation Models
Mathematical frameworks for determining a stock's fair market value, ranging from simple multiples to complex discounted cash flow models.

### Risk Assessment
Measurement of investment risk through beta calculations, volatility analysis, and correlation studies.

## Core Equations and Applications

### 1. Dividend Discount Model (Gordon Growth)
**Equation**: `P = \frac{D_{1}}{r - g}`

**Applications**:
- Valuing mature, dividend-paying companies
- Determining intrinsic value for income-focused investors
- Assessing blue-chip stock fair values

**Example**: Valuing a stable utility company
- Expected dividend next year: $3.08 per share
- Required return: 10%
- Dividend growth rate: 3%
- Fair value = $3.08 / (0.10 - 0.03) = $44.00 per share

**Key Insight**: Simple model assumes constant dividend growth forever, best for mature companies with stable dividend policies.

### 2. Two-Stage Dividend Discount Model
**Equation**: `P = \sum_{t=1}^{n} \frac{D_{0} \times (1 + g_{1})^{t}}{(1 + r)^{t}} + \frac{D_{0} \times (1 + g_{1})^{n} \times (1 + g_{2})}{(r - g_{2}) \times (1 + r)^{n}}`

**Applications**:
- Valuing growth companies transitioning to maturity
- Companies with temporary high growth periods
- Assessing fair value for companies in different life cycle stages

**Example**: Valuing a technology company
- Current dividend: $0.50 per share
- High growth period (5 years): 15% annual growth
- Stable growth period: 4% annual growth
- Required return: 12%
- Fair value accounts for both growth phases

**Key Insight**: Captures reality that companies don't grow at constant rates forever.

### 3. Price-to-Earnings Ratio
**Equation**: `P/E = \frac{P}{EPS}`

**Applications**:
- Comparing valuation across similar companies
- Assessing relative expensiveness of stocks
- Identifying potential over/under-valuation

**Example**: Comparing two retail stocks
- Company A: Stock price $50, EPS $2.50 → P/E = 20x
- Company B: Stock price $75, EPS $3.00 → P/E = 25x
- Company A appears cheaper relative to earnings

**Key Insight**: Higher P/E suggests investors expect stronger future growth or have greater confidence in the company.

### 4. Price-to-Book Ratio
**Equation**: `P/B = \frac{P}{BVPS}`

**Applications**:
- Valuing asset-heavy companies (banks, REITs)
- Assessing financial health and asset efficiency
- Identifying potential value opportunities

**Example**: Banking sector comparison
- Bank A: Stock price $80, Book value per share $100 → P/B = 0.8x
- Bank B: Stock price $120, Book value per share $90 → P/B = 1.33x
- Bank A trades below book value, potentially undervalued

**Key Insight**: P/B below 1.0 suggests market values company below its accounting worth.

### 5. Enterprise Value to EBITDA
**Equation**: `EV/EBITDA = \frac{Market Cap + Debt - Cash}{EBITDA}`

**Applications**:
- Valuing companies with different capital structures
- Comparing enterprise values across industries
- Assessing operational efficiency and profitability

**Example**: Manufacturing company valuation
- Market Cap: $2 billion
- Debt: $500 million
- Cash: $200 million
- EBITDA: $400 million
- EV/EBITDA = ($2B + $500M - $200M) / $400M = 7.5x

**Key Insight**: EV/EBITDA normalizes for capital structure differences, useful for M&A analysis.

### 6. Beta Calculation
**Equation**: `β = \frac{\cov(R_{i}, R_{m})}{\sigma_{m}^{2}}`

**Applications**:
- Measuring systematic risk of individual stocks
- Portfolio risk assessment and diversification
- Capital Asset Pricing Model (CAPM) inputs

**Example**: Technology stock beta calculation
- Stock returns: [2%, 5%, -1%, 8%, -3%]
- Market returns: [1%, 3%, 0%, 6%, -2%]
- Calculated beta = 1.15 (15% more volatile than market)

**Key Insight**: Beta > 1 indicates higher volatility than market, requiring higher expected returns.

### 7. Adjusted Beta
**Equation**: `β_adj = \frac{2}{3} × β_hist + \frac{1}{3} × 1`

**Applications**:
- Smoothing historical beta toward market average
- Reducing impact of short-term volatility
- Long-term risk assessment

**Example**: Volatile stock beta adjustment
- Historical beta: 1.8 (very volatile)
- Adjusted beta: (2/3 × 1.8) + (1/3 × 1) = 1.53
- More stable risk estimate for long-term investors

**Key Insight**: Mean reversion - extreme betas tend to move toward 1.0 over time.

### 8. Earnings Per Share
**Equation**: `EPS = \frac{Net Income - Preferred Dividends}{Weighted Average Shares Outstanding}`

**Applications**:
- Measuring profitability per share
- Comparing earnings across companies
- Dividend and valuation calculations

**Example**: EPS calculation
- Net Income: $10 million
- Preferred Dividends: $1 million
- Weighted Average Shares: 8 million
- EPS = ($10M - $1M) / 8M = $1.125 per share

**Key Insight**: Available earnings to common shareholders after preferred dividends.

### 9. Return on Equity
**Equation**: `ROE = \frac{Net Income}{Total Shareholders' Equity}`

**Applications**:
- Assessing management efficiency in using equity capital
- Comparing profitability across companies
- Growth and dividend policy analysis

**Example**: ROE comparison
- Company A: Net Income $5M, Equity $25M → ROE = 20%
- Company B: Net Income $8M, Equity $50M → ROE = 16%
- Company A more efficiently uses equity capital

**Key Insight**: Measures how well company generates profits from shareholders' investments.

### 10. Dividend Yield
**Equation**: `Dividend Yield = \frac{Dividends per Share}{Stock Price} × 100\%`

**Applications**:
- Income investing and yield-focused strategies
- Assessing dividend sustainability
- Comparing income potential across stocks

**Example**: Yield calculation
- Annual dividend: $2.40 per share
- Stock price: $60.00
- Yield = ($2.40 / $60.00) × 100% = 4.0%

**Key Insight**: Higher yields may indicate undervaluation but could signal dividend risk.

### 11. Simple Moving Average
**Equation**: `SMA_n = \frac{\sum_{i=1}^{n} P_{t-i+1}}{n}`

**Applications**:
- Trend identification and support/resistance levels
- Moving average crossover strategies
- Smoothing price data to reduce noise

**Example**: 50-day SMA calculation
- Recent prices: [100, 102, 101, 105, 107, ...]
- 50-day SMA provides smoothed trend line
- Price above SMA suggests uptrend

**Key Insight**: Simple average gives equal weight to all periods in the window.

### 12. Exponential Moving Average
**Equation**: `EMA_t = (P_t × k) + (EMA_{t-1} × (1 - k)), k = \frac{2}{n+1}`

**Applications**:
- More responsive trend following than simple moving averages
- MACD calculations and momentum strategies
- Recent price emphasis in technical analysis

**Example**: 20-day EMA
- Gives more weight to recent prices
- Responds faster to price changes than SMA
- k = 2/(20+1) = 0.095 (9.5% weight to new price)

**Key Insight**: Recent prices have exponentially greater influence on the average.

### 13. Relative Strength Index
**Equation**: `RSI = 100 - \frac{100}{1 + RS}, RS = \frac{Average Gain}{Average Loss}`

**Applications**:
- Momentum and overbought/oversold conditions
- Divergence analysis with price
- Reversal signal generation

**Example**: RSI interpretation
- RSI > 70: Potentially overbought (sell signal)
- RSI < 30: Potentially oversold (buy signal)
- RSI = 65: Neutral to bullish momentum

**Key Insight**: Oscillates between 0-100, identifying potential reversal points.

### 14. MACD Line
**Equation**: `MACD = EMA_{12} - EMA_{26}`

**Applications**:
- Trend following and momentum analysis
- Signal line crossovers for entry/exit signals
- Divergence identification

**Example**: MACD calculation
- EMA(12) = 50.25, EMA(26) = 49.80
- MACD = 50.25 - 49.80 = 0.45
- Positive MACD indicates bullish momentum

**Key Insight**: Difference between fast and slow EMAs shows momentum direction and strength.

### 15. Bollinger Bands
**Equation**: `Upper = SMA_{20} + (2 × σ), Lower = SMA_{20} - (2 × σ)`

**Applications**:
- Volatility measurement and price targets
- Mean reversion strategies
- Breakout identification

**Example**: Bollinger Band analysis
- Price touches upper band: Potential overbought
- Price touches lower band: Potential oversold
- Bands expand during high volatility periods

**Key Insight**: Standard deviation bands around moving average show volatility and potential reversal zones.

## Practical Applications by Stock Type

### Blue-Chip Stocks (Stable, Large-Cap)
- **Primary Models**: Dividend Discount Model, P/E, P/B ratios
- **Focus**: Dividend yield, ROE, payout ratios
- **Risk Assessment**: Low beta, stable fundamentals

### Growth Stocks (High-Growth, Volatile)
- **Primary Models**: Multi-stage DDM, PEG ratio, EV/EBITDA
- **Focus**: EPS growth, reinvestment ratios
- **Risk Assessment**: High beta, volatility measures

### Distressed Stocks (Financially Troubled)
- **Primary Models**: Price-to-Book (value vs assets), liquidation analysis
- **Focus**: Book value, debt ratios, cash flow coverage
- **Risk Assessment**: High beta, credit risk analysis

### Technical Trading Applications
- **Trend Following**: Moving averages for direction
- **Momentum**: RSI and MACD for entry timing
- **Volatility**: Bollinger Bands for range trading
- **Risk Management**: Stop losses based on technical levels

## Integration with Portfolio Theory

Stock analysis equations integrate with portfolio theory through:
- **Beta**: Systematic risk contribution to portfolio
- **Expected Returns**: CAPM integration with market models
- **Correlation**: Diversification benefits analysis
- **Sharpe Ratios**: Risk-adjusted performance metrics

This comprehensive framework enables investors to make informed decisions across different market conditions and investment objectives.</content>
<parameter name="filePath">stocks_equity_analysis_documentation.md