---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: "Lecture Note 1 Discounted Cash Flow Valuation: Computing Free Cash Flows"
linter-yaml-title-alias: "Lecture Note 1 Discounted Cash Flow Valuation: Computing Free Cash Flows"
---

# Lecture Note 1 Discounted Cash Flow Valuation: Computing Free Cash Flows

# Objective

Introduce students to the mechanics of computing free cash flows.

# Outline of the lecture
- Define value of firm, equity, debt, and preferred stock
- Define free cash flows to firm (FCFF), free cash flows to equity (FCFE), free cash flows to debt (FCFD), and free cash flows to preferred stock (FCFP)
- Invested Capital – Asset base generating free cash flows to firm and the rearranged balance sheet
Non-operating assets - Excess cash & marketable securities
J M Smucker (SJM) Financial Statements
- Computing capital expenditures, depreciation & amortization, change in working capital, taxes on EBIT, and effective tax rate
- Deferred taxes
- Rearranged balance sheet with deferred taxes and goodwill; compute invested capital
Investments in other companies
Special Items
- Long-term operating liabilities

# A General Discounted Cash Flow (DCF) Model

The intrinsic value of an asset,  $V$ , is the present value of all its expected future free cash flows (FCF):

$$
V = \sum_ {t = 1} ^ {\infty} \frac {E \left(F C F _ {t}\right)}{\left(1 + r\right) ^ {t}} \tag {1}
$$

$\mathrm{E}(\mathrm{FCF}_t) =$  The forecasted free cash flows from the asset over its life.

An appropriate risk-adjusted cost of capital.

- Free cash flows refer to cash flows that are available to the owner of the asset after meeting all obligations.
- The convention is to focus on cash flows after corporate taxes but before any personal taxes.
- We focus first on the numerator and discuss how to compute free cash flows.
- Later, we turn to the denominator and discuss how to compute cost of capital.

# Valuing a Firm

By definition, the value of a firm is the sum of the value of debt, preferred stock, and equity:

$$
\text {F i r m V a l u e} \equiv D + P + E \tag {2a}
$$

D is the value of all interest bearing liabilities, P is the value of preferred stock, and E is the value of common stock.1

$$
\begin{array}{l} \text {F i r m V a l u e} = \text {T o t a l E n t e r p r i s e V a l u e (V)} \tag {2b} \\ + \text {V a l u e o f N o n O p e r a t i n g A s s e t s} \\ \end{array}
$$

Total Enterprise Value (V) represents the value of the operating assets of the firm.

More generally, we can value an N-asset firm by summing the values of all its N assets (the assets can be both operating and non-operating).

$$
\begin{array}{l l} \text {F i r m V a l u e} = & \mathrm {V} (\text {a s s e t 1}) + \mathrm {V} (\text {a s s e t 2}) + \dots + \\ & \mathrm {V} (\text {a s s e t N}). \end{array} \tag {2c}
$$

This is called the value-additivity principle.

The firm can also be valued from the liability side (right hand side) of the balance sheet by valuing each financial claim:  $\mathrm{D} + \mathrm{P} + \mathrm{E}$ .

# Defining value of firm, debt, preferred stock, and equity
- The total enterprise (operating) value of a firm, V, is the PV of the free (operating) cash flows to firm (FCFF) discounted at the weighted average cost of capital (WACC).
- The value of debt is the PV of the cash flows to debt discounted at the cost of debt  $(\mathrm{r_d})$
- The value of preferred stock is the PV of the cash flows to preferred stock at the cost of preferred stock  $(\mathbf{r_p})$
- The value of equity is the PV of the free cash flows to equity (FCFE) discounted at the cost of equity  $(\mathrm{r_e})$

<table><tr><td>Valuation</td><td>Cash Flows</td><td>Discount rate</td></tr><tr><td>(1) Enterprise value of the firm</td><td>Free cash flows to firm, FCFF</td><td>Weighted average cost of capital (WACC)</td></tr><tr><td>(2) Debt</td><td>Cash flows to debt, FCFD</td><td>Cost of Debt, rd</td></tr><tr><td>(3) Preferred stock</td><td>Cash flows to preferred stock, FCFP</td><td>Cost of Preferred Stock, rp</td></tr><tr><td>(4) Common Stock</td><td>Free cash flows to equity, FCFE</td><td>Cost of Equity, re</td></tr></table>

# Free cash flows to firm

Total operating cash flows available after meeting all operating expenses, taxes, capital expenditures, and investments in working capital but before any interest and debt principal repayments, and preferred dividends and repayments.

# Free cash flows to debt

This represents the sum of interest payments and net principal repayments (if any) each period.

# Free cash flows to preferred stock

This represents the sum of preferred dividends and any net retirement of preferred stock.

# Free cash flows to equity

This is the residual cash flow available to common equity after meeting all operating expenses, interest expenses, taxes, capital expenditures, working capital requirements, net debt repayments, and preferred dividends and repayments.

# Determining free cash flows

Consider a simple income statement and balance sheet:

# The Income Statement

# Sales
- Cost of Goods Sold
- Selling, general, and administrative expenses
- Depreciation and Amortization Expenses
= Earnings Before Interest and Taxes (EBIT)
- Interest Expense

= Earnings Before Taxes (EBT)

-Taxes

=Net Income Before Extraordinary Items

<table><tr><td>Assets</td><td>Liabilities</td></tr><tr><td>Current operating assets (accounts receivable, operating cash, inventories)</td><td>Current (non-interest-bearing) operating liabilities (accounts payable, salaries payable, etc.)</td></tr><tr><td>Fixed Operating Assets (Net property, plant, and equipment)</td><td>Short-term debt (notes payable, floating rate debt, currently maturing long-term debt)</td></tr><tr><td>Other long-term operating Assets</td><td>Long-term debt (long-term bonds, bank loans)</td></tr><tr><td></td><td>Preferred Stock</td></tr><tr><td></td><td>Common Stock</td></tr><tr><td>Total Assets</td><td>Equity + Total Liabilities</td></tr></table>

# Free Cash Flows to the Firm (FCFF)

From the simple balance sheet and income statement:

# Free cash flows to the Firm – Top down

Earnings Before Interest and Taxes (EBIT)

- Taxes on EBIT (say at  $39\%$ )

= Net Operating Profits After Taxes (NOPAT)*

+ Depreciation and amortization & other non-cash expenses**
- Capital Expenditures***
- Change in Working Capital (Change in current operating assets – Change in current operating liabilities)

= Free Cash flows to the Firm

# Free cash flows to the Firm – Bottom Up

+Net Income Before Extraordinary Items

+ After-tax interest expense

= Net Operating Profits After Taxes (NOPAT)*

+ Depreciation and Amortization & other non-cash expenses\*\*
- Capital Expenditures***
- Change in Working Capital (Change in current operating assets – Change in current operating liabilities)

= Free Cash Flows to the Firm

Net Income = (EBIT - Interest Expense)*(1 - Tax Rate)

Net Income = EBIT*(1 - Tax Rate) - Interest Expense*(1 - Tax Rate)

Net Income + Interest Expense*(1 - Tax Rate) = EBIT*(1 - Tax Rate)

Net Income + Interest Expense*(1 - Tax Rate) = NOPAT

(Note that Interest Expense* Tax Rate is the Interest Tax Shield)

*Textbook refers to NOPAT as NOPLAT.

** Net of any non-cash income

***Capital expenditures also include acquisitions.

# Asset base generating the free cash flows to the firm

Rearrange the items on the simple balance sheet on page 7 by subtracting current operating liabilities from both sides of the balance sheet.

<table><tr><td>Assets</td><td>Liabilities</td></tr><tr><td>Net Operating Working Capital (Current operating assets – Current operating liabilities) +</td><td>Short-term debt (floating rate debt, currently maturing long-term debt) +</td></tr><tr><td>Fixed Operating Assets (Net property, plant, and equipment)</td><td>Long-term debt (long-term bonds, bank loans) +</td></tr><tr><td>Other long-term operating assets</td><td>Preferred Stock +</td></tr><tr><td></td><td>Common Stock +</td></tr><tr><td>= Invested Capital</td><td>= Total Investor Funds</td></tr></table>
- Invested capital represents the operating assets employed in the operations of the business, which generate NOPAT and the free cash flows to the firm (FCFF).
- The cost of financing through non-interest bearing liabilities like accounts payable is included in the cost of goods sold. How?

# Define gross value to include the value of non-interest bearing liabilities

Gross value = Value of current operating liabilities + Value of short-term debt + Value of long-term debt + Value of preferred stock + Value of equity

# Subtract non-interest bearing liabilities from both sides

Value (as we define it) = Gross value - Value of (non-interest bearing) current operating liabilities

= Value of short-term debt + Value of long-term debt + Value of preferred stock + Value of equity

We implicitly subtract the value of non-interest bearing current operating liabilities from gross value by subtracting their costs through the cost of goods sold in computing free cash flows.

Invested Capital = Book value of short-term debt + Book value of long-term debt + Book value of preferred stock + Book value of equity

We will consider excess cash, minority interest, deferred taxes, good will, special items and other long-term liabilities soon.

# Free Cash Flows to Equity (FCFE)

Free cash flows to equity represent the residual cash flows to common stockholders after all senior claimants (debt, preferred stock) are paid off.

# Free Cash Flows to Equity

+Net Income Before Extraordinary Items
+ Depreciation and Amortization & non-cash expenses
- Capital Expenditures
- Change in Working Capital (Change in current operating assets - Change in current operating liabilities)
- Net Payments of Debt Principal
- Preferred Dividends & repayments
= Free Cash Flows to Equity
- FCFE represents the source of funds to equity. It can be distributed through dividends, stock repurchases, and can also be parked in short-term or long-term marketable securities to preserve financial slack.
- Free cash flows to equity represent capacity to payout while dividends and stock repurchases represent actual payout.
- From the statement of cash flows: FCFE = Cash flow from operations + Cash flow from investing + Cash flow from non-equity financing.

# What if there is no preferred stock?

Then, simply set preferred dividends and repayments equal to zero in our discussion earlier.

# What if there is no interest-bearing debt?

Then, set interest expenses and net debt payments to zero.

In this case, the firm is reduced to what is referred to as an all-equity firm, i.e., a firm financed fully by equity.

For an all-equity firm, also referred to as an unlevered firm:

FCFF = FCFE - After-tax interest and non-operating income

(We are yet to introduce non-operating income directly in our discussion).

# Free Cash Flows to Debt (FCFD)

Interest Expense + Net Debt Repayments (net of any new debt issues)

# Free Cash Flows to Preferred Stock (FCFP)

Preferred Dividends + Any Retirement of Preferred Stock

# Non-Operating Assets
- The definition of free cash flow to the firm (FCFF) includes only cash flows from operations.
- It excludes interest income and any other non-operating income.
- How do we deal with non-operating assets such as excess cash, discontinued operations, etc?
- The answer is easy given the value additivity principle.
- Value of a firm is a sum of the values of its individual assets (divisions, lines of business, operating and non-operating assets).

# Excess Cash & Marketable Securities

Consider a firm that has significant excess cash in hand in addition to capital invested in its operations.

<table><tr><td>Assets</td><td>Liabilities</td></tr><tr><td>Excess cash</td><td>Short-term debt (floating rate debt, currently maturing long-term debt)</td></tr><tr><td>Invested Capital</td><td>Long-term debt (long-term bonds, bank loans)</td></tr><tr><td>Net Operating Working Capital (Current operating assets – Current operating liabilities)</td><td>Preferred Stock</td></tr><tr><td>Fixed Operating Assets (Net property, plant, and equipment) + Other long-term operating assets</td><td>Common Stock</td></tr><tr><td>Total Capital</td><td>Total Investor Funds</td></tr></table>

As a thumb rule, depending on the industry, persistent cash balance over  $2\%$  of sales could be considered excess cash not directly related to operations. For practical purposes, however, items such as cash & marketable securities, and other short-term liquid investments may all be treated as excess cash.

Based on value additivity:

Total Firm Value = Total Enterprise Value + Excess cash.

# Value of Excess Cash

Value of excess cash is simply assumed to be equal to its book value from the balance sheet. Why?

# Effect of Excess Cash on the Income Statement

Excess cash earns interest income, which appears after interest expense as either interest income or non-operating income.

# Other non-operating assets

Investments in long-term bonds and equities of unrelated companies may constitute other non-operating assets.

We can compute their value by discounting any expected future cash flow from these assets or simply take their market value if available or book value as a last resort.

However, be very careful in denoting any asset as a non-operating asset, especially, those that seem to have recurring cash flows.

These items will appear under "Other long-term assets" and can be identified only by looking at a firm's footnotes.

For brevity, I will simply use the term "Excess Cash" to refer to all of excess cash and non-operating assets.

# Smucker Financial Statements for fiscal year 2014

(see Smucker-July 2015 version 7.0.xls and 10-K report)

J.M.SMUCKER (SJM) - INCOME STATEMENT

Millions - Detail U.S. Dollars 2014

NET SALES 5,692.7

Cost of Goods Sold (includes dep&amort) 3,781.7

GROSS PROFIT 1,911.0

Selling, General and Admin Expenses 1,031.3

Other Operating Expenses (2.1)

OPERATING INCOME AFTER Dep & Amort.(EBIT) 881.8

Interest Expense 79.9

Non-Operating Income and Special Items (Expense)* (278.9)

Non-Operating Income (Expense) 4.2

Special Items (Expense) (283.1)

PRETAX INCOME 523.0

Total Income Taxes 178.1

Effective Tax Rate  $(\%)$  (total income taxes/pre-tax income) 34.1\%

Less: Minority Interest 0.0

NET INCOME before extraordinary items 344.9

Extraordinary Items & Discontinued Operations 0.0

NET INCOME after extraordinary items 344.9

* Includes interest income as well as special items.

Special items are what CapIQ calls as unusual items.

J.M.SMUCKER - BALANCE SHEET

Dr. Bhaskaran Swaminathan, PhD

© 2022 Bhaskaran Swaminathan

Millions - Detail U.S. Dollars 2014

# ASSETS

Cash 125.6

Net Receivables 430.1

Inventories 1,163.6

Other Current Assets* 333.0

CURRENT ASSETS 2,052.3

Gross Property, Plant & Equipment 2,699.1

Less: Accumulated Depreciation 1,020.8

Net Property, Plant & Equipment 1,678.3

Good Will & Other Intangibles 12,960.1

Other Long-Term Assets 191.9

TOTAL ASSETS 16,882.6

# LIABILITIES AND EQUITY

Short-Term Debt 226.0

Accounts Payable 402.8

Income Taxes Payable 0.0

Other Current Liabilities 393.8

CURRENT LIABILITIES 1,022.6

Long-Term Debt 5,944.9

Deferred Taxes 2,473.3

Other Liabilities 354.9

Minority Interest** 0.0

TOTAL LIABILITIES 9,795.7

Preferred Stock (Carrying Value) 0.0

Common Stock + Capital Surplus 6,037.6

Retained Earnings 1,049.3

Less: Treasury Stock 0.0

COMMON EQUITY 7,086.9

TOTAL LIABILITIES AND EQUITY 16,882.6

* - Mostly deferred income taxes.

Since 2009, FAS 160 places minority interest under stockholder equity.

# J.M.SMUCKER - Statement of Cash Flows

# Millions - Detail U.S. Dollars 2014

# OPERATIONS (Outflows --, Inflows +)

Net Income before Extraordinary Items 344.9

Depreciation, Depletion and Amortization 268.4

Deferred Taxes and Investment Tax Credit 7.7

Other Funds 198.3

Net Change in Operating Assets & Liab (86.1)

Extraordinary 0.0

NET CASH FLOW FROM OPERATIONS 733.2

# INVESTMENTS (Outflows --, Inflows +)

Capital Expenditures (247.7)

Disposal of Fixed Assets & Investments 2.6

Acquisitions net of Divestitures (1,320.5)

Other Investing Activities (30.1)

NET CASH FLOW FROM INVESTING (1,595.7)

# FINANCING (Outflows --, Inflows +)

Cash Common Dividends (254.0)

Cash Preferred Dividends 0.0

Change in Current Debt (22.4)

Change in Long-Term Debt 1,188.6

Change in Common and Preferred Stock (23.5)

Other Financing Activities (25.5)

NET CASH FLOW FROM FINANCING 863.2

Exchange Rate Effect (28.6)

INCREASE (DECREASE) IN CASH (27.9)

# SMUCKER Historical Free Cash Flows

J.M.SMUCKER

Historical Free Cash Flows (NMN means Not Meaningful Number) (based on the income statement and the statement of cash flows)

Millions - Detail

U.S. Dollars

2014

Free Cash Flows to the Firm: Top Down Approach

Earnings Before Interest and Taxes (EBIT) 881.8

Less: Taxes on EBIT (accounting taxes - change in deferred taxes) 292.6

Estimate Accounting Taxes on EBIT (EBIT * effective tax rate) 300.3

Estimate change in deferred income taxes (non-cash taxes) 7.7

Net Operating Profits After Taxes, NOPAT 589.2

Add:Depreciation,amortization,and other non-cash operating expenses 466.7

Less: Net Change in Working Capital 86.1

Less: Net Capital Expenditures & Acquisitions** 1,565.6

Free Cash Flows to the Firm (FCFF) (595.8)

Free Cash Flows to the Firm: Bottom Up Approach

Net Income Before Extraordinary Items 344.9

Add: Change in deferred income taxes (non-cash taxes) 7.7

Adjusted Net Income Before Extraordinary Items 352.6

Add: Minority Interest (adjusted for any dividends paid) 0.0

Add: After-Tax Interest Expense 52.7

Less: After-Tax Interest Income 0.0

Less: After-Tax Non-operating Income and special items (183.9)

Net Operating Profits After Taxes, NOPAT 589.2

Add:Depreciation,amortization,and other non-cash operating expenses 466.7

Less: Net Change in Working Capital 86.1

Less: Net Capital Expenditures & Acquisitions** 1,565.6

Free Cash Flows to the Firm (FCFF) (595.8)

Capacity to pay all investors (FCFF/NOPAT) -101.1\%

Capacity to pay all investors - 10 year mean 54.4\%

Check top down FCFF and bottom up FCFF are the same (difference) 0.0

Free Cash Flows to Equity 2014

Net Income Before Extraordinary Items 344.9

Add: Change in deferred income taxes 7.7

Adjusted Net Income Before Extraordinary Items 352.6

Add:Depreciation,amortization,and other non-cash operating expenses 466.7

Less: Net Change in Working Capital 86.1

Less: Net Capital Expenditures & Acquisitions** 1,565.6

Less: Net Debt Principal Repayment (1,166.2)

Less: Preferred Dividends Plus Retirements 0.0

Free Cash Flows to Equity (FCFE) 333.8

Capacity to pay out equity 96.8\%

Free Cash Flows to Debt (FCFD) (interest + net repayment) (1086.3)

Free Cash Flows to Preferred Stock (FCFP) 0.0

2014

Common Dividends Paid & Net Stock Repurchased 277.5

10 Year

Mean

Capacity to payout to shareholders (FCFE/Adjusted Net Income) 113.5\%

Actual Payout Ratio (dividends + stock repurchase)/Adjusted net income 101.0\%

Note that for this firm, actual payout closely tracks the capacity to payout.

* - The tax shields, after-tax interest expenses, after-tax interest income, etc., are based on the effective tax rate which is the ratio of income taxes to earnings before taxes.

** - This comes from the statement of cash flows. I exclude "Other investing activities."

# Computing components of free cash flows

# Capital expenditures

Capital expenditures include all new and replacement property, plant, and equipment, acquisitions, and other operating investments. They can be obtained in one of two ways: a) If we are computing free cash flows from historical statements, then capital expenditures can be obtained directly from the statement of cash flows from the section on investments. Make sure that you include only operating investments.

b) If statement of cash flows are not available, capital expenditures can be computed as  $=$  Change in net fixed assets (NPPE) + depreciation & amortization.

# Depreciation & Amortization

Depreciation expenses are often buried among cost of goods sold (COG) and selling, general, and administrative expenses (SG&A). The only way to get them is from the statement of cash flows.

# Change in operating working capital

It is the difference between change in all current operating assets (including any operating cash) and the change in all current operating liabilities.

$$
\Delta W C = \Delta \text {C u r r e n t A s s e t s} - \Delta \text {C u r r e n t L i a b i l i t i e s}
$$

Current operating assets include accounts receivables, inventories, etc. Current operating liabilities include accounts payable, taxes payable (which is different from deferred income taxes), etc.

Changes in Working Capital: Balance Sheet or Statement of Cash Flows?

- The change in working capital items taken from the statement of cash flows would not necessarily match the changes computed directly from the balance sheet.
- The numbers from the statement of cash flows are more accurate.
- Therefore, for historical analysis, use the numbers from the statement of cash flows.
- When you project future pro-forma statements, the two items would match by construction (we will discuss this later).

# Effective tax rate

Refers to the ratio of income taxes provided on the income statement to pre-tax income (earnings before taxes (EBT)) from historical statements (Taxes/EBT).

# Taxes on EBIT

Income statements report taxes based on earnings before taxes (EBT) not based on EBIT. Therefore, we have to compute taxes on EBIT as follows:

Taxes on EBIT =

Provision for Income Taxes from Income Statement.

+ Tax shield from interest expense (effective tax rate*interest expense)
- Tax on Interest Income.
- Tax on non-operating income at the effective tax rate.

An easier approach is to multiply the EBIT by the effective tax rate:

Taxes on EBIT = Effective tax rate * EBIT

# Deferred income taxes
- Taxes reported in financial statements and taxes paid to the government are not the same. Why? Different rules.
- For computing free cash flows, only taxes paid to the government are relevant.
- Difference between taxes reported in financial statements and taxes paid to government gives rise to deferred taxes.
- Use deferred taxes to back out the taxes paid to government.

# Deferred Tax Liabilities
- Taxes paid to government less than taxes reported in financial statements  $\Rightarrow$  deferred tax liabilities  $\Rightarrow$  good tax management
- Accelerated depreciation for tax purposes vs. straight-line depreciation for accounting purposes.
- Like borrowing money from the govt. although there are no legal liabilities.

# Deferred Tax Assets
- Taxes paid to government greater than taxes reported in accounting statements  $\Rightarrow$  deferred tax assets  $\Rightarrow$  bad tax management
- Certain business entertainment expenses may be deductible for accounting purposes but not for tax purposes.
- This is like lending money to the govt., hence an asset.

# Compute change in net deferred income taxes

Change in deferred tax liabilities

一

Deferred tax liabilities (t) – Deferred tax liabilities (t-1)

An increase is a cash inflow because this is how much we underpaid relative to taxes reported in the financial statements.

Change in deferred tax assets

=

Deferred tax assets (t) – Deferred tax assets (t-1)

An increase is a cash outflow because this is how much we overpaid relative to reported taxes.

We need to net the inflows and out flows. Therefore, compute:

Change in net deferred taxes

一

Change in deferred tax liabilities – Change in deferred tax assets

When we have historical statement of cash flows available, we can obtain the change in deferred income taxes directly from the statement of cash flows (see Smucker EXCEL workbook, statement of cash flows, also p.18 of this handout).

# Adjusting NOPAT and Net Income for Deferred Taxes

# Top Down Approach

NOPAT = Earnings Before Interest and Taxes (EBIT) - (Taxes on EBIT - Change in net deferred taxes)

# Bottom up Approach

$\mathrm{NOPAT} = \quad$  Net Income Before Extraordinary Items

+ Change in deferred taxes
+ After-tax interest expense
- After-tax interest income
- After-tax non-operating income (if any)

[+ Add any minority interest (to be discussed)]

Adjusted Net Income = Net Income Before Extraordinary Items

+ Change in deferred taxes

# Deferred Taxes in the modified balance sheet

Deferred taxes are like quasi-equity in the sense these funds belong to shareholders until the taxes are paid to the government. Hence, add them to equity in calculating total investor funds to match invested capital.

Net Deferred Tax Liabilities =

Deferred tax liabilities – Deferred tax assets

Original Balance Sheet

<table><tr><td>Assets</td><td>Liabilities</td></tr><tr><td>Excess Cash (Cash, Marketable Securities, and Other Short-Term &amp; Long-Term Investments)</td><td>Current (non-interest-bearing) operating liabilities (accounts payable and other accruals)</td></tr><tr><td>Current operating assets (accounts receivable, operating cash, inventories)</td><td></td></tr><tr><td>Fixed Operating Assets (Net property, plant, and equipment)</td><td>Short-term debt (floating rate debt, currently maturing long-term debt)</td></tr><tr><td>Other long-term operating assets</td><td>Long-term debt (long-term bonds, bank loans)</td></tr><tr><td></td><td>Deferred Tax Liabilities</td></tr><tr><td>Deferred Tax Assets</td><td>Preferred Stock</td></tr><tr><td></td><td>Common Stock</td></tr><tr><td>Total Assets</td><td>Total Liabilities</td></tr></table>

# Modified Balance Sheet

Subtract Current operating liabilities & Deferred Tax Assets from both sides (subtracting from both sides ensures that the modified balance sheet remains in balance).

<table><tr><td>Assets</td><td>Liabilities</td></tr><tr><td>Excess cash</td><td>Short-term debt (floating rate debt, currently maturing long-term debt)</td></tr><tr><td>Invested Capital</td><td>Long-term debt (long-term bonds, bank loans)</td></tr><tr><td>Net Operating Working Capital (Current operating assets – Current operating liabilities)</td><td>Preferred Stock
Net Deferred Tax Liabilities = (Deferred Tax Liabilities – Deferred Tax Assets)</td></tr><tr><td>Fixed Operating Assets (Net property, plant, and equipment)</td><td>Common Stock</td></tr><tr><td>Other long-term operating assets</td><td></td></tr><tr><td>Total Capital</td><td>Total Investor Funds</td></tr></table>

We should treat net deferred tax liabilities as quasi-equity and add it to common stock in computing book value of equity.

# Goodwill

Goodwill is an asset on the balance sheet that represents the price premiums paid for acquisitions over the market value of their net tangible assets.

# What does good will represent?
- Intangible assets such as brand name (say Coco Cola or Pepsi brand name) and any synergies.
- Overpayment (due to winner's curse).

Goodwill unlike other fixed assets does not wear out on a regular basis and does not need to be replaced on a regular basis.

FASB rules SFAS 141 & 142 recognize this concern and require goodwill to be written down only when it gets impaired. Impairment is determined by a set of complex accounting rules and may be triggered by a drop in the firm's market value. If there is no impairment, goodwill is kept at its original amount on the balance sheet.

Until 2001, the goodwill asset was amortized mechanically on a straight-line basis over a 40-year period. Historical statements prior to 2001 should be adjusted to undo the impact of goodwill amortization on the financial statements since it is a non-cash expense.

# Original Balance Sheet with Good Will

<table><tr><td>Assets</td><td>Liabilities</td></tr><tr><td>Excess Cash (Cash, Marketable Securities, and Other Short-Term &amp; Long-Term Investments)</td><td>Current operating (non-interest bearing) liabilities (accounts payable and other accruals)</td></tr><tr><td>Current operating assets (accounts receivable, operating cash, inventories)</td><td></td></tr><tr><td>Fixed Operating Assets (Net property, plant, and equipment)</td><td>Short-term debt (floating rate debt, currently maturing long-term debt)</td></tr><tr><td>Other long-term operating assets</td><td></td></tr><tr><td>Deferred Tax Assets</td><td>Long-term debt (long-term bonds, bank loans)</td></tr><tr><td>Good Will</td><td>Deferred Tax Liabilities</td></tr><tr><td></td><td>Preferred Stock</td></tr><tr><td></td><td>Common Stock</td></tr><tr><td>Total Assets</td><td>Total Liabilities</td></tr></table>

# Modified Balance Sheet with Goodwill

Subtract current operating liabilities and deferred tax assets from both sides.

<table><tr><td>Assets</td><td>Liabilities</td></tr><tr><td>Excess cash</td><td>Short-term debt (floating rate debt, currently maturing long-term debt)</td></tr><tr><td>Invested Capital</td><td>Long-term debt (long-term bonds, bank loans)</td></tr><tr><td>Net Operating Working Capital (Current operating assets – Current operating liabilities)</td><td>Preferred Stock
(Deferred Tax Liabilities – Deferred Tax Assets)</td></tr><tr><td>Fixed Operating Assets (Net property, plant, and equipment)</td><td>Common Stock</td></tr><tr><td>Other long-term operating assets</td><td></td></tr><tr><td>Good Will</td><td></td></tr><tr><td>Total Capital</td><td>Total Investor Funds</td></tr></table>

# Accounting for investments in other companies

If company A invested in another company B, the accounting method used, in general, depends on the percentage of the voting stock A owns.

<table><tr><td>A&#x27;s ownership of B</td><td>Accounting Method used by A</td><td>A&#x27;s income Statement</td><td>A&#x27;s balance Sheet</td><td>A&#x27;s Cash Flow Statement</td><td>Comments</td></tr><tr><td>&lt; 20\%</td><td>Cost
E.g.: A owns 10\% of B.</td><td>Any dividends from B included in other income below EBIT of A. A&#x27;s share of B&#x27;s earnings not reported.</td><td>Investment is a long-term asset under &quot;Other long-term assets&quot; at cost.</td><td>No effect</td><td>The asset is most likely operating; dividend income is also operating.</td></tr><tr><td>20\% to 49\%
Deemed to have sufficient influence over B.</td><td>Equity
E.g.: A owns 30\% of B.</td><td>A reports 30\% of B&#x27;s income below EBIT as &quot;Equity in earnings (losses) of unconsolidated affiliates.&quot;</td><td>The investment is a long-term asset under &quot;Other long-term assets.&quot;
Book or fair market value</td><td>The portion of income that is non-cash is deducted in the Operating section.
Depends on any dividends from B to A.</td><td>Earnings and assets should be operating.</td></tr><tr><td>&gt;= 50\%
Deemed to have &quot;control&quot; over B; B is now a subsidiary of A.</td><td>Consolidated
E.g.: A owns 80\% of B and minority shareholders own the rest.</td><td>A consolidates B&#x27;s income statement in its own income statement.
The income that belongs to minority owners of B is deducted as &quot;Minority interest&quot; below EBIT.</td><td>A includes all of B&#x27;s assets and liabilities on its own balance sheet.
The 20\% owned by others is shown as &quot;Minority Interest&quot; under equity.</td><td>The minority earnings deduction is non-cash and added back.
Any dividends paid to minority shareholders offset the deduction.</td><td>Since 2008/2009: minority interest is reported separately under shareholder&#x27;s equity and not under liabilities. See SFAS 160.</td></tr></table>

# Modified Balance Sheet with Minority Interest

Subtract current operating liabilities and deferred tax assets from both sides.

<table><tr><td>Assets</td><td>Liabilities</td></tr><tr><td>Excess cash</td><td>Short-term debt (floating rate debt, currently maturing long-term debt)</td></tr><tr><td>Invested Capital</td><td>Long-term debt (long-term bonds, bank loans)</td></tr><tr><td>Net Operating Working Capital (Current operating assets – Current operating liabilities)</td><td>Preferred Stock
(Deferred Tax Liabilities – Deferred Tax Assets)</td></tr><tr><td>Fixed Operating Assets (Net property, plant, and equipment)</td><td>Common Stock (Including Minority Interest)</td></tr><tr><td>Other long-term operating assets</td><td></td></tr><tr><td>Good Will</td><td></td></tr><tr><td>Total Capital</td><td>Total Investor Funds</td></tr></table>

# Things to keep in mind on subsidiary accounting
- If you add "equity in earnings of unconsolidated affiliates" to operating income, remember to add the assets corresponding to that income to operating assets. Be consistent in your treatment of income and assets.
- In computing free cash flows, remember to subtract any non-cash income (recall other non-cash expenses in our free cash flow definition, just as you add other non-cash expenses, you must subtract non-cash income). Thus, if you add "equity in earnings" to operating income, remember to subtract any non-cash portion from the free cash flows. This may not be easy to sort out from the financial statements (see footnotes).
- For fully consolidated statements, remember that the minority interest deduction in the income statement is most likely a non-cash expense. The statement of cash flows would add it back, net of any dividend distribution to minority shareholders. A dividend distribution to minority shareholders reduces the operating cash flows available to majority shareholders.
- The consolidation accounting is careful in delineating income and equity attributable to minority and majority interests but not so when it comes to operating cash flows. There is no reporting consistency in the dividends paid to minority interest and in some instances they are not even reported on the statement of cash flows (Mulford and Dar, 2012). Thus, it is hard to determine how much of the operating cash flows belong to minority interest.

# Special Items
- These represent unusual or non-recurring items reported above taxes and below EBIT by the company.
- This is not a description used by the company or GAAP.
- This is a description used by analysts and databases such as Compustat and CapIQ. Analysts remove special items in comparing earnings across periods.
- This is to be distinguished from extraordinary items, which is a GAAP item reported below Net Income Before Extraordinary Items.
- Special items typically consist of:

○ Impairment of goodwill

$\circ$  Gain (Loss) on sale of Assets

$\circ$  Insurance settlements and legal settlements

$\circ$  Restructuring charges

Other unusual items.

- The default assumption is that we should treat them as non-operating unless otherwise they are recurring and predictable.
- These items do not affect the top-down approach to computing FCFF since they appear below EBIT. They do affect the bottom-up approach.
- You may not want to include them in computing FCFE either.

# Long-term operating liabilities
- Pension liabilities arise from defined benefit plans in terms of what the firms owes its employees in the future. There is a lot of complicated actuarial accounting associated with estimating these items. SFAS 158 requires reporting of net pension liabilities (if underfunded) and assets (if overfunded).
- Post-retirement obligations consist of the present value of post-retirement healthcare and welfare benefits and are distinct from pension liabilities.
- Unlike interest-bearing debt and lease obligations they are not financial liabilities but long-term operating liabilities created by the operations of the company.
- The interest expenses associated with these liabilities are part of the pension expenses and post-retirement benefit expenses (just like the interest cost on accounts payable) and are, therefore, included in operating expenses.
- Therefore, just like we subtracted accounts payable in computing net working capital, we also should subtract these operating liabilities from operating assets.
- However, for calculations to evaluate credit risk, we should include them in the calculation of debt ratios.

See the modified balance sheet on the next page.

# Modified Balance Sheet with long-term operating liabilities

Subtract long-term operating liabilities from both sides.

<table><tr><td>Assets</td><td>Liabilities</td></tr><tr><td>Excess cash</td><td>Short-term debt (floating rate debt, currently maturing long-term debt)</td></tr><tr><td>Invested Capital</td><td>Long-term debt (long-term bonds, bank loans)</td></tr><tr><td>Net Operating Working Capital (Current operating assets – Current operating liabilities)</td><td>Preferred Stock
(Deferred Tax Liabilities – Deferred Tax Assets)</td></tr><tr><td>Fixed Operating Assets (Net property, plant, and equipment)</td><td>Common Stock (Including Minority Interest)</td></tr><tr><td>Other long-term operating assets</td><td></td></tr><tr><td>Less: long-term operating liabilities</td><td></td></tr><tr><td>Good Will</td><td></td></tr><tr><td>Total Capital</td><td>Total Investor Funds</td></tr></table>

# How to estimate invested capital?

From the previous page:

Invested Capital = [Short-term debt + Long-term debt + Book value of preferred stock + (Deferred tax liabilities - Deferred tax assets) + Book value of common stock including minority interest] - Excess cash

This is useful if you are writing code to compute IC from databases such as Compustat or CapIQ.

It is also the difference between operating assets and operating liabilities.

Invested Capital = Operating Assets - Operating Liabilities

Operating Assets = Total Assets - Excess Cash - Deferred tax assets

Operating Liabilities = Total Assets - Total Debt - Book Value Common and Preferred stock - Minority Interest - Deferred tax liabilities

Note that my use of the term "Excess Cash" also includes all non-operating assets.

# Equity Equivalents

Note that net deferred income taxes is like quasi-equity in the sense including it in book value of equity provides a better measure of the equity capital.

Therefore, the adjusted book value of equity is:

Book Value of Equity from the balance sheet

+Net deferred income taxes

The adjusted net income definition consistent with the adjusted book value of equity is:

Net Income Before Extraordinary Items

+ Change in deferred income taxes

There are other items that could be added to the equity equivalents (see pages 145-147 of the text book):

Minority interest (which is now under book equity).

Equity portion of hybrid securities such as convertible debt or convertible preferred.

# Things to keep in mind
- Whether an item is operating or non-operating depends on a subjective analysis of the operations of the particular firm. Refer to 10-K reports and footnotes in financial statements in making these judgments.
- In the same vain, when you cannot clearly determine whether a balance sheet or an income statement item is operating or non-operating just make an assumption and consistently follow that assumption in your calculations.
- Apply the "who cares rule". If an item such as deferred taxes or non-operating income is too small to be material in your calculations, you might as well just ignore them. It may not be worth your time to figure out the exact numbers and their effects.

The EXCEL workbook Smucker-July 2015 version 7.0.xls contains various worksheets that can be used as templates for the valuation exercises you will perform with Boeing.
