---
title: Chapter 05 - Interest Rate Swaps
primary_tags:
  - interest_rate_swaps
  - forward_rate_agreements
  - zero_coupon_swaps
  - swap_valuation
  - comparative_advantage
  - basis_risk
  - cross_currency_swaps
  - credit_default_swaps
  - swap_pricing
  - swap_execution
secondary_tags:
  - fixed_vs_floating_rates
  - swap_intermediaries
  - swap_margins
  - swap_clearing
  - interest_rate_derivatives
  - basis_swaps
  - currency_swaps
  - swap_maturity_matching
  - swap_spreads
  - swap_quotes
  - swap_market_makers
  - swap_book_builders
  - swap_settlement
  - swap_trading_conventions
  - swap_risk_management
  - swap_hedging
  - swap_speculation
  - swap_arbitrage
  - swap_duration
  - swap_convexity
  - swap_volatility
  - swap_correlation
  - swap_structuring
  - swap_trading_desk
  - swap_portfolio_management
  - swap_accounting
  - swap_regulation
  - central_clearing_counterparties
cssclasses: academia
---

# Chapter 5: Interest Rate Swaps

There are many swap contracts very popular in the market place (interest rate swaps, currency swaps, asset swaps, residential property index swap, equity swap, total return swap, credit default swaps, ...) In this chapter, we shall introduce interest rate swaps and in Chapter 7 we shall discuss credit default swaps.

## 5.1 Introduction

Interest rate swaps are one of the most liquid interest rate derivative contracts in the marketplace. In its December 2014 statistics release, the Bank for International Settlements reported that interest rate swaps were the largest component of the global OTC derivative market, representing 60%, with the notional amount outstanding in OTC interest rate swaps of \$381 trillion, and the gross market value of \$14 trillion.

An IRS (interest rate swap) is a fixed versus floating swap contract. Usually both legs of the swap contact have the same notional, hence there is no swap of the notional (as opposed to other swaps, e.g. currency swaps, that swap the final notionals.) As a result, it is strictly a coupon swap.

It has associations with forward rate agreements (FRAs), and with zero coupon swaps (ZCSs) which will be discussed toward the end of this chapter.

## 5.2 Comparative Advantage Analysis

The comparative advantage analysis (CAA) is a classical international trade theory that contends that both countries (counterparties) will benefit by trading (swapping) goods. CAA is not a pricing tool. It provides at most the upper and lower bounds of the price of swap.

### 5.2.1 Basic Idea

We start with an example. Let company A be able to borrow in the fixed rate market at $10\%$ and in the floating rate market at $\mathrm{L} + 1\%$. And also let company B be able to borrow in the fixed rate market at $12\%$ and in the floating rate market at $\mathrm{L} + 1.5\%$. The following table summarizes this situation.

**Table 5.1: Basic Information**

| | floating | fixed |
|-|----------|-------|
| A | L+100 | 0.1 |
| B | L+150 | 0.12 |
| diff | 50 | 0.02 |

A is better than B in both markets. Yet A is "more better" than B in fixed rate market. Hence A should issue fixed and B should issue floating and they swap.

![IRS](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/e24ecd059a5994dcfc642f2ac6ee55a592cdcaee539607a727c5f9950c3b47e7.jpg)

**Figure 5.1: IRS**

A ends up paying $\mathrm{L} + 50$, saving $0.5\%$; B ends up paying $11\%$, saving $1\%$. Total saving $= 1.5\% =$ difference of differences.

We can easily alter the arrangement between the two companies, as follows:

![IRS](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/805a0a7329a8b29534d7f07d1eea029638606dd9573539137144bd063d775c6e.jpg)

**Figure 5.2: IRS**

Now, company A gets all the comparative advantage (1.5\%) and company B gets nothing. Can you write down another arrangements for this result?

### 5.2.2 With a Financial Intermediary

It is rarely two companies can find each other and engage in an IRS. What happens in reality is that the two companies' affiliated banks trade with each other usually and help facilitate an IRS for their clients. Hence a financial intermediary is usually added to the swap diagram, as follows:

![IRS](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/14fd05d50db10aa75019658a2a4344fd5a39396b0b4ecd972220abac4212c83e.jpg)

**Figure 5.3: IRS**

In this case, company A gets 50 bps; company B gets 50 bps, and the bank gets 50 bps. As we can see, the arrangements in this example are arbitrary. We can alter any term in this transaction and provide any comparative advantage to any participating party (the two companies and the bank).

## 5.3 No Arbitrage Analysis

The above CAA explains the motivation and market structure of IRS well. Yet the pricing part is far from reality. In reality, IRS is a liquid market and market makers actively set the swap rates. Corporations or retail investors can only place orders and wait for them to be filled.

### 5.3.1 IRS as a Series of Forward Contracts

Since the swap market is competitive, swap rates will not deviate from the other interest rates, otherwise arbitrage will take place. As a result, we can derive swap rates from the yield curve.

Assume a two-period example as follows:

![Time Line](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/6ac96ff6ab218e8ecacb98330fe7ceda14e1cced7a627fbfcef2d41d8f400e35.jpg)

**Figure 5.4: Time Line**

Let $T_1$ and $T_2$ be two arbitrary future time points and $P(t,T_1)$ and $P(t,T_2)$ be two zero coupon bond prices. Then the forward price of $P(t,T_2)$ at time $T_1$ is

$$ \Psi(t, T_1, T_2) = \frac{P(t, T_2)}{P(t, T_1)} \tag{5.1} $$

This result can be achieved by the following arbitrage argument:

**Table 5.2: No Arbitrage Argument of Forward Price**

| t | T1 | T2 |
|---|----|----|
| long forward Ψ(t,T1,T2): cost=0 | P(T1,T2) - Ψ | nothing |
| short P(t,T2) | -P(T1,T2) | |
| buy Ψ units of P(t,T1) | Ψ | |
| P(t,T2) - ΨP(t,T1) | 0 | 0 |

Given that this portfolio has no cash flow in periods $T_1$ and $T_2$, it should not cost anything today and equation (5.1) is obtained. A forward rate is the rate of return of the forward price:

$$ f(t, T_1, T_2) = \frac{1}{T_1 - T_2} \left[ \frac{1}{\Psi(t, T_1, T_2)} - 1 \right] $$

#### A Two-Year Example

To get the result of the swap rate being a weighted average of forward rates, we examine the following simple (2pd) example.

**Table 5.3: 2-Period Example**

| now | one yr later | two yrs later |
|-----|--------------|---------------|
| long swap: cost 0 | $\ell_1 - w_0$ | $\ell_2 - w_0$ |
| short 1y fwd: cost 0 | $f_1 - \ell_1$ | nothing happens |
| short 2y fwd: cost 0 | nothing happens | $f_2 - \ell_2$ |
| short $(f_1 - w_0)$ of $P_{0,1}$ | $-(f_1 - w_0)$ | nothing happens |
| short $(f_2 - w_0)$ of $P_{0,2}$ | nothing happens | $-(f_2 - w_0)$ |
| $(f_1 - w_0) \times P_{0,1}$ | 0 | 0 |
| $+(f_2 - w_0) \times P_{0,2}$ | | |

Given that the portfolio generates no cash flow in the future, the value of the portfolio today must also be 0 to avoid arbitrage. As a result,

$$ -\left(f_1 - w_0\right) \times P_{0,1} - \left(f_2 - w_0\right) \times P_{0,2} = 0 $$

$$ w_0 = \frac{f_1 P_{0,1} + f_2 P_{0,2}}{P_{0,1} + P_{0,2}} $$

Using the 4-year HL model,

**Table 5.4: HL Model Swap Rates**

| | spot | fwd | disc fact | weight | wt avg |
|-|------|-----|-----------|--------|--------|
| 1 | 5% | 5% | 0.9512 | 0.277907 | 0.013895 |
| 2 | 6% | 7% | 0.8869 | 0.259118 | 0.018138 |
| 3 | 6.50% | 7.50% | 0.8228 | 0.240395 | 0.01803 |
| 4 | 6.80% | 7.70% | 0.7619 | 0.22258 | 0.017139 |
| | | pv01 | 3.4228 | swp rate | 0.0672 |

### 5.3.2 IRS as a Portfolio of Bonds

An alternative way to form a risk-free portfolio (better way because prices as opposed to rates are used):

**Table 5.5: 2-Period Example**

| now | one yr later | two yrs later |
|-----|--------------|---------------|
| long swap: cost 0 | $\ell_1 - w_0$ | $\ell_2 - w_0$ |
| short $(1 + \ell_1 - w_0)$ of $P_{0,1}$ | $-(1 + \ell_1 - w_0)$ | nothing happens |
| long $(1 + w_0)$ of $P_{0,2}$ | short $(1 / P_{1,2})$ of $P_{1,2}$ | $(1 + w_0) - (1 + \ell_2)$ |
| $(1 + \ell_1 - w_0) \times P_{0,1} - (1 + w_0) \times P_{0,2}$ | 0 | 0 |

Note that $1 + \ell_1 = \frac{1}{P_{0,1}}$ and $1 + \ell_2 = \frac{1}{P_{1,2}}$. As a result, we have:

$$ w_0 = \frac{1 - P_{0,2}}{P_{0,1} + P_{0,2}} $$

The term structure is such that: one-year rate is $5\%$ and two-year rate is $7\%$ (hence the forward rate is $9\%$) discount factors are:

$$ P_{0,1} = \frac{1}{1.05} = 0.9524 $$

$$ P_{0,2} = \frac{1}{1.07^2} = 0.8734 $$

Hence, the swap rate is:

$$ w_0 = \frac{P_{0,1} \ell_1 + P_{0,2} f_2}{P_{0,1} + P_{0,2}} = \frac{0.9524 \times 0.05 + 0.8734 \times 0.09}{0.9524 + 0.8734} = \frac{0.1262}{1.8258} = 6.91\% $$

The swap rate formula is:

$$ w(t, T_n) = \frac{1 - P(t, T_n)}{\sum_{i=1}^{n} P(t, T_i)} \tag{5.2} $$

**Table 5.6: HL Model Swap Rates**

| | disc fact | annuity | swp rate |
|-|-----------|---------|----------|
| 1 | 0.9524 | 0.9524 | 0.049979 |
| 2 | 0.8900 | 1.8424 | 0.059705 |
| 3 | 0.8278 | 2.6702 | 0.06449 |
| 4 | 0.7686 | 3.4388 | 0.067291 |

This result is unrealistic in that it assumes the same annual frequency of both floating and fixed legs. We know that in reality an IRS has quarterly frequency for the floating leg (due to 3-month LIBOR) and semi-annual frequency for the fixed leg. One might question if the above formula is inaccurate.

Amazingly, the above formula needs no adjustment. While setting up an arbitrage argument/trading for a real swap that has different frequencies (quarterly for floating and semi-annual for fixed) is more difficult, the mathematical proof is very straightforward. I provide that in the Appendix.¹

## 5.4 Swap Value

A swap contract has 0 value at beginning (in that the floating leg value must equal to the fixed leg value) but as time passes it will have a positive or negative value afterwards. If it has a positive value (rates rise) then it is called "in-the-money"; and otherwise it is called "out-of-the-money".

To compute the swap value, one can easily perform as reverse swap and monetize the moneyness of the swap contract, or one can cancel the swap with one's counterparty for the same cash.

### 5.4.1 Reverse swap

If the swap is in the money, then one can monetize by doing a reverse swap. For example, (assuming annual payments) at year 0, a 5-yr swap rate is $10\%$ (in exchange for LIBOR). After 1 year, the 4-yr swap rate (hence mature in year 5) is $12\%$. In this situation, the swap is in the money by $2\%$. The owner of the swap can do a reverse swap (pay floating and receive $12\%$) and in doing so, he nets in $2\%$ for the next 4 years.

Assume the yield curve to be flat (and hence the yields are equal to the current swap rate of $12\%$) and a 4-year annuity value is 3.0373 and the swap value is:

$$ (2\%)(3.0373)(\text{notional}) = 6.0704\% \times \$100,000 = \$6,070 $$

In our HL example, the 4-year swap rate is $6.7291\%$ (see Table 5.6). After 1 year, if the year curve has become:

**Table 5.7: Swap Value**

| yr | disc fact | annuity | swp rate | swp val | \$100,000 |
|----|-----------|---------|----------|---------|----------|
| 2 | 0.934481 | 0.934481 | | | |
| 3 | 0.869173 | 1.803654 | | | |
| 4 | 0.807014 | 2.610668 | 7.3922\% | 1.7312\% | \$1,731 |

In the example, the new yield curve results in a (3-year) new swap rate of $7.3922\%$. Hence the swap value is:

$$ ((7.3922 - 6.7291)\%)(\mathrm{pv01})(\text{notional}) = 0.6631\% \times 2.6107 \times \$100,000 = \$1,731 $$

The general equation for the swap value at any future time $s$ is:

$$ V_{\mathrm{swap}}(s) = \left(w(s, T_n) - w(t, T_n)\right) \sum_{i=k}^{n} P(s, T_i) $$

where $T_{k-1} < s < T_k$. It is quite straightforward to mathematically derive the swap value. Nevertheless, a reverse swap is the easiest and the most intuitive way to obtain such value.

SEE EXCEL

### 5.4.2 Another Calculation

The two counterparties exchange only swap rate and LIBOR at each fixing date. There is no notional exchange at maturity. However, if we add the notional to both legs (so that they cancel), then we effectively turn the floating leg into a LIBOR floater and the fixed leg into a fixed rate bond with the swap rate being the coupon rate.

We know that LIBOR floaters are always at par at coupon dates. The fixed rate bond is also at par at inception (the coupon of the fixed rate bond is set so that the swap has 0 value).

The fixed leg can then be viewed as a fixed rate bond and the floating leg can be viewed as a floater:

$$
\begin{array}{l}
1 = \Pi(t, \underline{T}, w) = \sum_{i=1}^{n} w(t, T_n) P(t, T_i) + P(t, T_n) \\
1 = \sum_{j=1}^{n} P(t, T_j) f(t, T_{j-1}, T_j) + P(t, T_n) \\
\end{array}
$$

Note that different from equation (2.12), here both fixed leg (top equation) and floating leg (bottom equation) are added a face value (and therefore its discount factors are $P(t, T_n)$ for the fixed leg and $P(t, T_n)$ for the floating leg respectively. The fixed leg then becomes a fixed rate bond with a coupon of the swap rate $\Pi(t, \underline{T}, w)$ and the floating leg is by definition (see Chapter 2 for the floater discussions) par. Since at inception the fixed leg is also at par (i.e. $\Pi(t, \underline{T}, w) = 1$), the swap contract is at 0 value.

Over time, the floating leg remains at par and yet the fixed leg will move away from par as the swap rate changes (as a result of yield curve changes which is a consequence of economic conditions change). For example, lets assume a 10 year swap. After one year,

$$
\begin{array}{l}
\Pi(T_1, \underline{T}, w) = \sum_{i=2}^{n} w(t, T_n) P(T_1, T_i) + P(T_1, T_n) \\
1 = \sum_{j=2}^{n} P\left(T_1, T_j\right) f\left(T_1, T_{j-1}, T_j\right) + P\left(T_1, T_n\right) \\
\end{array}
$$

and $\Pi (T_1,\underline{T},w)\neq 1$. Then the swap value is:

$$
\begin{array}{l}
V_{\mathrm{swap}}(T_1) = 1 - \Pi(T_1, \underline{T}, w) \\
\neq 0 \\
\end{array}
$$

because $w(T_1, T_n) \neq w(t, T_n)$ as interest rates have moved.

Using the same HL example before, we can easily verify that at inception the two legs have the same value:

**Table 5.8: Fixed Leg Value (par)**

| yr | disc fact | fixed leg |
|----|-----------|-----------|
| 1 | 0.9524 | 0.067291 |
| 2 | 0.8900 | 0.067291 |
| 3 | 0.8278 | 0.067291 |
| 4 | 0.7686 | 1.067291 |
| | PV= | 1 |

As a result, the swap has no value. In a year, the yield curve has changed and the bond is no longer at par:

**Table 5.9: New Fixed Leg Value (not par)**

| yr | disc fact | fixed leg |
|----|-----------|-----------|
| 2 | 0.934481 | 0.067291 |
| 3 | 0.869173 | 0.067291 |
| 4 | 0.807014 | 1.067291 |
| | PV= | 0.982688 |

Now the bond price is equal to 0.9827 but the floating leg is still 1. Hence, the difference between the two legs is the swap value: $1 - 0.9827 = 0.01731$ or $\$1,731$ (per notional of $\$100,000$).

Note that in reality, the floating leg of the swap is quarterly and the fixed leg is semi-annual. The fixed leg has 20 semi-annual periods and the floating leg has 40 quarters. Hence the formula needs to be adjusted as:

$$ 1 = \Pi(t, \underline{T}, w) = \sum_{i=1}^{2n} w(t, T_{2n}) P(t, T_i) + P(t, T_{2n}) $$

$$ 1 = \sum_{j=1}^{4m} P(t, T_j) f(t, T_{j-1}, T_j) + P(t, T_{4m}) $$

where $T_{4m} = T_{2n}$ is the tenor of the swap (in years). At inception, the swap has equal value as both legs are priced at par. In three months, i.e. $T_j = T_1 = 1/4$. Then

$$ \Pi(^{1}/4, \underline{T}, w) = \sum_{i=1}^{2n} w(t, T_{2n}) P(^{1}/4, T_i) + P(^{1}/4, T_{2n}) $$

$$ 1 = \sum_{j=2}^{4m} P(^{1}/4, T_j) f(^{1}/4, T_{j-1}, T_j) + P(^{1}/4, T_{4m}) $$

### 5.4.3 DV01/PV01

An IRS is "at the money" at inception. But over time it can be either in or out of the money, as the swap rate moves up or down. The value is equal to:

$$ V_{\mathrm{swap}}(s) = N \sum_{i=1}^{2n} \left(w(s, T_{2n}) - w(t, T_{2n})\right) P(s, T_i) $$

for $s > t$, is a result of doing a reverse swap. Hence the DV01/PV01 is:

$$ \frac{\partial V}{\partial w(t, T_{2n})} = N \sum_{i=1}^{2n} P(s, T_i) $$

which is the risk-free annuity. Following the same example, we have:

**Table 5.10: DV01/PV01**

| disc fact | |
|-----------|-|
| 2 0.934481 | |
| 3 0.869173 | |
| 4 0.807014 | |
| DV01 2.610668 | |

### 5.4.4 Swaption

Swaps in general come with a cancellation clause. That is, to avoid the trouble of doing the reverse swap, ISDA regulates counterparties that must allow cancellations and out-of-money side should pay the its counterparty the present value of the future cash flows (i.e. value of the swap). This right to cancel is a put option of the swap. It is like buying a receiver swaption struck at the current swap rate. Certainly the option to cancel is an American (more precisely Bermudan) option that permits cancellation any time till maturity and a receiver swaption is a European option.

Another option which is opposite to cancellation is the option to enter a swap. There is a strike swap rate at which the owner of the option can enter a swap. As a result, if the market swap rate at the time of entering is higher than the strike swap rate, then the buyer makes money. This is a call option.

The payoff of the option is:

$$ \max\{w(s, T_n) - w_K, 0\} \sum_{i=1}^{n} P(s, T_i) $$

This is known as the payer option. A receiver option is the same option but to enter a short swap (i.e. pay floating). In this situation, the option has value when the swap rate falls:

$$ \max\{w_K - w(s, T_n), 0\} \sum_{i=1}^{n} P(s, T_i) $$

A quick approximation to roughly estimate the option value is to use the Black-Scholes model. That is, we assume that the swap rate follows a log-normal process. Then we can use the Black-Scholes formula to value $\max\{w - K, 0\}$ and then multiply Black-Scholes value by $\sum P(s, T_i)$ which is assumed known today (i.e. using the forward curve).

Industry uses the Black (which is same as Black-Scholes) model for swaptions. We know from risk-neutral pricing, the Black-Scholes model can be derived as:

$$
\begin{array}{l}
C = \hat{\mathbb{E}}_t \left[ \exp\left(-\int_t^s r(u)\right) \max\{w(s, T_n) - w_K, 0\} \sum_{i=1}^{n} P(s, T_i) \right] \\
= P(t, s) \tilde{\mathbb{E}}_t^{(s)} \left[ \max \left\{w\left(s, T_n\right) - w_K, 0 \right\} \sum_{i=1}^{n} P\left(s, T_i\right) \right] \tag{5.3} \\
= P(t, s) \left[ \bar{w}(s, T_n) N(d_{+}) - P(t, s) w_K N(d_{-}) \right] \sum_{i=1}^{n} \Psi(t, s, T_i) \\
\end{array}
$$

where

$$
\begin{array}{l}
d_{\pm} = \frac{\ln \bar{w}(s, T_n) - \ln w_K}{\sqrt{v(t, s, T_n)}} \pm \frac{1}{2} v(t, s, T_n) \\
v^2(t, s, T_n) = \mathbb{V}[\ln w(s, T_n)] \\
\end{array}
$$

$\bar{w}$ is the forward swap rate, $\hat{\mathbb{E}}_t$ and $\tilde{\mathbb{E}}_t^{(s)}$ are risk-neutral and $s$-forward measures respectively.

Using the same example as before, we evaluate a one-year option to enter a three-year swap (one into three or $1 \times 3$). The following table shows today's discount curve and forward curve:

**Table 5.11: Discount and Forward Curves**

| | disc fact | fwd curve |
|-|-----------|-----------|
| 1 | 0.9524 | |
| 2 | 0.8900 | 0.934481 |
| 3 | 0.8278 | 0.869173 |
| 4 | 0.7686 | 0.807014 |
| sum | 3.4388 | 2.6107 |

The forward swap rate is $7.3922\%$ ($= (1 - 0.8070) / 2.6107$). Assume a volatility of $25\%$ and a strike swap rate of $6.5\%$. Then, we can compute the Black call option value as $0.007363 \left(d_{+} = 0.54575 \text{ and } d_{-} = 0.48325\right)$. Then, the swaption value is $1,922.23 ($= 0.007363 \times 2.6107 \times 100,000\$).

Swaptions are a very active market. Various option maturities into various swap tenors $(x \times y)$ at various strikes are actively quoted. Liquidity, however, concentrates mostly on ATM swaptions.

For the Black (Black-Scholes) model to hold, one must accept that:

- there exists a swap measure under the $s$-forward expectation and
- the swap rate follows a log-normal distribution (as assumed in the Black-Scholes model)

Unfortunately, none of the above two conditions can be true. The condition for the first requirement to hold is the existence of the swap measure, which can only be true under the extreme case. The second requirement essentially demands a weighted sum of interest rates to follow a log-normal distribution, which contradicts all existing interest rate models.

Nevertheless, the swaption market continues to assume it did and submit quotes in terms of the Black volatility. Users must convert them to prices using the Black formula.

Here is the swaption volatility matrix (ATM)

**Table 5.12: Swaption Vol Matrix**

| | | **swap tenor** | | | |
|-|-|----------------|-|-|-|
| | | 1Y | 2Y | ... | 30Y |
| **o** | 3M | | | | |
| **p** | 6M | | | | |
| **t** | 9M | | | | |
| | 1Y | | | | |
| **m** | 2Y | | | | |
| **a** | : | | | | |
| **t** | 20Y | | | | |

Detailed discussions of the volatility surface of ATM swaptions are given in Chapter 10. As in equities, the swaption market provides useful information about future volatilities of swaps.

A more correct way to evaluate swaptions is to model them via options on coupon bonds. Given that floater at any reset date is priced at par, we can then rewrite equation (5.3) as follows (we assume the option maturity date $s$ is a reset date):

$$
\begin{array}{l}
C = \hat{\mathbb{E}}_t \left[ \exp\left(-\int_t^s r(u)\right) \max\{w(s, T_n) - w_K, 0\} \sum_{i=1}^{n} P(s, T_i) \right] \\
= \hat{\mathbb{E}}_t \left[ \exp\left(-\int_t^s r(u)\right) \max \{1 - \Pi(s, \underline{T}, w_K), 0\} \right] \tag{5.4} \\
\end{array}
$$

Note that the above formula is precisely the coupon bond option pricing formula. Note that the call option on swap rate now is a put option on the coupon bond (with the strike price at 1). I will discuss how to evaluate this formula in Chapter 10.

### 5.4.5 Exposure

After the global financial crisis in 2008, counterparty exposures have become crucial for banks to closely monitor. A swap contract that usually lasts decades with the counterparty is more important than any other contract to calculate and manage its exposure.

Exposure is like a call option. From the fixed leg's perspective, when interest rates rise (so will the swap rate), it is in-the-money and if its counterparty defaults, then it will not be able to cash in the payoff, hence losing money. This is a potential loss in the future. Hence its value is equal to the option to cancel (since it cannot be canceled due to counterparty default).

![Exposure](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/beceffcb3b01ab50563f470e0359443688c333dfcf353bf157917da88d887f95.jpg)

**Figure 5.5: Exposure**

This can be easily computed by the Black-Scholes model. However, the exposure to a counterparty is an American option and the Black-Scholes model can only compute European values. The actual calculation of a swap exposure is complex (see CVA in the lecture notes of RM).

## 5.5 FRA and ZCS

As explained earlier, FRA is closely related to IRS.

**iotafinance.com:**

> "A forward rate agreement (FRA) is a cash-settled OTC contract between two counterparties, where the buyer is borrowing (and the seller is lending) a notional sum at a fixed interest rate (the FRA rate) and for a specified period of time starting at an agreed date in the future.
> 
> An FRA is basically a forward-starting loan, but without the exchange of the principal. The notional amount is simply used to calculate interest payments. By enabling market participants to trade today at an interest rate that will be effective at some point in the future, FRAs allow them to hedge their interest rate exposure on future engagements.
> 
> Concretely, the buyer of the FRA, who locks in a borrowing rate, will be protected against a rise in interest rates and the seller, who obtains a fixed lending rate, will be protected against a fall in interest rates. If the interest rates neither fall nor rise, nobody will benefit.
> 
> The life of an FRA is composed of two periods of time - the waiting period, or forward, and the contract period. The waiting period is the period up until the start of the notional loan and may last up to 12 months although durations of up to 6 months are most common."

![Forward Rate Agreement](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/823acf6c6bd67caafc02800c1163e95ecc8328e9151338e30bde25bd60938e76.jpg)

**Figure 5.6: Forward Rate Agreement**

FRAs are used very commonly in mortgages. When applying for a mortgage, usually a commitment is granted for 3 to 6 months for the home buyer to be able to close the property. To avoid rate fluctuations during this commitment period, mortgage granting banks will seek a equal period FRA to lock in an interest rate.

A zero coupon swap (ZCS) is a variety of IRS where the fixed leg pays no periodic fixed coupons but only one principal at maturity. In other words, a ZCS is an exchange of cash flows in which the stream of floating interest-rate payments is made periodically, as it would be in a plain vanilla swap, but where the stream of fixed-rate payments is made as one lump-sum payment at the time when the swap reaches maturity, instead of periodically over the life of the swap.

Continuing the previous HL example:

**Table 5.13: 4Y ZCS**

| disc fact | fwd | ZCS |
|-----------|-----|-----|
| 1 0.9524 | 0.049979 | 0.049979 |
| 2 0.89 | 0.070112 | 0.123596 |
| 3 0.8278 | 0.075139 | 0.208021 |
| 4 0.7686 | 0.077023 | 0.301067 |

For a 4-year ZCS, the notional is computed using the standard formula.

Following the same calculation, we can obtain ZCS for all tenors as shown in the table above.

## 5.6 Overnight Index Swap (OIS)

**Wikipedia:**

> "An overnight indexed swap (OIS) is an interest rate swap over some fixed term where the periodic floating payment is generally based on a return calculated from a daily compound interest investment. Note that the swap term is not over-night; it is the reference rate that is an overnight rate. The swap exchanges a fixed term rate for the variable geometric average of the reference daily or overnight rate compounded over the term of the swap. The reference for a daily compounded rate is an overnight rate (or overnight index rate) and the exact averaging formula depends on the type of such rate."

Main page: https://www.bis.org/statistics/derstats.htm

IRS: https://stats.bis.org/statx/srs/table/d5.1

CDS: https://stats.bis.org/statx/srs/table/d5.2

### 5.6.1 Floating Leg

An OIS, or Overnight Index Swap, is an interest rate swap whose floating leg payments are calculated as a geometric average of the daily fixings of some underlying $\mathrm{O}/\mathrm{N}$ (overnight) or $\mathrm{T}/\mathrm{N}$ (tomorrow next index (these indices are generally volume-weighted averages of reported daily transactions). The annualized floating leg rate is defined as

$$ c^{\mathrm{ft}}(t, n) = \frac{\prod_{i=1}^{n} \left(1 + r_i \delta(1)\right) - 1}{\delta(n)} $$

where $n$ is the number of days from the first fixing day of the coupon period, $r$ is the value of the underlying index at time $t$, and $\delta(\cdot)$ is the year fraction according to an appropriate day count convention.

For example, two parties enter into an OIS contract. The notional amount is £100 million. It starts today and finishes in 4 working days (today included). The reference index is SONIA (Sterling Overnight Index Average) Index. Party A agrees to pay a fixed overnight rate of $0.74\%$.

Each day that goes by, the Bank of England will publish a new SONIA rate; we end up with the following:

**Table 5.14: SONIA Rates**

| day | SONIA % |
|-----|---------|
| 1 | 0.735 |
| 2 | 0.735 |
| 3 | 0.733 |
| 4 | 0.736 |

The first thing we can do is calculate the value of the floating leg of the contract (convention is A/360):

$$
\begin{array}{l}
\left[ \left(1 + 0.736\% \times \frac{1}{360}\right) \left(1 + 0.733\% \times \frac{1}{360}\right) \left(1 + 0.735\% \times \frac{1}{360}\right)^2 - 1 \right] \div \left(\frac{4}{360}\right) \\
= 0.734773\% \\
\end{array}
$$

which is £734,773 and is exchanged for the fixed leg payment of £740,000.

As in any swap, the fixed leg amount is calculated at inception of the swap to have 0 NPV.

### 5.6.2 OIS Curve

The most liquid instruments that can be used to build OIS curve are Fed Fund Futures and OIS swaps that pay at the daily compounded Fed Fund rate. However, Fed Fund Futures are currently only liquid up to two years and OIS swaps up to ten years. Beyond ten years, the most liquid instruments are Fed Fund versus 3M LIBOR basis swaps, which are liquid up to thirty years.

![Fed Fund Futures](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/5bf29ab5de8406132cfa59f1162d990b42a541cc55f276e3a26db5bf3a60bdb7.jpg)

**Figure 5.7: Fed Fund Futures**

OIS is based on swaps of a fixed interest rate versus a floating rate that is calculated by compounding the daily overnight Fed Funds rate. The overnight Fed Funds rate is treated as the interest rate for discounting so that there is a direct relationship between the compounding of this daily interest rate and the discount function. The discount function $\mathrm{D}(0, \mathrm{T})$ is derived from market input quotes by setting the net present value (NPV) of each swap to be equal to zero. For OIS with one cash flow, the fixed rate is swapped versus the compounding of the Fed Funds rate, and the net present value (NPV) is calculated as follows.

$$ 0 = \mathrm{NPV} = P(t, T) \times w(t, T) \times \frac{\mathrm{days}(t, T)}{360} - P(t, T) \times \left(\prod_{i=0}^{n-1} \left(1 + \frac{r_i}{360}\right) - 1\right) $$

where $w(t,T)$ is the fixed swap rate for maturity $T$, $r_i$ is the daily Fed Funds rate for day $i$, $n$ is the total number of days, and

$$ T - t = \frac{n}{\mathrm{daysperyear}} $$

Given a set of market input quotes for swaps with $\mathrm{NPV} = 0$, one can calculate the discount function for all of the maturity dates associated with the market quotes.

## 5.7 Basis Swaps

A basis swap is an exchange of one floating rate for another. It could be the exchange of USD LIBOR for USD OIS or vice versa.

Basis risk occurs for positions that have at least one paying and one receiving stream of cash flows that are driven by different factors and the correlation between those factors is less than one. Entering into a basis swap may offset the effect of gains or losses resulting from changes in the basis, thus reducing basis risk. Here are some examples:

- against exposure to currency fluctuations (for example, 1 mo USD LIBOR for 1 mo GBP LIBOR)
- against one index in the favor of another (for example, 1 mo USD T-bill for 1 mo USD LIBOR)
- different points on a yield curve (for example, 1 mo USD LIBOR for 6 mo USD LIBOR)

### 5.7.1 LIBOR Basis Swap

The standard U.S. LIBOR curve methodology builds a forward rate curve for 3-month LIBOR. Additional LIBOR forward curves are built for 1-month, 6-month, and 12-month LIBOR using the market quotes for basis swaps. LIBOR basis swaps are swaps of LIBOR of any tenor for 3-month LIBOR with a spread added to the target LIBOR (3-month LIBOR in the U.S. market). The basis swaps are used to build LIBOR forward curves for 1M, 6M, and 12M. The basis swap contracts range from 1 year to 30 years.

A basis swap is a swap of two different LIBOR floating rates in which one leg is based on 3-month LIBOR and one of the legs includes a spread. The other LIBOR floating rate can be 1-month LIBOR, 6-month LIBOR, or 12-month LIBOR. The maturities for these swaps range from 1 year to 30 years. The swap valuation for a swap of 1-month LIBOR versus 3-month LIBOR, with a maturity of N years, is based on the following formula.

$$
\begin{array}{l}
\mathrm{NPV} = \sum_{i=1}^{12n} P(t, T_i) \times \left(f(t, T_{i-1}, T_i) + s_{1m,n}\right) \times \left(\frac{\operatorname{days}(T_{i-1}, T_i)}{360}\right) \\
- \sum_{j=1}^{4m} P(t, T_j) \times f(t, T_{j-1}, T_j) \times \left(\frac{\operatorname{days}(T_{j-1}, T_j)}{360}\right) \\
\end{array}
$$

where $f(t, T_{i-1}, T_i)$ is the forward 1-month LIBOR (since $T_i - T_{i-1} = 1m$ and $s_{1m,N}$ is the spread associated with the basis swap for 1-month LIBOR with maturity $T_{12n}$ or $T_{4m}$). The discount function for these swaps is the OIS discount function. The 3-month LIBOR forward rates are taken from the 3-month LIBOR forward rate curve, which is built prior to building the additional LIBOR forward rate curves from basis swaps.

The goal is to build forward rate curve $f(t, T_{i-1}, T_i)$ (which is monthly) and $f(t, T_{j-1}, T_j)$ (which is quarterly) for the different LIBORs by setting the NPV for the basis swaps to zero. Bootstrapping is used to build the curve sequentially: the forward rate curve is extended to the maturity of each market swap so that the NPV for the swap is zero.

## 5.8 Appendix

### Swap Rate Derivation

At inception, the two legs must have the same value:

$$ V_{\mathrm{fx}} = V_{\mathrm{ft}} $$

The fixed leg is an annuity of the swap rate and the floating leg is the discounted expected value of (random) LIBOR rates:

$$ \sum_{i=1}^{2n} w(t, T_{2n}) \hat{\mathbb{E}} \left[ \exp\left(-\int_t^{T_i} r(u) du\right) \right] = \sum_{j=1}^{4m} \hat{\mathbb{E}} \left[ \exp\left(-\int_t^{T_j} r(u) du\right) L(T_j, T_j + 1/4) \right] $$

where $T_{4m} = T_{2n}$. Hence, we can solve for the fixed swap rate as:

$$ w(t, T_{2n}) \sum_{i=1}^{2n} P(t, T_i) = \sum_{j=1}^{4m} P(t, T_j) f(t, T_j, T_j + \frac{1}{4}) $$

$$ w(t, T_{2n}) = \frac{\sum_{j=1}^{4m} P(t, T_j) f(t, T_j, T_j + \frac{1}{4})}{\sum_{i=1}^{2n} P(t, T_i)} $$

It is worth noting that now the swap rate is no longer the weighted average of forward rates in that the numerator has $4m$ terms and the denominator has only $2n$ terms. Yet, note that the numerator, no matter what frequency, can always be simplified into two terminal terms:

$$
\begin{array}{l}
\sum_{j=1}^{4m} P(t, T_j) f(t, T_j, T_j + 1/4) = \sum_{j=1}^{4m} P(t, T_j) \left(\frac{P(t, T_{j-1})}{P(t, T_j)} - 1\right) \\
= \sum_{j=1}^{4m} P(t, T_{j-1}) - P(t, T_j) \\
= 1 - P(t, T_{4m}) \\
\end{array}
$$

where we recognize that $P(t,T_0) = P(t,t) = 1$. Note that $P(t,T_{4m}) = P(t,T_{2n})$.

### Zero Coupon Swap Derivation

Let $K$ be the notional of the ZCS. Then similar to the regular IRS, we set the NPV to 0:

$$
\begin{array}{l}
0 = \hat{\mathbb{E}}_t \left[ \sum_{i=1}^{n} \exp\left(-\int_t^{T_i} r(u) du\right) \ell(T_{i-1}, T_i) \right] - \hat{\mathbb{E}}_t \left[ \exp\left(-\int_t^{T_n} r(u) du\right) K \right] \\
= \sum_{i=1}^{n} P(t, T_i) f(t, T_{i-1}, T_i) - K P(t, T_n) \\
\end{array}
$$

Solving for the face value $K$:

$$
\begin{array}{l}
K = \frac{\sum_{i=1}^{n} P(t, T_i) f(t, T_{i-1}, T_i)}{P(t, T_n)} \\
= \frac{1 - P(t, T_n)}{P(t, T_n)} \\
\end{array}
$$