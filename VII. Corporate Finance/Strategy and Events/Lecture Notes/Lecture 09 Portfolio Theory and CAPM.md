---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Markowitz and the CAPM
linter-yaml-title-alias: Markowitz and the CAPM
---

Dave Schabes

January 31, 2023

# Markowitz and the CAPM

- Markowitz provided a model for risk and return, if:

$\circ$  Assets' returns were normally distributed  
$\circ$  Variance of asset returns were constant over time  
○ There were no transaction or other trading costs

- Not literally true, but close for many assets

Distributions generally leptokurtic & skewed  

- Costs exist, but approach zero for large investors

# Stock Portfolios

# - Recall Amazon and Southwest

<table><tr><td></td><td>Amazon</td><td>Southwest</td><td>Portfolio</td></tr><tr><td>Weight (x(i))</td><td>40.00%</td><td>60.00%</td><td>100.00%</td></tr><tr><td>Standard Deviation</td><td>26.60%</td><td>27.90%</td><td>22.05%</td></tr><tr><td>Correlation</td><td>0.26</td><td>0.26</td><td></td></tr></table>

# Amazon and Southwest Portfolio

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/dc401b802261fd95d20a237a4d2e580cb661d8b1bedd547eb9bf8192a0ff6011.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/76fe398ec88e54e7229c1806fd5681a9c88468b8cb737ab8a4974f8b5ce12729.jpg)

# Efficient Portfolios

- The two-stock portfolio above can be extended to any number of stocks (and other financial and real assets):

○ As long as the returns of new assets added to the portfolio are not perfectly correlated with existing ones, there will be a reduction in overall risk  

- The lower the correlation among portfolio assets the greater the risk reduction

# Efficient Portfolios

- Markowitz demonstrated that one can determine a minimum variance portfolio for each return level  
- Conversely, one can create a maximum return portfolio for each level of risk (measured by standard deviation)

These are Efficient Portfolios  
$\circ$  Relies on assumptions stated above

# Efficient Portfolios

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/268d7e859bb5e1866240be0478e05fd61666088519c7a92acdd2d9de7973b091.jpg)

- A, B, and C are Efficient Portfolios  
- Portfolios below the red line are inefficient

Table 8.1 Examples of efficient portfolios chosen from 10 stocks  

<table><tr><td colspan="6">Three Efficient Portfolios—Percentages Allocated to Each Stock (%)</td></tr><tr><td></td><td>Expected Return (%)</td><td>Standard Deviation (%)</td><td>A</td><td>B</td><td>C</td></tr><tr><td>United States Steel</td><td>17.2</td><td>73.0</td><td>0</td><td>0</td><td></td></tr><tr><td>The Travelers Companies</td><td>12.5</td><td>16.4</td><td>0</td><td>30</td><td></td></tr><tr><td>Amazon</td><td>10.0</td><td>26.6</td><td>1</td><td>0</td><td></td></tr><tr><td>Newmont</td><td>18.1</td><td>42.2</td><td>2</td><td>20</td><td>100</td></tr><tr><td>Johnson &amp; Johnson</td><td>8.0</td><td>12.8</td><td>14</td><td>0</td><td></td></tr><tr><td>Consolidated Edison</td><td>11.8</td><td>16.6</td><td>20</td><td>18</td><td></td></tr><tr><td>ExxonMobil</td><td>10.3</td><td>14.0</td><td>30</td><td>0</td><td></td></tr><tr><td>Southwest Airlines</td><td>15.0</td><td>27.9</td><td>5</td><td>21</td><td></td></tr><tr><td>Coca-Cola</td><td>9.4</td><td>12.6</td><td>24</td><td>0</td><td></td></tr><tr><td>Tesla</td><td>16.7</td><td>57.2</td><td>4</td><td>10</td><td></td></tr><tr><td>Expected portfolio return</td><td></td><td></td><td>10.7</td><td>14.0</td><td>18.1</td></tr><tr><td>Portfolio standard deviation</td><td></td><td></td><td>9.3</td><td>12.1</td><td>72.8</td></tr></table>

Note: Standard deviations and the correlations between stock returns were estimated from monthly returns, January 2013-December 2017.

# The Capital Asset Pricing Model

- Sharpe, Lintner and Treynor introduced the CAPM

$\circ$  Realized that if all investors priced assets as Markowitz had proposed and  
○ All investors could borrow and lend at the risk-free rate:

The expected risk premium would be proportional to  $\beta$

- Not true for most individuals – good approximation for large investors and financial intermediaries

# Borrowing and Lending at the Risk Free Rate

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/cc8ce775a668f1fb9322ea37b0d3b271da523bac54c9c10063b362bd40bc3222.jpg)  
Standard deviation  $(\sigma)$

# Creating Leverage: Example

- Suppose:

$$
\begin{array}{l} \circ r _ {f} = 2 \%, r _ {m} = 8 \%, i m p l i e s e q u i t y p r e m i u m = 6 \% \\ \circ \sigma_ {S} = 12 \% \\ \end{array}
$$

○ Investor A desires an  $11 \%$ return; Investor B a  $5 \%$ return

- Each has $1,000,000 in financial assets

Investor A borrows from Investor B

$\circ$  Additional  $3 \%$ return requires borrowing  $\$ 500,000 at 2 \%$ and investing it at  $8 \%$  -- net additional

# Creating Leverage: Example

- B lends $ 500,000 to A

○ Investor A earns:

8% on \(1,000,000 + 6\%\) on \(\$ 500,000  

- A views this as  $11 \%$ on original  $\$ 1$ mm  
11% = 1.5X equity risk premium (2% + 6% + 3%)  
A’s portfolio  $\beta$  is 1.5

$\circ$  Investor B earns:

8% on  $500,000 + 2\% on$  500,000  
B views this as  $5 \%$ on  $\$ 1$ mm  

- $5\% = 0.5 \times$  equity risk premium  $2\% + 3\%$  (6% on  $\$ 500,000$ )  
B's portfolio  $\beta$  is 0.5

# Archegos

- Works in a risk free world, but we do not live in that world  
- Archegos was a "family office" run by Bill Hwang

○ Tiger Asia Management found guilty of insider trading in 2012. Founded by Hwang  
One year later establishes Archegos Capital Management

- By 2020, 10 large banks had $50 billion of credit exposure to Archegos

$\circ$  Archegos assets believed to be approximately $10 billion

# Archegos

- How did banks take on so much exposure?

$\circ$  Total Return Swaps  
○ Full amount Archegos engaged in not revealed to banks

- Prime Brokerage

$\mathrm{O}$  Process trades  
Lend cash and securities

- High fees may outweighed credit and reputational concerns

# Total Return Swaps<sup>1</sup>

# Anatomy of an equity total return swap

A TRS is a bet on the movement of a stock

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/ced549444f2204909029f9e57262c2fc1e43ae0da1f0b82d9bea4d4f8bea41ad.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/719bec740a51f86273cd737b7458ddb6255d1e8093f1b0053258c49f1a973b1f.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/70e5fa3bd48d559e46331c94d69a1035bb5152cd37a9c6592f91fac2074cf3c4.jpg)

This diagram uses a simplified scenario for illustrative purposes, but since these contracts are bespoke, they are often more complex

Source: FT research

$\odot$  FT

# Sharpe Ratio

- Common measure for risk/return tradeoff  
$\circ$  Sharpe ratio  $= \frac{r - r_f}{\sigma} = \frac{\textit{Risk Premium}}{\textit{Standard Deviation}}$  
○ Fraught with issues  
- Very difficult to separate skill from luck

# Implications of the CAPM

- Strictly applied, the CAPM states that the risk premium varies proportionately with  $\beta$ :

$$
r - r _ {f} = \beta (r _ {m} - r _ {f})
$$

- That is, there is a linear relationship between incremental undiversifiable risk and return

○ A number studies of stock prices have shown this to be approximately correct but with many anomalies  
○ A company's appropriate discount rate is its weighted average cost of capital – not solely equity cost

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/01f8ac02becb74e8bbe3558745b4acd61dadf8cae7a16021a7c222c37a089f44.jpg)  
Security Market Line

<table><tr><td colspan="5">Stock Betas and Implied Expected Return</td><td></td></tr><tr><td>Company</td><td>Beta 01/2023</td><td>Expected Return</td><td>Beta 12/2017</td><td>Expected Return</td><td></td></tr><tr><td>US Steel</td><td>2.14</td><td>19.7%</td><td>3.01</td><td>25.8%</td><td></td></tr><tr><td>Amazon</td><td>1.22</td><td>13.2%</td><td>1.47</td><td>15.0%</td><td></td></tr><tr><td>Southwest Airlines</td><td>1.10</td><td>12.4%</td><td>1.35</td><td>14.1%</td><td></td></tr><tr><td>The Travelers Companies</td><td>0.65</td><td>9.2%</td><td>1.26</td><td>13.5%</td><td></td></tr><tr><td>Tesla</td><td>2.02</td><td>18.8%</td><td>0.94</td><td>11.3%</td><td></td></tr><tr><td>ExxonMobil</td><td>1.11</td><td>12.5%</td><td>0.82</td><td>10.4%</td><td></td></tr><tr><td>Johnson &amp; Johnson</td><td>0.56</td><td>8.6%</td><td>0.81</td><td>10.4%</td><td></td></tr><tr><td>Coca-Cola</td><td>0.57</td><td>8.7%</td><td>0.70</td><td>9.6%</td><td></td></tr><tr><td>Consolidated Edison</td><td>0.34</td><td>7.1%</td><td>0.11</td><td>5.5%</td><td></td></tr><tr><td>Newmont Corporation</td><td>0.27</td><td>6.6%</td><td>0.10</td><td>5.4%</td><td></td></tr><tr><td>r(f)</td><td>4.68%</td><td></td><td></td><td></td><td></td></tr><tr><td>r(m)</td><td>11.68%</td><td></td><td></td><td></td><td></td></tr><tr><td colspan="6">Sources: Stock information: www.zacks.com. r(f): US Treasury website one year bill rate. January 27, 2023</td></tr><tr><td colspan="3">Beta based on previous 5 years</td><td></td><td></td><td></td></tr><tr><td colspan="2">Assumes 7% equity risk premium</td><td></td><td></td><td></td><td></td></tr></table>

# Stock Prices and the Securities Market Line

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/4018865b2560c5de33052137a092956cc9c4000a8e5386cbf2bce0f5ad8d56a5.jpg)

- Stocks A and B are said to be overpriced or overvalued  
- A stock above the Market Line is underpriced or undervalued

# Expected Returns

CAPM assumes that investors choose their portfolio's risk level

○ No value to company's diversifying to reduce risk  
Market will not compensate investors for diversifiable risk  
○ Conglomerate craze of the 1960's

- Many of CAPM's assumptions are violated to some degree  
- Many studies demonstrate that CAPM does not fully describe stock return behavior

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/aa6c9c6f6396168e63117ee29b2b6630f909643a1ac7bbac24fd688c963b77ed.jpg)  
Risk Premium by Decile

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/1e1540b6ebf5f74e44c062dfb0cbc51620a0b8d235ea473a0ceda74551f7d856.jpg)

# Risk Premiums

- Actual risk premiums differ from what CAPM predicts

Low risk stocks earn more than predicted  
High risk stocks earn less than predicted

- Potential Issues

Market mis-defined  
$\bigcirc$  Borrowing and lending restrictions  
$\circ$  Equities: positive and negative autocorrelation of returns

# Cumulative Returns

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/a967f9a91ddf2a5a9042bd443529335a25204f06b4d0f02430186bf630a14152.jpg)  
Source: Kenneth French's website, MBA.tuckdartmouth.edu/pages/faculty/ken.french/dataLibrary.html.

- Green line value versus growth, Red line small versus large

# Risk Premiums

- Small versus large companies – CAPM states that only  $\beta$  matters

○ Illiquidity and idiosyncratic risks

- High versus low book-to-market

$\mathrm{O}$  Value versus growth

- Anomalies tend to disappear once discovered

# Arbitrage Pricing Theory (APT)

CAPM assumes investors concerned solely with level and uncertainty of wealth

○ Other factors may weigh in

- Factor-based models

○ APT assumes there are underlying macroeconomic factors that determine a stock's return

$\mathrm{O}$  Plus a random "noise" component

$$
R e t u r n = a + b _ {1} (r _ {f a c t o r 1}) + b _ {2} (r _ {f a c t o r 2}) + \dots + n o i s e
$$

# Arbitrage Pricing Theory

- Equity market return may be only one of several factors  
- APT assumes:
- Investors consider many economic factors, potentially:

Commodity prices  

- Interest rates  
- Currency exchange rates  
- Among others
- Any stock has two sources of risk:

Economic factors  

- Specific (idiosyncratic) factors

# Arbitrage Pricing Theory

- Risk due to economic factors is non-diversifiable (market risk)  
- Risk due to specific factors is potentially fully diversifiable  
- Leads to the following:

$$
\text {E x p e c t e d} = r - r _ {f} =
$$

$$
b _ {1} (r _ {f a c t o r 1} - r _ {f}) + b _ {2} (r _ {f a c t o r 2} - r _ {f}) + \dots + b _ {n} (r _ {f a c t o r n} - r _ {f})
$$

# Arbitrage Pricing Theory

# - Two implications

Diversified portfolio with zero sensitivity to all factors must earn the risk free rate

If offered a higher return, investors would buy the portfolio and borrow at  $r_f$ , earning an arbitrage profit  
If offered a lower return investors would sell the portfolio and lend at  $r_f$ , earning an arbitrage profit

Diversified portfolio with sensitivity to one factor will earn a risk premium varying in direct proportion to its sensitivity to that factor, e.g., market risk

# Comparing CAPM to APT

- Same result if:
- Expected risk premium on each portfolio is proportional to market  $\beta$
- APT does not require a market portfolio to price assets

○ Does not face same measurement problems as CAPM  
$\circ$  However, must determine appropriate underlying factors

# Fama-French Three-factor Model

- Three-factors:

Market Factor  
Firm Size  
Book-to-Market

$$
\begin{array}{l} r - r _ {f} = b _ {m a r k e t} (r _ {m a r k e t r i s k f a c t o r}) + b _ {s i z e} (r _ {s i z e f a c t o r}) \\ + b _ {m a r k e t - t o - b o o k} (r _ {m a r k e t - t o - b o o k f a c t o r}) \\ \end{array}
$$

# Fama-French Three-factor Model

- Estimate the risk premium for each factor

○ Historical risk premium estimates (1926-2017) for each factor:

Market: 7.0%  
Size: 3.2%  
Book-Market  $4.9\%$

Market positive for all industries

Size negative for some industries, e.g., Computers  

- Book-to-market negative for some industries, e.g., food

# Fama-French Three-factor Model²

<table><tr><td></td><td colspan="4">Three-Factor Model</td><td>CAPM</td></tr><tr><td></td><td colspan="5">Factor Sensitivities</td></tr><tr><td></td><td>bmarket</td><td>bsize</td><td>bbook-to-market</td><td>Expected Returna</td><td>Expected Returnb</td></tr><tr><td>Autos</td><td>1.20</td><td>0.54</td><td>0.12</td><td>12.5%</td><td>11.1%</td></tr><tr><td>Banks</td><td>1.09</td><td>0.23</td><td>0.70</td><td>13.6</td><td>10.0</td></tr><tr><td>Chemicals</td><td>1.32</td><td>0.05</td><td>0.18</td><td>12.1</td><td>11.2</td></tr><tr><td>Computers</td><td>1.11</td><td>-0.17</td><td>-0.21</td><td>8.0</td><td>9.2</td></tr><tr><td>Construction</td><td>1.24</td><td>0.75</td><td>-0.07</td><td>12.5</td><td>11.6</td></tr><tr><td>Food</td><td>0.73</td><td>-0.33</td><td>-0.13</td><td>5.2</td><td>6.4</td></tr><tr><td>Oil and gas</td><td>1.03</td><td>0.17</td><td>1.10</td><td>14.9</td><td>9.6</td></tr><tr><td>Pharmaceuticals</td><td>1.07</td><td>0.23</td><td>-0.55</td><td>7.3</td><td>9.4</td></tr><tr><td>Telecoms</td><td>0.95</td><td>-0.25</td><td>0.08</td><td>8.1</td><td>8.1</td></tr><tr><td>Utilities</td><td>0.44</td><td>-0.22</td><td>-0.19</td><td>3.3</td><td>4.5</td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/f5c5959f73d47668ab10388864d2827492a5d17854a7040a4247530ce4826134.jpg)

Winter 2023

Risk and the Cost of Capital
