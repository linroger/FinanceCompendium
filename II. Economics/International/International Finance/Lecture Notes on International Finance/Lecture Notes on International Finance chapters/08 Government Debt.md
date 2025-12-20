---
aliases: null
tags: null
key_concepts: null
parent_directory: null
cssclasses: academia
title: Government Debt
linter-yaml-title-alias: Government Debt
primary_tags:
- market value government debt
- government bond portfolio transversality
- government debt portfolio equation
- understanding asset prices
secondary_tags:
- government debt valuation sustainability
- yield implies government finance
- debt determines value based
- government debt important reserve
- assets government debt fact
- surpluses future debt risk
- explanation public debt
- returns government bonds maturity
- nominal risk free debt
tags_extracted: '2025-12-18T01:44:58.214507'
---

# Government Debt

# Summary

- If we look backward, the market value of government debt is determined by past debt, primary surpluses, and debt returns:

$$
\frac {D _ {t}}{Y _ {t}} = - \sum_ {j = 0} ^ {t - 1} \frac {S _ {t - j}}{Y _ {t - j}} \exp (R _ {t - j \rightarrow t} ^ {D} - X _ {t - j \rightarrow t}) + \frac {D _ {0}}{Y _ {0}} \exp (R _ {0 \rightarrow t} ^ {D} - X _ {0 \rightarrow t}).
$$

- If we look forward, the market value of government debt is backed by the present value of future primary surpluses:

$$
D _ {t} = \mathbb {E} _ {t} \left[ \sum_ {k = 1} ^ {\infty} \exp \left(M _ {t, t + k}\right) S _ {t + k} \right] + \lim  _ {k \rightarrow \infty} \mathbb {E} _ {t} \left[ \exp \left(M _ {t, t + k}\right) D _ {t + k} \right].
$$

- This forward-looking valuation equation also implies a trade-off in the risk dimension. The government has to choose between insuring the debtholders and insuring the taxpayers.  
- In the cases of the U.S. and past reserve asset issuers, the market value of government debt may exceed its fiscal backing, leading to a public debt valuation puzzle.

In the last chapter, we saw two accounts of the international monetary system that both regard safe assets as the key ingredient. One view emphasizes the international risk-sharing arrangement that is implemented by the U.S. supplying safe assets and taking a levered position on riskier claims, whereas the other view focuses on the foreigners' countercyclical demand for safe assets. In reality, most safe assets are government debt. In fact, when the U.S. establishes its status as the world's reserve asset supplier, it is conceivable that the U.S. government debt first becomes an important reserve asset before other dollar-denominated private debt caught up in their status.

In this chapter, we study the valuation of government debt and issues related to fiscal sustainability in greater details. We build on Chapters 4, 6, and 7, in which we introduced one-period risk-free

government bonds. For example, in Chapter 6, the government budget condition in nominal terms can be expressed as

$$
Q _ {t} = S _ {t} + Q _ {t + 1} \exp (- i _ {t}),
$$

where  $S_{t}$  is the government primary surplus in nominal terms,  $Q_{t}$  is the nominal face value of the debt, and  $i_{t}$  is the log nominal risk-free rate.

Now, we consider more general cases in which the government can issue different types contingent claims, including the long-term bonds. Let  $D_{t}$  denote the market value of aggregate government debt portfolio, and let  $\exp(R_{t}^{D})$  denote its cum-coupon return. Then, the government budget condition can be expressed as

$$
D _ {t - 1} \exp \left(R _ {t} ^ {D}\right) = S _ {t} + D _ {t}, \tag {8.1}
$$

with the previous special case of one-period nominal risk-free bond attained when  $Q_{t} = D_{t - 1}\exp (R_{t}^{D})$  and  $R_{t}^{D} = i_{t - 1}$ .

Before we formally analyze this general case, let us consider a simple personal loan example. Suppose I borrow  \$100,000 today at the annual interest rate of \(5\%$  to purchase a house. The loan duration is 10 years, with constant payment each year. A simple calculation shows that the constant payment is \)12,950 each year. Table 8.1 reports the detailed loan schedule.

Now, suppose I stand at the beginning of year 6. I have made 5 loan payments in the past, and my outstanding balance is  \$56,069. This number has two interpretations. The first interpretation is based on backward-looking accounting: this outstanding balance of\$ 56,069 is a result of me repaying the loan in the past 5 years. In each year, after I pay back the interest that is equal to 5% times the outstanding loan balance, the remaining amount of my payment (i.e., the principal payment in the last column) contributes to the reduction of my outstanding loan amount over time. In other words, my outstand-

<table><tr><td>Year</td><td>Balance</td><td>Payment</td><td>Interest payment</td><td>Principal payment</td></tr><tr><td>1</td><td>$100,000</td><td>$12,950</td><td>$5,000</td><td>$7,950</td></tr><tr><td>2</td><td>$92,050</td><td>$12,950</td><td>$4,602</td><td>$8,348</td></tr><tr><td>3</td><td>$83,702</td><td>$12,950</td><td>$4,185</td><td>$8,765</td></tr><tr><td>4</td><td>$74,936</td><td>$12,950</td><td>$3,747</td><td>$9,204</td></tr><tr><td>5</td><td>$65,733</td><td>$12,950</td><td>$3,287</td><td>$9,664</td></tr><tr><td>6</td><td>$56,069</td><td>$12,950</td><td>$2,803</td><td>$10,147</td></tr><tr><td>7</td><td>$45,922</td><td>$12,950</td><td>$2,296</td><td>$10,654</td></tr><tr><td>8</td><td>$35,267</td><td>$12,950</td><td>$1,763</td><td>$11,187</td></tr><tr><td>9</td><td>$24,080</td><td>$12,950</td><td>$1,204</td><td>$11,746</td></tr><tr><td>10</td><td>$12,334</td><td>$12,950</td><td>$617</td><td>$12,334</td></tr></table>

Table 8.1: Personal Loan Example

ing balance of  \$56,069 in year 6 is equal to the initial loan amount of\$ 100,000 minus the sum of the first 5 principal payments.

The second interpretation is based on forward-looking valuation: my outstanding balance of  \$56,069 at the beginning of year 6 also reflects the present value of my remaining payments in the future. From the bank's perspective, my personal loan is valued at\$ 56,069 because this value describes the present value of the remaining 5 payments discounted at the interest rate of 5%. This discount rate, by the way, does not have to equal to the risk-free rate if the bank believes that I may default on the loan. In this way, my outstanding loan balance in a given year can be interpreted both as the result of past borrowing and payments, and as the discounted present value of future promised payments.

The analysis of government debt is similar to this example of personal loan. The only key difference is that the analysis of government debt tends to have an infinite horizon as the government is supposed to be long-lasting, whereas the personal finance products tend to have a pre-determined horizon. We next examine the backward-looking and forward-looking approaches to government debt following Jiang, Lustig, Van Nieuwerburgh, and Xiaolan [2023b].

# 8.A Backward-Looking Accounting

The backward-looking approach attributes variations in the debt/GDP ratio to the history of primary surpluses, output growth, inflation, and interest rates. Specifically, by iterating backward Eq. (8.1), we can write the debt today as a function of cumulative past returns and past primary deficits [Hall and Sargent, 2011].

Proposition 8.1. (a) The market value of government debt can be expressed as

$$
D _ {t} = - \sum_ {j = 0} ^ {t - 1} S _ {t - j} \exp \left(R _ {t - j \rightarrow t} ^ {D}\right) + D _ {0} \exp \left(R _ {0 \rightarrow t} ^ {D}\right), \tag {8.2}
$$

where  $R_{t - j\rightarrow t}^{D} = R_{t - j + 1}^{D} + \ldots R_{t - 1}^{D} + R_{t}^{D}$  is the cumulative debt return.

(b) We can restate this expression to obtain a backward-looking expression for the debt/GDP ratio:

$$
\frac {D _ {t}}{Y _ {t}} = - \sum_ {j = 0} ^ {t - 1} \frac {S _ {t - j}}{Y _ {t - j}} \exp \left(R _ {t - j \rightarrow t} ^ {D} - X _ {t - j \rightarrow t}\right) + \frac {D _ {0}}{Y _ {0}} \exp \left(R _ {0 \rightarrow t} ^ {D} - X _ {0 \rightarrow t}\right), \tag {8.3}
$$

where  $\exp (X_{t - j\rightarrow t}) = Y_t / Y_{t - j}$  is the cumulative nominal GDP growth.

The proof is in Appendix A.30. As the government debt/GDP ratio is stationary in many models, it is usually easier to focus on

this ratio instead of the debt level. Proposition 8.1(b) shows that the current debt/GDP ratio depends on past primary surpluses and deficits: a greater borrowing in the past to finance deficits  $-S_{t-j}$  leads to a higher debt/GDP ratio today. Moreover, the borrowing is compounded by the growth-adjusted return  $R_{t-j\rightarrow t}^{D} - X_{t-j\rightarrow t}$ , so that high real debt returns, high inflation rates, and low output growth all magnify the past borrowing and contribute to a high debt/GDP ratio today.

In this way, the backward-looking approach provides a useful way to attribute the increase in the government debt/GDP ratio from time 0 to  $t$  to four components: government deficits, real debt returns, inflation, and output growth. Hall and Sargent [2011, 2022], Anderson and Leeper [2023] conduct such decomposition exercises in the history of the U.S. For example, the debt/GDP ratio increased from  $86\%$  to  $101\%$  in the Covid period from 2019 to 2023. Government deficits were the main contributor to the increase, while high inflation, positive real GDP growth, and negative debt returns all helped to partially offset the deficits.

We can also examine this result in a steady state in which debt returns, growth rates, and surplus/GDP ratios are all constants. Then, the steady-state debt/GDP ratio can be expressed as

$$
\begin{array}{l} \frac {D}{Y} = - \frac {S}{Y} \frac {1}{1 - \exp (R ^ {D} - X)} \approx \frac {S}{Y} \frac {1}{R ^ {D} - X}, \\ \frac {S}{Y} = \frac {D}{Y} (R ^ {D} - X). \\ \end{array}
$$

In real terms, we can express this relation as

$$
\frac {s}{y} = \frac {d}{y} (r ^ {D} - x), \tag {8.4}
$$

where  $r^D = R^D - \pi$  denotes the real return to the bond portfolio and  $x = X - \pi$  denotes the real growth rate.

First, consider the case in which the debt returns are higher than the GDP growth, i.e.,  $r^D > x$ . For a positive amount of debt, i.e.,  $d > 0$ , the government has to run a budget surplus in perpetuity, i.e.,  $s > 0$ , to pay off the interest and sustain the same debt/GDP level.

Then, consider the case in which the debt returns are lower than the GDP growth, i.e.,  $r^D < x$ . The literature usually denotes this condition by  $r < g$ . In this case, the government can roll over its debt in perpetuity while running steady-state deficits, i.e.,  $s < 0$ . Blanchard [2019] uses this logic to argue that the U.S. has an infinite debt capacity as long as the interest rate is lower than the GDP growth rate. In this environment, in fact, the government can start with an arbitrary amount of government debt. If it just rolls over its debt by raising

more debt to pay the interests due, then, the government debt quantity rises at the interest rate  $r^D$ , while the GDP grows at a higher rate of  $x$ . If we wait long enough, the government debt/GDP ratio will decline to zero, making it easy for the government to eventually raise a one-time tax as a small fraction of the GDP and pay down the debt.

It is also straightforward to consider bond convenience yields in this calculation. In the absence of convenience yields, the debt return is equal to the risk-free rate,  $r^D = r$ . In the presence of convenience yields, the government is able to finance its debt at a rate lower than the risk-free rate  $\rho$ :

$$
r ^ {D} = \rho - \lambda .
$$

Then, Eq. (8.4) becomes

$$
\frac {s}{y} = \frac {d}{y} (\rho - \lambda - x),
$$

which implies that, in the case of  $r^D > x$ , a higher convenience yield  $\lambda$  lowers the required surplus/GDP ratio to sustain a given debt/GDP ratio.

# 8.A.1 Limitations to the Backward-Looking Approach

There are limits to what we learn from the backward-looking approach, which is a statement of the past. The future may or may not be the same. Specifically, consider the task of predicting the market value of debt in the next period  $t + 1$ , which follows

$$
D _ {t + 1} = - S _ {t + 1} + D _ {t} \exp (R _ {t + 1} ^ {D}),
$$

and therefore depends on not only the future government surplus  $S_{t+1}$ , but also the future debt return  $R_{t+1}^{D}$ . While the future surplus may be predicted following some well-defined legislative or budgetary rules, it is much harder to predict the future debt return, which depends on the investors' expectation of the government's fiscal conditions in the more distant future and their risk appetite. Similarly, back in the personal loan example in Table 8.1, if the lender is unsure of the borrower's future income and therefore has doubt about the borrower's ability to repay the loan, then, the market value of the outstanding loan needs to adjust to reflect this uncertainty.

In this sense, the law of motion for government debt is less "mechanical" than the law of motion for economic quantities such as the capital stock. The capital stock depends on depreciation and investments, and large adjustments in these economic quantities are subject to adjustment cost. Adjustments in the debt return, in comparison, reflect changes in investors' expectations and risk preferences which

can be much faster and greater. As a result, in the next section we turn to the valuation tools developed in finance, which are exactly about understanding how asset prices respond to uncertainty in the future.

# 8.B Forward-Looking Valuation

As in the backward-looking accounting, here we also start with Eq. (8.1). We consider a useful special case in which the government issues nominal bonds up to tenor  $H$ . So, the market value of the entire government debt portfolio can be expressed as

$$
D _ {t} = \sum_ {h = 1} ^ {H} Q _ {t} (h) P _ {t} (h),
$$

where  $Q_{t}(h)$  is the quantity of outstanding nominal zero-coupon bonds of maturity  $h$  in period  $t$ , and  $P_{t}(h)$  is the price for the  $h$ -year bonds in period  $t$ . We note that the one-period nominal risk-free debt is a special case with  $H = 1$ ,  $Q_{t}(1) = B_{t + 1}$ , and  $P_{t}(1) = \exp(-i_{t})$ .

These bonds may be defaultable. When government default does not happen in period  $t$ , the one-period government budget condition becomes

$$
D _ {t - 1} \exp \left(R _ {t} ^ {D}\right) = \sum_ {h = 1} ^ {H} Q _ {t - 1} (h) P _ {t} (h - 1) = S _ {t} + \sum_ {h = 1} ^ {H} Q _ {t} (h) P _ {t} (h). \tag {8.5}
$$

When default happens in period  $t$ , all existing bonds from period  $t$  are wiped out. After the default, the government may be able to issue new bonds at prices  $P_{t}(h)$  in this current period, as well as in future periods:

$$
0 = S _ {t} + \sum_ {h = 1} ^ {H} Q _ {t} (h) P _ {t} (h).
$$

This time, we iterate forward these equations, and derive the following intertemporal government budget condition. We use  $M_{t,t+k}$  to denote the multi-horizon nominal SDF from period  $t$  to period  $t + k$ .

Proposition 8.2. Even when the government debt is defaultable, the market value of government debt is equal to the present value of future government surpluses plus a transversality term:

$$
D _ {t} = \mathbb {E} _ {t} \left[ \sum_ {k = 1} ^ {\infty} \exp \left(M _ {t, t + k}\right) S _ {t + k} \right] + \lim  _ {k \rightarrow \infty} \mathbb {E} _ {t} \left[ \exp \left(M _ {t, t + k}\right) D _ {t + k} \right]. \tag {8.6}
$$

Using the one-period budget constraint (8.1) again, we can also express

It is a simple extension to consider partial default, which we do not consider in this note.

this intertemporal government budget condition as

$$
D _ {t - 1} \exp \left(R _ {t} ^ {D}\right) = \mathbb {E} _ {t} \left[ \sum_ {k = 0} ^ {\infty} \exp \left(M _ {t, t + k}\right) S _ {t + k} \right] + \lim  _ {k \rightarrow \infty} \mathbb {E} _ {t} \left[ \exp \left(M _ {t, t + k}\right) D _ {t + k} \right]. \tag {8.7}
$$

The proof is given in Appendix A.31. Eq. (8.6) and (8.7) are equivalent ways to express the same intertemporal government budget condition. Eq. (8.6) equates the end-of-period market value of the government debt after issuances and repayments,  $D_{t}$ , to the ex-dividend present value of future surpluses and the transversality term, whereas Eq. (8.7) equates the beginning-of-period market value of the government debt,  $D_{t-1}\exp(R_t^D)$ , to the cum-dividend present value of future surpluses and the transversality term. Our results can be expressed in either convention we use. To avoid confusion, we stick to the first expression in this section.

If the transversality condition holds, i.e.,

$$
\lim  _ {k \rightarrow \infty} \mathbb {E} _ {t} [ \exp (M _ {t, t + k}) D _ {t + k} ] = 0, \tag {8.8}
$$

then, we can express this intertemporal government budget condition (8.6) as

$$
D _ {t} = P _ {t} ^ {T} - P _ {t} ^ {G}, \tag {8.9}
$$

where  $D_{t}$  on the left-hand side is the market value of debt at the end of period  $t$ , and  $P_{t}^{T}$  and  $P_{t}^{G}$  on the right-hand side denote the present value of current and future tax revenues and government spending:

$$
P _ {t} ^ {T} \stackrel {\text {d e f}} {=} \mathbb {E} _ {t} \left[ \sum_ {k = 1} ^ {\infty} \exp (M _ {t, t + k}) T _ {t + k} \right],
$$

$$
P _ {t} ^ {G} \stackrel {\mathrm {d e f}} {=} \mathbb {E} _ {t} \left[ \sum_ {k = 1} ^ {\infty} \exp (M _ {t, t + k}) G _ {t + k} \right].
$$

We refer to the present value of future government surpluses  $P_{t}^{T} - P_{t}^{G}$  as the fiscal backing. When the transversality condition holds, the fiscal backing determines the market valuation of the aggregate government debt portfolio.

This equation provides a forward-looking valuation of the government debt, which determines its value based on the expectation of future government surpluses and their discount rates. In comparison, the backward-looking accounting formula (8.2) accounts for the debt value based on the history of past government surpluses and realized debt returns. As in the personal loan example we considered at the beginning of this chapter, these two approaches are both valid and provide complementary perspectives on the valuation of government debt.

We offer three economic interpretations of this forward-looking relationship. First, it is worth noting that the cash flow stream of government surpluses  $S_{t}$  can be replicated by simply trading the government debt: if an investor buys all new government debt issuances and receives the government debt coupons and repayments, then, his or her cash flow is exactly equal to the government surpluses. As such, Proposition 8.2 shows that the aggregate government debt portfolio can be priced by any investors who can trade this strategy, even when the markets are incomplete and there are multiple SDFs that price the tradable asset space.

In fact, for investors who can trade government debt, they should agree on the valuation of government debt even when they have different SDFs. For investors  $i$  and  $j$  with SDFs  $M_{t,t+k}^{i}$  and  $M_{t,t+k}^{j}$ , respectively, we have

$$
\mathbb {E} _ {t} \left[ \sum_ {k = 1} ^ {\infty} \exp \left(M _ {t, t + k} ^ {i}\right) \left(T _ {t + k} - G _ {t + k}\right) \right] = \mathbb {E} _ {t} \left[ \sum_ {k = 1} ^ {\infty} \exp \left(M _ {t, t + k} ^ {j}\right) \left(T _ {t + k} - G _ {t + k}\right) \right]. \tag {8.10}
$$

If this equality does not hold, these two investors should trade with each other using the government debt portfolio.

Second, this result implies that, in order to back up  $D_{t}$  dollars' worth of debt, the government needs to generate a positive present value from its future primary surpluses. Conversely, when the present value of primary surpluses increases in period  $t$ , the government debt appreciates in value and generates a higher return  $R_{t}^{D}$ . That is, Eq. (8.9) implies

$$
D _ {t - 1} \left(\mathbb {E} _ {t} - \mathbb {E} _ {t - 1}\right) \left[ \exp \left(R _ {t} ^ {D}\right) \right] = \left(\mathbb {E} _ {t} - \mathbb {E} _ {t - 1}\right) \left[ \left(P _ {t} ^ {T} + T _ {t}\right) - \left(P _ {t} ^ {G} + G _ {t}\right) \right],
$$

where  $\exp(R_t^D)$  denotes the holding return of the aggregate government bond portfolio:

$$
\exp (R _ {t} ^ {D}) = \frac {\sum_ {h = 1} ^ {H} Q _ {t - 1} (h) P _ {t} (h - 1)}{\sum_ {h = 1} ^ {H} Q _ {t - 1} (h) P _ {t - 1} (h)} = \frac {D _ {t} + S _ {t}}{D _ {t - 1}}.
$$

Third, if the transversality condition holds, we can express Eq. (8.6) as

$$
D _ {t} = \sum_ {k = 1} ^ {\infty} \mathbb {E} _ {t} \left[ \exp \left(M _ {t, t + k}\right) \right] \mathbb {E} _ {t} \left[ S _ {t + k} \right] + \sum_ {k = 1} ^ {\infty} c o v _ {t} \left(\exp \left(M _ {t, t + k}\right), S _ {t + k}\right),
$$

which implies that the fiscal backing can be created either by running a higher government surpluses on average (i.e., higher  $\mathbb{E}_t[S_{t+k}]$ ), or by making government surpluses more countercyclical (i.e., higher  $cov_t(\exp(M_{t,t+k}), S_{t+k}))$ . The latter channel creates fiscal backing by conditionally generating higher cash flows in high marginal utility

states, which provides an insurance to the debtholders—a point we will revisit in our discussion of the fiscal trade-off in the risk domain.

Finally, we make two more technical observations. First, if the transversality condition (8.8) holds, the intertemporal government budget condition (8.6) for all periods has the same information content as the one-period budget constraint (8.1) for all periods. Specifically, imposing the intertemporal budget constraints in two adjacent periods implies the one-period budget constraint in the first period. To see this, simply apply  $\mathbb{E}_t[\exp (M_{t,t + 1})(\cdot)]$  to both sides of the second period's intertemporal condition, and then subtract from the first period's intertemporal condition to obtain the first period's one-period budget constraint.

Second, the intertemporal government budget condition can also be expressed in real terms. For example, we can rewrite Eq. (8.6) be expressed as

$$
d _ {t} = \mathbb {E} _ {t} \left[ \sum_ {k = 1} ^ {\infty} \exp (m _ {t, t + k}) s _ {t + k} \right] + \lim  _ {k \rightarrow \infty} \mathbb {E} _ {t} [ \exp (m _ {t, t + k}) d _ {t + k} ],
$$

where  $d_{t}$  and  $s_{t}$  are the real market value of government debt and the real primary surplus, and  $m_{t,t+k}$  is the real SDF which is related to the nominal SDF via Eq. (6.1).

# 8.B.1 Incorporating the Convenience Yields

We can further generalize this result with convenience yields. The convenience yield  $\lambda_t(h)$  is the expected returns on government bonds of maturity  $h$  that investors are willing to forgo. As in Chapter 4, the convenience yield is a wedge in the standard Euler equation:

$$
\exp (- \lambda_ {t} (h)) = \mathbb {E} _ {t} \left[ \exp (M _ {t + 1}) \frac {P _ {t + 1} (h - 1)}{P _ {t} (h)} \right].
$$

The presence of the convenience yield implies that the government can finance its debt at a lower interest rate or a higher bond price, which increases the amount it can raise from debt issuance. This additional revenue from debt issuance is a form of seigniorage revenue, which we formally define as the bond market value  $Q_{t}(h)P_{t}(h)$  times the Euler equation wedge  $1 - \exp (-\lambda_{t}(h))$ , summed across all maturities  $h$ :

$$
K _ {t} \stackrel {{\text {d e f}}} {{=}} \sum_ {h = 1} ^ {H} Q _ {t} (h) P _ {t} (h) \left(1 - \exp \left(- \lambda_ {t} (h)\right)\right).
$$

When the convenience yields are identical for bonds of all maturities, i.e.,  $\lambda_t(h) = \lambda_t$ , then, we can simplify this seigniorage revenue

as the product between the market value of debt and the convenience yield level:

$$
K _ {t} = D _ {t} (1 - \exp (- \lambda_ {t})) \approx D _ {t} \lambda_ {t},
$$

where the approximation holds when the convenience yield  $\lambda_{t}$  is small.

This seigniorage revenue contributes to the government's income in addition to the primary surpluses and results in a higher fiscal backing. In the following proposition, we generalize Proposition 8.2 to incorporate the convenience yields.

Proposition 8.3. When there is convenience yield on government debt and possible government default, the market value of government debt is equal to the present value of future government surpluses and future seigniorage revenues plus a transversality term:

$$
D _ {t} = \mathbb {E} _ {t} \left[ \sum_ {k = 1} ^ {\infty} \exp \left(M _ {t, t + k}\right) S _ {t + k} \right] + \mathbb {E} _ {t} \left[ \sum_ {k = 0} ^ {\infty} \exp \left(M _ {t, t + k}\right) K _ {t + k} \right] + \lim  _ {k \rightarrow \infty} \mathbb {E} _ {t} \left[ \exp \left(M _ {t, t + k}\right) D _ {t + k} \right]. \tag {8.11}
$$

The proof is given in Appendix A.32. In this formula, while the sum of government surpluses starts from period  $t + 1$  to back up the debt outstanding at the end of period  $t$ , the sum of the seigniorage revenues starts from period  $t$ . This is because the seigniorage revenue  $K_{t}$  results from the fact that the government can pay back its debt in period  $t + 1$  with a lower interest, which is tied to  $\lambda_{t}(h)$ , the convenience yield in period  $t$ . Since these additional proceeds are due to investors' willingness to accept lower returns to hold the government debt in exchange for its liquidity and safety, we can also interpret the seigniorage revenue term as the valuation of the government debt's service flows. When the service flows become more valuable, the value of government debt appreciates and results in a higher return  $R_{t}^{D}$ .

# 8.B.2 Fiscal Trade-Off in the Risk Domain

The intertemporal government budget condition also has implications for how the government trades off the risk that it transfers to the taxpayers and the debtholders. Recall that the cum-dividend debt return is

$$
\exp (R _ {t + 1} ^ {D}) = \frac {\sum_ {h = 1} ^ {\infty} P _ {t + 1} (h - 1) Q _ {t} (h)}{\sum_ {h = 1} ^ {\infty} P _ {t} (h) Q _ {t} (h)}.
$$

Similarly, we can regard the claims to tax revenues and government spending as financial securities, and define their cum-dividend

returns as

$$
\exp (R _ {t + 1} ^ {T}) = \frac {P _ {t + 1} ^ {T} + T _ {t + 1}}{P _ {t} ^ {T}},
$$

$$
\exp (R _ {t + 1} ^ {G}) = \frac {P _ {t + 1} ^ {G} + G _ {t + 1}}{P _ {t} ^ {G}}.
$$

Moreover, if we regard the equity market return  $\exp(R_{t+1}^{M})$  as a systematic risk factor, we can define the debt beta, the tax beta, and the spending beta as

$$
\beta_ {t} ^ {D} = \frac {\operatorname {c o v} _ {t} (\exp (R _ {t + 1} ^ {D}) , \exp (R _ {t + 1} ^ {M}))}{\operatorname {v a r} _ {t} (\exp (R _ {t + 1} ^ {M}))},
$$

$$
\beta_ {t} ^ {T} = \frac {c o v _ {t} (\exp (R _ {t + 1} ^ {T}) , \exp (R _ {t + 1} ^ {M}))}{v a r _ {t} (\exp (R _ {t + 1} ^ {M}))},
$$

$$
\beta_ {t} ^ {G} = \frac {c o v _ {t} (\exp (R _ {t + 1} ^ {G}) , \exp (R _ {t + 1} ^ {M}))}{v a r _ {t} (\exp (R _ {t + 1} ^ {M}))}.
$$

Then, we obtain the following result characterizing these claims' expected returns and systematic risk exposures [Jiang, Lustig, Van Nieuwerburgh, and Xiaolan, 2020b].

Proposition 8.4. (a) The expected returns on the aggregate government debt portfolio, the claim to tax revenues, and the claim to government spending satisfy

$$
\frac {D _ {t} + P _ {t} ^ {G}}{D _ {t}} \mathbb {E} _ {t} \left[ \exp (R _ {t + 1} ^ {T}) \right] = \mathbb {E} _ {t} \left[ \exp (R _ {t + 1} ^ {D}) \right] + \frac {P _ {t} ^ {G}}{D _ {t}} \mathbb {E} _ {t} \left[ \exp (R _ {t + 1} ^ {G}) \right].
$$

(b) The betas of the aggregate government debt portfolio, the claim to tax revenues, and the claim to government spending satisfy

$$
\frac {D _ {t} + P _ {t} ^ {G}}{D _ {t}} \beta_ {t} ^ {T} = \beta_ {t} ^ {D} + \frac {P _ {t} ^ {G}}{D _ {t}} \beta_ {t} ^ {G}.
$$

The proof is presented in Appendix A.33. This proposition resembles the Modigliani-Miller Theorem in corporate finance, which states that, within a firm, its equity is a levered claim on the underlying asset. As a result, the return beta and the risk premium on the firm asset are equal to the weighted average of those on the firm's equity and debt claims:

$$
\frac {D + E}{D} \beta_ {t} ^ {A} = \beta_ {t} ^ {D} + \frac {E}{D} \beta_ {t} ^ {E},
$$

where  $D$  is the market value of debt and  $E$  is the ex-dividend market value of equity. Similarly, the government holds the claim to tax revenues and splits up these cash flows to debtholders and recipients of government spending. As a result, the return beta and the risk

premium on the tax claim are equal to the weighted average of those on the government debt and the spending claim.

This result implies a very tight constraint on how the government insures taxpayers and debtholders. To simplify the argument, we assume that the taxpayers both pay tax and receive the government spending as a transfer.

If the government decides to make its debt risk-free, which implies a zero debt beta  $\beta_t^D = 0$ , then, Proposition 8.4 implies

$$
\beta_ {t} ^ {T} = \frac {P _ {t} ^ {G}}{D _ {t} + P _ {t} ^ {G}} \beta_ {t} ^ {G}.
$$

With a positive amount of outstanding debt, i.e.,  $D_{t} > 0$ , and a procyclical tax claim, i.e.,  $\beta_{t}^{T} > 0$ , then, the spending beta has to be even higher than the tax beta. That is, the government spending has to be more procyclical than the tax revenue in order to manufacture risk-free government debt. In other words, the risk-free debt is manufactured by transferring more risk to the taxpayers.

Conversely, insuring taxpayers by lowering tax or raising government spending in bad times implies high debt beta or low spending beta, which renders the government debt risky by requiring a high debt beta.

Taking a step back, this trade-off between insuring the taxpayers and insuring the debtholders is a manifestation of the resource constraint. There are only so many resources that the government can use during a recession. If it allocates these resources to the debtholders, then the debt value is preserved in recessions at the expense of the taxpayers. Conversely, if it allocates these resources to the taxpayers, then the debt value has to go down in recessions.

Moreover, we can extend this trade-off result to the case of convenience yields. In this case, the debt return can be expressed as a weighted average of the returns on the tax, spending, and seigniorage claims:

$$
\begin{array}{l} \exp \left(R _ {t + 1} ^ {D}\right) = \frac {D _ {t + 1} + S _ {t + 1}}{D _ {t}} = \frac {P _ {t + 1} ^ {T} + P _ {t + 1} ^ {K} + K _ {t + 1} - P _ {t + 1} ^ {G} + T _ {t + 1} - G _ {t + 1}}{D _ {t}} \\ = \frac {P _ {t} ^ {T}}{D _ {t}} \exp \left(R _ {t + 1} ^ {T}\right) + \frac {P _ {t} ^ {K}}{D _ {t}} \exp \left(R _ {t + 1} ^ {K}\right) - \frac {P _ {t} ^ {G}}{D _ {t}} \exp \left(R _ {t + 1} ^ {G}\right), \tag {8.12} \\ \end{array}
$$

where  $P_{t}^{K}$  denotes the ex-dividend present value of the seigniorage claim.

While this formula looks like a simple extension of the case without convenience yield, there is a subtle difference. Proposition 8.3 implies that

$$
D _ {t} = P _ {t} ^ {T} + P _ {t} ^ {K} + K _ {t} - P _ {t} ^ {G}.
$$

We have an additional  $K_{t}$  term since the sum of the seigniorage revenue starts from  $t = 0$  in the intertemporal government budget condition (8.11), which means that, unlike the case without convenience yields, the weights on the right-hand side of Eq. (8.12) do not sum up to 1:

$$
\frac {P _ {t} ^ {T}}{D _ {t}} + \frac {P _ {t} ^ {K}}{D _ {t}} - \frac {P _ {t} ^ {G}}{D _ {t}} = 1 - \frac {K _ {t}}{D _ {t}} <   1.
$$

This is a feature, not a bug. Suppose the tax, spending, and seigniorage claims all have the same discount rate. Then, as long as the weights sum up to 1, a linear combination of these claims also has the same discount rate. The presence of the bond convenience yield introduces a "missing weight," which allows the debt to have a lower discount rate  $R_{t+1}^{D}$ . More precisely, we can write Eq. (8.12) as

$$
\exp (R _ {t + 1} ^ {D}) \left(1 + \frac {K _ {t}}{P _ {t} ^ {T} + P _ {t} ^ {K} - P _ {t} ^ {G}}\right) = \frac {P _ {t} ^ {T}}{P _ {t} ^ {T} + P _ {t} ^ {K} - P _ {t} ^ {G}} \exp (R _ {t + 1} ^ {T}) + \frac {P _ {t} ^ {K}}{P _ {t} ^ {T} + P _ {t} ^ {K} - P _ {t} ^ {G}} \exp (R _ {t + 1} ^ {K}) - \frac {P _ {t} ^ {G}}{P _ {t} ^ {T} + P _ {t} ^ {K} - P _ {t} ^ {G}} \exp (R _ {t + 1} ^ {G}).
$$

On the left-hand side, the debt return is adjusted by a factor of  $K_{t} / (P_{t}^{T} + P_{t}^{K} - P_{t}^{G})$ , which reflects the size of the convenience yield. On the right-hand side, the weights are normalized to sum up to 1. When the convenience yield is higher and generates a high seigniorage revenue  $K_{t}$ , the debt return  $R_{t+1}^{D}$  can be lower than the weighted average of the tax, spending, and seigniorage returns.

Proposition 8.5. (a) The expected returns on the aggregate government debt portfolio, the claims to tax revenues, government spending, and seigniorage revenues satisfy

$$
\begin{array}{l} \mathbb {E} _ {t} \left[ \exp \left(R _ {t + 1} ^ {D}\right) \right] \left(1 + \frac {K _ {t}}{P _ {t} ^ {T} + P _ {t} ^ {K} - P _ {t} ^ {G}}\right) = \frac {P _ {t} ^ {T}}{P _ {t} ^ {T} + P _ {t} ^ {K} - P _ {t} ^ {G}} \mathbb {E} _ {t} \left[ \exp \left(R _ {t + 1} ^ {T}\right) \right] + \frac {P _ {t} ^ {K}}{P _ {t} ^ {T} + P _ {t} ^ {K} - P _ {t} ^ {G}} \mathbb {E} _ {t} \left[ \exp \left(R _ {t + 1} ^ {K}\right) \right] \\ - \frac {P _ {t} ^ {G}}{P _ {t} ^ {T} + P _ {t} ^ {K} - P _ {t} ^ {G}} \mathbb {E} _ {t} \left[ \exp \left(R _ {t + 1} ^ {G}\right) \right]. \\ \end{array}
$$

(b) The betas of the aggregate government debt portfolio and the claims to tax revenues, government spending, and seigniorage revenues satisfy

$$
\beta_ {t} ^ {D} \left(1 + \frac {K _ {t}}{P _ {t} ^ {T} + P _ {t} ^ {K} - P _ {t} ^ {G}}\right) = \frac {P _ {t} ^ {T}}{P _ {t} ^ {T} + P _ {t} ^ {K} - P _ {t} ^ {G}} \beta_ {t} ^ {T} + \frac {P _ {t} ^ {K}}{P _ {t} ^ {T} + P _ {t} ^ {K} - P _ {t} ^ {G}} \beta_ {t} ^ {K} - \frac {P _ {t} ^ {G}}{P _ {t} ^ {T} + P _ {t} ^ {K} - P _ {t} ^ {G}} \beta_ {t} ^ {G}.
$$

The proof is presented in Appendix A.34. Part (a) shows that the expected return on the debt is tied to a weighted average of the expected returns on the tax, spending, and seigniorage claims. However, the presence of convenience yield introduces a wedge that is increasing in the convenience yield and hence the seigniorage revenue  $K_{t}$ : a higher convenience yield allows the discount rate on the debt to be lower than the weighted average.

However, on the risk domain, we still obtain a tight constraint on how the government insures the taxpayers and the debtholders. As a special case, suppose the government commits to keeping its debt risk-free, i.e.,  $\beta_t^D = 0$ . Then, part (b) simplifies to

$$
0 = \frac {P _ {t} ^ {T}}{P _ {t} ^ {T} + P _ {t} ^ {K} - P _ {t} ^ {G}} \beta_ {t} ^ {T} + \frac {P _ {t} ^ {K}}{P _ {t} ^ {T} + P _ {t} ^ {K} - P _ {t} ^ {G}} \beta_ {t} ^ {K} - \frac {P _ {t} ^ {G}}{P _ {t} ^ {T} + P _ {t} ^ {K} - P _ {t} ^ {G}} \beta_ {t} ^ {G},
$$

which means that a higher convenience yield per se does not help with insuring the taxpayers. Instead, a countercyclical convenience yield is needed to allow the government to impose lower taxes and insure the taxpayers in high marginal utility states.

What we derived above is a positive statement of the trade-off that the government faces between insuring the taxpayers and insuring the debtholders. This trade-off in itself is silent about what is optimal. We need to develop specific models of the government's objective function and the taxpayers' and the bondholders' preferences to answer the normative question. In some cases, this normative question is not only economic but also political. As Keynes [1926] noted in the context of France's debt payments in the interbellum period,

The level of the franc is going to be settled in the long run, not by speculation or the balance of trade, or even the outcome of the Ruhr adventure, but by the proportion of his earned income which the French taxpayer will permit to be taken from him to pay the claims of the French rentier…

Now it is obvious that there are two methods of attaining the desired equilibrium. You can increase the burdens on the taxpayer, or you can diminish the claims of the rentier. If you choose the first alternative, taxation will absorb nearly a quarter of the national income of France…

Since this by itself is not enough, your next business—provided you accept my conclusion as to the mind of the French public—is to consider coolly how best to reduce the claims of the rentier. Three methods offer themselves: first, a general capital levy; second, a forced reduction of the rate of interest on the public debt; third, a rise of prices which would reduce the real value of the rentier's money claims.

# 8.B.3 Connecting the Aggregate to the Disaggregate Bond Prices

Propositions 8.2 and 8.3 describe the valuation  $D_{t}$  of the entire government debt portfolio, defined as the sum of individual government bonds' values:

$$
D _ {t} = \sum_ {h = 1} ^ {H} Q _ {t} (h) P _ {t} (h).
$$

Let us first consider the determination of these individual government bonds' values. We continue to assume that the government bonds are denominated in local currencies, promise nominal payments, and could potentially default. As the government bonds are

defaultable, their yields are not necessarily the same as the nominal risk-free rates, which we denote by  $i_t(h)$ . Let us use  $i_t^{Treas}(h)$  to denote the yield of the government debt with maturity  $h$ , which satisfies

$$
i _ {t} ^ {\text {T r e a s}} (h) \stackrel {{\text {d e f}}} {{=}} - \frac {1}{h} \log P _ {t} (h).
$$

This government debt yield can be decomposed into a risk-free component, a default spread component, and a convenience yield component:

$$
i _ {t} ^ {T r e a s} (h) = \rho_ {t} (h) + \delta_ {t} (h) - c _ {t} (h),
$$

where the risk-free component reflects the benchmark discount rate implied from the SDF:

$$
\rho_ {t} (h) \stackrel {\mathrm {d e f}} {=} - \frac {1}{h} \log \mathbb {E} _ {t} [ \exp (M _ {t, t + h}) ],
$$

the default spread component captures the risk-neutral expectation of sovereign default,

$$
\delta_ {t} (h) \stackrel {\mathrm {d e f}} {=} - \frac {1}{h} \left(\log \mathbb {E} _ {t} \left[ \exp (M _ {t, t + h}) \prod_ {j = 1} ^ {h} (1 - \chi_ {t + j} ^ {i}) \right] - \log \mathbb {E} _ {t} [ \exp (M _ {t, t + h}) ]\right),
$$

and the convenience yield component captures the wedge between the bond yield and the yield of a hypothetical bond with the same default spread but no Euler equation wedge [Jiang, Lustig, Van Nieuwerburgh, and Xiaolan, 2020c]:

$$
c _ {t} (h) \stackrel {\text {d e f}} {=} \frac {1}{h} \left(\log \mathbb {E} _ {t} \left[ \exp \left(M _ {t, t + h}\right) \prod_ {j = 1} ^ {h} \left(1 - \chi_ {t + j} ^ {i}\right) \exp \left(\lambda_ {t + j - 1} (h - j + 1)\right) \right] - \log \mathbb {E} _ {t} \left[ \exp \left(M _ {t, t + h}\right) \prod_ {j = 1} ^ {h} \left(1 - \chi_ {t + j} ^ {i}\right) \right]\right).
$$

Moreover, while the risk-free rate is risk-free in local currency units, it could carry a currency risk premium. For the case of  $h = 1$ , according to Section 1.B applied to nominal exchange rates  $\mathcal{E}_t$  and interest rates  $\rho_t$  and  $\rho_t^*$ , under joint normality,

$$
\rho_ {t} = \rho_ {t} ^ {*} - \mathbb {E} _ {t} [ \Delta \mathcal {E} _ {t + 1} ] - \frac {1}{2} v a r _ {t} (\Delta \mathcal {E} _ {t + 1}) - c o v _ {t} (M _ {t + 1} ^ {*}, \Delta \mathcal {E} _ {t + 1}),
$$

which implies that the nominal home risk-free rate  $\rho_{t}$  relative to a foreign benchmark  $\rho_{t}^{*}$  is decreasing in the home currency's expected nominal appreciation  $\mathbb{E}_t[\Delta \mathcal{E}_{t + 1}]$ , and increasing in the home currency's risk premium  $RP_{t} = -cov_{t}(M_{t + 1}^{*},\Delta \mathcal{E}_{t + 1}) - \frac{1}{2} var_{t}(\Delta \mathcal{E}_{t + 1})$ .<sup>2</sup> As such, government bonds compensate investors for not only credit risk but also exchange rate risk.

How do we connect this determination of individual bond prices to the valuation of the aggregate government debt portfolio? While

2 The longer-term nominal rates have similar expressions that contain the marginal utility growth and the exchange rate movement from period  $t$  to  $t + h$ .

the intertemporal government budget condition in Propositions 8.2 and 8.3 imposes a restriction on the aggregate government debt portfolio, the government can still carve out different types of liabilities subject to this restriction in aggregate. This is again similar to the corporate finance context, in which the company with a certain type of assets can issue different types of equity and debt liabilities subject to the Modigliani-Miller restriction. That said, when the government surpluses and seigniorage revenues fluctuate, the valuation of the individual bonds needs to respond, resulting in changes in any of the risk-free rate  $\rho_{t}$ , the default spread  $\delta_{t}$ , and the convenience yield  $c_{t}$  components.

# 8.C The Transversality Condition

All of our results above rely on the transversality condition (8.8), reproduced below:

$$
\lim _ {k \to \infty} \mathbb {E} _ {t} \left[ \exp (M _ {t, t + k}) D _ {t + k} \right] = 0,
$$

which states that the discounted value of future government debt has to converge to zero. If this condition does not hold, then, the market value of debt could exceed the present value of government surpluses, and the gap could potentially be infinite. In this section, we provide two perspectives on this condition.

# 8.C.1 The Transversality Condition as Discounted Debt Strip

To evaluate this condition, we may think of a hypothetical financial claim whose payoff at time  $t + k$  is equal to the market value of outstanding government debt in that period. Using the language from the literature that studies dividend strips, we may call this claim the debt strip. Importantly, this debt strip does not pay out the promised payment of a specific debt, but instead pays out the market value of outstanding debt. In other words, holders of this claim are betting on a greater amount of debt outstanding.

In a large class of macro models, the amount of outstanding government debt  $D_{t}$  is cointegrated with the GDP  $Y_{t}$ . The implicit assumption is either that the government manages its debt responsibly and does not allow the size of debt to explode, or that the investors impose discipline so that market value of debt adjusts as the notional amount of borrowing goes up. In either case, the risk premium on the long-term debt strip converges to the risk premium on the long-term GDP claim. Given that the GDP is risky, the risk premium is high enough in many macro models to guarantee that the discounted value of long-term GDP strip converges to zero. As a result, the value

of debt strip also converges to zero, and the transversality condition holds.

# 8.C.2 The Transversality Condition as Household Optimality Condition

The transversality condition is a necessary condition for the optimality of (long-lasting) households' decisions. To derive this result, we consider a set-up similar to the home country in Chapter 1, in which the households maximize expected lifetime utility:

$$
\mathbb {E} _ {0} \left[ \sum_ {t = 0} ^ {\infty} \delta^ {t} u (c _ {t}) \right].
$$

Proving the transversality condition in a general way is technically difficult. Here we consider a much narrower class of utility functions, which is adapted from Brock [1982]: the utility function  $u(c)$  is not only monotone increasing in  $c$  and concave, but also bounded from below. Without loss of generality, we can normalize the utility level and assume  $u(c) \geq 0$ . For simplicity in exposition, we also assume that the price level is fixed, so that the nominal risk-free debt is also risk-free in real terms. For interested readers, Ekeland and Scheinkman [1986] provides a more general characterization.

The households can trade the outstanding government debt. Let  $d_{t}$  denote the households' government debt portfolio and let  $\exp(r_{t}^{D})$  denote its nominal return.

$$
w _ {t} \stackrel {\text {d e f}} {=} c _ {t} + d _ {t} = y _ {t} + d _ {t - 1} \exp \left(r _ {t} ^ {D}\right).
$$

The first-order condition (Euler equation) w.r.t.  $d_{t - 1}$  is given by

$$
u ^ {\prime} \left(c _ {t - 1}\right) = \mathbb {E} _ {t - 1} \left[ \delta u ^ {\prime} \left(c _ {t}\right) \exp \left(r _ {t} ^ {d}\right) \right]. \tag {8.13}
$$

The households are also subject to a no-short-sale constraint  $d_t \geq 0$  for all  $t$ . In general, we need a lower bound on the households' asset position, which is not necessarily zero, so that the households cannot borrow an infinite amount of money for consumption.

We define the households' value function in period  $o$  as

$$
\psi (w _ {t}, t) = \max  \mathbb {E} _ {0} \left[ \sum_ {s = t} ^ {\infty} \delta^ {s} u (c _ {s}) \right],
$$

which can be shown to be concave and differentiable [Benveniste and Scheinkman, 1979, Brock, 1982].

Given this set-up, let us first consider the special case in which the households have a finite horizon  $T$ . Then, in the last period, it is in the households' interest to consume all of their savings instead of

leaving money on the table, as the remaining wealth will be wasted. Moreover, the no-short-sale constraint also implies that the households cannot finish with negative wealth. Therefore, we can express the finite-period transversality condition as

$$
\mathbb {E} _ {0} \left[ \delta^ {T} u ^ {\prime} (c _ {T}) d _ {T} \right] = 0.
$$

The infinite-horizon case has a similar interpretation, though its derivation is more complicated. The following proposition shows that the transversality condition is a necessary condition for the optimality of households' decisions.

Proposition 8.6. Assume that the value function satisfies  $\lim_{t\to \infty}\psi (w_t,t) = 0$ . Then, the optimal solution  $\{c_t\}_{t = 0}^{\infty},\{d_t\}_{t = 0}^{\infty}$  to the households' problem implies the Euler equation (8.13) and the transversality condition

$$
\lim _ {t \to \infty} \mathbb {E} _ {0} \left[ \delta^ {t} u ^ {\prime} (c _ {t}) d _ {t} \right] = 0.
$$

The proof is in Appendix A.35. This proposition shows that the households optimally choose not to "leave money on the table" in the infinite horizon, which means to increase their savings  $d_{t}$  in the government bond portfolio at a rate higher than their discount rate  $\delta^{t}u^{\prime}(c_{t})$ . The households do not borrow an infinite amount of money by short-selling the government debt, either, which is ruled out by the no-short-sale constraint. This result emphasizes that the transversality condition is usually imposed by the households' optimal decision, just like the Euler equation (8.13).

Moreover, while this set-up considers only one type of assets in which households can deposit their savings, the extension to multiple assets is straight-forward. Let  $a_{t}$  denote the households' total savings and  $d_{t}$  denote the households' holdings of one asset that we denote as the government debt. Then, our derivation shows that the transversality condition holds at the portfolio level:

$$
\lim _ {t \to \infty} \mathbb {E} _ {0} \left[ \delta^ {t} u ^ {\prime} (c _ {t}) a _ {t} \right] = 0.
$$

Now, suppose the households' transversality condition for the government debt is violated, i.e.,

$$
\lim  _ {t \rightarrow \infty} \mathbb {E} _ {0} \left[ \delta^ {t} u ^ {\prime} (c _ {t}) d _ {t} \right] > 0.
$$

This implies that the households' holdings in other assets are negative in the infinite horizon, i.e.,

$$
\lim _ {t \to \infty} \mathbb {E} _ {0} \left[ \delta^ {t} u ^ {\prime} (c _ {t}) (a _ {t} - d _ {t}) \right] <   0,
$$

which violates the no-short-sale constraint. So, the transversality condition also holds at the level of individual assets.

Does the presence of bond convenience yields affects the transversality condition? Following Section 4.A, we assume that the households also derive utility directly from holding the government bonds. The utility function is

$$
\mathbb {E} _ {0} \left[ \sum_ {t = 0} ^ {\infty} \delta^ {t} \left(u \left(c _ {t}\right) + v _ {t} \left(d _ {t}\right)\right) \right].
$$

We use  $\lambda_{t}$  to denote the convenience yields at time  $t$ , which, as we see in Section 4.A, is determined by the ratio between the marginal utility of bond holding and the marginal utility of consumption:

$$
\exp (- \lambda_ {t}) = 1 - \frac {v _ {t} ^ {\prime} (d _ {t})}{u ^ {\prime} (c _ {t})}.
$$

Proposition 8.7. In the presence of the bond convenience yield, the optimal solution  $\{c_t\}_{t=0}^{\infty}$ ,  $\{d_t\}_{t=0}^{\infty}$  to the households' problem implies the Euler equation (8.13) and the transversality condition

$$
\lim _ {t \rightarrow \infty} \mathbb {E} _ {0} \left[ \delta^ {t} u ^ {\prime} (c _ {t}) d _ {t} \exp (- \lambda_ {t}) \right] = 0.
$$

When the convenience yield  $\lambda_{t}$  is bounded, we recover the original transversality condition:

$$
\lim _ {t \to \infty} \mathbb {E} _ {0} \left[ \delta^ {t} u ^ {\prime} (c _ {t}) d _ {t} \right] = 0.
$$

The proof is in Appendix A.36. When the bond convenience yield  $\lambda_{t}$  is bounded, we recover the original transversality condition in the presence of the bond convenience yield. In other words, while the bond convenience yield can increase the fiscal backing of the government debt as we show in Proposition 8.3, it does not affect the transversality condition.

# 8.C.3 When Does the Transversality Condition Fail?

The recent literature sees a revival of the idea that the transversality condition may fail under certain conditions, which is used to justify why the market value of government debt could exceed the government's fiscal backing, i.e., the present value of its primary surpluses plus additional seigniorage revenue.

First, in overlapping generation (OLG) models, there are no long-lived investors who impose the transversality condition as an optimality condition as we discussed in Proposition 8.6 and Proposition 8.7. Then, the valuation of the government debt, which is usually the only long-lasting asset in the economy, could be infinite. Blanchard [2019] offers one such example.

Second, the transversality condition can fail when evaluated at the "aggregate SDF" in incomplete markets where the representative agent does not exist. Brunnermeier, Merkel, and Sannikov [2022] present one example, in which individual households face idiosyncratic risks, and the transversality condition still holds at their individual SDFs and their actual cash flows from trading the government debt. In fact, not only does each individual household's SDF look different because of their idiosyncratic risks, their cash flows from trading the government debt is also different from the aggregate primary surpluses because they dynamically buy and sell government debt in response to their idiosyncratic shocks. These cash flows allow the individual households to partially hedge against their idiosyncratic shocks, and can be therefore interpreted as service flows.

# 8.D An Example Economy

The results we derived so far are general. Next, we illustrate their economic meanings in the context of a simple example economy, which largely follows from Jiang, Lustig, Van Nieuwerburgh, and Xiaolan [2020b]. In this economy, we only consider one-period risk-free debt. Yet, the government surplus and the quantity of government debt are risky and cointegrated with GDP.

Let  $Y_{t}$  denote the nominal GDP. The GDP growth is i.i.d. and permanent:

$$
\Delta \log Y _ {t + 1} = X + \sigma \varepsilon_ {t + 1},
$$

where  $\varepsilon_{t + 1}$  denotes the innovation to GDP growth that is i.i.d. normally distributed with mean zero and standard deviation one.

The log nominal SDF is driven by the same GDP shock

$$
M _ {t, t + 1} = - i - \frac {1}{2} \gamma^ {2} - \gamma \varepsilon_ {t + 1},
$$

which implies that a lower GDP growth leads to a higher marginal utility. By the Euler equation for risk-free debt, the one-period log risk-free rate is a constant:  $R^{f} = i$ .

Given these specifications, the present value of a GDP strip  $k$  periods from now is

$$
\mathbb {E} _ {t} [ \exp (M _ {t, t + k}) Y _ {t + k} ] = \exp \left(k (X - i + \frac {1}{2} \sigma^ {2} - \gamma \sigma)\right) Y _ {t},
$$

which converges to zero as  $k \to \infty$  if the discount rate is higher than the GDP growth rate, i.e.,

$$
i + \gamma \sigma > X + \frac {1}{2} \sigma^ {2}.
$$

We note that the discount rate is the benchmark risk-free rate  $i$  implied from the SDF plus the risk premium term  $\gamma \sigma$ . The growth rate is the log growth rate  $X$  plus the Jensen's term  $\frac{1}{2} \sigma^2$ .

We assume that the government commits to issuing one-period risk-free debt. The government also commits to a simple fiscal policy, with a constant spending/GDP ratio  $\bar{\gamma} = G_t / Y_t$  and a constant debt/GDP ratio  $\bar{\delta} = D_t / Y_t$ .

Then, the government budget constraint (8.1) implies a countercyclical process for the surplus/GDP ratio:

$$
\frac {S _ {t}}{Y _ {t}} = \frac {T _ {t} - G _ {t}}{Y _ {t}} = - \frac {D _ {t}}{Y _ {t}} + \exp (R ^ {f}) \frac {D _ {t - 1}}{Y _ {t - 1}} \frac {Y _ {t - 1}}{Y _ {t}} = - \bar {\delta} \left(1 - \exp \left(- (X - i + \sigma \varepsilon_ {t})\right)\right).
$$

This result implies that  $\partial (S_t / Y_t) / \partial \varepsilon_t < 0$ . Therefore, to insure the debtholders by keeping its debt risk-free, the government must generate counter-cyclical primary surpluses. In particular, when the GDP declines ( $\varepsilon_t < 0$ ) in recessions, the tax revenue needs to increase as a fraction of GDP or the government spending needs to decrease. The magnitude of the required counter-cyclical response in primary surpluses is increasing in the debt/GDP ratio  $\bar{\delta}$ .

# 8.D.1 The Transversality Condition

We can evaluate the transversality condition in this fully specified model. In particular, we can show that if the risk premium is high enough to guarantee a finite valuation on the GDP claim, then, the transversality condition holds:

$$
\lim  _ {k \rightarrow \infty} \mathbb {E} _ {t} \left[ \exp (M _ {t, t + k}) D _ {t + k} \right] = \lim  _ {k \rightarrow \infty} \mathbb {E} _ {t} \left[ \bar {\delta} \exp (M _ {t, t + k}) Y _ {t + k} \right] = 0.
$$

Given the transversality condition holds, the government debt value is the sum of the values of the surplus strips:

$$
D _ {t} = \mathbb {E} _ {t} \left[ \sum_ {k = 1} ^ {\infty} \exp (M _ {t, t + k}) S _ {t + k} \right] = \bar {\delta} Y _ {t},
$$

which confirms the assumption that the debt/GDP ratio is a constant.

# 8.D.2 Risks and Risk Premia

How do we reconcile the observation that the government surplus  $S_{t}$  and the market value of government debt  $D_{t}$  are both stochastic with the observation that the debt is risk-free? When the transversality condition is satisfied, the debt return innovation reflects news about the present discounted value of future government surpluses:

$$
D _ {t} \left(\mathbb {E} _ {t + 1} - \mathbb {E} _ {t}\right) \exp \left(R _ {t + 1} ^ {D}\right) = \left(\mathbb {E} _ {t + 1} - \mathbb {E} _ {t}\right) \left[ \sum_ {j = 1} ^ {\infty} \exp \left(M _ {t + 1, t + j}\right) S _ {t + j} \right].
$$

When the debt is risk-free, there is no uncertainty about the debt return:  $(\mathbb{E}_{t + 1} - \mathbb{E}_t)\exp (R_{t + 1}^D) = 0$ . Then, there is no news about the present value of current and future surpluses; technically, we can say that the present value of current and future surpluses in period  $t + 1$  is measurable in period  $t$ :

$$
\left(\mathbb {E} _ {t + 1} - \mathbb {E} _ {t}\right) \left[ \sum_ {j = 1} ^ {\infty} \exp (M _ {t + 1, t + j}) S _ {t + j} \right] = \left(\mathbb {E} _ {t + 1} - \mathbb {E} _ {t}\right) \left[ D _ {t + 1} + S _ {t + 1} \right] = 0.
$$

In other words, the government surplus  $S_{t+1}$  is engineered such that it exactly offsets the variation in the market value of government debt  $D_{t+1}$ , which allows the debt to offer a constant risk-free return. However, as both government debt strip  $D_{t+1}$  and surpluses  $S_{t+1}$  are stochastic, their discount rates need to reflect their risk premia. In particular, as both government surplus and the debt strip is cointegrated with the GDP, the long-term surplus claim or debt claim has the same risk premium as the GDP risk premium.

# 8.D.3 The  $r <   g$  Case

A particularly interesting case in this model is when the risk-free rate is lower than the average GDP growth rate. In our notation,  $i < X$ . In this case, if the Jensen's term  $\frac{1}{2}\sigma^2$  is small enough so that  $i + \frac{1}{2}\sigma^2 < X$ , then, the government can sustain deficits on average:

$$
\mathbb {E} \left[ \frac {S _ {t}}{Y _ {t}} \right] = - \bar {\delta} \left(1 - \exp \left\{- X + i + \frac {1}{2} \sigma^ {2} \right\}\right) <   0.
$$

That said, when the fundamental shock is negative enough  $(X - i < -\sigma \varepsilon_{t})$ , the government still needs to run a primary surplus.

Even though the government runs a deficit on average, the transversality condition can be satisfied if the risk premium  $\gamma \sigma$  on the output claim is large enough:

$$
i + \gamma \sigma > X + \frac {1}{2} \sigma^ {2}.
$$

In this case, discounting growing surpluses and future debt at the risk-free rate  $i < X$  would not produce the right answer for the valuation of the current debt.

However, this is not a free lunch: the beta constraint characterized by Proposition 8.4 still binds: in order to keep debt risk-free, the government needs to raise taxes or lower spending in high marginal utility states.

In other words, the average deficits reflect an insurance premium that the government earns by extracting countercyclical cash flows from the taxpayers. This risk-based view is very different from the

Blanchard [2019] interpretation of  $r < g$ . From our perspective, it is precisely the positive covariance between the marginal utility and the government surpluses that creates the fiscal backing to manufacture risk-free debt. The  $r < g$  condition is neither necessary nor sufficient to gauge fiscal backing.

# 8.E The Public Debt Valuation Puzzle

When the transversality condition (8.8) holds, the intertemporal government budget condition (8.6) can be expressed as

$$
D _ {t} = \mathbb {E} _ {t} \left[ \sum_ {k = 1} ^ {\infty} \exp \left(M _ {t, t + k}\right) T _ {t + k} \right] - \mathbb {E} _ {t} \left[ \sum_ {k = 1} ^ {\infty} \exp \left(M _ {t, t + k}\right) G _ {t + k} \right]. \tag {8.14}
$$

A fundamental question in finance and macroeconomics is whether the present values of government surpluses on the right-hand side of this equation matches the market value of government debt on the left-hand side. To evaluate the present values on the right-hand side of this equation, we need to know (i) the expected future tax revenues and government spending and (ii) the appropriate discount rates that we assign to these fiscal cash flows. To figure out the expected fiscal cash flows, the data since WW-II suggest that the U.S. on average has similar levels of tax revenue and government spending as fractions of the GDP. If we zoom into the past 15 years, government spending surpassed tax revenue by a large margin. Feeling optimistic, let us assume the U.S. fiscal cash flows will revert to the historical norm over time, which maintains roughly equal tax revenues and government spending on average.

To figure out the appropriate discount rates, we note that the standard risk-free rates are not the right ones to use. Riskier cash flows need to be discounted at higher rates, and the riskiness is determined by how the cash flows comove with the SDF  $M_{t,t+k}$ . Consider the stock market for example. As corporate revenues decline dramatically in high marginal utility states, investors regard stocks as risky assets and therefore require a high compensation to hold them. This is why stocks tend to have higher returns than risk-free bonds over a long enough time period, and why, for the purpose of valuation, corporate cash flows are discounted at much higher rates than the standard interest rates. The data since WW-II suggest that the U.S. tax revenue also exhibits a cyclical behavior, which warrants high discount rates. In comparison, the U.S. government spending is counter-cyclical: it tends to increase during recessions, as unemployment benefits and other welfare payments tend to be higher in the downturns. The government may also decide to spend more on public projects to stimulate the economy. As recessions represent high

marginal utility states, the U.S. government spending deserves lower discount rates.

To put everything together, Eq. (8.14) computes the difference between the expected tax revenue and government spending, discounted at their appropriate discount rates. These cash flows have similar levels on average, but the tax revenue has higher discount rates than the government spending. Then, the present value of the tax cash flows should be lower than that of the spending cash flows, implying a negative present value of government surpluses [Jiang, Lustig, Van Nieuwerburgh, and Xiaolan, 2019]. This negative valuation of government surpluses on the right-hand side of Eq. (8.14) is at odds with the observed positive market value of government debt on the left-hand side of Eq. (8.14). This gap suggests that the U.S. government may not have enough fiscal backing for its outstanding government debt. We call it the U.S. public debt valuation puzzle.

Related to this puzzle, a salient fact is that the U.S. sovereign credit default swap has high premium since the financial crisis, reflecting a rising risk-adjusted probability of U.S. sovereign default [Chernov, Schmid, and Schneider, 2020, Augustin, Chernov, Schmid, and Song, 2021, Liu, Schmid, and Yaron, 2020]. This analysis is based on a large literature on affine sovereign default models [Pan and Singleton, 2008, Longstaff, Pan, Pedersen, and Singleton, 2011] and a large literature on strategic sovereign default [Eaton and Gersovitz, 1981, Arellano, 2008]. While they are also important issues related to government debt and fiscal sustainability, they are beyond the scope of this note.

So far, we have been working with a very general argument that is consistent with a large number of models with a government and infinitely lived households. More concretely, we can implement this valuation exercise in specific models of cash flows and discount rates. Below, we discuss several valuation techniques that have been used. The results emphasize that the U.S. finances itself at not only favorable rates, reflecting the convenience yield idea discussed in Chapters 4 and 7, but also favorable quantities beyond its fiscal fundamentals.

# 8.E.1 Affine Valuation Models

To evaluate the present value of government surpluses, i.e.,

$$
\mathbb {E} _ {t} \left[ \sum_ {k = 1} ^ {\infty} \exp (M _ {t, t + k}) (T _ {t + k} - G _ {t + k}) \right],
$$

we need to model the joint dynamics of the SDF  $M_{t,t + k}$  and the fiscal cash flows  $T_{t + k}$  and  $G_{t + k}$ . Jiang, Lustig, Van Nieuwerburgh, and Xiaolan [2019] adopts the affine term structure framework, which

has been used in various asset pricing settings to understand stock and bond prices [Duffie and Kan, 1996, Dai and Singleton, 2000, Ang and Piazzesi, 2003, Lustig, Van Nieuwerburgh, and Verdelhan, 2013, Chernov and Creal, 2023].

Specifically, let  $z_{t}$  denote the vector of state variables demeaned by their average value, which includes the interest rates, stock dividends and price/dividend ratios, and the fiscal cash flows. This vector follows a Gaussian first-order VAR:

$$
z _ {t + 1} = \Psi z _ {t} + u _ {t + 1} = \Psi z _ {t} + \Sigma^ {\frac {1}{2}} \varepsilon_ {t + 1},
$$

with the companion matrix  $\Psi$  and homoscedastic innovations  $u_{t + 1}\sim$  i.i.d.  $\mathcal{N}(0,\Sigma)$ . The Cholesky decomposition of the covariance matrix,  $\Sigma = \Sigma^{\frac{1}{2}}\left(\Sigma^{\frac{1}{2}}\right)^{\prime}$ , has non-zero elements on and below the diagonal, so that  $\varepsilon_{t + 1}\sim$  i.i.d.  $\mathcal{N}(0,I)$

This VAR setting allows us to model expectations of cash flows. We also choose a flexible SDF that assumes no arbitrage. The log nominal SDF  $M_{t+1}$  is conditionally normal:

$$
M _ {t + 1} = - i _ {t} (1) - \frac {1}{2} \Lambda_ {t} ^ {\prime} \Lambda_ {t} - \Lambda_ {t} ^ {\prime} \varepsilon_ {t + 1}.
$$

The real SDF is  $m_{t+1} = M_{t+1} + \pi_{t+1}$ , which is also conditionally normal. The priced sources of risk are the same as the innovations in the state vector  $\varepsilon_{t+1}$ . These innovations are associated with a market price of risk vector  $\Lambda_t$  of the affine form:

$$
\Lambda_ {t} = \Lambda_ {0} + \Lambda_ {1} z _ {t},
$$

where  $\Lambda_0$  collects the average prices of risk and  $\Lambda_1$  governs the time variation in risk premia. Asset pricing in this model amounts to taking a stance on the market prices of risk in  $\Lambda_0$  and  $\Lambda_1$ .

If the state vector  $z_{t}$  contains the short rate, inflation, GDP growth, the stock dividend/GDP ratio, and the stock price/dividend ratio, this SDF generates affine solutions for the value of the aggregate stock market and the term structure of nominal and real interest rates. We also include fiscal variables in the state vector in order to price the fiscal cash flows.

Let  $i_t(h) \stackrel{\mathrm{def}}{=} (1/h) \log P_t(h)$  denote the nominal risk-free rate with maturity  $h$ . For notational convenience, let  $e_i$  denote the vector  $(0, \dots, 1, \dots, 0)'$  that selects the variable corresponding to the short rate, and let  $i_0(1)$  denote the mean value of the short rate. Then,

$$
i _ {t} (1) = e _ {i} ^ {\prime} z _ {t} + i _ {0} (1).
$$

Similarly, let  $e_{\Delta d}, e_x$ , and  $e_{\pi}$  denote vectors that select the variables corresponding to the growth in the dividend/GDP ratio, the real GDP growth, and the inflation, respectively.

Let  $Div_{t}$  denote the stock dividend strip. The value of the dividend strip of horizon  $h$  is defined as

$$
P _ {t} ^ {m} (h) = \mathbb {E} _ {t} [ \exp (M _ {t, t + h}) D i v _ {t + h} ],
$$

and let  $pd_t^m (h)$  denote the price-dividend ratio of the stock market:

$$
p d _ {t} ^ {m} (h) = \log \left(P _ {t} ^ {m} (h) / D i v _ {t}\right).
$$

Then, the cum-dividend valuation of the stock market can be expressed as

$$
P V _ {t} ^ {m} = D i v _ {t} \sum_ {h = 0} ^ {\infty} \exp \left(A ^ {m} (h + 1) + B ^ {m} (h + 1) ^ {\prime} z _ {t}\right).
$$

Similarly, let  $P_t^\tau(h)$  and  $P_t^g(h)$  denote the price of the tax and spending strips of horizon  $h$ , and let  $pd_t^\tau(h)$  and  $pd_t^g(h)$  denote the price-dividend ratios of the tax and spending strips.

Proposition 8.8. (a) The nominal yield curve is affine in the state vector:

$$
i _ {t} (h) = - \frac {A (h)}{h} - \frac {B (h) ^ {\prime}}{h} z _ {t},
$$

where the coefficients  $A(h)$  and  $B(h)$  satisfy the following recursions:

$$
A (h + 1) = - i _ {0} (1) + A (h) + \frac {1}{2} B (h) ^ {\prime} \Sigma B (h) - B (h) ^ {\prime} \Sigma^ {\frac {1}{2}} \Lambda_ {0},
$$

$$
B (h + 1) ^ {\prime} = - e _ {i} ^ {\prime} + B (h) ^ {\prime} (\Psi - \Sigma^ {\frac {1}{2}} \Lambda_ {1}),
$$

initialized at  $A(0) = 0$  and  $B(0) = \vec{0}$ .

(b) The dividend strip's log price-dividend ratio is also affine in the state vector:

$$
p d _ {t} ^ {m} (h) = A ^ {m} (h) + B ^ {m} (h) ^ {\prime} z _ {t},
$$

where

$$
\begin{array}{l} A ^ {m} (h + 1) = - i _ {0} (1) + A ^ {m} (h) + x _ {0} + \pi_ {0} + \frac {1}{2} \left(B ^ {m} (h) + e _ {\Delta d} + e _ {x} + e _ {\pi}\right) ^ {\prime} \Sigma \left(B ^ {m} (h) + e _ {\Delta d} + e _ {x} + e _ {\pi}\right) \\ - \left(B ^ {m} (h) + e _ {\Delta d} + e _ {x} + e _ {\pi}\right) ^ {\prime} \Sigma^ {\frac {1}{2}} \Lambda_ {0}, \\ \end{array}
$$

$$
B ^ {m} (h + 1) ^ {\prime} = - e _ {i} ^ {\prime} + \left(B ^ {m} (h) + e _ {\Delta d} + e _ {x} + e _ {\pi}\right) ^ {\prime} (\Psi - \Sigma^ {\frac {1}{2}} \Lambda_ {1}).
$$

(c) The tax and spending strips' log price-dividend ratios are also affine in the state vector:

$$
\begin{array}{l} p d _ {t} ^ {\tau} (h) = A ^ {\tau} (h) + B ^ {\tau} (h) ^ {\prime} z _ {t}, \\ p d _ {t} ^ {\mathsf {g}} (h) = A ^ {\mathsf {g}} (h) + B ^ {\mathsf {g}} (h) ^ {\prime} z _ {t}, \\ \end{array}
$$

where

$$
\begin{array}{l} A ^ {\tau} (h + 1) = - i _ {0} (1) + A ^ {\tau} (h) + x _ {0} + \pi_ {0} + \frac {1}{2} \left(B ^ {\tau} (h) + e _ {\Delta \tau} + e _ {x} + e _ {\pi}\right) ^ {\prime} \Sigma \left(B ^ {\tau} (h) + e _ {\Delta \tau} + e _ {x} + e _ {\pi}\right) \\ - \left(B ^ {\tau} (h) + e _ {\Delta \tau} + e _ {x} + e _ {\pi}\right) ^ {\prime} \Sigma^ {\frac {1}{2}} \Lambda_ {0}, \\ \end{array}
$$

$$
B ^ {\tau} (h + 1) ^ {\prime} = - e _ {i} ^ {\prime} + \left(B ^ {\tau} (h) + e _ {\Delta \tau} + e _ {x} + e _ {\pi}\right) ^ {\prime} \left(\Psi - \Sigma^ {\frac {1}{2}} \Lambda_ {1}\right),
$$

$$
\begin{array}{l} A ^ {g} (h + 1) = - i _ {0} (1) + A ^ {g} (h) + x _ {0} + \pi_ {0} + \frac {1}{2} \left(B ^ {g} (h) + e _ {\Delta g} + e _ {x} + e _ {\pi}\right) ^ {\prime} \Sigma \left(B ^ {g} (h) + e _ {\Delta g} + e _ {x} + e _ {\pi}\right) \\ - \left(B ^ {g} (h) + e _ {\Delta g} + e _ {x} + e _ {\pi}\right) ^ {\prime} \Sigma^ {\frac {1}{2}} \Lambda_ {0}, \\ \end{array}
$$

$$
B ^ {g} (h + 1) ^ {\prime} = - e _ {i} ^ {\prime} + \left(B ^ {g} (h) + e _ {\Delta g} + e _ {x} + e _ {\pi}\right) ^ {\prime} (\Psi - \Sigma^ {\frac {1}{2}} \Lambda_ {1}).
$$

The proof is in Appendix A.37. Our key assumption behind this proposition is that the SDF that prices stocks and bonds can also price the fiscal cash flows. As we discussed earlier in Eq. (8.10), any investors who can trade the aggregate government debt portfolio have to agree on how they price the primary surpluses. Moreover, by assuming that there is no market segmentation between the stock and bond markets, we allow the market price of permanent risks implied from the stock market to also inform the pricing of the fiscal cash flows. In other words, we set up the VAR dynamics to allow cointegration between the GDP, the aggregate stock market dividend, and the government tax and spending strips. As a result, the pricing of the long-term fiscal cash flows is governed by the same market prices of risk that price the long-term stock dividends.

To develop this argument further, let us consider the pricing of infinite-horizon cash flows. In the limit, the nominal yield converges to a certain value, with

$$
B (\infty) ^ {\prime} = B (\infty) ^ {\prime} \Psi - e _ {i} ^ {\prime} - B (\infty) ^ {\prime} \Sigma^ {\frac {1}{2}} \Lambda_ {1},
$$

which implies

$$
B (\infty) ^ {\prime} = - e _ {i} ^ {\prime} \left(I - \left(\Psi - \Sigma^ {\frac {1}{2}} \Lambda_ {1}\right)\right) ^ {- 1}.
$$

It is useful to interpret  $(\Psi - \Sigma^{\frac{1}{2}}\Lambda_{1})$  as the risk-neutral transition matrix, and then the risk loadings of the infinite-horizon bond are given by the loadings of the one-period bond,  $e_i$ , multiplied with the Leontief inverse of  $(\Psi - \Sigma^{\frac{1}{2}}\Lambda_{1})$ . The same Leontief inverse operator also appeared in the trade network model in Section 3.C, which captures the effects of higher-order connections in the trade network.

Following this derivation, we can now express the risk premium of the long-term bond and, in a similar way, the risk premia of stock dividend and fiscal cash flows in the infinite horizon.

Proposition 8.9. (a) In the infinite horizon, the long-run nominal yield and

bond expected return are

$$
\lim  _ {h \rightarrow \infty} i _ {t} (h) = i _ {0} (1) - \frac {1}{2} B _ {t r a n s} ^ {\prime} \Sigma B _ {t r a n s} + B _ {t r a n s} ^ {\prime} \Sigma^ {\frac {1}{2}} \Lambda_ {0},
$$

$$
\lim _ {h \to \infty} \mathbb {E} _ {t} [ \log P _ {t + 1} (h - 1) - \log P _ {t} (h) ] = i _ {0} (1) - \frac {1}{2} B _ {t r a n s} ^ {\prime} \Sigma B _ {t r a n s} + B _ {t r a n s} ^ {\prime} \Sigma^ {\frac {1}{2}} \Lambda_ {0} + B _ {t r a n s} ^ {\prime} (\Psi - I) z _ {t},
$$

where

$$
B _ {t r a n s} ^ {\prime} \stackrel {d e f} {=} B (\infty) ^ {\prime} = - e _ {i} ^ {\prime} \left(I - \left(\Psi - \Sigma^ {\frac {1}{2}} \Lambda_ {1}\right)\right) ^ {- 1}.
$$

(b) In the infinite horizon, the expected returns on the dividend, tax, and spending strips are

$$
\lim  _ {h \to \infty} \mathbb {E} _ {t} [ \log P _ {t + 1} ^ {m} (h - 1) - \log P _ {t} ^ {m} (h) ] = i _ {0} (1) - \frac {1}{2} B _ {p e r m} ^ {\prime} \Sigma B _ {p e r m} + B _ {p e r m} ^ {\prime} \Sigma^ {\frac {1}{2}} \Lambda_ {0} + B _ {p e r m} ^ {\prime} (\Psi - I) z _ {t} + (e _ {\Delta d} + e _ {x} + e _ {\pi}) ^ {\prime} z _ {t},
$$

where

$$
B _ {p e r m} ^ {\prime} \stackrel {d e f} {=} (B ^ {m} (\infty) + e _ {\Delta d} + e _ {x} + e _ {\pi}) ^ {\prime} = (- e _ {i} + e _ {\Delta d} + e _ {x} + e _ {\pi}) ^ {\prime} \left(I - (\Psi - \Sigma^ {\frac {1}{2}} \Lambda_ {1})\right) ^ {- 1}.
$$

The proof is in Appendix A.38. In the language of the permanent and transitory SDF components that we discussed in Section 3.D, the SDF we consider here has a permanent component. In the infinite-horizon limit, it prices the cash flows that contain this permanent risk, including the GDP strip, the stock dividend strip, the tax strip, and the spending strip in a coherent fashion, by assigning the same risk premia to these cash flows. The unconditional expected returns of these strips are given by

$$
\lim  _ {h \rightarrow \infty} \mathbb {E} \left[ \log P _ {t + 1} ^ {m} (h - 1) - \log P _ {t} ^ {m} (h) \right] - i _ {0} (1) = B _ {\text {p e r m}} ^ {\prime} \Sigma^ {\frac {1}{2}} \Lambda_ {0} - \frac {1}{2} B _ {\text {p e r m}} ^ {\prime} \Sigma B _ {\text {p e r m}}, \tag {8.15}
$$

which is the product of the risk loadings  $B_{perm}^{\prime}\Sigma^{\frac{1}{2}}$  and the market prices of risk  $\Lambda_0$ , plus a second-order Jensen's term.

In contrast, this SDF prices the cash flows that do not have the permanent risk, such as the nominal bond, differently. The unconditional bond risk premia are given by

$$
\lim  _ {h \rightarrow \infty} \mathbb {E} \left[ \log P _ {t + 1} (h - 1) - \log P _ {t} (h) \right] - i _ {0} (1) = B _ {\text {t r a n s}} ^ {\prime} \Sigma^ {\frac {1}{2}} \Lambda_ {0} - \frac {1}{2} B _ {\text {t r a n s}} ^ {\prime} \Sigma B _ {\text {t r a n s}}, \tag {8.16}
$$

which is also the product of the risk loadings  $B_{trans}^{\prime}\Sigma^{\frac{1}{2}}$  and the market prices of risk  $\Lambda_0$ , plus a second-order Jensen's term. Note that Eq. (8.16) is a special case of Eq. (8.15), obtained when the cash flow does not grow, i.e., by setting  $e_{\Delta d} + e_x + e_\pi = 0$ .

Figure 8.1 plots the term structures of risk premia for the spending, tax, equity dividend, and GDP claims, and the long-term nominal bonds. The parameterization is taken from the homoscedastic

SDF model in Jiang, Lustig, Van Nieuwerburgh, and Xiaolan [2019]. In the short run, because the spending claim is countercyclical while the tax and the equity dividend claims are procyclical, the spending claim has a negative risk premium while the tax and the equity dividend claims have positive risk premia. In the long run, because the spending, the tax, and the equity dividend cash flows are all cointegrated with the GDP, they inherit the same risk premium from the permanent component of the GDP, which converges to about  $4\%$  in the limit. In comparison, the nominal bond's payoff is not cointegrated with the GDP, which is why the long-term nominal bonds have a different risk premium close to  $2\%$  in the limit.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/4caa6424-992f-437c-ac5a-4f95ef04f006/1fefd839bb035b9ea2fa8535202786dae26b3246fcd46ee0b064df6c57247467.jpg)  
Figure 8.1: The Term Structures of Risk Premia.

This result echoes Proposition 3.11 in Section 3.D, which shows that the infinite-horizon risk premia of all cash flows that contain the same permanent component as the SDF will be the same, and reflect the magnitude of the permanent risk in the SDF, i.e.,  $\sigma_P^2$ . In comparison, the infinite-horizon nominal bond's risk premium is only determined by the magnitude of the transitory risk in the SDF, and it will be lower if the risk aversion parameter is big enough.

# 8.E.2 Linearized Intertemporal Budget

Let  $v_{t} = \log (D_{t} / Y_{t})$  denote the log debt/GDP ratio, and let  $sy_{t} = S_{t} / Y_{t}$  denote the surplus/GDP ratio. Let  $\widetilde{r}_{t + 1} = R_{t + 1}^{D} - \pi_{t + 1} - x_{t + 1}$  denote the inflation-and-growth-adjusted debt return. Cochrane [2022] derives a log-linearized return equation implied by the government budget constraint:

$$
\widetilde {r} _ {t + 1} = \kappa v _ {t + 1} - v _ {t} + s _ {t + 1},
$$

where  $\kappa = \exp(-\left(R - x - \pi\right))$  is a constant, and  $s_{t+j} = \kappa \cdot s y_{t+j} / \exp(\bar{v})$  is  $\kappa$  times the primary surplus/GDP ratio scaled by the average debt/GDP ratio. This formula is similar to the log-linearization for stock returns in Campbell and Shiller [1988]:

$$
r _ {t + 1} = \kappa p d _ {t + 1} - p d _ {t} + \Delta d _ {t + 1},
$$

but it allows us to deal with the possibility that the primary surplus  $s_t$  can be negative.

By iterating this equation forward  $T$  times and taking expectations, we obtain

$$
v _ {t} = \mathbb {E} _ {t} \left[ \sum_ {j = 1} ^ {T} \kappa^ {j - 1} \left(s _ {t + j} - \widetilde {r} _ {t + j}\right) \right] + \mathbb {E} _ {t} [ \kappa^ {T} v _ {t + T} ],
$$

which is a linearized version of the intertemporal government budget condition (8.6). It provides a way to evaluate the government debt as a fraction of GDP, i.e.,  $v_{t}$ , based on the expectations of future surpluses  $s_{t+j}$ , future adjusted debt returns  $\widetilde{r}_{t+j}$ , and future debt/GDP level  $v_{t+T}$ .

This relationship holds both ex-ante and ex-post. Without taking expectations, we can express this result as a variance decomposition exercise:

$$
v a r (v _ {t}) = c o v \left(v _ {t}, \sum_ {j = 1} ^ {T} \kappa^ {j - 1} \left(s _ {t + j} - \widetilde {r} _ {t + j}\right)\right) + c o v (v _ {t}, \kappa^ {T} v _ {t + T}),
$$

which states that the debt/GDP ratio varies only because it predicts future surpluses, future returns, or the future debt/GDP ratio.

If we assume that the transversality condition holds, which in this context means  $\lim_{T\to \infty}\mathbb{E}_t[\kappa^T v_{t + T}] = 0$ , then, we obtain

$$
v _ {t} = \mathbb {E} _ {t} \left[ \sum_ {j = 1} ^ {\infty} \kappa^ {j - 1} \left(s _ {t + j} - \widetilde {r} _ {t + j}\right) \right].
$$

To implement this model, we could use statistical tools (such as the VAR model or the local projection method) to construct conditional expectations of  $s_{t+j}$  and  $\widetilde{r}_{t+j}$  and build the debt/GDP value from these expectations.

This result helps us gauge whether the transversality condition holds. The conventional wisdom from Bohn [1998] is that a higher debt/GDP ratio  $v_{t}$  is justified by higher surpluses  $s_{t+j}$  in the future. Jiang, Lustig, Van Nieuwerburgh, and Xiaolan [2021c] use a simple local projection method to construct conditional expectations of not only future surpluses and returns  $(s_{t+j}$  and  $\widetilde{r}_{t+j}$ ), but also future debt/GDP ratio  $(v_{t+j})$ . They find that, after addressing a small-sample bias, the variations in the current debt/GDP ratio are

explained by the variations in the future debt/GDP ratio 10 years later instead of by future fundamentals (i.e., future surpluses and returns) in the next 10 years.

# 8.E.3 Bias in Subjective Expectations

One explanation for the result in Jiang, Lustig, Van Nieuwerburgh, and Xiaolan [2021c] is biased beliefs. While the econometrician does not expect higher surpluses or lower returns when the debt/GDP ratio rises, bond investors may. More precisely, note that the same linearized decomposition works under the subjective measure, too:

$$
\begin{array}{l} v _ {t} = \mathbb {F} _ {t} \left[ \sum_ {j = 1} ^ {T} \kappa^ {j - 1} \left(s _ {t + j} - \widetilde {r} _ {t + j}\right) \right] + \mathbb {F} _ {t} [ \kappa^ {T} v _ {t + T} ] \\ = \mathbb {E} _ {t} \left[ \sum_ {j = 1} ^ {T} \kappa^ {j - 1} \left(s _ {t + j} - \widetilde {r} _ {t + j}\right) \right] + \left(\mathbb {F} _ {t} [ \kappa^ {T} v _ {t + T} ] + (\mathbb {F} _ {t} - \mathbb {E} _ {t}) \left[ \sum_ {j = 1} ^ {T} \kappa^ {j - 1} (s _ {t + j} - \widetilde {r} _ {t + j}) \right]\right). \\ \end{array}
$$

Then, the transversality term  $\mathbb{E}_t[\kappa^T v_{t + T}]$  under the objective measure can be expressed as

$$
\mathbb {E} _ {t} [ \kappa^ {T} v _ {t + T} ] = \mathbb {E} _ {t} [ \kappa^ {T} v _ {t + T} ] + (\mathbb {F} _ {t} - \mathbb {E} _ {t}) \left[ \sum_ {j = 1} ^ {T} \kappa^ {j - 1} (s _ {t + j} - \widetilde {r} _ {t + j}) \right],
$$

and the second term  $(\mathbb{F}_t - \mathbb{E}_t)\left[\sum_{j = 1}^T\kappa^{j - 1}(s_{t + j} - \widetilde{r}_{t + j})\right]$  on the right-hand side represents the investors' forecast error. In other words, what the econometrician perceives as transversality condition violation can be explained by the investors' subjective belief errors.

Specifically, if the investors systematically over-predict surpluses or under-predict returns when the debt/GDP ratio increases, this forecast error term can impute a unit root in the debt/GDP ratio under the econometrician's measure  $\mathbb{E}$ . At the same time, under the investors' subjective beliefs measure  $\mathbb{F}$ , the debt/GDP ratio may remain stationary. In this case, we obtain

$$
\lim _ {T \to \infty} \mathbb {E} _ {t} [ \kappa^ {T} v _ {t + T} ] = \lim _ {T \to \infty} (\mathbb {F} _ {t} - \mathbb {E} _ {t}) \left[ \sum_ {j = 1} ^ {T} \kappa^ {j - 1} (s _ {t + j} - \widetilde {r} _ {t + j}) \right].
$$

Let us consider a concrete example that gives a full specification of the debt dynamics under the two measures. For simplicity, we abstract away from variations in growth-adjusted returns by setting  $\widetilde{r}_{t+j} = 0$  under both measures and let  $\kappa = 1$  which is consistent with the primary surplus being zero on average.

We assume that, under the econometrician's objective measure  $\mathbb{E}$ , the surplus process is stationary and follows an i.i.d. process:

$$
s _ {t} = \varepsilon_ {t} ^ {\mathbb {E}},
$$

which implies that the debt/output ratio is a random walk:

$$
v _ {t} = v _ {t - 1} - \varepsilon_ {t} ^ {\mathbb {E}}.
$$

Therefore, under the econometrician's measure  $\mathbb{E}$ , the debt/output ratio satisfies

$$
v _ {t} = \mathbb {E} _ {t} \sum_ {j = 1} ^ {T} \left(s _ {t + j} - \widetilde {r} _ {t + j}\right) + \mathbb {E} _ {t} v _ {t + T} = \mathbb {E} _ {t} v _ {t + T},
$$

which is a unit root process. More precisely, if we repeat the regressions in our baseline result, we would find that the variation in the debt/output ratio is  $100\%$  attributable to the transversality term  $\mathbb{E}_t[v_{t + T}]$ , and  $0\%$  to the variations in the surplus and return processes due to the i.i.d. assumption.

Under the investors' subjective measure  $\mathbb{F}$ , the surplus responds to debt level:

$$
s _ {t} = b v _ {t - 1} + \varepsilon_ {t} ^ {\mathbb {F}},
$$

with a coefficient  $b > 0$ . Under this measure, the government debt/output ratio is priced according to

$$
v _ {t} = \mathbb {F} _ {t} \sum_ {j = 1} ^ {T} \left(s _ {t + j} - \widetilde {r} _ {t + j}\right) + \mathbb {F} _ {t} \left[ v _ {t + T} \right] = \mathbb {F} _ {t} \sum_ {j = 1} ^ {T} b v _ {t + j - 1} + \mathbb {F} _ {t} \left[ v _ {t + T} \right] \tag {8.17}
$$

We conjecture and verify that the law of motion for the debt/output ratio under the subjective measure  $\mathbb{F}$  is

$$
v _ {t + 1} = \psi v _ {t} + \eta_ {t + 1} ^ {\mathbb {F}}.
$$

Plug the investors' subjective surplus response into the linearized government budget constraint, we obtain the following solution

$$
\psi = 1 - b
$$

$$
\eta_ {t + 1} ^ {\mathbb {F}} = - \varepsilon_ {t} ^ {\mathbb {F}}.
$$

In other words, due to their biased belief, the investors think that the debt/output process is stationary with a persistence that is consistent with their expected response of surplus to the debt/output ratio. Therefore, if we take Eq. (8.17) to the limit,

$$
v _ {t} = \lim  _ {T \rightarrow \infty} \mathbb {F} _ {t} \sum_ {j = 1} ^ {T} b v _ {t + j - 1} + \lim  _ {T \rightarrow \infty} \mathbb {F} _ {t} [ v _ {t + T} ],
$$

we obtain that the variation in the debt/output ratio is  $100\%$  attributable to the expected future surplus  $\lim_{T\to \infty}\mathbb{F}_t\sum_{j = 1}^T bv_{t + j - 1}$ , and  $0\%$  to the transversality term.

These equations constitute a full specification of the debt dynamics under the two measures, which is mean-reverting according to the investors and has a unit root according to the econometrician. We can rearrange the equations and obtain

$$
v _ {t} = \mathbb {E} _ {t} v _ {t + T} = 0 + (\mathbb {F} _ {t} - \mathbb {E} _ {t}) \sum_ {j = 1} ^ {T} (s _ {t + j} - \widetilde {r} _ {t + j}),
$$

which implies that the valuation of government debt is fully driven by the investors' belief bias  $(\mathbb{F}_t - \mathbb{E}_t)$ , which provides an economic interpretation of the transversality term  $\mathbb{E}_t[v_{t + T}]$  under the econometrician's measure.

# 8.E.4 Dollar-Weighted Return and Government's Market Timing

Another way to gauge the fiscal capacity is to understand the timing of the fiscal cash flows. As we discussed in Section 2.B.3, the market timing of the government issuer, as well as that of the investors in the Treasury market can be measured by the internal rate of return (IRR). In the data, the foreign investors have been earning a low IRR, compared to the IRR that can be achieved from a simple buy-and-hold strategy [Jiang, Krishnamurthy, and Lustig, 2022a]. The flip side of this observation is that the U.S. government has been enjoying a low effective funding rate, thanks mainly to the foreign investors and the Federal Reserve. In other words, the government tends to time the market by issuing more debt in recessions when the interest rate is low and the debt is expensive, and issuing less debt in expansions when the interest rate is high and the debt is cheap.

# 8.E.5 International Perspectives

We also note that this public debt valuation puzzle is not necessarily a universal phenomenon. Chen, Jiang, Lustig, Van Nieuwerburgh, and Xiaolan [2022] study historical fiscal data in the U.S., the U.K., and the Netherlands. Prior to the U.S., the U.K. and the Dutch were the dominant reserve asset issuers. We learn some common lessons from their rises and falls: there is usually a unique hegemon who dominates the supply of reserve assets. The hegemon enjoys a convenience yield on its debt, and issues more debt than is warranted by its fiscal backing. However, these exorbitant privileges do not last forever: when the hegemon's fiscal fundamentals deteriorate, investors eventually withdraw the extra debt capacity, and debt market crash ensues.

This observation raises the bar for any explanation of the public debt valuation puzzle, because it needs to answer not only why this

extra fiscal capacity accrues to the U.S. or other global hegemons in the past, and not to other countries. In this sense, these results call for an international perspective on fiscal sustainability issues.

On the other hand, this observation connects the public debt valuation puzzle to the literature on the coordination on reserve assets [Farhi and Maggiori, 2018, He, Krishnamurthy, and Milbradt, 2019, Gopinath and Stein, 2021, Coppola, Krishnamurthy, and Xu, 2023]. This literature points out that there is strategic complementarity in different investors' investment decisions. The reserve asset that is commonly chosen by the investors, which usually coincides with the hegemon in the economic and political spheres, could enjoy not only a convenience yield in the price dimension, but also the ability to issue more debt beyond its fiscal backing in the quantity dimension. That said, the coordinated outcome could be broken when the investors become concerned about the hegemon's fiscal position, as we have seen in the case of the Dutch and the U.K. Moreover, this literature also explores the strategic decisions of one or more reserve asset issuers, who take their market power into consideration when deciding how much debt to issue [Choi, Kirpalani, and Perez, 2022, Jiang and Richmond, 2023a]. Their endogenous issuance decisions also affect the valuation of the reserve assets.

In conclusion, it is worth reflecting upon a quote from Wealth of Nations by Adam Smith:

A prince, who should enact that a certain proportion of his taxes be paid in a paper money of a certain kind, might thereby give a certain value to this paper money.

Our discussion shows that the issue of government debt valuation and sustainability is more complicated. Investors are willing to offer extra fiscal capacity to the world's safe asset supplier beyond what is warranted by its fiscal fundamentals and seigniorage revenues. When the safe asset supplier's relative fundamentals deteriorate, this extra fiscal backing is withdrawn by bond investors who then focus only on the country's fundamentals.

3 More broadly, the strategic coordination issues between governments and policymakers enrich the possible outcomes in the international economy. Besides the classical tariff war studied by the international trade literature, recent papers study the strategic interaction along multiple fronts, including monetary policies [Egorov and Mukhin, 2019, Fontanier, 2023], trade and monetary policies [Auray, Devereux, and Eyquem, 2019], trade and containment policies [Acharya, Jiang, Richmond, and von Thadden, 2020], bank regulation [Clayton and Schaab, 2022], and geopolitics [Clayton, Maggiori, and Schreger, 2023]. A common theme is the emphasis on the exchange rate as both a policy instrument and a coordinated outcome.

9
