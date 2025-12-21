---
title: "Lecture 16: How Much Should a Firm Borrow? Part I"
aliases:
   - How Much Should a Firm Borrow Part I
   - Real World Departures from MM Assumptions
tags:
key_concepts:
parent_directory: Lecture Notes
formatted: 2025-12-21 02:29:25 PM
formatter_model: claude-3-7-sonnet-20250219
cli_tool: claude-code
primary_tags:
   - capital structure
   - trade-off theory
   - modigliani miller theorem
   - tax shields
   - financial distress costs
secondary_tags:
   - bankruptcy costs
   - agency costs
   - corporate taxes
   - optimal leverage
   - debt financing
cssclasses: academia
---

Dave Schabes

February 28, 2023

# Real World Departures from MM Assumptions

MM understood that the real world departed from their assumptions
Major departures

- Taxes
- Transaction Costs
- Financial Distress and Bankruptcy
- Conflicts between creditors and shareholders

# Taxes

- In the US and most other countries, interest paid by firms is a deductible expense from taxable income  
- Individuals and institutions that receive dividends and capital gains are taxed (albeit at a lower rate than interest received) and they are paid from after-tax corporate income

So-called "double taxation"  

- Some institutions, e.g., endowments and pension funds, are tax exempt

# Taxes

- Limits were placed on the deductibility of interest at $30\%$ of income (defined as EBITDA) in 2017

- This has been repealed as part of the CARES act legislation
- With interest rates currently low, few companies would have hit this constraint

Due to the Corona virus, poor earnings may have made this constraint "bite" more quickly for some companies

- Assume that this constraint is not binding for our examples

<table><tr><td colspan="3">Tax Shield Valuation</td></tr><tr><td></td><td colspan="2">Income Statement</td></tr><tr><td></td><td>Firm U</td><td>Firm L</td></tr><tr><td>EBIT</td><td>$ 1,000</td><td>$ 1,000</td></tr><tr><td>Interest Paid to Bondholders</td><td>$ -</td><td>$ 80</td></tr><tr><td>Pretax Income</td><td>$ 1,000</td><td>$ 920</td></tr><tr><td>Taxes Paid</td><td>$ 210</td><td>$ 193</td></tr><tr><td>Net Income to Shareholders</td><td>$ 790</td><td>$ 727</td></tr><tr><td>Total Income to debtand shareholders</td><td>$ 790</td><td>$ 807</td></tr><tr><td>Interest Tax Shield</td><td>$ -</td><td>$ 16.80</td></tr><tr><td>Corporate Tax Rate</td><td>21%</td><td>21%</td></tr><tr><td>Interest Rate on Debt</td><td>8%</td><td>8%</td></tr><tr><td>Number of Shares</td><td>1000</td><td>902</td></tr><tr><td>Share Price</td><td>$ 10.00</td><td>$ 10.21</td></tr><tr><td>Debt Outstanding</td><td>0</td><td>\$1,000</td></tr><tr><td>Firm Value</td><td>$ 10,000</td><td>$ 10,210</td></tr><tr><td>Earning/Share</td><td>$ 0.7900</td><td>$ 0.8057</td></tr></table>

# Tax Shield Valuation

- Firm U and L are identical except

- L has $1,000 of debt at 8% per annum
- U is capitalized entirely with equity

- Firm L pays \$16.80 less in corporate taxes

- Allows that amount to be distributed to shareholders
- However firm pays \$80 of interest to bondholders

# Tax Shield Valuation

- MM III states that a firm is worth its asset value plus the present value of the tax shield  
- Assume L intends to borrow \$1,000 in perpetuity

- Interest payments in perpetuity are worth:

$$
PV_{TaxShield} = (16.80 / 8\% = )210, so tax shield increases firm value by (2.1\%)
$$

- MM III states that when a corporation maintains a permanent constant amount of debt outstanding, the interest rate paid is irrelevant to the value of the tax shield

# Present Value of Tax Shield

- Assuming fixed amount of debt, D

$$
Interest Payment = r_D \times D, PV_{TaxShield} = T_C \times \frac{r_D \times D}{r_D},
$$

where  $T_{C}$  is the corporate tax rate, cancelling  $r_{D}$ ,

$$
we obtain PV_{TaxShield} = T_C \times D
$$

- Additional Assumptions
- Corporate tax rate is constant; no other taxes or transaction costs
- Adequate taxable income to fully utilize tax shield

# Firms U and L

- Above calculated value of L's tax shield at \$210

- Using this, L is worth $10,210; U worth \$10,000  

- \$210 increase due solely to tax shield  
Since L borrowed \$1,000, needs only 902 shares outstanding at a price of \$10.21 each
- Earnings per share increase to \$.81 from \$.79

Due to reduction of issuance (or decrease share count through a buyback) to 902 shares from 1,000  

- Shares are now slightly riskier due to debt load

# Johnson & Johnson Example

J&J adds \$10 billion of debt and buys back \$10 billion of stock  

- Since nothing else regarding expectations for J&J's future cash flow has changed, MM III states:

$$
\Delta PV_{J\&J} = T_C \times D = .21 \times \$10bn = \$2.1bn
$$

- Add $10 bn debt and \$2.1 bn to total value

Market value of equity decreases \$7.9 bn, so shareholders gain \$2.1 bn  

- Book Value Balance Sheet "Total Value" line is unchanged

# Johnson & Johnson (Values as of December 21, 2017)

Normal Balance Sheet (Market Values)  

<table><tr><td>Asset value (present value of 
after-tax cash flows)</td><td>Debt</td></tr><tr><td></td><td>Equity</td></tr><tr><td>Total assets</td><td>Total value</td></tr><tr><td colspan="2">Expanded Balance Sheet (Market Values)</td></tr><tr><td>Pretax asset value (present value
  of pretax cash flows)</td><td>Debt</td></tr><tr><td></td><td>Government’s claim (present
  value of future taxes)</td></tr><tr><td></td><td>Equity</td></tr><tr><td>Total pretax assets</td><td>Total pretax value</td></tr></table>

- Recall MM propositions assume the market knows the current market value of all assets and liabilities

# Johnson & Johnson Pre-share Repurchase

Book Values  

<table><tr><td>Net working capital</td><td>$ 12,551</td><td>$ 30,675</td><td>Long-term debt</td></tr><tr><td>Long-term assets</td><td>114,215</td><td>35,931</td><td>Other long-term liabilities</td></tr><tr><td></td><td></td><td>60,160</td><td>Equity</td></tr><tr><td>Total net assets</td><td>$126,766</td><td>$126,766</td><td>Total value</td></tr><tr><td colspan="4">Market Values</td></tr><tr><td>Net working capital</td><td>$ 12,551</td><td>$ 30,675</td><td>Long-term debt</td></tr><tr><td>PV interest tax shield</td><td>6,442</td><td>35,931</td><td>Other long-term liabilities</td></tr><tr><td>Long-term assets</td><td>426,257</td><td>378,644</td><td>Equity</td></tr><tr><td>Total net assets</td><td>$445,250</td><td>$445,250</td><td>Total value</td></tr></table>

# Johnson & Johnson Example

- How do we obtain market values?

- Utilize Financial Statement values for working capital, long-term debt and other liabilities
- Add estimated PV of tax shield to Assets
- Utilize market value of equity to value assets not included in book value on the balance sheet, e.g., brand name, customer relationships, and research and development

- Stock Price X number of shares = market value of equity

# Johnson & Johnson Example Post-share Repurchase

Book Values  

<table><tr><td>Net working capital</td><td>$ 12,551</td><td>$ 40,675</td><td>Long-term debt</td></tr><tr><td>Long-term assets</td><td>113,829</td><td>35,931</td><td>Other long-term liabilities</td></tr><tr><td></td><td></td><td>50,160</td><td>Equity</td></tr><tr><td>Total net assets</td><td>$126,766</td><td>$126,766</td><td>Total value</td></tr></table>

Market Values  

<table><tr><td>Net working capital</td><td>$ 12,551</td><td>$ 40,675</td><td>Long-term debt</td></tr><tr><td>PV interest tax shield</td><td>8,542</td><td>35,931</td><td>Other long-term liabilities</td></tr><tr><td>Long-term assets</td><td>426.257</td><td>370,744</td><td>Equity</td></tr><tr><td>Total net assets</td><td>$447,350</td><td>$447,350</td><td>Total value</td></tr></table>

# Taxes and Limits to Borrowing

- Example is hypothetical, however, corporations have taken on debt and repurchased stock for many years<sup>1</sup>

US companies plan record buyback spending  
Buyback authorisations announced, year to Apr 30 (\$bn)  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/0ae4f4474d2bb5730d27c9913af34818af8698ebc405d58e13c4caa5b7d4435e.jpg)  
Sources: GS Global Markets Division; Goldman Sachs Global Investment Research  
$\odot$  FT

# Johnson & Johnson: Why not borrow more?

- Since J&J's value increased \$2.1bn by borrowing \$10 bn

- Practical and market limits to amount a company borrows

- Formula does not apply at extremely high debt ratios  
- Debt may not be fixed and perpetually outstanding  
- Marginal tax rates vary  
Variability of income limits value of tax shield  
Limits on deductibility of interest expense

Most importantly

- Impact of personal taxes  
Additional costs to debt – bankruptcy and agency

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/d99c2447d7c918164aa47f3e87a8ce7961ac92d2819e8b7935d2f2d9806075a6.jpg)  
Corporate and Personal Taxes

- Investors compare investments' after-tax cash-flow to risk

# Corporate and Personal Taxes

- Taxes on investors come in two classes

- Ordinary Income Tax – applies to wages and interest earned (on bonds or loans), $T_p$

- Capital Gains and Dividend taxes, $T_{pE}$ collectively – apply to gain on sale and dividends received respectively

- Often set at same rate  
Capital gains tax only paid upon sale of asset

$$
\mathrm{Relative Tax Advantage of Debt} = \frac{1 - T_p}{(1 - T_{pE})(1 - T_C)}
$$

# Relative Tax Advantage of Debt

- An increase in:

- $T_p$ will decrease the relative advantage of debt
- $T_{pE}$ or $T_C$ will increase the relative advantage of debt

- Special cases:

1. $T_{pE} = T_p$, implies relative advantage $= \frac{1}{1 - T_C}$
2. $1 - T_p = (1 - T_{pE})(1 - T_C)$, implies debt policy irrelevant as relative advantage $= 1$

# Relative Tax Advantage of Debt

- Ceteris paribus, firm desires to have as much taxable income as possible be paid out in the least taxed form

<table><tr><td colspan="7">Relative Tax Advantage of Debt</td></tr><tr><td></td><td>Interest Income</td><td>Equity Income</td><td>Interest Income</td><td>Equity Income</td><td>Interest Income</td><td>Equity Income</td></tr><tr><td>Income Before Tax</td><td>$1.00</td><td>$1.00</td><td>$1.00</td><td>$1.00</td><td>$1.00</td><td>$1.00</td></tr><tr><td>Less Corporate Tax</td><td>0</td><td>$0.21</td><td>0</td><td>$0.35</td><td>0</td><td>\$0.21</td></tr><tr><td>Income After Corporate Tax</td><td>$1.00</td><td>$0.79</td><td>$1.00</td><td>$0.65</td><td>$1.00</td><td>$0.79</td></tr><tr><td>Personal Taxes</td><td>$0.37</td><td>$0.12</td><td>$0.39</td><td>$0.16</td><td>$0.00</td><td>$0.00</td></tr><tr><td>Income After All Taxes</td><td>$0.63</td><td>$0.67</td><td>$0.61</td><td>$0.49</td><td>$1.00</td><td>$0.79</td></tr><tr><td>Tc</td><td>21%</td><td></td><td>35%</td><td></td><td>21%</td><td></td></tr><tr><td>Tpe</td><td>15%</td><td></td><td>25%</td><td></td><td>0%</td><td></td></tr><tr><td>Tp</td><td>37%</td><td></td><td>39%</td><td></td><td>0%</td><td></td></tr><tr><td>Formula: Relative Tax Advantage of Debt</td><td>0.94</td><td></td><td>1.25</td><td></td><td>1.27</td><td></td></tr><tr><td>Interest Income/Equity Income After All Taxes</td><td>0.94</td><td></td><td>1.25</td><td></td><td>1.27</td><td></td></tr></table>

# Relative Tax Advantage of Debt

- Where $T_C = 21\%$, $T_{pe} = 15\%$ and $T_p = 37\%$, there is a \$.04 disadvantage to debt
- Where $T_C = 35\%$, $T_{pe} = 25\%$ and $T_p = 39\%$, there is a \$.12 advantage to debt

These tax rates are close to where rates were prior to the 2017 tax law changes

- In the case where $T_C = 21\%$ and no other taxes, there is a \$21 advantage to debt

# Costs of Financial Distress

- In the real world, companies run into financial difficulties

- Unanticipated downturns in sales  

- Increasing spending too quickly
- Coupled with too much debt

- To capture this we add costs of financial distress to value equation

$$
\begin{array}{l} \text{Value of Firm} = \text{Asset Value} + PV_{\text{Tax Shield}} \\ - PV_{\text{Costs of Financial Distress}} \\ \end{array}
$$

# Costs of Financial Distress

- How creditors think about default:

- Probability of default
- Loss given default
- Product of these gives expected loss

- Two types of default:

- Technical
- Money

# Costs of Financial Distress

- Trade-off Theory – there is a trade-off between maximizing tax shield and the costs of distress

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/8e8be82f04a451ff8e127e5f3a9664a94496fd393b2976109e48d9dafa13eb6a.jpg)

# Financial Distress Costs

- Financial distress and bankruptcy are extremely costly  
Distress alone can force companies to deal with harsh terms from suppliers and constant monitoring by creditors

Banks
- Bondholders

# Financial Distress Costs

- Additional costs of distress include:

- Customer loss – fear that products will no longer be supported or warranties honored
- Supplier loss – fear of non-payment
- Employee loss – best employees often first to leave
- Inability to collect on receivables
- Forced asset sales – by banks or suppliers

# Financial Distress Costs

- Creditors often face additional costs as well:
- Increased monitoring costs – asset valuations
- Increased personnel costs at company – financial consultants
- More favorable loan terms – lower interest rate, deferral of repayment of principal
- Legal review – options if situation worsens, lender liability

# Bankruptcy Costs

- Bankruptcy rules vary widely among countries

One of the key issues for European banks

- Bankruptcy proceedings can last as long as seven years in Italy, where it is called sofferenze

- US or UK – bankruptcy proceedings typically less than 18 months

# Bankruptcy Costs

- In the US there are two principal chapters of the bankruptcy code that affect corporations

Chapter 11 – Reorganization
- Chapter 7 - Liquidation

- Many "repeat offenders" in reorganization process

These are known as Chapter 22, 33, …  
- Recent examples: A&P, Payless Shoes, Radio Shack, and Tuesday Morning

# Chapter 11 – Reorganization

- Most commonly used  
- Based on belief that company has value as a "going concern"  
- (Almost) all creditors are "stopped"
- Prohibited from taking action against company to obtain moneys owed ahead of other creditors
- Allows for "Debtor-In-Possession" (DIP) financing,

- DIP lender obtains a "super-lien", allowing for improved liquidity during the bankruptcy process

# Chapter 11 – Reorganization

- Management develops a "reorganization plan" – usually a 120 day exclusive right  
- Other creditors or equity holders may submit a plan as well after 120 day period  
- Taken to bankruptcy court for

- Approval
- Modification
- Rejection

# Chapter 11 – Reorganization

- Specialized judge who only hears bankruptcy cases  
- Court of equity – not of law

Vote on plan by "interested parties" – impaired creditors  

- At risk of losing money – not fully secured  
- Usually restructuring or turnaround specialists hired to execute  
- If creditors agree, restructuring plan is put in place. If not, judge may impose a plan, known as a "cram down"

# Chapter 7 – Liquidation

- Often begin as Chapter 11

- Company determined no longer viable as a going concern
Liquidation value greater than going concern value

- Trustee appointed to oversee liquidation

- Typically accounting or law firm

# Chapter 7 – Liquidation

- Assets sold

Creditors paid off as proceeds received
- Generally in order of their priority in the capital structure

Secured creditors

- Un (under) secured creditors
Other creditors

- Such sales may be conducted, under Chapter 11 as well

Section 363 sale – applicable section of IRS Code  

- May be sale of entire company or individual assets  
- "Courthouse Steps" sale – Age Refining example

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f59efb93-f079-47a6-b3da-5f35d023ba75/b77d1b831f99ff8a17ef0d3ee10b554022ba847925b1d36af6f10d7e2f4c4654.jpg)

Winter

2023

How Much Should a Corporation Borrow? Part II
