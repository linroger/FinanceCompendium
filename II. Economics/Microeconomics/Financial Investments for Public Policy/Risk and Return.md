---
title: Risk and Return: Past and Prologue
parent_directory: Financial Investments for Public Policy
formatted: 2025-12-21 11:00:00 AM
formatter_model: claude-sonnet-4
cli-tool: opencode
primary_tags:
  - risk return relationship
  - investment performance measurement
  - inflation adjusted returns
secondary_tags:
  - holding period returns
  - arithmetic vs geometric averages
  - dollar weighted returns
  - nominal vs real rates
  - fisher equation
cssclasses: academia
---

# RISK AND RETURN: PAST AND PROLOGUE

## Rates of Return

- Holding-period return (HPR)—the rate of return that is earned on an investment over a particular period of time.

$$
\mathrm{HPR} = \frac{\text{Ending value - Beginning value + Cash received}}{\text{Beginning value}}
$$

The equation provides the ex post (historical) return for an investment. If the investment is a stock, the return can be computed as follows:

$$
\mathrm{HPR}_{\text{Stock}} = \frac{\left(\mathrm{P}_{1} - \mathrm{P}_{0}\right) + \mathrm{D}_{1}}{\mathrm{P}_{0}} = \frac{\left(\mathrm{P}_{1} - \mathrm{P}_{0}\right)}{\mathrm{P}_{0}} + \frac{\mathrm{D}_{1}}{\mathrm{P}_{0}} = \binom {\text{Capital gains}} {\text{yield}} + \binom {\text{Dividend}} {\text{yield}}
$$

where  $\mathrm{P_1}$  is the per share value of the stock at the end of the investment period,  $\mathrm{P_0}$  is the per share value of the stock at the beginning of the investment period, and  $\mathrm{D_1}$  is the total cash dividend paid per share during the investment period. Although the investment period over which HPR is measured can be any length (e.g., one month, one quarter, one year, five years, and so forth), often HPR is computed for one year.

- Measuring average returns over multiple periods—generally investors want to know the annual (or other period) rate of return that is earned during an investment period that covers a number of years (periods). Following are the methods used to determine the average return per period:

- Arithmetic average (simple average)—computation of the arithmetic average does not consider the effects of interest/return compounding.

$$
\frac{\text{Arithmetic}}{\text{average return}} = \mathrm{r}_{\mathrm{a}} = \frac{\mathrm{r}_{1} + \mathrm{r}_{2} + \cdots + \mathrm{r}_{\mathrm{n}}}{\mathrm{n}}
$$

where  $\mathbf{r}_{\mathrm{t}} =$  the return that was earned in Period t and n is the total number of periods (months, quarters, years, etc.).

- Geometric average (time-weighted return)—considers compounding.

$$
\frac{\text{Geometric}}{\text{average return}} = \mathrm{r}_{\mathrm{g}} = \sqrt [ n ]{(1 + \mathrm{r}_{1}) (1 + \mathrm{r}_{2}) \dots (1 + \mathrm{r}_{\mathrm{n}})} = \left[ (1 + \mathrm{r}_{1}) (1 + \mathrm{r}_{2}) \dots (1 + \mathrm{r}_{\mathrm{n}}) \right]^{\left(\frac{1}{n}\right)}
$$

- Dollar-weighted average (internal rate of return, IRR)—considers variations in cash flows throughout the investment period.

$$
\frac{\text{Dollar-weighted}}{\text{average return (IRR)}} = \text{Initial cash flow} = \frac{\mathrm{CF}_{1}}{(1 + \mathrm{IRR})^{1}} + \frac{\mathrm{CF}_{2}}{(1 + \mathrm{IRR})^{2}} + \dots + \frac{\mathrm{CF}_{\mathrm{n}}}{(1 + \mathrm{IRR})^{\mathrm{n}}}
$$

where the Initial cash flow represents the amount originally invested and  $\mathrm{CF_t} =$  the cash flow that occurs in Period t;  $\mathrm{CF_t}$  can be positive (e.g., when a dividend is received and it is not reinvested in the stock) or it can be negative (e.g., when more funds are invested in the stock);  $\mathrm{CF_n}$  is the terminal value of the investment, which is the total value of the investment at the end of the investment period.

Annualized returns

Annual percentage rate, or APR—represents the simple, or non-compounded, interest earned during the year.

APR = Rate per period × Number of periods in the year

- Effective annual rate, or EAR—represents the compounded rate of return earned during the year.

$$
\mathrm{EA R} = \left(1 + \frac{\mathrm{AP R}}{\mathrm{n}}\right)^{\left(\frac{1}{\mathrm{n}}\right)} - 1. 0
$$

where  $n$  is the number of periods in the year (e.g.,  $n = 12$  if monthly returns are used).

## Inflation and the Real Rate of Interest

- Inflation affects the purchasing power associated with the return that is earned on an investment: In general,

$$
R \approx \text{Real rate} + i
$$

$$
\text{Real rate} \approx \mathrm{R} - \mathrm{i}
$$

where  $R$  is the nominal rate of return and  $i$  is the inflation rate during the investment period.

More exactly,

$$
(1 + R) = (1 + \text{Real rate}) (1 + i)
$$

$$
\text{Real rate} = (1 + \mathrm{R}) / (1 + \mathrm{i}) - 1 = (\mathrm{R} - \mathrm{i}) / (1 + \mathrm{i})
$$

- The equilibrium nominal rate of interest; Fisher equation:

$$
R \approx R e a l r a t e + E (i)
$$

E(i) is the expected inflation rate

## Risk and Risk Premiums

Risk

- Definition—variability (both upside and downside) of returns; more than one possible outcome  

- Risk exists if there is a possibility the actual outcome could be something other than expected—the outcome could be better than expected or worse than expected.
- Risk attitudes

- aversion-an investor requires (demand) higher returns (greater rewards) for taking greater risk  
seeker—an investor requires lower returns for taking greater risk (will pay to take risk)  

- neutral—risk doesn't matter—that is, doesn't care about risk; an investor considers return only; If all investors were considered truly risk neutral, eventually market mechanisms would cause all financial assets to yield the same expected return—the risk-free rate.
- Scenario analysis and probability distributions—evaluation of ex ante (expected) returns by examining all the possible outcomes and the chances that those outcomes will occur (i.e., a probability distribution).

Expected return—the average (mean) value of a probability distribution

$$
\underset {\text{return}} {\text{Expected}} = \mathrm{E} (\mathrm{r}) = \sum_{\mathrm{s} = 1}^{\mathrm{n}} \mathrm{p} (\mathrm{s}) \mathrm{r}_{\mathrm{s}}
$$

where  $\mathrm{p}(\mathrm{s})$  represents the probability that Scenario  $\mathrm{s}$  will occur and  $\mathbf{r}_{\mathrm{s}}$  is the return that will be earned when Scenario  $\mathrm{s}$  occurs.  $\mathrm{E}(\mathrm{r})$  is the expected return, which represents the weighted average of the possible payoffs (weighted by the probabilities).

- Variance and standard deviation—provide an indication of the scatter, or variability, of the observations contained in a probability distribution; measure the total risk associated with an investment.

$$
\mathrm{Variance} = \sigma_{\mathrm{r}}^{2} = \sum_{\mathrm{s} = 1}^{\mathrm{n}} \mathrm{p} (\mathrm{s}) [ \mathrm{r}_{\mathrm{s}} - \mathrm{E} (\mathrm{R}) ]^{2}
$$

$$
\frac{\mathrm{Standard}}{\text{deviation}} = \sigma_{\mathrm{r}} = \sqrt{\sigma_{\mathrm{r}}^{2}} = \sqrt{\sum_{\mathrm{s} = 1}^{\mathrm{n}} \mathrm{p} (\mathrm{s}) [ \mathrm{r}_{\mathrm{s}} - \mathrm{E} (\mathrm{R}) ]^{2}}
$$

- Normal distribution—stock returns generally exhibit kurtosis, which means the chances of large positive returns or large negative returns are greater than for returns that are normally distributed.  
- Risk premium (RP)—the amount of the total return that is greater than the risk-free rate of return;  $\mathrm{RP} = \text{Totalreturn} - \mathrm{r_f}$ , where  $\mathrm{r_f}$  is the risk-free rate of return

Price of risk—the relationship between an investment's risk premium and its total risk

$$
\frac{\text{Price of}}{\text{risk}} = \frac{\mathrm{E} \left(\mathrm{r}_{\mathrm{S}}\right) - \mathrm{r}_{\mathrm{f}}}{\sigma_{\mathrm{S}}^{2}} = \frac{\text{Risk premium}}{\text{Risk measure}} = \mathrm{A}
$$

$\mathrm{E}(\mathrm{r_s})$  is the expected return on Stock S and  $\sigma_{s}^{2}$  is the variance of returns on Stock S. The equation gives the amount of risk premium an investor requires for each "unit" of risk associated with an investment. For example, if the price of risk is 4.0, the investor demands a risk premium equal to at least 4 percent for every 1 unit of risk (measured as variance of returns) associated with any investment, which means an investment with a variance equal to  $0.04(\sigma = .2)$  must earn a risk premium equal to 16 percent for the investor to consider investing in it.

Sharpe ratio-risk premium divided by standard deviation of returns

$$
\frac{\text{Sharpe}}{\text{ratio}} = \frac{\mathrm{E} \left(\mathrm{r}_{\mathrm{S}}\right) - \mathrm{r}_{\mathrm{f}}}{\sigma_{\mathrm{s}}} = \frac{\text{Risk premium}}{\text{Risk measure}}
$$

Mean-variance analysis—evaluation of investments based on both their expected returns and risk; ranking stocks based on their Sharpe ratios would be mean-variance analysis.

## Asset Allocation across Risky and Risk-Free Portfolios

- Asset allocation—proportion of total funds invested in different types of securities.

Capital allocation to risky assets—percentage of total funds invested in securities that are considered risky; also the proportion of "risky funds" that is invested in each type of risky security.  
Complete portfolio-combination of risky assets and "risk-free" assets

- Risk-free asset—an investment with a guaranteed outcome; Treasury inflation-protected securities (TIPS), CDs, and other money market generally are used as proxies for risk-free assets.  
- Capital allocation line (CAL)—assume that you are considering investing funds in two types of investments: (1) a risk-free asset and (2) a portfolio of risky assets. The relationship between return and risk for various combinations (allocations) of these two assets might be depicted as follows:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/c975a0e9-66e8-43d0-a628-69267b821eec/585f5a72aedf0f04906179238d7f8180219eacb44f6f8bcd9ca757c1cbeaf9b0.jpg)

<table><tr><td rowspan="2">Portfolio</td><td colspan="2">Proportion/Weights:</td><td rowspan="2">Expected return</td><td rowspan="2">Standard Deviation</td></tr><tr><td>Risk-Free</td><td>Risky</td></tr><tr><td>A</td><td>0.5</td><td>0.5</td><td>8.5% = 0.5(5%) + 0.5(12%)</td><td>9% = 0.5(18%)</td></tr><tr><td>P</td><td>0.0</td><td>1.0</td><td>12.0% = 0.0(5%) + 1.0(12%)</td><td>18% = 1.0(18%)</td></tr><tr><td>Q*</td><td>-0.5</td><td>1.5</td><td>15.5% = -0.5(5%) + 1.5(12%)</td><td>27% = 1.5(18%)</td></tr></table>

* To form this portfolio, 50 percent of the total funds invested will be borrowed at the risk-free rate of return (i.e., the borrowed funds would cost 5 percent). The borrowed funds will be invested in the risky assets.

- Following is information about the riskiness of the three portfolios shown in the CAL graph:

<table><tr><td>Portfolio</td><td>Expected Return</td><td colspan="2">Risk Premium</td><td>σ</td><td>Sharpe Ratio</td></tr><tr><td>A</td><td>8.5%</td><td>3.5%</td><td>= 8.5% - 5.0%</td><td>9.0%</td><td>0.39 = 3.5%/9.0%</td></tr><tr><td>P</td><td>12.0%</td><td>7.0%</td><td>= 12.0% - 5.0%</td><td>18.0%</td><td>0.39 = 7.0%/18.0%</td></tr><tr><td>Q</td><td>15.5%</td><td>10.5%</td><td>= 15.5% - 5.0%</td><td>27.0%</td><td>0.39 = 10.5%/27.0%</td></tr></table>

○ What would be your preferred allocation of funds in the situation described here? To answer this question, let's first suppose that you are comfortable investing in a portfolio that promises an expected risk premium  $\left[\mathrm{RP} = \mathrm{E}(\mathrm{r}) - \mathrm{r}_{\mathrm{f}}\right]$  equal to 16 percent and a variance of returns,  $\sigma^2$ , equal to  $0.04$  ( $\sigma = 20\%$ ). In this case, your price of risk is  $\mathrm{A} = 4.0$  as described earlier. Based on this information and the information given in the CAL, you can use the following equation to determine the proportion of your total funds that should be invested in the risky asset based on your risk preferences:

$$
\begin{array}{l} \frac{\text{Pr op or ti on to in ve st}}{\text{in ri sk ya ss et}} = \frac{\text{Av ai la bl er is kp re mi um to va ri an ce ra ti o}}{\text{Re qu ir ed ri sk pr em iu mt ov ar ia nc er at io}} = \frac{\left\{\left[ \mathrm{E} (\mathrm{r}) - \mathrm{r}_{\mathrm{f}}\right) / \sigma_{\mathrm{p}}^{2} \right\}}{\mathrm{A}} \\ = \frac{\left\{\left[ 0 . 1 2 - 0 . 0 5 \right] / (0 . 1 8)^{2} \right\}}{4 . 0} = \frac{2 . 1 6}{4} = 0. 5 4 = 5 4. 0 \% \\ \end{array}
$$

Thus, you should invest 54 percent of your funds in the risky asset and 46 percent  $(= 1 - 0.54)$  of your funds in the risk-free asset. This portfolio would yield the following results:

$$
\text{Expectedreturn} = \mathrm{E} (\mathrm{r}) = 0.46 (5 \%) + 0.54 (12 \%) = 8.78 \%
$$

$$
\text{Standarddeviation} = \sigma = 0.54 (18 \%) = 9.72 \%
$$