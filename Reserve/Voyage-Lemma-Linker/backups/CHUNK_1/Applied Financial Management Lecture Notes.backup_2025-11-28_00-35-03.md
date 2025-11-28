---
title: Applied Financial Management Lecture Notes
tags:
  - banking_crisis_analysis
  - derivatives_pricing
  - fixed_income_securities
  - risk_management
  - capital_structure_theory
  - time_value_of_money
key_concepts:
  - asset_liability_duration_mismatch
  - bank_solvency_versus_liquidity
  - mark_to_market_accounting
  - futures_forward_pricing
  - option_valuation_risk_neutral
  - modigliani_miller_propositions
  - risk_adjusted_discounting
  - securitization_pooling
aliases:
  - Silicon Valley Bank Analysis
  - Financial Management Lectures
cssclasses: academia
---

# Introduction & Big Ideas Silicon Valley Bank
Lecture 1

Thomas S. Coleman

March 20th, Draft March 19, 2023

## The Power & Value Of Finance
A million pounds in the hands of a single banker is a great power... But the same sum scattered in tens and fifties through a whole nation is no power at all (Walter Bagehot 1873)

The Economist correctly claims that finance is one of mankind's greatest inventions:

What is mankind's greatest invention?... People are unlikely to suggest... the financial contract. Widely disliked and often considered grubby, it has nonetheless played an indispensable role in human development for at least 7,000 years.... finance... can act as an economic time machine, helping savers transport today's surplus income into the future, or giving borrowers access to future earnings now. (2017)

Finance: re-arranging money & resources (cash flows) across time & people
- We see power of finance when it goes wrong: crises like 2008

Finance is about money and resources, and re-arranging cash flows across time and across people.

Walter Bagehot understood the power of finance:

A million pounds in the hands of a single banker is a great power... But the same sum scattered in tens and fifties through a whole nation is no power at all (, Lombard Street 1873)
 and The Economist correctly claims that finance is one of mankind's greatest inventions:

What is mankind's greatest invention? Ask people this question and they are likely to pick familiar technologies such as printing or electricity. They are unlikely to suggest an innovation that is just as significant: the financial contract. Widely disliked and often considered grubby, it has nonetheless played an indispensable role in human development for at least 7,000 years.... finance... can act as an economic time machine, helping savers transport today's surplus income into the future, or giving borrowers access to future earnings now. 

## Two Sides Of Finance: "Investments" Vs "Corporate Finance"
Other course - PPHA 34410 - "Corporate Finance"
- Making decisions about business today vs tomorrow
- How to decide on what plant to build
- Long-term & short-term corporate financial planning
- Mergers & Acquisitions, corporate control
- Debt policy & dividend payout policy
- Capital budgeting (investment) side of the business: how to spend money

## This Course Is "Investments" - Securities & Financial Markets
- The tools, techniques, and instruments for re-arranging cash flows
Securities: Bonds, interest rate swaps, stocks, futures, options
- Valuing: Discounting and PV - known Cash Flows & uncertain CFs
- Markets and how securities trade - Efficient Market Hypothesis
- Portfolios, risk, and how risk adds (or does not add)
Financing side of the business: how to get money

## Roadmap For Course

## Wk 1: Introduction & Big Ideas
Investments vs Corporate Finance
- Two Important Ideas in Finance: TVM & Uncertainty

## Wks 2-5: Assets, Securities, Instruments
- Fixed Income (Bonds)
Equities
- Others: Currency, Commodity
- Derivatives

## Wk 6-8: Markets And Portfolio Theory
- Types & Classification of Markets
- Efficient Markets & Modigliani-Miller
- Portfolio risk (vs security risk): contribution-to-risk and beta
- Portfolio risk in equilibrium: CAPM

## Wk 9: Derivatives
- Swaps, Futures, Options

1 Procedural & Introduction 3
2 Big Ideas in Finance 6

2.1 TVM & Uncertainty - The Only Ideas in Finance 6
3 Silicon Valley Bank Crisis 8
4 What is a Bank? 9

4.1 What are Deposits? What is Money?. 11
4.2 Liquidity, Solvency, and Inherent Instabilities in Banking 13

5 SVB and the Past Few Years 15

5.1 First Republic 18
6 Deeper into Asset-Liability (Duration) Mismatch 19
7 In-Class Exercise (Break-Out Session) - 4yr $6.5\%$ Bond 20

## 1 Procedural & Introduction

## Who Are We?
Prof Coleman: Education
- BA physics Harvard, PhD economics University of Chicago

Main Career
- Over 20 years in the finance industry, Trading derivatives, building trading systems, running a hedge fund
- I came back to Chicago in 2012 - it has been an unexpected pleasure and opportunity

The practical experience is important - value in combining
- Deep knowledge of market practice
- The theory and quantitative tools we learn here at Chicago.

## Procedural
Lectures & Problem Sessions
- Lectures M & W, 3 hours lectures
- TA Sessions – we will announce final schedule early this week

Text - The main material are class notes, lectures - slides posted
- Textbook: Principles of Corporate Finance by Brealey, Myers, Allen
- I have created a custom "ebOOK" - selected chapters, cheaper
- This text is "Corporate Finance" but I like the chapters on stocks & bonds better than other texts

## 2 Big Ideas In Finance

## Investment & Capital - They Are Throughout Economics
Physical capital and investment
Human capital and education
Financial capital and investment
- What we will focus on

## Always: Investing Today For Future Returns
- The central focus for finance - transforming cash flows back and forth over time, people, risk characteristics
- Here - focus on details of investment and capital in a way we don't in other parts of economics

## But Central Ideas Very Much The Same
Ideas for Finance Course:

## I. Investment & Capital: Theme Throughout Economics
Physical capital investment
Human capital and education
Financial investment - what we will focus on
- Really important to understand that investment & capital is a recurring theme throughout economics: investing today for future returns

### 2.1 Tvm & Uncertainty - The Only Ideas In Finance

## Only Two Ideas In Finance
I. Time Value of Money (TVM) - today vs tomorrow

Framework: Micro I Indifference Curves / Budget Lines

Concepts: PV; FV; yield, discount rate, IRR, interest rates; real vs nominal rates

Assets/Instrument: Everything - bonds, swaps, options, equities, business projects

II. Uncertainty & Risk - certain (known) vs uncertain Cash Flows

Framework: Expected utility. different picture & mathematics

Concepts: risk premium; risk-adjusted discount rate; bond credit spreads; risk-neutral valuation and options

Assets/Instrument: Corporate bonds, options, equities

## Understand Tvm & Risk - You Understand Finance But That'S An Immense Job - For A Few Reasons
- Translating from simple concepts to a complicated world
- Consider US Treasury bonds:
- It is just TVM - but coupon dates (semi), and yield / accrued interest (Act/Act), and prices (what is "98-18+" anyway?) - Need to understand this all
- And then there are UK bonds, and French, and corporates (with uncertain CFs)

## Two Big Goals For This Class:
I. Learning the language - for UST e.g. 98-18+ means "price of 98 + 18.5/32 per $100 nominal of bond"
II. Learning the instruments - how to unravel CFs

What are bond CFs?
- What are swap CFs?

I. There are really only two central ideas we will be working with in this course:

(A) Time Value of Money - today vs tomorrow
- For this we use the pictures from Micro I of Indifference Curves / Budget Lines
- Concepts: PV, FV, yield and IRR, interest rates, real vs nominal rates,
- Assets / Instruments: Everything - bonds, swaps, options, equities.

(B) Uncertainty and risk - how to value certain vs uncertain cash flows
- For this we will work with expected utility and use a different picture and mathematical foundations
- Concepts: risk premium; risk-adjusted discount rate; bond credit spreads; certainty-equivalent; risk-neutral valuation and option valuation
- Assets / Instruments: Corporate bonds, options, equities
- If you understood everything about these two ideas (TVM & valuing uncertain CFs) you would understand everything about finance.

II. If you understood everything about these two ideas (TVM & valuing uncertain CFs) you would understand everything about finance.
- Unfortunately, even though there are only these two underlying ideas, understanding all about them is an immense job. For a few reasons:
- The basic ideas are simple but how they apply to the real world – how we translate them from abstract ideas to concrete applications – is infinitely complicated.
- Consider just bonds. There are US Treasury bonds – seem simple because they are as close to known (certain) CFs as we can get. So for some purposes we can ignore uncertainty and risk. But we have to learn how US Treasury bonds are structured (most have fixed coupons, paid semi-annually, but Bills pay only at maturity). And prices – what does a quote of 99-15 mean? ($99 + 15/32) There is a whole lot of practical issues and complication. And then there are foreign government bonds: British Gilts (also semi-annual, but some slight differences) and German Bunds and French OATs (annual coupons). And then we move to corporate bonds, of which there are an almost infinite variety. And those have uncertainty so we have to worry about risk and default. Fixed coupon US Corporates usually (but not always) pay semi-annually but slightly differently from US Treasuries. Floating rate bonds have a whole variety. And then US Municipal Gov't bonds.
- Much of this complication is just learning the terms and conventions: UST are fixed coupon, semi-annual, quoted A/A Bunds and OATs are fixed coupon, annual, quoted A/A US Corporates are fixed coupon, semi-annual, quoted 30/360
- You need to learn the language - what do people mean when they say "semi-annual", "A/A", or "30/360"?
- These are just code-words that tell you how big and when CFs occur, or how a price or yield gets quoted.
- Part of this course is teaching you the special language used by people in the financial markets
- You need to unravel the sometimes complicated cash flows and structures to figure out how to apply the very simple TVM and uncertain CF ideas.
- The CFs for things like swaps and options are often complicated and confusing. You need to learn about them, and you need to learn how to read carefully to understand the contract - when and how much are the cash flows, and how likely are you to get them.
- This is often a very difficult job. Sometimes people try to make things complicated. But sometimes the world is just complicated – instruments have to be made complicated to match the real world.

## 3 Silicon Valley Bank Crisis

## Silicon Valley Bank - Classic Bank Crisis
We are in the middle of a classic banking crisis
- This is absolutely wonderful - for this course but not for the world

Today I am going to spend some time talking about SVB
- Also two others in the news - First Republic and Credit Suisse

These three are very different SVB
- Solvency problems that led to liquidity problems (bank run)

First Republic
- Lost money but still looks solvent
- But depositors worried, created liquidity problem

Credit Suisse
- Poorly managed for many years - just not a very good company (maybe my biased opinion)

## What Is Solvency? Liquidity? What Is A Bank?
We have lot to unpack here
- What is Solvency? What is Liquidity?
Even more basic, What is a Bank?

Like many things in our world, the underlying ideas are very simple
- But only simple after we have learned a lot of background

Many details that can distract us

Mark-to-Market and Held-to-Maturity vs Available-for-Sale portfolio
Capital ratios, deposits, bonds

But let's turn to the basic question: "What is a Bank?"

## 4 What Is A Bank?

## Bank As Lender & Money Creator
Two main purposes or activities of a bank:

I. Business like any company: raises funds and invests
- All companies raise funds by issuing equity (from shareholders) and debt (borrowing)
- The company then uses those funds to run a business
- Apple builds computers and smartphones. A bank makes loans, provides banking services (credit cards, ATMs), and invests

II. Creating money (liquidity)
- Money is complicated, and later we will spend some time on money
- For now, take my word that banks "create" something we use for day-to-day transactions

Look at a simple balance sheet and we can see both of these things going on:

## Bank Balance Sheet: Business & "Money" Creation

## Look For Two Activities In Apple Balance Sheet (Business And Money)
Assets: for making business profits.
- "Current" = cash + recievables. "Other" = patents, etc.?

Liabilities: where the funds come from.
- Debt - Short-term & Long-term
Equity - from shareholders

## Silicon Valley Bank
Assets are Loans or Investments
- Loans: Traditional bank business
- Investments: buying bonds (to earn profit)

Liabilities: where funds come from
- Mostly Deposits - loans from customers
- Some Other (bonds issued by bank)
Equity - from shareholders

## Apple Computers ($Bn)
```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
ASSETS & LIABILITIES & & \\ \hline
Current Assets & 135.4 & 154.0 & ST Debt \\ \hline
Property & 52.5 & 109.7 & LT Debt \\ \hline
LT Investments & 120.8 & 38.4 & Other \\ \hline
Other & 44.0 & 50.7 & Equity \\ \hline
Total & 352.8 & 352.8 & Total \\ \hline
\end{tabular}
\end{document}
```

## Svb 2022 ($Bn)
```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
ASSETS & LIABILITIES & & \\ \hline
Loans & 73.6 & 173.1 & Deposits \\ \hline
Investments & 125.1 & 22.4 & Other \\ \hline
Other & 13.1 & 16.3 & Equity \\ \hline
Total & 211.8 & 211.8 & Total \\ \hline
\end{tabular}
\end{document}
```

We can look in a simple bank balance sheet to see the two activities.
- The loan business is easy to see on the asset side - lending to business or individuals and charging a rate that's higher than the interest paid on the liability side.
- The money business is in the banknotes / deposits.
- When this works we can use the deposits as money - they are generally accepted by other people easily and quickly.
- Looking at the move from banknotes to deposits helps us understand

### 4.1 What Are Deposits? What Is Money?

## To Understand Deposits – Think About Money
What is money? One of the hardest questions in economics
- Start with currency - pieces of paper printed by the government
Example: Zimbabwe 20-dollar bill
- No photo of US $ - not legal
- Zimbabwe fun - 2nd worst inflation ever
- Anyone my age has used currency
- Worked pretty well as money for many years

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/b80d82e95e11fb9f8bafcbfe2ec39748ee9a751ce2d5fcc757263affb7c42464.jpg)

## Currency Is (Or Was) Pretty Good As Money
A piece of paper printed by the government
- Payments: very fast and easy - in 1920s when many transactions face-to-face. (Less now with buying and selling electronically)
- Keeps value: lasts pretty well, does not "melt" like ice
- Unit of account: need to think about this
- Liquid: easy to buy / sell
- Pretty good as "money" for many years

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/3a43aa7efee9dd8fbb82dacd642f167c6aa1043aed7d7eba6e2b579894a9c22a.jpg)

## More Money - Demand Deposits
- Currency good for face-to-face - not as good for distant and electronic transactions
- Need something that can be easily stored and transferred electronically
- In the late 1800s, banks (at least in US) started issuing demand deposits

-A special type of security, a loan to a bank,
- Bank promises to pay back on demand and at par (1$ for every 1$ loaned)
- Special kind of loan, two special characteristics

I. Promise to pay back on demand & at par - $1-per-$1

II. Upon default, pay first-come - first-served
- If you're late, you get nothing
- Strong incentive to get first in line - Bank Runs
- Very different than other loans (bonds)
- Regular bond-holders, upon default, get pro-rata share (assets divided according to payment hierarchy)
- Works nicely as money
- Transfer from one bank to another
- Originally by paper check, now electronically

## Demand Deposits (Checking Account) - Loan To Bank
"Bank Deposits" are the checking account you and I use
- We think of it as "money" - we "put our money into the bank"

WRONG: it is a loan you and I make to the bank
- But a very special type of loan (debt)

Apple Computer (2022, $bn)

ST Debt: $< 1\mathrm{yr}$; LT: $>1\mathrm{yr}$
- Bonds or loans have a maturity
- When default, remaining assets shared among debtors

Silicon Valley Bank (2022, Sbn)

Deposit loans are day-by-day
- Can redeem at any time
- When default, first person in line gets $100, last gets zero

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
ASSETS & LIABILITIES & & \\ \hline
Current Assets & 135.4 & 154.0 & ST Debt \\ \hline
Property & 52.5 & 109.7 & LT Debt \\ \hline
LT Investments & 120.8 & 38.4 & Other \\ \hline
Other & 44.0 & 50.7 & Equity \\ \hline
Total & 352.8 & 352.8 & Total \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
ASSETS & LIABILITIES & & \\ \hline
Loans & 73.6 & 173.1 & Deposits \\ \hline
Investments & 125.1 & 22.4 & Other \\ \hline
Other & 13.1 & 16.3 & Equity \\ \hline
Total & 211.8 & 211.8 & Total \\ \hline
\end{tabular}
\end{document}
```

### 4.2 Liquidity, Solvency, And Inherent Instabilities In Banking

## Use Svb To Illustrate Solvency And Liquidity Problems
Solvency: Consider SVB actual 2022 Balance Sheet and Hypothetical "Big Loss"

Assume a big loss on Investments
- Assets down, and liabilities must match
- "Shareholder's Equity" gets "written off"
- Shares (equity) loses value

SVB Actual 2022 ($bn)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
ASSETS & LIABILITIES & & \\ \hline
Loans & 73.6 & 173.1 & Deposits \\ \hline
Investments & 125.1 & 22.4 & Other \\ \hline
Other & 13.1 & 16.3 & Equity \\ \hline
Total & 211.8 & 211.8 & Total \\ \hline
\end{tabular}
\end{document}
```

SVB "Big Loss" (Sbn)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
ASSETS & LIABILITIES & & \\ \hline
Loans & 73.6 & 173.1 & Deposits \\ \hline
Investments & 109.5 & 22.4 & Other \\ \hline
Other & 13.1 & 0.7 & Equity \\ \hline
Total & 196.2 & 196.2 & Total \\ \hline
\end{tabular}
\end{document}
```

With "Big Loss" SVB is barely solvent (almost insolvent or "in default")
- Insolvency (default) means not enough assets to pay back debtors
- In this example, just barely solvent (assets just more than debts)

In this case debtors are (mostly) depositors

## Solvency Versus Liquidity (Sbn)
```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
ASSETS & LIABILITIES & & \\ \hline
Loans & 73.6 & 173.1 & Deposits \\ \hline
Investments & 125.1 & 22.4 & Other \\ \hline
Other & 13.1 & 16.3 & Equity \\ \hline
Total & 211.8 & 211.8 & Total \\ \hline
\end{tabular}
\end{document}
```

SVB "Big Loss" (Sbn)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
ASSETS & LIABILITIES & & \\ \hline
Loans & 73.6 & 173.1 & Deposits \\ \hline
Investments & 109.5 & 22.4 & Other \\ \hline
Other & 13.1 & 0.7 & Equity \\ \hline
Total & 196.2 & 196.2 & Total \\ \hline
\end{tabular}
\end{document}
```

Now in a very delicate position, with both Solvency Risks and Liquidity Risks Solvency Risk

Depositors worried investments may go down more
- Regular debts (like for Apple) cannot withdraw early
- Deposits can, and rational to do so
- Get out now, before things get worse

## Liquidity Risk
Even if knew for sure assets would not go down
- Assets may be illiquid - take a few months or year to sell off
- Depositors may need money back sooner
Rational to get first in line, take money out now

In either case, depositors will likely withdraw and the bank will likely fail
- Bank will not have enough liquid assets (cash) to pay depositors

## Fundamental Issue: Banking Inherently Unstable
- The fact that deposits can be redeemed at any time makes banks inherently unstable

Here are some things which can reduce some of the risks:

I. Solvency: Be extremely transparent and up-to-date in value of assets (so everyone has confidence that the balance sheet numbers are reliable)
II. Solvency: Carefully manage the interest rate risk (duration mismatch) and the credit risk of assets
III. Liquidity: Hold liquid assets (easily and quickly sold). If depositors ask for their funds, assets can be quickly sold.
IV. Deposits: Find deposits that are more "sticky" - depositors who are not likely to move their money quickly

## 5 Svb And The Past Few Years

## Examine What Happened Over Past Few Years
I. Solvency: Transparent and up-to-date value of assets
II. Solvency: Manage interest rate (duration) risk (and credit risk)
III. Liquidity: Hold liquid assets
IV. Deposits: Find "sticky" deposits

SVB did more-or-less the opposite - it was hard to get the true numbers behind the published balance sheet
- Delving a little into details about banking & accounting
- Most bankers like to put assets into Held-to-Maturity portfolio
- Claim that they will hold until maturity, so can report (on balance sheet) at original cost
- Horrible, dangerous idea, but bankers (and regulators) do not like or trust market prices and mark-to-market

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/fc2bb2a345e6d16c1ab45a637042ebdf9ccc096509387c44ae8d6aa0bc36e3ab.jpg)

I as % of total assets, and SVB stands out as above average. I cannot see true value of assets

SVB (apparently) did a horrible job at this
- The Economist pointed out they bought long-dated US Treasury (and mortgage) bonds as deposits grew (in 2018,2019,2020)
- Bought bonds when rates were low (and prices high)
- In 2021 and 2022, interest rates soared, and bond prices fell
- SVB apparently did not manage (hedge) that risk
Together with HtM of problem (1), means SVB lost money but nobody could easily see (until March 8)
- They eventually had to sell all of their non-HtM portfolio (called Available for Sale assets) and lost $1.8bn. No doubt more losses in the HtM portfolio

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/d6833cc328d02dac3b8bf76469462eeb7ca3e5706f6700b115ec867acb56fb99.jpg)

## My Conclusion: Svb Made Mistakes, But Did Many Things Right
SVB did many things right.
- Little speculative or risky loans or investments
- Very different from 2008 mortgage crises, where banks loaded up on worthless mortgages
- SVB invested in US Treasuries and high-quality mortgage bonds

Let me be very clear: SVB made mistakes. Mistakes that led to failure
- Asset-liability (duration) mismatch: borrowed short-term (deposits), invested long-term (bonds)
- Classic banking activity, but always risky and needs to be well-managed
- SVB managed poorly
- Poor reporting and accounting
- Large Held-to-Maturity portfolio that obscured underlying asset-liability (duration) mismatch

This is basic, simple, banking-101 - and SVB got it wrong
- Looks like SVB messed up the old-fashioned way, not through anything unethical or nefarious

## Examine More Closely Svb Losses On Assets
Picture (from NYTimes) shows gains & losses for both HtM and AfS portfolio
- Trying to capture true value of assets
- Losses as % of deposits - SVB up to 9%
- Look at the "Big Loss" below - I chose $9\%$ of deposits
- Close to true situation for SVB in 2022 - nearly insolvent
People did not realize until March 8

When run started, massive loss of deposits.
- I've heard $41bn left in a day or two
- Looking at balance sheet ($173.1bn deposits) no way they could survive

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/4445b0f11d39dc1f3b05e7f29b38f459ec70f8ffdcfc13f955c3b42786d0e172.jpg)

SVB Actual 2022 ($bn)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
ASSETS & LIABILITIES & & \\ \hline
Loans & 73.6 & 173.1 & Deposits \\ \hline
Investments & 125.1 & 22.4 & Other \\ \hline
Other & 13.1 & 16.3 & Equity \\ \hline
Total & 211.8 & 211.8 & Total \\ \hline
\end{tabular}
\end{document}
```

SVB "Big Loss" (Sbn)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
ASSETS & LIABILITIES & & \\ \hline
Loans & 73.6 & 173.1 & Deposits \\ \hline
Investments & 109.5 & 22.4 & Other \\ \hline
Other & 13.1 & 0.7 & Equity \\ \hline
Total & 196.2 & 196.2 & Total \\ \hline
\end{tabular}
\end{document}
```

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/06d1ec8a7093edc140cd4ad33456947110eaed31a1f1b4666e5651e1cd4dddc1.jpg)

Unrealized gains and losses on each bank's investment securities as a share of its deposits from https://www.nytimes.com/interactive/2023/03/18/business/why-people-are-worried-about-banks.html

### 5.1 First Republic

## Now Turn To First Republic Bank - Painful, But Not Svb
Gains & losses for both HtM and AfS portfolio
- Losses as % of deposits - FRB up to about $3.5\%$
- Look at the "Big Loss" below - showing $3.5\%$ of deposits
- First Republic painful, but not insolvent
- My view - caught in liquidity panic
- Might survive, might not. But very different from SVB

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/ee1d702f9bc09287e3d3f0101d7c74b1d90e7060561441d4bb9c27f77712ef48.jpg)

FRB Actual 2022 (Sbn)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
ASSETS & LIABILITIES & & \\ \hline
Loans & 166.1 & 176.4 & Deposits \\ \hline
Investments & 33.6 & 19.5 & Other \\ \hline
Other & 13.7 & 17.5 & Equity \\ \hline
Total & 213.4 & 213.4 & Total \\ \hline
\end{tabular}
\end{document}
```

FRB "Big Loss" (Sbn)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
ASSETS & LIABILITIES & & \\ \hline
Loans & 166.1 & 176.4 & Deposits \\ \hline
Investments & 27.4 & 19.5 & Other \\ \hline
Other & 13.7 & 11.3 & Equity \\ \hline
Total & 207.2 & 207.2 & Total \\ \hline
\end{tabular}
\end{document}
```

## 6 Deeper Into Asset-Liability (Duration) Mismatch

## Thinking Carefully About Asset-Liability (Duration) Mismatch
Let's use the SVB balance sheet to think about asset-liability and duration mismatch
- "Duration" or interest rate sensitivity is a topic we cover in the next week or two
- You will not be able to fully understand this discussion, but we will return to this

Some points re any bank balance sheet:
- Assets and liabilities must always match
- Assets generally long-dated (long duration)
- What does this mean? Discuss "duration" next week
- Liabilities (deposits) short-dated

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
ASSETS & LIABILITIES & & \\ \hline
Loans & 73.6 & 173.1 & Deposits \\ \hline
Investments & 125.1 & 22.4 & Other \\ \hline
Other & 13.1 & 16.3 & Equity \\ \hline
Total & 211.8 & 211.8 & Total \\ \hline
\end{tabular}
\end{document}
```

Let's use some of our tools (BPV and duration) for quick calculations on assets vs liabilities

· BPV and duration is what this course is about – you will learn this in the next few weeks

Assets: pretend all "Investments" are 8-year bonds
- BPV / Duration would be about 7.0 today

Rates about 250bp (1% to 3.5%) from 2020-2022
- Let's say on average, 150bp.
 • 7.0 BPV × 150bp × $125.1bn losing $13bn
- How to do this? I will assign problem set

Liabilities: focus on "Deposits"

Technically, BPV / Duration 0.0 (daily maturity)
- When rates and Assets, deposits no change
Big problem as Equity must to balance

In reality, some deposits are "sticky"
- The more sticky, the higher the duration

## 7 In-Class Exercise (Break-Out Session) - 4Yr $6.5\%$ Bond Contents

## In-Class Exercise (Break-Out Session)
4-year bond, $6.5\%$ annual coupon, price $= 99.658$ yield $= 6.6\%$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/1bae14a29ff79f4ac91b7d548219388660f22d73844ee1848ee4d6e4101e7273.jpg)

UST or FIS are simple examples

## Set Up You Tvm Menu To Do This Calculation
- Need "P/YR=1" and "END"
- When type in PV as -99.658, then press "I%YR" and get yield

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 4 & & -99.658 & 6.5 & 100 \\ \hline
Solve For & & 6.6 & & & \\ \hline
\end{tabular}
\end{document}
```

Now, what happens when price down to 99?

Re-calculate

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 4 & & -99.0 & 6.5 & 100 \\ \hline
Solve For & & 6.794 & & & \\ \hline
\end{tabular}
\end{document}
```

## References

## Derivatives - Futures & Options
Lecture 18

Thomas S. Coleman

17 May 2023; Draft May 17, 2023

## Outline

## Futures 2
1.1 What Are Futures? 2
1.2 Futures: Exchanges, Contract, Margining, Etc. 4
1.3 Pricing 11

## A Appendix - Supplement And Not Covered In Class - Risk-Neutral Valuation, Options, Callable Bonds 14
A.1 Option Valuation Using Risk-Neutral Discounting 14
A.2 Equity Option Terms & Valuation 15
A.3 Black Scholes Formula - Simple Expectation 17
A.4 Application - Callable Bonds 18

## Remember - Derivatives - Not Assets, "Derived" From Assets What Is "Derivative": Payout (Profit / Loss) Derived From Something
- Value is derived from some other asset or security
- Not "assets" (generally) - don't invest, don't buy & own something
- Often not "securities" but instead individualized contracts

## "Asset"
- a "thing" such as an equity (part-ownership of a company) or a bond (right to future payments)
- something you buy, you give money and get ownership
Financial assets: equities, bonds
- Non-financial assets: car, house, computer, your human capital

## "Security"
- a standardized and tradeable financial instrument
- originally a piece of paper documenting the details of an asset and documenting ownership. Now usually stored electronically

## 1 Futures

### 1.1 What Are Futures?
Futures - Agree Today, Trade Tomorrow

Example: Wheat Futures
- CBOT wheat, 5,000 bushels, Sep 2019 currently 456.0 $\mathbb{C}$ /bushel

Futures & Forward contracts: agree today to trade in future
- Agree today the future date and price

How are Futures & Forward different?

FORWARD

Private contract, trade OTC

Customized date, size, etc.

Profit / loss settle at expiry

FUTURES

Publicly traded, on an exchange

Standardized delivery date, size, etc.

Profit / loss settled every day

Futures exchange - public, centralized, standardized
- Makes markets liquid and deep, but less customizable

Important Components of Futures

Price & Mark-to-Market
- Agree today to trade at that price on the future (delivery) date
- Daily MtM - ensure everyone has the money to cover losses

Underlier or Deliverable - what we agree to trade in the future
- Physical commodities: a bushel of wheat, a pound of cocoa, an ounce of gold, a barrel of oil
- Financial futures: bonds, stock indexes, currencies

## History
- Original: agricultural commodities, CBOT listed grain contract 1864
- Starting in 1970s and 1980s, introduced financial futures

Important Components of Futures

## Marginating
- NOT payment. Payment occurs at the future date
- Mechanism to ensure there is money easily available to cover losses

## Exchange
- Stands in the middle to mitigate credit risk

## Standardized Contract
- Exchange defines everything except price - price negotiated between parties
- Size; deliverable (underlier); delivery mechanism; delivery date;

## Important Components:
- Futures price today, agree today to trade at that price on the future (delivery) date
- Daily MtM
- Just a way to ensure that price doesn't move too far, and that everyone has the money to pay their losses. P&L settled end of every day

Futures vs Forwards
- Underlier - what we agree to trade in the future
- Examples of physical commodities: a bushel of wheat, a pound of cocoa, an ounce of gold, a barrel of oil
- Examples of financial futures: bonds, stock indexes

History
- Early contracts & original impetus: agricultural commodities, to allow farmers and consumers (millers, slaughter-houses) to lock in prices today. CBOT listed grain contract 1864
- Starting in 1970s and 1980s, introduced financial futures
- Marginating
- NOT payment. Payment occurs at the future date
- Mechanism to ensure there is money easily available to pay on days that price goes against, to make Daily MtM easy and smooth

Exchange
- stands in the middle to mitigate credit risk
- Standardized contract
- Exchange defines everything except price - price negotiated between parties
- Size; deliverable (underlier); delivery mechanism; delivery date;

### 1.2 Futures: Exchanges, Contract, Margining, Etc.

## Exchange & Contract Specifications
Futures traded on an exchange

Used to be open outcry - literally a pit

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/af3e9a65175c09586abeca64f2212c0ed229a09cb0808085c8452292e0109c37.jpg)

## Being Big And Loud Was Important
Now it is all electronic
- Faster, more efficient, cheaper
- But boring

Exchange sets all terms & conditions except price
- What: Deliverable (underlier) eg wheat or gold or bonds
- When: Delivery date (when contract expires)
- Size: Number of bushels or ounces of gold
- Trading hours

## Movie "Trading Places" - Frozen Orange Juice
Movie Trading Places from 1983, starring Eddie Murphy, Dan Aykroyd, Jamie Lee Curtis
- Best I've seen of (old-style) open-pit futures trading

Fun movie based around trading Orange Juice futures
- The older bad guys have stolen a crop report (inside information)
- They believe OJ crop will be poor, pushing prices up
- Aykroyd & Murphy switched the report; they know crop will be good
Bad guys order their trader to buy futures, before report released
- Others see what's happening, everyone starts buying
- Aykroyd & Murphy wait until price is high, then sell at high price
- When good news comes out and price falls, Aykroyd & Murphy buy back at low price

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/1293978907a4d2cdb1845a58584f79197019838250bcea2c60237bbf626963fa.jpg)

## Movie "Trading Places" - Frozen Orange Juice
YouTube Clip (8 min): https://www.youtube.com/watch?v=-4_fwzC4PNI

1:50: Open price at 102.2:00-2:12: Wilson buying. Louis and Valentine waiting for price to rise
- Dukes confident price up when crop report released at 9:30
- Dukes would do this secretly, not publicly
- 2:30: Price at 142, Louis shouts "sell 30 at 142" - everybody else wants to buy (following Dukes)
- 2:55: Price starts to go down (as Louis and Valentine sell).
4:52: "Not affected the orange harvest": prices fall more
- 5:00: Louis and Valentine sit and wait for prices to fall further
- 5:22: Louis and Valentine start to buy, at price of 46. Prices continue to fall
6:12: Trading ends. Price 29
- Post-close: reconciling trades. Common in open outcry
- 7:20: Margin call

Eddie Murphy Rule - outlawed insider trading on futures
- Start: In the NY exchange, but very much the same in Chicago. Everything used to be in physical "pits"
- 0:34: trading various commodities. FCOJ screens show prices - most recent (bottom row) then prior
- 0:45: brokers and runners are old-style. Now all electronic
- 0:55: "silver pit" - literally a pit with steps going up around
1:29: "Bond Futures" on below clock shows prices from Chicago. Randolph & Mortimer standing above realistic
1:50: Open price at 102.2:00-2:12: Wilson buying. Louis and Valentine waiting for price to rise
- Randolph and Mortimer confident (based on (false) inside information) that price will go up when crop report (poor harvest) released at 9:30
- Others see that Duke & Duke trader buying, and Duke brothers watching. This is only big mistake in the movie - Dukes would buy through other brokers, not tip o that they are buying

2:29: Wilson still buying, Valentine wants to sell, Louis says wait from price to go higher
2:30: Price at 142, Louis shouts "sell 30 at 142" - everybody else wants to buy (following Dukes)
- 2:55: Price starts to go down (as Louis and Valentine sell).
- Dukes figure out what has happened - crop report faked
- try to get down onto the floor, try to tell Wilson to sell (close out the earlier buys)
- Louis & Valentine continue to sell
- 4:12: Secretary of Agriculture on TV - in reality report would be released electronically.
- Trading going quiet reasonably realistic
- 4:52: "Not affected the orange harvest": everyone realizes there will be large supply in the next year, price will be low
- Futures prices fall for real
- 5:00: Louis and Valentine sit and wait for prices to fall further
- 5:22: Louis and Valentine start to buy, at price of 46. Prices continue to fall
- They are buying to close out their earlier sales.
- Sold at 142, bought at 46. Profit 96 per contract
- Louis & Valentine needed to make sure they bought back (closed) all their trades

6:12: Trading ends. Price 29
- Post-close: reconciling trades. Common in open outcry
7:20: Margin call
- Dukes had bought contracts at various prices, from 102 up to 142.
- They may have sold out (closed out) some contracts
- But all their remaining contracts were now priced at 29. They had to pay (that day) the difference between price they bought (say 142) and closing (29).
- Movie says it is $394mn - exchange claims their assets, Dukes are ruined

Movie "Trading Places" - Frozen Orange Juice

YouTube Clip (8 min): https://www.youtube.com/watch?v=-4_fwzC4PNI

Eddie Murphy Rule – outlawed insider trading on futures

Passed in 2010

Explanations:

Good: https://www.npr.org/sections/money/2013/07/19/201430727/what-actually-happens-at-the-end-of-trading-places
- So-so: https://im-an-economist.blogspot.com/2014/01/short-selling-explained-case-study.html

## Variety Of Futures

## Commodities

## Agriculturals
Grains (corn, wheat,...)
- Softs (cotton, cocoa, coffee,...)
Livestock

## Metals
Gold, copper, palladium,...

## Energy
- Crude oil, Nat Gas, electricity,...

## Financials

## Interest Rate
- Libor, SOFR, Fed Funds,...

## Bonds
US 10yr, UK Gilt, German Bund,...

## Stock Indexes
S&P e-mini, CAC (France), Nikkei, FTSE

## Foreign Exchange (Fx)
- $/Yen, $/pound,...

Exchanges and contracts throughout the world

US, UK, Europe, Japan, Latin America

## Margining
No cash up-front for forwards or futures

As price changes, profit to one side, loss to other

Futures Daily P&L and Margining - mechanisms reduce credit risk
- After we agree price, exchange steps in, becomes counterparty

Daily P&L - Every day, we receive profit or pay loss (to exchange)
- Ensures that credit risk never grows too big
- Contrast with forwards - P&L accumulates and can get big

Margin - "good faith" money ensures we can pay daily P&L
- Exchange makes us post margin - still ours but physically at exchange. (We earn interest on this money)
- NOT payment to buy (or sell)
- Exchange wants to access to money in case the price goes against us
- Amount in margin up (we have won): we can withdraw some
- Amount in margin down (we have lost): must put more in - "margin call"

## Marginating
Initial Margin
- Name says it: the initial amount
- Might be $10 \%$ or $25 \%$ or even $50 \%$ of contract value – depends on volatility – how much price changes day- by- day

## Variation Margin
Amount to be maintained every day
- Something like $75\%$ of Initial Margin

## Futures Versus Forwards
No cash up-front for forwards or futures
- Both agree today for trade at future date

## Forward
Private contract, trade OTC

Customized date, size, etc.

Profit / loss settle at expiry

## Futures
Publicly traded, on an exchange

Standardized delivery date, size, etc.

Daily MtM: Profit / loss settled every day

## Fundamental difference: Daily Mtm
- Big difference in credit risk
- Small difference in price

## Delivery Mechanism
At end of contract, need to force futures to match cash market Simple for wheat, deliver 5,000 bushels
- "Buy", pay cash price, receive 5,000 bushels

Cash vs Physical
- Physical: 5,000 bushels OK for farmer, inconvenient for "speculator"
- Cash: exchange difference between agreed and final price
- For futures, done incrementally every day, for forward done lump sum at end
- Stories about forgetting and having wheat show up on doorstep

To relieve "cornering" pressures, window and various grades
- Problem if one person buys all the physical, forces cash prices up/dn
- Settlement during a window (wheat, 7 business days after last trade, which is day before 15th of delivery month)
- And grades of wheat (No. 2 soft red winter, no. 2 hard red winter,...)

Most contracts closed prior to delivery

## Bond Futures Delivery
At end of contract, need to force futures to match cash market

How to do this for our Ultra 10yr Note Futures TNZ8? (Dec delivery)
- Contract spec: Grade & Quality (language from grain contracts)

Original issue 10-Year U.S. Treasury notes with not less than 9 years 5 months and not more than 10 years of remaining term to maturity from first day of futures delivery month. The invoice price equals the futures settlement price times a conversion factor, plus accrued interest. The conversion factor is the price of the delivered note ($1 par value) to yield 6 percent

TNZ8 Price 5-oct = 124.265625. Deliverable bonds:

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
 & Price at yld = 6\%, 1-dec-18 & Cash price & &quot;Futures&quot; price & \\ \hline
2.875s of 15-may-2028 & 77.695 & 0.77695 & 98.40 & 96.548 \\ \hline
2.875s of 15-aug-2028 & 77.253 & 0.77253 & 98.33 & 96.000 \\ \hline
5.50s of 15-aug-2028 & 96.352 & 0.96352 & 120.27 & 119.732 \\ \hline
\end{tabular}
\end{document}
```

List of bonds, convert quoted futures price into trading price for delivery
- Seller get to choose which one to deliver

Why don't "Futures" price and cash price match?
- cash is price today, futures price at delivery - turn to pricing next https://www.cmegroup.com/trading/interest-rates/us-treasury/ultra-10-year-us-treasury-note_contractSpecs_futur

### 1.3 Pricing

## Pricing & Daily Mtm
Futures price today: for delivery in future (maybe 1 month, maybe 3)

Daily MtM
- Every day, pay profit or loss
- Ensures that losses don't get too big
- Every morning, contract is PV zero - reset to zero

Tied down by price at delivery date - PV vs FV:

$$
P V = \frac {F V}{1 + y}
$$

Everybody says "Buy Futures" / "Sell Futures"
- But not buying or selling anything
- Agreeing today to buy or sell in the future
Technically, "going long" or "going short"

## Forward And Futures Pricing
Agree today to sell (or buy) at $\mathbf{P}_{\mathfrak{n}}$

What is relation between "spot price" $\mathsf{P_0}$ and "forward price" $\mathsf{P_n}$?

Standard PV / FV relationship:

$$
P _ {0} = \frac {P _ {n}}{(1 + y) ^ {n}}
$$

$$
\mathrm {P} _ {0} = $ 99; \mathrm {y} = 2 \%; \mathrm {n} = 1
$$

$$
P _ {n} = $ 100.98
$$

Agree today to sell at $\mathbf{P_n} = $ 100.98$

In 1 yr, sell at $100.98, buy (with $100.98)
- $\mathbf{P_{n}}$ above $$ 100.98$ you lose,
 • Pn below $100.98 you win

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/6b66d1f1d9d924a3efcdc49c45d222eb9b4b18b99fb2bea7f3a7de329365f93d.jpg)

## Bond Futures Pricing – Accrued Interest
TNZ8 Price 5-oct = 124.265625. Why difference in cash & "futures" prices?

Price at yld $= 6\%$

1-dec-18

77.695 0.77695

77.253 0.77253

96.352 0.96352

Cash price

98.40

98.33

120.27

"Futures"
 price

96.548

96.000

119.732

5.50s of 15-aug-2028,5-oct-18 15-dec-18

$$
\mathbf {S P} + \mathbf {A I} = \frac {\mathbf {F P} + \mathbf {A I}}{(1 + \mathbf {y}) ^ {n}}
$$

$$
\mathbf {S P} + \mathbf {A I} = $ 120.27 + 0.76
$$

$$ y = 2.15\%; n = 71 / 365
$$

$$
\mathbf {F P} + \mathbf {A I} = $ 12 1.51
$$

$$
\mathrm {F P} = $ 119.71
$$

We can always translate PV FV

But we always need to look at either PV or FV

Table above, comparing PV with FV
- When compare FV with FV, one (or more) will match

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/96331ccd79d96bed49450e0ebb502aff94b7a227608d10d62f53cd0836f2431d.jpg)

## Equity Futures Pricing - Dividends E-Mini Esh9 (Mar 19) On 5-Oct-18: 2902.75.
S&P index 2885.57
- Standard PV / FV, but now must recognize dividends
- Some CF disappears, paid out as dividends

5-oct-18 15-mar-19,161 days

Now y is interest minus dividend

$$
\mathbf {S P} = \frac {\mathbf {F P}}{(1 + \mathbf {y}) ^ {n}}
$$

$$
\mathbf {F P} = 2902.75
$$

$$ y = 2.15 - 0.80\%; n = 161 / 365
$$

$$
\mathbf {S P} = 2885.6
$$

## We Can Always Translate Pv Fv
But we always need to look at either PV or FV

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/aadad166531ce184d3e9ee2fe3b27faf80f5118089e73ea5e758ab3619a30285.jpg)

## Wheat Futures Pricing - Cost Of Storage
CBOT Soft Red Winter wheat, Mar 2019 for 5-oct-18 515.25 $\text{©}$ /bushel
- Standard PV / FV, but now must recognize cost of storage
- Some value disappears, paid out to warehouse for storage, wastage as some goes bad

5-oct-18 15-mar-19,161 days
- Now $y$ is interest minus cost of storage

$$
\mathbf {S P} = \frac {\mathbf {F P}}{(1 + \mathbf {y}) ^ {n}}
$$

$$
\begin{aligned} \mathbf{FP} & = 515.25\\ \mathbf{y} & = 2.15 - 0.20\%;\mathbf{n} = 161 / 365\\ \mathbf{SP} & = 510.88 \end{aligned}
$$

## We Can Always Translate Pv Fv
But we always need to look at either PV or FV

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/d036b0a87c8c43d29f44bba07dd8caeb3d1984e9754de37dfd545e473294e16c.jpg)

## A Appendix - Supplement And Not Covered In Class - Risk-Neutral Valuation, Options, Callable Bonds

## A.1 Option Valuation Using Risk-Neutral Discounting
Reminder: Two Ways for Risk Adjustment: Adjust CFs or Adjust Probabilities CFs: Standard method, adjust CFs by $1 / (1 + \mathsf{rp})$ for "risk-adjusted discounting" & risk premium
- We need to use Certainty Equivalent (CE) from Expected Utility
- Risk-adjusted discounting at $(1 + \mathbf{rf})\mid (1 + \mathbf{rp})$

$$
E U = U (C E) = p _ {i} u \left(C _ {\text {o r i g}} ^ {l o}\right) + (1 - p) _ {i} u \left(C _ {\text {o r i g}} ^ {h i}\right) = u p _ {i} C _ {\text {a d j}} ^ {l o} + (1 - p) _ {i} C _ {\text {a d j}} ^ {h i}
$$

$$
C E = p _ {i} C _ {a d j} ^ {l o} + (1 - p) _ {i} C _ {a d j} ^ {h i} = p _ {i} C _ {o r i g} ^ {l o} + (1 - p) _ {i} C _ {o r i g} ^ {h i}
$$

Probabilities: We could adjust probabilities for "risk-neutral discounting"
- Risk-neutral discounting at $(1 + \mathsf{rf})$

$$
C E = p \quad i C _ {\text {o r i g}} ^ {l o} + (1 - p) \quad i C _ {\text {o r i g}} ^ {h i} = p \quad i C _ {\text {o r i g}} ^ {l o} + (1 - p) \quad i C _ {\text {o r i g}} ^ {h i}
$$

More complicated, but really useful for options

Adjusting Probabilities (Risk-Neutral) Seems Complicated Risk-Neutral: adjust the probabilities:

$$
E U = U (C E) = p _ {i} u \left(C _ {\text {o r i g}} ^ {l o}\right) + (1 - p) _ {i} u \left(C _ {\text {o r i g}} ^ {h i}\right)
$$

$$
C E = p \quad | C _ {\text {o r i g}} ^ {l o} + (1 - p) \quad | C _ {\text {o r i g}} ^ {h i}
$$

$$
P V = \frac {C E}{1 + r f} = \frac {p _ {\mid C _ {\text {o r i g}} ^ {\text {l o}}} + (1 - p) _ {\mid C _ {\text {o r i g}} ^ {\text {h i}}}}{(1 + r f)} = \frac {E _ {\Omega} [ C F ]}{(1 + r f)}
$$

We keep the original CFs
- Use market PV to back out $\mathsf{E}_{\mathsf{Q}}[\mathsf{CF}]$: Expected CF under probability-adjusted (risk-neutral) dist'n
Seems more complicated
- Useful when we want to discount part of the distribution

To make concrete, Constant Relative Risk Aversion function: $u(C) = \frac{C^{1 - 1}}{1 - }$, with $= 8$

Options - Using Risk-Neutral & Distribution

Usually risk-adjusted discounting (risk premium) more useful
- Can ignore full distribution
- Use just expected or promised CF

For options, need full distribution
- Back out risk-adjusted ("risk-neutral") probability dist'n using market PV: PV = E $_{\mathsf{Q}}[\mathsf{CF}]$ / (1 + rf)
Whole point of an option: you get part of the distribution
- Option: discount only part of the distribution

These are some very deep ideas in finance

## A.2 Equity Option Terms & Valuation

## Section On Options Before Valuation
1. Terms - one slide already done
2. Better explanation of pay-off (hockey-stick)

3. Examples

(a) FIS, IBM
(b) Put & Call
(c) Short maturity & long maturity

4. How option value changes when change

(a) Underlier
(b) Volatility
(c) Put vs Call

5. Option delta - derivative, analogue to BPV for bond.

Option to Buy (or Sell) – Option not Obligation FIS stock on Friday (11-may-18) was trading at $104.89 Option to buy on 18-may for$ 105, trading at $0.80 Option Terminology:
- Underlier: What the option is written on
- Call vs Put: Buy vs Sell (this is a Call)
- Expiry: date to buy or sell (18-may, 7 days away)
- Strike: price ($105)

P > $105: buy at $105, sell at P, profit P-105

P < $105: do nothing
- You can only win with an option
- Must pay for that privilege

May 18 $105 call was $0.80

Use Distribution to Value FIS May 18 $105 Equity Call

FIS today (May 11th) $104.89
- Expiry May 18, in 7 days 0.019yr
- Strike §105: valuable if $\mathbf{P} > 105$

## For Valuation We:
1. Back out average forward price (on May 18) from today's price
2. Get some estimate / assumption for volatility (spread) of price distribution
3. Get our option CFs and average - in this case E $[P - 105\mid P > 105]$

## 4. Discount Back At Risk-Free Rate

![](Https://Cdn-Mineru. Openxlab. Org. Cn/Result/2025-11-15/3C07Ddea-Cb45-4Eb2-Bd23-F544B33F30B6/591Ccd12A4A465D219Df625Dc941200Be0237A25023208149E3F904Bf849637E. Jpg)

Assume volatility $= 14.5\%$
- $\mathbf{rf} = 1.50\% \mathrm{cc}$
 • Today's Price: P = 104.89 => fwd price = $104.92
- Fwd Price: PV = $\frac{FP}{1 + rf}$, here $1 + rf = \exp(y_i t) = \exp(0.015_i 0.01918) = 1.000288$

## A.3 Black Scholes Formula - Simple Expectation
Black Scholes Formula - Simple Expectation Taking Expectation (averaging) described by picture
- Integrate over (take expectation) only the upper tail

$$
\operatorname{Call} = \operatorname{E} \left[ \left(S_{T} - X\right) \mid S_{T} > X \right] = \int_{S = X}^{\infty} \left(S_{T} - X\right) f\left(S_{T}\right) dS_{T}
$$

This gives Black-Scholes formula

$$
\begin{aligned}
\operatorname{Call} &= N\left(d_{1}\right) S_{T} \exp(-rT) \\
&- N(d_{2}) X \exp(-rT)
\end{aligned}
$$

$$
d_{1} = \frac{1}{\sigma\sqrt{T}} \ln \frac{S_{T}}{X} + \frac{\sigma^{2} T}{2}
$$

$$
d_{2} = d_{1} - \sigma\sqrt{T}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/8527fca13aa887fcf94bdef32f8c4c93409edc952fa902802a5f10732897a997.jpg)

## Calculation With Spread-Sheet And Hp 17B App
Spread-sheet on Canvas (Saved with data for problem set)

Black fwd

12-May-18 Today

11-May-18 Date entered (if empty will use date above)
11-May-18 Today

Years to expiry (if empty will use date below)

18-May-18 Date (if years empty)

18-May-18

104.92 Forward

105 Strike

14.5% Vol input

1.50% Short rate (cc)

Dividend rate

0.02

104.92 Fwd used
0.801 Call
48.9% Delta
0.881 Put

HP 17B App - BSCH menu (under Finance)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
 & Stock & Strike & \# Days & DIV\% & VOL\% & R. F.\% & CALL \\ \hline
Given & 104.89 & 105 & 7 & 0 & 14.5 & 1.5 & \\ \hline
Solve For & & & & & & & 0.801 \\ \hline
\end{tabular}
\end{document}
```

## A.4 Application - Callable Bonds
Callable Bond - Firm can Redeem (Call) at $100 Example: BAC (Bank of America Bond)

4.7% coupon, annual 30/360
- Maturing 1-sep-2045
- Callable at 100 starting 1-sep-2018

"Callable" means BAC can redeem for $100

• Price today (19-feb-2016) $95.80
- Price 1-sep-18 may be $>100$ or $< 100$
- If $\mathrm{P} < 100$, BAC does nothing – no extra profit
- If $\mathrm{P} > {100}$, BAC can redeem (give $100)-extra profit P-100
- Extra profit is OPTION: $\mathrm{{CF}} = \mathrm{P} - {100}$ when $\mathrm{P} > {100}$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/037430c6b5c01254e735a758b05e3f6b82d9da98790479d9c7bbea0d87b3b037.jpg)

- What is value to investor at 9/18?
$\mathbf{P} < 100$.. $\mathrm{P_{nc}}$
$\mathbf{P} > 100$.. $\mathrm{P_{nc} - (P - 100)}$
- $\mathbf{P}_{\mathrm{c}} = \mathbf{P}_{\mathrm{nc}} - \mathbf{Call}$

From Bank of America's perspective, the call feature is a call option: if bond price $< 100$ then no extra profit (but no loss) while if $P > 100$ BAC gets extra profit, P-100
- We can think of the callable bond as a package of a non-callable bond (what we have been dealing with) and a call option
- Bank of America owns the option (has the right to redeem, has bought the option) and the investors are short the option (have sold the option)
- Bank of America will have to pay for this option. This makes the bond value lower:

$$
P_{c} = P_{nc} - \text{Call}
$$
- BAC has bought the option - paid a fee by borrowing less money than they would have by issuing a bond with the same coupon but non-callable
- Investors have sold the option - received a fee by lending less money than they would have for a non-callable bond with the same coupon

## Yield-To-Maturity Doesn'T Work
We want the yield for this bond (how much we earn): $ \mathbf{P} = $95.80 $ on 19-feb-16 But does it go to Call date or Maturity date?
- Maturity (1-sep-2045) y=4.972%ab
- Call (1-sep-2018) $y = 6.536\%$ ab

But neither is right. CFs beyond Sep 2018 are uncertain – not because of default but because of option
- But we know that $P_{c} = P_{nc} - \text{Call}$
- We know how to value standard $\mathsf{P}_{\mathsf{nc}}$
- And we just learned how to value Call

The relation that the callable bond is the package of non-callable less call option holds at the expiration date and every date before.

So the bond price today is

$$
P_{c} = P_{nc} - \text{Call}
$$

Now we need to value the callable bond. But we know exactly how to do that: simply use the Black-Scholes option formula

## Valuing A Callable Bond - 19-Feb-2016
With Callable bonds, need to adjust for Option Value: $\mathsf{P}_{\mathrm{c}} = \mathsf{P}_{\mathrm{nc}} - \mathsf{Call}$

BAC $4.7\%$ ann 30/360 bond of 1-sep-2045
- $\mathbf{B}_0$ (19-feb-16) = 95.80, yld to mat = 4.972%

## Valuation Requires That We:
- Back out forward price $\mathbf{B}_{\top}$ (price 1-sep-18) from today's price
- Get some estimate / assumption for volatility (spread) of price distribution
Average over CFs: $[\mathbf{P} - 100\mid \mathbf{P} > 100]$
Discount back

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/55dce658b12018a49dd861c6c88c65cdc8d51711207f963bd2a8837cf1d7ecef.jpg)

## How Do We Get Fwd Ptr $\Mathbf{B}_{\Top}$
Bond as of 9/18, mat 9/45, y=4.972%ab
 $\mathbf{B}_{\mathrm{T}} = $96.005$

Black-Scholes Valuation
- Use ytm=4.972% to get $\mathbf{B}_{\mathrm{T}} = 96.01$
- Then use 13.5% vol (reasonable)
- "Short Rate" $4.85\%$ cc (=4.72%ab)
- Option = 5.779
- $\mathbf{P_{c}} = \mathbf{P_{nc}} - \mathbf{Call} = 95.80 - 5.781 = 90.02$
13-May-18 Today
19-Feb-16 Date entered (if empty will use date above)
19-Feb-16 Today
Years to expiry (if empty will use date below)
1-Sep-18 Date (if years empty)
1-Sep-18 Expires
96.005 Forward
100 Strike
13.5% Vol input
4.85% Short rate (cc)
Dividend rate
2.53 T
96.005 Fwd used
5.779 Call
41.3% Delta
9.313 Put

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
Yield & P non-call & P forward & Call & P callable & Spread \\ \hline
4.970\% & 95.80 & 96.005 & 5.779 & 90.02 & 236bp \\ \hline
\end{tabular}
\end{document}
```

Note: there is no easy way to do this bond option on the HP calculator. The reason is that the HP formula takes in the spot price (price today) and calculates the forward price.
- Forward formula (you calculate the forward price and put it into the formula). This is also called the Black Forward version

$$
\text{Forward formula: } \text{Call} = N(d_{1}) S_{T} \exp(-rT) - N(d_{2}) X \exp(-rT)
$$

$$
d_{1} = \frac{1}{\sigma\sqrt{T}} \ln \frac{S_{T}}{X} + \frac{\sigma^2 T}{2} \quad d_{2} = d_{1} - \sigma\sqrt{T}
$$
- Spot formula (you put in the spot price for the underlier and then it calculates the forward price by forward valuing: $S_T = S_0 \mid \exp(rT)$ or $S_0 = S_T \mid \exp(-rT)$

$$
\text{Spot formula: } \operatorname{Call} = N\left(d_{1}\right) S_{0} - N\left(d_{2}\right) X \exp(-rT)
$$

$$
d_{1} = \frac{1}{\sigma\sqrt{T}} \ln \frac{S_{0}}{X} + rT + \frac{\sigma^2 T}{2} \quad d_{2} = d_{1} - \sigma\sqrt{T}
$$

You can use the calculator but you have to calculate the spot (stock) price that the calculator needs to produce a forward price of 96.01: $S_0 = S_T \cdot \exp(-rT) = 96.01 \cdot \exp(-0.0485 \cdot 2.53) = 84.923$. This is completely different from the actual spot price of the bond ($95.80) because there are coupons that the forward pricing formula $S_0 = S_T \cdot \exp(-rT)$ does not take into account.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
 & Stock & Strike & \# Days & DIV\% & VOL\% & R. F.\% & CALL \\ \hline
Given & 84.923 & 100 & 924 & 0 & 13.5 & 4.85 & \\ \hline
Solve For & & & & & & & 5.784 \\ \hline
\end{tabular}
\end{document}
```

## Yield-To-Maturity Too High For Callable
Want to use same yield for non-callable and Call Option: $\mathsf{P_c}(\mathsf{y}) = \mathsf{P_{nc}}(\mathsf{y}) - \mathsf{Call}(\mathsf{y})$

But doesn't work with ytm 4.972%ab
- Then use $13.5\%$ vol (reasonable)
Option $= 5.779$
$\mathbf{P}_{\mathrm{c}} = \mathbf{P}_{\mathrm{nc}} - \mathbf{Call} = 95.80 - 5.779 = 90.02$
- NOT the market price of 95.80

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/e5af87c185b27662def1e49e4ac815356c9901c26f4258e4cc6bc8a2675231e2.jpg)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
Yield & P non-call & P forward & Call & P callable & Spread \\ \hline
4.970\% & 95.80 & 96.005 & 5.779 & 90.02 & 236bp \\ \hline
\end{tabular}
\end{document}
```

Option Valuation: $\mathrm{P_c(4.97\%) = P_{nc}(4.97\%) - Cal(4.97\%) = 95.80 - 5.779 = 90.02}$

Market: $\mathbf{P}_{\mathbf{c}} = 95.80$

## Calculating Option-Adjusted Yield
Yield for standard bond: discount rate or what we earn holding to maturity
- Solve for $y$: $P(y) = \frac{coup}{1 + y} + |i| + \frac{100}{(1 + y)^n} = P_{\text{market}}$.

Yield for callable bond: what we earn holding to??
- Solve for $y$: $P_{c}(y) = P_{nc}(y) - Call(y) = P_{market}$
- This is now an option-adjusted yield - accounts for uncertain CFs

For callable, we earn less. Using standard ytm overstates what we earn
- Try lower yields until $\mathsf{P}_{\mathrm{c}}(\mathbf{y}) = \mathsf{P}_{\mathrm{nc}}(\mathbf{y}) - \mathsf{Call}(\mathbf{y}) = \mathsf{P}_{\mathrm{market}}$
- Problem set: you solve for $y - {4.50}\%$ guess not low enough

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
Yield & P non-call & P forward & Call & P callable & Spread \\ \hline
4.970\% & 95.80 & 96.005 & 5.779 & 90.02 & 236bp \\ \hline
4.500\% & 103.207 & 103.090 & 9.230 & 93.977 & 189bp \\ \hline
\end{tabular}
\end{document}
```

For a standard bond we solve for the yield-to-maturity from the simple discounting formula
- Solve for $y$: $P(y) = \frac{coup}{1 + y} + i + \frac{100}{(1 + y)^n} = P_{\text{market}}$.

For a callable bond we need to recognize that it is a package of a regular non-callable bond (using the simple discounting formula) minus the callable bond.
- Solve for $y^* \colon P_c(y) = P_{nc}(y) - \text{Call}(y) = P_{\text{market}}$.

We need to find the yield which satisfies this equation, and there is no easy way to do it except by trial-and-error.

## Discussion Of Option-Adjusted Yield For Risky Bonds
For a callable bond the idea is that we solve for $y$ that solves:

$$
P_{c}(y) = P_{nc}(y) - \text{Call}(y) = P_{\text{market}}
$$

This is all fine for a government bond where the discount rate is the risk-free rate. But for the BAC bond that is not the case. In fact, one reason we want to calculate the option-adjusted yield for the BAC bond is to correctly measure the risk premium – the spread between the government (risk-free) rate and the BAC yield after adjusting for the option part of the BAC bond.

The problem is that option valuation is based on discounting at the risk-free rate. We need to do the option part at the risk-free rate $\mathbf{rf}$ and not the option-adjusted (risk premium) yield $\mathbf{y}^{\star}$. Basically, we should be using:

$$
P_{c}(y) = P_{nc}(y) - \text{Call}(rf) = P_{\text{market}}
$$

Conceptually this is OK - we know from the US Treasury (3% of 15-nov-45) that the risk-free yield on 19-feb-16 is $2.61\%$. Our challenge is to calculate the forward price of the BAC bond given the risk-free rate of $2.61\%$. We don't really have an easy way to do this. You can use the forward pricing screen on Bloomberg. Alternatively you can use the BOND menu on the HP
- Pricing for settle date 19-feb-16, maturity 1-sep-2018
- put in a "Call" equal to a guess for the forward bond price
- price the bond at yield of $2.61\%$ ab – this will now account for all the coupons between 19-feb-16 and 1-sep-18
- adjust the "Call" up and down until the "Price" is equal to the desired bond price

As an example, let's look at:
- $y^{*} = 4.50\% ab$ which means spot price (settle 19-feb-2016, maturity 1-sep-2045) is 103.207
- The HP BOND menu for doing the forward pricing (settle 19-feb-2016, maturity 1-sep-2018, call 98.038) is:

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
 & Type & Settle & Mat & CPN\% & CALL & YLD\% & Price \\ \hline
Given & 360 Ann & 2.192016 & 9.012018 & 4.7 & 98.038 & 2.61 & \\ \hline
Solve For & & & & & & & 103.2056 \\ \hline
\end{tabular}
\end{document}
```

This produces the desired spot price (or close enough, 103.2056) so a forward price of 98.038 is the spot price given by the risk-free rate (from 19-feb-2016 to 1-sep-2018) of $2.61\%$ ab.

Now we can calculate the Black-Scholes option price, using as the "short rate" the UST yield of $2.61\% \mathrm{ab}$ (2.58%cc).

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
Yield (ab) & P non-callable & Forward Bond & Fwd YId (ab) & Call Option & P callable & Sprd to UST \\ \hline
4.972\% & 95.800 & 90.132 & 5.403\% & 3.865 & 91.935 & 236bp \\ \hline
4.500\% & 103.207 & 98.038 & 4.493\% & 7.050 & 96.157 & 189bp \\ \hline
\end{tabular}
\end{document}
```

Option Pricing For BAC bond using risk-free rate of $2.61\%$ ab to calculate forward price

13-May-18 Today
19-Feb-16 Date entered (if empty will use date above)
19-Feb-16 Today
Years to expiry (if empty will use date below)
1-Sep-18 Date (if years empty)
1-Sep-18 Expires
98.038 Forward
100 Strike
13.5% Vol input
2.58% Short rate (cc)
Dividend rate
2.53 T
98.038 Fwd used
7.050 Call
47.4% Delta
8.888 Put

Option Pricing For BAC bond using risk-free rate of $2.61\%$ ab to calculate forward price

If we go through this laborious process we will get an answer not too far from Bloomberg. (Note that $4.500\% \mathrm{ab}$ is not too far o - the Pc is 96.157, slightly higher than the market price of $95.80, meaning that the yield of $4.50\% \mathrm{ab}$ is too low.)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/b1f2276ca0657600d047ff4ae0405e9613a4462fa033f255a484181f94701a56.jpg)

## Bloomberg Oas For Bac
Option-Adjusted Yield Gives Risk Premium
Yield-to-Maturity = 4.972%ab, spread = 236bp
Option-Adjusted-Yield (Bloomberg) = 4.48%ab, spread = 187bp
For callable, we earn less. Using standard ytm overstates what we earn
But we have again used the market to back out the risk premium

## References

## Introduction To Derivatives - Swaps
Lecture 17

Thomas S. Coleman

15 May 2023; Draft May 17, 2023

## Outline
1 What are Derivatives? 1
2 Floating Rate Instruments (Swaps & Bonds) 4

2.1 Floating Rates - Libor & SOFR 4
2.2 Floating Rate Bond - Libor Flat 6
2.3 Risky Floating Rate Notes (Bonds) - Libor + Spread 8

3 Interest Rate Swaps 9

3.1 What is a Swap? How to PV?. 9
3.2 Why Swaps? - Some History & Examples 13
3.3 Modern Example - Chicago Swaps and Termination 14
3.4 More Details on Swaps 21

A Appendix - Supplement and Not Covered in Class - FRN (Floating Rate Note) 23

## 1 What Are Derivatives?
Derivatives - Not Assets, "Derived" from Assets

What is "Derivative": Payout (profit / loss) derived from something
- Value is derived from some other asset or security
- Not "assets" (generally) - don't invest, don't buy & own something
- Often not "securities" but instead individualized contracts

"Asset"
- a "thing" such as an equity (part-ownership of a company) or a bond (right to future payments)
- something you buy, you give money and get ownership
Financial assets: equities, bonds
- Non-financial assets: car, house, computer, your human capital

"Security"
- a standardized and tradeable financial instrument
- originally a piece of paper documenting the details of an asset and documenting ownership. Now usually stored electronically

Derivatives are "derived" from something else.

Bonds, money markets, equities – these are all “assets” in the sense that you invest money and then own something. You have some right to future cash flows. You have bought something

## Futures And Swaps: Two Common Derivatives

## Futures - What They Are
- Simple - a contract where we agree today to trade in the future
- Set today price, amount, when we trade - future delivery
- Come back next class

## Futures - Institutional Details
- Exchanges - centralized trading. Used to be open outcry "pits" now electronic
- Marginating - putting money up-front to reduce & manage credit & default risk
Securities - standardized contract defined by the exchange

## Futures And Swaps: Two Common Derivatives

## Swaps - What They Are
- Simple - a contract to exchange (swap) cash flows between two companies

## Swaps - Valuation
- Teach you how to think about, how to PV these simple instrument
Show how thinking about CFs makes things simple
- These "complicated" derivatives are not that difficult after all

## Swaps - Institutional Details
Trade OTC (Over the Counter)
Used to be no centralized exchange
- Now moving to centralized clearing - to reduce & manage credit risk
- Not a security but an individual contract between two parties

## Goal: Show That Mapping Cfs Makes Things Simple
These "complicated" derivatives are not that difficult after all
- Futures: more-or-less forward contract - spot-vs-fwd pricing by PV
- Example: S&P futures, wheat futures, bond futures
- IR Swap: behaves just like a bond (we will see)

## Value Of Simple Views
- Cannot emphasize enough value of simple (but correct) approaches that get you $95\%$ of the way
- My experience - if someone cannot give simple explanation for trade or business, signals underlying problems
- They don't understand well enough
- They understand but don't want you to understand - maybe to enhance their status, maybe there's something going on

## 2 Floating Rate Instruments (Swaps & Bonds)

### 2.1 Floating Rates - Libor & Sofr
What is a "Floating Rate Bond"?

So far, working with fixed coupon bonds
- Our old friend, 4 yr $6.5\%$ ann coupon

BUT, could also think about "floating coupon"

Each year, agree to pay current 1yr rate
- Still 4 yrs, but now coupon "floats"

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/23b72f0d3e7b8e9c775dbbed48655a3bdd7d2ab8c15dfa22f634b411f95238a1.jpg)

Draw CF diagram and discounting exactly same

Dashed line to represent "floating"
- Unknown today - will be set in 1yr, 2yr, 3yr

But how do we value those "unknown" CFs?

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/006228a9ac0842c0241b42166788509cce8662e8879ea01f10788b5725c7ff87.jpg)

This trick of replacing the 4th year floating payment with $100 at yr 3 is really general but really powerful

Comes from the definition of "floating rate"

• Floating rate = rate that floats (goes up & down) until the PV today is $100
- Today, sitting at year 0, the rate (payment at year 1 gets set. How does it get set? People auction (offer to buy & sell or to invest or take investments) until the rate for year 1 gets set so that PV($100 + rate) = $100 today.
- That is the definition of the floating rate: the rate so that PV today is $100
- $100 = PV ($100(1 + r)) = \frac{100(1 + r)}{1 + r}
- The point is that we are discounting at the same rate as the promised (floating) rate

• When we are sitting at year 3, the rate (payment) at year 4 gets set. How does it get set? Same as year 0 rate: rate set so that PV(yr 3) = $100: $100 = PV ($100(1 + $r_{4}$)) = 100(1+$r_{4}$)/1+$r_{4}$
- This means we can cross out the payment at year 4 and move back to year 3.
- But we can do the same for year 2 & 3: cross out $r_3$ and replace with $100 at year 2
- Now we can do that for year 2 and year 1, and we are left with $100 at year 0.

## Libor
Floating rates for high-quality bank deposits

Benchmark for many financial transactions

1mth, 3mth, 6mth, 1yr all float up & down until PV=$100
- Float minute-by-minute
- LIBOR is the quote collected at 11am London time

London Interbank Offered Rate

Floats up / dn until

• PV=$100 for $100+libor in 1yr

2-nov-18 LIBOR rates:

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
1mth & 3mth & 6mth & 1yr \\ \hline
2.318 & 2.592 & 2.829 & 3.105 \\ \hline
\end{tabular}
\end{document}
```

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/5efbcde0089a1e91c6afa10848484453ec0178a916e6b10fd8714f43ad5676b2.jpg)

Convert quote

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/0ec1c1c9cc08245b3065b0a27946bf408a9f72dfa9ac44cc58f8111739869a64.jpg)

CF: quote*AD/360

## Sofr
Secured Overnight Funding Rate
- Replacement for libor for US Dollar bonds & swaps

The Secured Overnight Financing Rate (SOFR) is a broad measure of the cost of borrowing cash overnight collateralized by Treasury securities. (NY Fed)

Libor has many problems
- Not a traded rate – survey of what banks think it should be
- Open to manipulation

The Libor scandal was a series of fraudulent actions connected to Libor and also the resulting investigation and reaction - during 2008 financial crisis

SOFR introduced in 2018, will be a difficult transition from liber

Two Instruments: SWAP (L flat); BOND (L + risk prem) Think about PV with floating rates for two instruments:
- Libor Flat: will be important when turn to swaps
- Swaps generally between high-grade (libor-like) companies
-risk premium 0bp (relative to libor)
- Libor + risk prem: important when looking at risk bonds
- Say FIS floating rate bond: risk premium 227bp

We need to think about PV of a floating rate bond as discounting at
- LIBOR FLAT: this will be important for thinking about swaps
- LIBOR + Risk Premium: important for thinking about bonds

### 2.2 Floating Rate Bond - Libor Flat Contents
What is a "Floating Rate Bond"?

So far, working with fixed coupon bonds
- Our old friend, 4 yr $6.5\%$ ann coupon

BUT, could also think about "floating coupon"

Each year, agree to pay current 1yr rate
- Still 4 yrs, but now coupon "floats"

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/c68fd5f5bef39d8b35fc564a065a73b40b1cc4df668a59e35e457a7e4109f26b.jpg)

Draw CF diagram and discounting exactly same

Dashed line to represent "floating"
- Unknown today - will be set in 1yr, 2yr, 3yr

But how do we value those "unknown" CFs?

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/887cdc96ef9e9f0e8414f587e9ba179d9aed656013d292a0f04ca4fe31d42b35.jpg)

How to Value? PV = 100

What is PV of those future unknown CFs?
- Simple "trick" says $\mathbf{PV} = 100$

Not really a "trick" - just definition of libor floating rate
- Libor is set so that $\mathrm{PV}(100 + \mathrm{libor}) = 100$
- Libor rate up-and-down (supply/demand) until $\mathrm{PV} = 100$

Must be $100 (yld=coup)
- Trick: rate at yr 3:
- libor set so PV(yr3) = $100
- so put in §100 at yr 3
- Now move back to yr 2, then yr 1
- Run back to today (yr 0)

PV today has to be $100

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/10a85fa3c550b3d7931ad9a458557bf476760ea6af335f51dee921682d90e6f3.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/1ecc4c79f15fcda72d723792082a76a1f5b24eee4f70bbdc06dc8ffda12bab70.jpg)

### 2.3 Risky Floating Rate Notes (Bonds) - Libor + Spread Contents
What is "Risky Floating Rate Note (FRN)?

We know how to PV floating bond that pays libor

Dashed line to represent "floating"

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/3b44adc7f159e42d3d50085a27f91d013d8d0484d1a63d1cc1dbf85c63d70dbf.jpg)

BUT - Most companies (like FIS) not "high quality"
- Coupon = libor + sprd

The libor part up / dn every quarter
- The spread part fixed for life of bond

What is value today for 4yr bond, libor + sprd?

More difficult - come back after swaps

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/42337889f387f71e59d5ed6c7f01f93055b590c9231e444784147d6f6ac220ff.jpg)

## 3 Interest Rate Swaps

### 3.1 What Is A Swap? How To Pv?
What is a Swap? - "Traditional" Diagram

Developed early (1980s) - today probably the largest of swaps
- This makes up only one segment of the swap market.

Focus on a fixed-floating swap
- Concreteness - dealer receives fixed and pays floating.
- Traditional swap diagram showing the direction of cash flows

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/ceb1520c20de0eadcaee13122fa7ded793a98c5be716541ec90c5dbc80131b99.jpg)

What is a Swap? - CF Diagram

Traditional CF diagram useful for seeing who gets paid what.
- But useless for understanding valuation, PV

I find the following CF / time-line diagram more useful
- Four years, receive $5\%$ fixed, pay floating semi-(annually)
- Actual USD swaps generally semi fixed, quarterly floating
- Swap contract to exchange cash flows

Simple instrument, but question
- How do we value? How do we get PV and DV01?

Valuation is pretty simple, using a simple trick.
- Start with CF diagram - four cash flows, each year receive fixed, pay floating

Fixed coupon - say $5/yr, $2.5/period

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/b72b61e265d931e96ea1ceae265cf61d5f5b20184bcfacdc2e138c5ecfee25f0.jpg)

Floating coupon - initially set today then reset every half year

## Valuation Simple, Trick For Irs
Cash flows are net. (Read my "Practical Guide" on Canvas)
- Putting $\pm 100$ at the end makes no difference (approximately)
- Transforms swap into: + fixed bond - floating bond
- NPV (Swap Rec fix) = PV(fix bond) - PV(float bond)
- Rate DV01 = DV01 of fixed-coupon bond (since floating bond 0)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/969aa2c1cfb0758e82cae95492cc2d7c126b88fa4b9c149d8fd87daec2baa01e.jpg)

Read the chapter on swaps in my "Practical Guide to Bonds & Swaps" on Canvas

## In-Class Exercise For Swap Valuation
Now we know answers
- Value and DV01
- Same as bond - what we've been doing - value swaps on HP
- In-class Exercise - PV of swap

PV of 5yr swap to receive $5\%$ fixed semi - current rate $1.7\%$

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
P/YR=2 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 10 & 1.70 & & 2.5 & 100 \\ \hline
Solve For & & & -115.754 & & \\ \hline
\end{tabular}
\end{document}
```

• PV(swap) = 115.75 - 100 = $15.75
- BPV of swap = 5.20 $/100bp

You now know everything about swaps
- What they look like (CF diagram)
- How to value (PV of bond)
- Risk (BPV of bond)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/411b122ccdc4ef19d484101cc4b9708b81c76922b2b9d9e77e9f292185704d52.jpg)

Quoted Swap Rate = Market Yield

Swap market quotes rates - e.g. 2.874% sab for 10-yr for 23-mar-16 What does this mean?
- Tells you about a specific swap trading in the market
- Coupon such that swap PV is 0

PV swap R coup c) = PV(bond with coupon c) - 100

PV(bond with coupon c) = 100 yield $= \mathbf{c}$ (since yield $=$ coupon for par bond)
- So it also tells you about the yield on a specific "bond"

Swap rates in US quoted as spread to US Treasury - always semi
- Convenient way to split overall rate into
- Risk-free discounting, changes with: UST. (2.825% on 23-mar-18)
- Swap-specific risk, spread to UST (4.9 bp on 23-mar-18: $2.874 = 2.825 + 0.049$ )
- With quoted rate c, you know PV (zero) and BPV (of fixed bond coupon=c, yield=c)

Quoted Swap Rate $=$ Market Yield From Problem Set, All-in rates

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
5-oct-18 & Spread & UST & All-in \\ \hline
Swap 2yr & 18.9 & 2.877 & 3.066 \\ \hline
Swap 5yr & 11.9 & 3.068 & 3.187 \\ \hline
Swap 10yr & 2.9 & 3.233 & 3.262 \\ \hline
\end{tabular}
\end{document}
```

10yr swap, fixed coup $3.262\%$, $\mathrm{PV} = 0$
- PV(swap R coup c) = PV(bond with coupon c) - 100

10yr "bond", fixed coup $3.262\%$, $\mathbf{PV} = 100$

### 3.2 Why Swaps? - Some History & Examples
Early Swaps - Allow Credit Arbitrage
different customer "clienteles" (niches) - some like fixed, some float
"Float" customers dislike Co B less - B should always issue in floating market

```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline
 & Fixed & Float \\ \hline
Company A & 7\% & libor + 50bp \\ \hline
Company B & 8\% & libor + 125bp \\ \hline spread & 100bp & 75bp \\ \hline
25bp spread for someone to capture (Co B -25bp in floating) & & \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & Fixed 6.50\%, Split between A&amp;B (picture) & & & & \\ \hline
Co A Max & Bond & Sw Rec & Sw Pay & Pay & Net \\ \hline
Company A & 7\% & 6.65\% & L & 7-6.65+L & L+35 \\ \hline
Company B & L+125 & L & 6.65\% & L+1.25-L+6.65 & 7.90\% \\ \hline
 & Benefit 15 to A, 10 to B & & & & \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
Fixed 6.50\%, Co A pays maximum & & & & \\ \hline
Co A Max & Bond & Sw Rec & Sw Pay & Pay \\ \hline
Company A & 7\% & 6.50\% & L & 7-6.5+L \\ \hline
Company B & L+125 & L & 6.50\% & L+1.25-L+6.50 \\ \hline
Here all benefit (25bp) to Co B & & & & \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
Fixed 6.75\%, Co A pays minimum & & & & & \\ \hline
Co A Min & Bond & Sw Rec & Sw Pay & Pay & Net \\ \hline
Company A & 7\% & 6.75\% & L & 7-6.75+L & L+25 \\ \hline
Company B & L+125 & L & 6.75\% & L+1.25-L+6.75 & 8.00\% \\ \hline
Here all benefit (25bp) to Co A & & & & & \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
Fixed 6.50\%, Split between A&amp;B (picture) & & & & \\ \hline
Co A Max & Bond & Sw Rec & Sw Pay & Pay \\ \hline
Company A & 7\% & 6.65\% & L & 7-6.65+L \\ \hline
Company B & L+125 & L & 6.65\% & L+1.25-L+6.65 \\ \hline
Benefit 15 to A, 10 to B & & & & \\ \hline
\end{tabular}
\end{document}
```

Arbitrage - Swap captures spread
- if A wants float, they can split that extra 25bp

Somebody gets that 25bp

Who? depends on bargaining
- Picture shows splitting: 15 to A, 10 to B

Somebody gets that 25bp

Who? depends on bargaining
Table shows splitting: 25 to A, 0 to B

Somebody gets that 25bp

Who? depends on bargaining
Table shows splitting: 0 to A, 25 to B

First, 1981: World Bank & IBM
- Solomon (Warburg?)

Now: large ($300tn+) and dealers

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/1c93627bbc625987979a05857e4c14daafccd1f66d3295b73710d87695bd03d0.jpg)

Example of two companies with different credit in fixed and floating bonds markets.

We assume here that both companies issue the same bonds – say 4 yr maturity – but their credit is different in the two markets

This used to happen more than it does because different groups of investors have a) different preferences for fixed vs floating bonds and b) different assessment of Co A vs B - those who like fixed think Co B worse than A by 100bp, those who like floating think Co B worse only by 75bp

Doesn't happen much now precisely because of swaps - they allow easy arbitrage across these markets

Markets have developed since http://www.swapsinfo.org

### 3.3 Modern Example - Chicago Swaps And Termination
Modern Example - Chicago Bonds, Swaps, and Termination

2005: City of Chicago issues bonds.

General Obligation (GO) 2005D Variable Rate Demand Bonds
- Roughly 30 years maturity
- Variable rate, meaning coupon goes up (or down) as overall interest rates up
- GO: payments backed by city resources, including tax revenues.
- Strong backing from the city; usually considered to be high quality

Chicago, like any city or company, had to choose between fixed coupon and variable rate bonds
- Choice depends on large variety of factors - expectations, revenues, risks, and costs
- Probably most important: Does (tax) revenue change with interest rates?
- Generally no so paying variable rate is risky (relative to fixed coupon)
- City revenues don't change much with interest rates, so fixed coupon more reasonable
- Risks: a) fixed coup, rates PV city owes; b) variable rate, rates and annual payments
- Costs fixed vs variable coupon – if investors prefer variable rates, require higher fixed coupon

Partly luck: if choose fixed coupon and rates go down, lose

Chicago Chose 30yr Fixed Coupon - Using a Swap - Why different?

Chicago chose fixed coupon, but could do that with fixed coupon bond or floating bond + swap

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/5b390bb63f73e10f39a9d586d9029d0baec036c792849eff680e9e454dcd4114.jpg)

## Would Pay Fixed Coupon
- Presumably higher than $4.1\%$

## Fixed Coupon Set For Life Of Bond
- If Chicago credit coupon does not change

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/bebf08d3e380e36a3a1ed64c99a7bbd010661a10318815424f3ec3c9a96c5989.jpg)

## The Floating Rate "Flows Through"
- Chicago e ectively pays fixed coupon $4.1\%$
- Note: spread "Chicago" coupon and SIFMA rate (Securities Industry and Financial Markets Association) - average muni floating coupon

## Floating "Chicago" Coupon Can Change
- Chicago credit Floating "Chicago" Coupon but not SIFMA
- Chicago pays more

## Also, Credit Triggers On Swaps
- Banks can make Chicago cancel if credit

In 2015, Chicago Forced to Cancel

In May and June 2015, Chicago paid $221mn to cancel swaps
- Uproar about banks forcing the city to pay
- And "bad decisions" by the city in taking on the swaps in 2005

But let's examine the alternatives of Fixed Coupon Bond versus Floating Bond + Swap
- Will see that, mostly, they are the same
- Same value either way

In 2015 and 2016, City of Chicago was very transparent

Published detailed information on bonds and swaps
Data have since been removed from the web

I focused on one specific swap, §66.8mn BMO Harris swap
- Part of $223mn GO 2005D variable rate bond

The $221mn for cancelation of swaps was from the screen-shot of the City of Chicago listing of swaps - see AppFinMgmt2016b/problems/MuniSwapstemp.pdf
- Illinois is one of the states with the biggest problems (but only 2nd-worst - New Jersey is worst).
- From https://www.statedatalab.org/state_data_and_comparisons/detail/illinois
- Total state liabilities (2016): $236bn
- of which bonds: $40bn
- Other liabilities: $28bn
-Minusdebt related to capital assets:-$15bn
- Unfunded pension benefits: $138bn
- Unfunded retiree health care: $44bn
- Per taxpayer $50,400
- Also Retirement debt (2017) – Total $$ 203$ bn From https://www.illinoispolicy.org/reports/203-billion-and-counting-total-debt-for-state-and-local-retirement-benefits-in-illinois/
- General Obligation 2005D Variable Rate Demand Bonds, CUSIP 167486NP0 & 167486NQ8
- CUSIP - universal identifier for North American securities
- GO: payments payments of coupon and principal backed by a pledge to use city resources, including tax revenues.
- Strong backing from the city; usually considered to be high quality

## References:
Bloomberg, and Elizabeth Campbell. "Chicago's Rating Cut by Fitch After Pension Overhaul Dashed." Bloomberg.com, March 28,2016. http://www.bloomberg.com/news/articles/2016-03-28/chicago-s-bond-rating-lowered-to-bbb-by-fitch-after-court-loss

Chicago. "Just the Facts: Answers to Frequent City Pension Questions," n.d. https://www.cityofchicago.org/city/en/d - no longer available

Crain's, and Thomas A. Corfman. "How Bad Are Chicago Pensions? The Worst in the Nation." Crain's Chicago Business. Accessed November 19,2016. http://www.chicagobusiness.com/article/20150814/NEWS02/15 bad-are-chicago-pensions-the-worst-in-the-nation

EMMA. "City of Chicago 2005D," n.d. http://emma.msrb.org/IssueView/IssueDetails.aspx?id=ER347225.

"City of Chicago Bonds," n.d. http://emma.msrb.org/IssuerView/IssuerDetails.aspx?cusip=167486

Governing. "Chicago's Credit Rating Downgraded Because of Illinois' Financial Problems,"

March 15,2013. http://www.governing.com/news/state/mct-chicago-credit-rating-downgraded.html

———. "Cities Paying Millions to Get Out of Bad Bank Deals," March 6,2015. http://www.governing.com/topics/fina.chicago-paying-millionsl-ad-bad-swap-deals.html

Problem: AppFinMgt2018b/problems/problem4

Screenshot of some of the swap information (from the City of Chicago, now removed) are in AppFinMgmt2016b under "MuniSwap..."

## Background
During the early-to-mid 2000s the City of Chicago (like many cities) raised money through issuing floating rate bonds and then entering into swaps to convert them into synthetic fixed-payment structures. As an alternative, the city could have instead issued a fixed coupon bond. There has been much ink spilled about how much the swaps have cost the city. I want you to critically examine the question of how much the swaps cost. Specifically, in this problem we are going to compare the floating-bond-plus-swap synthetic structure with a more-standard fixed coupon bond to examine whether and by how much the two structures differ. We will do this by focusing on one specific bond and swap:

Bond: General Obligation 2005D
- Swap: $66.837mn, Chicago pays 4.10%, receives floating

## Part I: Background On The Bond And The City Downgrade
When the city issues a bond it is borrowing money. It sells the bond by taking money up-front, giving the investor a bond contract, and promising to pay back as specified in the contract.

## Bond
We are going to examine the General Obligation 2005D Variable Rate Demand Bonds, CUSIP 167486NP0 & 167486NQ8. (A CUSIP is a nine-character alphanumeric code that identifies a North American financial security (bond or stock) for the purposes of facilitating clearing and settlement of trades. The CUSIP system is owned by the American Bankers Association, and is operated by S&P Capital IQ.)
- "General Obligation" means that the payments on the bond (payments of coupon and repayment of principal) are backed by a pledge to use city resources, including tax revenues. Usually the entity (City of Chicago in this case) promises to levy a property tax to pay. In other words this bond has strong backing from the city, and this type of bond is usually considered to be high quality.
- "2005D" means that it was issued in 2005, as one of a series of bonds issued that year. I believe it was issued August 2005, with original maturity in 2040 - 35 year maturity when originally issued. It was a variable rate or floating rate issue.

A bond may be issued with either a fixed coupon (most of the bonds we have been discussing are fixed-coupon) or a floating coupon. This GO 2005D VRDB (General Obligation 2005D Variable Rate Demand Bond) was a floating-rate bond. For these bonds the rate was re-set every week or every day - it was a floating rate that depended on the general level of interest rates in the market and the specific credit rating of the City of Chicago.

When the city sells a fixed coupon bond the city is short a fixed coupon bond. Now we are going to see how much the value of a fixed-coupon bond would change due to the change in rates from 2005 to 2015.

This problem is intended to focus on one specific bond issue and swap:

Bond: General Obligation 2005D
- Swap: $66.837mn, Chicago pays 4.10%, receives floating

This swap was terminated in May 2015, for reasons discussed below. The city had to pay the swap counterparty (BMO) $21.0885mn to terminate the swap. We will try to understand where the amount$ 21mn came from, and discuss why the city had to pay this swap termination fee.

I have attached a page from the City of Chicago that shows some details on various bonds and swaps that were terminated. This particular bond and swap are listed under "General Obligation 2005" and "Counterparty BMO". (You can find the full memo on Canvas under "Files / Problems" (name "SwapTermination2003B_WellsFargo_Redacted.pdf"). It used to be hosted by the city at http://www.cityofchicago.org/content/dam/city/depts/fin/supp_info/Bonds/SwapTermination2003B_WellsFargo_ with much more at http://www.cityofchicago.org/city/en/depts/fin/supp_info/swap_confirms/general_obligationconfin - if anybody can find these let me know)

## Details On Actual Bond & Swap

## Bond:
- "General Obligation" means that the payments on the bond (payments of coupon and repayment of principal) are backed by a pledge to use city resources, including tax revenues. Usually the entity (City of Chicago in this case) promises to levy a property tax to pay. In other words this bond has strong backing from the city, and this type of bond is usually considered to be high quality.
- "2005D" means that it was issued in 2005, as one of a series of bonds issued that year. I believe it was issued August 2005, and that it matured in 2040 - 35 year maturity when originally issued. It was a variable rate or floating rate issue.

## Swap:
- Notional: $66.837mn
- Chicago pays fixed $4.10\%$
- Chicago receives SIFMA, which is an average floating rate index of municipal issuers (i.e. it should match the variable rate on the bond above).
Counterparty BMO (Bank of Montreal)

Chicago was required to cancel the swap with BMO in May 2015. (We will discuss more in class why Chicago had to cancel the swap, but the short story is that the swap contract had provisions that the swap could be terminated, at the request of BMO, if the credit rating of the City of Chicago fell below certain levels. In March 2014 and again May 2015 Moody's downgraded Chicago, and that triggered the termination provisions.)

What Happens When Rates Fall: Fixed vs Floating + Swap: 20052015

Simplifying assumption: both fixed coupon and swap rate $4.77\%$ (match 30yr swap rate in 2005)

31 May 2005, $10 - \mathrm{yr} = 4.42\%$ $30 - \mathrm{yr} = 4.77\%$ 20-yr rate $= 4.689\%$ (from yld_fwd6.xls)

$$
\mathrm{PV}(30\mathrm{yr}\text{bond}, \text{coupon} = 4.77\%, \mathrm{yld} = 4.77\%)
$$

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
P/YR=2 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 60 & 4.77 & & 2.385 & 100 \\ \hline
Solve For & & & -100 & & \\ \hline
\end{tabular}
\end{document}
```
- 29 May 2015, ${10} - \mathrm{{yr}} = {2.20}\%,{30} - \mathrm{{yr}} = {2.62}\%$ 20-yr rate $= {2.52}\%$ (from yld_fwd6.xls)

$$
\mathrm{PV}(20\mathrm{yr}\text{bond},\text{coupon} = 4.77\%,\mathrm{yld} = 2.52\%)
$$

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
P/YR=2 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 40 & 2.52 & & 2.385 & 100 \\ \hline
Solve For & & & -135.18 & & \\ \hline
\end{tabular}
\end{document}
```
- Change in Fixed Coupon Bond and Bond + Swap exactly the same

So far, Fixed Bond and Bond + Swap the same: Both lose $35.18

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/10cda0f0cab1f12e676a67c5e6d3f7e2b95a857b8e6449c423782d31128e4c2f.jpg)

Short Fixed Coupon Bond
- PV(coup=4.77% @ yld=4.77%) = -100PV(coup=4.77% @ yld=2.52%) = -135.18

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/c75b8786513002f8e219d41c294ee89bb37847ce52ba15a2329d928fc5828a39.jpg)

Short Floating Bond + Pay Swap
- -100 + (100 - PV(4.77% @ 4.77%) = -100 - 100 + (100 - PV(4.77% @ 2.52%) = -135.18

## Rates (End-Of-Month, From Fred)
31-May-2005,
- 10-yr = 4.42% (DSWP10, discontinued),
- 30-yr = 4.77% (DSWP30, discontinued);
- 20-yr = 4.689%. Calculated from yld_fwd6.xls, assuming flat forwards, 4.42% sab 0-10yrs, 5.119% sab 10-30 yrs

29-May-2015,
- 10-yr = 2.20%,

-30-yr = 2.62%
- $20 - \mathrm{yr} = 2.519\%$. Calculated from yld_fwd6.xls, assuming flat forwards, $2.20\%$ sab 0-10yrs, $2.930\%$ sab 10-30yrs. Discount yrs 10-20 by $2.930\%$ sab, then 0-10 by $2.20\%$ sab.

For reference, here are the FRED average values:
- May 2005, $10\text{-yr} = 4.58\%$, $30\text{-yr} = 4.94\%$;
- May 2015, $10 - \mathrm{yr} = 2.26\%$, $30 - \mathrm{yr} = 2.70\%$

Our Simple "Bond + Swap" - Matches Actual Cancel Fee Actual BMO Harris swap of $66.8mn notional, required$ 21.09mn payment
- Our very simple analysis predicts $23.5mn, not too far wrong
 • We predict swap down by $35.18 per $100, or $23.5mn per $66.8mn

Our very simple (but correct) approach to swaps teaches us what we need for Chicago swap termination
- Issue seems complicated, but surprisingly simple

Why Chicago Forced to Cancel in 2015? What forced the cancellations?

Pension problems - Illinois and Chicago
- Illinois had $236bn liabilities (2016) – of which $182bn was unfunded pension and retiree health benefits
- City of Chicago similar scale of problems
-Post-2008, problemsgrewlarger
- Chicago downgraded 2013 (Aa3 to $A_{3}$ - big jump) and 2015
- Crain's March 2013: Chicago downgraded because of Illinois problems: as of 2013 (IL unfunded pension $\sim$ 97bn, IL worst credit rating in the nation)
- Crain's Aug 2015: Chicago unfunded liabilities $29.80bn, 15% of property tax base, highest in the nation

Downgrade Provisions in swaps
- Banks (legitimately) worry when rates and swap has negative value to Chicago
- What if Chicago defaults, and does not pay?
- Downgrade provisions allow banks to force termination when large downgrade - protects banks

## Problems With Termination
Two basic problems
- Chicago has to come up with cash now, instead of paying over next 20 years
- Terminate swaps and issue new bond
- Chicago has to issue new bond with higher coupon because credit risk higher

Many said "Swaps a Mistake - Chicago lost money"
- My Conclusion: Chicago lost a lot from falling rates – but would have lost roughly the same on fixed coupon bond

Worsening Credit - Chicago also lost from rising credit risk
- Refinance when credit spread is bad
- With fixed coupon bond, might have avoided paying higher credit spread

### 3.4 More Details On Swaps

## Credit Risk On Swaps
Argued above that R Fix on swap Long Bond

One important aspect swap & bond are different: Credit Risk

Bond:
- If municipality goes into default, your whole $100 is at risk

Swap:
- If bank goes into default, only your PV is at risk
- Initially, $\mathbf{PV} = \mathbf{0}$
- Example above, rates up by 30bp, $\mathrm{PV} = -1.42$ - no risk here
 • Only if rates fall will PV become positive, and then risk is << $100

Credit risk on swaps much less than on bonds
- But still credit risk
- Three main ways banks manage credit risk
- Live with it (choose only high credit-quality counterparties)
- Collateral
- Down-grade triggers

## Credit Risk On Swaps - Cont'D
Credit risk on swaps much less than on bonds
- But still credit risk

Three main ways banks manage credit risk

Live with it
- Choose only high credit-quality counterparties
- Collateral
- When $\mathbf{PV} > 0$, transfer cash into a collateral account
- Down-grade triggers
- When counterparty down-graded (becomes more risky) have opportunity to terminate
- Very important - this is not a "penalty", just early payment of the PV

## Market
All amounts in US $ billions

Source - ISDA 1995 Year End Summary of Market Survey Statistics

Table 1 - Swap Market 1995 Activity and Year End Notional Outstanding

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
1995 & Activity & Year End Outstanding & & \\ \hline
CURRENCY & Interest Rate Swaps & Currency Swaps & Interest Rate Swaps & Currency Swaps \\ \hline
TOTAL & 8,969 & 455 & 12,811 & 1,197 \\ \hline
US Dollar & 2,856 & 154 & 4,372 & 419 \\ \hline
Japanese Yen & 2,259 & 82 & 2,896 & 200 \\ \hline
Deutsche Mark & 985 & 39 & 1,439 & 119 \\ \hline
French Franc & 1,113 & 21 & 1,220 & 41 \\ \hline
British Sterling & 433 & 12 & 854 & 46 \\ \hline
\end{tabular}
\end{document}
```

## A Appendix - Supplement And Not Covered In Class - Frn (Floating Rate Note)
What is "Risky Floating Rate Note (FRN)?

We know how to PV floating bond that pays libor

Dashed line to represent "floating"

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/8c6c03e7ce9702a865e05af1b53846e0e9a30df668b241eb4b0636377ca637cd.jpg)

BUT - Most companies (like FIS) not "high quality"
- Coupon = libor + sprd

The libor part up / dn every quarter
- The spread part fixed for life of bond

What is value today for 4yr bond, libor + sprd?

More difficult - come back after swaps

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/b95a022257ec074e078669d26d0880c6f8a16dc70a4e3f9685a91714288a0be1.jpg)

## First Idea - Discount-Libor+Sprd @Libor-Flat - Wrong Most Companies (Like Fis) Not "High Quality"
- Coupon = libor + sprd

The libor part up / dn every quarter
- The spread part fixed for life of bond

What is value today for 4yr bond, libor + sprd? First (wrong) trick - cross out libors to today
- Left with spread to discount

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/b11ee8ca717ef3023eabe909bd72908e5ee93d616be237c9a74beeb79a672e03.jpg)

- But now sprd stays

Left with spread to PV

PV(annuity)
- PV(floater) = 100 + PV(annuity)

$\mathbf{S}\mathbf{p}\mathbf{r}\mathbf{d} = 75\mathbf{b}\mathbf{p},4\mathbf{y}\mathbf{r}$ rate $6.6\%$
- PV = 100 + PV(0.75 @ 6.6%)
$\cdot \mathrm{PV} = 100 + 2.56$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/f18ab9267a87e7a59cdc337446f4fbb5cb49a8a4e62295502a608b5181253b8f.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/c7eb62274bdb2509ba562d2db38f9d31cb4ef9d8b40913198e3a1be7c261d050.jpg)

## Correct Idea - Discount Libor+ Sprd @ Libor+ Sprd Most Companies (Like Fis) Not "High Quality"
- Coupon = libor + sprd(coup)
- Discount = libor + sprd today)

## The Sprd(Coupon) Fixed At Issue
The sprd(today) goes up & down every day
Risky co difficult

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/7bcebfb0476c3ae75bdde17e722e9fb9d169147763f0b9adf171552e2212edfa.jpg)

Must discount libor + sprd(issue) @ rf + rp = libor + sprd(today)
- No simple way to discount and calculate PV
- Need to project future libor (figure out those unknown libors - forward curve)
- Then discount the $\mathbf{L} + \mathbf{sprd}$ (issue) at yield $= \mathsf{rf} + \mathsf{rp} = \mathbf{L} + \mathbf{sprd}$ (today)

## But Here'S An Approximate Way:
- Figure out "average" libor - fixed swap rate good approximation
- Treat FRN as fixed bond with coupon = Swap + sprd
- Get rp (sprd(today)) from a fixed-coupon bond (like FIS rp = 227bp)
- Discount at yield $=$ Swap + spread(today)

## Pv Floating Bond With Spread – In-Class Exercise
"Libor $^+$ spread": Say libor $+75\mathrm{bp}$ (Libor 2-nov-18 $3.105\%$ 1yr)
- Next Coupon: L+75bp would be $3.105 + 0.75 = 3.855\%$

PV of 4yr $\mathbf{L} + 75\mathbf{bp}$

4yr swap $3.154\%$
FIS spread 227bp so discount @ libor+227bp

4yr Bond:
- PV(L+75bp@mkt sprd = 227bp)
PV(3.154+0.75 @ 3.154+2.27)
- = 94.66

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/a00ff2ecfdf5a99cb337fbcf56dfe50eafcc1a92f7914d1b1e79fd70ba8a5090.jpg)

Libor plus: PV(bond@L+227bp)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 4 & 5.424 & & 3.904 & 100 \\ \hline
Solve For & & & -94.6628 & & \\ \hline
\end{tabular}
\end{document}
```

PV Swap + Spread - In-Class Exercise

Discounting at L flat NOT right for bonds, but useful for swaps

"Libor+spread": Say libor + 75bp (Libor 2-nov-18 3.105% 1yr)
- Next Coupon: L+75bp would be $3.105 + 0.75 = 3.855\%$

PV of 4yr $\mathbf{L} + 75\mathbf{bp}$

4yr swap $3.154\%$
Discount $\mathbf{L} + 75\mathbf{bp}$ at L

4yr Bond:
- PV(L+75bp@L)
$- = \mathrm{PV}(\mathrm{floater}) + \mathrm{PV}(75\mathrm{bp}$ annuity)
 • = $100 + 2.778

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/f6336f306721c015075715e9da7a96e36d593489d741a4640e72e313ffddde9d.jpg)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 4 & 3.154 & & 0.75 & 0 \\ \hline
Solve For & & & -2.778 & & \\ \hline
\end{tabular}
\end{document}
```

## References

## Price Of Risk Ii - Contribution,, Capm
Lecture 15

Thomas S. Coleman

8 May 2023; Draft May 15,2023

## Outline

## 1 Discussion - Stablecoins

## Tether - Stablecoin - Part Of Crypto Universe
From last year, when Tether was under pressure

Stablecoin
- Digital asset residing on blockchain, promised to trade 1-to-1 to dollars
- You buy $1 of Tether, (supposed to) remain at $1 always

## Blockchain
- Very simple idea - distributed database with security and concurrency ensured through cryptographic algorithms

## Tether - Asset-Back Stablecoin
- Tether promises to buy safe assets with all money invested
- But there are questions (and legal fights) about audits, etc.

I've posted some material on Blockchain under "Modules"

## How Is Tether Like A Bank?

## Bank
```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
ASSETS & LIABILITIES & & \\ \hline
Loans & $80 & $90 & Deposits \\ \hline
Reserves & $20 & $10 & Equity \\ \hline
Total & $100 & $100 & Total \\ \hline
\end{tabular}
\end{document}
```

## Tether
```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
ASSETS & LIABILITIES & & \\ \hline
Assets & $80 & $95 & Deposits \\ \hline
Reserves & $20 & $5 & Equity \\ \hline
Total & $100 & $100 & Total \\ \hline
\end{tabular}
\end{document}
```

## Similarities
Deposits

-Borrow from public (customers give money to bank or Tether)
- Promise to pay back $1 for every $1 put in
- Reserves - Hold some cash as reserves to pay out customers
Loans / Assets
- Use some of deposits for other business, to make profits

## Di Erences
- Banks subject to many rules and laws (e.g. auditing)
- Result: more transparency and information, easier for customers and investors to see when bank has poor business practices (and harder to commit outright fraud)
- Tether not subject to same rules
- Result: less information, hard for customers & investors to see whether company has good business practices

## How Is Tether Like A Money Market Mutual Fund?
Money Market Fund

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
ASSETS & LIABILITIES & & \\ \hline
Assets & $80 & $100 & Shares \\ \hline
Reserves & $20 & $0 & Equity \\ \hline
Total & $100 & $100 & Total \\ \hline
\end{tabular}
\end{document}
```

Tether

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
ASSETS & LIABILITIES & & \\ \hline
Assets & $80 & $95 & Deposits \\ \hline
Reserves & $20 & $5 & Equity \\ \hline
Total & $100 & $100 & Total \\ \hline
\end{tabular}
\end{document}
```

## Similarities
- Shares / Deposits
- Take money in from public (customers give money to MMF or Tether)
- Promise to pay back $1 for every $1 put in
- Reserves - Hold some cash as reserves to pay out customers
- Assets
- Use some of deposits for other business, to make profits

## Di Erences
- MMF subject to many rules and laws (e.g. auditing)
- Result: transparency
- MMF invests only in short-term, high-quality assets
- Stay close to §1
- Tether not subject to same rules
- Result: little transparency
- Tether may invest in longer-term assets of unknown quality
- May lose value, may default

## What If Tether Invests In Us Treasury Bonds?
Tether will invest assets in something, rather than all $100 in cash. Two important questions:

1. How long duration? (Go up & down with rates? Liquidity risk.)
2. What credit quality? (Default and money lost? Solvency risk.)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
ASSETS & LIABILITIES & & \\ \hline
Assets & $80 & $100 & Deposits \\ \hline
Reserves & $20 & $0 & Equity \\ \hline
Total & $100 & $100 & Total \\ \hline
\end{tabular}
\end{document}
```

Examine only duration question (sensitivity to interest rates)
- Why invest in longer bonds? 3mth bills vs 10yr bonds?
- Earn more on longer-term bonds - TBills vs TBonds
- Longer duration more sensitivity if rates go up
- Invest $80 of assets in 10-yr TBonds, now worth $76.18.
Could not pay everyone back

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
 & 1-apr-22 & 13-may & MacDur & BPV \\ \hline
9/29/22 T-Bill & 1.0430 & 1.113 & 0.50yr & 0.49 \\ \hline
 & 99.4756 & 99.5703 & & \\ \hline
UST 1.875 of 15-feb-2032 & 95.6328 & 91.0625 & 9.03yr & 8.537 \\ \hline
 & 2.374\% & 2.935\% & & \\ \hline
 & 95.8659 & 91.5250 & & \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
 & 1-apr-22 & 13-may-22 & MacDur & BPV \\ \hline
9/29/22 T-Bill & 1.0430 & 1.113 & 0.50yr & 0.49 \\ \hline
 & 99.475603 & 99.570258 & & \\ \hline
UST 1.875 of 15 feb-2032 & 95.6328125 & 91.0625 & 9.03yr & 8.537 \\ \hline
 & 2.374\% & 2.935\% & & \\ \hline
 & 95.865893 & 91.525042 & & \\ \hline
\end{tabular}
\end{document}
```

## Remember Svb - Exactly "Investing In Ust" (Long Duration)
SVB invested in UST - safe (credit) but long-dated
- Interest rates in 2022, assets

Picture (from NYTimes) shows gains & losses
- Losses as % of deposits - SVB up to 9%
- "Big Loss" below - 9% of deposits
SVB in 2022 - nearly insolvent
People did not realize until March 8
- Looking at balance sheet ($173.1bn deposits) no way they could survive

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/169e5ee0a0e75d1736a20bf32416a6d10a2568ddfdac6352988789959a617072.jpg)

SVB Actual 2022 (Sbn)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
ASSETS & LIABILITIES & & \\ \hline
Loans & 73.6 & 173.1 & Deposits \\ \hline
Investments & 125.1 & 22.4 & Other \\ \hline
Other & 13.1 & 16.3 & Equity \\ \hline
Total & 211.8 & 211.8 & Total \\ \hline
\end{tabular}
\end{document}
```

SVB "Big Loss" (Sbn)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
ASSETS & LIABILITIES & & \\ \hline
Loans & 73.6 & 173.1 & Deposits \\ \hline
Investments & 109.5 & 22.4 & Other \\ \hline
Other & 13.1 & 0.7 & Equity \\ \hline
Total & 196.2 & 196.2 & Total \\ \hline
\end{tabular}
\end{document}
```

## 2 Risk Premium - Overall Portfolio ("Market" Portfolio) Contents

## Price Of Risk: Where We Are, Where We Go
We need to calculate risk premium to value uncertain cash flows

We can get risk premium for
- Bonds (e.g. for FIS promised cash flows: yield spread $\mathsf{Y}_{\mathsf{FIS}} - \mathsf{Y}_{\mathsf{UST}}$ )
- Overall equity market (historical: ${\mathrm{R}}_{\mathrm{S}\& \mathrm{P}} - {\mathrm{R}}_{\mathrm{{UST}}}: {7.3}\%$ or 6%)

We need risk premium for equity for individual companies: say FIS
- We need theory to give FIS RP as function of S&P RP

Answer: CAPM: $\mathsf{R}_{\mathsf{F}\mathsf{I}\mathsf{S}} - \mathsf{R}_{\mathsf{U}\mathsf{S}\mathsf{T}} = \cdot (\mathsf{R}_{\mathsf{S}\& \mathsf{P}} - \mathsf{R}_{\mathsf{U}\mathsf{S}\mathsf{T}})$ or $\mathsf{RP}_{\mathsf{F}\mathsf{I}\mathsf{S}} = \cdot \mathsf{RP}_{\mathsf{S}\& \mathsf{P}}$ To get there we need to understand:

Diversification: how volatilities "add"
- Digression on Sharpe ratio
- Portfolio construction: how we build portfolios
- How we choose the "market" portfolio: Capital Market Line
· Contribution &: how individual securities contribute to portfolio vol
- measures contribution to overall portfolio vol, so matters

How do we get overall market Risk Premium (RP)?

THEORY for RP: budget line & utility

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/5c1bcaf583e9d6ab1bc899e8d8afdab92dc3b50b82612f7d04a504205a437809.jpg)

Budget Set - E cient Frontier

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/a1cdbc9b259d477955fafa7cad33bab4ded35ba8ca64c5ee043b5f9ada4479af.jpg)

Utility & Preferences over Ret & Std Dev

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/4ef984f15d30926eab75e0bef564fb4838f574f623a1487745fc9c3a5faffc79.jpg)

CALCULATION: History

(Stocks, Bonds, Bills, Inflation)

Brealey, Myers, Allen Table 7.1,1900-2011

```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline
 & Nominal & Risk Prem \\ \hline
TBills & 3.9\% & 0.0\% \\ \hline
Gov’t Bonds & 5.4\% & 1.4\% \\ \hline
Stocks & 11.3\% & 7.3\% \\ \hline
\end{tabular}
\end{document}
```

We like return, dislike volatility

Budget line is our e c ient frontier (production possibility curve)

Sharpe, Separation, and Capital Market Line

## Useful - Capital Market Line - Ignore Preferences
Using our idea of the Sharpe ratio (and a riskless asset) we can ignore preferences

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/2e47dac5c4621d6892ce8205b6eefa50c558c37c8c778626b852247b7b29168b.jpg)

Return / risk trade-o set by tangency of Indifference curves and budge line
- Exactly like Micro I
- Indifference curves (love return, hate std dev)
- "Budget Line" of Efficient Frontier ("best" portfolios)

different Indifference curves different trade-o

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/82395552dee5125ecb01b125dedcaf0f1e97f95e48d7fc46ee784b1d2e18b069.jpg)

With riskless asset (and using Sharpe ratio)
- Indifference curves don't matter
- Choose "Market Portfolio" with highest Sharpe
- People who like more risk, leverage Market Portfolio

Capital Market Line - Separates Preferences vs Technology

## Reminder On Using Sharpe - Idea Of Leverage
Step back: what if we combine a risk-free $(= 0)$ asset with an e cient portfolio (return $\mathsf{r}_{\mathrm{port}}$ standard deviation port)
- Any of our e cient portfolios

Use portfolio 1. Get $\mathbf{r} = \mathbf{r_f} + \frac{\mathbf{$r_{1}$} - \mathbf{rf}}{1}$ (for any)
- Controlled by Sharpe Ratio $= \frac{$r_{1}$ - r\mathrm{f}}{1}$

Example: $\mathbf{r_f} = 2\%$, $\mathbf{r_1} = 6\%$, $\mathbf{\Phi}_1 = 10\%$.

Sharpe $= 0.4$
- Along the line $r = 2 + 0.4$
$= 5\%, r = 2 + 0.4^{*}5 = 4\%$
$= 15\%$ ，r $= 8\%$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/408dd79c26d2c4837e95a98997d1d3a7761144a0a7ad997e76cd1a567a0db5f7.jpg)

Standard Deviation

## Capital Market Line - Choose Highest Sharpe Portfolio
Want large Sharpe Ratio - Sharpe line
- Don't use just any portfolio, choose largest Sharpe.
- Call this line the CML - just touches the frontier
- Red line. Call the chosen portfolio the market portfolio. Only one used

$$
\mathbf {r} = \mathbf {r} _ {\mathrm {f}} + \frac {\mathbf {r m} - \mathbf {r f}}{\mathbf {m}} _ {\mathrm {i}} = \mathbf {r} _ {\mathrm {f}} + \mathbf {S} _ {\mathrm {m}}
$$

## Sharpe Ratio Important
Sharpe $= \frac{$r_{1}$ - r f}{1}$
Higher Sharpe higher risk-adjusted return
- Investors and hedge funds look at Sharpe all the time
S&P Sharpe = 0.37 (7.3%/20%)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/f7a7f1fc8da88b944a390ec19e0dcedf7120101775503784633a32d1b715c923.jpg)

Standard Deviation

## Capital Market Line & Separation - Really Important
Wonderful result: separate preferences (utility function) from market (the frontier)
- Choose portfolio with the highest Sharpe
- Adjust our volatility depending on our preferences

The market portfolio is absolutely key

$$
\mathrm {C M L}: \quad \mathbf {r} = \mathbf {r} _ {\mathrm {f}} + \frac {\mathbf {r m} - \mathbf {r f}}{\mathbf {m}}; = \mathbf {r} _ {\mathrm {f}} + \mathbf {S} _ {\mathrm {m}}
$$

A few things

1. Pretend "market" is stock market (S&P 500)
2. Measure RP by measuring history: 7.3%
3. Doesn't help with RP for individual assets

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/76daf2c800223ca93af179222965403f9cc417e16682347962d43f036b1bf898.jpg)

We care only about overall market portfolio
- Market volatility ${}_{\mathrm{m}}$ matters - but not vol for individual assets

But this doesn't really help us:

We've separated out preferences from market (e cients frontier)
- We now know that only one portfolio - the portfolio with highest Sharpe - will be chosen
- There will be individual assets within that portfolio, but overall there will only be one market portfolio chosen
- We have the Expected Return and Volatility for that overall market portfolio
- From ER we get Risk Premium: $\mathbf{ER} = \mathbf{rf} + \mathbf{RP}$ or $\mathbf{RP} = \mathbf{ER} - \mathbf{rf}$
- This tells us how we get that ER (RP) & Vol.
- For now we are going to pretend that the "Market" is the stock market - the S&P 500 index
- Not correct (as we saw with bonds & stocks, can do better by combining them) but that is what textbooks generally do
- We can measure this ER (RP) & Vol by looking at history of stock market
- Risk Premium $\sim 7.3\%$, Sharpe $\sim$ 0.37
- But this doesn't help answer our question of how do we get RP for individual asset

## Price Of Risk: Where We Are, Where We Go
We need to calculate risk premium to value uncertain cash flows We can get risk premium for
- Bonds (e.g. for FIS promised cash flows: yield spread $\Upsilon_{\text{FIS}} - \Upsilon_{\text{UST}}$ )
- Overall equity market (historical: ${\mathrm{R}}_{\mathrm{S}\& \mathrm{P}} - {\mathrm{R}}_{\mathrm{{UST}}}: {7.3}\%$ or 6%)

We need risk premium for equity for individual companies: say FIS
- We need theory to give FIS RP as function of S&P RP

Answer: CAPM: $\mathsf{R}_{\mathsf{FIS}} - \mathsf{R}_{\mathsf{UST}} = \cdot (\mathsf{R}_{\mathsf{S}\& \mathsf{P}} - \mathsf{R}_{\mathsf{UST}})$ or $\mathsf{RP}_{\mathsf{FIS}} = \cdot \mathsf{RP}_{\mathsf{S}\& \mathsf{P}}$. To get there we need to understand:

Diversification: how volatilities "add"
- Digression on Sharpe ratio
- Portfolio construction: how we build portfolios
- How we choose the "market" portfolio: Capital Market Line
- Contribution &: how individual securities contribute to portfolio vol
- measures contribution to overall portfolio vol, so matters

## 3 Contribution & Beta 

### 3.1 What Is Individual Asset Risk Premium?

## What Is Individual Asset Risk Premium?
CML & Market Portfolio give return (so risk premium) for whole portfolio, whole market
Market volatility ( $m$ ) determines market return (risk premium, price of risk)
But we need risk premium for an individual stock - say FIS
- Need to go from market to FIS
- What determines FIS risk premium (price of risk)?
- Cannot be FIS volatility or FIS Sharpe

Remember Bond & Stock portfolio - Bonds low vol, low Sharpe
- $20\%$ bonds gave portfolio with higher Sharpe
- But bonds contribute to portfolio, are valuable,
- Compensated by earning positive Risk Premium – earning more than risk free

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & Corr & Avg Return & Std Dev & Risk Prem & Sharpe \\ \hline
TBonds & & 5.4\% & 8.9\% & 1.4\% & 0.17 \\ \hline
Stocks & & 11.3\% & 20.0\% & 7.3\% & 0.37 \\ \hline
2/10B + 8/10S & 0.25 & 10.1\% & 16.5\% & 6.2\% & 0.38 \\ \hline
\end{tabular}
\end{document}
```

## But What Is Individual Asset Risk Premium?
We need risk premium for an individual stock - FIS
- Need to go from market to FIS
- What determines FIS risk premium (price of risk)?
- Cannot be FIS volatility

## Individual Assets Inside Frontier
No consistent relation return to vol
- Asset 1: High return, low vol
- Asset 2: Lower return, highest vol
- Asset 3: Lowest return, medium vol

## What To Look At?
Turns out to be contribution 
- Completely different graph - on horizontal
- Call this the Security Market Line - details in a few slides

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/cc97c0592903d34c14d8dc5144d87edcfc7b531c2dc97289b30ce1d03dd188f6.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/e8a50b9653bfdda942213f2b8c07eae69d53197d245c35b495b8aef16a802074.jpg)

### 3.2 Contribution And

## Individual Securities - Contribution & Beta 
Market portfolio, and market volatility ( $\mathbf{m}$ or $\mathbf{port}$ ) matters - not individual volatility
- If this is true, only care about port and not vol for individual assets, i
Compensated only for how individual security contributes to port
We need a measure for how individual securities contribute to port.

Look back at the formula for portfolio volatility - play magic with algebra

$$
\text {p o r t} = \overline {{\mathbf {w} _ {1} ^ {2} \mid \begin{array}{l l} 2 & 2 \\ 1 & 2 \end{array} + 2 \mid \begin{array}{l l} \mathbf {w} _ {1} & 1 \\ 1 & \mathbf {w} _ {2} \end{array} \mid \begin{array}{l l} 2 & \mathbf {w} _ {2} ^ {2} \end{array} \mid \begin{array}{l l} 2 \\ 2 \end{array} }}
$$

$$
\text {p o r t} = \frac {\frac {2}{\text {p o r t}}}{\frac {2}{\text {p o r t}}} \mid \text {p o r t} = \frac {\mathsf {W} _ {1} ^ {2} \frac {2}{1} + 2 \mathsf {W} _ {1} \mathsf {W} _ {2} \text {1} \text {2} + \mathsf {W} _ {2} ^ {2} \frac {2}{2}}{\frac {2}{\text {p o r t}}} \mid \text {p o r t}
$$

Want to split into two parts: contribution from 1 ( $w_1$ only) and from 2 ( $w_2$ only)

How? Cannot! That middle part 2 $\mathsf{w}_1\mathsf{w}_{212}$ has both $\mathsf{w}_1$ and $\mathsf{w}_2$

## Contribution & Beta  Decomposes Overall Volatility
Factor out $\mathsf{w}_1$ and split that middle part half-half

$$
\mathbf {\Pi} _ {\text {p o r t}} = \quad \mathbf {W} _ {1} \frac {\mathbf {W} _ {1} \begin{array}{l} 2 \\ 1 \end{array} + \mathbf {W} _ {2} \begin{array}{l l l} 1 & 2 \\ \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline 2 & 2 \\ 2 & 2 \\ 2 & 2 \\ 2 & 2 \\ 2 & 2 \\ 2 & 2 \\ 2 & 2 \\ 2 & 2 \\ 2 & 2 \\ 2 & 2 \\ 2 & 2 \\ 2 & 2 \\ 2 & 2 \\ 2 & 2 \\ 2 & 2 \\ 2 & 2 \\ 2 & 2 \\ 2 & \end{array} }{\mathbf {\Pi} _ {\text {p o r t}} ^ {2}} + \frac {\mathbf {W} _ {1} \begin{array}{l l l} 1 & 2 & + \mathbf {W} _ {2} \begin{array}{l} 2 \\ 2 \\ 2 \\ \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline 2 \\ 2 \\ 2 \\ 2 \\ 2 \\ 2 \\ 2 \\ 2 \\ 2 \\ 2 \\ 2 \\ 2 \\ 2 \\ 2 \\ 2 \\ 2 \\ 2 \\ 2 \\ 2 \\ 2 \\ 2 \\ 2 \\ 2 \\ 2 \\ 2 \\ 2 \\ 2 \\ 2 \\ 2 \\ 2 \\ 2 \\ 2 \\ 2 \\ 2 \\
$$

Call those parts Beta :

$$
_ 1 = \frac {\mathsf {W} _ {1} \begin{array}{c} 2 \\ 1 \end{array} + \mathsf {W} _ {2} \begin{array}{c c c} 1 & 2 \\ \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline 2 & \mathsf {W} _ {1} \begin{array}{c c c} 1 & 2 \\ 1 & 2 \end{array} + \mathsf {W} _ {2} \begin{array}{c c c} 2 \\ 1 & 2 \\ \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline 2 & \mathsf {\Sigma} \\ 2 & \mathsf {\Sigma} \\ 2 & \mathsf {\Sigma} \\ 2 & \mathsf {\Sigma} \\ 2 & \mathsf {\Sigma} \\ 2 & \mathsf {\Sigma} \\ 2 & \mathsf {\Sigma} \\ 2 & \mathsf {\Sigma} \\ 2 & \mathsf {\Sigma} \\ 2 & \mathsf {\Sigma} \\ 2 & \mathsf {\Sigma}
$$

$$
\mathbf {\Pi} _ {\text {p o r t}} = \left[ \begin{array}{l l l} \mathbf {W} _ {1} & 1 & 2 \end{array} \mathbf {W} _ {2} \right] \cdot \mathbf {\Pi} _ {\text {p o r t}}
$$

We now have a nice decomposition depending on $w_1$ and $w_2$:
- $w_{1}$ the overall contribution
- contribution per unit of asset 1
- $\mathsf{w}_1$ the "quantity" of asset 1

## Beta  As Contribution To Market Risk
Piece in brackets says how assets contribute to portfolio vol (port)

$$
\mathbf {\Pi} _ {\text {p o r t}} = \left[ \begin{array}{l l l} \mathbf {W} _ {1} & \mathbf {1} + \mathbf {W} _ {2} & 2 \end{array} \right] \cdot \quad \mathbf {\Pi} _ {\text {p o r t}}
$$

For market portfolio, how assets contribute to market risk
- $w_{i}$ how much we hold
- port how "risky" is asset i
- how "risky" relative to market vol port:
- = 1.0 for same risk, <1.0 for "low risk", >1.0 for "high risk"

Carries over to multiple assets

$$
\mathbf {\Pi} _ {\text {p o r t}} = \quad \mathbf {\Pi} _ {\text {p o r t}} \cdot \quad \begin{array}{c c} & \mathsf {W} _ {\mathbf {i}} \\ & \mathbf {i} \end{array}
$$

Revisit Bond & Stock Portfolio – and Contribution

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|c|}
\hline
 & & Avg & Std & & Bond & Stock & & \\ \hline
 & Corr & Return & Dev & Sharpe & & wi p & & wi p \\ \hline
TBills & & 3.9\% & - & 0.00 & & & & \\ \hline
TBonds & & 5.4\% & 8.9\% & 0.17 & & & & \\ \hline
Stocks & & 11.3\% & 20.0\% & 0.37 & & & & \\ \hline
1/10B + 9/10S & 0.20 & 10.7\% & 18.2\% & 0.37 & 0.12 & 0.2\% & 1.10 & 18.0\% \\ \hline
2/10B + 8/10S & 0.20 & 10.1\% & 16.4\% & 0.38 & 0.16 & 0.5\% & 1.21 & 15.9\% \\ \hline
8/10B + 2/10S & 0.20 & 6.6\% & 8.8\% & 0.30 & 0.90 & 6.4\% & 1.39 & 2.5\% \\ \hline
9/10B + 1/10S & 0.20 & 6.0\% & 8.6\% & 0.24 & 1.00 & 7.8\% & 0.97 & 0.8\% \\ \hline
\end{tabular}
\end{document}
```

Some results for $\mathbf{i}_{\mathfrak{p}}$ due to rounding

Portfolio Avg Return: weighted mean of Bond & Stock returns
- $\mu_{\mathrm{p}} = \mathsf{w}_{1} \cdot \mathsf{\mu}_{1} + \mathsf{w}_{2} \cdot \mathsf{\mu}_{2}$, contribution is weight * avg return ( $\mathsf{w}_{\mathrm{i}} \cdot \mathsf{\mu}_{\mathrm{i}}$ )

Portfolio Volatility (Standard Deviation, $\mathbf{\mu}_{\mathfrak{p}}$ ): not weighted mean

$$
\cdot \quad p = \overline {{w _ {1} ^ {2} \cdot \quad_ {1} ^ {2} + 2 \cdot \quad \cdot w _ {1} \cdot \quad_ {1} \cdot w _ {2} \cdot \quad_ {2} + w _ {2} ^ {2} \cdot \quad_ {2} ^ {2}}}
$$

Bond & Stock don't contribute their weight $\mathsf{w_i}\cdot \mathsf{\Omega}_i$, but $\mathsf{w_i}\cdot \mathsf{\Omega}_i\cdot \mathsf{\Omega}_{\mathsf{p}}$

$$
- \quad_ {\text {p o r t}} = \mathsf {W} _ {1} \cdot \quad_ {1} \cdot \quad_ {\text {p o r t}} + \quad_ {2} \cdot \mathsf {W} _ {2} \cdot \quad_ {\text {p o r t}}
$$

Individual volatility $\mathrm{i}$ does not matter - only $\mathrm{i} \cdot \mathrm{p}$

Portfolio Avg Return: Bond & Stock Avg returns $\mu_{i}$ matter
- $\mu_{\mathrm{p}} = \mathsf{w}_{1} \cdot \mathsf{\mu}_{1} + \mathsf{w}_{2} \cdot \mathsf{\mu}_{2}$, contribution is weight $\cdot$ avg return $(\mathsf{w}_{\mathrm{i}} \cdot \mathsf{\mu}_{\mathrm{i}})$

Portfolio Volatility ( p): Bond & Stock std dev i do not matter

$$
-_ {\text {p o r t}} = W _ {1} \cdot \quad_ {1} + W _ {2} \cdot \quad_ {2}
$$

Portfolio Volatility (p): Bond & Stock $\mathbf{i} \cdot \mathbf{p}$ matter

$$
- \quad_ {\text {p o r t}} = \mathsf {W} _ {1} \cdot \quad_ {1} \cdot \quad_ {\text {p o r t}} + \quad_ {2} \cdot \mathsf {W} _ {2} \cdot \quad_ {\text {p o r t}}
$$

Individual volatility $\mathbf{i}$ does not matter - only $\mathbf{i} \cdot \mathbf{p}$

Contribution $\mathrm{i} \cdot \mathrm{p}$ depends on Bond & Stock volatility

$$
\cdot \quad 1 \cdot \quad p = \frac {\left(w _ {1} \begin{array}{l l} 2 & w _ {2} \\ 1 & 2 \end{array}\right)}{\text {p o r t}}
$$

But also weight, vols, correlations of all other assets
- Consider how this asset i fits into portfolio

Because $\mathbf{i} \& \mathbf{i} \cdot \mathbf{p}$ matters, price of risk depends on $\mathbf{i}$ and not $\mathbf{i}$

Beta  as Covariance and Regression Coe cient is also coe cient in regression:

$$
F _ {i} = a + i F _ {\text {p o r t}} + i
$$

Decomposes into "Systematic" or "Non-Diversifiable" (i $\cdot$ Fport or i port) and "Idiosyncratic" or "Diversifiable" (i or )

Remember regression coe cient definition (from statistics):

$$ i = \frac {\operatorname {Cov} \left(\mathrm {r} _ {i}, \mathrm {r} _ {\text {p o r t}}\right)}{\frac {2}{\text {p o r t}}}
$$ and for

$$
\mathbf {r} _ {\text {p o r t}} = \mathbf {w} _ {1} \mid \mathbf {r} _ {1} + \mathbf {w} _ {2} \mid \mathbf {r} _ {2}
$$

$$
_ 1 = \frac {\operatorname {Cov} \left(\mathrm {r} _ {1}, \mathrm {w} _ {1} \mid \mathrm {r} _ {1} + \mathrm {w} _ {2} \mid \mathrm {r} _ {2}\right)}{\frac {2}{\text {p o r t}}} = \frac {\mathrm {w} _ {1} \frac {2}{1} + \mathrm {w} _ {2} \quad 1 2}{\frac {2}{\text {p o r t}}}
$$

Two (equivalent) interpretations & meanings of:

1. Contribution to risk: $\mathbf{\Pi}_{\mathrm{port}} = [\mathsf{W}_1\mathbf{\Pi}_1 + \mathsf{W}_2\mathbf{\Pi}_2]\cdot \mathbf{\Pi}_{\mathrm{port}}$
2. Regression $(\mathbf{F}_{i} = a + i \cdot \mathbf{F}_{\text{port}} + i)$, decomposition into "Systematic" ( $i \cdot \mathbf{F}_{\text{port}}$ ) and "Idiosyncratic" 

## As Decomposition Of Change In Vol
Decomposition $\mathbf{\Pi}_{\mathrm{port}} = [\mathsf{w}_1\quad 1 + \mathsf{w}_2\quad 2]\cdot \quad \mathbf{\Pi}_{\mathrm{port}}$ seems completely ad-hoc (just algebra) but actually deep

Truly gives the Contribution

Take partial: $\frac{1}{\text{port}} - \frac{\text{port}}{\mathsf{W}_1} = 1$ (do the algebra - it works!)
- Now consider infinitesimal (percent) change in vol (remember that dln is essentially %ch):

$$
\mathrm {d} \ln (\text {p o r t}) = \frac {\mathrm {d} \text {p o r t}}{\text {p o r t}} = \frac {1}{\text {p o r t}} \quad \frac {\text {p o r t}}{\mathsf {W} _ {1}} \mathsf {d} \mathsf {w} _ {1} + \frac {\text {p o r t}}{\mathsf {W} _ {2}} \mathsf {d} \mathsf {w} _ {2}
$$
- But this means the s give the decomposition of the change in vol for changes in the different assets:

$$
\mathbf {d} \ln (\mathbf {\Pi} _ {\text {p o r t}}) = \mathbf {\Pi} _ {1} \mathbf {d} \mathbf {w} _ {1} + \mathbf {\Pi} _ {2} \mathbf {d} \mathbf {w} _ {2}
$$

### 3.3 Beta For The Market Vs Beta For A Portfolio

## Beta For The Market Vs Beta For Other Portfolios
Everyone talks about "the beta" of an asset
- They mean "beta vs the market"

Why can we talk about "the market"?
- Because (in our simple theory) everyone buys the same market portfolio

With risk-free asset, everyone buys same portfolio
- Low-risk person puts $55 into "market", $45 into bank
 • High-risk person puts $100 into "market", borrows another $100 to buy more

But everyone buys the same market portfolio
- Capital Market Line separates preferences from Efficient Frontier

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/ea2935625446131051c4de1c0765e283b9fb45979c56a1921353aca29ace844a.jpg)

We care only about overall market portfolio
- So it makes perfect sense to talk about "the beta" of an asset - beta vs the market portfolio

## Beta With Other Portfolios
But in reality there are other portfolios - many possible portfolios
- For every portfolio, we can talk about the beta of assets in that specific portfolio

10yr UST:
- $w = 0.333$, $= 0.011\%$
- contribution $(w_{i}) = 13.9\%$ $= 0.42$

SPX (S&P 500 Index):
- $w = 0.166$, $= 0.026\%$
- contribution (w i) = 21.8%, = 1.31

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/7092f66a62eacb622e1b4f24e5eebe3ac05ae35189bf4112e104a1d7c56ae98c.jpg)

Portfolio risk reporting from Ch 10 of "Quantitative Risk Management"

+$20mn 10-yr UST

• +£15mn 10-yr UKG (§21mn)
- EUR7m CAC Equity Index futures ($9.1mn)
- $10mn SPX Equity Index futures

## 4 Capital Asset Pricing Model - E Cient And Market Portfolios

### 4.1 Efficient Portfolios And Return Vs

## Beta Measures Individual Security Price Of Risk
- For any portfolio, Beta decomposes the overall volatility: $\mathbf{\Pi}_{\mathrm{port}} = [\mathbf{w}_1\quad 1 + \quad_2\mathbf{w}_2]\cdot \mathbf{\Pi}_{\mathrm{port}}$

Since we care about individual assets' contribution to portfolio volatility, and since measures this, seems that is the natural "risk" measure - expected returns should depend on
- Assets with higher should have higher return
- More risk (higher) means higher return

We expect $\mathsf{ER}_{\mathsf{i}} = \mathsf{f}(\mathsf{\mu}_{\mathsf{i}})$ - meaning that expected returns depends on $\mathbf{\mu}_{\mathbf{i}}$ and not $\mathbf{\mu}_{\mathbf{i}}$
- Wouldn't it be nice if the function were linear? $\mathsf{ER}_{\mathbf{i}} = \mathsf{a} + \mathbf{\mu}_{\mathbf{i}}$ const

Amazing Result: For Any E cient Portfolio, $\mathsf{ER}_{\mathrm{i}} = +_{\mathrm{i}}\cdot (\mathsf{ER}_{\mathrm{p}} - \mathsf{\Lambda})$ Individual assets don't line up with volatility
- We expect they should line up nicely with: $\mathsf{ER}_{\mathsf{i}} = \mathsf{f}(\mathsf{\mu}_{\mathsf{i}})$

## But Here'S The Really Amazing Thing
- For any E cient Portfolio, it is linear
- The assets and weights in any portfolio on the e cient frontier must be chosen so that $\mathbf{i}$ all adjust until $\mathsf{ER}_{\mathrm{i}} = +_{\mathrm{i}}(\mathsf{ER}_{\mathrm{port}} - )$
- Remember, $\mathbf{1} = \frac{\left(\mathbf{w}_{1}\right)^{2} + \left(\mathbf{w}_{2}\right)^{2}}{2}$, so as we adjust weights $\mathbf{w}_{i}$ the $i$ adjust until they all line up

Assets 1,2,3 don't line up in Return vs Std Deviation
- But there is a so that all assets line up (with their own $\mathbf{i}$ )

Assets do line up in Return vs

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/b3089c118d442f010f3bb9f900b3e78a05f0ae1d14e6cd131161f07190268fbd.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/b1f697709491aa0b276b77808946e5be1dc1261898f5f6eb71c8c7ca3d01c196.jpg)

## Example: Returns Line Up With For All Efficient Portfolios Let'S Set How Assets Line Up With Our Simple Bond & Stock Portfolio
- Important: for our 2-asset example $(\mathbf{B} + \mathbf{S})$ all combinations are on e c i e n t frontier
- For many assets, must solve for e cient frontier (Minimize Variance $= \begin{array}{c}\mathrm{\Pi}_{\mathrm{i},\mathrm{j}}\mathrm{w}_{\mathrm{i}}\mathrm{w}_{\mathrm{j}}\mathrm{\Pi}_{\mathrm{ij}}\end{array}$
All assets should line up: $\mathsf{ER}_{\mathrm{i}} - =_{\mathrm{i}}(\mathsf{ER}_{\mathrm{p}} - )$

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|c|c|}
\hline
 & Corr & Avg Return & Std Dev & Risk Prem & Sharpe & Bond & Stock & & \\ \hline
TBills & & 3.9\% & 0.0\% & 0.0\% & 0.00 & & & & \\ \hline
TBonds & & 5.4\% & 8.9\% & 1.4\% & 0.17 & & & & \\ \hline
Stocks & & 11.3\% & 20.0\% & 7.3\% & 0.37 & & & & \\ \hline
0.80 B &amp; 0.20 S & 0.2 & 6.58\% & 8.84\% & 2.68\% & 0.303 & 0.903 & 1.389 & -5.53\% & \\ \hline
0.20 B &amp; 0.80 S & 0.2 & 10.12\% & 16.45\% & 6.22\% & 0.378 & 0.164 & 1.209 & 4.48\% & \\ \hline
0.388 B &amp; 0.612 S & 0.2 & 9.01\% & 13.37\% & 5.11\% & 0.382 & 0.294 & 1.448 & 3.90\% & \\ \hline
\end{tabular}
\end{document}
```

Focus on $80\%$ bonds, and let's solve for - answer is $-5.55$:

$$
\begin{array}{l} \mathbf {B}: 5.4 - = 0.903 (6.58 -) \quad 5.4 - (- 5.55) = 0.903 (6.58 - (- 5.55)) \\ S: 1 1.3 - = 1.389 (6.58 -) \quad 1 1.3 - (- 5.55) = 1.389 (6.58 - (- 5.55)) \\ \end{array}
$$

Does not match what we see in the market

Now $20\%$ bonds, still lines up, but with $= 4.48$:

$$
\begin{array}{l} \mathbf {B}: 5.4 - = 0.164 (1 0.12 -) \quad 5.4 - 4.48 = 0.164 (1 0.12 - 4.48) \\ S: 1 1.3 - = 1.209 (1 0.12 -) \quad 1 1.3 - 4.48 = 1.209 (1 0.12 - 4.48) \\ \end{array}
$$

Does not match what we see in the market

What about $38.8\%$ bonds? Market Equilibrium - answer is $= 3.90$:

$$
\begin{array}{l} \mathbf {B}: 5.4 - = 0.294 (6.58 -) \quad 5.4 - 3.90 = 0.294 (6.58 - 3.90) \\ S: 1 1.3 - = 1.448 (6.58 -) \quad 1 1.3 - 3.90 = 1.448 (6.58 - 3.90) \\ \end{array}
$$

This matches with what we actually see in the market

## 80% Bonds: Solve For, Assets Line Up, But Does Not Match Market
Security Market Line: $\mathsf{ER}_{\mathrm{i}} - =_{\mathrm{i}}(\mathsf{ER}_{\mathrm{port}} - ),$ $= -5.55\%$ Does not match Market! Actual Portfolio
- Useful for total market or total wealth
- Care about return vs vol (SD) for wealth
- Individual securities lie inside frontier
- Tangency requires "rf"=-5.55, Sharpe=1.37

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/8f431391622290d89acb9f09080094aff84f52ccda751a3e7122eccd983d2c08.jpg)

## Actual Return / (Security Market Line)
- Yes useful for individual securities
- $= -5.55\%$ so $\mathsf{ER}_{\mathrm{i}} - =_{\mathrm{i}}(\mathsf{ER}_{\mathrm{port}} - )$
Securities line up along straight line

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/43e271c35a7d5a86ef82e261104bce88bcf97618c14ea0bd0d7fd1f3f35bd77e.jpg)

What if there is $= 0$ asset? Does this work?
- 3.90 - = 0 (ERport - )
What if we force $= 3.90\%$ - does this work? NO

NO: wrong Bond & Stock returns: $80\%$ not market equilibrium (not highest Sharpe) Portfolio - line through $\mathrm{rf} = 3.90$ not tangent

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/fdb85fe7279cdac692c3fc601d115f592991476cd0ced29ca5b62129a24c6d20.jpg)

Security Market Line - does not give actual returns

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/5456a1317ddc9e7938d1d24bb5780c5e62da105d6e496dcf8f828dc5eb17aba8.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/0a43332d7164a52c0677f43f43134297701e2b43130b3f7904dc2462cfdb93f4.jpg)

20% Bonds: Solve for, Assets Line Up, But Does Not Match Market Security Market Line: $E R_{i} - = _{i} \left( E R_{p o r t} - \right)$, = 4.48% Does not match Market! Actual Portfolio does not line up with actual risk-free

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/664561c8dd0c93df6ffb1bf1fbc5d2763303a9b26bfb1b39b7808a5f1df0b711.jpg)

Actual Return / (Security Market Line)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/5aed4b30d5de7061eccffcc376b6cd46a03f1f9a2710736242ceda109b55959c.jpg)

What if there is $= 0$ asset? Does this work?
- 3.90 - = 0 (ERport - )
- What if we force $= 3.90\%$ - does this work? NO

NO: wrong Bond & Stock returns: $80\%$ not market equilibrium (not highest Sharpe) Portfolio - line through $\mathrm{rf} = 3.90$ not tangent

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/67323cfad3e5f5219312de016edb8f4285a04877d922de59a9c74b2a053636c0.jpg)

Security Market Line - does not give actual returns

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/1df454ba341a09144bb1f66bed71e852ba407ddac02f73d68a75e5e3ff7e82a9.jpg)

### 38.8% Bonds: Matches The Market - Market Equilibrium
Security Market Line: $\mathsf{ER}_{\mathrm{i}} - = {}_{\mathrm{i}}(\mathsf{ER}_{\mathrm{port}} - ), = 3.90\%$ Does match Market!
- Our matches the market, and all assets line up on SML with $= \mathbf{r}_{\mathrm{f}} = 3.90$

## Market Or Equilibrium Portfolio
- Portfolio with highest Sharpe
Bond & Stock weights adjusted until
- Individual securities lie inside frontier
- Tangency with $\mathrm{rf} = 3.90$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/031082f19237c39f5ff60d87d7970c034ccf0c669b6493e782a1e09e4251734c.jpg)

## Security Market Line
- Yes useful for individual securities

$$
\cdot \quad = r f = 3.90 s o E R _ {i} - = i (E R _ {\text {p o r t}} -)
$$

Securities line up along straight line

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/56b1bbf4089165c019defd0f8e6e993cf7906c607e3dc26381358e1a1e90924f.jpg)

### 4.2 Capm - Capital Asset Pricing Model Contents
Three Facts about - Any Portfolios, E cient Portfolio, Market Portfolio

1. For any portfolio, decomposes portfolio volatility
2. For any e cients portfolio, asset returns line up along a line for some
- If force $= \mathbf{rf}$ then line up with incorrect asset returns

3. For market portfolio, asset returns line up along Security Market Line with risk-free rate

$$
\begin{array}{l} 1 = \frac {\mathsf {W} _ {1} \begin{array}{c} 2 \\ 1 \end{array} + \mathsf {W} _ {2} \begin{array}{c c c} 1 & 2 \\ \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline \hline 2 & 2 \\ 2 & 2 \\ 2 & 2 \\ 2 & 2 \\ 2 & 2 \\ 2 & 2 \\ 2 & 2 \\ 2 & 2 \\ 2 & 2 \\ 2 & 2 \\ 2 & 2 \\ 2 & 2 \\ 2 & 2 \\ 2 & 2 \\ 2 & 2 \\ 2 & 2 \\ 2 & 2 \\ 2 & \end{array} }{\mathsf {p o r t}} \\ 2 = \frac {\mathsf {W} _ {1} \quad 1 \quad 2 + \mathsf {W} _ {2} \quad 2}{\frac {2}{\mathsf {p o r t}}} \\ \text {p o r t} = \left[ \begin{array}{l l l} W _ {1} & 1 + & 2 W _ {2} \end{array} \right] \quad \text {p o r t} \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/27930bb028a497afc686b8552558db6a90aeaf915a8dc1ee0a8b650c444eabea.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/f14621ac316d6ff4fbd173339ba8d15e51c959e22ea20f563f26bd7619776eda.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/184e5e843bd264057713f89a3c3af9540c3c0fd1cf1658a07d3701db5c251523.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/04b9af2cffc5ef37f891c8f690567ae8b655b49174ef1d41bb81dd4804878781.jpg)

Capital Asset Pricing Model: $\mathsf{ER}_{\mathrm{i}} - \mathsf{r}_{\mathrm{f}} = \mathsf{\Omega}_{\mathrm{i}}(\mathsf{ER}_{\mathrm{mkt}} - \mathsf{ER}_{\mathrm{f}})$

Result: For market portfolio (what we actually see in the market) we now know:

$$
\operatorname {C A P M}: \operatorname {E R} _ {\mathrm {i}} - \operatorname {r} _ {\mathrm {f}} = \quad_ {\mathrm {i}} (\operatorname {E R} _ {\mathrm {m k t}} - \operatorname {E r} _ {\mathrm {f}})
$$

$$
R P _ {i} = i R P _ {m k t}
$$

What we have been looking for: ER (risk premium) for any asset

CAPM: $\mathsf{ER}_{\mathsf{i}} - \mathsf{r}_{\mathsf{f}} = \mathsf{\Omega}_{\mathsf{i}}(\mathsf{ER}_{\mathsf{mkt}} - \mathsf{Er}_{\mathsf{f}})$
- Assets line up along the straight Security Market Line
CAPM gives us Risk Premium $\mathsf{RP}_{\mathsf{i}}$
- To get risk-adjusted discount rate:

$$
Y _ {i} ^ {\text {t o d a y}} = r f ^ {\text {t o d a y}} + R P _ {i} = r f ^ {\text {t o d a y}} + \quad i \mid R P _ {m k t}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/ab3db57aa3670faf258f9337045eebc6fcd794e1b95d6a0396821d2a0ef944e6.jpg)

Using CAPM to get Risk-Adjusted Discount Rate

IMPORTANT: Often write CAPM as $\mathsf{ER}_{\mathsf{i}} = \mathsf{r}_{\mathsf{f}} + \mathsf{\Omega}_{\mathsf{i}}(\mathsf{ER}_{\mathsf{mkt}} - \mathsf{r}_{\mathsf{f}})$

Confusing - Textbooks sometimes not very clear

Two-step process

1. Use CAPM to get long-term (average) risk-premium:

$$
\mathsf {R P} _ {\mathrm {i}} = \left(\mathsf {E R} _ {\mathrm {i}} - \mathsf {E r} _ {\mathrm {f}}\right) ^ {\text {l o n g - t e r m}} = \quad_ {\mathrm {i}} \left(\mathsf {E R} _ {\mathrm {m k t}} - \mathsf {E r} _ {\mathrm {f}}\right) ^ {\text {l o n g - t e r m}}
$$

$$
\mathbf {R P} _ {\mathrm {i}} = \quad_ {\mathrm {i}} \cdot \mathbf {R P} _ {\mathrm {m k t}}
$$

2. Use risk premium to calculate today's risk-adjusted discount rate:

$$
Y _ {i} ^ {\text {t o d a y}} = r f ^ {\text {t o d a y}} + R P _ {i} = r f ^ {\text {t o d a y}} + \quad i \cdot R P _ {m k t}
$$

If write as "one-step" then it really is:

$$
Y _ {i} ^ {\text {t o d a y}} = r f ^ {\text {t o d a y}} + \quad i \cdot \left(E R _ {m k t} - E r _ {f}\right) ^ {\text {l o n g - t e r m}}
$$

### 4.3 Some Facts About Beta
Capital Market Line vs Security Market Line
Names sound the same, but address very different issues
Return vs Vol 
- Useful for total market or total wealth
- Care about return vs vol (SD) for wealth
CML - separation of market (frontier) from preferences
- Not useful for individual securities

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/bbc537194ada32b61aa4a664afaa98ec512ccdcab8cfc88166bf9e49efbb1584.jpg)

## Return Vs Beta (I)
- Yes useful for individual securities
- Care about return vs beta
- SML - securities line up along straight line

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/b4d9fed80e4a9eaf50f835e1f12131eff36fe020f7737240956cc64cce1d7c71.jpg)

## Summary: Measures Price Of Risk (Riskprem)
1. Sharpe: choose highest Sharpe for total overall (wealth) portfolio
- Result of using leverage
- Separates preferences from market - Capital Market Line (CML)
- pushes everyone to same ("market") portfolio - CML & separation

2. E cient Portfolio (mean-variance optimizing)

Diversification - volatilities don't add
- Individual assets contribute based on $\mathrm{i}$ not $\mathrm{i}$
All assets have $\mathsf{ER}_{\mathrm{i}} - =_{\mathrm{i}}(\mathsf{ER}_{\mathrm{port}} -)$

3. Risk-free asset $(= 0)$ CAPM
- Sets $= r_{f}$ $\mathsf{ER}_{\mathsf{i}} - \mathsf{r}_{\mathsf{f}} = \mathsf{\Omega}_{\mathsf{i}}(\mathsf{ER}_{\mathsf{mkt}} - \mathsf{r}_{\mathsf{f}})$
- Capital Asset Pricing Model (CAPM) & Securities Market Line (SML)

Result: CAPM

$$
\text {P r i c e} \quad \text {R i k} \quad (\text {R i k P r e m i u m}) \text {s e t b y}: \mathsf {E R} _ {\mathrm {i}} - \mathsf {r} _ {\mathrm {f}} = \quad_ {\mathrm {i}} (\mathsf {E R} _ {\text {p o r t}} - \mathsf {r} _ {\mathrm {f}})
$$

## Some Facts About Beta 
- Decomposes market vol: $\mathbf{i}_{\text{mkt}}$ is mkt vol due to i: $\mathbf{mkt} = [\mathbf{w}_1 \mathbf{\Lambda}_1 + \mathbf{w}_2 \mathbf{\Lambda}_2] \cdot \mathbf{mkt}$
- Beta is regression coefficient of asset i against market: $r_i = a_i + \mathbf{\mu}_i r_{mkt} + \mathbf{\mu}_i$

$$
_ 1 = \frac {\operatorname {Cov} \left(\mathbf {r} _ {1}, \mathbf {r} _ {\text {p o r t}}\right)}{\frac {2}{\text {p o r t}}} = \frac {\operatorname {Cov} \left(\mathbf {r} _ {1}, \mathbf {w} _ {1} \cdot \mathbf {r} _ {1} + \mathbf {w} _ {2} \cdot \mathbf {r} _ {2}\right)}{\frac {2}{\text {p o r t}}} = \frac {\mathbf {w} _ {1} \quad \begin{array}{l l l l} 2 & & & \\ & 1 & & \end{array} + \mathbf {w} _ {2} \quad 1 & 2}{\frac {2}{\text {p o r t}}}
$$
- Decomposes asset return into "Systematic" (i·port) and "Idiosyncratic" 
- Beta averages to 1 for market (average market risk 1.0)
- Betas range around 1: Citi=1.45, Apple=1.06, FIS=0.79

## More Facts About Beta - Correlation With Portfolio
$$
1 = \frac {\operatorname {c o v} (\text {a s s e t} 1, \mathrm {m k t})}{\frac {2}{\mathrm {m k t}}} = 1 \mathrm {m} \frac {1}{\mathrm {m}}
$$

Beta depends on correlation of asset with overall portfolio

High & contributes to overall risk should get paid for taking risk
- Standard textbooks talk about high high systematic risk
- You get paid for taking on systematic risk but not idiosyncratic risk

· Low & contributes little to overall risk should get paid little for taking this risk
- If $< 0$ it actually reduces risk, you should pay (not get paid) - negative RiskPrem

$$
_ {1} = \frac {\operatorname {c o v} (\text {a s s e t 1}, \text {m k t})}{\frac {2}{\text {m k t}}}
$$

$$
1 m = \frac {\operatorname {c o v} (\text {a s s e t} 1, \mathrm {m k t})}{1 \cdot \mathrm {m k t}} \quad 1 = 1 m \frac {1}{\mathrm {m}}
$$

## Contribution & Beta In Risk Management
Contribution & Beta used in Quantitative Risk Management

Goes by various names in various books
- Measure Portfolio Volatility or Value at Risk (VaR)
- Contribution (or): individual asset contribution to overall risk

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
My book & Marginal contribution \\ \hline
Litterman 1996 & Contribution to risk \\ \hline
Crouhy et al & Delta VaR \\ \hline
Marrison & VaR contribution \\ \hline
Risk Metrics & Incremental VaR \\ \hline
\end{tabular}
\end{document}
```

I found this the most useful measure in managing a hedge fund portfolio

## Beta  As Regression
Beta as regression coefficient of asset i against market: $r_i = a_i + \alpha_i r_{mkt} + \beta_i$
- How much firm $i$ moves when market moves on average, not whether they move together often (that is correlation, )
- Citi moves $1.45\%$ when S&$P_{500}$ moves $1\%$ on average
- Decomposes firm vol: systematic ( mkt) versus idiosyncratic : ${2}_{i}^{2} = {}^{2}{m}^{2} + {}^{2}$
- CPM: Compensated only for systematic, not idiosyncratic

### 4.4 Digression On S&P 500 Index ("Market" Portfolio)

## Digression On Market-Weighted Index
For everything (CAPM, Security Market Line, Capital Market Line) "market" portfolio is critical
- Hold only "market" plus risk-free
- Need to measure returns (returns & vol) for "Market"
- Would like to include everything: stocks, bonds, real estate.
- As a start, try to include all stocks

S&P 500 - value-weighted index of 500 large stocks
- 500 large-cap (big) public companies from NYSE, NASDAQ
- Total value (Aug 2015) $18.5tn
Calculate return by:

$$ r _ {S \& P} = w _ {i} r _ {i} w _ {i} = \frac {\text {c o m p a n y v a l u e}}{\text {t o t a l v a l u e}}
$$
- Return you would earn on the whole $18.5tn of the stocks

## In-Class Exercise: Market-Weighted Index
Portfolio of 3 assets

Citi, Apple, FIS
- Total number of shares and stock price
- Market capitalization, value of all the equity: MktCap = NumberShares $\cdot$ Price
- Weight = Firm Cap / Total Cap - fill in MktValue and Weights

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
 & No. Shares & Price & MktValue & Weight \\ \hline
Citi & 970.11mn & $124.72 & $119,062mn & 17.7\% \\ \hline
Apple & 5,540mn & $96.35 & $533,779mn & 79.4\% \\ \hline
FIS & 326.39mn & $46.65 & $19,470mn & 2.9\% \\ \hline
Total & & & $672,311mn & 100\% \\ \hline
\end{tabular}
\end{document}
```
- You buy all of each: you hold $17.7\%$ Citi, $79.2\%$ Apple, FIS $2.9\%$
- You buy $1\%$ of each, hold same fraction of each, and earn the same: $\mathrm{w_i r_i}$
- Always: $r_{S \& P} = \begin{array}{c} w_i r_i \\ i \end{array}$, $w_i = \frac{company value}{total value}$ Market-weighted index

## Market-Weighted Index As "Market"
S&P Index (weighted average of returns) measure what you would earn owning all of the 500 companies

$$ r _ {S \& P} = w _ {i} r _ {i} w _ {i} = \frac {\text {c o m p a n y v a l u e}}{\text {t o t a l v a l u e o f S \& P}}
$$

In other words, measures return on the "market"
- Same return as owning $1\%$ or $0.01\%$ of each of the 500 companies

Market indexes, all market-weighted:

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
S&amp;P 500 & 500 large US companies listed on exchanges \\ \hline
Russel 2000 & Smaller US companies \\ \hline
Wilshire 5000 & US actively-traded stocks (March 2022,3,660 companies) \\ \hline
FTSE 100 & 100 companies traded in UK \\ \hline
MSCI World & Large and mid-size companies across 23 developed countries \\ \hline
\end{tabular}
\end{document}
```

Note: Dow-Jones Industrial (most widely-quoted), is not market-weighted - Equally-weighted

### 4.5 Using Beta & Capm

## Where Are We?
1. Investors care about variability & return
2. Overall portfolio: volatility  sets price of overall risk
- $\mathsf{ER}_{\mathfrak{m}}(\mathbf{r}_{\mathfrak{m}})$ vs $\mathfrak{m}$ set by preferences & e cients frontier

3. Individual assets: beta  (and $\mathsf{r}_{\mathfrak{m}}$ ) set price of individual asset risk
- $\mathsf{ER}_{\mathsf{i}}(\mathsf{r}_{\mathsf{i}})$ vs $\mathbf{r}_{\mathfrak{m}}$ set by $\textbf{\textit{i}}$ & CAPM:

$$
\mathbf {r} _ {\mathrm {i}} = \mathbf {r} _ {\mathrm {f}} + \mathbf {\mu} _ {\mathrm {i}} \left(\mathbf {r} _ {\mathrm {m}} - \mathbf {r} _ {\mathrm {f}}\right)
$$
- For individual asset, volatility $(\mathbf{\mu}_{i})$ doesn't matter - only contribution or systematic component

CAPM gives us the Equity Cost of Capital
- For FIS bond, easy to get $\mathsf{ER}_{\mathsf{i}}$ ( $\mathsf{r}_{\mathsf{i}}$ or RADR): yield to maturity
- For FIS stock (equity), we now have CAPM:
- Long-run Average: $\mathbf{r_i} - \mathbf{r_f} = \mathbf{\Omega}_i(\mathbf{r_m} - \mathbf{r_f})$ or $\mathsf{RP}_{\mathrm{i}} = \mathbf{\Omega}_{\mathrm{i}}\cdot \mathsf{RP}_{\mathrm{mkt}}$
- For today: $\mathbf{r}_i = \mathbf{r}f + \mathbf{R}\mathbf{P}_i$

## Beta  For Citi, Apple, Fis
Beta measures systematic component (moves with S&P500)

Investors only compensated for systematic, not idiosyncratic
- Idiosyncratic is the part that disappears in the portfolio
- Not paid to take on what can be diversified away

Beta does not say how much of firm volatility is systematic vs idiosyncratic
- Doesn't say how volatile firm is or how much of overall vol is left over

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
Firm & Beta & FirmVol( i) & Idiosync & Comment \\ \hline
Citi & 1.45 & 27\% & 19\% & High, high i \\ \hline
Apple & 1.06 & 26\% & 22\% & Moderate, high i \\ \hline
FIS & 0.79 & 17\% & 15\% & Low, moderate i \\ \hline
\end{tabular}
\end{document}
```
- Citi and Apple both high total vol, Citi moderate idiosyncratic vol
- Much of the Apple vol is idiosyncratic, can be diversified away - moderate

Only systematic (beta) vol matters for pricing risk

CAPM - Comparing Across Stocks: $\mathbf{r_i} - \mathbf{r_f} = \mathbf{\mu}_i(\mathbf{r}_{\mathrm{mkt}} - \mathbf{r_f})$ Some stocks have high vol & low beta (Newmont)
- Low ExpRet & Risk Prem
High vol but not correlated with market
- Helps to diversify, so you don't get paid a lot for holding that stock

Beta matters - gives us the ExpRet & RiskPrem

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
Stock & Beta & StdDev & ExpRet \\ \hline
Dow Chemical & 1.78 & 40.2 & 14.50 \\ \hline
Bank of America & 1.54 & 39.9 & 12.80 \\ \hline
Ford & 1.53 & 40.4 & 12.70 \\ \hline
ExxonMobile & 0.98 & 21.9 & 8.86 \\ \hline
Starbucks & 0.95 & 26.2 & 8.68 \\ \hline
IBM & 0.80 & 19.8 & 7.62 \\ \hline
Newmont Mining & 0.75 & 29.2 & 7.26 \\ \hline
Pfizer & 0.66 & 20.8 & 6.63 \\ \hline
Walmart & 0.42 & 13.8 & 4.92 \\ \hline
Heinz & 0.40 & 14.6 & 4.78 \\ \hline
\end{tabular}
\end{document}
```

BMA Table 8.2: as of January 2012, $r_f = 2\%$, $RP = r_m - r_f = 7\%$

If you have current price and an estimate of future price & earnings, you can calculate expected earnings
- If your ExpEarn $>$ CAPM the stock is cheap and you should buy

## Wacc: Weighted Average Cost Of Capital
Firm choosing whether to build a new plant / launch new product

Estimates future CFs
Discounts back to calculate PV
- Compare PV (of future CFs) vs cost today: Net PV

Need discount rate: Calculate how much investors demand

$$
W A C C = \frac {D}{D + E} r _ {D} + \frac {E}{D + E} r _ {E}
$$

Need to get $\mathbf{r}_{\mathrm{D}}$ & $\mathbf{r}_{\mathrm{E}}$
- $r_D$ pretty easy: calculate yield from company bond
- $r_E$ from CAPM: $r_i = r_f + \mathbf{\mu}_i(r_{mkt} - r_f)$

The table is from Brealey, Myers, Allen Table 8.2 (as of January 2012) for Beta and Expected return, but also?? table for standard deviation

### 4.6 Calculating Beta

## Calculating Beta
Easiest way - look them up (e.g. Yahoo Finance - "Key Statistics") or Bloomberg (DES, HRA)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/77aefd45ba38951ae2286890859ad89b70ed74d4af81d28ed3110bce0faab837.jpg)

## Calculating Beta
Easiest way - look them up (e.g. Yahoo Finance - "Key Statistics") or Bloomberg (DES, HRA)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/b774f04f297d19fd19aabbe21ed35b31aeb3210d8babd98b7454938ca2d2ed7d.jpg)

## Calculating Beta By Regression
More generally, regression

$$
\mathbf {r} _ {i} = \mathbf {a} _ {i} + \mathbf {\Pi} _ {i} \mathbf {r} _ {m k t} + \mathbf {\Pi} _ {i}
$$

Simple regression, Citi vs. S&P500, (returns) monthly 2012-2015

```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline
C\#i & Coef & Const \\ \hline
Coef & 1.81 & -0.01 \\ \hline
SE & 0.261 & 0.008 \\ \hline
Rsq, SE & 51.1\% & 5.57\% \\ \hline
F, df & 48.10 & 46 \\ \hline
\end{tabular}
\end{document}
```

Considerable uncertainty in beta:
- Back to statistics: limited no of obs: $= 1.82$, $\mathrm{SE} = 0.26$
- Roughly $95\%$ prob $\pm 2\mathrm{SE}$.. $1.82\pm 0.52$
- Changing world: relation between Citi and world may change.
- Note that above, from Yahoo, =1.45

Pull towards 1.0 - Beta for average company = 1.0
- May want to use some "weighted average" of 1.0 & estimated $\ddagger$

### 4.7 Capm - Violations & Extensions

## Assumptions For Capm

## 1. Individual Behavior
- Investors are rational, mean-variance optimizers.
Their common planning horizon is a single period.
- Investors all use identical input lists, an assumption often termed homogeneous expectations. Homogeneous expectations are consistent with the assumption that all relevant information is publicly available.

## 2. Market Structure
- All assets are publicly held and trade on public exchanges.
- Investors can borrow or lend at a common risk-free rate, and they can take short positions on traded securities.
- No taxes.
- No transaction costs.

Clearly these do not all hold

CAPM will not hold - but excellent start

This is from Bodie, Kane, Marcus Table 9.1

## Alternative Theories
We have assumed that only the "market" portfolio matters - most importantly that we have everything in the "market"

Generally not true

Alternative - Three Factor Model
- Identify macroeconomic factors that could a ect stock returns
- Estimate expected risk premium on each factor ( $r_{\text{factor1}} - r_f$, etc.)
- Measure sensitivity of each stock to factors (b1, b2, etc.)

$$
\text {R e t u r n} = \mathbf {a} + _ {1} \mathbf {r} _ {\text {f a c t o r 1}} + _ {2} \mathbf {r} _ {\text {f a c t o r 2}} + _ {3} \mathbf {r} _ {\text {f a c t o r 3}} +
$$

Expected Risk Prem = r - rf + 1 (rf - rfactor1) + 2 (rf - rfactor2) + 3 (rf - rfactor3)

We will, however, stick with single-factor CAPM

## Price Of Risk I - Portfolios, Sharpe, Beta, Contribution
Lecture 14

Thomas S. Coleman

3 May 2023; Draft May 8,2023

## Outline
1 Uncertainty, Risk, and Risk Premium 1
2 Uncertainty, Distributions, and Portfolios 3
3 Leverage and Sharpe Ratio - Risk Adjusted Return 5

3.1 Sharpe Ratio: Risk-Return Relationship and Risk-Adjusted Return 5
3.2 Using Sharpe - Comparing Bonds vs Equities 8

4 Combining Risky Assets in Portfolios - Diversification 10

4.1 Bonds & Stocks - Changing Correlation 10
4.2 Bonds & Stocks - Changing Weights - Diversification 13
4.3 Building Frontier-Efficient Frontier & Quadratic Optimization 15

5 Overall Market Risk Premium 20

5.1 Remember - Get Risk Premium, Work with Distribution 20
5.2 Straightforward Theory - Indifference Curves & Budget Line 22
5.3 Digression on Historical Returns, Arithmetic vs Geometric Average 23
5.4 Equity Risk Premium From History 27

## 1 Uncertainty, Risk, And Risk Premium

## Remember Two Ideas: Discounting And Risk Adjustment
The two important ideas in Finance:

Discounting: Price of today vs future

Nominal rates: price of cash today vs tomorrow
Real rates: price of consumption today vs tomorrow - determines our behavior
- Comes directly from budget line

## Risk Premium: Adjusting Future Cfs To Be Equivalent To Certainty (Known) Cfs
- Looks like pure discounting $(1 / 1 + y\alpha \mathrm{adj})$, but underneath adjusting for uncertainty
- Important: Embeds the price of risk: how much it is worth, how much less we will pay for uncertain CFs

## We Know How To Do Both Pure Discounting And Risk-Adjusted Discounting
- Remember: risk-adjusted discount rate $y$ adj = certainty yield + risk premium
- Comes from expected utility and then "trick": ADJ CF = ORIGCF/1+rp
- But where do we get the risk-adjusted yield or risk premium?

## Our Goal: Get Risk Premium
Get Risk Premium for Bonds, Overall Market, Individual Stocks Bonds: Complicated theory, Easy Calculations
- Theory: expected utility gives CF adjustment $\frac{\text{PromCF}}{(1 + \text{rp})}$
- Calculations: Market Price Risk-adjusted yield Risk Premium
- Can use PV = $\frac{\text{PromCF}}{(1 + \text{rf})(1 + \text{rp})}$ directly to back out rp

Overall Market and Individual Stocks: difficult - need new theory

Overall Market: Simple theory, Straightforward Calculation
- Theory: Simple Indifference Curves, Budget "Line"
- Calculations: Use history to estimate rp

Individual Stocks: Complicated Theory, Calculations
- Theory: How individual asset fits into overall market portfolio
- Calculations: CAPM and beta  to estimate rp

What Is Uncertainty? What is Risk? What is Risk Premium?

Uncertainty: the spread of cash flows, the cause of risk

Distribution of cash flows,
- Spread, often summarized by Standard Deviation

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/5d9539c6125e4c9b95648f5ae2c33b02a471b553780375ad92c56cd449efdd2f.jpg)

Risk: the price or value we assign to the Uncertainty
- difference in PV between certain and uncertain CFs

Risk Premium: standard & simple method converting uncertain CFs into PV
- Looks like regular discounting: $\mathsf{PV} = \frac{\text{Expected CF}}{1 + \mathsf{rf} + \mathsf{rp}}$

Tools We Need for Individual Stocks - Portfolio Theory

Portfolio: What is a portfolio?

Combining Assets: How assets combine in a portfolio
- Returns add or average
- Standard Deviations  do not add or average
Diversification
- Efficient Frontier

Beta  and Contribution: How an asset contributes to standard deviation 

Leverage and Sharpe Ratio:

## 2 Uncertainty, Distributions, And Portfolios Contents

## Start Working With Probability & Distributions
So far avoided working directly with uncertainty & distributions
- Always in background, determining the risk premium
- We have used the market to get risk premium: $\mathsf{PV} = \frac{\mathsf{ExpectedCF}}{1 + \mathsf{rf} + \mathsf{rp}}$

Now: work directly with Distribution: the uncertainty of cash flows / returns
- Future distribution of cash flows or returns is our fundamental tool
- The distribution (uncertainty) will produce price of risk
- Often summarize with mean and standard deviation - but only summaries

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/e97c03addcd5ae4d12f04599a6952e51682424f885c3768ab8feef6afbbd0bfc.jpg)

Value of Office Building

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/af29dec07b56277aa243eb1a35d9a2bd060fec8e3ea661fae8807453cfffcfeb.jpg)

Value for more general project

## Working With Distributions: Mean And Volatility
Horizontal: CF or return in future
Vertical: probability or likelihood
- Technically: picture is density

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/0899316675ca2759429a0702242ca9d86017efb72d1a55c11ee7bcc81418944a.jpg)

$\rightarrow$ %stock return

We (almost always) work with mean $(\mu \text{or} \bar{\mathsf{X}})$ and standard deviation 
 calledvolatilityinfinancial markets. Alsovariance,2

Often work with Normal Distribution
- Classic bell-shaped, like in picture. Depends on only $\mu$ &
- Works somewhat OK in finance - but many problems (fat tails!!)

But we care about the whole distribution (not just $\mu$ &

Portfolio: Mean, Volatility, and Correlation Portfolio:
- Take $100, invest across two assets, A & B
- If put $30 in A, then call the weight or fraction $w_A (= 0.3)$

## Single Asset A
Using period-by-period returns to calculate historical returns

$$
\mu_ {A} = \frac {1}{n} \sum_ {i = 1} ^ {n} \tilde {R} _ {i}
$$

$$
A = \frac {1}{n - 1} _ {i = 1} ^ {n} \tilde {R} _ {i} - \mu_ {A} ^ {2}
$$

Portfolio, weights $W_{A}, W_{B}$

Combining two (or more) assets into a portfolio

$$
\mu_ {P} = w _ {A} \mid \mu_ {A} + w _ {B} \mid \mu_ {B}
$$

Mean is simple average

$$
P = \overline {{W _ {A} ^ {2} \quad_ {A} ^ {2} + 2 W _ {A} W _ {B} \quad_ {A B} \quad_ {A} \quad_ {B} + W _ {B} ^ {2} \quad_ {B} ^ {2}}}
$$

Volatility is not average

Correlation: do returns for A and B move together? $-1 =$ always opposite, $+1 =$ always same

$$
= \frac {\underset {i = 1} {\overset {n} {\operatorname* {n}}} \tilde {R} _ {\mathrm {A i}} - \mu_ {\mathrm {A}}}{\underset {i = 1} {\overset {n} {\operatorname* {n}}} \tilde {R} _ {\mathrm {A i}} - \mu_ {\mathrm {A}} ^ {2}} \frac {\tilde {R} _ {\mathrm {B i}} - \mu_ {\mathrm {B}}}{\underset {i = 1} {\overset {n} {\operatorname* {n}}} \tilde {R} _ {\mathrm {B i}} - \mu_ {\mathrm {B}} ^ {2}}
$$

## 3 Leverage And Sharpe Ratio - Risk Adjusted Return

### 3.1 Sharpe Ratio: Risk-Return Relationship And Risk-Adjusted Return Contents

## Using Leverage To Create Any Return
Discuss how we can use Leverage to create any return we want
- Leverage is making a portfolio by combining a risky asset with riskless borrowing or lending
- Risky Asset: uncertainty in CF, volatility
- Riskless Asset: known CF, zero volatility
- Portfolio weight w held in risky asset (w=1 means hold only risky, w=0 means hold no risky)

Example: You have $100, and can also borrow

• Example 1: use your $100 to buy $100 of S&P index (risky)

$$
- w = 1
$$

-Zero leverage, no borrowing

• Example 2: use your $100 plus borrow another $100, to buy $100 + $100 of S&P index

$$
- w = 2
$$
- $100\%$ leverage, borrowing equal to investment (equity)

## Example Of Leverage - Get Any Return We Want
Combine two assets (risky & "riskless") to get any return:
- Risky asset $X$, return $\mu_{x}$, vol $\mathbf{\mu}_{x}$
- "Riskless" asset (borrow & lend), return $\mu_{\mathrm{rf}}$, vol = 0 $\mu_{\mathrm{p}} = \mathrm{W} \mid \mu_{\mathrm{x}} + (1 - \mathrm{W}) \mid \mu_{\mathrm{rf}}$
- By choosing Leverage $(w > 1)$ we can get higher returns $\mu_{\mathrm{p}} = \mu_{\mathrm{rf}} + w_{\mathrm{j}}(\mu_{\mathrm{x}} - \mu_{\mathrm{rf}})$
- But higher return means higher volatility

Example: choosing $w = 1$, $w = 2$, $w = 0$

• w = 1: $100 risky, $0 riskless, μp = μrf + 1 | (μx - μrf) = μx, vol 1 | x
 • w = 2: $200 risky, borrow $100, μp = μrf + 2 | (μx - μrf) = 2 μx - μrf, vol 2 | x
 • w = 0: $0 risky, $100 riskless, μp = μrf + 0 | (μx - μrf) = μrf, vol 0 | x

Say $\mu_{\mathbf{x}} = 5.4\%$, vol $\mathbf{\mu}_{\mathbf{x}} = 8.9\%$ risk-free $\mu_{\mathrm{rf}} = 3.9\%$

• w = 1: $100 risky, earn 3.9+1(5.4-3.9)=5.4%, vol 1 x = 8.9%
 • w = 2: $200 risky, borrow $100, earn 3.9+2(5.4-3.9)=6.9%, vol 2 x = 17.8%
 • w = 0: $0 risky, $100 riskless, earn 3.9+0(5.4-3.9)=3.9%, vol 0 x = 0

How to Describe Leverage, Return, Volatility – William Sharpe's Ratio

Portfolio Return: $\mu_{\mathrm{p}} = \mu_{\mathrm{rf}} + w_{\mathrm{i}}(\mu_{\mathrm{x}} - \mu_{\mathrm{rf}})$

Portfolio Volatility: $\mathbf{p} = \mathsf{W}\mid_{\mathbf{x}}$

Is there a simple way to write this, a simple statistic that summarizes return-vs-volatility relationship?
- Yes, Sharpe Ratio, introduced by William Sharpe

Write leverage $\mathsf{w} = \mathsf{P} / \mathsf{w}$, and then return is:

$$
\mu_ {p} = \mu_ {r f} + w _ {i} (\mu_ {x} - \mu_ {r f}); \quad \mu_ {p} = \mu_ {r f} + \mu_ {i} \frac {\left(\mu_ {x} - \mu_ {r f}\right)}{x}
$$ and call that ratio the Sharpe Ratio:

$$
S _ {x} = \frac {\left(\mu_ {x} - \mu_ {r f}\right)}{x} \quad \mu_ {p} = \mu_ {r f} + p \mid S _ {x}
$$

Sharpe Ratio - Risk-Return Relation & Risk-Adjusted Return

Portfolio Return: $\mu_{\mathfrak{p}} = \mu_{\mathsf{rf}} + \mu_{\mathsf{p}}\mathsf{S}_{\mathbf{x}}$

Sharpe Ratio: $S_{x} = \frac{(\mu_{x} - \mu_{rf})}{x}$

$$
\mathbf {\Phi} _ {\mathbf {p}} = \mathbf {W} _ {\texttt {i x}}
$$

Return equation now tells how return changes with volatility
- Higher volatility (p) means higher return
- Straight line (a ne) relationship

Sharpe ratio measures risk-adjusted return
- Higher Sharpe means get more return for higher volatility
Higher Sharpe means steeper line

Sharpe describes Ret vs vol line

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/b53e4aa2eba624ec674b8126f737b4429360089f1149789617c4e5a360d476b1.jpg)

## Sharpe Ratio Example
Combine two assets:
- Risky asset X, return $r_x$, vol $r_x$
- "Riskless" asset (borrow & lend. $= 0$ ), return $r_f$, vol $= 0$

Example: choosing $w = 1$, $w = 2$, $w = 0$

$$
\text{Say} r _ {x} = 5.4 \%, \quad x = 8.9 \%, r f = 3.9 \%, S _ {x} = \frac {(r _ {x} - r f)}{x} = 0.169
$$

• w = 1: $100 risky, earn 3.9+1(5.4-3.9)=5.4%, vol 1 x = 8.9%
 • w = 2: $200 risky, borrow $100, earn 3.9+2(5.4-3.9)=6.9%, vol 2 x = 17.8%
 • w = 0: $0 risky, $100 riskless, earn 3.9+0(5.4-3.9)=3.9%, vol 0 x = 0

Choose vol get Return $= \mathsf{rf} + \mathsf{vol}_{\mathsf{i}}\mathbf{S}_{\mathbf{x}}$

$\mathbf{w} = 1,\mathrm{vol} = 1^{*}8.9$ $\mathbf{R} = 3.9 + 8.9^{*}\mathbf{0.169} = 5.4$
$\mathbf{w} = 2$ $\mathrm{vol} = 2^{*}8.9 = 17.8,\mathrm{R} = 3.9 + 17.8^{*}\mathrm{0.169} = 6.9$
$\mathbf{w} = \mathbf{0},\mathbf{vol} = \mathbf{0}^{*}\mathbf{8.9},\mathbf{R} = 3.9 + \mathbf{0}^{*}\mathbf{0.169} = 3.9$

Sharpe gives slope of risk-return line

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/f61b5513c498e0f81aa518c5b0ccbe00eb5023e3857524cd77786bec8b0846b4.jpg)

Debt, Equity, Assets, and Leverage

Assets - Total of the portfolio, all assets, the overall vale of the portfolio

Equity - What owners put in, original investment

Debt - Borrowings, what owners borrow

Owners can choose to borrow (issue debt) - choose Debt / Equity ratio
- Split overall Assets into Debt (borrowings) versus Equity (original investment)

## Important Concepts

## Percent Debt
$$
\% D = \frac {D}{A} = \frac {D}{D + E}
$$

## Debt-To-Equity
%Leverage

$$
\frac {D}{E} = \frac {\% D}{1 - \% D}
$$

## Examples

## Leverage
$$
\frac {\text {Assets}}{\mathrm {E}} = \frac {\mathrm {A}}{\mathrm {E}} = \frac {1}{1 - \% \mathrm {D}}
$$

0%

50%

80%

0 or 0%

1 or 100%

4 or $400\%$

1 or 1-to-1

2 or 2-to-1

5 or 5-to-1

Leverage & Sharpe Formulae - Summary - Repeated Portfolio Combining "Risky" and "Riskless" assets:
- Risky asset $X$, return $\mu_{\mathbf{x}}$, vol $\mathbf{\mu}_{\mathbf{x}}$
- "Riskless" asset (borrow & lend), return $\mu_{\text{rf}}$, vol $= 0$

Portfolio Return (weights w, 1 - w):
- $\mu_{\mathrm{p}} = w_{\mathrm{i}}\mu_{\mathrm{x}} + (1 - w)_{\mathrm{i}}\mu_{\mathrm{rf}} = \mu_{\mathrm{rf}} + w_{\mathrm{i}}(\mu_{\mathrm{x}} - \mu_{\mathrm{rf}})$
Vol = p = w | x

Leverage: Usually think $0 < w < 1$, but allow leverage $w > 1$

Portfolio Return vs Vol: If want to choose a vol $\mathbf{p}$, choose $\mathbf{p} = \mathbb{W} |_{\mathbf{x}}$ or $\mathbf{w} = \frac{\mathbf{p}}{\mathbf{x}}$
- Choose any vol $\mathbf{p} = \mathsf{w}\mid_{\mathbf{x}}$ by choosing $w = \frac{\mathbf{p}}{\mathbf{x}}, 0 < w$
$\mu_{\mathrm{p}} = \mu_{\mathrm{rf}} + w_{\mathrm{i}}(\mu_{\mathrm{x}} - \mu_{\mathrm{rf}}) = \mu_{\mathrm{rf}} + \mu_{\mathrm{p}}S_{\mathrm{x}}$

Sharpe Ratio: Define $S_{x} = \frac{(\mu_{x} - \mu_{rf})}{x}$

### 3.2 Using Sharpe - Comparing Bonds Vs Equities

## Sharpe For Various Assets
From BMA Table 7.1 & p 170. Class Exercise: What is the Sharpe?

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
1900-2011 & Avg Return & Std Dev & Risk Prem & Sharpe \\ \hline
TBills & 3.9\% & - & 0.0\% & 0.00 \\ \hline
TBonds & 5.4\% & 8.9\% & 1.4\% & 0.17 \\ \hline
Stocks & 11.3\% & 20.0\% & 7.3\% & 0.37 \\ \hline
\end{tabular}
\end{document}
```

Class Exercise: Say you wanted $8.9\%$ vol?

TBonds, $\mu = 5.4\%$ $= 8.9\%$ or Stocks, $\mu = 11.3\%$ $= 20\%$

Turns out Stocks better:

$\mu_{\mathrm{p}} = \mu_{\mathrm{rf}} + \mu_{\mathrm{p}} S_{\mathrm{x}} = 3.9 + 8.9 + 0.37 = 7.2\%$
• L=W = p/x = 8.9/20 = 0.445 ($55.5 at bank)

Higher return than $5.4\%$ TBonds

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/13153f095224ce3706b263dd89aac3a9f9e495a4512192a49b56fb85d5780633.jpg)

What is going on? Why buy bonds at all? Will see why in a minute - DIVERSIFICATION!

It would be a mistake to think that because stocks have the higher Sharpe you should only buy stocks. It is true that if you had to buy only one or the other, stocks would be the best choice. But combining the two together you can get a higher Sharpe. For example, if the correlation between them were 0, a 50/50 portfolio would have a return of $8.35\%$ and volatility of $10.95\%$. This gives a Sharpe $= (8.35 - 3.9) / 10.95 = 0.41$.

Sharpe Widely Used - Part-Way to Measuring Risk Sharpe ratio and leverage idea incredibly useful and powerful
- Considers risk-return trade-o
- But not yet correct measure for "Risk" (that will be (beta) or contribution to portfolio risk)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
 & Avg Return & Std Dev & Risk Prem & Sharpe \\ \hline
TBills & 3.9\% & 2.8\% & 0.0\% & 0.00 \\ \hline
TBonds & 5.4\% & 8.9\% & 1.4\% & 0.17 \\ \hline
Stocks & 11.3\% & 20.0\% & 7.3\% & 0.37 \\ \hline
\end{tabular}
\end{document}
```

Tells us that Stocks look more risky, but in a real sense less risky.
- Can produce same vol as TBonds, higher return (7.2%)
- Or same return, lower vol (4.05%)

But why invest in bonds at all?
- Absolute risk (vol, standard deviation) is not the measure we need for risk

Correlation matters - how an asset contributes to portfolio vol

$$
\mathbf {r} = \mathbf {r f} + \mathbf {sig} ^ {*} \mathbf {S}. \mathbf {r} = 5.4, \mathbf {S} = 0.37 = > \mathbf {sig} = 4.05 \%
$$

## 4 Combining Risky Assets In Portfolios - Diversification

### 4.1 Bonds & Stocks - Changing Correlation

## Combine Two Risky Assets (Bonds & Stocks)
Instead of one risky & one riskless, combine two risky assets into a Portfolio
- What is a "Portfolio"? Combining assets together

Say we have $100 to invest
- Example: Split 50/50 between bonds & stocks
 • $50 in Bonds, $50 in stocks
- Weight $w_{1} = 0.50$, $w_{2} = 0.50$

Portfolio Return: straight average between Bond & Stock

E(R) = $w_{1}$ | μ1 + $w_{2}$ | μ2
Each contributes weight $(w_{i}$ or $1 / 2)$

Portfolio Volatility (Standard Deviation,): not straight average

$$
\cdot \quad = \overline {{w _ {1} ^ {2} \mid 1 ^ {2} + 2 \mid w _ {1} \mid 1 \mid w _ {2} \mid 2 + w _ {2} ^ {2} \mid 2}}
$$

Except for correlation $= 1.0$
- They don't contribute their weight - not 50/50

## Diversification When Correlation Changes
From BMA Table 7.1 & p 170. Look at Portfolio: Combination of Bond & Stock

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & Corr & Avg Return & Std Dev & Risk Prem & Sharpe \\ \hline
TBills & & 3.9\% & - & 0.0\% & 0.00 \\ \hline
TBonds & & 5.4\% & 8.9\% & 1.4\% & 0.17 \\ \hline
Stocks & & 11.3\% & 20.0\% & 7.3\% & 0.37 \\ \hline
1/2B + 1/2S & 1 & 8.4\% & 14.5\% & 4.5\% & 0.31 \\ \hline
1/2B + 1/2S & 0.7 & 8.4\% & 13.5\% & 4.5\% & 0.33 \\ \hline
1/2B + 1/2S & 0.0 & 8.4\% & 10.9\% & 4.5\% & 0.41 \\ \hline
1/2B + 1/2S & -0.7 & 8.4\% & 7.6\% & 4.5\% & 0.59 \\ \hline
\end{tabular}
\end{document}
```

Portfolio Return: half-way between Bond & Stock

E(R) = $w_{1}$ | μ1 + $w_{2}$ | μ2
Each contributes weight (w or $1/2$ )

Portfolio Volatility (Standard Deviation, ): less than half-way

$$
\cdot \quad = \quad \overline {{w _ {1} ^ {2} \mid \begin{array}{l} 2 \\ 1 \end{array} + 2 \mid \begin{array}{l} w _ {1} \\ 1 \end{array} \mid w _ {2} \mid \begin{array}{l} 2 \\ 2 \end{array} + w _ {2} ^ {2} \mid \begin{array}{l} 2 \\ 2 \end{array} }}
$$

Except for correlation $= 1.0$
- They don't contribute their weight - not 50/50 except $= 1$

As correlation volatility diversification
- With $= 0.7$ volatility down below average: less than $14.5\%$
- With $= 0.0$ volatility lower still but return same - Sharpe up
- With $= -0.7$ volatility lower than bonds - Sharpe high

Diversification lowers portfolio vol – one of most important results in finance

Volatilities Do Not Add - Bonds + Stocks = Lower Vol

From BMA Table 7.1 & p 170. Look at Portfolio: Combination of Bond & Stock

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & Corr & Avg Return & Std Dev & Risk Prem & Sharpe \\ \hline
TBills & & 3.9\% & - & 0.0\% & 0.00 \\ \hline
TBonds & & 5.4\% & 8.9\% & 1.4\% & 0.17 \\ \hline
Stocks & & 11.3\% & 20.0\% & 7.3\% & 0.37 \\ \hline
1/2B + 1/2S & 1 & 8.4\% & 14.5\% & 4.5\% & 0.31 \\ \hline
1/2B + 1/2S & 0.7 & 8.4\% & 13.5\% & 4.5\% & 0.33 \\ \hline
1/2B + 1/2S & 0 & 8.4\% & 10.9\% & 4.5\% & 0.41 \\ \hline
1/2B + 1/2S & -0.7 & 8.4\% & 7.6\% & 4.5\% & 0.59 \\ \hline
\end{tabular}
\end{document}
```

Portfolio Volatility (Standard Deviation, ): less than half-way

$$
\cdot \quad = \quad \overline {{w _ {1} ^ {2} | \quad 1 ^ {2} + 2 | \quad | w _ {1} | \quad 1 | w _ {2} | \quad 2 + w _ {2} ^ {2} | \quad 2}}
$$

Except for correlation $= 1.0$
- They don't contribute their weight

DIVERSIFICATION: combining assets gives better risk-return: higher Sharpe

## How To Think About Correlation
Correlation: do returns for A and B move together? $-1 =$ always opposite, $+1 =$ always same

$$
= \frac {\underset {i = 1} {\overset {n} {\operatorname* {n}}} \tilde {R} _ {A i} - \mu_ {A}}{\underset {i = 1} {\overset {n} {\operatorname* {n}}} \tilde {R} _ {A i} - \mu_ {A} ^ {2}} \frac {\tilde {R} _ {B i} - \mu_ {B}}{\underset {i = 1} {\overset {n} {\operatorname* {n}}} \tilde {R} _ {B i} - \mu_ {B} ^ {2}}
$$

Correlation of bonds and stocks maybe 0.0 or -0.2: do not move together
- Provides opportunity for diversification in creating portfolios

### 4.2 Bonds & Stocks - Changing Weights - Diversification Contents
In Reality, Change Weight Not Correlation

Now actual correlation, and vary weights: $w_{1} = w$ (Bonds) and $w_{2} = 1 - w$

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
 & Corr & Avg Return & Std Dev & Risk Prem & Sharpe & B & S \\ \hline
TBills & & 3.9\% & - & 0.0\% & 0.00 & & \\ \hline
T Bonds & & 5.4\% & 8.9\% & 1.4\% & 0.17 & & \\ \hline
Stocks & & 11.3\% & 20.0\% & 7.3\% & 0.37 & & \\ \hline
1/10B + 9/10S & 0.20 & 10.7\% & 18.2\% & 6.8\% & 0.37 & 0.12 & 1.10 \\ \hline
2/10B + 8/10S & 0.20 & 10.1\% & 16.4\% & 6.2\% & 0.38 & 0.16 & 1.21 \\ \hline
8/10B + 2/10S & 0.20 & 6.6\% & 8.8\% & 2.7\% & 0.30 & 0.90 & 1.39 \\ \hline
9/10B + 1/10S & 0.20 & 6.0\% & 8.6\% & 2.1\% & 0.24 & 1.00 & 0.97 \\ \hline
\end{tabular}
\end{document}
```

Portfolio Return: linearly in between Bond & Stock
- $\mathsf{E}(\mathsf{R}) = \mathsf{w}_1\mu_1 + \mathsf{w}_2\mu_2$, Each contributes weight $(\mathsf{w}_{\mathrm{i}})$

Portfolio Volatility (Standard Deviation,): not linearly between

$$
\cdot \quad p = \overline {{w _ {1} ^ {2} \mid 1 ^ {2} + 2 \mid w _ {1} \mid 1 \mid w _ {2} \mid 2 + w _ {2} ^ {2} \mid 2}}
$$

Bond & Stock don't contribute their weight $w_{i}$

Compare $90\%$ vs $100\%$ Bonds: Return, Volatility, Sharpe
- Volatility actually down by adding volatile stocks!

How can volatility go down when add more volatile stocks?

$$
\cdot_ {p} = \overline {{w _ {1} ^ {2} \mid 1 ^ {2} + 2 \mid w _ {1} \mid 1 \mid w _ {2} \mid 2 + w _ {2} ^ {2} \mid 2}} \text {c o u n t e r - i n t u i t i v e}
$$

Need to look at (beta) and contribution-to-risk - detail next lecture
- port = [$W_{1}$ 1 + 2W2] i port
- Subtract a little bond, subtract $w_{1}$ 1. Add stock, add $w_{2}$ 2
- Since $\mathbf{B} > \mathbf{S}$ for $\mathsf{w}_1 = 0.9$, vol down when $\mathsf{w}$ down by 0.1
- depends on weight $w$, vol, correlation,...

As add more stocks, Sharpe can actually go higher than Stocks only
- With $80\%$ Bonds Vol but Sharpe
- With $20\%$ Bonds vol pretty high but return higher, Sharpe $>$ Stocks only
- Go to $10\%$ Bonds and Sharpe starts to fall again

Cannot look at stock vol (stock) alone - contribution to overall vol matters
- Stocks high vol (20%) but reduces vol for $9/10$ Bonds, Sharpe highest $2/10$

## Important Lessons: Diversification, Contribution, Frontier
```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|c|}
\hline
 & Corr & Avg Ret & Std Dev & Avg & Risk Prem & Sharpe & B & S \\ \hline
TBonds & & 5.4\% & 8.9\% & & 1.4\% & 0.17 & & \\ \hline
Stocks & & 11.3\% & 20.0\% & & 7.3\% & 0.37 & & \\ \hline
2/10B + 8/10S & 0.20 & 10.1\% & 16.4\% & 17.8 & 6.2\% & 0.38 & 0.16 & 1.21 \\ \hline
8/10B + 2/10S & 0.20 & 6.6\% & 8.8\% & 11.1 & 2.7\% & 0.30 & 0.90 & 1.39 \\ \hline
9/10B + 1/10S & 0.20 & 6.0\% & 8.6\% & 10.0 & 2.1\% & 0.24 & 1.00 & 0.97 \\ \hline
\end{tabular}
\end{document}
```

## Lesson 1: Diversification:
Portfolio Volatility (Standard Deviation,):

$$ p = \quad w _ {1} ^ {2} \mid 2 + 2 \mid w _ {1} \mid 1 \mid w _ {2} \mid 2 + w _ {2} ^ {2} \mid 2
$$

Vol not linearly between bond & stock vols

Bond & Stock don't contribute their weight $w_{i}$
- Portfolio vol always less than "Avg", unless $= +1$
- Free Lunch: combine assets and get lower vol, higher Sharpe

Lesson 2: For individual assets, contribution matters, not vol: port = [$W_{1}$ + 2W2] port
- Stocks are high vol (20%) but reduce portfolio vol $(^{10} / 10$ $9 / 10$ bonds)
- Stock contribution (stock), not stock vol (stock) matters
- Need to learn about contribution (stock)

Lesson 3: Portfolio frontier curved like picture
- Curved - at left may be return & vol
- General picture for combining assets

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/e64a6e5f8a84c4b02b8958dc28dd42c1562b6a475f83c87b8d96c0ea72779e7e.jpg)

### 4.3 Building Frontier - Efficient Frontier & Quadratic Optimization Contents
Two Assets - Curved Frontier Example, showing same as above (for Bonds & Stocks)
- $\mu_{1}, \mu_{2}$ are $5\%$, $10\%$.
- Volatilities, $1,2,10\%$, $20\%$ correlation $= -0.5$
- Change weights
- Only blue part matters - don't want red (low return, high vol)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/ffc0e1ead53a91e4bd9a8f86ea9fcfe17117a32bed05e8fb49a10fcefd1f9281.jpg)

## Three Assets - Start Ruling Out Some Portfolios

## Consider Only 1&2,2&3 (Not 1&3)
- Picture shows possibilities
- $\mu_{1}, \mu_{2}, \mu_{3}$ are $5\%$, $10\%$, $15\%$
- Volatilities, 1,2,3,10%, 20%, 25%
-correlation $1\& 2 = -0.5$ ，1&3=0.0
- Cannot say which is "best"
- But can rule some out
- For 1&2 (blue), rule out return lower than 1&3 (red)
- For 1&3 (green), rule out return lower than 1&2 (red)

Starting to build possible portfolios

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/dea3721cfb31bd0d660909183e75b10842fee740ef13378a543bcb2135a18381.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/c24cd4f49c17d0070ca5513a206b30b0817d3c26bc7a04fd55bfae25c3c14f7e.jpg)

## Three Assets - Ruling Out Some Portfolios
Now: Consider 1&2,2&3,1&3

Pictures showswere rule out more & more
- $\mu_{1}, \mu_{2}, \mu_{3}$ are $5\%$, $10\%$, $15\%$
- Volatilities, 1,2,3,10%, 20%, 25%
-correlation $1\& 2 = -0.5$ ，1&3=0.0
- Rule out red, portfolios that are "ine cients"

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/b05f506ff2858e42f0bef00ece280da23a2bec5c465b262321d3104bf998165c.jpg)

Starting to build possible portfolios - "E cient Frontier"

Here we are building 2-by-2
- We really want to take all together - Quadratic Optimization:

Minimize Variance = $\mathbf{w}_{i, j}\mathbf{w}_{j}\mathbf{w}_{ij}\mathbf{w}_{ij} = \mathbf{w}_{ij}\mathbf{w}_{ij}$ s.t. fixed return Expected Return = $\mathbf{\mu}_{\mathbf{i}}\mathbf{w}_{\mathbf{i}}\mathbf{\mu}_{\mathbf{i}} = \mathbf{X}$

Quadratic Optimization - Best Possible Using Three Assets

$$
\text {M i n i m i z e} \quad Var i a n c e = \quad_ {i, j} w _ {i} w _ {j} \quad_ {i j} \quad_ {i j} = \quad_ {i j} \quad_ {i j}
$$

$$ s. t. \text {f i x e d} = \quad_ {i} w _ {i} \mu_ {i} = X
$$

$$
\text {and w e i g h t s:} \quad_ {\mathrm {i}} w _ {\mathrm {i}} = 1
$$
- Pictures shows "envelope" - lowest vol for each possible return
- $\mu_{1}, \mu_{2}, \mu_{3}$ are $5\%$, $10\%$, $15\%$
- Volatilities, 1,2,3,10%, 20%, 25%
-correlation $1\& 2 = -0.5$ ， $1\& 3 = 0.0$
- All portfolios within red are "ine cient"

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/6608efc1c9ab419844ad5eae2a420f5f36d2d3e6c25dba324e355a6b33b19fd8.jpg)

Turns out, simple solution using matrixes (by solving Lagrangian for quadratic form)

John Cochrane's book Asset Pricing, p 82

Matrix solution for quadratic optimization in Cochrane Asset Pricing p. 82. Turns out to be simple matrix manipulation. The problem is:

$$
\min _ {w} w \quad w s. t. w E = \mu; w 1 = 1
$$

Solution: Let

$$
\mathbf {A} = \mathbf {E} ^ {- 1} \mathbf {E}; \quad \mathbf {B} = \mathbf {E} ^ {- 1} \mathbf {1}; \quad \mathbf {C} = \mathbf {1} ^ {- 1} \mathbf {1}
$$

Then, for a given mean return $\mu$, the minimum variance portfolio has variance

$$
\operatorname {var} \left(\mathsf {R} ^ {\mathsf {p}}\right) = \frac {\mathsf {C} \mu^ {2} - 2 \mathsf {B} \mu + \mathsf {A}}{\mathsf {A C} - \mathsf {B} ^ {2}}
$$ with portfolio weights

$$ w = - 1 \frac {E (C \mu - B) + 1 (A - B \mu)}{A C - B ^ {2}}
$$

The graphs are from spreadsheet AppFinMgmt2018/lectures/volgraph.xls

## E Cient Frontier - Ruling Out "Ine Cients" Portfolios We End Up With "E Cient Front
Each half-ellipse represents possible weighted combinations for two stocks
- Composite of all assets makes up "e cients frontier"

## Get There With Quadratic Optimization
- shown with line "Return $= \mathbf{X}$ "

$$
\text {M i n i m i z e Var i a n c e} = \quad_ {i, j} w _ {i} w _ {j} \quad_ {i j} \quad_ {i j} = \quad_ {i j} \quad_ {i j}
$$

$$ s. t. \text {f i x e d} = \quad_ {i} w _ {i} \mu_ {i} = X
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/e2394deaba65e398951d1b81c8f7df6d3c27ca5928102a95eb2b8a98d2886472.jpg)

Standard Deviation

## Which Is "Best"? - Can Rule Out Some Which Portfolio?
Cannot yet say exactly, but can rule some out
- Stay out of lower right (SE) quadrant
- Never want high volatility & low return

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/ed65796661c704eaae4a52200f7fb918c19079bf365a6e5d76ba61aa1d18f3f6.jpg)

Risk

## 5 Overall Market Risk Premium

### 5.1 Remember - Get Risk Premium, Work With Distribution Contents

## Our Goal: Get Risk Premium

## Get Risk Premium For Bonds, Overall Market, Individual Stocks
Bonds: Complicated theory, Easy Calculations
- Theory: expected utility gives CF adjustment $\frac{\text{PromCF}}{(1 + \text{rp})}$
- Calculations: Market Price Risk-adjusted yield Risk Premium
- Can use PV = $\frac{\text{PromCF}}{(1 + \text{rf})(1 + \text{rp})}$ directly to back out rp

## Overall Market: Cannot Back Out Risk Premium, Using Expected Cfs
- Work with full distribution of CFs and returns
- Theory: Simple Indifference Curves, Budget "Line"
- Calculations: Use history to estimate rp

Individual Stocks: Complicated Theory, Calculations
- Theory: How individual asset fits into overall market portfolio
Calculations: CAPM and beta  to estimate rp

## Working With Distributions: Mean And Volatility
Must start with full distribution of CFs & returns

Horizontal: CF or return in future
Vertical: probability or likelihood
- Technically: picture is density

We (almost always) work with mean $(\mu$ or $\bar{\mathbf{X}})$ and standard deviation 
 called volatility in financial markets. Also variance, 2

And put in Indifference curves for $\mu$ &

Tradeo between overall return & vol

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/18100ff368b32a9149a4fecbfccd395a4a0e96648d37ff09407485c4721b52c2.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/56aec89302d87dd2d11e11eb3cc6aaffba2ef459d22820e961744b4fa39f239c.jpg)

Standard Deviation

### 5.2 Straightforward Theory - Indifference Curves & Budget Line Contents
Straightforward Theory - Indifference Curves & Budget Line How do we get overall market return? (& RP=Ret-rf)
- You should know the answer: budget line & utility

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/dac7fd855a3d1883394dc13dfdc9fa28ba4611007698d7aee62eca6e5c76d014.jpg)

Budget Set - E cient Frontier

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/fdbf345dd4ee62d7a1083051f525abb819b0c17a0b9f36663383b7020dbef89f.jpg)

Utility & Preferences over Ret & Std Dev

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/0315b8f6d2f012763a8c9cff292ac86ef709e018fe0cab3f6a09a6e446a4849c.jpg)

## Overall Vs Stock Market Overall Or Total Market
- Exactly that: Bonds + Domestic Stocks + Foreign Stocks + Real Estate + Human Capital. Textbooks never use Total Market
- Instead use Domestic Stock Market (say S&P 500 index)
- Why? What we have, what we can calculate

### 5.3 Digression On Historical Returns, Arithmetic Vs Geometric Average Contents
History for Stocks, Bonds, Bills

Financial Analysts and Portfolio Managers: Obsessed with history of prices

US history from 1900 to 2012
- I am having you look at history for the past few years

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/34c14034172de8c0a939b356ca03aa30696c0173931514b5fcdfb80e600df56f.jpg)

Picture is prices, but always look at returns: $1 + \mathsf{R}_{\text{simple}} = \frac{\mathsf{P}_{t+1}}{\mathsf{P}_t}$

History for Stocks, Bonds, Bills

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/2436def335a3cf3b21683d928297802003af74228943111b306d9cd5133e9f54.jpg)

Historical returns, over 100 years. BMA Table 7.1
- Learn about risk premium

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
 & Nominal & Real & Risk Prem \\ \hline
TBills & 3.9\% & 1.0\% & 0.0\% \\ \hline
Gov’t Bonds & 5.4\% & 2.5\% & 1.4\% \\ \hline
Stocks & 11.3\% & 8.2\% & 7.3\% \\ \hline
\end{tabular}
\end{document}
```

We use historic risk premium as estimate of the risk premium for the stock market
- Remember - we can back out risk premium for a bond, but not a stock

## Average Returns - Arithmetic Vs Geometric Historical Returns, Over 100 Years. Bma Table 7.1
- Learn about risk premium

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
 & Nominal & Real & Risk Prem \\ \hline
TBills & 3.9\% & 1.0\% & 0.0\% \\ \hline
Gov&\#$x_{27}$;t Bonds & 5.4\% & 2.5\% & 1.4\% \\ \hline
Stocks & 11.3\% & 8.2\% & 7.3\% \\ \hline
\end{tabular}
\end{document}
```

We use historic risk premium as estimate of the risk premium for the stock market
- Calculate historic year-by-year returns, and take the average

But averaging returns brings up some confusing issues - that I never got straight until now (and I've never found anybody who could explain to me)

## Two Questions We Ask When Averaging Historical Returns
Average risk premium Distribution of returns - if we pick an "average" year, what is return? Arithmetic Average Usual average

"Average" growth during period How much growth, year-by-year, produces the growth we actually see? Geometric Average or continuously compounded
- We don't usually have to worry about difference, but compounding matters

## Digression On Arithmetic Vs Geometric Return
"Big Oil" example (BMA ch 7): start at $1.00/share, yearly changes

"Simple" return is: $1 + r_{simple} = \frac{P_1}{P_0}$

What we usually think of and use

Arithmetic average tells what happens in an "average" year: +10%
- Does not tell us how much growth year-by-year
• 10% for 3 year: $1.331, not $1.287

```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline
$1.00 & \% simple & \% cc \\ \hline
$0.90 & -10\% & -10.54\% \\ \hline
$0.99 & +10\% & +9.53\% \\ \hline
$1.287 & +30\% & +26.24\% \\ \hline
Avg & +10\% & +8.41\% \\ \hline
Geom & +8.77\% & 1 + rs = reC \\ \hline
\end{tabular}
\end{document}
```

Geometric average gives year-by-year growth - overall growth
- For year-by-year, Geometric, Compounding over 3 yrs: $\frac{1.287}{1}^{1/3} = 1.0877$
- If grow by $8.77\%$ every year, go from $$ 1$ to $$ 1.287$
- Best for comparing growth across time, across assets
- Can also do continuously-compounded (log changes): $1 + \mathsf{r}_s = \mathsf{e}^{\mathsf{rc}}$
- Geometric / cc best for comparing over time, across assets

## What Is Arithmetic Versus Geometric Mean?
Arithmetic: add up and divide by $n$ (our regular mean or average)

Usually think about adding up $\mathsf{R}_1,\mathsf{R}_2,\ldots,\mathsf{R}_n$ Mean $= \frac{1}{n}$ n 1 Ri
But better to think of adding $1 + \mathsf{R}_1,1 + \mathsf{R}_2, \ldots, 1 + \mathsf{R}_n$, Mean = $\frac{1}{n}$ n i=1 (1+Ri) = 1 + $\frac{1}{n}$ Ri

Geometric: multiply and nth root:
- Geometric Mean = $\prod_{i=1}^{n}[(1 + R_i)]^{1/n} = [(1 + R_1)(1 + R_2)(1 + R_n)]^{1/n}$

## History For Stocks, Bonds, Bills

![](Https://Cdn-Mineru. Openxlab. Org. Cn/Result/2025-11-15/3C07Ddea-Cb45-4Eb2-Bd23-F544B33F30B6/24109D903A52355444Bc8Ccc0F2Eb983A24Bd89C202E6C171913B56B17C07Ee7. Jpg)

## Additional Issue For History:
Often monthly, converted to annual

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
 & Nominal & Real & Risk Prem \\ \hline
TBills & 3.9\% & 1.0\% & 0.0\% \\ \hline
Gov’t Bonds & 5.4\% & 2.5\% & 1.4\% \\ \hline
Stocks & 11.3\% & 8.2\% & 7.3\% \\ \hline
\end{tabular}
\end{document}
```

Use monthly data to reduce variance (better estimate) but need annual return
- Returns independent, so OK to add, but issues adding arithmetic returns

## Arithmetic

## Geometric, Monthly

## Annual

## Approximations
Arithmetic Geometric rA rG + 2

Monthly Annual rA, ann 12rAmthly ann mthly

Brealey, Myers, Allen Table 7.1,1900-2011

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & Return Annual & Vol & Geom & Return Mthly & Better Arith \\ \hline
TBills & 3.9\% & 2.8\% &??3.9\% & 0.325\% & 4.0\% \\ \hline
Gov’t Bonds & 5.4\% & 8.9\% &??5.0\% & 0.45\% & 5.5\% \\ \hline
Stocks & 11.3\% & 20.0\% &??9.3\% & 0.942\% & 11.9\% \\ \hline
\end{tabular}
\end{document}
```

Assuming the BMA "Annual Returns" were converted from monthly data, we can unwind back to original monthly, do a more exact monthly annual conversion

## More Exact
Arithmetic Geometric

$$
1 + r _ {G, \text {s i m p l e}} = \exp \left(r _ {C C}\right)
$$

$$
1 + r _ {A, \text {s i m p l e}} = \exp r _ {c c} + \frac {1}{2} ^ {2}
$$

$$
1 + r _ {A, \text {s i m p l e}} = 1 + r _ {G, \text {s i m p l e}} \quad \exp \frac {1}{2}
$$

Monthly Annual

$$ r _ {c c, a n n} = 1 2 \mid r _ {c c, m t h l y} \quad_ {a n n} = \overline {{1 2}} \mid_ {m t h l y}
$$

$$
1 + r _ {\text {A n n e}} ^ {\text {A n n e}} = \exp 1 2 _ {i} r _ {c c, m t h l y} + \frac {1}{2} 1 2 _ {i} \begin{array}{l} 2 \\ m t h l y \end{array}
$$

$$
1 + r _ {\mathbf {A}, \text {s i m p l e}} ^ {\text {a n n}} \quad \exp 12; \ln (1 + r _ {\mathbf {A}, \text {s i m p l e}} ^ {\text {m t h y}})
$$

R notebook for some calculations and simulations on converting from monthly to annual and from Arithmetic Average to Geometric (or log / cc) Average: /AppFinMgmt2021/misc/RiskPremium_1. Rmd

### 5.4 Equity Risk Premium From History Contents
Backing Out Equity Risk Premium From History Theory: useindi erence curves & budget line (frontier)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/6f748af7ba6888ae699d78a3ce88c9179ab397f6a2a8deec14fd429103e44799.jpg)

Backing Out Equity Risk Premium From History

Practice: history to "back out" risk premium
- Remember what "risk premium" is: adjusting Expected CF: PV = $\frac{\text{Exp CF}}{(1 + \text{rf})(1 + \text{rp})}$

Problem: We don't know ExpCF
- But we do have many "experiments":every month, invest $1 at beginning of month, see what happens at end

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/21a1207d560d2a2ee1f19a70f72d64adb1b6968279ee9d207e919aa06c6f4fcc.jpg)

```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline
 & Begin & End \\ \hline
Apr 1926 & $1.00 & $1.0253 \\ \hline
May 1926 & $1.00 & $1.0179 \\ \hline
… & & \\ \hline
Dec 2014 & $1.00 & $0.9958 \\ \hline
Avg & $1.00 & $1.00896 \\ \hline
\end{tabular}
\end{document}
```
- Need to use Arithmetic Average of CF

## Backing Out Equity Risk Premium From History
If markets are e c i e n t (investors use current information to predict Expected CF) then we can use those monthly "experiments" to get Expected CF

$\cdot PV = \frac{ExpCF}{(1 + rf)(1 + rp)}$ or re-write $1 + rf + rp = \frac{ExpCF}{PV}$
- We don't have Exp CF, but we do have Act CF
- Returns: $1 + \text{return} = \frac{\text{Act CF}}{\text{PV}}$
- Assume investors are using Exp CF every month
- Arithmetic Average over many months, $\frac{\text{ExpCF}}{\text{PV}} = \frac{\text{Avg[Act CF]}}{\text{PV}} = \text{Avg}[1 + \text{return}]$
- For risky (S&P): $1 + \mathsf{rf} + \mathsf{rp} = \frac{\mathsf{ExpCF}}{\mathsf{PV}} = \mathsf{Avg}[1 + \mathsf{return}]$
- Do same for "risk-free": $1 + \mathsf{rf} = \frac{\mathsf{ExpCF}}{\mathsf{PV}}$

```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline
 & Begin & 1 + return \\ \hline
Apr 1926 & $1.00 & $1.0253 \\ \hline
May 1926 & $1.00 & $1.0179 \\ \hline
… & & \\ \hline
Dec 2014 & $1.00 & $0.9958 \\ \hline
Avg & $1.00 & $1.00896 \\ \hline
\end{tabular}
\end{document}
```

For backing out Risk Premium, use Arithmetic because we want Expected CF (not Geom Avg CF)
- For comparing over history, still use Geometric Average

## History For Stocks, Bonds, Bills
Financial Analysts and Portfolio Managers: Obsessed with history of prices

US history from 1900 to 2012
- I am having you look at history for the past few years

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/d69a8ab4b02245b93b0b384d3ab6bd2c1bed565cb109def898f752365b2e77cf.jpg)

Picture is prices, but always look at returns: $1 + \mathsf{R}_{\text{simple}} = \frac{\mathsf{P}_{t+1}}{\mathsf{P}_t}$

## History For Stocks, Bonds, Bills

![](Https://Cdn-Mineru. Openxlab. Org. Cn/Result/2025-11-15/3C07Ddea-Cb45-4Eb2-Bd23-F544B33F30B6/325Fb358Beeb9821B62C5316A90Ea63Bd8D603A3Bbfa3467015F403320D73Ad4. Jpg)

Historical returns, over 100 years. BMA Table 7.1
- Learn about risk premium

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
 & Nominal & Real & Risk Prem \\ \hline
TBills & 3.9\% & 1.0\% & 0.0\% \\ \hline
Gov’t Bonds & 5.4\% & 2.5\% & 1.4\% \\ \hline
Stocks & 11.3\% & 8.2\% & 7.3\% \\ \hline
\end{tabular}
\end{document}
```

We use historic risk premium as estimate of the risk premium for the stock market
- Remember - we can back out risk premium for a bond, but not a stock

## Historical Equity Premium
Return for any one day (or month or year) will not give a good estimate of radj. But with enough history...

Estimate Equity Risk Premium using historical returns
- $\mathbf{RP} =$ Equity return - Risk-free

Table shows history, 1900-2011
- Treasury Bills: short-term risk-free rate
Government Bonds
Common Stocks: basically, S&P 500 index (since 1920s)

Equity risk premium $= 7.3\%$
- Debate about size of rp
- Maybe $6\%$ is better

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
 & Nominal & Real & Risk Prem \\ \hline
TBills & 3.9\% & 1.0\% & 0.0\% \\ \hline
Gov&\#$x_{27}$;t Bonds & 5.4\% & 2.5\% & 1.4\% \\ \hline
Stocks & 11.3\% & 8.2\% & 7.3\% \\ \hline
\end{tabular}
\end{document}
```

## Table Is Brealey & Myers, Table 7.1
We now have "Equity" risk premium - for the overall equity market
- But considerable debate on whether $7.3\%$ is "too high". Some reasons:
- Equity returns in the 20th century were much higher than expected. It's the expected return, not the realized return, that we need. Fama and French (2000, I think) show that the expected ERP was only $3\%$.
- Expected returns to individual investors were much lower than to the broad-market bench marks because there were no index funds for most of the period, taxes and fees were high, and most portfolios were undiversified (often single-stock) requiring a return-equivalent penalty to be applied for the greater risk of undiversification.

Why not do the same for each individual stock? Say FIS on its own?

Not enough history
- Individual firms, even ones with long history like GM, change over time
- Using the overall stock market, we get the risk (cost of uncertainty) for something that is relatively stable over long periods

## Various Estimates - No Certainty
Brealey, Myers, Allen Table 7.1,1900-2011

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
 & Nominal & Real & Risk Prem & Vol \\ \hline
TBills & 3.9\% & 1.0\% & 0.0\% & 2.8\% \\ \hline
Gov’t Bonds & 5.4\% & 2.5\% & 1.4\% & 8.9\% \\ \hline
Stocks & 11.3\% & 8.2\% & 7.3\% & 20.0\% \\ \hline
\end{tabular}
\end{document}
```

Bodie, Kane, Miller Table 5.3,1926-2015

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
 & Nominal & Risk Prem & Vol \\ \hline
TBills & 3.47\% & - & 3.13\% \\ \hline
Gov’t Bonds & 6.00\% & 2.53\% & 10.02\% \\ \hline
Stocks & 11.77\% & 8.30\% & 20.28\% \\ \hline
\end{tabular}
\end{document}
```

Some debate about size of Equity Risk Premium

History says somewhere about $7 - 8\%$
- Maybe $6\%$ is better

## First Republic Bank Failure
Thomas S. Coleman

Harris PPHA 42510 & 42521

1 May 2023, Draft May 1,2023

## First Republic Bank Failed & Taken Over By Jp Morgan
First Republic lost $100mn in customer deposits past months
- FRB customers now JP Morgan customers
- Morgan pays $10.6bn for FRB
 Cost to FDIC is $13bn (vs $20bn for SVB)
- Depositors don't lose anything
- FRB shareholders lose everything

Aa

First Republic fails, and is snapped up by JPMorgan Chase

Regulatiorate atange a goal for the California-based leader

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/9d051ca186500bef32f420f8be12a820c2633421773b7d0fe4d6bc3fc627fe79.jpg)

## Appears Svb Was (Almost) Insolvent
Picture (from NYTimes) shows gains & losses for both Held to Maturity and Available for Sale portfolio
- Trying to capture true value of assets
- Losses as % of deposits - SVB up to 9%
- Look at the "Big Loss" below - I chose $9 \%$ of deposits
- Close to true situation for SVB in 2022 - nearly insolvent
People did not realize until March 8

When run started, massive loss of deposits.
- I've heard $41bn left in a day or two
- Looking at balance sheet ($173.1bn deposits) no way they could survive

SVB Actual 2022 ($bn)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
ASSETS & LIABILITIES & & \\ \hline
Loans & 73.6 & 173.1 & Deposits \\ \hline
Investments & 125.1 & 22.4 & Other \\ \hline
Other & 13.1 & 16.3 & Equity \\ \hline
Total & 211.8 & 211.8 & Total \\ \hline
\end{tabular}
\end{document}
```

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/ef020fcb2ccd4fcc6c079b1a323aa778986c3cf48b77ecf4166520d1c628b0f1.jpg)

SVB "Big Loss" ($bn)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
ASSETS & LIABILITIES & & \\ \hline
Loans & 73.6 & 173.1 & Deposits \\ \hline
Investments & 109.5 & 22.4 & Other \\ \hline
Other & 13.1 & 0.7 & Equity \\ \hline
Total & 196.2 & 196.2 & Total \\ \hline
\end{tabular}
\end{document}
```

## Solvency Versus Liquidity Svb Essentially Insolvent
SVB Actual 2022 ($bn)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
ASSETS & LIABILITIES & & \\ \hline
Loans & 73.6 & 173.1 & Deposits \\ \hline
Investments & 125.1 & 22.4 & Other \\ \hline
Other & 13.1 & 16.3 & Equity \\ \hline
Total & 211.8 & 211.8 & Total \\ \hline
\end{tabular}
\end{document}
```

SVB "Big Loss" ($bn)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
ASSETS & LIABILITIES & & \\ \hline
Loans & 73.6 & 173.1 & Deposits \\ \hline
Investments & 109.5 & 22.4 & Other \\ \hline
Other & 13.1 & 0.7 & Equity \\ \hline
Total & 196.2 & 196.2 & Total \\ \hline
\end{tabular}
\end{document}
```

SVB is now in a very delicate position, with both Solvency Risks and Liquidity Risks

## Solvency Risk
Depositors worried investments may go down more
- Regular debts (like for Apple) cannot withdraw early
Deposits can, and rational to do so
Get out now, before things get worse

Silicon Valley Bank was effectively insolvent
- Assets barely worth the value of fixed obligations - "Deposits" & "Other"

## Now Turn To First Republic Bank – Painful, But Not Svb
Gains & losses for both HtM and AfS portfolio
- Losses as % of deposits - FRB up to about $3.5\%$
- Look at the "Big Loss" below - showing $3.5\%$ of deposits
- First Republic painful, but not insolvent
My view - caught in liquidity panic
- Might survive, might not. But very different from SVB

FRB Actual 2022 ($bn)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
ASSETS & LIABILITIES & & \\ \hline
Loans & 166.1 & 176.4 & Deposits \\ \hline
Investments & 33.6 & 19.5 & Other \\ \hline
Other & 13.7 & 17.5 & Equity \\ \hline
Total & 213.4 & 213.4 & Total \\ \hline
\end{tabular}
\end{document}
```

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/bf3e3cad7ac4379c922b10959fe172964fc38e924ba25572f8ce999753b291c7.jpg)

FRB "Big Loss" ($bn)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
ASSETS & LIABILITIES & & \\ \hline
Loans & 166.1 & 176.4 & Deposits \\ \hline
Investments & 27.4 & 19.5 & Other \\ \hline
Other & 13.7 & 11.3 & Equity \\ \hline
Total & 207.2 & 207.2 & Total \\ \hline
\end{tabular}
\end{document}
```

## Solvency Versus Liquidity Frb Solvent But Liquidity Risks
FRB Actual 2022 ($bn)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
ASSETS & LIABILITIES & & \\ \hline
Loans & 166.1 & 176.4 & Deposits \\ \hline
Investments & 33.6 & 19.5 & Other \\ \hline
Other & 13.7 & 17.5 & Equity \\ \hline
Total & 213.4 & 213.4 & Total \\ \hline
\end{tabular}
\end{document}
```

FRB "Big Loss" ($bn)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
ASSETS & LIABILITIES & & \\ \hline
Loans & 166.1 & 176.4 & Deposits \\ \hline
Investments & 27.4 & 19.5 & Other \\ \hline
Other & 13.7 & 11.3 & Equity \\ \hline
Total & 207.2 & 207.2 & Total \\ \hline
\end{tabular}
\end{document}
```

## Frb Is Not Insolvent

## Solvency Risk
Depositors worried investments may go down more
- Regular debts (like for Apple) cannot withdraw early
Deposits can, and rational to do so
- Get out now, before things get worse

## Liquidity Risk
Even if knew for sure assets would not go down
- Assets may be illiquid – take a few months or year to sell off
- Depositors may need money back sooner
Rational to get first in line, take money out now

First Republic Bank was not insolvent - but subject to liquidity problems and a bank run
- Bank run – where customers withdraw deposits because they are worried the bank will get into trouble in the futures

This is exactly what happened to First Republic

## Perfect & Imperfect Capital Markets

## Lecture 12 Supplement
Thomas S. Coleman

Harris PPHA 42510

Applied Financial Management

26 April 2023; Draft April 16, 2023

## Outline
1 Modigliani & Miller Prop 1 - Capital Structure Irrelevance (BMA Ch 17)

Perfect Capital Markets

Carving up Cash Flows

"Unwinding" Leverage

M&M Proposition 1: Leverage Doesn't Matter

2 "Imperfect" Capital Markets

First View - "Perfect Markets" - M&M - Debt vs Equity Irrelevant

Second View - Interest Deductible, Go To Debt

Third View - Financial Distress & Trade-Off

Fourth View - Asymmetric Information & Debt

Final Synthesis

## What Are "Perfect Capital Markets"?
What do we mean by "Perfect" Capital Markets? (and "Efficient" Markets)?
- NOT "good" in a normative sense - specialized or technical meaning of "theoretical ideal or starting point"
- Nor "realistic" as in how markets actually behave

Three assumptions:

1 Complete Markets: Investors and firms trade securities at market prices, equal to PV of future CFs
2 No costs: no taxes, transactions costs, or issuance costs for trading securities
Financing does not change CFs: a firm's financing decisions do not change CFs generated by projects, and financing does not reveals new information about future CFs

## Value Of "Perfect Markets"
These assumptions clearly not realistic. Why is the whole idea useful?
- We get strong results: M&M Prop 1: capital structure - debt vs equity - does not matter
- We then can examine why capital structure matters - because of taxes? transaction costs?

General result for economic (and finance) theory: useful for pushing us to think about how and why the world works as it does
- We should see "Capital Structure doesn't matter" (M&M Prop 1)
- If it does matter, why?
- Some answers: interest taxes distort markets; bankruptcy is costly; information asymmetry

Modigliani & Miller Prop 1 - Capital Structure Irrelevance (BMA Ch 17)

Perfect Capital Markets

Carving up Cash Flows

"Unwinding" Leverage

M&M Proposition 1: Leverage Doesn't Matter

2 "Imperfect" Capital Markets

First View - "Perfect Markets" - M&M - Debt vs Equity Irrelevant

Second View - Interest Deductible, Go To Debt

Third View - Financial Distress & Trade-Off

Fourth View - Asymmetric Information & Debt

Final Synthesis

## Modigliani & Miller Proposition 1
M&M Prop 1: Value is Unchanged by Capital Structure
- Total Value of the Firm = PV of CFs
- This does not depend on choice of capital structure

We will see how this works by
- Looking at how firm carves up CFs with debt & equity

Changes risk of debt & equity CFs
- Does not change risk of overall CFs
- See that investors can recombine CFs in any way they want
- Investors can produce any risk profile they want, at no cost
- Investors won't pay the firm extra to carve up CFs.

Result: Capital Structure won't change value (M&M Prop 1)

## Capital Structure Carves Cfs

## Cfs Carved Between Debt And Equity Holders
Start from bottom (Firm CFs), go first to Debt, then Equity

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/009165264db17d056bc4339b798af4c5b58e250777dcc30d96856a37b89bb96f.jpg)

How CFs distributed make huge difference in CF risk
- Debt less risky than equity
- CFs go first to debt - if there is any money debt gets it
Equity is residual - only what is left over The residual is always more risky - some chance you get nothing

## Debt, Equity, Debt / Equity, And Leverage
Assets - Total of the firm, all assets, the overall vale of the firm

Equity - What owners or shareholders put in, what owners can lose

Debt - Borrowings, what owners borrow

Owners can choose to borrow (issue debt) - choose Debt / Equity ratio
- Split overall Assets into Debt versus Equity

## Important Concepts
Percent Debt

$$
\% D = \frac {D}{A} = \frac {D}{D + E}
$$

Debt-to-Equity

%Leverage

$$
\frac {\mathrm {D}}{\mathrm {E}} = \frac {\% \mathrm {D}}{1 - \% \mathrm {D}}
$$

Leverage

$$
\frac {\text {Assets}}{\mathrm {E}} = \frac {\mathrm {A}}{\mathrm {E}} = \frac {1}{1 - \% \mathrm {D}}
$$

## Examples
0%

50%

80%

0 or $0\%$

1 or $100\%$

4 or $400\%$

1 or 1-to-1
2 or 2-to-1
5_or 5-to-1

## In-Class Exercise: Co Ee Shop - Capital Structure Changes Risk
Initial firm value $30k. Two financing structures:
- All Equity (0% debt, D/E 0, leverage 1-to-1)
- $50\%$ Debt / $50\%$ Equity (??% debt, D/E??, leverage??-to-1)

TABLE15.

```latex
\begin{document}
\begin{tabular}{|c|}
\hline
Return to Equity in \\ \hline
Different Scenarios \\ \hline with and without \\ \hline
Leverage: \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
Coffee Shop & Security Cash Flows & Security Returns & & & & & \\ \hline
Demand & Free Cash Flows & Unlevered Equity & Debt & Levered Equity & Unlevered Equity & Debt & Levered Equity \\ \hline
Weak & $27,000 & $27,000 & $15,750 & $11,250 & -10\% & 5\% & -25\% \\ \hline
Expected & $34,500 & $34,500 & $15,750 & $18,750 & 15\% & 5\% & 25\% \\ \hline
Strong & $42,000 & $42,000 & $15,750 & $26,250 & 40\% & 5\% & 75\% \\ \hline
\end{tabular}
\end{document}
```

In-class Exercise: What is the standard deviation of

1 Unlevered Equity?
2 Debt & Levered Equity (on their own)?
3 Debt & Levered Equity (combined)?

## In-Class Exercise: Co Ee Shop - Capital Structure Changes Risk
Initial firm value $30k. Two financing structures:
- All Equity (0% debt, D/E 0, leverage 1-to-1)
- $50\%$ Debt / $50\%$ Equity (50% debt, D/E 1, leverage 2-to-1)

TABLE15.

```latex
\begin{document}
\begin{tabular}{|c|}
\hline
Return to Equity in \\ \hline
Different Scenarios \\ \hline with and without \\ \hline
Leverage: \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
Coffee Shop & Security Cash Flows & Security Returns & & & & & \\ \hline
Demand & Free Cash Flows & Unlevered Equity & Debt & Levered Equity & Unlevered Equity & Debt & Levered Equity \\ \hline
Weak & $27,000 & $27,000 & $15,750 & $11,250 & -10\% & 5\% & -25\% \\ \hline
Expected & $34,500 & $34,500 & $15,750 & $18,750 & 15\% & 5\% & 25\% \\ \hline
Strong & $42,000 & $42,000 & $15,750 & $26,250 & 40\% & 5\% & 75\% \\ \hline
\end{tabular}
\end{document}
```

In-class Exercise: What is the standard deviation of

1 Unlevered Equity?
2 Debt & Levered Equity (on their own)?
3 Debt & Levered Equity (combined)?

## In-Class Exercise: Co Ee Shop - Capital Structure Changes Risk
Initial firm value $30k. Two financing structures:
- All Equity (0% debt, D/E 0, leverage 1-to-1)
- $50\%$ Debt / $50\%$ Equity (50% debt, D/E 1, leverage 2-to-1)

TABLE15.

```latex
\begin{document}
\begin{tabular}{|c|}
\hline
Return to Equity in \\ \hline
Different Scenarios \\ \hline with and without \\ \hline
Leverage: \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
Coffee Shop & Security Cash Flows & Security Returns & & & & & \\ \hline
Demand & Free Cash Flows & Unlevered Equity & Debt & Levered Equity & Unlevered Equity & Debt & Levered Equity \\ \hline
Weak & $27,000 & $27,000 & $15,750 & $11,250 & -10\% & 5\% & -25\% \\ \hline
Expected & $34,500 & $34,500 & $15,750 & $18,750 & 15\% & 5\% & 25\% \\ \hline
Strong & $42,000 & $42,000 & $15,750 & $26,250 & 40\% & 5\% & 75\% \\ \hline
\end{tabular}
\end{document}
```

In-class Exercise: What is the standard deviation of

1 Unlevered Equity? std dev $= 35.4\% = \mathrm{sqrt}[((-10 - 15)\hat{2} +(40 - 15)\hat{2}) / 1]$
2 Debt & Levered Equity (on their own)?
3 Debt & Levered Equity (combined)?

## In-Class Exercise: Co Ee Shop - Capital Structure Changes Risk
Initial firm value $30k. Two financing structures:
- All Equity (0% debt, D/E 0, leverage 1-to-1)
- $50\%$ Debt / $50\%$ Equity (50% debt, D/E 1, leverage 2-to-1)

TABLE15.

```latex
\begin{document}
\begin{tabular}{|c|}
\hline
Return to Equity in \\ \hline
Different Scenarios \\ \hline with and without \\ \hline
Leverage: \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
Coffee Shop & Security Cash Flows & Security Returns & & & & & \\ \hline
Demand & Free Cash Flows & Unlevered Equity & Debt & Levered Equity & Unlevered Equity & Debt & Levered Equity \\ \hline
Weak & $27,000 & $27,000 & $15,750 & $11,250 & -10\% & 5\% & -25\% \\ \hline
Expected & $34,500 & $34,500 & $15,750 & $18,750 & 15\% & 5\% & 25\% \\ \hline
Strong & $42,000 & $42,000 & $15,750 & $26,250 & 40\% & 5\% & 75\% \\ \hline
\end{tabular}
\end{document}
```

In-class Exercise: What is the standard deviation of

1 Unlevered Equity? std dev $= 35.4\% = \mathrm{sqrt}[((-10 - 15)\hat{2} +(40 - 15)\hat{2}) / 1]$
2 Debt & Levered Equity (on their own)? D sd=0%; E sd=70.7%
3 Debt & Levered Equity (combined)?

## In-Class Exercise: Co Ee Shop - Capital Structure Changes Risk
Initial firm value $30k. Two financing structures:
- All Equity (0% debt, D/E 0, leverage 1-to-1)
- $50\%$ Debt / $50\%$ Equity (50% debt, D/E 1, leverage 2-to-1)

TABLE15.

```latex
\begin{document}
\begin{tabular}{|c|}
\hline
Return to Equity in \\ \hline
Different Scenarios \\ \hline with and without \\ \hline
Leverage: \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
Coffee Shop & Security Cash Flows & Security Returns & & & & & \\ \hline
Demand & Free Cash Flows & Unlevered Equity & Debt & Leveled Equity & Unlevered Equity & Debt & Leveled Equity \\ \hline
Weak & $27,000 & $27,000 & $15,750 & $11,250 & -10\% & 5\% & -25\% \\ \hline
Expected & $34,500 & $34,500 & $15,750 & $18,750 & 15\% & 5\% & 25\% \\ \hline
Strong & $42,000 & $42,000 & $15,750 & $26,250 & 40\% & 5\% & 75\% \\ \hline
\end{tabular}
\end{document}
```

In-class Exercise: What is the standard deviation of

1 Unlevered Equity? std dev $= 35.4\% = \mathrm{sqrt}[((-10 - 15)\hat{2} +(40 - 15)\hat{2}) / 1]$
2 Debt & Levered Equity (on their own)? D sd=0%; E sd=70.7%
3 Debt & Levered Equity (combined)? std dev=35.4%

## Coee Shop - Capital Structure Changes Risk
All Equity versus $50\%$ Debt / $50\%$ Equity (50% leverage)

## Table15.1
Return to Equity in Different Scenarios with and without Leverage:

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
Coffee Shop & Security Cash Flows & Security Returns & & & & & \\ \hline
Demand & Free Cash Flows & Unlevered Equity & Debt & Levered Equity & Unlevered Equity & Debt & Levered Equity \\ \hline
Weak & $27,000 & $27,000 & $15,750 & $11,250 & -10\% & 5\% & -25\% \\ \hline
Expected & $34,500 & $34,500 & $15,750 & $18,750 & 15\% & 5\% & 25\% \\ \hline
Strong & $42,000 & $42,000 & $15,750 & $26,250 & 40\% & 5\% & 75\% \\ \hline
\end{tabular}
\end{document}
```
- With leverage, Equity gets higher exp ret and higher std dev
- Combined Debt + Levered Equity is the same as original Unlevered Equity

1 Modigliani & Miller Prop 1 - Capital Structure Irrelevance (BMA Ch 17)

Perfect Capital Markets

Carving up Cash Flows

"Unwinding" Leverage

M&M Proposition 1: Leverage Doesn't Matter

2 "Imperfect" Capital Markets

First View - "Perfect Markets" - M&M - Debt vs Equity Irrelevant

Second View - Interest Deductible, Go To Debt

Third View - Financial Distress & Trade-Off

Fourth View - Asymmetric Information & Debt

Final Synthesis

## "Unwinding" Leverage
We will play a simple game: the firm takes CFs apart, we (investors) put them back together

Start from bottom (Firm CFs), split into Debt & E

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/03cb2dfa2a0f6e1e9fdd4fcdc5faca7fc1654c8838abf189359502b72879f02d.jpg)

With no transaction costs we can easily do this

## Next Step – “Do-It-Yourself Leverage”
But there is more – Investors can create any leverage (risk profile) they want Example from BMA, Table 17.2 & 17.3 – Macbeth Spot Removers

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Number of shares & 1000 \\ \hline
Price per share & $10 \\ \hline
Mkt value of shares & $10,000 \\ \hline
\end{tabular}
\end{document}
```

ExpRet $= 12.5$ StdDev $= 6.45$

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
 & A & B & C & D \\ \hline
Operating Income & $500 & $1,000 & $1,500 & $2,000 \\ \hline
Earnings per share & $0.50 & $1.00 & $1.50 & $2.00 \\ \hline
Return on shares (\%) & 5\% & 10\% & 15\% & 20\% \\ \hline
\end{tabular}
\end{document}
```

Macbeth realizes some investors want more return (and risk), so they decide to lever
- Arguethatinvestorswillpaymore(higherstockprice)

## Firm Realizes Investors Want More Risk
Will investors pay more? Start with same price $10/share
- Shift to 50/50 debt/equity
- Issue $5,000 debt (10% interest), repurchase 500 share
Equity now more risky

Exercise: what would be equity return & std dev if share price still $10

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Number shares & 500 \\ \hline
Price per share & $10 \\ \hline
Mkt value of shares & $5,000 \\ \hline
Mkt value of debt & $5,000 \\ \hline
\end{tabular}
\end{document}
```

Original ExpRet $= 12.5$ StdDev $= 6.45$ "FirmLeverage"ExpRet $=$, StdDev $=$

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
 & A & B & C & D \\ \hline
Operating Income & $500 & $1,000 & $1,500 & $2,000 \\ \hline
Interest & $500 & $500 & $500 & $500 \\ \hline
Equity Earnings & $0 & 500 & 1,000 & 1,500 \\ \hline
Earnings per share & $0 & $1 & $2 & $3 \\ \hline
&quot;Firm Leverage&quot; (\%) & 0\% & 10\% & 20\% & 30\% \\ \hline
No Leverage & 5\% & 10\% & 15\% & 20\% \\ \hline
\end{tabular}
\end{document}
```

Will investors pay more?

## Firm Realizes Investors Want More Risk
Will investors pay more? Start with same price $10/share
- Shift to 50/50 debt/equity
- Issue $5,000 debt (10% interest), repurchase 500 share
Equity now more risky

Exercise: what would be equity return & std dev if share price still $10

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Number shares & 500 \\ \hline
Price per share & $10 \\ \hline
Mkt value of shares & $5,000 \\ \hline
Mkt value of debt & $5,000 \\ \hline
\end{tabular}
\end{document}
```

Original ExpRet $= 12.5$ StdDev $= 6.45$ "Firm Leverage"ExpRet $= 15$ StdDev $= 12.9$

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
 & A & B & C & D \\ \hline
Operating Income & $500 & $1,000 & $1,500 & $2,000 \\ \hline
Interest & $500 & $500 & $500 & $500 \\ \hline
Equity Earnings & $0 & 500 & 1,000 & 1,500 \\ \hline
Earnings per share & $0 & $1 & $2 & $3 \\ \hline
“Firm Leverage” (\%) & 0\% & 10\% & 20\% & 30\% \\ \hline
No Leverage & 5\% & 10\% & 15\% & 20\% \\ \hline
\end{tabular}
\end{document}
```

Will investors pay more?

## Do-It-Yourself Risk
But will investors pay more than $10 for levered shares? Turns out NO What if you have$ 10, borrow $10, buy 2 shares? (10% interest)

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Total no shares & 1000 \\ \hline
Price per share & $10 \\ \hline
Your investment & $10 \\ \hline
Your no shares & 2 \\ \hline
\end{tabular}
\end{document}
```

Original ExpRet $= 12.5$ StdDev $= 6.45$ "Firm Leverage"ExpRet $= 15$ StdDev $= 12.9$ "Investor Leverage"ExpRet $= \mathrm{~~\textit{~~\mu~}~}$, StdDev $=$

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
 & A & B & C & D \\ \hline
Operating Income & $500 & $1,000 & $1,500 & $2,000 \\ \hline
Earnings per share & $0.50 & $1.00 & $1.50 & $2.00 \\ \hline
Return on shares (\%) & 5\% & 10\% & 15\% & 20\% \\ \hline
Your Earnings & $0 & $1 & $2 & $3 \\ \hline
&quot;Investor Leverage&quot; (\%) & & & & \\ \hline
&quot;Firm Leverage&quot; (above) & 0\% & 10\% & 20\% & 30\% \\ \hline
\end{tabular}
\end{document}
```

## Do-It-Yourself Risk
But will investors pay more than $10 for levered shares? Turns out NO What if you have$ 10, borrow $10, buy 2 shares? (10% interest)

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Total no shares & 1000 \\ \hline
Price per share & $10 \\ \hline
Your investment & $10 \\ \hline
Your no shares & 2 \\ \hline
\end{tabular}
\end{document}
```

Original ExpRet $= 12.5$ StdDev $= 6.45$ "Firm Leverage"ExpRet $= 15$ StdDev $= 12.9$ "Investor Leverage"ExpRet $= 15$ StdDev $= 12.9$

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
 & A & B & C & D \\ \hline
Operating Income & $500 & $1,000 & $1,500 & $2,000 \\ \hline
Earnings per share & $0.50 & $1.00 & $1.50 & $2.00 \\ \hline
Return on shares (\%) & 5\% & 10\% & 15\% & 20\% \\ \hline
Your Earnings & $0 & $1 & $2 & $3 \\ \hline
&quot;Investor Leverage&quot; (\%) & 0\% & 10\% & 20\% & 30\% \\ \hline
&quot;Firm Leverage&quot; (above) & 0\% & 10\% & 20\% & 30\% \\ \hline
\end{tabular}
\end{document}
```

Exactly same as levered equity, but done by investor
- Investor can do it no cost ("Perfect" markets) so won't pay firm to do it

1 Modigliani & Miller Prop 1 - Capital Structure Irrelevance (BMA Ch 17)

Perfect Capital Markets

Carving up Cash Flows

"Unwinding" Leverage

M&M Proposition 1: Leverage Doesn't Matter

2 "Imperfect" Capital Markets

First View - "Perfect Markets" - M&M - Debt vs Equity Irrelevant

Second View - Interest Deductible, Go To Debt

Third View - Financial Distress & Trade-Off

Fourth View - Asymmetric Information & Debt

Final Synthesis

## Conclusion: M&M Proposition 1 – Leverage Irrelevant
Debt versus Equity is irrelevant

"Do-it-yourself leverage"
- Investors can do or undo whatever the firm does

Dependent on

1 Complete Markets: Investors and firms trade securities at market prices, equal to PV of future CFs
2 No costs: no taxes, transactions costs, or issuance costs for trading securities
Financing does not change CFs: a firm's financing decisions do not change CFs generated by projects, and financing does not reveals new information about future CFs

## Wacc As Result Of Prop 1
M&M Prop 1 says overall value of the firm does not depend on debt versus equity. So now go back to simple game of carving and recombining CFs:

The firm takes CFs apart,
- We (investors) put them back together

But "reconstituted CFs" is a portfolio of Debt & Equity CFs. And we know portfolio return is weighted average of components:

$$
E R _ {\text {p o r t}} = \quad {} _ {1} E R _ {1} + \quad {} _ {2} E R _ {2}
$$

$$ r _ {u} = r _ {\text {a s s e t s}} = \frac {D}{E + D} r _ {D} + \frac {E}{E + D} r _ {E}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/a1e8d2bffaedb947f8ca0b13b8788d6bdd60341f039de7973b66001c8718dfe9.jpg)

## Expected Returns
As Debt-Equity ratio increases, expected return on equity increases. Eventually, so does debt (as it becomes more risky)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/c9ad92b3821a40c5c22a5b446e79d08874473d39877c4b9d2898524acad1ac70.jpg)

1 Modigliani & Miller Prop 1 - Capital Structure Irrelevance (BMA Ch 17)

Perfect Capital Markets

Carving up Cash Flows

"Unwinding" Leverage

M&M Proposition 1: Leverage Doesn't Matter

2 "Imperfect" Capital Markets

First View - "Perfect Markets" - M&M - Debt vs Equity Irrelevant

Second View - Interest Deductible, Go To Debt

Third View - Financial Distress & Trade-Off

Fourth View - Asymmetric Information & Debt

Final Synthesis

## M&M Prop 1 – But Capital Structure Does Matter
Under "Perfect" capital markets
- Investors can provide "Do-it-Yourselves" leverage
- Will not pay extra for leveraging (or de-leveraging)

Capital Structure should be random - no industry patterns

Not True
- Some industries (internet like Google) borrow nothing
- Others (airlines) borrow a lot

Why? Don't throw out theory - use M&M to understand

Example of economic theory deepening our understanding of the world
- Taxes, bankruptcy costs, information asymmetry

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/dc15f07a6508b12437c46ec9c8a686d012559b420c909beb33c1fa2abe9c7ff2.jpg)

1 Modigliani & Miller Prop 1 - Capital Structure Irrelevance (BMA Ch 17)

Perfect Capital Markets

Carving up Cash Flows

"Unwinding" Leverage

M&M Proposition 1: Leverage Doesn't Matter

2 "Imperfect" Capital Markets

First View - "Perfect Markets" - M&M - Debt vs Equity Irrelevant

Second View - Interest Deductible, Go To Debt

Third View - Financial Distress & Trade-Off

Fourth View - Asymmetric Information & Debt

Final Synthesis

## Interest "Tax Shield"
Debt provides real CFs - In US (and many others) interest is tax deductible.

Income with no debt versus some debt

```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline
 & Unlevered & Levered \\ \hline
CF ( &amp; earn) before interest &amp; tax & 100 & 100 \\ \hline
Interest to bondholders & 0 & 8 \\ \hline
Pretax Income & 100 & 92 \\ \hline
Tax, 21\% & 21 & 19.32 \\ \hline
Net income to shareholders & 79 & 72.68 \\ \hline
Total income to stock + bond & 0+79=79 & 8+72.68=80.68 \\ \hline
Interest tax shield (0.21*interest) & 0 & 1.68 \\ \hline
\end{tabular}
\end{document}
```

Simple idea: government gives cash: subsidy

Recurring story: government actions (well-intentioned) distort markets M&M says "how you slice the pie doesn't matter"
- Yogi Berra: Pizza's delivered. "Slice into eight pieces - I'm hungry" Here it matters - gov't subsidizes debt with extra cash

## Interest "Tax Shield"
Debt provides real CFs - In US (and many others) interest is tax deductible.

Income with no debt versus some debt

```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline
 & Unlevered & Levered \\ \hline
CF ( &amp; earn) before interest &amp; tax & 100 & 100 \\ \hline
Interest to bondholders & 0 & 8 \\ \hline
Pretax Income & 100 & 92 \\ \hline
Tax, 21\% & 21 & 19.32 \\ \hline
Net income to shareholders & 79 & 72.68 \\ \hline
Total income to stock + bond & 0+79=79 & 8+72.68=80.68 \\ \hline
Interest tax shield (0.21*interest) & 0 & 1.68 \\ \hline
\end{tabular}
\end{document}
```

Example: Interest $8, "tax shield" = 0.21 * $8

Call this "tax shield" because shielded from taxes

Extra income firm can pay to investors instead of gov't

Essentially a gov't subsidy for debt (vs equity)

Less than before 2017 - US rate was $35\%$

## M&M With Tax Shield – Gov'T Subsidizes Debt
M&M Prop 1 says value of firm does not depend on debt versus equity

But we know tax shield has value

The firm takes CFs apart,
- We (investors) put them back together

No taxes:

Firm CFs Debt $^+$ Equity
- Investors take Debt + Equity Firm CFs

Yes taxes, Net out tax shield PV

Firm CFs Debt $^+$ Equity $^+$ Taxes
- Investors take Debt + Equity Firm CFs - Taxes

For Debt, Gov't gives some taxes back
- With debt, get CF of tax shield, $T_{c_i}$ Int

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/6d00d9fb9bdcc5ef8a69cbd08b4f0426fd8c3f381fd7ef5724a15d2dcda88f7d.jpg)

## In-Class Exercise: Tax Shield As Government Subsidy – Pv Tax Shield
In M&M (no taxes) there are two slices to the pizza: debt & equity
- Taxes: third slice (government) matters because you get cash back on debt
Higher debt higher firm value; part of government slice firm

Fun result: PV(tax shield) = TC i D
- Yrly CF = Tc i D i r, every yr forever (annuity)
PV Annuity $= \mathsf{CF} / \mathsf{r} = \mathsf{T}_{\mathsf{c}}|\mathsf{D}|_{\mathsf{r}} / \mathsf{T}_{\mathsf{c}}|\mathsf{D}$

Example: Johnson & Johnson (Smn) - BMA Section 18-1, p 449

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
Assets Market Value & Liabilities Market Value & & \\ \hline
Net Working Cap & 31,757 & 13,031 & Long-term Debt \\ \hline
PV Interest Tax Shld & 2,737 & 15,577 & Other long-term Liab \\ \hline
Long-term Assets & 160,335 & 166,221 & Equity \\ \hline
Total Assets & 194,829 & 194,829 & Total Value \\ \hline
\end{tabular}
\end{document}
```

## In-Class Exercise: Tax Shield As Government Subsidy – Pv Tax Shield
Now let's move $10,000mn from Equity to Debt. In-class Exercise Market value liabilities: Borrow additional$ 10,000 (increase "LT Debt")

• PV Tax Shield: D=$10,000, Tc = 21%, PV(tax shield) = Tc i D
- Add this to the original $2,737 to get new PV Tax Shield
Calculate MV of "Total Assets"
- MV "Total Assets" = MV "Total Liabilities"

Example: Johnson & Johnson (Smn) - BMA Section 18-1, p 449

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
Assets Market Value & Liabilities Market Value & & \\ \hline
Net Working Cap & 31,757 & 23,031 & Long-term Debt \\ \hline
PV Interest Tax Shld &? & 15,577 & Other long-term Liab \\ \hline
Long-term Assets & 160,335 & & Equity \\ \hline
Total Assets &? &? & Total Value \\ \hline
\end{tabular}
\end{document}
```

## In-Class Exercise: Tax Shield As Government Subsidy – Pv Tax Shield
Now let's move $10,000mn from Equity to Debt. In-class Exercise Market value liabilities: Borrow additional$ 10,000 (increase "LT Debt")

• PV Tax Shield: D=$10,000, Tc = 21%, PV(tax shield) = Tc i D
- Add this to the original §2.737 to get new PV Tax Shield
Calculate MV of "Total Assets"
- MV "Total Assets" = MV "Total Liabilities"
- MV "Total Value" up - government gives cash back
- Back out MV "Equity"

Example: Johnson & Johnson (Smn) - BMA Section 18-1, p 449

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
Assets Market Value & Liabilities Market Value & & \\ \hline
Net Working Cap & 31,757 & 23,031 & Long-term Debt \\ \hline
PV Interest Tax Shld & 4,837 & 15,577 & Other long-term Liab \\ \hline
Long-term Assets & 160,335 &? & Equity \\ \hline
Total Assets & 196,929 & 196,929 & Total Value \\ \hline
\end{tabular}
\end{document}
```

## In-Class Exercise: Tax Shield As Government Subsidy – Pv Tax Shield
Now let's move $10,000mn from Equity to Debt. In-class Exercise Market value liabilities: Borrow additional$ 10,000 (increase "LT Debt")

• PV Tax Shield: D=$10,000, Tc = 21%, PV(tax shield) = Tc i D
- Add this to the original §2.737 to get new PV Tax Shield
Calculate MV of "Total Assets"
- MV "Total Assets" = MV "Total Liabilities"
- MV "Total Value" up - government gives cash back
- Back out MV "Equity"
 Shareholders win by $2,100. Why?
- Get $10,000 from issuing new bond, MV equity down by only $7,900

Example: Johnson & Johnson (Smn) - BMA Section 18-1, p 449

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
Assets Market Value & Liabilities Market Value & & \\ \hline
Net Working Cap & 31,757 & 23,031 & Long-term Debt \\ \hline
PV Interest Tax Shld & 4,837 & 15,577 & Other long-term Liab \\ \hline
Long-term Assets & 160,335 & 158,321 & Equity \\ \hline
Total Assets & 196,929 & 196,929 & Total Value \\ \hline
\end{tabular}
\end{document}
```

## Value Of Tax Shield
MV of debt up by $10,000mn, but MV of equity only down$ 7,900mn.

PV(tax shield) = tax rate * Debt (Tc*D) = 0.21*$10,000 = $2,100mn
- Why $\mathrm{Tc^{*}D}$ and not $\mathrm{Tc^{*}D^{*}r?}$ (yearly amount - tax rate * amount of debt * interest payment)
- Assume tax (and debt) will be there forever.
PV perpetuity $= \mathrm{{CF}}/\mathrm{r}$

Refined version of M&M Prop 1 (Debt Irrelevance):

Value of firm = value if all-equity-finance + PV(tax shield)

PV(tax shield) as debt
- Argues that firms should go to $100\%$ debt-financed
Clearly not true

Look at Costs of high debt (bankruptcy)

## Taxes Subsidize Debt, But Firms Not All Debt

## We Don'T See Firms Using All Debt
- Some industries (internet like Google) borrow nothing
- Others (airlines) borrow a lot

Need to dig deeper, understand why industries vary

Example of economic theory deepening our understanding of the world
- Taxes partial, turn to bankruptcy costs, information asymmetry

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Industry & Median Book Debt Ratio \\ \hline
Internet information providers & 0.00 \\ \hline
Major integrated oil and gas & 0.10 \\ \hline
Semiconductors & 0.11 \\ \hline
Communication equipment & 0.16 \\ \hline
Biototechnology & 0.17 \\ \hline
Consumer appliances & 0.21 \\ \hline
Railroads & 0.40 \\ \hline
Gas utilities & 0.45 \\ \hline
Hotels & 0.56 \\ \hline
Airplanes & 0.96 \\ \hline
\end{tabular}
\end{document}
```

1 Modigliani & Miller Prop 1 - Capital Structure Irrelevance (BMA Ch 17)

Perfect Capital Markets

Carving up Cash Flows

"Unwinding" Leverage

M&M Proposition 1: Leverage Doesn't Matter

2 "Imperfect" Capital Markets

First View - "Perfect Markets" - M&M - Debt vs Equity Irrelevant

Second View - Interest Deductible, Go To Debt

Third View - Financial Distress & Trade-Off

Fourth View - Asymmetric Information & Debt

Final Synthesis

## What Pushes Away From $100\%$ Debt?
We don't see really high debt ratios (in most industries)

Good evidence firms don't fully exploit tax shield

Major reason - cost of debt and cost of Financial Distress

BUT - this is not "Bankruptcy" alone
- Monetary costs associated with bankruptcy itself
Games played before bankruptcy

## Bankruptcy
Bankruptcy is a beautiful thing - part of the power of free markets
- Debt is a promise - we all know it may get broken
- Nothing wrong with bankruptcy, when try honestly and fail

What is bankruptcy?

Shareholders admit that the value of assets less than promises made
- Pass assets to debt-holders - debtholders become new owners

Simple act of bankruptcy not a "cost" - don't get confused by loss in bankruptcy

Enron (p. 465) - at peak stock worth $60bn+. By end-2001 worthless.
- Not $60bn "loss" - Enron was worthless at peak (fraud), just didn't know it.
- Actually some "shorters" did know - huge service for all of us, hard work of ferreting out problems the rest of us are too lazy to uncover

Bankruptcy is simple and wonderful part of capitalism

## Financial Distress
Financial Distress is more the simple Bankruptcy:

Promises to creditors are honored with di culty (imposing costs)

Costs of bankruptcy
- Direct costs, such as lawyers, accountants
- Indirect costs - eg customers and employees may leave

Games - that destroy value - played before bankruptcy

Before, when probability high, substantial costs
Shareholders try and extract value from debtholders
- Simple transfer would be OK, but this destroys value

## Bankruptcy Costs
Bankruptcy can be long, expensive process
- Direct costs - Pay lawyers, accountants

Enron - $757mn in legal, accounting, other
- Lehman - likely as much as $1,500mn
- Indirect costs - many - eg customers, employees leave
- Big issue in 2008 financial crisis - huge disruption when financial firm goes under

## Evidence
- difficult to separate, but cost might something like $3 \%$ of total (book) assets, $20 \%$ of market value of equity
- Best evidence - reluctance of creditors to push insolvent firms (MV assets $<$ MV liabilities) into bankruptcy (transfer assets to creditors)

Often, creditors would rather have managers and shareholders try to get back to health

## Financial Distress – Games People Play
Economics teaches us to think about Incentives

Before bankruptcy, probability high, substantial costs.
- Diverging incentives: pushes people to play "games"
- Individually optimal (for shareholders), but destroy firm value

Game 1 - Risk Shifting

Shareholders take on extra risk

Other games
- Failure to contribute equity capital
Cash in and run
- Play for time

Costs of Financial Distress with level of debt

Costs of Distress vary with type of asset
- Airplanes - physical asset, easy to re-sell, won't lose value
- Trading franchise - disappears over a weekend (Lehman in 2008)

## Risk Shifting - Equity As Call
Powerful idea: Equity is call option on firm value

Shareholders get profits if Assets > Debt
Shareholders walk away for free if Assets $<$ Debt

From seminal paper by Merton (1974) - Corporate debt as put option

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/97a137114ad3c48db3cce3446eda373dbde2e7b708cfd32d2e731cefc1e9d0e3.jpg)

Stock - call option "hockey stick" - Long

Assets $<$ B (debt) shareholders get 0
- Assets > B, shareholders get upside Bond - put option "hockey stick" - Short
- Assets $<$ B bondholders get assets
- Assets > B bondholders get repaid B

Nothing "unfair" about this; Up-front PV reflects option values
- But provides incentive for games around B (bankruptcy)

## Option Value As Volatility
Stock: Long Call; Bond: Short Put: Option value as Volatility

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/664cbb3c9ef2d2ef2fcfb4f828979f99a0d27a0af110baa93d972851f54eb417.jpg)

See this looking at:
- Black-Scholes option formula -
Assets just $< \mathrm{B}$ I win if, you lose if Shareholders want to increase volatility: Call, Put

Example: Assets $< \mathrm{B}$, but interest not due for another year

Shareholders can take on negative NPV project that has slight chance of moving Assets > B
- Destroys value, but shareholders have nothing to lose

## Risk Shifting Example
"Circular File Co.": Owe debt §50: insolvent now but debt due next year

• Bonds worth $25 (< promised $50) - need option model to get value

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
Circular File Co. Before Negative NPV & & & \\ \hline
Net Working Cap & $20 & $25 & Bonds \\ \hline
Fixed assets & $10 & $5 & Common stock \\ \hline
Total assets & $30 & $30 & Total value \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
Circular File Co. After Negative NPV & & & \\ \hline
Net Working Cap & $10 & $20 & Bonds \\ \hline
Fixed assets & $18 & $8 & Common stock \\ \hline
Total assets & $28 & $28 & Total value \\ \hline
\end{tabular}
\end{document}
```

Negative NPV Project: $10 investment, 10% chance $120,90% lose $3.56;

EV = $8.80
Disc $10\%$, EPV = $8

Shareholders do it

• 10% win: get $80: 120 + 10 (existing) - 50 (debt)
- $90\%$ lose: get zero anyway

Destroy $2 worth of firm value – but shareholders better o

## Other Games

## Failure To Contribute Equity Capital
- Flip side to "Risk Shifting" - do not invest in positive NPV project - because not enough to push Assets > B (won't dig firm out of the hole)

## Cash In And Run
Try to suck cash out
- Bankruptcy court can claw back fraudulent conveyance - but subtle ways to extract cash

## Play For Time
- Delay bankruptcy and hope something good will happen
- Meantime, assets waste away

## Debt Versus Distress
Debt tax savings, but also prob of bankruptcy (moves up B, bankruptcy threshold)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/0818037cfad9921afbfa306670a5e7f110fc96a01d26edea9aca315233fe0531.jpg)

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Industry & Debt Ratio \\ \hline
Comm Eqpt & 0.16 \\ \hline
Consumer Elect & 0.21 \\ \hline
Airlines & 0.96 \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Company & Equity/Value \\ \hline
Delta & 0.29 \\ \hline
Southwest & 0.76 \\ \hline
Jet Blue & 0.32 \\ \hline
Continental & 0.25 \\ \hline
\end{tabular}
\end{document}
```

Tradeo between tax benefits & bankruptcy costs
- Easy-to-sell assets (lower cost in bankruptcy) should have higher debt
- Compare computer businesses (assets = human capital that can walk – low debt) vs airlines (planes easy to sell – high debt)

Explains many observations
- Industry differences - high-tech vs airlines

But not complete story - many successful firms use little debt
- Southwest Airlines, largely equity-financed (2009)

1 Modigliani & Miller Prop 1 - Capital Structure Irrelevance (BMA Ch 17)

Perfect Capital Markets

Carving up Cash Flows

"Unwinding" Leverage

M&M Proposition 1: Leverage Doesn't Matter

2 "Imperfect" Capital Markets

First View - "Perfect Markets" - M&M - Debt vs Equity Irrelevant

Second View - Interest Deductible, Go To Debt

Third View - Financial Distress & Trade-Off

Fourth View - Asymmetric Information & Debt

Final Synthesis

## Asymmetric Information Pushes To Debt
Asymmetric Information: firm cannot transmit information believably

Two firms: Jones, Inc. (optimistic) and Smith & Co. (pessimistic)
- Jones has trouble convincing investors (all firms say good things)

Now they want to raise capital. Round 1:
- Jones (optimistic) sells debt since equity is "underpriced"
- Smith (pessimistic) issues equity since it is "overpriced"

Round 2:
- Investors take information from Smith, realize equity overpriced

Round 3:
- Smith sells debt instead, since selling equity would be bad-news signal

Result: Both firms pushed towards debt

## End Result - "Pecking Order"
Firms prefer internal finance - reinvesting earnings so don't have to issue new equity
- If have to raise external finance, start with debt, then equity as last resort

1 Modigliani & Miller Prop 1 - Capital Structure Irrelevance (BMA Ch 17)

Perfect Capital Markets

Carving up Cash Flows

"Unwinding" Leverage

M&M Proposition 1: Leverage Doesn't Matter

2 "Imperfect" Capital Markets

First View - "Perfect Markets" - M&M - Debt vs Equity Irrelevant

Second View - Interest Deductible, Go To Debt

Third View - Financial Distress & Trade-Off

Fourth View - Asymmetric Information & Debt

Final Synthesis

## Final Synthesis
Neither "Trade-o" nor "Pecking Order" are perfect

Some evidence by Raghuram Rajan & Luigi Zingales (Booth), found 4 factors matter:

$\oplus$ Size: Large firms higher debt (Trade-o)
2 Tangible Assets: more fixed assets, higher debt (Trade-o)
$\Theta$ Profitability: more profitable, lower debt (Pecking Order, can use internal)
Market-to-Book: higher market-to-book, lower debt

Not perfect, but we have come a long way in understanding capital markets using our assumption of "Perfect Capital Markets"
- M&M not "true" but incredibly useful

## E Cient Markets
Lecture 12

Thomas S. Coleman

26 April 2023; Draft May 3,2023

## Outline
1 Efficient Markets and Random Walks 1
2 Random Walks and Simple Econometrics 3

2.1 Simple Econometrics Example 6

3 Returns and Normality 7
4 Idea of Price E ciency in Finance 11
5 Five Lessons of Market E ciency 14
6 Evidence Against Market E ciency 17
7 Modigliani & Miller Prop 1 - Capital Structure Irrelevance (BMA Ch 17) 17

7.1 Perfect Capital Markets 18
7.2 Carving up Cash Flows 19

## 1 E Cient Markets And Random Walks
How to Think About Financial Prices: Changes or Levels

Known: Price today $\mathsf{P}_0$ Unknown: Price tomorrow $\mathsf{P}_1$

Unknown Change $= \mathsf{P}_1 - \mathsf{P}_0$

We know $\mathsf{P}_0$, but both $\mathsf{P}_1$ and are unknown (RVs or Random Variables)
- Say we want to forecast $\mathsf{P}_1$ (buy if $\mathsf{P}_1$ higher)
- Should we try to forecast $\mathsf{P}_1$ (price tomorrow)? or (changes)?

Natural temptation: Forecast $\mathsf{P}_1$ directly
- Actually wrong
- Far better to think about change from today to tomorrow,

Level: $P_{1}$

Change $= P_{1} - P_{0}$

## Changes & "E Cient Market"
Working with changes $= \mathsf{P}_1 - \mathsf{P}_0$ forces us to think about New Information
- Why is tomorrow's price different (from today)?
- Fundamental idea: because of new information

Old news shows up in old price $(\mathsf{P}_0)$
- Why wait, why not use existing news (today) in existing price (today)

Saying something important about markets

1. You can make money using more and better information than others
2. There are many people trying to make money (by using information)
3. So information gets used quickly

There is no (or very little) "left over" information that is not used today
- Only "new information" changes tomorrows price

"E cient Markets" or Random Walk: People Trying to Make Money

People try to make money
- So use information quickly
- So only new information changes price
- All of today's information in today's price

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/789578b411279091fad35b90373abaead0ef47b7c473dd09b8ba18dbf4e07a50.jpg)

This is (or was) a pretty revolutionary idea
- A big surprise, discovered by various people, at various times
- Maurice Kendall in 1953, Louis Bachellier in 1900, French broker Jules Regnault in 1863

Makes sense - at least for liquid markets with lots of people and lots of money
- Not so true for obscure markets - say eBay for egg coddlers

"Efficient Markets" or Random Walk: Simple yet Powerful Efficient Market:
- Current price embeds all information
Tomorrow's price depends on new information

Random Walk:
- Price changes $= \mathsf{P}_1 - \mathsf{P}_0$ are purely random

Two ways of saying the same thing

Simple yet Powerful:
- Simple idea: people try to make money
- Powerful idea: cannot forecast tomorrow's price using today's information

## 2 Random Walks And Simple Econometrics Contents
Simple Random Walk: Easy But Often Fools Us

Known: Price today $\mathsf{P}_0$ Unknown: Price tomorrow $\mathsf{P}_1$

Unknown Change $= \mathbf{P}_1 - \mathbf{P}_0$

Random walk is simplest statistical model for changes
- Flip a coin:
- heads: go up, $= +1$; $\mathsf{P}_1 = \mathsf{P}_0 + 1$;
-tails: go down, $= -1;\mathsf{P}_1 = \mathsf{P}_0 - 1$

Simplest statistical model for Price change (today to tomorrow)
- Change completely random
- Cannot forecast change

Amazing: Random Walk Looks Like "Bull & Bear" Markets Random Walk: flip a coin: heads go +1, tails go -1

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/13c180245c22079f807570e8d44cf1c521b48bf6b9073d9b7f8fd68c82674295.jpg)

Feller Volume I figure 4
- Anyone would swear there are trends - Bull markets, Bear markets
- But completely random

Easy to be Fooled by Random Walks - Spurious Correlation
Random Walks fool us in many ways
Bad enough being fooled into "seeing" market trends
- Can be even worse when try to uncover relations among random walks

Say we want to test whether bonds and equities move together
- First idea: Regress equities vs bonds:

$$
\mathsf {P} _ {\mathrm {t}} ^ {\text {b o n d}} = + \mid \mathsf {P} _ {\mathrm {t}} ^ {\text {e q u i t y}} + \mathrm {t}
$$
- If you're not careful with statistics, you get completely misled

Spurious Regression / Correlation - Simulation

So let's run a simulation: generate simulated $\mathsf{P}_{\mathsf{t}}^{\mathrm{equity}}$ & $\mathsf{P}_{\mathsf{t}}^{\mathrm{bond}}$ (200 obs, 200 "months"):

$$
\mathsf {P} _ {\mathrm {t}} ^ {\text {e q u i t y}} = \mathsf {P} _ {\mathrm {t - 1}} ^ {\text {e q u i t y}} + \quad_ {\mathrm {t}} \qquad \mathsf {N} (0,4) \qquad \mathsf {P} _ {\mathrm {t}} ^ {\text {b o n d}} = \mathsf {P} _ {\mathrm {t - 1}} ^ {\text {b o n d}} + \quad_ {\mathrm {t}} \qquad \mathsf {N} (0,1)
$$ then run regression $\mathsf{P}_{\mathrm{t}}^{\mathrm{bond}} = +\mathsf{i}\mathsf{P}_{\mathrm{t}}^{\mathrm{equity}} + \mathsf{u}_{\mathrm{t}}$, and repeat many times (1000 separate regressions)
- RStudio Notebook SimRandomWalk1. Rmd &.nb.html on Canvas (files)

Textbooks tell us that $5\%$ of our sample (50 regressions) t-ratio $\frac{\pm - 0}{\overline{SE}}$ should be large (outside of $\pm 1.972$ )

This regression shows wildly different results:The simulation has $85\%$ outside the bands
- The theory is wildly wrong for these random walks - it simply does not apply
- Technical issue: $t$ not independent - violates regression assumptions

Random walks are not well-behaved – never ever run levels regressions for random walks
- Originally discussed by Granger and Newbold, 1974. Spurious regressions in econometrics. Journal of Econometrics. see also https://davegiles.blogspot.com/2015/10/illustrating-spurious-regressions.html

## Spurious Correlations - Levels, Trends, And Random Walks

![](Https://Cdn-Mineru. Openxlab. Org. Cn/Result/2025-11-15/3C07Ddea-Cb45-4Eb2-Bd23-F544B33F30B6/F3853B9C1Eed0B079Beda399Fd45Deabe379F6Dfbf8F3C7850E9A0B5F5581D17. Jpg)

Divorce rate in Maine
Per capita consumption of margarine correlation 0.9926

## Note The Trend - Both Are Going Down
- Probably for completely unrelated reasons
- But the downward trends dominate

## And Random Walks Are Everywhere
One of the primary instances: Financial Prices
- $\mathsf{P}_{t + 1} = \mathsf{P}_t + \mathsf{\Omega}_{t + 1}$: tomorrow's price is today plus new information
- If you have information today you're going to use it now - if you wait you will lose money
- All today's information ( ${}_{\mathrm{t}}$ ) is put into today's price
Tomorrow's price depends only on new information

Many (most) economic times series (GDP, prices, employment, on-and-on) behave very much like random walks

Tomorrow's value is today's plus a random component

## What To Do? Regress First Dierence Or $\%$ Change
So what do we do, given our simulations? (the level regression $\Upsilon_{t} = +X_{t} + e_{t}$ is wildly wrong)

Never, ever, run economic time-series in levels - always % change or difference:

$$
Y _ {t} - Y _ {t - 1} = + \left(X _ {t} - X _ {t - 1}\right) + e _ {t}
$$
- Not quite true - you want to examine whether your economic time-series is (close to) a random walk
- Unemployment rate, for example, does not look like a random walk. But employment (number of people) does
- John Cochrane (a really good economist, now at Hoover at Stanford) has a good blog post: https://johnhcochrane.blogspot.com/2015/04/unit-rootsRedux.html

### 2.1 Simple Econometrics Example
1-Slide Introduction to Time-Series Econometrics

Huge area of statistics, econometrics, economics
- Many, many economic time-series are random walks, or close

Some facts and terminology - Autoregressions
- Many economic time-series well-described by $X_{t} = \cdot X_{t - 1} + t$
- $\mathbf{\mu}_{\mathrm{t}}$ random (say Normal), close to 1
- When $= 1$ Random Walk - $\mathbf{\mu}_{\mathrm{t}}$ is completely new information
- Unit Root - changes ( $t$ ) random and independent
- Correlation between $X_{t} - X_{t - 1}$ & $X_{t + 1} - X_{t}$ is zero
- When 1 then new information dies, transitory
- But close to 1 is almost RW, still have problems

Most Important:
- Never blindly run regressions in levels
- Always think about di erences

Investigating Random Walks & "Spurious Correlation"

Simulate two random walks

$$
\mathrm {P} _ {\mathrm {t}} ^ {\text {e q u i t y}} = \mathrm {P} _ {\mathrm {t} - 1} ^ {\text {e q u i t y}} + \mathrm {t} \quad \mathrm {N} (0,4)
$$

$$
\mathrm {P} _ {\mathrm {t}} ^ {\text {b o n d}} = \mathrm {P} _ {\mathrm {t} - 1} ^ {\text {b o n d}} + \quad \mathrm {t} \quad \mathrm {N} (0,1)
$$

Completely independent, nothing to do with each other

But run regression $\mathsf{P}_{\mathsf{t}}^{\mathrm{equity}} = \mathsf{\Pi} + \mathsf{P}_{\mathsf{t}}^{\mathrm{bond}} + \mathsf{e}_{\mathsf{t}}$

$$
\ln (\text {f u r m a l} = y o b s - x o b s)
$$

Remidual:

附表：

10

图

21

30

特此公告。

-11.4653 -8

242

中

日

24

140

6.

基础七

Cofficiart:

EstimateStd. Error+paLmPr<1t1)

[Interrcap] -38.16215 3.96374 -7.7863.78e-13 *** xds -0.09758 8.82553 -3.822 0.000177

Signif. codin 0 0001 8.01 85

Residual standard error: 3.914 on 198 degrees of freedom

Multiple R-squared: 0.9687, Adjusted R-squared: 0.964

F-statistic: 14.61 m-1 and 198 DF, p-value: 8.8881773

## Random Walk Regression

![](Https://Cdn-Mineru. Openxlab. Org. Cn/Result/2025-11-15/3C07Ddea-Cb45-4Eb2-Bd23-F544B33F30B6/Ab9D6E7B38Efddb5Ec00B56956D3Fdee6Df1Efe6Af17Edd41B0Fb33F6441C758. Jpg)

![](Https://Cdn-Mineru. Openxlab. Org. Cn/Result/2025-11-15/3C07Ddea-Cb45-4Eb2-Bd23-F544B33F30B6/5812D85C06C505B7C91Dc9C3B15Bb73Fdaa07E89Cce3Fd5672D675131Ef02B14. Jpg)

We want to test whether they are related - whether $\mathsf{Y}$ (equities) move down when $\mathsf{X}$ (bonds) move up
- Test the coefficient, in this case -0.09758 (negative)
- Textbooks tell us that for a well-behaved regression, the distribution is Student-t (and the regression program calculates the standard error)
- We ask "IF the true were 0, how far away is our $\hat{=} -0.09758$?"
- Like the mean, $\frac{\dot{+} - 0}{\mathrm{SE}} = \frac{-0.09758}{0.02553} = -3.822$ $t_{n - 2}$ N (0,1) (here n-2=198)
- Far out in left tail - minute probability we would see -0.09758 if $= 0$
- But we know $= 0 - \text{Maybe we were just unlucky - this can happen}$

## 3 Returns And Normality

## Percent Changes
For financial markets and asset prices, always use percent change
- Been talking about "changes" $= \mathsf{P}_1 - \mathsf{P}_0$

But for financial markets, need either
- changes in logs: $= \ln (\mathsf{P}_1) - \ln (\mathsf{P}_0) = \ln (\mathsf{P}^1 /\mathsf{P}_0)$
- % change: $= \frac{P1}{P0} - 1$

These are more-or-less the same (for modest changes)
- Logs: $\ln (102 / 100) = 0.0198$
$\%:102 / 100 - 1 = 0.02$

Apple Stock Price (AAPL) - Diverence in Logs $(\%)$

Example of Series with non-stationary mean (growing or falling, but no stable mean)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/139c04ce279b3754be37953b123843513881b6959730eb4b705204d67b94ec05.jpg)

From Yahoo Finance

## Normal Distribution
Always work with changes: $= \%$ change
- Cannot say what price change will be, but can think about range of values
- What is distribution of? Generally, looks like:
Horizontal: CF or return in future
Vertical: probability or likelihood
- Technically: picture is density

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/f743b6f9277ed6dc98e46ad16b20dc4b4db1e3547a893127b76586cfe9df7738.jpg)

Often work with Normal Distribution
- Classic bell-shaped, like in picture. Depends on only $\mu$ &
- Works somewhat OK in finance - but many problems (fat tails!!)

But we care about the whole distribution (not just $\mu$ &

## Normal Works Ok, Not Perfect Ibm, 40+ Years Of Daily Returns
- $\mu = 0.024\%$, $= 1.417\%$ (log changes)
- Histogram, overlaid with normal
- Not too bad - Good as a start

## But Certainly Not Perfect

![](Https://Cdn-Mineru. Openxlab. Org. Cn/Result/2025-11-15/3C07Ddea-Cb45-4Eb2-Bd23-F544B33F30B6/712F1Bca9E57E8Ad86E07A65F46Ea2D734C11F73766D63A57370834408491C0E. Jpg)

- Scatter diagrams
Actual and Predicted (Normal)

## Certainly Not Perfect

![](Https://Cdn-Mineru. Openxlab. Org. Cn/Result/2025-11-15/3C07Ddea-Cb45-4Eb2-Bd23-F544B33F30B6/Bbd49Bba0Cec28581Fe8857E0C4F698C09D112Bf1Af36213Ad053C5D53D2F581. Jpg)

![](Https://Cdn-Mineru. Openxlab. Org. Cn/Result/2025-11-15/3C07Ddea-Cb45-4Eb2-Bd23-F544B33F30B6/7Dcd81148E934411Ee63A49B117D3E0A8A985F25089A9A22C42Bffd208607A27. Jpg)

IBM data and program under:
- /tom/cma/RiskMgmtMonog/joint/progs/IBMtemp.r
- For 1970-01-12 to 2013-10-01: Mean = 0.0244, StdDev = 1.417 (log changes)

## Normality Problems: Fat Tails
Normal is an OK start, in middle part of distribution
- But really bad in tails

Consider daily changes in Dow Jones, 50 years 1954-2004
- Extreme events more common than predicted by normal
- Hear people say "we had a 5-day". They mean "a move larger than expected, given the normal distribution"

## Play Following Game:
- Build normal distribution, based on mean & variance  for all 50 years
- Look only at very left tail
- Examine just those ten largest far out in the tail

## Normal Does Very Badly
- Many more large moves (4,5) than predicted
- Need other distributions: t-distribution, mixture of normals

Table 8.5 Ten Largest Down Moves of the Dow, 1954-2004

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
Date & Close & Log-Return & No. Sigma (2-Score) \\ \hline
19 Oct 1987 & 1,738.74 & -25.63\% & -16.22 \\ \hline
26 Oct 1987 & 1,793.93 & -8.58 & -5.30 \\ \hline
27 Oct 1997 & 7,161.15 & -7.45 & -4.72 \\ \hline
17 Sep 2001 & 8,920.70 & -7.40 & -4.68 \\ \hline
13 Oct 1989 & 2,569.26 & -7.16 & -4.53 \\ \hline
8 Jan 1988 & 1,911.31 & -7.10 & -4.49 \\ \hline
36 Sep 1985 & 455.56 & -6.77 & -4.28 \\ \hline
31 Aug 1998 & 7,539.07 & -6.58 & -4.16 \\ \hline
28 May 1962 & 576.93 & -5.88 & -3.72 \\ \hline
19 Apr 2000 & 10,305.77 & -5.82 & -3.68 \\ \hline
\end{tabular}
\end{document}
```

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/ef02b17dbb55990f0fcf98c3e5fbdeb0194228515a6351c3f0ccaed3a9351e8a.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/e1f1aaa90df6c195f9af28ce2c5f333b3ce902bbd48086e4dc7d2368accaec5b.jpg)

## 4 Idea Of Price E Ciency In Finance
Maurice Kendall and 1953

Kendall looking for patterns in stock prices - didn't find them
- Idea older - Louis Bachelier (1900)

Very simple idea:
- If everyone could forecast price would be higher tomorrow, why wait?
- Price would rise now - no reason to wait
- All current information already embedded in price

Only new information will change price: $\mathsf{P}_{t + 1} = \mathsf{P}_t + \mathsf{\Omega}_{t + 1}$
- If everyone knew it today, they would use it today

Important - does not say current information is right
- Only that all current information already used

Louis Bachelier Ph. D. dissertation (1900) "The Theory of Speculation" Paul Cootner in his 1964 book The Random Character of Stock Market Prices. The term was popularized by the 1973 book, A Random Walk Down Wall Street, by Burton Malkiel, a Professor of Economics at Princeton University. Eugene Fama's 1965 article "Random Walks In Stock Market Prices". The theory that stock prices move randomly was earlier proposed by Maurice Kendall in his 1953 paper, The Analysis of Economic Time Series, Part 1: Prices.

E cient Market Hypothesis: Prices are Random Walk

Efficient Market Hypothesis does not say it is impossible to make money
- Just very hard

Why? If we could easily forecast prices, everyone would do it
- If you knew tomorrow's price, you could buy or sell today: profit
- There are millions of others out there trying to do the same
- And large firms will pay a lot for a small improvement

Textbook: Manager with $5bn portfolio (not even very big!)

• Extra 0.1% earnings means $5mn
- Will pay up to that for that extra information - hiring smart people, building computer systems

Larger firms can spread their research spending over larger portfolios
- Increasing Returns to Scale for the industry?

## Believe In Markets
In general, if you see a market price you should believe it
- If you think the market is wrong, think again. Then think again
- There are hundreds or thousands or millions of people looking at that price, and if they don't think it's wrong then you had better have a good reason

Think carefully about your comparative advantage - are you really smarter than everyone else?
- Could be, but you are saying you are smarter than all the others

Efficient Markets come down to "The Wisdom of Crowds"
- The market may not always be right, but be careful betting against it

Old joke – professor & student see $100, professor says “can’t be with e cient markets” Aside on “shorting” – valuable – part of making markets e cient
- People putting their money on the line

## Abnormal Returns - Example Of E Cient Markets
Price changes for sample of firms targets of takeover attempts
- Firm A buys Firm B, alway pays more than pre-takeover price
Good news about Firm B - Firm A believes B is valuable - and will pay extra
- Graph shows for "B" firms before and after announcement

Evidence that markets are "e cients" - build in new information quickly

Good news into prices almost immediately
- After announcement - no new information (on average - some firms good, some bad)
- Why drift up before? Insider trading - news leaks out

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/00c2e46a991f5b747b68b61263b8ca6f59bba73c7cc1da7e19f276e46c2fcd50.jpg)

BKM Fig 11.1, Cumulative Abnormal Returns

Bodie, Kane, Miller (Investments) Figure 11.1. From Arthur Keown and John Pinkerton, "Merger Announcements and Insider Trading Activity," Journal of Finance 36 (September 1981)

## Information Goes In Quickly
Stocks mentioned on CBC "Midday Call"
- Positive - jump up within seconds, stabilizes within 5 min
- Negative - takes longer, but stabilizes within 12 min

Markets so competitive (so many investors scrambling to make money) everything happens quickly
- Why longer for negative? difficult and expensive to short-sell stocks

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/3d9c71bd50c78d45aaf3574864290fbabc35b64de7afb0e5b6ffb8e56a4d762d.jpg)

BKM Fig 11.2, Reaction to CBC Reports

Bodie, Kane, Miller (Investments) Figure 11.2. Stock price reaction to NBC reports. The figure shows the reaction of stock prices to on-air stock reports during the "Midday Call" segment on NBC. The chart plots the cumulative returns beginning 15 minutes before the stock report. From J. A. Busse and T. C. Green, "Market E ciency in Real Time," Journal of Financial Economics 65 (2002) p. 422

## Weak, Semi-Strong, Strong: Private Information
Three forms of Market E ciency:

1. Weak: Past Price Information: Current prices reflect information in past prices (impossible to make consistent profits using past prices) - prices follow random walk
2. Semi-Strong: All Public Information: Current prices reflect all public information (news reports, etc.)
3. Strong: All Information, Public & Private

I was a little skeptical of Strong Form, but here's an extraordinary example
- "The stock market speaks: How Dr. Alchian learned to build the bomb" Journal of Corporate Finance 2014
- 1954, top-secret hydrogen bomb testing. No public information on what element used (was lithium)
- Aremen A. Alchian used stock market prices to discover that it was lithium
    - Found that stock price of company producing and selling lithium went up more than other companies

In the end - idea of market e ciency / competitiveness - more important than exact form

"The stock market speaks: How Dr. Alchian learned to build the bomb" Joseph Michael Newhard, Journal of Corporate Finance Volume 27, August 2014, Pages 116-132

```latex
\begin{document}
\begin{tabular}{|c|}
\hline
&quot;Competitive Markets&quot; better than &quot;E client Markets&quot; \\ \hline
&quot;E client Markets&quot; not &quot;Good&quot; or &quot;Right&quot; \\ \hline
&quot;Competitive&quot; better. Simplest form: \\ \hline
• Markets so competitive, so many people working so hard to get better price, most or all current information embedded \\ \hline
Markets may not be &quot;right&quot; - just no obvious way to make easy money \\ \hline
• Stated this way, pretty obvious \\ \hline
• Easy to come back later, hard today to say &quot;market is wrong&quot; \\ \hline
Many stories where &quot;right&quot; but lost money \\ \hline
• 1999 - shorting NASDAQ - we were right but lost money \\ \hline
• 1999 - shorting Amazon - friend almost wiped out \\ \hline
• 2005 - shorting mortgage-backed CDOs - right eventually but lost money \\ \hline
\end{tabular}
\end{document}
```

## 5 Five Lessons Of Market E Ciency
```latex
\begin{document}
\begin{tabular}{|c|}
\hline
Five Lessons of Market E ciency
1. Markets Have No Memory
2. Trust Market Prices
3. “Read the Entrails”
4. Do-It-Yourselves Alternative
5. No Financial Illusionss \\ \hline
1 – Markets Have No Memory
Price changes unpredictable (Prices are Random Walk)
Think of this in two ways
 6. Future changes unpredictable
   · Current information embedded in current price
   · Only new information, that nobody predicted, a ects tomorrow&\#x27;s price
7. Past prices contain no information for prediction \\ \hline
One of the fundamentally most important facts about markets
· “Random Walk” hypothesis – changes are a random walk and cannot predict
· Strong evidence in support \\ \hline
Sometimes confused with “normality” - assumption that changes are normally distributed
· Normality is often useful, but “unpredictability” or “independent increments” separate from “normality” \\ \hline
\end{tabular}
\end{document}
```

## History - Always Use Returns (Changes)
When looking at history, always look at changes, never the price
- We care about uncertainty of cash flows, and it is the changes that are uncertain and random

Use returns $\% = \frac{P_{t} - P_{t-1}}{P_{t-1}}$ to adjust for size of price or wealth

Example: S&P 2008,2009,2010 (end-of-year)

## Prices Versus Returns
Changes are the new & random part

```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline
Year & Price & Return \\ \hline
2007 & 1468.36 & - \\ \hline
2008 & 903.25 & -38.5\% \\ \hline
2009 & 1115.1 & +23.5\% \\ \hline
2010 & 1257.64 & +12.8\% \\ \hline
\end{tabular}
\end{document}
```

Returns normalize for size

1 unit change in 2007 not same as in 1997

2007:1468.36

1967: 96.47
- 1% change means same change per $1 invested

## Prices & Returns From Problem
ALWAYS look at price changes or returns - when measuring means, standard deviations
- The change in price is the new or random part

Use $\% = \frac{P_{t} - P_{t-1}}{P_{t-1}}$ to adjust for size of investment

Quotes and Prices for UST and S&P Futures

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline! & &quot;\#$\%&amp;&\#x27;! & & & & \\ \hline! & *+, -).! & /*012*)3! & ). *012*)3! & 44*012*)3! & 45*012*)3! \\ \hline
464.789!;;!.*2: &lt;*474.! & 556/=(! & )7)67=35! & )7)65)=! & )7)6&gt;/5! & )74654)5! \\ \hline
&\#x27;?@!, *AB2B0C2,!= 3!&amp; &\#x27; D3! & 474/6.! & )57=64.! & )/3&gt;6.! & )/5)! & )544! \\ \hline! & @EFG&amp;&\#x27;! & & & & \\ \hline
464.789!;;!.*2: &lt;*474.! & )776)4/! & )7)6(/7&gt;! & )74645)4! & )746475=! & )7(6/..! \\ \hline
&\#x27;?@!, *AB2B0C2,!= 3!&amp; &\#x27; D3! & )7)H=4.! & 5. H4) (! & 5(H(&gt;.! & 5=H..7! & 53H)77! \\ \hline! & E\%E\#E! &\#x27; & & & & \\ \hline
464.789!;;!.*2: &lt;*474.! &! & )64.)J! & 76/5/J! & *767/7J! & )6.)J! \\ \hline
&\#x27;?@!, *AB2B0C2,!= 3!&amp; &\#x27; D3! & & *36)4. J! & )*65(7J!) & )64./J! & )63(5J!) \\ \hline
\end{tabular}
\end{document}
```

## 2 - Trust Market Prices
You may be smarter than everyone else,
- But think carefully whether you are smarter than all the other millions of investors

## 3 - "Read The Entrails"
Use information in market prices
- We have been doing this with bonds, spread
- Using market prices to back out discount rate and risk premium

Verizon & Bank of America example - in 2010
- **Verizon 7.375% of 9/12, rated A/A3, spread of 64bp**
BAC $4.88\%$ of 1/13, rated A/A2, spread of 207bp
- Trust the market spread

Another example: mortgage-backed AAA CDOs in 2005 - trading at 80bp spread versus corporate rates at maybe 20bp
- CDO - Collateralized Debt Obligation
- Package mortgages together, parcel out CFs to equity, mezzanine, senior tranches
- If mortgages stop paying, equity & mezzanine lose CFs first
- Clearly people in the market knew that mortgage-backed structures were not really AAA.

## 4 - Do-It-Yourself Alternative
Investors will not pay others for what they can do themselves
- Basis of Modigliani & Miller "Capital Structure Irrelevance" – investors will not pay extra for arranging debt versus equity because investors can do it – buy bonds & equity

Companies often justify mergers because it provides "diversification"
- Investors can get diversification more cheaply - buy equities or mutual funds

## 5 - No Financial Illusions
Investors care about company CFs, not what company says
- Investors generally pretty smart
See through games companies play

Example - companies manage earnings, trying to make things look good
- Investors usually see through this

## 6 Evidence Against Market E Ciency
```latex
\begin{document}
\begin{tabular}{|c|}
\hline
Evidence Against Market E ciency
There is evidence, and good evidence - BKM Section 11.4
 ·P/E: Low P/E firms have higher stock market returns
 ·Small Firm: small (low-capitalization) firms have higher returns
 ·Book/Market: high book (low market) have higher returns \\ \hline
This may simply say that our models (CAPM particularly) are not exactly right. Or that it is difficult and expensive to acquire and use information
 ·There are opportunities to make money in the markets
 ·But it is never easy \\ \hline
What is undoubtedly true, is that
 ·Markets are very competitive and pretty e cient
 ·Generally you should trust market prices, and if you disagree you’d better have a pretty good reason
 ·There may be ways to make money in the markets, but it is not easy
 ·There is no easy cook-book recipe for making money by trading \\ \hline
\end{tabular}
\end{document}
```

## 7 Modigliani & Miller Prop 1 - Capital Structure Irrelevance (Bma Ch 17)
```latex
\begin{document}
\begin{tabular}{|c|}
\hline
Important Idea – Debt vs Equity in Firm Capital Structure Does Not Matter Companies have part debt, part equity
·FIS Assets: $63.3bn; Debt: $35.9bn (57\%); Equity $27.4bn (43\%) \\ \hline
Modigliani-Miller says total firm value does not depend on what percent debt, what percent equity \\ \hline
Read “lecture 12b” for more detail \\ \hline
\end{tabular}
\end{document}
```

### 7.1 Perfect Capital Markets

## What Are "Perfect Capital Markets"?
What do we mean by "Perfect" Capital Markets? (and "Efficient" Markets)?
- NOT "good" in a normative sense - specialized or technical meaning of "theoretical ideal or starting point"
- Nor "realistic" as in how markets actually behave

## Three Assumptions:
1. Complete Markets: Investors and firms trade securities at market prices, equal to PV of future CFs
2. No costs: no taxes, transactions costs, or issuance costs for trading securities
3. Financing does not change CFs: a firm's financing decisions do not change CFs generated by projects, and financing does not reveals new information about future CFs

## Value Of "Perfect Markets"
These assumptions clearly not realistic. Why is the whole idea useful?
- We get strong results: M&M Prop 1: capital structure - debt vs equity - does not matter
- We then can examine why capital structure matters - because of taxes? transaction costs?

General result for economic (and finance) theory: useful for pushing us to think about how and why the world works as it does
- We should see "Capital Structure doesn't matter" (M&M Prop 1)
- If it does matter, why?
- Some answers: interest taxes distort markets; bankruptcy is costly; information asymmetry

### 7.2 Carving Up Cash Flows
Modigliani & Miller Proposition 1

M&M Prop 1: Value is Unchanged by Capital Structure
- Total Value of the Firm = PV of CFs
- This does not depend on choice of capital structure

We will see how this works by
- Looking at how firm carves up CFs with debt & equity
- Changes risk of debt & equity CFs
- Does not change risk of overall CFs
- See that investors can recombine CFs in any way they want
- Investors can produce any risk profile they want, at no cost
- Investors won't pay the firm extra to carve up CFs.

Result: Capital Structure won't change value (M&M Prop 1)

## Capital Structure Carves Cfs
CFs carved between debt and equity holders
Start from bottom (Firm CFs), go first to Debt, then Equity

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/f225e7a482ba0ef7ff5851446530780e50d21080c0644a71ecb89d549cb5ffeb.jpg)

How CFs distributed make huge difference in CF risk
- Debt less risky than equity
- CFs go first to debt – if there is any money debt gets it
Equity is residual - only what is left over

The residual is always more risky - some chance you get nothing

## "Unwinding" Leverage
We will play a simple game: the firm takes CFs apart, we (investors) put them back together. Start from bottom (Firm CFs), split into Debt & E

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/d8567d14952f28e023f5a1acee1aa397c155c0c6b95127e226b8cba4b2c1f49d.jpg)

With no transaction costs we can easily do this

## Conclusion: M&M Proposition 1 - Leverage Irrelevant
Debt versus Equity is irrelevant

"Do-it-yourself leverage"
- Investors can do or undo whatever the firm does

## Dependent On
1. Complete Markets: Investors and firms trade securities at market prices, equal to PV of future CFs
2. No costs: no taxes, transactions costs, or issuance costs for trading securities
3. Financing does not change CFs: a firm's financing decisions do not change CFs generated by projects, and financing does not reveals new information about future CFs

## References

## Securities Trading And How Equities Are Issued
Lecture 11

Thomas S. Coleman

24 April 2023; Draft April 17,2023

## Outline
1 How Are Securities Traded (BMA Ch 14, BKM ch 3 - Expanded)
2 How Corporations Issue Equity 7

2.1 Overview & Early Stage 7
2.2 IPOs 10
2.3 Secondary O erings - Seasoned Equity O er or SEO 13
2.4 Private Placements vs Public Issues 15

## 1 How Are Securities Traded (Bma Ch 14, Bkm Ch 3 - Expanded)
Primary vs Secondary Markets - Issuing vs Investing

Primary Market - Issuers raise money by Issuing Securities
- Issuers:
- Corporations / Companies: manufacturers, banks, retail firms
- Governments: US Federal, US state & local, Non-US (only bonds)
- Issue to: Investors (see below)
Securities (Assets): either equities or bonds

SecondaryMarket - Investors invest and adjust savings and retirement
- Investors
- Individuals
- Pensions funds (private companies, government retirement and health funds)
- Mutual funds, hedge funds
Insurance Companies
- Investors also invest in primary market, but secondary market more active

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/f428e15a3a9d2327e673e7db1084a3d8a2fcd4dc58ea72c20f78743fb575fb69.jpg)

Primary Markets - Issuing Issuers raise money by Issuing Securities

More details shortly on "Type of Market" Most securities "brokered" - managed by investment bank
- Auction: US Treasuries always; equities rarely

## Some Details:
- Equities and bonds usually issued through brokered market, with an investment bank acting as broker.
- We will cover more detail about how equities are issued shortly
- US Government bonds are issued through an auction mechanism – the US Treasury provides a list of what securities are being issued, and primary dealers then give prices they would buy at, until all securities are sold
- State and local bonds, corporate bonds, foreign bonds (such as bonds issued by Brazil in the international market) are all brokered by commercial or investment banks

## Remember Us Treasuries Issued - Auction
Col 1: Announcement Date - new issues trade When Issued (WI)
Col 2: Auction Date - coupon set, trade normally
Col 3: Settle Date - cash & bonds change hands (normally $\mathbf{T} + 1$ )

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
1-Year NOTE & & Thursday, April 8,2022 & Monday, April 11,2022 & Monday, April 16,2022 \\ \hline
18-Year NOTE & B & Thursday, April 8,2022 & Monday, April 11,2022 & Monday, April 16,2022 \\ \hline
38-Year NOTE & B & Thursday, April 8,2022 & Wednesday, April 15,2022 & Monday, April 16,2022 \\ \hline
\end{tabular}
\end{document}
```

Thursday Apr 2 2020 was a busy day:
- Bunch of bills issued
- New 3-yr note issued
10-yr note and 30-yr bond re-opened

Secondary Market: Markets, Investors, Securities

Secondary Market: major locus or venue for investors to save and invest

Structure for how securities traded - US markets specifically but similar world-wide
- Types of markets: Brokered, Dealer, Auction
- Investors: who they are and how they access the market
Securities: Broadly how different securities are traded

Diagram provides framework
- Much detail packed in
- More detail in my "notes"

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/53ea912027c158929cf2b9f13dc3aea02b93c925e74bccdc4f26c870908500c3.jpg)

Secondary Market: Markets, Investors, Securities

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/faa10df123268b0f236a3ffb00617bf494ba6b8334ac566a6993adb1f62da443.jpg)

Types of Markets
- Direct Search
- Something like Craigslist or advertising for a used car
- individual buyers and sellers seeking each other directly.
- One-o transaction and products tend to be heterogeneous (each different) - no economies of scale in specializing

## - Brokered
- A person or company specializes in bringing together buyers and sellers
- Could be either illiquid and heterogeneous or liquid and homogeneous BKM give example of real estate. But this is still very illiquid (irregular) and heterogeneous Many financial markets are brokered, but liquid and homogeneous - Swaps are liquid and homogeneous
- Brokered markets generally have a fee or commission - the buyer or seller (or both) pay a fee to the broker
- Example: Swaps

## - Dealer
- Dealer specializes in trading a specific security or asset or type of asset
- Buys and sells for own account - will buy from a customer and sell to a customer directly, not arranging a transaction with another customer
- Stands ready to buy from or sell to customer
- Buys from customer at low price (Bid) and sells at high price (o er)
- Example: Bonds, FX

## Auction
- Buyers and sellers get together in centralize exchange
- Used to be a physical location, now electronic
- Examples: NY Stock Exchange, CME futures exchange - Movie "Trading Places" has scene of pit (auction) trading in Orange Juice futures

## How Investors Buy And Sell

![](Https://Cdn-Mineru. Openxlab. Org. Cn/Result/2025-11-15/3C07Ddea-Cb45-4Eb2-Bd23-F544B33F30B6/Eadb2562549950B7C27C27B8D5B644C8A07F21E2Aa97F34F5C93A793Bae8577A. Jpg)

## Investors Will Buy And Sell For Many Reasons
- Long-term investment
- Retirement
- Future spending (saving for children's education, looking after one's parents)

## - Short-Term Cash
Corporations or individuals or governments may have cash now that they will use some short period in the future, need to invest somewhere for short period.
- May put it in a bank, but could also buy a bond or equity for a short period

Investors almost always go through a broker, broker/dealer, or bank
- Individuals, corporations, retirement or mutual funds will almost never deal in the market directly but have a broker act on their behalf
- A broker would be someone like Interactive Brokerage, Vanguard Broker Services, Fidelity, E*Trade, Charles Schwab
- The most basic allow you to buy and sell equities. More sophisticated will provide services in equities, bonds, FX, futures. Domestic and international.
- The broker will execute in the appropriate market on behalf of the investor

Equity Markets (Primary vs Secondary)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/bfa2489462dcba7c2a1699b1d1330234a88dc1bb53dbf091d3edc7e927dc9200.jpg)

Secondary Market: Auction, with commission

Distinguish between Primary (where companies issue new securities) and Secondary (where investors invest in securities already issued).
- Primary (we will discuss next section)
- Companies issue the securities and raise the money from investors
- Almost always brokered, with an investment bank handling the details of required regulatory filings, pricing, finding investors, etc.

Secondary market
- The original company is not involved
- Investors buy and sell the securities to invest and re-arrange their investments – to manage their portfolio
- For large public equities (Apple, IBM, Starbucks) it is auction market - buyers and sellers meet and negotiate price and quantity. e.g. NY Stock Exchange
- For small, privately issued securities it may be a brokered or dealer market

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/a7b2762982910a5f05316e1594dfe6ef9292d029d69e02a232dc9bc413a24eb8.jpg)

Bond (and FX) Markets

Dealer market, with dealer earning Bid/O er spread (buy low bid price, sell high o er price) rather than commission

Bond (and FX) markets virtually always dealer market
- Banks, investment banks, and confusingly often called brokers – buy and sell themselves,
- Stand ready to buy from and sell to customers.
- Dealer chooses the price - will buy low (Bid Price) and sell high (O er or Ask Price)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/7d421df333d06dbe5b4112729fe939592ec7e2f5fa84630bfad53da1868eae17.jpg)

Futures Markets

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/8f8fd76cfcb18645eb7fdc6f698f8d7df29cd4b5da030cb037e985e4ccdce82d.jpg)

Swaps (and other Derivatives) Markets

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/095e53bf5c5011b7422b5e1edb7a2189cb2149da4bd2aa151b7c073e7557ceef.jpg)

Investors, Securities, Markets

## 2 How Corporations Issue Equity

### 2.1 Overview & Early Stage
Ch. 15 of [Brealey et al.(2013)Brealey, Myers, and Allen] is more about equity funding than about issuing securities. Refers almost entirely to equity issues. We will go over this briefly. We don't have time to cover this in detail, but BMA is good so you can read to get detail

## Three Stages Of Equity Funding
1. Venture Capital or Angel Investors and private funding - not publicly traded securities
2. IPO - Initial Public O ering - the first sale of securities to the public for a firm not publicly traded
3. SEO - Seasoned Equity O ering - sale of securities to the public for an existing publicly-traded firm

## Private Funding, Angel Investors, And Venture Capital
Can be simple - raise funds from small, non-public, group - no public securities
- At the simplest level this is family and friends.
- Other outside investors often called Angel Investors
- For a small start-up not necessary, but often good idea, to formalize with articles of incorporation and by-laws
- Such formality necessary when money from outside enters.

## Venture Capital:
Equity provided by outside investors
- In the form of shares that are not publicly traded

## Private Funding, Angel Investors, And Venture Capital
Very simple - raise funds from small, non-public, group - no public securities
- At the simplest level this is family and friends.
- The hedge fund I started in London fell into this category - the three founders put up the original equity. We got shares proportional to funds we put in.
- Other outside investors are often called Angel Investors
- For a small start-up it is not necessary, but it is often a very good idea, to formalize arrangements with articles of incorporation and by-laws that specify shares and how they can be traded, redeemed, etc. This saves many headaches later. It is, ironically, most important when things go really well. Fights really start when there's lots of money to fight over – if things go badly and everyone loses money it's bad luck but there tends to be less spoils to fight over.
- Such formality becomes an absolute necessity when money from outside friends and family enters. Venture Capital is equity provided by outside investors, but in the form of shares that are not publicly traded.

## Venture Capital Investors
Firms that provide funding to young and start-up companies.
- Focus on companies that have a chance to grow spectacularly - next Google, Apple,...

VC often second stage, after founders put their own money in
- Need additional equity to continue or expand

VC investors generally pay close attention
- Require strict and formal agreements

VC investor shares not publicly traded, don't have to be registered with SEC

## Venture Capital Investors
- Term used to describe firms that provide funding to young and start-up companies. VC investors focus on companies that have a chance to grow spectacularly. VC investors are constantly looking out for the next Microsoft, Amazon, or Google. But VC not limited just to technology business.
- VC investment is often a second stage, after the founders have put their own money in and when they need additional equity to continue or expand.
- With my hedge fund we had a 2nd stage investor. We started our company in 1998, then in 2001/02 we wanted to expand and we found a large hedge fund willing to invest in us. We didn't call it VC, but it had all the characteristics we're talking about here - selling a share of the company to a new investor who was closely involved in out firm.
- VC investors will generally pay close attention to the firm – not a hands-o investment. Require strict and formal agreements, specifying conditions to be met, further funding parameters, etc. Generally requires a seat on the board or a say in the management.
- Shares sold to VC investors will not be publicly traded, and don't have to be registered with SEC.

## Selling Shares To Vc
- Injects new capital
- Dilutes existing shareholders
- Sets value on company

## Example Of "Marvin Enterprises"
- Initial investment (founders): $100,000 for 1mn shares
 2nd stage VC firm Meriam Venture Partners $1mn,
- 1mn shares at $1 each.

## Now The Firm Was 50/50 Owned By Founders And Meriam - 1Mn Shares Each
Balance sheet after 2nd stage financing

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
Assets & Liabilities & & \\ \hline
Cash from new equity & $1mn & $1mn & New equity from VC \\ \hline
Other assets, mostly intangible & $1mn & $1mn & Original equity, held by entrepreneurs \\ \hline
Value & $2mn & $2mn & Value \\ \hline
\end{tabular}
\end{document}
```

Selling shares to VC Investors sets value on company, and sets value of existing shares

Example of "Marvin Enterprises"
- Initial investment was $100,000 for$ 1mn shares.
 - 2nd stage investment from VC firm Meriam Venture Partners was $1mn, in the form of 1mn shares at $1 each.
- Note that now the firm was 50/50 owned by founders and Meriam
- 1mn shares each

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
Assets & Liabilities & & \\ \hline
Cash from new equity & $1mn & $1mn & New equity from VC \\ \hline
Other assets, mostly intangible & $1mn & $1mn & Original equity, held by entrepreneurs \\ \hline
Value & $2mn & $2mn & Value \\ \hline
\end{tabular}
\end{document}
```

### 2.2 Ipos
Initial Public O erings

This is where we, the public, get involved.
- Also regulations and legal issues

As a result of the last-but-one financial crisis (1929-33, not 2008-2009) regulations and institutions enacted to protect investors

Securities Act of 1933 (the "Securities Act" - SEC)
- State "blue sky" laws (state-by-state regulations governing o ering of securities)
 fraudulent investments backed by nothing but so many feet of blue sky

SEC and Securities Act
- "Registration" of securities that are o ered to the public
- Disclosure and transparency. No ruling that security is "good"

IPOs – Initial Public O erings – first o er of securities to the public

This is where we, the public, start to get involved. It is also where regulations and legal issues become very important
- As a result of the last financial crisis (the 1929-33 Depression, not the 2008-2009 crises) there was a whole set of regulations and institutions enacted to protect investors. There are two particularly important sets of regulations that govern issuance and trading of securities in the US:
- Securities Act of 1933 (the "Securities Act" - SEC)
- State "blue sky" laws (state-by-state regulations governing o ering of securities)

SEC and Securities Act
- This is the big one.
- The SEC requires "registration" of securities that are o ered to the public.

There are some exceptions if a small number of knowledgeable or sophisticated investors (35 or less). These are called Reg D o erings (o ered under Regulation D). They can sometimes be traded among large financial institutions under Rule 144A.
- The idea behind registration is to provide disclosure and transparency. The SEC has nothing to say about whether the security o ering is "good" in the sense of a good investment, only that the o ering discloses all relevant information.
- This is an incredibly important point. The SEC makes no ruling on the quality of the investment. You can never get in trouble with the SEC for a stupid start-up idea. But the SEC insists on disclosing all relevant and material information. When you hear about someone getting in trouble with the SEC it is often on failure to disclose material information. (The SEC also goes after outright fraud, but we'll put that to the side for the moment - assume that everyone here is basically honest and not out to pull a Mado -type Ponzi scheme.)

## Main Steps In Traditional Ipo
1. Company appoints underwriters
2. Fees: spread (typically $7\%$ ) and gumshoe option (underwriters can get additional $15\%$ shares)
3. Prepare SEC registration and issue preliminary prospectus (red herring)
4. Roadshow to market to potential customers. Build book by soliciting indications of interest
5. SEC approval (SEC rules on disclosure, not quality of the issue). Company and underwriters agree on issue price
6. Underwriters allocate shares (usually over-allocation)
7. Trading starts. Underwriters cover the over-allocation by buying in the market and exercising gumshoe option
8. Managing underwriter makes liquid market in stock and provides research coverage

## Read Notes For More Details
Main steps in traditional IPO in US (from [Brealey et al. (2013)Brealey, Myers, and Allen] table 15.2)

1. Company appoints underwriters
2. Fees: spread (typically $7\%$ ) and gumshoe option (underwriters can get additional $15\%$ shares)
3. Prepare SEC registration and issue preliminary prospectus (red herring)
4. Roadshow to market to potential customers. Build book by soliciting indications of interest
5. SEC approval (SEC rules on disclosure, not quality of the issue). Company and underwriters agree on issue price
6. Underwriters allocate shares (usually over-allocation)
7. Trading starts. Underwriters cover the over-allocation by buying in the market and exercising gumshoe option
8. Managing underwriter makes liquid market in stock and provides research coverage

## Sec Registration And State Blue-Sky Laws
- An incredibly cumbersome and legalistic process that produces a document that nobody except lawyers read.
- But the benefit of this process is that it requires any new issuer to disclose material information, and provides severe (and well-enforced) penalties if relevant information is not disclosed. This is one of those situations where nobody reads the registration document, but its existence ensures good behavior.
- The most important part of the registration statement is the Prospectus. Very much shortened example in appendix to Ch. 15.
- Also must ensure o ering complies with state laws - blue-sky laws that regulate o ering and sale of securities within a state.
- Generally, but not always, if comply under federal securities regulation will also comply under state laws. But not always - example of Apple IPO in 1980 when Mass regulators didn't allow sales to individuals in Mass because Apple was too risky. Stupid, but there you go.
- Historically, state and federal laws had duplication. Much duplication, particularly on securities registration, removed in 1996.
- Term "blue-sky" refers to fraudulent investments that are backed by nothing but so many feet of blue sky.

Underwriting, Road Show, and Bookbuilding
- Most IPOs in the US are done as underwritten issues under the following process:
- Company chooses a set of investment banks as underwriters who agree to buy the shares from the company at a pre-agreed price, and then sell them to the public.
- The underwriters agree to support the price in the market for a period of time by buying shares back from the public.
- Once the registration statement has been submitted to the SEC (but before approval) the underwriters will go on a Road Show, talking to potential investors
- Investors provide indications of interest where they say how many shares they will buy at what price.
- The process of collecting indications and allocation shares is called Bookbuilding.
- Managing underwriter commits to make liquid market and provide research coverage.

## Price Setting And Sale
SEC approval, the underwriters set price and allocate shares
- Price is usually set at a discount to where everyone thinks it will actually sell
- Strong incentive to ensure the issues sell
- Shares on IPOs usually rise from. Price rises sometimes substantial

Why? Why use such a cumbersome process and leave so much money on the table?
- Google in 2004 raised $1.4bn in an auction.
- Why don't others?

I don't have a good answer.
- But, I want to be careful - maybe I don't know enough

Many IPOs involve founders selling a small number of their own shares to the public
- May be a private incentive for the founders: raise less money for the firm, increase private wealth

## Price Setting And Sale
- When SEC approval is obtained, the underwriters set a price and allocate shares to investors at that price.
- Price is usually set at a discount to where everyone thinks it will actually sell
- Strong incentive on the part of the investment banks to ensure the issues sell – both for their own reputation and so they don't get stuck with unsold shares – remember they've underwritten the issue and bought the shares from the company at the pre-agreed price so the risk resides with the investment bank.
- They then sell shares to the public.
- Shares on IPOs almost invariably rise from their 0 er price, at least initially. These prices rises can be really substantial
- This raises an important question - why use such a cumbersome process, that seems to ensure underpricing and that the firm will raise less money than they could have if they had o ered the shares to the public in an auction.
- Google in 2004 raised $1.4bn in an auction.
- Why don't others?
- I don't have a good answer. Seems to me the existing process is rife with ine ciencies and conflicts-of-interest. Note that managing underwriter provides research as part of the package, but how can the research be independent when it is part of the IPO package?
- But, I want to be careful - I don't have enough experience and knowledge about IPOs to make a definitive statement. There may be issues around asymmetric information and signaling (the issuers have information that the public cannot have, and under-pricing may provide some signal about the quality of the issue). E -cient markets actually require people to put in time and e -ort to uncover information and set prices, and there is some evidence that the bookbuilding process is better at building information than an auction.
- Also, many IPOs involve founders selling a small number of their own shares to the public and holding onto most of their shares, so that there may be a private incentive for the founders to raise less money for the firm but have their own wealth (in terms of continued holdings of shares) increase.

### 2.3 Secondary O Erings - Seasoned Equity O Er Or Seo
General Cash O ers vs Rights O ers

Seasoned Equity O er or SEO

US: General Cash O ers - that is sale to everyone and anyone

Essentially same as IPO - underwriter, SEC registration, underwriter roadshow and book-building,...
- Same problems with underpricing and conflicts-of-interest as with IPO.
- Shelf registration - important innovation - SEC's Rule 415

Additional problem - asymmetric information, overpricing, and announcement e ect
- The issuing firm has better information than outsiders.
- Bottom line - firms will issue shares when "too high"
- Investors know this. Issue signals prospects poor
- Result: Companies don't issue, and if they do price falls

Alternative to General Cash O er - Rights O er
- Rarely in US, always overseas
- Gives existing shareholders the right of first refusal.
- Each shareholder given right to buy new shares - "rights"

Seasoned Issues - Seasoned Equity O er or SEO
- In the US most SEOs are done as General Cash O ers - that is sale to everyone and anyone.
- Process is essentially the same as for IPO - underwriter, SEC registration, underwriter roadshow and bookbuilding, underwriter buys shares from company at agreed price and sells to public.
- Same problems with underpricing and conflicts-of-interest as with IPO.
- Shelf registration - important innovation - SEC's Rule 415 allows a single registration that applies over a period for a range of o erings. Allows flexibility and lower cost - don't have to register each time.
- Additional problem - asymmetric information, overpricing, and announcement e ect
- The issuing firm has better information than outsiders.
- If the firm has information that future prospects are better than the market believes, the share price will be "too low" - lower than it should be if the market knew the better future prospects. In such a case the firm will not want to issue shares because they will raise less than they should, and the low price will favor new shareholders and hurt existing shareholders (the new shareholders get the shares at a bargain price) NB - Rights or will solve problem of disavantaging existing shareholders (since rights given to existing shareholders, and they can sell the rights) but will not solve the asymmetric information (share underpricing) issue.
- The firm could try and inform investors – make an announcement that future prospects are good. But investors will not believe this because it is the kind of thing firms say all the time.
- If the firm has information that future prospects are worse than the market believes, the price will be "too high" - higher than it should be, and the firm will want to issue.
- Bottom line - firms will issue shares when they have information (not available to or not correctly understood by outsiders) that the share price is "too high". Investors will know this and thus any equity issue will be interpreted as a signal that prospects are worse than embedded into the current price. Result - the price will fall in response to a new equity issue.

## Alternative To General Cash O Er - Rights O Er
- Rights O ers almost never used in the US, but almost always used (sometimes legally required) overseas.
- Rights issues give existing shareholders the right of first refusal. Each existing shareholder is given the right to buy a certain number of new shares per existing share
- Example in BMA [Brealey et al. (2013)Brealey, Myers, and Allen] of mining company Xstrata. Each existing share given the right to buy two new shares.
- Key thing here is that rights are priced and can be sold, either to other investors or back to the underwriter.
- Two e cts
- Existing shareholders get value even if current price "too low". Protected from the market's underpricing because they have the right to the new shares. This removes the problem if new issues disadvantageing (diluting) existing shareholders.
- Price for the new shares doesn't really matter - since existing shareholders have the right to buy at that price they don't lose if the price is set below the current price. Existing shareholders can either buy the new shares, or sell the rights - either way they are equally well o.
- Can calculate new share price by considering total value (original + new cash) and dividing by new shares. Rights price is difference

Example-Xstrata.
- Firm wants to raise 4.1bn (pounds). Current stock price is 6.23/share, 976,190 shares
- They could set various combinations of Price New and N Rights (Price New is the price per share for the new shares, and N Rights is the number of rights given to each existing share - each Right can buy one new share) as long as Pnew*Nrights*Nshares = total amount to raise
- For example, they actually set $\text{Pnew} = 2.10$ and $\text{Nrights} = 2$. Then $2.10 * 2 * 976,190 = 4.1 \text{bn}$. Could also set $\text{Pnew} = 4.20$, $\text{Nrights} = 1$. Then $4.20 * 1 * 976,190 = 4.1 \text{bn}$. Or $\text{Pnew} = 1.4$, $\text{Nrights} = 3$, and $1.4 * 3 * 976,190 = 4.1 \text{bn}$
- New share price:

Total Value: Old + New = 6.23 + 2*2.10 = 10.43.

This is 3 shares, so each share worth 3.48.

Rights: New Price - Price Paid = 3.48 - 2.10 = 1.38.
- Existing shareholder is equally well-o if take up o er or sell rights:

Take up: Start with 6.23, put in 4.20, and end up with 3 shares worth in total 10.43

Sell rights: Start with 6.23, sell rights, end up with 1 share worth $3.48 + \text{cash} 2^{*}1.38$

$= 6.24$ (o by 1 because of rounding: $10.43 / 3 = 3.476667)$
- Want to set new price below current price, so that the rights actually have value. Issues generally underwritten: investment bank buys from firm and holds risk that shares not sold.

### 2.4 Private Placements Vs Public Issues
Private Placements vs Public Issues

Firms can issue Private Placements (Reg D), to small number of sophisticated investors

## References
[Brealey et al. (2013) Brealey, Myers, and Allen] Richard A. Brealey, Stewart C. Myers, and Franklin Allen. Principles of Corporate Finance. McGraw-Hill Education, New York, 11 edition edition, January 2013. ISBN 978-0-07-803476-3.

## Dividends & Valuation Of Equities
Lecture 10

Thomas S. Coleman

19 April 2023; Draft April 24,2023

## Outline
1 Valuation of Equities - Dividends & Discounting 1

1.1 Stock Price $=$ Discounted PV of Future Cash Flows (Dividends) 1
1.2 Various Dividend Discount Models 4
1.3 What are Dividends? Firm Payout 7
1.4 Using Dividend Discount Models 9
1.5 Process For Dividends 10
1.6 Dividend & Buybacks Equivalent 11

## 1 Valuation Of Equities - Dividends & Discounting

### 1.1 Stock Price $=$ Discounted Pv Of Future Cash Flows (Dividends)
PV Bonds & Equity - PV for Both

PV & discounting is (almost) the only important idea in finance

Bond value: PV future CFs
Equity value: PV future CFs

Why are they different?

Bond CFs are promised
- For UST, non-default pure discounting yield $y_{\mathrm{rf}}$
- For FIS, risk-adjusted discounting, $y_{FIS} = y_{rf} + r\mathsf{p}$
- For both, use market price to back out discounting and risk premium (spread)

Equity CFs are not promised, we have to guess - both CF & rp
- We can guess CF, but really hard - can get "expected CFs"
- Cannot back out risk premium
- Generally have to move other direction: get $\mathsf{rp}$ from somewhere else, then discount by $y_{\text{equity}} = y_{\text{rf}} + \mathsf{rp}$

PV: Bonds Easy, Equities Hard

BONDS: Promised CFs, so can move P yld or P yld

Forward, P yld, comparing existing bonds
- yld compares one bond against another
- Which is cheap, which expensive

Back, P yld, valuing new CFs
- With yld, can estimate price of new bond

EQUITY: No promised CFs
- Hard to go forward, hard to back out yld to compare one equity to another
- Hard to go back, hard to estimate CFs and find right rp to estimate price

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/a585f9d917ed4663c4c0d1ba39f16fe243edefde13ba58d5ffca0bd109522476.jpg)

## Brealey & Myers Chapter 4, Bkm Chapter 18
Section 18.3: Dividend Discount Models
- Constant growth model
- Role of terminal value
- Role of "Investment Opportunities": when internal prospects (a firm's investment opportunities) are better than outside opportunities available to investors, the firm should plow back funds (retain earnings) and stock price should go up when it does.

Section 18:5: Free Cash Flow Valuation (variant on DDM)

Section 18.4: P/E ratio

## Dividends & Future Cfs
Value for Equities: Ultimately from future CFs
- Only reason we buy equity today is for future CFs

People talk about "dividends" (CF) and "capital gains" (selling for higher price)
- "Dividends" - periodic CFs
- "Capital Gains" - selling for a higher price in the future
- But ultimately, someone else buys because they expect future CFs
- It all comes down to future CFs

What are Dividends?
- Equities generally pay out cash, quarterly

## Fis
• Paid $0.35 on 14 March 2019 ($0.32 13-dec-18, $0.32 13-sep, $0.32 14-jun)
 • §1.31 over past year, 1.13% of price ($1.31 / $115.9)
 Dividend Rate: $/yr = $1.31
- Dividend Yield (generally more useful): % = Sdividend / $price= 1.13%

Past vs Future Dividends

Easy to get past dividends

FIS from 30-apr-19 (Yahoo Finance)
- Past dividends $1.28 (actually $1.31)
Dividend Yield $1.15\%$

But we want future dividends
- Must be estimated by somebody (Morningstar)
Future (next year) $1.40, $1.24%

Dividend yield often more useful

Companies often try to keep div yld steady
- When price up, put dividend up

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/8ff822393180450c665956119121120abc067a948249bd75872bd8dff2b80a4d.jpg)

Dividend & Dividends

Forward Annual Dividend Rate 1.0
Forward Annual Dividend Yield 1.24%
Tralng Amaa/ Ddardr Ta 1.28
T
2 Year Average Dividend Yield 1.30

Ptyrnt Ratio 80.20%

Dividend Cane-3 127.2019

Ex Dividend Date 102209

### 1.2 Various Dividend Discount Models
Three Important Formulae:

What can we do for equities? PV future dividends, which are CFs paid out to shareholders Three important formulae:

1. Constant Dividend (annuity - no growth)
2. Constant Growth
3. Fast Growth, then Constant Growth

Dividend Discount Model: No Growth, Annuity Formulae Assume dividends constant, perpetual annuity

$$
\cdot \mathbf {C F} = \mathbf {D}
$$

Constant dividend (no growth)

$$
P V = \frac {D}{1 + y} + \frac {D}{(1 + y) ^ {2}} + i i = \frac {D}{y} = \frac {D}{r f + r p}
$$
- Not realistic for most equities, but useful start

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/6898fd1c67f083842c5fa8b4843aba6bdc448a3b273a2257d95d66e451c6d14c.jpg)

Based on summation formula (you should know):

$$
\underset {i = 0} {\mathbf {x}} _ {i} ^ {i} = \mathbf {x} _ {i} \frac {1}{1 -} \quad \text {and} \quad \underset {i = 1} {\mathbf {x}} _ {i} ^ {i} = \mathbf {x} _ {i} \frac {1}{1 -}
$$

When $= \frac{1}{1 + y}$ and $x = D$, then (could also use TVM, set $N = 100,000$ )

$$
\underset {i = 1} {\mathrm {x}} _ {i} ^ {i} = \mathrm {D} _ {i} \frac {1}{1 -} = \mathrm {D} _ {i} \frac {1}{1 + y} _ {i} \frac {1 + y}{1 + y - 1} = \frac {\mathrm {D}}{y}
$$

## Dividend Discount Model: Constant Growth
Say a company expected to grow at constant rate forever

Constant growth $\tilde{g}$ per year

$$
D _ {1} = D _ {0} (1 + g)
$$

$$
\mathrm {D} _ {2} = \mathrm {D} _ {0} (1 + \mathrm {g}) ^ {2}
$$

$$
\begin{array}{l} P V = \frac {D _ {0} (1 + g)}{1 + y} + \frac {D _ {0} (1 + g) ^ {2}}{(1 + y) ^ {2}} + i i = \frac {D _ {0} (1 + g)}{y - g} \\ = \frac {D _ {1}}{y - g} = \frac {D _ {1}}{r f + r p - g} \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/5da95254e95c9f83fa679b4d32753ab1a80ec9b2ed518aca97266820cb4d3799.jpg)

Much more useful than "no growth"

Both these formulae come from summation formula:

$$
\underset {i = 0} {\mathbf {x}} _ {i} ^ {i} = \underset {i = 1} {\mathbf {x}} _ {i} \frac {1}{1 -} \quad \text {and} \quad \underset {i = 1} {\mathbf {x}} _ {i} ^ {i} = \underset {i = 1} {\mathbf {x}} _ {i} \frac {1 -}{}
$$

When $= \frac{1}{1 + y}$ and $x = D$, then

$$
\underset {i = 1} {\mathrm {x}} \quad i = D _ {i} \frac {1}{1 -} = D _ {i} \frac {1}{1 + y} _ {i} \frac {1 + y}{1 + y - 1} = \frac {D}{y}
$$ and when $= \frac{1 + g}{1 + y}$ and $x = D_0$, then

$$
\mathbf {x} _ {\mathrm {i} = 1} ^ {\mathrm {i}} = \mathbf {D} _ {0} \left| \frac {1 + \mathrm {g}}{1 -} \right. = \mathbf {D} _ {0} \left| \frac {1 + \mathrm {g}}{1 + \mathrm {y}} \right. \left| \frac {1}{1 - \frac {1 + \mathrm {g}}{1 + \mathrm {y}}} \right. = \mathbf {D} _ {0} \left| \frac {1 + \mathrm {g}}{1 + \mathrm {y}} \right. \left| \frac {1}{\frac {1 + \mathrm {y} - 1 - \mathrm {g}}{1 + \mathrm {y}}} \right. = \frac {\mathbf {D} _ {0} \left| (1 + \mathrm {g}) \right.}{\mathrm {y} - \mathrm {g}} = \frac {\mathbf {D} _ {1}}{\mathrm {y} - \mathrm {g}}
$$

$$
\mathbf {x} _ {i = 1} ^ {\mathbf {n} - 1} \mathbf {x} _ {i} ^ {\mathbf {i}} = D _ {0} \left| \frac {(1 - \mathbf {n})}{1 -} = D _ {0} \right| \frac {1 + \mathbf {g}}{1 + \mathbf {y}} \left| \frac {1}{1 - \frac {1 + \mathbf {g}}{1 + \mathbf {y}}} \right. 1 - \left. \frac {1 + \mathbf {g}}{1 + \mathbf {y}} \right. ^ {\mathbf {n}} = \frac {D _ {1}}{\mathbf {y} - \mathbf {g}} \left| 1 - \frac {1 + \mathbf {g}}{1 + \mathbf {y}} \right. ^ {\mathbf {n}}
$$

Dividend Discount Model: Fast then Constant Growth Many companies expected to grow fast, then slow
- So have fast growth - say for 5 yrs - then slower growth g

Use "Multistage Growth Model"

1. Calculate PV of "1st stage" dividends (say in spread-sheet)

$$
P V _ {1 s t} = \frac {D 1}{1 + y} + \frac {D 2}{(1 + y) ^ {2}} + i i i + \frac {D 5}{(1 + y) ^ {5}}
$$

2. Constant growth $g$ per year starting yr 5:

$$
P V _ {2 n d} = \frac {P V _ {c g}}{(1 + y) ^ {5}} = \frac {D 5 (1 + g) / y - g}{(1 + y) ^ {5}}
$$

3. Combine these: $\mathsf{PV}_{\mathrm{Total}} = \mathsf{PV}_{1\mathrm{st}} + \mathsf{PV}_{2\mathrm{nd}}$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/6d9a2dd86427d48454513d182167004e8a43da70e9e3d0c776a47dc530c89fee.jpg)

## Using Our Two Fundamental Ideas
Only Two Fundamental Ideas: Discounting & Risk Adjustment
- Same ideas and same tools as for bonds
- Spend so much time with bonds, so we learn about PV (discounting) and risk adjustment

General idea:
- Figure out size and timing of expected or promised Cash Flows (CF diagram)
- Choose appropriate risk premium - gives risk adjusted discount rate:
 risk adjusted discount rate $=$ risk-free + risk-premium

Discount CFs

Find income statement, balance sheet, cash flow statement at https://www.marketwatch.com/investing/stock.ibm/binflow

## Challenges Using Ddm
Ideas are simple, but huge practical problems:

1. Guessing at dividends - IBM example
- Paid cash dividends of about $5.77/share ($5,380mn) in 2019
 • Also share buyback of about $4.65/share ($4,340mn)
- Turns out Cash Dividends Share Buyback - Completely changes the numbers

2. Guessing at growth (for dividends)

3. Guessing at discount rate

Central focus of next 2 weeks
- Risk and Portfolio Theory; CAPM

Many other issues discussed in textbook

### 1.3 What Are Dividends? Firm Payout

## Equity - Residual Cash Claimant
Equity (common stock) gets "what's left over"
- Pay employees, taxes, debt, etc., Left over is "residual cash flow"

Let's look at FIS, take apart the income, expenses

Revenue comes in, expenses (wages, taxes,...) go out

What's left over either:
- Pay out to shareholders (common stock, equity holders)
- Retain earnings - invest in running and growing the business (more future profits)

```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline
FIS, 2018 Income & $mn & $mn \\ \hline
Revenue & & $8,420 \\ \hline
Cost of goods sold (wages etc) & -5,570 & \\ \hline
Other (interest, taxes) & -2,004 & \\ \hline
Net Income & & 846 \\ \hline
Dividends & -421 & \\ \hline
Retained Earnings & & 425 \\ \hline
Shares (mn) & 323.29 & \\ \hline
Dividends per share ($) & $1.30 & \\ \hline
Owners (shareholders, investors) should be happy to have money reinvested (retained earnings) if FIS can earn high profits – more than investors can make in other activities & & \\ \hline
\end{tabular}
\end{document}
```

Find income statement, balance sheet, cash flow statement at https://www.marketwatch.com/investing/stock/fis/fina Some details:
- Retained earnings can be found from the balance sheet: change in retained earnings 2017-2018
- Dividends (on accrual basis) are calculated as net income less retained earnings
- The Cash Flow statement also shows repurchase of Common Stock (-1.26B). This is, as discussed below, also a payout to shareholders and equivalent to a dividend payment.

## Dividends - Regular Quarterly Payments
Dividends - regular quarterly payments in cash to each shareholder
- Paid $0.35 on 14 March 2019 ($0.32 13-dec-18, $0.32 13-sep, $0.32 14-jun)
 • §1.31 over past year, 1.13% of price ($1.31 / $115.9)
 Dividend Rate: $/yr = $1.31
Stock price $115.39 dividend about 1.13% of the price - "dividend yield"

FIS paid about $50\%$ of earnings (net income) to dividends
- Managers (and investors) think that FIS has good internal investments
- Should pay to investors unless internal investments better than "market"

Some businesses pay little, re-invest most. Others pay out most, re-invest little

IBM: pay out $65\%$

Consolidated Edison: pay out $65\%$

Microsoft: pay out $40\%$ (was $0\%$ )

AT&T: pay out $27\%$

Google: pay out $0\%$

High dividend ("Value")

High dividend ("Value")

Moderate dividend

Moderate Dividend

Growth

Payout ratios: Yahoo Finance, "Statistics"
- Go to Yahoo Finance, search for "IBM" or "Google"
- Look for "Statistics" for dividend and payout information
- But do not use "Financials" "Cash Flow" - use https://www.marketwatch.com/investing/stocks
- Go to "Search" then search for "IBM" then "Financials"

### 1.4 Using Dividend Discount Models

## Valuation For Fis
FIS Example: Current price (30-apr-19) $116/share; shares 323.29mn

1. Constant dividend (no growth) $\mathrm{rp} = -1.38\%$
2. Constant g of $8\%$ & $\mathrm{rf} = 2.5\%$ $\mathrm{rp} = 6.71\%$
3. Multistage growth (25% first 5, g=6.643% thereafter)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
FIS, 2018 Income & $mn & $mn & per shr \\ \hline
Revenue & & $8,420 & \\ \hline
Cost of goods sold & -5,570 & & \\ \hline
Other (interest, taxes) & -2,004 & & \\ \hline
Net Income & & 846 & $2.62 \\ \hline
Dividends & -421 & & -1.30 \\ \hline
Retained Earnings & & 425 & 1.31 \\ \hline
\end{tabular}
\end{document}
```

Constant dividend (no growth) $\mathsf{PV} = \frac{\mathsf{D}}{\mathsf{rf} + \mathsf{rp}}$
- Let's try to back out "implied discount"
 • D=$1.30 116 = 1.30 / (rf + rp) rf + rp = 1.30 / 116 = 1.12%
- risk-free about $2.5\%$: $\mathsf{rf} = 2.5\%$ $\mathsf{rp} = 1.12 - 2.5$, $\mathsf{rp} = -1.38\%$
- Implied discount rate WAY too low, says rp negative
- Completely unrealistic

Constant growth PV = $D_{0}$(1 + g) / y - g = $D_{1}$ / r f + rp - g
- Back out "implied discount" if growth $g = 8\%$ (0.08)
 • D=$1.30 116 = 1.30(1+g)/rf + rp - g / 1 + g = 1.30/116 = 1.12%
- If $\mathrm{g} = 8\%$, $\mathrm{rf} + \mathrm{rp} - 0.08 = 1.08$ 0.0112 $\mathrm{rf} + \mathrm{rp} = 9.21\%$
- High growth rate ( $g = 8\%$ ) but reasonable risk premium
- $\mathrm{rf} + \mathrm{rp} = 9.21\%$: $\mathrm{rf} = 2.5\%$, $\mathrm{rp} = 6.71\%$

Multistage: Assume $25\%$ for 5yr, then what $\% g$ thereafter? $g = 6.643\%$
- Say $\mathrm{rf} = 2.5\%$, $\mathrm{rp} = 6.71\%$ risk-adjusted discount $= 9.21\%$
 • PV 1st: first 5 yrs (dividend grows to $3.967), PV5yrs = $9.925
- Back out $\mathrm{PV}_{2\mathrm{nd}} = \mathrm{PV}_{6 - }$ $= $ 106.10$. Ask, what growth gives $\mathrm{PV}_{2\mathrm{nd}} = \frac{\mathrm{PV}_{\mathrm{cg}}}{(1 + y)^5} = \frac{\mathrm{D}5(1 + g) / y - g}{(1 + y)^5} = $ 106.10?\quad \mathrm{g} = 6.643\%$
• Total: PV = $9.925 + $106.10 = $116.0 - what we see in the market
- Growth after 5 yrs (6.643%) still pretty high

Let's go through the calculations for the "multistage growth model" applied to FIS assuming:
- Discount Rate = y = rf + rp = 2.5 + 6.71 = 9.21%
- Growth $25\%$ for first 5 years, then growth $6.643\%$ after

For "Multistage Growth Model" the steps are:

1. Calculate PV of "1st stage" dividends (say in spread-sheet) - in this case 5 years

$$
P V _ {1 s t} = \frac {D 1}{1 + y} + \frac {D 2}{(1 + y) ^ {2}} + i i i + \frac {D 5}{(1 + y) ^ {5}}
$$
- Calculate dividends by $\mathbf{$D_{1}$} = \mathbf{$D_{0}$}^{*}(1.25) = 1.3^{*}1.25$; $\mathbf{$D_{2}$} = \mathbf{$D_{0}$}^{*}(1.25)^{\wedge}2 = 1.3^{*}1.5625$;...
- Then discount dividends by (1.0921), (1.0921)^2,...
 • PV1st = $9.925

2. Constant growth $g$ per year starting yr 5:

$$
P V _ {2 n d} = \frac {P V _ {c g}}{(1 + y) ^ {5}} = \frac {D 5 (1 + g) / y - g}{(1 + y) ^ {5}}
$$

$D_{5}$ = $3.967
$\cdot \mathrm{PVcg} = \mathrm{$D_{5}$}(1 + \mathrm{g}) / (\mathrm{y - g}) = 3.967^{*}(\mathrm{1.06643}) / (\mathrm{0921 - 0.06643}) = 164.82$
- PV2nd = PVcg / (1+y)^5 = 164.82 / (1.0921^5) = 106.10

3. Combine these: $\mathsf{PV}_{\mathrm{Total}} = \mathsf{PV}_{1\mathrm{st}} + \mathsf{PV}_{2\mathrm{nd}}$
- PVtotal = 9.925 + 106.10 = 116.025
- Basically, the $116 price that we see in the market

Brealey Myers Allen Ch 4 Using DCF models difficult
- Textbook Chapter 4 covers alternatives - e.g. valuation by comparables

### 1.5 Process For Dividends
Process for Cash Dividend
- Declaration Date: Firm announces quarterly dividend
- Dividends don't change much so generally non-event
- Record date - date you have to be registered to get dividend
- Two days prior to Record shares start trading x-d - share drops by the dividend amount
- Everyone knows this so really just a convention
- Before x-d you get the dividend so share is worth $\mathbf{X}+$ dividend
- After $\mathbf{x}$ -d date you don't get dividend so share is worth $\mathbf{X}$
- Checks mailed some weeks later

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/84d6404d27f7a8cc042158e546be31e4de20ade54484a09a17b5868220337f2a.jpg)

Process for cash dividend

Firm announces quarterly dividend on the declaration date. Generally dividends don't change from quarter-to-quarter or year-to-year so pretty much non-event (unless there's a change)

Also announce record date - date at which you have to be registered in the books and records as owning the share to get the dividend. Two days prior to this the shares start trading without the dividend and the share drops by the dividend amount. (Everyone knows this so really just a convention - before that x-d date you get the dividend so share is worth X+dividend. After x-d date you don't get dividend so share is worth X.)

Checks mailed some weeks later.

### 1.6 Dividend & Buybacks Equivalent

## Dividend & Buyback Equivalent
Equity (common stock) gets "what's left over"
- Pay employees, taxes, debt, etc., Left over is "residual cash flow"

Actually two ways to pay out shareholders

1. Cash Dividend (above)
2. Buyback (buy shares in the market)

Both give cash back to shareholders
- Equivalent
- But huge confusion and controversy

News stories about "evils" of stock buybacks

## Dividend & Buyback Equivalent
Starting in late 1980s share buybacks became important

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/f2734fee00dcccca9aed5d2358dde1530c55ece5585dc8df21827696b766fa50.jpg)

Prior to 1983 no share repurchases.
- A firm wanting to manipulate share price could secretly buy shares.
- Nothing wrong openly buying shares – transfer cash to shareholders

1980s, rule change, SEC's ruly 10b-18

Prior to 1983 there were no share repurchases. Part of the change was rule changes. A firm that wants to manipulate its share price (keep it artificially high) could secretly buy shares. This has been known to be done, and was a popular game during the 1920s. There is nothing nefarious about a firm openly buying shares as a way of transferring cash to shareholders, but prior to the SEC's rule 10b-18 firms trying to simply transfer cash could have been accused of trying to manipulate their share price. Once the rule was put in place it allowed firms to transfer cash via repurchases

Information - Dividends and Share Repurchases
Dividends can provide information that a firm is profitable and management is confident
- Easy to make announcements, possible to massage earnings reports
- Harder to pay out cash on a regular basis without cash
- Thus, regular cash dividends signal that a firm is profitable
- In the US at least, dividends are taken as a valuable piece of information
- Problem: how do firms return cash from temporary surge of profitability?

Share repurchases tend to be temporary
- In the US at least the implicit arrangement is that share repurchases are often temporary or one-o

## Information And Dividends And Share Repurchases
Dividends can provide information that a firm is profitable and management is confident
- It is easy to make positive announcements, possible to massage earnings reports even for a long time, and firms have even been known to fraudulently alter earnings.
- But it is much harder to pay out cash on a regular basis unless you actually have cash.
- Thus, regular cash dividends are a concrete sign that a firm is actually profitable.
- In the US at least, dividends are taken as a valuable piece of information about a firm's current and expected future profitability. Note, however, that part of this is dependent on an implicit agreement between managers and investors that managers will not change very often and very much – managers will change dividends when they are confident they will be able to maintain those dividends for a long time. We could think of an environment where managers increase dividends temporarily when they have a temporary cash increase and so changes in dividends don't provide too much information about managements' views of future prospects. Some other countries have somewhat different implicit arrangements.
- Such an implicit arrangement – where dividends are used as a reliable signal of current and future profitability – leaves the problem of how do firms return cash to investors when there is a temporary surge of profitability and the firm does not have projects to invest.

## Share Repurchases Tend To Be Temporary
- In the US at least the implicit arrangement is that share repurchases are often temporary or one-o.

## Dividend & Buyback Equivalent
Company decides to pay back $1,000 (project not good enough)
- Company pays out $1000 in both cases, so has to be the same
Number of shares and share price different

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
Rational Démonductor Balance Sheet (market values) before Dividend & & & \\ \hline
Assets & Liabilities & & \\ \hline
Cash (held for new project) & 1,000 & 0 & Debt \\ \hline
Fixed Assets & 9,000 & 10,000 & Equity \\ \hline
New project (requires $1,000?) & 0 & & \\ \hline
Value & $10,000 & $10,000 & Total value of firm \\ \hline
1000 shares @ $10 & & & \\ \hline
CASH DIVIDEND ($1 dividend, 1000 shares) & & & \\ \hline
TOTAL VALUE & SHARES & CASH & \\ \hline
BEFORE & Shares + Cash = 10,000 + 0 = 10,000 & 1000 shares, Each share $10 & $0 \\ \hline
AFTER & Shares + Cash = 9,000 + 1,000 = 10,000 & 1000 shares, Each share $9 & $1,000 \\ \hline
SHARE REPURCHASE (buy back 100 shares, $10 each) & & & \\ \hline
TOTAL VALUE & SHARES & CASH & \\ \hline
BEFORE & Shares + Cash = 10,000 + 0 = 10,000 & 1000 shares, Each share $10 & $0 \\ \hline
AFTER & Shares + Cash = 9,000 + 1,000 = 10,000 & 900 shares, Each share $10 & $1,000 \\ \hline
\end{tabular}
\end{document}
```

Rational Demiconductor [Brealey et al.(2013)Brealey, Myers, and Allen] is chapter 16
- The idea here is that the firm has retained $1,000 for a new project.
- But the project turns out to be worthless, so the firm decides not to invest the $1,000 and instead return to investors
- Two choices
- Cash dividend, give each shareholder $1 in a cash dividend
- Share buyback, buy 100 shares at $10 each
- These both give $1,000 back to shareholders, so they have to be the same.
- The share price will be different in the two cases, but so will the number of shares. The value at the end will be the same in both cases.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
Rational Demiconductor Balance Sheet (market values) before Dividend & & & \\ \hline
Assets & Liabilities & & \\ \hline
Cash (held for new project) & 1,000 & 0 & Debt \\ \hline
Fixed Assets & 9,000 & 10,000 & Equity \\ \hline
New project (requires $1,000?) & 0 & & \\ \hline
Value & $10,000 & $10,000 & Total value of firm \\ \hline
\end{tabular}
\end{document}
```

## References
[Brealey et al. (2013) Brealey, Myers, and Allen] Richard A. Brealey, Stewart C. Myers, and Franklin Allen. Principles of Corporate Finance. McGraw-Hill Education, New York, 11 edition edition, January 2013. ISBN 978-0-07-803476-3.

## Introducing Equities + Securtization
Lecture 9

Thomas S. Coleman

17 April 2023; Draft April 17,2023

## Outline
1 Securitization (BMA Ch 24.1) 2
2 Introducing Equities (BMA Ch 4, Sharpe) 7

2.1 Introduction 7
2.2 What is a Firm? 8
2.3 What is Common Stock or Equity? 12

## 1 Securitization (Bma Ch 24.1)

## Securitization - Pooling Assets & Cash Flows
Pooling of assets and repackaging of the underlying cashflows

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/801176cf09dc0016434c62b35d6852e5ea4f0a760cffd6860c2e89155582e807.jpg)

## Examples
- Mutual Funds, hedge funds, Exchange Traded Funds
- Mortgage-backed and asset-back securities
Common Stocks
- "Equity" (mutual fund) vs "bond" pools (MBS, "Securitization")

## Legal Structure
- "Fund" and "Manager" separate legal entities
- Mutual Funds in US - Investment Co & Advisors Acts, 1940
- Hedge Funds - often off-shore (eg Caymans) - tax & regulatory
- Mortgage-backed and other asset-backed securities (bonds)

## Reasons For Pooling
- Spreads & Diversifies risk (mortgage-backed bonds)
- Lowers cost (mutual funds); professional management (hedge funds)
- Investors: Access to assets unavailable otherwise
- Sponsors/Owners: Move assets off balance sheet (borrow)

## Securitization
- Pooling of assets and repackaging of the underlying cashflows
Often into bonds
- Sometimes "trancheing" to create different payment or credit characteristics from those of the underlying assets

## Securitization Assets:
- Assets that go into the pool
- Often fixed income instruments such as mortgages or loans or corporate bonds or credit card receivables

## Securitization Liabilities:
- Often bonds but also mutual funds, common stocks
- Sometimes structured in tranches ordered in terms of payment priority

## Examples
- Mutual Funds
Hedge Funds
- Mortgage-backed securities
- Pass-through (Agency - Fannie Mae & Freddie Mac - pass-throughs). Simply pool together a group of mortgages and pass through the income - payment of income and principal.
- Tanched. Pool together a group of mortgages but sell different
- Other Asset-Backed securities - student loans, credit card receivables, even David Bowie's bond (1997 - revenues from 25 albums recorded before 1990)
Common Stocks
- Not usually talked about as a securitization or pooled assets, but in many ways that is exactly what a share in a publicly-listed company is – a share in the cash flows generated by the pooled activities from the company.
- Usually we talk about securitization of passive assets (things like other bonds or mortgages) and not active assets like for an on-going business.
- This ties back nicely to the South Sea Co and the Mississippi Co, although the South Sea Co was truly a pooling of passive assets - simply government annuities
- Distinction between "equity"-type pools and "bond"-type pools
- Equity-type: mutual funds, hedge funds, ETFs. For these the investors get a proportionate share of whatever profits
- Bond-type: Senior tranches for tranched securities: promised CFs. Here investors are promised a CF. The pooling is valuable usually because it improves diversification and makes the "promise" more reliable, more certain to be paid.

## Legal Structure
- "Fund" and "Manager" separate legal entities
- Manager may be Corporation
- Fund often a Trust or a Partnership or itself a Corporation
- The Fund hires the manager and pays a fee plus various expenses
- The Fund will often have a Board of Directors who represent the interests of the shareholders (owners of the Fund and thus beneficiaries of the fund's assets)
- Assets are held in custody for the fund. Custodian is hired by the Fund, legally responsible to the fund and the Board
- Mutual Funds in US
- Investment Company (fund) which holds assets and sells shares in itself - proportionate share of cash flows
- Investment Manager (manager) who manages the assets of the Investment Company. But a legally separate entity that cannot take the assets from the Investment Company
- Investment Co Act 1940 - sets rules and regulations for Investment Co structure and operations
- Investment Advisors Act 1940 - rules and regulations for managers

Hedge Funds
- Often the "Fund" is off-shore - say Cayman islands - for tax and regulator reasons.
- Mortgage-backed and other asset-backed securities (bonds)
- Special Purpose Vehicle (SPV) - separate legal entity that holds the assets, sells securities that are usually more bond-like than equity-like
- Investors are lending money to the SPV with the promise to get paid back - that promise may be a good or a poor promise.

## Reasons For Securitization
- Spreads & Diversifies risk
- Big reason for mortgage-backed bonds. If you invest $100k in one mortgage then if the homeowner defaults you are out. There may be only a 5% chance but on that you lose everything. But if you invest $100k in a mortgage-backed bond with 1,000 mortgages then there's a pretty good chance that 5% will default but then you only lose 5%, and in any case you can price that in up-front because it becomes pretty certain how much you will lose (5% of your investment) rather than all or nothing.
- Lowers cost of access (mutual funds) or provides professional management expertise (hedge funds)
- One of the biggest reasons for mutual funds and ETFs
- Helps monitor and discipline (maybe 1720, South Sea & Mississippi)
- This may have been a reasons for the South Sea Co and the Mississippi Co. Although they did it very poorly - in fact the South Sea managers were really fraudsters.
- But the Bank of England that managed the government debt, while not really pooling the government assets, played this role.
- Not something we think is necessary today for government debt, at least not in developed countries. But in 1720 could have been very valuable.
- Widens audience and market
- For investors can provide access to markets not available otherwise.

E.g. for credit-card receivables, investors would have a hard time investing (buying) except through securitization.

David Bowie's records is another example - investors could not get invest if not securitized
- For Sponsors / Owners or assets, can be a way to "move assets o balance-sheet"

What this really means is that it is a way to raise money, to borrow - collateralized. e.g. mortgages. A bank makes mortgages, using its money to lend to homeowners.

It then pools those mortgages together, puts into an SPV, and sells bonds against those mortgages.

The investors are lending to the bank, with the mortgages as collateral.

## Pass-Through Vs Trancheing (Waterfall)

![](Https://Cdn-Mineru. Openxlab. Org. Cn/Result/2025-11-15/3C07Ddea-Cb45-4Eb2-Bd23-F544B33F30B6/5E01257Ad6F178A977Fe9E5Ce9Cc25B6B6Cfdc35575F4A7Ac36Ee88060Dc0E2B. Jpg)

## Outline
Pass-through: all investors get same CFs
- Tranched: sell senior & junior (equity) tranches
- Pre-specified rules ("waterfall") for how cash is distributed

## Simple Trancheing Example
- "Senior": gets $20\%$ of CFs, first priority
- "Equity": $80\%$ of CFs, but lowest priority
Equity loses money first

Probability (54%) of $10 loss – pay back either $100 or $90

Senior is first priority, always gets $20 (100%) back
 Equity suers the loss, gets either $80 (100%) or $70 (87.5%)
- Senior riskless, Equity more risky (lose more than $10\%$ of original)

Pricing (5yr, $5 coup, 5% risky, 4% risk-free yield)
- Underlying must be $100 (PV($5 @ 5%))
 Senior now risk-free, must be $104.45 (PV($5 @ 4%) - pay $20.89 for 20%
- Equity implied $98.89 (100=0.2*104.45+0.8*98.89) - pay $79.11 for 80%

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
 & Share of pool & PV ($) & & $ Paid \\ \hline
Senior Tranche & 20\% & $104.4518 & - & $20.8904 \\ \hline
 & & & & \\ \hline
Equity Tranche & 80\% & $98.8870 & - & $79.1096 \\ \hline
\end{tabular}
\end{document}
```

## Pass-Through Versus Trancheing
This detail (for example on trancheing) is not necessary for History of Financial Crises – for Applied Financial Management
- Pass-through: all investors get same cash-flows - proportional to their ownership (investment)
- Tranched: the cash-flows are "tranched" according to some set of rules
- Assets pooled, but then cash flows are "tranched" according to some rule, and different classes of securities (shares in the pool) sold.

Example:
- $100 of mortgages.
- Mortgage is 5yrs, $5 \%$ coupon, pays back $$ 100$ in 5 years. Price $$ 100$, yld = $5 \%$ Current risk- free rate is $4 \%$. 100bp spread (risky $5 \%$, risk- free $4 \%$
- But this mortgage is risky. $54\%$ chance that $10\%$ of the mortgages will default on the final principal repayment

54% chance that all coupons will be paid but that 10% of the mortgages will not repay the final $100 in other words $54 \%$ chance you get $$ 90$ instead of $$ 100$ at the end
- Trancheing can change the risk profile. Here will will tranche into senior (with no risk) and equity (with the remaining or residual or increased risk)
- Make 2 branches: Split $100\%$ (100 shares) into top $20\%$ and bottom $80\%$

Top tranche is called the "senior" tranche - $20\%$ of this pool is "senior"

Bottom tranche is called "equity" tranche - $80\%$ of this pool is "equity"

Senior tranche (top $20 \%$ ) gets first priority for cash flows – either coupon or principal. Every $$ 1$ that is supposed to come in, these shares get the first $20 \text{‰}$

Equity tranche (bottom $80 \%$ gets whatever is left. Every $$ 1$ that is supposed to come in, these shares get whatever is left after paying the $20 \text{¢}$ to the top tranche

Example: $100 is promised. $90 comes in. Senior tranche gets $20 (20% of the $100 promised). Equity tranche gets $70 (what is left). Since the equity tranche was promised $80, this $70 is only 87.5% of what they were promised.

Result: Overall loss was $10\%$ (promised $$ 100$, paid $$ 90$ ). Senior tranche loss was $0\%$ (promised $$ 20$, paid $$ 20$ ). Equity tranche loss was $12.5\%$ (promised $$ 80$, paid $$ 70$ ).
- Senior tranche has reduced risk, equity tranche increased risk
- Example of cash flow tranche or cash-flow cascade or waterfall (with $20\%$ senior, $80\%$ equity)

Promised CF = $100. Actual CF = $100

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
 & Share of pool & $ Paid & \% Paid \\ \hline
Senior Tranche & 20\% & $20 & 100\% \\ \hline
Equity Tranche & 80\% & $80 & 100\% \\ \hline
\end{tabular}
\end{document}
```

Promised CF = $100, Actual CF = $90

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
 & Share of pool & $ Paid & \% Paid \\ \hline
Senior Tranche & 20\% & $20 & 100\% \\ \hline
Equity Tranche & 80\% & $70 & 87.5\% \\ \hline
\end{tabular}
\end{document}
```

How do we price this? Actually very easy in this case.
- We know the price of the risky mortgages ( $100,5\%$ yield) and the risk-free rate (4%, for risk-free cash flows)
- PV(risky mortgages) = $100
- PV(5% coupon @ 4% yield) = 104.4518

• The senior tranche is now risk-free so this must be priced at $104.4518. We are selling 20% of the shares at this price, so this is $20.8904 ($104.4518*0.20). The balance we have to sell at $79.1096 (to make the total $100)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
 & Share of pool & PV ($) & & $ Paid \\ \hline
Senior Tranche & 20\% & $104.4518 & - & $20.8904 \\ \hline
 & & & & \\ \hline
Equity Tranche & 80\% & $98.8870 & - & $79.1096 \\ \hline
\end{tabular}
\end{document}
```

## Details For Pricing Of "Mortgage Bond"
• 5-year, 5% annual coupon, $100 bullet re-payment (not amortizing like a true mortgage).
- Chance that $10\%$ of mortgages will fail to repay principal
- Price $100, so yield (risky yield) 5%
- Risk-free rate $4\%$, so risk-free bond PV(5yr bond, $5\%$ coupon, $4\%$ yield) = $104.4518
- Assume that all coupons paid with certainty, $10\%$ of principal will default with some probability (either no-default and get $100, or yes-default at year 5 and get $90)
- Use risk-neutral (risk-adjusted) pricing:

$$
\begin{array}{l} PV (risky 5 \% coupon @ 4 \% risk - free) \\ = P V (\mathbb {S} 5 \text {a n n u i t y} @ 4 \% + (1 - \quad) _ {i} P V (\mathbb {S} 100 @ 4 \% + \quad) _ {i} P V (\mathbb {S} 9 0 @ 4 \% \\ \end{array}
$$

Implies (risk-neutral) probability of default is $= 54.16\%$
- PV of tranched risky bond with recovery $87.5\%$ (using risk-neutral pricing):

$$
\begin{array}{l} P V (t r a n c h e d 5 \% c o u o n @ 4 \% r i s k - f r e e) \\ = \mathrm {P V} (\mathbb {S} 5 \text {a n n u i t y} @ 4 \% + (1 - \quad) _ {\mid} \mathrm {P V} (\mathbb {S} 100 @ 4 \% + \quad) _ {\mid} \mathrm {P V} (\mathbb {S} 8 7.5 @ 4 \% \\ \end{array}
$$

Bond is tranched $20\%$ senior, $80\%$ equity:

## 2 Introducing Equities (Bma Ch 4, Sharpe)

### 2.1 Introduction
Asset Classes - Equity Remember our "Asset Classes": Equity is one of the big ones

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/f35bd19f963b674556ecd22677376106a8821ee806c38f49081cd73c931f630d.jpg)

## Asset Class Comparison (Us)
Remember the different asset classes we discussed

Focusing on Equity Market now - compare US Bond & Equity

Each one is huge, relative to annual GDP
Bond Market bigger than Equity (plus Money Markets)
Bonds: $41.0 trn (211%)
Equity: $30 trn (155%)
 GDP (flow): $19.39 trn

Bond market larger but Equity market better-known
- Anybody (& everybody) can trade equities
- In the news every day (Dow Jones, S&P)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/26815f6fc98f9de976922922e8d614988c7a5fc10ed1e248de15c59349ca5bd4.jpg)

### 2.2 What Is A Firm?
What is a Firm? Seems We Know - But More Complicated

This seems like a silly question - everyone knows what a firm is.
- Not as simple as it seems.
- Anything from a single-member LLC to a huge firm such as GM

## General Outline Of Legal Organization
- Sole Proprietorship - single individual simply running a business
- Partnership - $2+$ individuals each having liability for all debts, and profits
- Ownership cannot be separated from partners
- Ownership not freely transferrable.
- Limited Liability Partnership (LLP)
- as a partnership but introduces limited liability
- Limited Liability Company (LLC)
- like partnership, but legal existence outside of partners
- ownership can be transferred, but usually not freely
- Part way between Partnership and Corporation

Corporation

-firm" such as GM
- separate legal existence, owned by a few or many individuals
- free transferability of ownership
- Concept of limited liability important

## A Little History Of The Corporation
- Joint-stock companies, England during 16th and 17th centuries
- created to explore and trade overseas.
-Decision-making in hands of directors, shares freely transferable.
- Royal charter because people were not free to travel or trade overseas
- By later 17th century businessmen figured out they could copy & make private
- Bubble Act of 1720
- South Sea Company, a chartered corporation, convinced Parliament to ban non-chartered companies.
- Basically, trying to put competitors out of business From the South Sea & Bubble Act - "bubble" for any speculative excess ("housing bubble").
- Eventually Parliament relented - Companies Act of 1844.
- In Colonies, Bubble Act came over in 1741
- Reformers denounced special charters,
- New era, 1837, Connecticut first state to enact all-purpose, general incorporation statute
- No special charter, just file certain factual information.
- No governmental permission, private contract with the state as registry.
- That is the situation we are currently in

## What Actually Constitutes A Firm?
Not trivial question
- Many subtle questions here.

For now we will not go there, but pretend we know exactly what a "firm" is
- Legal entity, created and owned by individuals, that produces and sells goods or services and which acts to maximize profits

Critical - assumption of profit maximization - from this all things flow.

## What Is A Firm?
1. This seems like a silly question - everyone knows what a firm is.
	- (a) But when you start asking the question a little more carefully, it is not as simple as it seems. A firm can be anything from a single-member LLC (owned and operated by a single person) to a huge firm such as GM with thousands of employees and o’ ces around the world.
	- (b) General outline of legal organization of firms in the US (see, eg, state of CT form REG-1 for registering a new business) (Note that legal organization of a firm is generally under state law, so that the legal structure can vary from state-to-state, although for most major legal forms they are pretty standard across states.)
		-  i. Sole Proprietorship - single individual simply running a business - an example might be a tailor running out of their home or a shop - and having all profits going to their income and filing taxes under their own name without any further legal structure. 
		- ii. Partnership - arrangement by two or more individuals with each having liability for all debts, and profits going to the partners and being split by whatever arrangement the partners agree - profits go to the individual's income and taxed under their own name. Ownership of partnership cannot be separated from partners, and partnership does not have legal existence outside of partners (ceases when a partner dies). Ownership not freely transferrable.

- A. Limited Liability Partnership (LLP) - as a partnership but introduces limited liability 
	- profits distributed to partners and taxed with their individual income 
	- entity does not have legal existence outside of partners
		- iii. Limited Liability Company (LLC) - a group of people that get together and own the company with profits split by whatever owners agree 
		- very much like a partnership, with profits usually going to individuals and being taxed as part of their personal income, but does have legal existence separate from the owners (called "managers" at least in CT) and ownership can be transferred, but usually not freely.

- A. One major difference between partnership and LLC is limited liability nature of LLC. Basically, LLC was invented as a way of allowing individuals to flexibly get together, own and manage a business, without having their personal assets at risk in the company. If a partnership goes into bankruptcy, the debtors may be able to go after the personal assets (cars, bank accounts) of the partners. (But there are Limited and General partnerships.)
- B. This is a relatively new (say past 10-20 years) structure that is now recognized throughout the US.
- C. Part way between Partnership and Corporation 
	- iv. Corporation – what we usually think of as a “firm” such as GM 
	- owned by a few or many individuals, with free transferability of ownership, and with a legal existence separate from the individual managers or those who own its shares at a particular point in time. A legal entity under the law, can enter into agreements under its own name.

- A. Concept of limited liability - very important because it means that an owner is not liable for more than they put into the company. If you buy a share of GM you can lose all you paid for that share, but nobody can come after you to collect more.
- B. Free transferability of shares

- (c) A little history of the corporation 
	- i. Joint-stock companies in England during 16th and 17th centuries, created to explore and trade overseas. Decision-making in hands of directors, shares freely transferable. Companies had to secure a royal charter because people were not free to travel or trade overseas.
	 - ii. By later 17th century businessmen figured out they could copy the structure of the royally-chartered companies but make them fully private.
	 - iii. Bubble Act of 1720 - the South Sea Company, a chartered corporation, convinced Parliament to ban non-chartered companies. Basically, the South Sea Company was trying to put competitors out of business (although at the time there were myriad "bubble companies" that were purely speculative or fraudulent ventures). From the South Sea Company and the Bubble Act we get the term "bubble" to refer to any speculative excess (as in "housing bubble").
	 - iv. In response businessmen and barristers figured out how to combine partnerships and trusts to mimic corporate structure 
		 - – managerial power concentrated in a few hands and freely transferable partnership interests for others.
	-  v. Eventually Parliament relented - Companies Act of 1844.
	 - vi. In Colonies, Bubble Act was extended to colonies in 1741 but American promoters were able to create corporate features without incorporating. But some companies still incorporated, getting charters from the state legislature, because the charter granted monopoly or other rights.
	 - vii. Reformers denounced special charters, and new era started in 1837 when Connecticut became first state to enact all-purpose, general incorporation statute – standardized, simplified process for creating a corporation.

A. Basically, CT said organizer no longer had to obtain special charter, just had to file certain factual information. No governmental permission required to create a corporation, it is created by private contract with the state serving as a registry.
B. That is the situation we are currently in 
- states register an incorporation and generally required notification if you do business in the state (if for nothing else, for the collection of state taxes) but they do not grant permission.

2. Also, the question of what actually constitutes a specific firm is not trivial – outsourcing and the boundaries of the firm – consider a PC firm that outsources production to Taiwan, help-center services to call centers in India, accounting services to an accounting firm, and o ce cleaning services to a local service company. Does the computer "firm" include the manufacturing and help-center, or are those market purchased goods and services. Many subtle questions here.
3. For now we will not go there, but pretend we know exactly what a "firm" is - a legal entity, created and owned by individuals, that produces and sells goods or services and which acts to maximize profits.

(a) This excludes entities such as the UK's National Health Service run by the government or a local charity. But it includes a huge, and hugely important, section of what is done in our society.
(b) Critical - assumption of profit maximization - from this all things flow.

### 2.3 What Is Common Stock Or Equity?

## Common Stock, Shares, Equity - Same Thing
Part ownership of a firm. Three important characteristics:

1. limited liability,
- cannot lose more than you put in

2. residual cash flow
- get to keep whatever is left over

3. control or ownership

Technically shareholders own and control the company
- Practically delegate to board of directors and the managers

## Common Stock Or Equity
Common stock, shares, equity, are all names for the ownership.

Three important characteristics -

1. limited liability,
- cannot lose more than you put in. Can always just walk away. This is simple to say but has very important implications. We'll see in talking about financial distress and agency issues that the limited liability of shareholders can lead to some very interesting games being played between shareholders and debtholders.

2. residual cash flow,
- get to keep whatever is left over after workers, suppliers, debtholders, etc. are all paid. In other words, get the company profits. A publicly-traded share is just a proportionate share in the profits. If there are 100 shares out there, each share gets $\frac{1}{100}$ of the profits. If 1mn shares, each share gets $\frac{1}{1\mathrm{mn}}$ of the profits.

3. control or ownership
- more complicated issue than residual CF. Technically shareholders own and control the company, but as a practical issue for most publicly traded companies there are so many shareholders, with ownership so widely distributed, that control is delegated to a board of directors and the managers. We'll have much more to say about this later.

Honeywell International - Some Aspects of Equity

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Common shares (\$1 par value per share) & 958 \\ \hline
Additional paid-in capital & \$3,994 \\ \hline
Retained earnings & \$16,250 \\ \hline
Treasury shares & -\$14,015 \\ \hline
Net common equity & \$7,187 \\ \hline
NOTE: & \\ \hline
Authorized shares & 2,000 \\ \hline
Issued shares, of which & 958 \\ \hline
Outstanding & 735 \\ \hline
Treasury shares & 223 \\ \hline
Yahoo Finance as of 26-apr-19: \\ \hline
HON: Shares = 727.74, \\ \hline
Price=\$172.75, \\ \hline
Capitalization=727.74*172.75=\$125.7bn & \\ \hline
\end{tabular}
\end{document}
```

To my mind, most of this is useless to anyone but lawyers and accountants
· The value information at the top is pretty meaningless
· Historical values (capital paid in when originally issued
· Not Market Value (which we will look at later)
· About the only valuable information is 735mn “outstanding”

Let's look at Honeywell international and discuss some of the institutional characteristics of equity. Start with book value of common stockholder's equity (table 14.2 in BMA).

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Common shares ($1 par value per share) & 958 \\ \hline
Additional paid-in capital & $3,994 \\ \hline
Retained earnings & $16,250 \\ \hline
Treasury shares & -$14,015 \\ \hline
Net common equity & $7,187 \\ \hline
NOTE: & \\ \hline
Authorized shares & 2,000 \\ \hline
Issued shares, of which & 958 \\ \hline
Outstanding & 735 \\ \hline
Treasury shares & 223 \\ \hline
\end{tabular}
\end{document}
```

Actually, to my mind, most of this is pretty useless to anyone but lawyers and accountants
- Number of shares - From legal perspective, this provides some information. Articles of incorporation or bylaws state how many shares may be issued. Mainly a legal and documentation issue - authorized shares usually set at some high number so don't have to go back and get a new board resolution or shareholders meeting just to issue new shares. For Honeywell, 2bn shares authorized, but only $958\mathrm{mn}$ have been issued.
- Outstanding vs. Treasury Shares – Treasury shares are shares that have been issued but later bought back by the company. We'll talk about share repurchases shortly and we'll see that this share repurchases is a very common way of returning money to stockholders nowadays. For Honeywell there are 735mn shares outstanding. This is the only worthwhile number from here – we need to know the number of shares to calculate the market value (MV of Equity = # shares outstanding * price per share)
- The value information at the top is pretty meaningless.
- The value of "Common Shares" ($958mn) is meaningless for two reasons. First, it is value at par of $1/share – par value is nothing but a legal fiction – for historical legal reasons shares usually have to be given some value in the articles of incorporation, and values such as $1 or 1 cent are commonly chosen. Second, it includes all shares issued, including Treasury shares that have been repurchased.
- "Additional paid-in capital" is the additional capital (above the par value $958mn) raised from selling shares. This might mean something except that it's book value - value at time shares were issued and not current market value
- Retained earnings – the additional equity raised by retaining profits and not paying them out to shareholders.
- Treasury shares - this is the amount the firm paid out to repurchase the Treasury shares.
- Note that the equity created by net profits retained (the net of retained earnings less Treasury shares) is, for Honeywell, almost half the equity created by newly issued equity. i.e. retained earnings is a very important way of creating new equity.
- The final value, "Net common equity" of $7,187, is pretty meaningless. It is the sum of historical values and may have little relation to market values.
- The original equity (par value plus additional paid-in capital) could have been issued 50 years ago. If Honeywell invested in good projects and the firm grew, that original equity would have grown substantially.
- In fact, the $7,187mn implies, for 735mn shares, a value of$ 9.78/share. In December 2008 the actual value was more like $35.

To repeat, about the only valuable information from that table is the 735mn outstanding shares.

## Honeywell International - Market Value
As of 29-apr-2022. Yahoo Finance

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Shares Outstanding & 685.48mn \\ \hline
Price per share & $193.51 \\ \hline
Market Value & $132.6bn \\ \hline
Float & 650.79mn \\ \hline
\end{tabular}
\end{document}
```

Shares Outstanding:
- Issued and not bought back - not "Treasury" shares. Less than authorized

Price per share Market Value
- Simply Shares Price

Float
- Shares available to the public
- Excludes "restricted" shares, owned by executives, cannot be freely sold

## Ownership And Voting
Equity ownership implies company ownership
- In practice, ownership so widely distributed equity holders do not make management decisions
- Control is delegated to professional managers
- different for small companies

For large public corporations, common stockholders' right of control limited to voting for appointments to the board of directors
- The board acts as the stockholders' representatives
- Managers are, in theory, responsible to stockholders through the board

## Voting
- Many stockholders don't vote
- Some investors specialize in buying shares and pressuring companies to make changes. Called activist shareholders.
Majority vs. Cumulative Voting

Ownership and Voting - equity ownership implies company ownership
- Generally owning the equity of the firm means owning the firm itself – the right to residual profits and the right to control.
- In practice, for public companies in developed countries share ownership is so widely distributed that equity holders do not make direct management decisions.
- By-and-large, control is delegated to professional managers
- Note that this will not be true for small companies. A small company will usually have the owners also be the managers. For example, the hedge fund I started and ran for a number of years was owned by three of us (we held the shares, until we sold a percentage to an outside fund) and running and managing the firm was also our full time jobs.
- In practice, for large public corporations, common stockholders' right of control is limited to the right to vote for appointments to the board of directors and some crucial matters (such as mergers, changes in articles of incorporation or bylaws).
- The board acts as the stockholders' representatives and managers are, in theory, responsible to stockholders through the board.
- We will talk more about the board and corporate governance later.
Voting

– Many stockholders don't vote – feel they own so few shares it doesn't matter
- Some investors specialize in buying shares (often concentrating on single companies and buying large blocks) and pressuring companies to make changes – in other words actively exercising their ownership rights. Called activist shareholders.
Majority vs. Cumulative Voting
- Majority - each director voted separately, and one vote per share per director
- Cumulative - still get one vote per share per director but can cumulate votes and apply all to a single director. This makes it easier for activist investors to have an impact, and thus some shareholder groups campaign for cumulative voting.

## Dual-Class Shares And Minority Rights
Residual cash flow and control rights might not go together.
- Two classes of shares, identical in CF rights but different voting rights.
- More common in Europe than in the US, but it does happen - Google

Minority rights - a touchy problem.
- Majority shareholders may try to deprive minority shareholders of cash or rights.
Example: Russian company

Dual-class shares and minority rights

It is not necessary that residual cash flow and control rights go together. Sometimes there are two classes of shares, identical in their rights to cash flows but with different voting rights. This tends to be more common in Europe than in the US, but it does happen - the book cites Google, whose owners created two share classes to enable them to retain control over the company when they first issued shares to the public.

Minority rights - a touchy problem. Problem that majority shareholders may exercise their majority ownership rights to deprive minority shareholders of cash or rights.

Book cites example of a Russian company where the majority defrauded minority shareholders – majority shareholder created 1 share out of every 136,000 existing shares. Minority shareholders had fewer than 136,000, so they got paid o at par – as we saw above this is often far below market value.

These kind of games are generally not allowed in developed countries – but then Russia is a wild place to do business. The government closed Yukos (former large oil company). The story of Yukos and Khodorkovsky is pretty amazing. The Russian tax authorities claimed they owed $28bn in taxes – a pretty ridiculous number given revenue and taxes paid by other oil companies. Seems politically-motivated – government expropriation of assets. Assets were bought at auction for $9.4bn in December 2004 (about half of what they'd been estimated a few months earlier). The company that bought (Baikalfinansgrup) was incorporated only a few days earlier and at an address occupied by a snack bar, and there were no competing bids. Baikalfinansgroup was acquired shortly afterward by Rosneft, the state-owned oil company. In all, very shady dealings.

## Preferred Equity
Not large for most companies, but important idea

Tiering or cascade of cash flows:
- First to debt-holders. These payments are required, not paying means default
Second to preferred stockholders
- Only third to common shareholders

## Preferred Equity
- Not large for most companies, but important idea
- Still equity, in that no promise of payment, but actually somewhat intermediate between debt and common equity.
- Like debt, amount of payments set up-front, but like equity company can choose not to pay a preferred dividend still not be in default - preferred dividend not a fixed promise
- But most preferred issues are cumulative preferred stock which requires any past missed preferred dividends be made up before any common dividends can be paid.
- Thus we have a tiering or cascade of cash flows:

First to debt-holders. These payments are required, not paying means default. Second to preferred stockholders.

Only third to common shareholders.
- This cash flow cascading is taken much further in structured products such as CDOs and CMOs. These take existing securities and slice up the cash flows in various ways to change the risk / return characteristics of resulting new securities.
- For various reasons company profits are not sliced up so finely among various securities, but the cascading and slicing between debt, preferred, and common shows some of this.

Why don't company cash flows get sliced up so finely? I think main reason has to do with asymmetric information and contracts. For CDOs and CMOs the amount of cash generated by the securities behind the CDO or CMO can be observed and verified easily by everyone, both buyers and sellers. The cash just has to be sliced up according to the pre-set rules. For a corporation, however, there can be substantial uncertainty about the actual profits in any quarter or year. There could be incentives for the owners to lie about the level of CF. Thus just very simple structures, with debt getting promised payment, then whatever is left over going to equity (common and preferred). Easy to monitor if interest is paid on the debt, and severe penalties (default and bankruptcy) if not.

## Old
STOCKS (largely from Sharpe, ch 17):

1. Corporate Form

(a) What is a corporation anyway?
(b) Stock certificates, voting, proxy fight, takeovers, ownership vs control, stockholders' equity

2. Dividends

(a) Cash dividends vs cash dividends (they're really the same)
(b) Stock splits are nothing

3. Issuing new stock

(a) General Cash O ering (US) vs Preemptive rights (UK, Europe)

Notes from RPI lectures - from [Brealey et al.(2013)Brealey, Myers, and Allen] section 14.2 and chapter 15

## References
[Brealey et al. (2013) Brealey, Myers, and Allen] Richard A. Brealey, Stewart C. Myers, and Franklin Allen. Principles of Corporate Finance. McGraw-Hill Education, New York, 11 edition edition, January 2013. ISBN 978-0-07-803476-3.

## Risk Premium & Risk-Adjusted Discounting In Practice
Lecture 8

Thomas S. Coleman

12 April 2022; Draft April 17,2023

## Outline
1 Risk-Adjusted Discounting in Practice 1

1.1 Where Do We Get Risk-Premium? (notes) 1
1.2 Bankruptcy & Default (notes, BKM 14.5) 5
1.3 Credit Spreads - Market Measure of Default Uncertainty - Revisit Sovereign Default 9
1.4 Credit ratings (BMA 23.3 (custom Ch 8)) 13

2 Risk-Neutral Valuation: Adjust Probabilities - Introduction to Options 16

3 Corporate Bonds (Sharpe 14.6) 18

## 1 Risk-Adjusted Discounting In Practice

### 1.1 Where Do We Get Risk-Premium? (Notes)
Calculating Risk Premium Seems Complicated

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/86caa14b6301b74efecbd7bef6f76fcb98e910530b18e3f6f93a39a8fb89e3d3.jpg)

- Start with cash flow distribution

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/cb7339b7c956589e7b3e6ec6b2b368723e3473c233dac16b5733229eb1164b71.jpg)

- Use expected utility to get the CE (single, certainty equivalent CF)

$$ u (C E) = p \mid u (C _ {1}) + (1 - p) \mid u (C _ {h})
$$
- Adjust the original CFs until the average (or promised) CF from the distribution equals the CE

$$
C E = p _ {i} C F _ {a d j} ^ {l o} + (1 - p) _ {i} C F _ {a d j} ^ {h i}
$$

Write the adjustment as a ratio $1 / (1 + rp)$ $\mathsf{CE} = \frac{1}{1 + rp}$ p i CFlo orig $+ (1 - p)$ CFhi orig $= \frac{\mathsf{CF}_{\mathsf{orig}}^{\mathsf{avg}}}{1 + rp}$
- Apply the adjustment and discounting together to end at risk-adjusted discounting

$$
P V = \frac {C E}{1 + y _ {\text {u s t}}} = \frac {C F _ {\text {o r i g}} ^ {\text {a v g}}}{(1 + y _ {\text {u s t}}) (1 + r p)} = \frac {C F _ {\text {o r i g}} ^ {\text {a v g}}}{1 + y _ {\text {r i s k y}}}
$$

How do we ever do this in practice?

## Standard Bonds Easy (Callables & Equities Not Easy)
Standard Bonds: Market Price Risk-adjusted yield Risk Premium
- Can use PV = PromCF $\frac{\text{PromCF}}{(1 + y_{\text{risky}})} = \frac{\text{PromCF}}{(1 + y_{\text{ust}})(1 + rp)}$ directly to back out $rp$

Callable Bonds: Market Price Option-Adjusted Yield Risk Premium
- What is a callable bond? How do we value (can't use simple PV)
- What is "Option-Adjusted Yield"?
What is an option?

Equities: Market Price
- Don't have $\text{Prim} CF$ or $ECF$ so can't back out $rp$.
- Use history to estimate $rp$

## Fis - Standard Yield Calculations - Promised Cfs
Settle 31-dec-15 - Calculate FIS Yield using Promised CF Market gives us risk premium - spread = 4.536% - 2.268% = 227bp
- Embedded in bond prices - market gives us risk premium

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
31-dec-2015 & Coupon & Maturity & Price & Yield \\ \hline
10-yr US Treasury & 2.25\% & 15-nov-25 & 99.84375 & 2.268\% \\ \hline
FIS & 5.0\% & 15-oct-25 & 103.626 & 4.536\% \\ \hline
\end{tabular}
\end{document}
```
- UST: $2.25\%$ coupon, 15-nov-25 (31-dec-15) $\mathbf{P} = 99.84375$, $\mathbf{Y} = 2.268\%$

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
 & Type & Settle & Mat & CPN\% & YLD\% & Price \\ \hline
Given & A/A Semi & 12.312015 & 11.152025 & 2.25 & & 99.84375 \\ \hline
Solve For & & & & & 2.268 & \\ \hline
\end{tabular}
\end{document}
```

Calculate FIS: $5\%$ coupon, 15-oct-25 (31-dec-15) $\mathbf{P} = 103.626$ $\mathrm{Y} = 4.536\%$

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
 & Type & Settle & Mat & CPN\% & YLD\% & Price \\ \hline
Given & 360 Semi & 12.312015 & 10.152025 & 5 & & 103.626 \\ \hline
Solve For & & & & & 4.536 & \\ \hline
\end{tabular}
\end{document}
```

## Bond Market & Fis Example - Risk-Adjusted Yield
Market gives us risk premium - embedded in price (settle 31-dec-15)
- UST: $2.25\%$ coupon, 15-nov-25 $\mathrm{P} = 99.84375$, $\mathrm{Y} = 2.268\%$ sab

$$
- 1.02268 = (1 + \mathrm {u s t})
$$

FIS: $5\%$ coupon, 15-oct-25 $\mathbf{P} = 103.626$ $\mathrm{Y} = 4.536\% \mathrm{Sab}$

$$
- 1.04536 = (1 + \mathrm {ust}) _ {i} (1 + \mathrm {rp}) \quad 1 + \mathrm {rp} = 1.02218 \text {or} r p = 2.218 \%
$$

The UST CFs are known, the FIS only promised CFs, but CF diagram useful We can just calculate yield, market gives us risk premium!

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/70383e25aa9a028c8c7c557be39b12db1499c264b6eed8595986ce722b435c83.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/d67c2e11f058b9b9d5d9bc37b57cac5c0879a4bac2b4e19e23e878030a131c1d.jpg)

Generally use spread: $\mathbf{rp} = 4.54\% - 2.27\% = 227\mathbf{bp}$

## Bond Spreads Measure Uncertainty & Credit Risk
Spread between UST (risk-free) and corporate risk-adjusted yields
- 31-jan-16: UST $2.27\%$, FIS $4.54\% = >$ spread = 227bp
- Market's assessment of credit risk - probability of default
- **Embeds uncertainty of cash flows (spread of the distribution), and price (compensation for uncertainty)**

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/6c3ca01e079704151f1835b94e435e20e807469876e5265d292064199ea7f4b7.jpg)

## Bloomberg
FIS 5 $10 / 25 < \mathrm{corp}>$ YAS- $\rightharpoondown$ yields and spreads
25-Feb-2016, spread vs T 1.625 2/26 was 280, OAS 287
- What is OAS? Option Adjusted Spread - Will discuss shortly
- History: GT10 <govt> FIS 5 10/25 <corp> SGIP - then "Actions - View Spread"

## Risk Premium From Market Yields
For FIS 31-dec-2015, decompose sensitivity into discounting and credit
- UST: $2.25\%$ coupon, 15-nov-25 $\mathrm{P} = 99.84375$, $\mathrm{Y} = 2.268\%$ sab
FIS: $5\%$ coupon, 15-oct-25 $\mathbf{P} = 103.626$ $\mathbf{Y} = 4.536\% \mathrm{Sab}$

Usually use approximation
- rp y - yust
- 227bp = 4.54% - 2.27%

Overall (risky) yield separates into two parts:

1. UST (risk-free) discounting $(y_{\mathrm{ust}})$ - overall market
2. Risk premium (rp) - specific to FIS (or whatever company)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/adf49251841181b09181aa1b6f06690831f9f0930441b6e35145791510b39cb3.jpg)

## Alternative (Less Useful): Risk Premium In Dollars
Risk Premium $(1 + rp)$ tells us value or price of uncertainty in rate or yield terms. Can also measure in up-front dollar terms
- Discount FIS at UST (risk-free) yield: what FIS would be if certain CFs
FIS: $5\%$ coupon, 15-oct-25 (31-dec-15) $\mathbf{Y} = 4.536\%$ $\mathbf{P} = 103.626$

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
 & Type & Settle & Mat & CPN\% & YLD\% & Price \\ \hline
Given & 360 Semi & 12.312015 & 10.152025 & 5 & 4.536 & \\ \hline
Solve For & & & & & & 103.626 \\ \hline
\end{tabular}
\end{document}
```

FIS: $5\%$ coupon, 15-oct-25 (31-dec-15) $\mathbf{Y} = 2.268\%$ $\mathbf{P} = 123.859$

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
 & Type & Settle & Mat & CPN\% & YLD\% & Price \\ \hline
Given & 360 Semi & 12.312015 & 10.152025 & 5 & 2.268 & \\ \hline
Solve For & & & & & & 123.859 \\ \hline
\end{tabular}
\end{document}
```

difference - $20.23 - is $ value of uncertainty
- But less useful than risk premium in yield (227bp)
- 227bp applies every year, to any similar CFs

### 1.2 Bankruptcy & Default (Notes, Bkm 14.5)
```latex
\begin{document}
\begin{tabular}{|c|}
\hline
Bankruptcy (Legal Process) &amp; Default (Failure-to-Pay)
Talk about them together - related but separate concepts
Bankruptcy - legal process
·Laws for re-arrangement (disposition) of assets when cannot pay debts
·Chapter 11 (reorganization) - most common in US corporate bankruptcy
    - &quot;Chapter&quot; refers to the chapter of the US bankruptcy code.
    - &quot;Chapter 13&quot; (individuals), &quot;Chapter 7&quot; (liquidation), &quot;Chapter 9&quot; (municipality)
·Laws di er across countries \\ \hline
Default - failure to pay debts
·Breaking the &quot;promise to pay&quot; for a debt \\ \hline
Generally bankruptcy &amp; default go together
·When a corporation fails to pay (defaults or &quot;goes into default&quot;) then pushed into bankruptcy proceedings (process for re-assigning or selling assets) \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|}
\hline
Bankruptcy is a Wonderful Thing
Bankruptcy is a beautiful thing - part of the power of free markets
• Debt is a promise - we all know it may get broken
• Nothing wrong with bankruptcy, when try honestly and fail
What is bankruptcy? (Chapter 11 reorganization)
• Owners (shareholders) admit that the value of assets less than promises made
• Pass assets to debt-holders - debtholders become new owners
Simple act of bankruptcy not a “cost” - don’t get confused by loss in bankruptcy
• Enron (BKM p. 465) - at peak stock worth $60bn+. By end-2001 worthless.
• Not $60bn “loss” - Enron worthless at peak (fraud), we just didn’t know it.
- Actually some “shorters” did know - huge service for all of us, hard work of ferreting out problems the rest of us are too lazy to uncover
Bankruptcy is simple and wonderful part of capitalism \\ \hline
\end{tabular}
\end{document}
```

## Bankruptcy Costs
Bankruptcy does have costs, can be long & expensive process
- Direct costs - Pay lawyers, accountants
- Enron - $757mn in legal, accounting, other
- Lehman - likely as much as $1,500mn
- Indirect costs - many - eg customers, employees leave
- Big issue in 2008 financial crisis - huge disruption when financial firm goes under

## Evidence
- difficult to estimate, but cost might be something like $3\%$ of total (book) assets, $20\%$ of market value of equity
- Best evidence - reluctance of creditors to push insolvent firms (MV assets  MV liabilities) into bankruptcy (transfer assets to creditors)
- Often, creditors would rather have managers and shareholders try to get back to health

## Corporate & Sovereign Default
Corporate Default & Bankruptcy
- Transfer of ownership
- Bankruptcy is a beautiful thing - allows firms to make mistakes
Depends on national laws - legal ownership & transfer

## Sovereign Default
- State refuses to pay
- But creditors cannot take ownership

-In general-except see Newfoundland 1928-1933 (R&R $p_{0}$0.81)
- "sovereign but bankrupt Newfoundland absorbed by Canada"

## Default Vs Re-Scheduling
Default is non-payment, Re-Scheduling changing the terms

Economically the same
- Default: usually get something back
- Re-Scheduling: change the terms (eg lower coupon) - e ective default

Greece o cially launched a bond swap Friday [24-feb-2012], aiming to wipe 107 billion euros ($142 billion) o its 350-billion-euro debt bill. The debt write-down, also known as haircut, hits private investors hard.

As part of the deal [debt swap] – also known as a haircut – private creditors are asked to trade in their Greek bonds for new ones or erging lower interest rates and longer maturities [pushing the €100 principal further away].

History: France in early 1700s: reduced coupon on rentes

Britain: often reduced interest on Consols - but redeemable

Rates $3\%$, £4 annuity worth £133.
- Redeem for £100, re-issue new £3 annuity. Or just reduce to £3

## 1. Default Vs Restructuring. Re-Scheduling
(a) p 61. Greece: "As part of the deal [debt swap] - also known as a haircut - private creditors are asked to trade in their Greek bonds for new ones or erging lower interest rates and longer maturities [pushing the €100 principal further away]. Bondholders are expected to take a nominal loss of $53.5\%$ on their holdings, which equates to a real loss of 73 to $74\%$." (web, http://www.dw.com/en/greek-creditors-receive-o cial-haircut-Notification/a-15767530, early 2012) "Greece o cially launched a bond swap Friday [24-feb-2012], aiming to wipe 107 billion euros ($142 billion) o its 350-billion-euro debt bill. The debt write-down, also known as haircut, hits private investors hard."
(b) France: reduced coupons on rentes - a form of re-scheduling and thus default
(c) Britain: often reduced coupon on Consols i. But this is interesting - not a re-scheduling. ii. Consols redeemable annuities – callable at £100. Often the government would find it easier to have investors take a reduce coupon rather than redeem the existing bonds and then re-issue at new (lower) coupon iii. Rates 3%: Annuity of £4 is worth £4/0.03 = £133. Can redeem at £100, then re-issue new annuity at £3 coupon, worth £100.

Nations Default Often - R&R Figure 6.2

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
Table 3. External Default and Rescheduling: Africa, Europe, and Latin America, Nineteenth Century & & & & \\ \hline
Country/date of independence1 & Dates & & & \\ \hline
1800–1824 & 1825–1849 & 1850–1874 & 1875–1899 & \\ \hline
Africa & & & & \\ \hline
Egypt, 1831 & & & & 1876 \\ \hline
Tunisia & & & 1867 & \\ \hline
Europe & & & & \\ \hline
Austria-Hungary & 1802,1805,1811,1816 & & 1868 & \\ \hline
France & 1812 & & & \\ \hline
Germany & & & & \\ \hline
Hesse & 1814 & & & \\ \hline
Prussia & 1807,1813 & & & \\ \hline
Schleswig—Holstein & & & 1850 & \\ \hline
Westphalia & 1812 & & & \\ \hline
Greece, 1829 & & 1826,1843 & 1860 & 1893 \\ \hline
Netherlands & 1814 & & & \\ \hline
Portugal & & 1828,1837,1841,1845 & 1852 & 1890 \\ \hline
Russia & & 1839 & & 1885 \\ \hline
Spain & 1809,1820 & 1831,1834 & 1851,1867,1872 & 1882 \\ \hline
Sweden & 1812 & & & \\ \hline
Turkey & & & & 1876 \\ \hline
\end{tabular}
\end{document}
```

[Reinhart and Rogo (2011)] Figure 6.2. This copy from [Reinhart and Rogo (2008)]

## And Into 20Th C - R&R Figure 6.4
Table 5. Default and Rescheduling: Europe, and Latin America, Twentieth Century-2006

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
Country/date of independence1 & 1900–1824 & 1925–1949 & Dates & \\ \hline
1950–1974 & 1975–2006 & & & \\ \hline
Europe & & & & \\ \hline
Austria & & 1938,1940 & & \\ \hline
Germany & & 1932,1939 & & \\ \hline
Greece & & 1932 & & \\ \hline
Hungary, 1918 & & 1932,1941 & & \\ \hline
Poland, 1918 & & 1936,1940 & & 1981 \\ \hline
Romania & & 1933 & & 1981,1986 \\ \hline
Russia & 1918 & & & 1991,1998 \\ \hline
Turkey & 1915 & 1931,1940 & & 1978,1982 \\ \hline
Latin America & & & & \\ \hline
Argentina & & & 1951,1956 & 1982,1989,2001 \\ \hline
Bolivia & & 1931 & & 1980,1986,1989 \\ \hline
Brazil & 1902,1914 & 1931,1937 & 1961,1964 & 1983 \\ \hline
Chile & & 1931 & 1961,1963,1966,1972,1974 & 1983 \\ \hline
\end{tabular}
\end{document}
```

## [Reinhart And Rogo (2011)] Figure 6.4. This Copy From [Reinhart And Rogo (2008)]

## Default Very Common - R&R Figure 5.1
- Defaults common - be cautious with debt and borrowing
- But "Serial Default" etc. symptoms of more fundamental causes.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/1df2c6fc7ca1e449f04087f498f6b94d2e0a4a5c129026c621abf281ac7b5d1b.jpg)

Sources: Lindert and Morton (1989), Macdonald (2003), Purcell and Kaufman (1993), Reinhart, Rogoff, and Savastano (2003), Suter (1992), and Standard and Poor (various years).
Notes: Sample size includes all countries, out of a total of sixty six listed in Table 1, that were independent states in the given year.

[Reinhart and Rogo (2011)] Figure 5.1. This copy from [Reinhart and Rogo (2008)]

### 1.3 Credit Spreads - Market Measure Of Default Uncertainty - Revisit Sovereign Default

## Credit Spread: Market Measure Of "Default"
Revisit Sovereign Spreads from Lecture 2

Investors not foolish - recognize that firms (and nations) may default

Markets embed probability and loss from default
- Remember, "risky yield" measures $UST$ (certainty yield, often called "risk free") & risk premium
- $y_{\text{risky}} = \text{ust} + \text{rp}$ or more accurately $(1 + y_{\text{risky}}) = (1 + \text{ust})(1 + \text{rp})$

More risky countries higher risk premium, higher yield (3-oct-18 from FT)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
 & Maturity & Coupon & S&amp;P rating & Price & Yield & Spread \\ \hline
Peru & 3/29/19 & 7.125 & BBB+ & 104.40 & 2.60\% & 34bp \\ \hline
Brazil & 1/31/23 & 2.63 & BB- & 91.40 & 4.89\% & 195bp \\ \hline
Turkey & 3/23 & 3.25 & BB & 86.76 & 6.73\% & 379bp \\ \hline
\end{tabular}
\end{document}
```

Spread measures market's perception (and valuation) for uncertainty

Brazil: low coupon but low price high yield: 195bp over UST
- Always look at yield as spread to bond with known CFs (UST)

## 3-Oct-18 From Ft

## Remember Cf Adjustment Idea
- Start with cash flow distribution
- Use expected utility to get the CE (single, certainty equivalent CF)
- Adjust the original CFs until the average (or promised) CF from the distribution equals the CE
Write the adjustment as a ratio $1 / (1 + \mathrm{rp})$
- Apply the adjustment & discounting together: risk-adjusted discounting

$$
P V = \frac {C E}{1 + u s t} = \frac {C F _ {\text {o r i g}} ^ {\text {p r o m}}}{1 + y _ {\text {r i s k y}}} = \frac {C F _ {\text {o r i g}} ^ {\text {p r o m}}}{(1 + u s t) (1 + r p)}
$$

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
 & Maturity & Coupon & S&amp;P rating & Price & Yield & Spread \\ \hline
Peru & 3/29/19 & 7.125 & BBB+ & 104.40 & 2.60\% & 34bp \\ \hline
Brazil & 1/31/23 & 2.63 & BB- & 91.40 & 4.89\% & 195bp \\ \hline
Turkey & 3/23 & 3.25 & BB & 86.76 & 6.73\% & 379bp \\ \hline
\end{tabular}
\end{document}
```

We get $rp$ by: Market Price Risk-adjusted yield Risk Premium

Brazil: Market Price Risk-adjusted yield Risk Premium = 195bp

## Let'S Apply Cf Adjustment To Brazil
- Adjust CFs as a ratio $1 / (1 + \mathrm{rp})$
- Apply the adjustment & discounting separately: first adjust CFs, then discount

$$
P V = \frac {C E}{1 + u s t} = \frac {C F _ {\text {o r i g}} ^ {\text {p r o m}} / 1 + r p}{1 + u s t}
$$
- Let's adjust Brazil CFs: 1/1.01195 per year
- Promised CFs reduced year-by-year: FV is $91.68 = \frac{100}{(1.0195)^{4.5}}$
- Discounting at UST, we get today's PV

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/0c7fc9807034edf64a097a7bd30098981c3810443947ca58cf7fcfa5b1f256e0.jpg)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
 & Maturity & Coupon & S&amp;P rating & Price & Yield & Spread \\ \hline
Peru & 3/29/19 & 7.125 & BBB+ & 104.40 & 2.60\% & 34bp \\ \hline
Brazil & 1/31/23 & 2.63 & BB- & 91.40 & 4.89\% & 195bp \\ \hline
Turkey & 3/23 & 3.25 & BB & 86.76 & 6.73\% & 379bp \\ \hline
\end{tabular}
\end{document}
```

## Credit Spread: Market Measure Of "Default"
"Credit Spread": yield relative to low-risk yield - UST

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
Oct-18 & Maturity & Coupon & S&amp;P rating & Price & Yield & Spread \\ \hline
Peru & 3/29/19 & 7.125 & BBB+ & 104.40 & 2.60\% & 34bp \\ \hline
Brazil & 1/31/23 & 2.63 & BB- & 91.40 & 4.89\% & 195bp \\ \hline
Turkey & 3/23 & 3.25 & BB & 86.76 & 6.73\% & 379bp \\ \hline
\end{tabular}
\end{document}
```

Measure relative to "certainty yield" for known CF - UST

Compensation for extra risk of default (over UST), set by market
- Brazil 1/23: 5yr UST $2.94\%$. Spread = 4.89 - 2.94 = 1.95% or 195bp

Details on credit spread (risk-premium) calculation

$$
1 + \mathrm {Y} _ {\text {r i s k y}} = (1 + \mathrm {u s t}) (1 + \mathrm {r p}) = 1 + \mathrm {u s t} + \mathrm {r p} + \mathrm {u s t} _ {i} \mathrm {r p} \quad 1 + \mathrm {u s t} + \mathrm {r p} \quad \mathrm {r p} \quad \mathrm {Y} _ {\text {r i s k y}} - \mathrm {u s t}
$$

$$
1 + Y _ {\text {B r a z i l}} = \left(1 + Y _ {\text {U S T}}\right) \left(1 + \mathrm {r p}\right) \quad 1 + Y _ {\text {U S T}} + \mathrm {r p} \quad \mathrm {r p} \quad Y _ {\text {B r a z i l}} - Y _ {\text {U S T}}
$$

$$
\mathrm{rpprox} \quad 4.89 \% - 2.94 \% = 1.95 \% \text {or} 195 \mathrm{bp}
$$

$$
\mathrm{r}p_{\text{fect}} = \frac{4.89\% - 2.94\%}{1.0294} = 1.89\% \text{or} 189\mathrm{bp}
$$

Turkey: Higher spread, market says more chance of default
- Believe market before credit-rating agencies
Rating agencies say Brazil BB-, Turkey BB
- Market says Brazil 195bp, Turkey 379bp

## Term Structure Of Default Spread
Credit Spreads di er across maturity as well as across issuers
- Di erences bigger and more important across issuers

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
 & Maturity & Coupon & S&amp;P rating & Price & Yield & Spread \\ \hline
Peru & 3/29/19 & 7.125 & BBB+ & 104.40 & 2.60\% & 34bp \\ \hline
Peru & 8/27 & 4.13 & BBB+ & 103.5 & 3.56\% & 80bp \\ \hline
Brazil & 1/31/23 & 2.63 & BB- & 91.40 & 4.89\% & 195bp \\ \hline
Brazil & 2/47 & 5.63 & BB- & 88.15 & 5.55\% & 335bp \\ \hline
\end{tabular}
\end{document}
```

Term structure (maturity) di erences due to changing likelihood over time
- Often see rising pattern - more and better knowledge about close-in events
- Could also go other way - falling risk premium
- Big events close in, then problems get better
- Don't make mistake to think premium rises because of longer maturity: Risk premium measures per year compensation for uncertainty

NB: 3-oct-18 from FT gives price and yield for Brazil $5.63\%$ of 2/47 (as above) but does not report the spread to UST. They report the UST $2.75\%$ of 11/47 as yielding $3.20\%$, which gives spread shown above.

## Credit Spread For Europe
Germany is the "safe" country

Measure France, Italy, Greece relative to Germany (3-oct-18 from FT)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
 & Maturity & Coupon & Price & Yield & Spread & Intensity & Prob.def) \\ \hline
Greece & 1/28 & 3.75 & 96.59 & 4.20\% & 380bp & 5.31 & 39\% \\ \hline
Germany & 7/28 & 4.75 & 141.47 & 0.40 & & & \\ \hline
France & 5/28 & 0.75 & 100.01 & 0.75 & 35bp & 0.50 & 5\% \\ \hline
Italy & 9/28 & 4.75 & 114.54 & 3.04 & 264bp & 3.49 & 29\% \\ \hline
\end{tabular}
\end{document}
```
- Higher spread gives investors compensation for possible default
- Also - market tells us how much risk
- Can use to fit default model
Market behaves as if Greece default probability $39\%$ in 10yrs

As digression (for those interested in reading more), using risk-neutral valuation
- "Spread" is risk-premium method for valuing uncertain CFs
- For some purposes, alternative method: "risk-neutral" valuation from CDS
- Build in CF dist'n: for Greece, each period roughly $95\%$ chance pay, $5\%$ don't

Valuation of uncertain CFs either by spread or "intensity":
- For Greece, 380bp spread $5.31\%$ intensity
- Spread: for bonds, usual "promised" CFs
- Intensity: for different CFs like CDS - see my "Practical Guide" in week 4 module

## Credit Spread For Europe
Germany is the "safe" country

Measure France, Italy, Spain, Belgium relative to Germany

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/6eb7e5920789efbbb1b4d70f0968fa4b888eb8939ed7169e49908ae2215a7451.jpg)


## 1. Digression On Credit Spreads
(a) Important point: default (or re-scheduling) does not mean investors are irrational or lose by investing in bonds that eventually default i. Often investors receive a higher coupon or higher yield that compensates for the chance of default ii. Bonds, like any financial security, are simply a game of expectations – you pay today with some chance of getting money in the future.

(b) Credit spreads as of 24-apr-17 (from FT)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
 & Maturity & Coupon & S&amp;P rating & Price & Yield & Spread \\ \hline
Brazil & 1/18 & 8 & BB & 103.38 & 3.30\% & 207bp \\ \hline
Peru & 3/29/19 & 7.125 & BBB+ & 109.83 & 1.92\% & 69bp \\ \hline
Brazil & 1/31/22 & 12.50 & BB & 111.029 & 9.49\% & 768bp \\ \hline
\end{tabular}
\end{document}
```

For Brazil 1/31/22 FT says 111.29 but price & yield don't match- $9.49\% - > 111.029$

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
 & Maturity & Coupon & Price & Yield & Spread & Intensity & Prob.def) \\ \hline
Greece & 4/1/19 & 4.75 & 97.07 & 6.38\% & 709bp & 11.40 & 20.4\% \\ \hline
 & 2/27 & 3.00 & 75.75 & 6.36\% & 603bp & 10.93 & 66.5\% \\ \hline
Germany & 4/19 & 0.50 & 102.39 & -0.71\% & & & \\ \hline
 & 2/27 & 0.25 & 99.23 & 0.33\% & & & \\ \hline
France & 5/27 & 1.00 & 101.61 & 0.83\% & 50bp & 0.82 & 7.9\% \\ \hline
Italy & 6/27 & 2.20 & 100.20 & 2.19\% & 186bp & 3.04 & 26\% \\ \hline
\end{tabular}
\end{document}
```

(c) Credit spreads as of 3-oct-18 (from FT)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
 & Maturity & Coupon & S&amp;P rating & Price & Yield & Spread \\ \hline
Peru & 3/29/19 & 7.125 & BBB+ & 104.40 & 2.60\% & 34bp \\ \hline
Brazil & 1/31/23 & 2.63 & BB- & 91.40 & 4.89\% & 195bp \\ \hline
Turkey & 3/23 & 3.25 & BB & 86.76 & 6.73\% & 379bp \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
 & Maturity & Coupon & Price & Yield & Spread & Intensity & Prob.def) \\ \hline
Greece & 1/28 & 3.75 & 96.59 & 4.20\% & 380bp & 5.31 & 39\% \\ \hline
Germany & 7/28 & 4.75 & 141.47 & 0.40 & & & \\ \hline
France & 5/28 & 0.75 & 100.01 & 0.75 & 35bp & 0.50 & 5\% \\ \hline
Italy & 9/28 & 4.75 & 114.54 & 3.04 & 264bp & 3.49 & 29\% \\ \hline
\end{tabular}
\end{document}
```

(d) "Yield" correctly measures how much you earn - it trades of the lower price (you buy the bond cheaper) and higher coupon (you earn more each year).
 i. Take the Brazil $12.50 \%$ of 1/31/22. Very high coupon is good (earn a lot each year) but you have to pay a lot up- front ($111.029). Net you earn $9.49 \%$ ii. Still, this is much higher than for US go'$v_{t}$ bonds - similar maturity UST is the $1.875\%$ of 03/22 with yield of $1.81\%$. Spread of 768bp.

(e) Credit spread incorporates both the probability of the default and the value of the loss - how much investors are hurt by the loss.
 i. Incorporates recovery – default usually does not mean you lose all $100

## Valuation With Risk-Neutral Valuation
Everything we've done so far has been "risk-premium" where we adjust the CF distribution by adjusting the CFs. But alternatively we can adjust the probabilities and then use the distribution itself. We might want to do this when we want to look at the CFs. We could build a model where each coupon date (more technically each instant) there are two possibilities: 1) the bond defaults and pays a "recovery value"; 2) the bond continues to the next period.

For those interested in this kind of valuation (which is used for valuing Credit Default Swaps (CDS)) look at Section V in my "Practical Guide to Yield Curves..." on Canvas, or my paper at SSRN: https://papers.ssrn.com/abstract=1555118

## Spreads Change As Market Valuation Of Credit Risk Changes
10-year US Corporate Spreads

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/6254fed6dd8bbbba45b32a4e52ef1666afd19fdb1309400340483b4ba1d58b39.jpg)

Changes in preferences for risk and expectations of default

### 1.4 Credit Ratings (Bma 23.3 (Custom Ch 8))
1. What are credit ratings

(a) Agencies (3 big: S&P, Moody's, Fitch)
(b) Ratings

2. Examples

(a) Some companies and ratings

3. Bond Ratings as Proxy for Credit Spread (slide already done)

## Bond Ratings & Credit Rating Agencies - Estimate Default
Credit Rating Agencies study companies and new bond issues
- Evaluate and predict probability of default, Assign letter grade

Three main firms (S&P & Moody's 80%):
- Standard & Poor's (S&P)
- Moody's Investors Service

Rate companies, countries, single bonds
- Paid by company issuing bond - potential conflict of interest

Higher rating lower prob default
- Assign letter-grade
Higher Rating Lower Spread
Table shows spreads for some ratings

Huge debate about quality, conflict of interest

2008: Many mortgage securities rated AAA, defaulted

Long-Term ratings:

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
 & S&amp;P&amp;Fitch & Moody&\#x27;s & Spread (2015) \\ \hline
Investment & AAA & Aaa & \\ \hline
- & AA+ & Aa1 & \\ \hline
- & AA & Aa2 & 138 \\ \hline
- & AA- & Aa3 & \\ \hline
- & A+ & A1 & \\ \hline
- & A & A2 & 172 \\ \hline
- & A- & A3 & \\ \hline
- & BBB+ & Baa1 & \\ \hline
- & BBB & Baa2 & 291 \\ \hline
Investment & BBB- & Baa3 & \\ \hline
Speculative & BB+ & Ba1 & \\ \hline
- & BB & Ba2 & 474 \\ \hline
 &... &... & \\ \hline
- & CCC & Caa2 & \\ \hline
\end{tabular}
\end{document}
```

Spreads shown in the table are for late 2015 or early 2016, taken from Bloomberg

## Bond Ratings & Credit Spread - Both Measure Default Risk
Remember: credit spread (risk premium) depends on $CF$ distribution - uncertainty
- Embeds both uncertainty (probability of default) & risk (value of default)

Rating supposed to measure just probability of default

Biggest difference: spread comes from the market
- Both should move together - depend on default prob
- Spread may move faster, embed up-to-minute information

Believe spread over rating

Example: Verizon vs BAC (Bank of America) in Oct 2010
- Verizon 7.375% of 9/12: A/A3, spread 64bp
BAC $4.88\%$ of 1/13: A/A2, spread 207bp
Rating agencies say same risk, market says BAC much higher risk.

Example: Mortgage CDOs in 2005
- Trading CDOs (Collateralized Debt Obligations)
- Rated AAA, spread 30-40bp over libor; AAA corporate bonds 5-10bp
- Clearly not the same, and people knew mortgage risk was higher

## Complaints About Ratings - Corporate Bonds Ok
Many complaints about ratings and rating agencies:
- Potential conflicts (bond issuers pay for ratings)
- Regulated oligopoly
- Horribly wrong about mortgages in 2008
- Venturing into new products where agencies don't know as much
- Potential for issuers (banks) to "game" agency models

Many of these criticisms valid
- And I would always trust market spread first: thousands or millions of people buying-and-selling, evaluating the company or bond

But for standard corporate bonds and sovereigns, agencies reliable

## 2 Risk-Neutral Valuation: Adjust Probabilities - Introduction To Options

## Two Ways For Risk Adjustment: Adjust Cfs Or Adjust Probabilities
CFs: Standard method, adjust CFs by $1 / (1 + \mathsf{rp})$ for "risk-adjusted discounting" & risk premium
- We need to use Certainty Equivalent (CE) from Expected Utility
- Risk-adjusted discounting at $(1 + \mathrm{ust})$ (1 + rp)

$$
E U = U (C E) = p _ {i} u \left(C _ {\text {o r i g}} ^ {l o}\right) + (1 - p) _ {i} u \left(C _ {\text {o r i g}} ^ {h i}\right) = u p _ {i} C _ {\text {a d j}} ^ {l o} + (1 - p) _ {i} C _ {\text {a d j}} ^ {h i}
$$

$$
C E = p _ {i} C _ {a d j} ^ {l o} + (1 - p) _ {i} C _ {a d j} ^ {h i} = p _ {i} C _ {o r i g} ^ {l o} + (1 - p) _ {i} C _ {o r i g} ^ {h i}
$$

Probabilities: Alternative: adjust probabilities for "risk-neutral discounting"
- Risk-neutral discounting at $(1 + \mathrm{ust})$

$$
C E = p \quad i C _ {\text {o r i g}} ^ {\text {l o}} + (1 - p) \quad i C _ {\text {o r i g}} ^ {\text {h i}} = p \quad i C _ {\text {o r i g}} ^ {\text {l o}} + (1 - p) \quad i C _ {\text {o r i g}} ^ {\text {h i}}
$$

More complicated, but really useful for options

## Example: Adjust Cfs Or Adjust Probabilities
To make concrete, Constant Relative Risk Aversion function: $\mathrm{u}(\mathrm{C}) = \frac{\mathrm{C}^{1 - 1}}{1 - 1}$, $= 8$

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
 & Low & Avg & High \\ \hline
Probability & 1/2 & & 1/2 \\ \hline
CF Dist&\#x27;n & $711.411 & $800 & $888.59 \\ \hline
Utility & -15.490E-22 & -9.8E-22 & -3.266E-22 \\ \hline
Certainty Eqv & & $764.28 & \\ \hline
Adjust CFs & $679.66 & $764.28 & $848.93 \\ \hline
Probability & 0.7016 & & 0.2984 \\ \hline
CF Dist&\#$x_{27}$;n & $711.411 & $764.28 & $888.59 \\ \hline
\end{tabular}
\end{document}
```

Our original CFs and expected utility give CE of §764.28

Adjust distribution by one of two ways so dist'n gives CE:
- "Risk-adjusted discounting", Adjust CFs by 1/1.0467, same probabilities, discount at $(1 + \text{ust})$; $(1 + \text{rp})$
- "Risk-neutral discounting", Adjust probabilities, same CFs, discount at $(1 + \mathrm{ust})$

## When To Adjust Cfs Or Adjust Probabilities?
Adjust CFs: When using promised or expected Cash Flows
- Promised CF or Expected CF summarize full distribution in one number
- Risk premium $(rp)$ adjusts Promised or Expected to Certainty Equivalent (CE)

Adjust Probabilities: When using the distribution itself
- Options: take only good outcomes (you pay upfront)
- In our simple example: get to keep building in "good" outcome
- Cannot use risk premium - look at only part of the distribution - only §888.59

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/130ed0fe47ee4329af6348cea01d76c0ae9cc4080b7a1def71db3525af2178fc.jpg)

Value of Office Building

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/269c7b555626049441b945b8457e8b16f054b402f2b1874db957d77760da040f.jpg)

Value of Office Building
Risk-neutral probabilities

## Bonds (Risk-Adjusted) Vs Options (Risk-Neutral)
Bond: Adjust Prom (Exp) CF via rp

$$
P V = \frac {C E}{1 + u s t} = \frac {\operatorname {E x p C F}}{(1 + u s t) _ {i} (1 + r p)}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/9fcd652e38534edb65b8abee6a666260d76e0c36951104a1a36855ad3d9a9663.jpg)

- Stick with promised CFs
Discount at y ust + rp
- Builds in CF adjustment & discounting

Option: Use part of dist'n

$$
P V _ {\text {b o n d}} = \frac {C E}{1 + u s t} = \frac {p \mid C _ {\text {o r i g}} ^ {l o}}{(1 + u s t)} + \frac {(1 - p) \mid C _ {\text {o r i g}} ^ {h i}}{(1 + u s t)}
$$

$$
\mathbf {P V} _ {\text {o p t i o n}} = \frac {\mathrm {p} _ {i} \mathrm {C} _ {\text {o r i g}} ^ {\text {l o}}}{(1 + \text {u s t})} + \frac {(1 - \mathrm {p}) _ {i} \mathrm {C} _ {\text {o r i g}} ^ {\text {h i}}}{(1 + \text {u s t})}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/eb8d09ed570e9568f1075c1195d1f4cfe3c578c89560f9f62163bc947b269664.jpg)

- Work with any part of dist'n
Discount at UST

## 3 Corporate Bonds (Sharpe 14.6)

## Seniority, Security, Other Provisions
Corporate bonds open to default

Various mechanisms & tools to reduce or mitigate the chance and cost of default

Seniority: order of who gets paid

Corporations will issue many bonds, other debts
- Need clear hierarchy of who gets paid when
- Taxes (gov't), then employees, then senior bonds, then junior, then equity

Security: collateral pledged (or not)

Other: Sinking fund, indenture restrictions on dividends, other

## Indenture
Legal contract that lays out Promised Payments and Protections Lays out various promises, regarding payments and protections:
- First: amount and dates for payments
- Security: what (if any) assets pledged as collateral
- Restrictions and terms for any sale of pledged property
- Seniority: where this bonds falls in hierarchy
- Plus restrictions on issuance of other bonds
- Other aspects:
- Sinking Fund
- Dividend payment or other financial (business) restrictions & conditions
- Trustee - company (bank) that acts on behalf of bondholders, monitoring indenture provisions

## Indenture - Apple 2015 Bond (Bkm Fig 14.10)

## Comment

## Description Of Bond
1. Interest of 3.45% will be payable on February 9 and August 9 of each year. Thus every 5 months each month will pay interest of (0345)(2) + $1,000 = $17.25

ISSUE:AppleInc0.345% Notes

2. Investors will be repaid the $1,000 face value in 2045.

DUE February 9,2015

3. Monthly bond rating as the second highest quality rating

ATGAA

4. A truesee % appraised in look after invention/

TRUSTEE Issued under an indenture between Apple and The Bank of New York Mellon Trust Company.

5. The bonds are registered. The register keeps a record of who owns the bonds.

REGISTERED: Issued in registered, book entry form

6. The company is not obliged to repay any of the bonds on a regular basis before maturity.

SFRNFDN

1. The company has the option to buy back the notes. The redemption price is the greater of $1,000 or a price that is determined by the value of an equivalent Treasury bond.

CALLABLE:Inwhohoe or in part at any time

6. The notes are senior debt, ranking equally with at Aegle's other unsecured senior debt

SENOCTY

The notes are not secured, that is, no assets have been set aside to protect the noteholders in the event of default. However, if Appo sets aside assets to protect any other bondholders, the notes will also be securised by these assets. This is termed or negative pledge clause.

SECURITY The notes are assigned. However, "If Apple shall incur, ensure or guarantee any Debt, it will secure the debt securities then outstanding equally and timely with such Debt."

10. The principal amount of the issue was $2 billion. The notes were sold at 95.11% of their principal value.

OFFERED$2,000,000,000 99.75

II. The book owners are the managing underwriters to the issue and maintain the book of securities sold.

JOINT BOOK- RUNNING MANAGERS:
Goldman Sachs Securities

## Indenture - Apple 2015 Bond (Bkm Fig 14.10)

![](Https://Cdn-Mineru. Openxlab. Org. Cn/Result/2025-11-15/3C07Ddea-Cb45-4Eb2-Bd23-F544B33F30B6/11C44F86Ecb2D08Df109Ac82Daa87B9771216F8Cef01477C80Ff3E0C1622F8Cc. Jpg)

## Types Of Bonds

## Mortgage Bonds
- Not home mortgage - corporation pledges specific property
Example: corporate headquarters building

## Collateral Trust Bonds
- Backed by other securities held in trust
- Example: securities (bonds & equities) of subsidiary pledged

## Equipment Obligations
- Equipment Trust Certificates, backed by specific equipment
Example:airplanes

## Debentures
- General obligations of the company

## Call Provisions

## Call Provision:
- Issuer (company) has right to redeem bond prior to maturity
Usually at $$ 100$, often after 5 yrs

## Call Gives Flexibility, Can Save Company Money

## Clearly, Investors Will Make Company Pay Up-Front
- Higher coupon, lower price

## Example: 10Yr $5\%$ Bond (Semi-Annual) Callable Starting Yr 5
- Issued at par ($100), yield = 5% sab

## At Yr 5 (5Yrs To Go), What Is Price Of 5Yr Bond?
Market yield $7\%$ sab: Price $= 91.68 - \mathrm{co}$ does not redeem
Market yield $3\%$ sab: Price $= 109.22 - \mathrm{co}$ does redeem
- Company can issue new bond, $3\%$ coupon - save money

## Sinking Fund
Corporate bonds almost always bullets
- Periodic coupon, then final $100 payment

Loads up big payment at end

Sinking Fund:
- Company puts money aside each year (deposits with trustee)
- Trustee purchases bonds in open market

Mechanism to spread repayment over time

But bond structure is still simple bullet bond

## References
[Reinhart and Rogo (2008)] Carmen M. Reinhart and Kenneth S. Rogo. This Time is different: A Panoramic View of Eight Centuries of Financial Crises. Working Paper 13882, National Bureau of Economic Research, March 2008. URL http://www.nber.org/papers/$w_{13882}$.
[Reinhart and Rogo (2011)] Carmen M. Reinhart and Kenneth S. Rogo. This Time is different: Eight Centuries of Financial Folly. Princeton University Press, Princeton, NJ, reprint edition, August 2011. ISBN 978-0-691-15264-6. URL http://www.reinhartandrogoff.com. {:original-date: 2009} Bookstore.

## Pv For Uncertain Cash Flows
Lecture 7

Thomas S. Coleman

10 April 2023 Draft April 12,2023

## Outline
1 Uncertainty versus Risk 1
2 Problem - We Don't Know How to PV Uncertain CFs (notes) 2.0.1 Section II of "Practical Guide to Yield Curves" (Canvas). Plus lecture notes 2

2.1 We Think We're Smart - But Can't PV FIS 2
2.2 Simple Example for Solution 4
2.3 Program for Valuing Uncertain CFs 5

3 PV for Uncertain CFs: Utility and Certainty Equivalent 7

3.1 Defining Certainty Equivalent - CF Equivalent to Utility 7
3.2 Risk-Adjusted Discounting: Adjust CFs 10
3.3 Return to UST & FIS 12

4 Securitization 15

## 1 Uncertainty Versus Risk
Section II of "Practical Guide to Yield Curves, Discounting, and Derivatives" (Canvas); ch 2 of "Practical Guide to Risk Mgmt" (Amazon or CFA)

What Is Uncertainty? What is Risk?

Uncertainty: the spread of cash flows, the cause of risk

Distribution of cash flows,
- Spread, often summarized by Standard Deviation

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/8c2f75e0152f9b6a8b5a8581e963e9bea47ea8e27c7a8d76739a12e34de99735.jpg)

Risk: the price or value we assign to the Uncertainty
- difference in PV between certain and uncertain CFs

We are all Sloppy about Uncertainty vs Risk Everyone uses "Uncertainty" and "Risk" interchangeably
- "Uncertainty" is about nature - spread of CFs
- "Risk" is about us - how much we love or hate uncertainty

Standard Deviation (Volatility) - Measures Uncertainty Reminder about Standard Deviation
- Simply a convenient way to measure spread of distribution

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/8a5aef17daacd70a1b88eeddb37a3c83b92558bea6209903fb5aaee7b08e6c60.jpg)

We will often use Standard Deviation
- But nothing magical about it - sometimes use other measures

## 2 Problem – We Don’T Know How To Pv Uncertain Cfs (Notes)
2.0.1 Section II of "Practical Guide to Yield Curves" (Canvas). Plus lecture notes 

### 2.1 We Think We'Re Smart - But Can'T Pv Fis
We Think We're Smart, But Why different Yields for UST & FIS?

Turns out we don't even how to PV our FIS bond Let's look at UST & FIS, and calculate yields
- UST: $2.25\%$ coupon, 15-nov-25 (31-dec-15) $\mathrm{P} = 99.84375$, $\mathrm{Y} = 2.268\%$.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
 & Type & Settle & Mat & CPN\% & YLD\% & Price \\ \hline
Given & A/A Semi & 12.312015 & 11.152025 & 2.25 & & 99.84375 \\ \hline
Solve For & & & & & 2.268 & \\ \hline
\end{tabular}
\end{document}
```

FIS: 30/360, semi $5\%$ coupon, 15-oct-25 (31-dec-15) $\mathbf{P} = 103.626$ $\mathrm{Y} = 4.536\%$

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
 & Type & Settle & Mat & CPN\% & YLD\% & Price \\ \hline
Given & 360 Semi & 12.312015 & 10.152025 & 5 & & 103.626 \\ \hline
Solve For & & & & & 4.536 & \\ \hline
\end{tabular}
\end{document}
```

These UST and FIS prices (and yields) are from December 2015.

## Our Discounting For Fis Totally Wrong
- UST: $2.25\%$ coupon, 15-nov-25 (31-dec-15) $\mathbf{P} = 99.84375$, $\mathbf{Y} = 2.268\%$.
FIS: $5\%$ coupon, 15-oct-25 (31-dec-15) $\mathbf{P} = 103.626$ $\mathrm{Y} = 4.536\%$

This cannot be right - such huge discounting di erences

We should discount CFs at (roughly) same rate. Problem is promised CFs:
- The UST CFs will be paid; the FIS promise may be broken
 • FIS maybe 90% chance $5, but 10% $0. Can't even draw CF diagram!

Fact is, we don't really have a clue how to PV the FIS bond!

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/ff1264776d12be88d312391598aee4ab625cbe03c35780ee5678eb6ca3807e86.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/c47222db9d5fae91e3c8465fa05049605b675aab1096494c6684e44ec68313fd.jpg)

We often draw the future FIS cash flows as if they were a single value but what we always put down is the "promised" CF, or maybe the expected (average) CF. That simple diagram misleads us into thinking that we understand when in fact we don't have a clue

## Cf Diagrams Misleading - Can'T Discount (So Far)
We draw FIS and UST same way - but actually very different
- UST: actual known future CFs - we discount to get PV: $\frac{CF}{(1 + y)^n}$
FIS: promised CF
- Uncertain, distribution, say 90% $5,10% $0

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/d32ee97dd57360e664ec74bbc5ecc31ab242dd1874a4991748b9f99539e9a4f4.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/db7c2b33c031ead20894464508486f09f2d954ec97bfaaf77189d63dcfe54f53.jpg)

Pictures make it look like we can discount, but we can't (so far)

Let's turn to a simplified example to show us why we can't do simple discounting, and how we can get back to something that looks and acts like simple discounting.

### 2.2 Simple Example For Solution

## Simple Example Shows Problems & Solutions
Real Estate project: invest today, get uncertain payout in 1 year

Cash flow in one year expected $800
- Equal chance low ($711.41) or high ($888.59)
- (Known) value today is $714.29 and risk-free rate is 7%

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/d6ba92dccb15fed47fefaf585af1ab272bb0ba03aab6dd7a2c474e349079bf08.jpg)

Value of Office Building
- If future CF known, get PV by discounting
Uncertain CFs: how do we "discount" multiple CFs???
- Don't even know how to draw CF diagram

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/ebbb05c00b89ea43b8487ffa11438b2367b9ea8684a4793c8ece43a77b6af20c.jpg)

Discounting for Known (Certain) CFs

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/7f6151033e1db9a426008b464c03e2512cc7636e31af319c4ccc17bf2c1f4a17.jpg)

How do we Discount with Multiple Uncertain CFs?

## We Really And Truly Don'T Know What To Do
This is a fundamental conceptual problem

Right picture (uncertain CFs) - don't know what to discount or how
- Bigger problem than people usually let on
- Solution looks like simple discounting
- Allows us to pretend problem doesn't exist

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/73e7293fa0866ba8bf348d1980f3410ba38d018303a6c53d40d4cfee407d7b5c.jpg)

Discounting for Known
(Certain) CFs
How do we Discount with
Multiple Uncertain CFs?

But I want you to understand why risk-adjusted discounting works

This example happens to be derived from an example in Brealey & Myers textbook. From my edition, p. 20 & 232

### 2.3 Program For Valuing Uncertain Cfs

## Our Goal - Method For "Discounting" Uncertain Cfs
Two fundamental issues we have to address:

1. How to get convert uncertain CFs into (equivalent) certain CFs - this lecture
- Tool to convert uncertain CFs (distribution) to single PV today
- Analogue of simple discounting $(\mathsf{PV} = \frac{\mathsf{CF}}{(1 + \mathsf{y})^{\mathsf{n}}})$ applied to distribution

2. What is the right "price" of uncertainty - future lectures

This lecture is about first: the how

Preview of answer - looks just like discounting known CFs
- Convert distribution to promised or expected CF
- Add risk premium and discount at risk-adjusted rate: $\frac{\text{P r o m i s e d C F}}{(1 + y + r p)^n}$

## Framework For Discounting Uncertain Cfs
Theory issues we need to address
- What do we mean when we say "uncertain cash flows"? (Answer: Cash flow distribution – graph of amount versus probability)
- Why can't we just use discounting as we have for certain (known) cash flows? (Answer: Multiple values, using average CFs simply does not work - Expected utility and concavity.)
- What is uncertainty versus risk? (Answer: Uncertainty = distribution; risk = cost or price of uncertainty - Certainty Equivalent.)
- How do we adjust for uncertainty? (Answer: Adjust cash flow distribution until the expected value of the adjusted CFs equals the CE.)

Practical issue we need to address
- We want a method that works just like discounting, so we can use all the PV and NPV ideas we have worked on

## We Have Two Methods - Risk-Adjusted & Risk-Neutral
Both methods adjust the CF distribution

Risk-Adjusted Discounting - we use this most often
- Adjust CFs themselves
- But looks like discounting: $CF_{adj} = \frac{CF_{orig}}{1 + rp}$ then $PV = \frac{CF_{adj}}{1 + y}$
Used for most of our problems

Risk-Neutral Discounting - use this for options
- Adjust probabilities
Used for derivatives, mainly options
- "Risk-neutral valuation" is bad name - really "Risk-adjusted probabilities"

You won't read this lecture in most texts, but it is the way things work

The "problem" with risk-adjusted discounting (risk premium) is that it works so well we forget that we are in fact adjusting the whole distribution, and we start thinking we are discounting the average value. But really what we are doing is

1. Adjusting the CF distribution until the average of this adjusted distribution equals the certainty equivalent
- This removes the risk premium - produces the certainty equivalent
- We do this b multiplicatively adjusting the whole distribution

## 3 Pv For Uncertain Cfs: Utility And Certainty Equivalent

### 3.1 Defining Certainty Equivalent - Cf Equivalent To Utility Contents

## Value Of Distribution - Look At Utility
Two things we need to do to PV uncertain CFs

1. Transform future known (certain) cash flows (CFs) into present value
- We know how to do this - Discounting

2. Transform distribution of uncertain CFs into a single known value.
- We do not yet have any idea how to do this.
Expected Utility - Certainty Equivalent - single CF replaces distribution
- Want "trick" allowing us to continue using Average ($800)

Need to go back to basics: think about utility and value of the distribution
- How do we value the CF distribution?
- Simplify by ignoring discounting, stick to yr 1
- Want method to convert distribution to single, certain, known value
- Call this Certainty Equivalent
 • Also: trick to use $800

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/1ad018b116f8625c0eb76e87e94cc9596f30031d7823a4289db43e250f4d5d52.jpg)

Value of Office Building

## Averaging Utility - Not Cfs
We want utility or value of those two possibilities

We have to average the utility not CFs (expected utility not expected CF)

$$
E U = U \left(C _ {I}, C _ {h}\right) = p _ {i} u \left(C _ {I}\right) + (1 - p) _ {i} u \left(C _ {h}\right) = u \left(p _ {i} C _ {I} + (1 - p) _ {i} C _ {h}\right)
$$

To make concrete, Constant Relative Risk Aversion: $u(C) = \frac{C^{1 - }}{1 - }$, with $= 8$

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
 & Low & Avg & High \\ \hline
Probability & 1/2 & & 1/2 \\ \hline
CF Dist&\#$x_{27}$;n & $711.411 & & $888.59 \\ \hline
Expect CF & & $800 & \\ \hline
Utility & -15.490E-22 & & -3.266E-22 \\ \hline
Expected Utility & & -9.378E-22 & \\ \hline
Certainty Eqv & & 764.28 & \\ \hline
\end{tabular}
\end{document}
```

But we can always ask "what single CF is equivalent to our utility?"

Solve for Certainty Equivalent:

$$
U \left(C _ {C E}\right) = E U \left(C _ {I}, C _ {h}\right) = U \left(C _ {I}, C _ {h}\right) = p _ {i} u \left(C _ {I}\right) + (1 - p) _ {i} u \left(C _ {h}\right)
$$

$= 8$ (a reasonable number which produces reasonable risk aversion)

Certainty Equivalent - CF that Gives Correct Utility

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/4b0bd3977d536498880cb10bede674552276fcca9564d3083913fc5d62da2584.jpg)

Certainty Equivalent $(\mathfrak{p} = 1 / 2)$

Solve for Certainty Equivalent:

$$
U \left(C _ {C E}\right) = E U \left(C _ {I}, C _ {h}\right) = U \left(C _ {I}, C _ {h}\right) = p _ {i} u \left(C _ {I}\right) + (1 - p) _ {i} u \left(C _ {h}\right)
$$

Avg utility (exp utility), not CF (exp CF)

$$
E U = U \left(C _ {I}, C _ {h}\right) = p _ {i} u \left(C _ {I}\right) + (1 - p) _ {i} u \left(C _ {h}\right) = u \left(p _ {i} C _ {I} + (1 - p) _ {i} C _ {h}\right)
$$

But we can always ask "what single CF is equivalent to our utility?"

Call this certainty equivalent

To make concrete, Constant Relative Risk Aversion function: $u(C) = \frac{C^{1 - 1}}{1 - 1}$ with $= 8$ (a reasonable number which produces reasonable risk aversion)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
 & Low & Avg & High \\ \hline
Probability & 1/2 & & 1/2 \\ \hline
CF Dist&\#x27;n & $711.411 & & $888.59 \\ \hline
Expect CF & & $800 & \\ \hline
Utility & -15.490E-22 & & -3.266E-22 \\ \hline
Expected Utility & & -9.378E-22 & \\ \hline
Certainty Eqv & & 764.28 & \\ \hline
\end{tabular}
\end{document}
```

$\mathbf{p} =$ probability of low outcome

$\mathbf{C}_{1} =$ low cash flow ($711.41k in our example)

$\mathbf{C}_{\mathfrak{h}} =$ high cash flow ($888.59k in our example)

## Certainty Equivalent:
$$
U \left(C _ {C E}\right) = E U \left(C _ {I}, C _ {h}\right) = U \left(C _ {I}, C _ {h}\right) = p _ {i} u \left(C _ {I}\right) + (1 - p) _ {i} u \left(C _ {h}\right)
$$

## Expected Utility And Certainty Equivalent
For our simple distribution (Figure??) the average of the cash flows (the expected cash flow) is $800k. Most people, however, would rather have$ 800k for sure (probability 1) rather than a 50/50 chance of high or low - most people are risk averse. Whatever the attitude towards risk, we can use utility theory and represent the value in expected utility terms:

$$
E U = U \left(C _ {I}, C _ {h}\right) = p _ {i} u \left(C _ {I}\right) + (1 - p) _ {i} u \left(C _ {h}\right) \tag {1}
$$ where

$\mathbf{p} =$ probability of low outcome

$\mathbf{C}_{1} =$ low cash flow ($711.41k in our example)

$\mathbf{C}_{\mathfrak{h}} = \text{high cash flow ($S_{888}$0.59k in our example)}$

$\mathbf{u}(\mathbf{C}) =$ utility of cash flow C

The fundamental issue is that utility is usually not linear $(\mathsf{u}(\mathsf{Y}) = \mathsf{Y})$ and so the expected utility does not equal the utility of expected income: $\mathsf{E}\mathsf{U} = \mathsf{u}(\mathsf{p}_{\mathsf{i}}\mathsf{Y}_{\mathsf{l}} + (1 - \mathsf{p})_{\mathsf{i}}\mathsf{Y}_{\mathsf{h}})$. If utility were linear then we would have risk neutrality and we could just take expectations.

We can, however, calculate what cash flow would correspond to the expected utility EU (-9.4E-22 for our sample utility function). This is the Certainty Equivalent, the single cash flow that is valued the same (in utility terms) as the distribution of the two cash flows, $711.41 and $888.59. We just need to solve

$$
U \left(C _ {C E}\right) = E U \left(C _ {I}, C _ {h}\right) = U \left(C _ {I}, C _ {h}\right) = p _ {i} u \left(C _ {I}\right) + (1 - p) _ {i} u \left(C _ {h}\right).
$$

In our case (with our sample CRRA utility function, $= 8$ ), this is:

$$
- 9.378 E - 2 2 = \frac {C _ {C E} ^ {1 -}}{1 -}
$$ and the Certainty Equivalent turns out to be $$ 764.28$. This is the certain cash flow with the same value as the distribution of cash flows. More generally, the certainty equivalent is the solution to:

$$ u (C E) = p _ {i} u \left(C _ {1}\right) + (1 - p) _ {i} u \left(C _ {h}\right)
$$

It is no accident that the certainty equivalent from our utility example is the same as the market value, the certain value determined by the market. In a sense, this has to be the case: the market value is the cash value adjusted for the risk of the distribution of risky cash flows.

## Distribution Utility Certainty Equivalent
So far we have converted distribution to a single number, using expected utility

Next we see how to use Certainty Equivalent to get PV

1. Risk-Adjusted Discounting (risk premium): adjust CFs
2. Risk-Neutral Discounting: adjust probabilities

Finally, ask how we get the adjustments (to CFs or probabilities)

From the market

### 3.2 Risk-Adjusted Discounting: Adjust Cfs

## "Trick" Allows Us To Use Original Average - Adjust Cfs
Now perform a backwards trick: adjust CFs (in a neat way) so that

$$
C E = p _ {i} C F _ {a d j} ^ {l o} + (1 - p) _ {i} C F _ {a d j} ^ {h i}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/67ef66aff7f14ad633fa2199da76c848338c10d99451dbf23f855b1cf9c4db30.jpg)

## Adjusting Cfs By Risk Premium - To Use Original Average We Have Multiple Steps:
1. Get CE (certainty equivalent) from dist'n using utility

$$ u (C E) = p _ {i} u \left(C _ {1}\right) + (1 - p) _ {i} u \left(C _ {h}\right)
$$

$$ u (746.28) = \frac {1}{2} u (711.41) + \frac {1}{2} u (888.59)
$$

2. Adjust CFs so they average to CE:

$$
C E = p _ {i} C F _ {a d j} ^ {l o} + (1 - p) _ {i} C F _ {a d j} ^ {h i}
$$

$$
764.28 = \frac {1}{2} \vert 679.66 + \frac {1}{2} \vert 848.93
$$

3. Write adjustment as $1 / 1 + \mathbf{rp}$

$$
C E = p _ {i} \frac {C F _ {\text {o r i g}} ^ {\text {l o}}}{1 + r p} + (1 - p) \frac {C F _ {\text {o r i g}} ^ {\text {h i}}}{1 + r p}
$$

$$
C E = \frac {1}{1 + r p} p _ {i} C F _ {\text {o r i g}} ^ {\text {l o}} + (1 - p) _ {i} C F _ {\text {o r i g}} ^ {\text {h i}} = \frac {C F _ {\text {o r i g}} ^ {\text {a v g}}}{1 + r p}
$$

$$
C E = p _ {i} \frac {C F _ {\text {o r i g}} ^ {\text {l o}}}{1 + r p} + (1 - p) \frac {C F _ {\text {o r i g}} ^ {\text {h i}}}{1 + r p}
$$

$$
764.28 = \frac {1}{1 +. 04673} \frac {1}{2} \text {丨} 711.41 + \frac {1}{2} \text {丨} 888.59 = \frac {800}{1 +. 04673}
$$

4. Discount CE at risk-free, original avg CF at $\mathsf{rf} + \mathsf{rp}$

$$
P V = \frac {C E}{1 + r f} = \frac {C F _ {\text {o r i g}} ^ {\text {a v g}}}{(1 + r f) (1 + r p)} = \frac {C F _ {\text {o r i g}} ^ {\text {a v g}}}{1 + y _ {\text {r i s k y}}}
$$

$$
714.29 = \frac {764.29}{1 +. 0 7} = \frac {800}{(1 +. 0 7) (1 +. 04673)} = \frac {800}{(1 +. 1 2)}
$$

Looks like regular yield-to-maturity, just a higher "risk-adjusted" rate

Now perform a backwards trick: adjust CFs (via $\mathsf{CF}_{\mathsf{adj}} = \frac{\mathsf{CF}_{\mathsf{orig}}}{1 + rp}$ ) so that

$$
C E = p _ {i} C F _ {a d j} ^ {l o} + (1 - p) _ {i} C F _ {a d j} ^ {h i}
$$

$$
764.28 = \frac {1}{2} \text {i} 679.66 + \frac {1}{2} \text {i} 848.93.
$$

This looks pretty arbitrary but it turns out to be very general and works wonderfully well. Let's continue on for a moment and write this adjustment as $1 / 1 + \mathrm{rp})$:

$$
\begin{array}{l} C E = p _ {i} \frac {C F _ {\text {o r i g}} ^ {\text {l o}}}{1 + r p} + (1 - p) _ {i} \frac {C F _ {\text {o r i g}} ^ {\text {h i}}}{1 + r p} \\ = \frac {1}{1 + r p} p _ {i} C F _ {\text {o r i g}} ^ {\text {l o}} + (1 - p) _ {i} C F _ {\text {o r i g}} ^ {\text {h i}} \\ = \frac {C F _ {\text {o r i g}} ^ {\text {a v g}}}{1 + r p} \\ \end{array}
$$

Now we have something that looks surprisingly like discounting. In fact, we can now discount back to today because the Certainty Equivalent is a known and certain cash flow so we can discount with the risk-free rate, just as we have been doing for any known cash flow:

$$
P V = \frac {C E}{1 + r f} = \frac {C F _ {\text {o r i g}} ^ {\text {a v g}}}{(1 + r f) (1 + r p)} = \frac {C F _ {\text {o r i g}} ^ {\text {a v g}}}{(1 + y _ {\text {r i s k y}})}
$$

So now we can use the average CF (or promised CF) from the distribution, which is usually easy to get, and use this single number to discount in the way we always have, but with the additional adjustment of the $\frac{1}{1 + rp}$.

## Adjusting Cfs Looks Like Discounting Average Cf
Discounting Certainty Equivalent at Risk-Free Rate

Discounting Avg (Promised) CF at Risk-Adjusted Rate

$$
P V = \frac {C E}{1 + r f} = \frac {C F _ {\text {o r i g}} ^ {\text {a v g}}}{(1 + r f) (1 + r p)} = \frac {C F _ {\text {o r i g}} ^ {\text {a v g}}}{1 + y _ {\text {r i s k y}}}
$$

$$
714.29 = \frac {764.29}{1 +. 0 7} = \frac {800}{(1 +. 0 7) (1 +. 04673)} = \frac {800}{(1 +. 1 2)}
$$

Looks like regular yield-to-maturity, just a higher "risk-adjusted" rate

### 3.3 Return To Ust & Fis

## Return To Ust & Fis
Apply our ideas of Risk Adjusted Discounting
- Ideas and theory can seem complicated

But using these ideas simple
- Everyone in financial markets uses them every day
Calculate Yield, using "Promised CFs"
- Calculate as if the Promised CF is Known CF
- Yield we get is "Risk Adjusted"
- I did for many years, without knowing or understanding or caring about the underlying theory

So let's go back to UST & FIS and see what happens

## Fis - Standard Yield Calculations - Promised Cfs
Settle 31-dec-15 - Calculate FIS Yield using Promised CF Market gives us risk premium - spread = 4.536% - 2.268% = 227bp
- Embedded in bond prices - market gives us risk premium

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
31-dec-2015 & Coupon & Maturity & Price & Yield \\ \hline
10-yr US Treasury & 2.25\% & 15-nov-25 & 99.84375 & 2.268\% \\ \hline
FIS & 5.0\% & 15-oct-25 & 103.626 & 4.536\% \\ \hline
\end{tabular}
\end{document}
```
- UST: $2.25\%$ coupon, 15-nov-25 (31-dec-15) $\mathbf{P} = 99.84375$, $\mathbf{Y} = 2.268\%$.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
 & Type & Settle & Mat & CPN\% & YLD\% & Price \\ \hline
Given & A/A Semi & 12.312015 & 11.152025 & 2.25 & & 99.84375 \\ \hline
Solve For & & & & & 2.268 & \\ \hline
\end{tabular}
\end{document}
```

Calculate FIS: $5\%$ coupon, 15-oct-25 (31-dec-15) $\mathbf{P} = 103.626$ $\mathrm{Y} = 4.536\%$

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
 & Type & Settle & Mat & CPN\% & YLD\% & Price \\ \hline
Given & 360 Semi & 12.312015 & 10.152025 & 5 & & 103.626 \\ \hline
Solve For & & & & & 4.536 & \\ \hline
\end{tabular}
\end{document}
```

## Bond Market & Fis Example - Risk-Adjusted Yield
Market gives us risk premium - embedded in price (settle 31-dec-15)
- UST: $2.25\%$ coupon, 15-nov-25 $\mathrm{P} = 99.84375$, $\mathrm{Y} = 2.268\%$ sab

$$
- 1.02268 = (1 + r f)
$$

FIS: $5\%$ coupon, 15-oct-25 $\mathbf{P} = 103.626$ $\mathbf{Y} = 4.536\%$ sab

$$
- 1.04536 = (1 + \mathrm {rf}) | (1 + \mathrm {rp}) \quad 1 + \mathrm {rp} = 1.02218 \text {or} \mathrm {rp} = 2.218 \%
$$

The UST CFs are known, the FIS only promised CFs, but CF diagram useful We can just calculate yield, market gives us risk premium!

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/ca4fef3114bc10331c429101449ae26ab0ee67287825bbf62833b73ac5d69461.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/ac6f651afe6892055a6abb9785eb9962b299be67c4ff87c20516fd46b9537939.jpg)

Generally use spread: $\mathbf{rp} = 4.54\% - 2.27\% = 227\mathbf{bp}$

## Risk Premium From Market Yields
For FIS 31-dec-2015, decompose sensitivity into discounting and credit
- UST: $2.25\%$ coupon, 15-nov-25 $\mathrm{P} = 99.84375$, $\mathrm{Y} = 2.268\% \mathrm{stab}$
FIS: $5\%$ coupon, 15-oct-25 P=103.626, Y=4.536%sab

Usually use approximation
- rp y -rf
- 227bp = 4.54% - 2.27%

Overall (risky) yield separates into two parts:

1. Risk-free discounting (rf) - overall market
2. Risk premium (rp) - specific to FIS (or whatever company)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/8642e12a1cad4c49273c547f5b5bf3cc47ce214a64a2cd6855f305de7900b178.jpg)

## Alternative (Less Useful): Risk Premium In Dollars
Risk Premium $(1 + \mathfrak{r}\mathfrak{p})$ tells us value or price of uncertainty in rate or yield terms Can also measure in up-front dollar terms
- Discount FIS at UST (risk-free) yield $(2.268\%)$: what FIS would be if certain CFs
FIS: $5\%$ coupon, 15-oct-25 (31-dec-15) $\mathbf{Y} = 4.536\%$ $\mathbf{P} = 103.626$

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
 & Type & Settle & Mat & CPN\% & YLD\% & Price \\ \hline
Given & 360 Semi & 12.312015 & 10.152025 & 5 & 4.536 & \\ \hline
Solve For & & & & & & 103.626 \\ \hline
\end{tabular}
\end{document}
```

FIS: $5\%$ coupon, 15-oct-25 (31-dec-15) $\mathbf{Y} = 2.268\%$ $\mathbf{P} = 123.859$

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
 & Type & Settle & Mat & CPN\% & YLD\% & Price \\ \hline
Given & 360 Semi & 12.312015 & 10.152025 & 5 & 2.268 & \\ \hline
Solve For & & & & & & 123.859 \\ \hline
\end{tabular}
\end{document}
```

Difference - $20.23 - is $ value of uncertainty
- But less useful than risk premium in yield (227bp)
- 227bp applies every year, to any similar CFs

## 4 Securitization
Securitization - Pooling Assets & Cash Flows

Pooling of assets and repackaging of the underlying cashflows

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/f5cced6d3b976837e858b1bda46045693420c10367c0fd18e0bdafce7340d6a5.jpg)

## Examples
- Mutual Funds, hedge funds, Exchange Traded Funds
- Mortgage-backed and asset-back securities
Common Stocks
- "Equity" (mutual fund) vs "bond" pools (MBS, "Securitization")

## Legal Structure
- "Fund" and "Manager" separate legal entities
- Mutual Funds in US - Investment Co & Advisors Acts, 1940
- Hedge Funds - often off-shore (eg Caymans) - tax & regulatory
- Mortgage-backed and other asset-backed securities (bonds)

## Reasons For Pooling
- Spreads & Diversifies risk (mortgage-backed bonds)
- Lowers cost (mutual funds); professional management (hedge funds)
- Investors: Access to assets unavailable otherwise
- Sponsors/Owners: Move assets off balance sheet (borrow)

## Securitization
- Pooling of assets and repackaging of the underlying cashflows
Often into bonds
- Sometimes "trancheing" to create different payment or credit characteristics from those of the underlying assets

## Securitization Assets:
- Assets that go into the pool
- Often fixed income instruments such as mortgages or loans or corporate bonds or credit card receivables

## Securitization Liabilities:
- Often bonds but also mutual funds, common stocks
- Sometimes structured in tranches ordered in terms of payment priority

## Examples
- Mutual Funds
Hedge Funds
- Mortgage-backed securities
- Pass-through (Agency - Fannie Mae & Freddie Mac - pass-throughs). Simply pool together a group of mortgages and pass through the income - payment of income and principal.
- Tanched. Pool together a group of mortgages but sell different
- Other Asset-Backed securities - student loans, credit card receivables, even David Bowie's bond (1997 - revenues from 25 albums recorded before 1990)
Common Stocks
- Not usually talked about as a securitization or pooled assets, but in many ways that is exactly what a share in a publicly-listed company is – a share in the cash flows generated by the pooled activities from the company.
- Usually we talk about securitization of passive assets (things like other bonds or mortgages) and not active assets like for an on-going business.
- This ties back nicely to the South Sea Co and the Mississippi Co, although the South Sea Co was truly a pooling of passive assets - simply government annuities
- Distinction between "equity"-type pools and "bond"-type pools
- Equity-type: mutual funds, hedge funds, ETFs. For these the investors get a proportionate share of whatever profits
- Bond-type: Senior tranches for branched securities: promised CFs. Here investors are promised a CF. The pooling is valuable usually because it improves diversification and makes the "promise" more reliable, more certain to be paid.

## Legal Structure
- "Fund" and "Manager" separate legal entities
- Manager may be Corporation
- Fund often a Trust or a Partnership or itself a Corporation
- The Fund hires the manager and pays a fee plus various expenses
- The Fund will often have a Board of Directors who represent the interests of the shareholders (owners of the Fund and thus beneficiaries of the fund's assets)
- Assets are held in custody for the fund. Custodian is hired by the Fund, legally responsible to the fund and the Board
- Mutual Funds in US
- Investment Company (fund) which holds assets and sells shares in itself - proportionate share of cash flows
- Investment Manager (manager) who manages the assets of the Investment Company. But a legally separate entity that cannot take the assets from the Investment Company
- Investment Co Act 1940 - sets rules and regulations for Investment Co structure and operations
- Investment Advisors Act 1940 - rules and regulations for managers

Hedge Funds
- Often the "Fund" is off-shore - say Cayman islands - for tax and regulator reasons.
- Mortgage-backed and other asset-backed securities (bonds)
- Special Purpose Vehicle (SPV) - separate legal entity that holds the assets, sells securities that are usually more bond-like than equity-like
- Investors are lending money to the SPV with the promise to get paid back - that promise may be a good or a poor promise.

## Reasons For Securitization
- Spreads & Diversifies risk
- Big reason for mortgage-backed bonds. If you invest $100k in one mortgage then if the homeowner defaults you are out. There may be only a 5% chance but on that you lose everything. But if you invest $100k in a mortgage-backed bond with 1,000 mortgages then there's a pretty good chance that 5% will default but then you only lose 5%, and in any case you can price that in up-front because it becomes pretty certain how much you will lose (5% of your investment) rather than all or nothing.
- Lowers cost of access (mutual funds) or provides professional management expertise (hedge funds)
- One of the biggest reasons for mutual funds and ETFs
- Helps monitor and discipline (maybe 1720, South Sea & Mississippi)
- This may have been a reasons for the South Sea Co and the Mississippi Co. Although they did it very poorly - in fact the South Sea managers were really fraudsters.
- But the Bank of England that managed the government debt, while not really pooling the government assets, played this role.
- Not something we think is necessary today for government debt, at least not in developed countries. But in 1720 could have been very valuable.
- Widens audience and market
- For investors can provide access to markets not available otherwise.

E.g. for credit-card receivables, investors would have a hard time investing (buying) except through securitization.

David Bowie's records is another example - investors could not get invest if not securitized
- For Sponsors / Owners or assets, can be a way to "move assets o balance-sheet"

What this really means is that it is a way to raise money, to borrow - collateralized. e.g. mortgages. A bank makes mortgages, using its money to lend to homeowners.

It then pools those mortgages together, puts into an SPV, and sells bonds against those mortgages.

The investors are lending to the bank, with the mortgages as collateral.

## Pass-Through Vs Trancheing (Waterfall)

![](Https://Cdn-Mineru. Openxlab. Org. Cn/Result/2025-11-15/3C07Ddea-Cb45-4Eb2-Bd23-F544B33F30B6/58429E0B9229197E687C0708Df2970Caf1Cc1Ca46Abebced4E1073B713E4D70D. Jpg)

## Outline
Pass-through: all investors get same CFs
- Tranched: sell senior & junior (equity) tranches
- Pre-specified rules ("waterfall") for how cash is distributed

## Simple Trancheing Example
- "Senior": gets $20\%$ of CFs, first priority
- "Equity": $80\%$ of CFs, but lowest priority
Equity loses money first

## Probability Of $10\%$ Loss - Pay Back Either \ $100 Or $ 90
Senior is first priority, always gets $20 (100%) back
 Equity suers the loss, gets either $80 (100%) or $70 (87.5%)
- Senior riskless, Equity more risky (lose more than $10\%$ of original)

## Pricing (5Yr, $5 Coup, 5% Risky, 4% Risk-Free Yield)
- Underlying must be $100 (PV($5 @ 5%))
 Senior now risk-free, must be $104.45 (PV($5 @ 4%) - pay $20.89 for 20%
- Equity implied $98.89 (100=0.2*104.45+0.8*98.89) - pay $79.11 for 80%

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
 & Share of pool & PV ($) & & $ Paid \\ \hline
Senior Tranche & 20\% & $104.4518 & - & $20.8904 \\ \hline
 & & & & \\ \hline
Equity Tranche & 80\% & $98.8870 & - & $79.1096 \\ \hline
\end{tabular}
\end{document}
```

## Pass-Through Versus Trancheing

## This Detail (For Example On Trancheing) Is Not Necessary For History Of Financial Crises – For Applied Financial Management
- Pass-through: all investors get same cash-flows - proportional to their ownership (investment)
- Tranched: the cash-flows are "tranched" according to some set of rules
- Assets pooled, but then cash flows are "tranched" according to some rule, and different classes of securities (shares in the pool) sold.

Example:
- $100 of mortgages.
 - Mortgage is 5yrs, 5% coupon, pays back $100 in 5 years. Price $100, yld = 5%

Current risk-free rate is $4\%$. 100bp spread (risky $5\%$, risk-free $4\%$ )
- But this mortgage is risky. $54\%$ chance that $10\%$ of the mortgages will default on the final principal repayment

54% chance that all coupons will be paid but that 10% of the mortgages will not repay the final $100 in other words $54 \%$ chance you get $$ 90$ instead of $$ 100$ at the end
- Trancheing can change the risk profile. Here will will tranche into senior (with no risk) and equity (with the remaining or residual or increased risk)
- Make 2 branches: Split $100\%$ (100 shares) into top $20\%$ and bottom $80\%$

Top tranche is called the "senior" tranche - $20\%$ of this pool is "senior"

Bottom tranche is called "equity" tranche - $80\%$ of this pool is "equity"

Senior tranche (top 20%) gets first priority for cash flows – either coupon or principal.

Every $\S 1$ that is supposed to come in, these shares get the first $20\Phi$

Equity tranche (bottom 80%) gets whatever is left. Every $1 that is supposed to come in, these shares get whatever is left after paying the 20¢ to the top tranche

Example: $100 is promised. $90 comes in. Senior tranche gets $20 (20% of the $100 promised). Equity tranche gets $70 (what is left). Since the equity tranche was promised $80, this $70 is only 87.5% of what they were promised.

Result: Overall loss was 10% (promised $100, paid $90). Senior tranche loss was 0% (promised $20, paid $20). Equity tranche loss was 12.5% (promised $80, paid $70).
- Senior tranche has reduced risk, equity tranche increased risk
- Example of cash flow tranche or cash-flow cascade or waterfall (with $20\%$ senior, $80\%$ equity)

Promised CF = $100, Actual CF = $100

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
 & Share of pool & $ Paid & \% Paid \\ \hline
Senior Tranche & 20\% & $20 & 100\% \\ \hline
Equity Tranche & 80\% & $80 & 100\% \\ \hline
\end{tabular}
\end{document}
```

Promised CF = $100, Actual CF = $90

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
 & Share of pool & $ Paid & \% Paid \\ \hline
Senior Tranche & 20\% & $20 & 100\% \\ \hline
Equity Tranche & 80\% & $70 & 87.5\% \\ \hline
\end{tabular}
\end{document}
```

How do we price this? Actually very easy in this case.
- We know the price of the risky mortgages ( $100,5\%$ yield) and the risk-free rate (4%, for risk-free cash flows)
- PV(risky mortgages) = $100
- PV(5% coupon @ 4% yield) = 104.4518
- The senior tranche is now risk-free so this must be priced at $104.4518$. We are selling $20\%$ of the shares at this price, so this is $$ 20.8904$ ($104.4518 * 0.20). The balance we have to sell at $$ 79.1096$ (to make the total $$ 100$)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
 & Share of pool & PV ($) & & $ Paid \\ \hline
Senior Tranche & 20\% & $104.4518 & - & $20.8904 \\ \hline
 & & & & \\ \hline
Equity Tranche & 80\% & $98.8870 & - & $79.1096 \\ \hline
\end{tabular}
\end{document}
```

## Details For Pricing Of "Mortgage Bond"
• 5-year, 5% annual coupon, $100 bullet re-payment (not amortizing like a true mortgage).
- Chance that $10\%$ of mortgages will fail to repay principal
- Price $100, so yield (risky yield) 5%
- Risk-free rate $4\%$, so risk-free bond PV(5yr bond, $5\%$ coupon, $4\%$ yield) = $104.4518
- Assume that all coupons paid with certainty, $10\%$ of principal will default with some probability (either no-default and get \ $100, or yes-default at year 5 and get $ 90)
- Use risk-neutral (risk-adjusted) pricing:

$$
\begin{array}{l} PV (risky 5 \% couon @ 4 \% risk - free) \\ = P V (\mathbb {S} 5 \text {a n n u i t y} @ 4 \% + (1 - \quad) _ {i} P V (\mathbb {S} 100 @ 4 \% + \quad) _ {i} P V (\mathbb {S} 9 0 @ 4 \% \\ \end{array}
$$

Implies (risk-neutral) probability of default is $= 54.16\%$
- PV of tranched risky bond with recovery $87.5\%$ (using risk-neutral pricing):

$$
\begin{array}{l} P V \left(\text {tranched} 5 \% \text {couon} @ 4 \% \text {risk} - \text {free}\right) \\ = P V ($ 5 \text {annuity} @ 4 \%) + (1 - ) _ {i} P V ($ 100 @ 4 \%) + _ {i} P V ($ 87.5 @ 4 \% \\ \end{array}
$$

Bond is tranched $20\%$ senior, $80\%$ equity:

## References

## Term Structure Of Interest Rates
Lecture 6

Thomas S. Coleman

4 April 2023; Draft April 1,2023

## Outline

## 1 Term Structure Of Interest Rates 2
1.1 Graphing "Yield Curve" - 2yr & 5yr Example 2
1.2 "Yield Curve" - Some Terminology & Math 4
1.3 Calculating "Yield Curve" - 2yr & 5yr Example 6
1.4 Mathematics of Forward and Zero (Spot) Rates - Skip This Section 9
1.5 PV for New 4-yr Bond: Using Forward and Zero (Spot) Rates 10

## 1 Term Structure Of Interest Rates
Lecture Notes and Section I of "Practical Guide to Yield Curves" (Canvas)

### 1.1 Graphing "Yield Curve" - 2Yr & 5Yr Example
2yr & 5yr Have different Yield-to-Maturity

Consider 2yr & 5yr bonds (both trading at $100)
- 2yr, 1.162% sab coupon (& yield)
- 5yr, $1.721\%$ sab coupon (& yield)

Naively, "Yield Curve" connects dots
- May be upward or downward sloping
- More often upward
- Thinking about preferences (and costs) for short-term vs long-term investing
- 2yr yield tells us market-wide trade-o between future and present CFs between now & 2yrs
- Can graph for either (both) nominal yields or real yields

Naively, "Yield Curve" connects dots
- It's a start, but some problems

2yr & 5yr different
- As if each lives in their own private world - 2 separate lines
Instead, recognize 5yr is partly 0-2yr, partly 2-5yr

Two reasons for looking at "The Yield Curve"

1. Conceptual: preferences, trade-o between today vs 2yrs vs 5yrs
2. Practical: use for discounting new or different cash flows

Need to introduce some new concepts (and new math)
- Yield Curve & Term Structure of Interest Rates: general terms for the pattern of yields (discount rates) across maturities
- General terms which could apply to the top graph (naive, yield-to-maturity vs maturity) or bottom graph (sophisticated, forward rate curve)
- Forward Curve and Zero Curve: specific mathematical concepts relating cash flows and PV
- Cannot be right: cash flows overlap for 0-2yrs
- Use ideas of zero rates and forward rates to do better

What is yield for a 4yr $2 \%$ coupon bond?
- No way to say from the 2yr & 5yr yields
- Must use the 0-2yr and 2-5yr fwd rates

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/a31bc32a78820db3090b44abd2543d80e234311c5a58d338fcaf3cafb2925aff.jpg)

Bring in 5-year: Shows Problem with Naive Yield-to-Maturity Yield-to-Maturity: discount each bond at own rate But cannot be the right way: cash flows overlap
- Law of One Price: Discount all CFs during yr 1 & 2 at same rate
We know rate is $1.162\%$ for yr 1 & 2

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/1ec4981e50b5f49ec418f9915217d34166a427e38d9b18ef8a29feae8ed7f679.jpg)

Yield for 5yr bond is complicated average of 0-2 and 2-5 yr rates

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/c0cfa10a441c19fa2036b5953489e4466bd11feaf2d71847942dd373c42be3a4.jpg)

Must Discount CFs at Same (Consistent) Forward Rates We know $f_{0} = 1.162\%$ - discount coupons for yr 1 & 2 at $1.162\%$

$$
\begin{array}{l} \mathrm {P V} _ {\text {S y r}} = \frac {1.721 / 2}{(1 +. 01162 / 2) ^ {1}} + \mathrm {i i i} + \frac {1.721 / 2}{(1 +. 01162 / 2) ^ {4}} \\ + \frac {1}{(1 +. 01162 / 2) ^ {4}} \quad \frac {1.721 / 2}{(1 + f _ {2} \quad 5 / 2) ^ {1}} + i \quad i + \frac {1.721 / 2}{(1 + f _ {2} \quad 5 / 2) ^ {6}} + \frac {100}{(1 + f _ {2} \quad 5 / 2) ^ {6}} \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/eb9b62794ba68eeaa0b4309361aa9eaea7b2f7ef764963d907ae0f84a337f19d.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/cf05fd845521090b959cc3cae677a5310f0319fdab6c0f378d277bb5f040b405.jpg)

Now bonds consistent - just need to solve for $f_{2}$ 5 =??

## Graphing Yield-To-Maturity - Results
Three graphs saying the same in different ways

1. Yield-to-maturity: treat each bond in its own world
2. Zero rate: rate from today to some date (eg 0 2yr, 0 5yr)
3. Forward rate:rate between dates (eg 2yr 5yr)

Look at some actual bonds prices & yields:

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
Name & Price & Coupon & Matur & Yield & Fwd Period & Fwd Rate sab & Zero sab \\ \hline
2-year & 100 & $1.162 & 2yr & 1.162\% & 0-2 & 1.162\% & 1.162\% \\ \hline
5-year & 100 & $1.721 & 5yr & 1.721\% & 2-5 & 2.111\% & 1.731\% \\ \hline
10-year & 100 & $2.183 & 10yr & 2.183\% & 5-10 & 2.703\% & 2.216\% \\ \hline
\end{tabular}
\end{document}
```

1.5yr Yield of $1.721\%$: for the 5yr bond (all CFs)
2.5yr Zero of $1.731\%$: for the CF at yr 5
3.2yr 5yr Forward of $2.111\%$: for CFs between 2 & 5

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/a81483d0f722a05bcf32faef4899dc11eb499e8dbc18577a5c3edf261f65f2b6.jpg)

### 1.2 "Yield Curve" - Some Terminology & Math Contents

![](Https://Cdn-Mineru. Openxlab. Org. Cn/Result/2025-11-15/3C07Ddea-Cb45-4Eb2-Bd23-F544B33F30B6/42378E51Eedf89D615F65226F565E28Bb5F95C5131A84F19713273C584D0D943. Jpg)

"Yield Curve" - Some Terminology & Math
- General terms for the graph of rates versus maturity
- "Yield Curve", "Term Structure of Interest Rates", "Forward Curve", "Zero Curve"
- Specific mathematical terms:
- "Yield-to-Maturity": "average" discount rate for a bond
- "Zero rate" or "Spot rate": discount rate for a specific maturity
- "Forward rate": discount rate between two dates

Write 2yr swap (coup $1.162/yr, PV = $ 100)$ various ways

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/0a3a6744f917d24230f2fa20266878d27cdaba4350647ebb03475117433f1dbd.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/ab8ea19c55c364e67d509f837065e79b0e3405b1d19bdd443a81495e4a936f6e.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/946191b62ab947195143f6e7da89ed0e74f8c041c3c74d8907261183bf2862fc.jpg)

Yield, Zero, Forward for 2-year Swap

Write 2yr swap (coup $1.162/yr, PV = $ 100)$ various ways

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/45e3606e5ae1ba848426e60b580f949e996b86c5544f81254122d08bcc97b064.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/25035298b5bac5d3a39f6b0a667cb08964631d818b3d0ff131faa7a1e12b1a8d.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/fa8512ed948536f110583b9a4798d389467e14e84ddd968affd63a335d5f824f.jpg)

$$
Y T M: P V = \frac {1.162 / 2}{(1 + y / 2)} + \frac {1.162 / 2}{(1 + y / 2) ^ {2}} + i i i + \frac {100}{(1 + y / 2) ^ {4}}
$$

$$
Z e r o: P V = \frac {1.162 / 2}{(1 + z _ {5} / 2)} + \frac {1.162 / 2}{(1 + z _ {1} / 2) ^ {2}} + i i i + \frac {100}{(1 + z _ {2} / 2) ^ {4}}
$$

$$
\mathbf {F w d}: \mathbf {P V} = \frac {1.162 / 2}{(1 + \mathbf {f} _ {0.5} / 2)} + \frac {1.162 / 2}{(1 + \mathbf {f} _ {0.5} / 2) (1 + \mathbf {f} _ {5.1} / 2)} + i i i + \frac {100}{(1 + \mathbf {f} _ {0.5} / 2) i i (1 + \mathbf {f} _ {1.5} / 2)}
$$

Here they are all the same number (1.162%sab) - flat curve 0-2 years

Zero (Spot) vs Forward: Simple Relationship

Compare 2-year spot rate vs forwards 0 1&1 2 (annual instead of sab rates):

$$
\frac {1}{(1 + \mathbf {z} _ {1})} = \frac {1}{(1 + \mathbf {f} _ {0 1})}
$$

$$
\frac {1}{(1 + \mathbf {z} _ {2}) ^ {2}} = \frac {1}{(1 + \mathbf {f} _ {0} \quad 1)}; \frac {1}{(1 + \mathbf {f} _ {1} \quad 2)}
$$

Zero (spot) rates are a kind of "average" of forward rates

$$
1 + \mathbf {f} _ {1} \quad_ {2} = \frac {\left(1 + \mathbf {z} _ {2}\right) ^ {2}}{\left(1 + \mathbf {f} _ {0} \quad_ {1}\right)}
$$

If $z_{2} = 6\% \& z_{1} = f_{0}$ $1 = 4\%$, $f_{1}$ $2 = 8.04\%$: $1.080385 = (1.06)^{2} / 1.04$.

In general,

$$
1 + \mathbf {f} _ {n - 1} \quad n = \frac {(1 + z _ {n}) ^ {n}}{(1 + z _ {n - 1}) ^ {n - 1}}
$$

Actual Bonds – Nothing Simple

Textbook highlights "stripped" or zero-coupon Treasuries
- Dealers pull out each coupon and sell it separately – Treasury makes it easy

"Zero-Coupon Bond"

Bond with single final payment ($100) and coupon = $0
Particularly simple
- BUT, most actively-traded bonds are coupon bonds

For actual bonds and bond yields, nothing simple: read my paper (Canvas & https://papers.ssrn.com/abstract=994870)
- Dealers use coupon bonds to calculate zero-coupon rates (not vice-versa)

Paper on estimating forward rates: "Fitting Forward Rates to Market Data" https://papers.ssrn.com/abstract=994870

### 1.3 Calculating "Yield Curve" - 2Yr & 5Yr Example

![](Https://Cdn-Mineru. Openxlab. Org. Cn/Result/2025-11-15/3C07Ddea-Cb45-4Eb2-Bd23-F544B33F30B6/0603Aec461D9Ed1D13C14Fd01552770Bea92281Ed957Ae0916D6402Ac3Be77C7. Jpg)

Solving for Forward: Split 5yr into Two: 0-2 & 2-5 Years We can forward value the $1.721\%$ coupon to get FV as of yr 2 Then we calculate yield for that forward bond
- Result is $2.111\%$ Sab

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/79e29499d454f73d29d7e4cec76655790eb070fdce19da3806392845b2521b90.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/be758441ce28620cd0524430757bea3d464163c4f9a12b38502cdbb592ad8da9.jpg)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
Name & Price & Coupon & Matur & Yield & Fwd Period & Fwd Rate sab & Zero sab \\ \hline
2-year & 100 & $1.162 & 2yr & 1.162\% & 0-2 & 1.162\% & 1.162\% \\ \hline
5-year & 100 & $1.721 & 5yr & 1.721\% & 2-5 & 2.111\% & 1.731\% \\ \hline
10-year & 100 & $2.183 & 10yr & 2.183\% & 5-10 & 2.703\% & 2.216\% \\ \hline
\end{tabular}
\end{document}
```

I have verified these from the spread-sheet "yld_fwd6.xls" For reference, here the last column are forward rates, cc

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
Name & Price & Coupon & Matur & Yield & Fwd Period & Fwd Rate sab & Fwd Rate cc \\ \hline
2-year & 100 & $1.162 & 2yr & 1.162\% & 0-2 & 1.162\% & 1.1586\% \\ \hline
5-year & 100 & $1.721 & 5yr & 1.721\% & 2-5 & 2.111\% & 2.0999\% \\ \hline
10-year & 100 & $2.183 & 10yr & 2.183\% & 5-10 & 2.703\% & 2.6849\% \\ \hline
\end{tabular}
\end{document}
```

Split 5yr into Two: 0-2 & 2-5 Years

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 4 & 1.162 & -100 & 0.8605 & \\ \hline
Solve For & & & & & 98.87222 \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 6 & & -98.8722 & 0.8605 & 100 \\ \hline
Solve For & & 2.111 & & & \\ \hline
\end{tabular}
\end{document}
```

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/a42bc4834ba73b0999e22a3b9c95838cf5b97cfe1c13c18c929b25e85a849f07.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/3a1cc1e450205c5422a5921da4400da6ce463cf19dc731ee14f54788280cab86.jpg)

Yield as "Average" of Forward Rates

$$
\begin{array}{l} \mathsf {P V} _ {\text {5 y r}} = \frac {1.721 / 2}{(1 + \mathsf {y} _ {5} / 2) ^ {1}} + \frac {1.721 / 2}{(1 + \mathsf {y} _ {5} / 2) ^ {2}} + \text {i i i} + \frac {1.721 / 2}{(1 + \mathsf {y} _ {5} / 2) ^ {1 0}} + \frac {100}{(1 + \mathsf {y} _ {5} / 2) ^ {1 0}} \\ \mathrm {P V} _ {5 \mathrm {y r}} = \frac {1.721 / 2}{(1 + \mathrm {f} _ {0} \quad_ {2} / 2) ^ {1}} + | | + \frac {1.721 / 2}{(1 + \mathrm {f} _ {0} \quad_ {2} / 2) ^ {4}} \\ + \frac {1}{\left(1 + f _ {0} \quad 2 / 2\right) ^ {4}} \frac {1.721 / 2}{\left(1 + f _ {2} \quad 5 / 2\right) ^ {1}} + i i i + \frac {1.721 / 2}{\left(1 + f _ {2} \quad 5 / 2\right) ^ {6}} + \frac {100}{\left(1 + f _ {2} \quad 5 / 2\right) ^ {6}} \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/b23bf84a5caa2440fa67d435830a0bb74c072d96f0220e9d45ac9319ea97228a.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/86cf78fde30351020bbdf1f53987f7301cbcd9af0f9b8d1522ac6a8e307acde0.jpg)

Solving Equation for 2 5-yr Forward

$$
\begin{array}{l} \mathrm {P V} _ {5 \mathrm {y r}} = \frac {1.721 / 2}{(1 + \mathrm {f} _ {0} \quad_ {2} / 2) ^ {1}} + | | | + \frac {1.721 / 2}{(1 + \mathrm {f} _ {0} \quad_ {2} / 2) ^ {4}} \\ + \frac {1.721 / 2}{\left(1 + f _ {0} \quad_ {2} / 2\right) ^ {4} \left(1 + f _ {2} \quad_ {5} / 2\right) ^ {1}} + i i i + \frac {1.721 / 2 + 100}{\left(1 + f _ {0} \quad_ {2} / 2\right) ^ {4} \left(1 + f _ {2} \quad_ {5} / 2\right) ^ {6}} \\ \end{array}
$$

$$
\begin{array}{l} 100 = \frac {1.721 / 2}{(1 +. 01162 / 2) ^ {1}} + i i i + \frac {1.721 / 2}{(1 +. 01162 / 2) ^ {4}} \\ + \frac {1}{(1 +. 01162 / 2) ^ {4}} \quad \frac {1.721 / 2}{(1 +. 02111 / 2) ^ {1}} + \text {i} \quad \text {i} \quad + \frac {1.721 / 2}{(1 +. 02111 / 2) ^ {6}} + \frac {100}{(1 +. 02111 / 2) ^ {6}} \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/7153b45708ca1c694bcd8398892fe610287cb3d412e2a773e13346eab2e976a8.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/04aa9e5554c29c91bde3eda28421aace99c362ef6bdddbd8caa98e82824b7f66.jpg)

NB - this is using 2 p/yr

The point here is that we know the $0->2$ year rate from the 2-yr bond. We should use that, and then ask "what is the $2->5$ yr forward?"

### 1.4 Mathematics Of Forward And Zero (Spot) Rates - Skip This Section Contents
Mathematics of Zero (Spot) and Forward Rates

For semi-annual compounding:

$$
P V = \frac {C F}{(1 + z _ {y r} / 2) ^ {2 | y r}} \quad (1 + z _ {y r} / 2) = \frac {C F}{P V} ^ {1 / (2 | y r)}
$$

$$
P V = \frac {C F}{\left(1 + f _ {0}. 5 / 2\right) \left(1 + f _ {. 5}. 1 / 2\right) \mid \mid \left(1 + f _ {\mathrm {y r} -. 5} \quad \mathrm {y r} / 2\right)}
$$

$$
(1 + z _ {y r} / 2) ^ {2 \mid y r} = (1 + f _ {0}. 5 / 2) (1 + f _ {. 5} \quad 1 / 2) \mid i (1 + f _ {y r -. 5} \quad y r / 2)
$$

$$
(1 + z _ {y r} / 2) = \left[ \left(1 + f _ {0}. 5 / 2\right) \left(1 + f _ {. 5} 1 / 2\right) \mid \mid (1 + f _ {y r -. 5} y r / 2) \right] ^ {1 / (2 _ {|} y r)}
$$

Zero Rates as "Average" of Forward Rates (Annual Compounding)

The zero rate will be some sort of an "average" of forward rates.
- Let's consider rates for 2 years, annually-compounded.

The formula is:

$$
(1 + \mathbf {z} _ {2}) = [ (1 + \mathbf {f} _ {0}, 1) (1 + \mathbf {f} _ {1}, 2) ] ^ {1 / 2}
$$

We get this by comparing the formula for the PV of a single cash flow, discounting by zero rates versus forward rates:

$$
\mathbf {P V} = \frac {\mathbf {C F}}{(1 + \mathbf {z} _ {2}) ^ {2}} \quad (1 + \mathbf {z} _ {2}) ^ {2} = \frac {\mathbf {C F}}{\mathbf {P V}}
$$

$$
\mathbf {P V} = \frac {\mathbf {C F}}{(1 + \mathbf {f} _ {0} \quad, 1) (1 + \mathbf {f} _ {1} \quad, 2)} \quad (1 + \mathbf {f} _ {0} \quad, 1) (1 + \mathbf {f} _ {1} \quad, 2) = \frac {\mathbf {C F}}{\mathbf {P V}}
$$

$$
(1 + \mathbf {z} _ {2}) ^ {2} = (1 + \mathbf {f} _ {0} \quad 1) (1 + \mathbf {f} _ {1} \quad 2)
$$

$$
(1 + \mathbf {z} _ {2}) = [ (1 + \mathbf {f} _ {0} \quad_ {1}) (1 + \mathbf {f} _ {1} \quad_ {2}) ] ^ {1 / 2}
$$

Messy, but not horrible. More generally, for the zero rate for yr years:

$$
(1 + \mathbf {z} _ {\mathrm {y r}}) = [ (1 + \mathbf {f} _ {0} \quad_ {1}) (1 + \mathbf {f} _ {1} \quad_ {2}) ] _ {| |} (1 + \mathbf {f} _ {\mathrm {y r} - 1} \quad_ {\mathrm {y r}}) ] ^ {1 / \mathrm {y r}}
$$

Yield as "Average" of Forward Rates (Annual Compounding)

We can also think of the yield-to-maturity for a specific bond (say a 2-year annual-coupon bond that pays 1.162 per year)
- The yield will also be an "average" of forward rates. But terribly messy.

Once again, compare the PV using yield and PV using forwards:

$$
\mathbf {F} \mathbf {w} \mathbf {d}: \mathbf {P} \mathbf {V} = \frac {1.162}{(1 + \mathbf {f} _ {0} \quad 1)} + \frac {1.162}{(1 + \mathbf {f} _ {0} \quad 1) (1 + \mathbf {f} _ {1} \quad 2)} + \frac {100}{(1 + \mathbf {f} _ {0} \quad 1) (1 + \mathbf {f} _ {1} \quad 2)}
$$

$$
Y T M: P V = \frac {1.162}{(1 + y)} + \frac {1.162}{(1 + y) ^ {2}} + \frac {100}{(1 + y) ^ {2}}
$$

No simple formula to calculate the YTM as the "average" of forwards:

1. Calculate the PV from the Forwards $(\mathsf{PV} = \mathsf{PV}(\mathsf{f}_0,1, \mathsf{f}_1,2, \mathsf{coupon} = 1.162))$
2. Calculate the YTM from the PV $(f_{01}, f_{12},$ coupon $= 1.162)$
3. YTM function of forwards and coupon: $(y = y(f_{01}, f_{12},\text{coupon} = 1.162))$

YTM for each bond will be its own average
- different for each maturity and coupon

Zero and Forward Rates Easier with Continuous Compounding df_t Discount Factor for date t, to discount a cash flow at date t back to present value today (PV of $1).

$\mathsf{f}_{\mathbb{C}\mathbb{C}}(\mathsf{u})$ (Instantaneous) Forward Rate at date u

$\mathbf{z}_{\mathrm{cc}}(t)$ Zero Rate (also called Spot Rate), or the discount rate that applies for discounting back to today from a future date $t$.

$f_{$t_{1}$->$t_{2}$}$ Forward Rate between $t_1$ to $t_2$, or the discount rate that applies from $t_1$ to $t_2$, that is for discounting back to $t_1$ from a more distant date $t_2$.

$$
\mathbf {P V} = \quad \mathbf {C F} _ {\mathrm {f}} \mathbf {d f} _ {\mathrm {f}}
$$

$$
\mathbf {d f} (t) = \exp (- t _ {i} \mathbf {z} _ {c c} (t)) = \exp - \begin{array}{l} \frac {}{} \\ 0 \end{array} \mathbf {f} _ {c c} (u) d u
$$

$$
\mathbf {z} _ {\mathrm {C C}} (\mathbf {t}) = \frac {1}{\mathbf {t}} \begin{array}{l l} & \mathbf {t} \\ 0 & \end{array} \mathbf {f} _ {\mathrm {C C}} (\mathbf {u}) \mathbf {d u} \quad \mathbf {f} _ {\mathbf {t} 1} \quad \mathbf {t} 2 = \frac {1}{\mathbf {t} 2 - \mathbf {t} 1} \begin{array}{l l} & \mathbf {t} 2 \\ \mathbf {t} 1 & \end{array} \mathbf {f} _ {\mathrm {C C}} (\mathbf {u}) \mathbf {d u}
$$

Example, 2,5,10yr

## Example Bonds And Implied Forward Rates
```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
Name & Price & Coupon & Matur & Yield & Fwd Period & Fwd Rate sab & Zero sab \\ \hline
2-year & 100 & $1.162 & 2yr & 1.162\% & 0-2 & 1.162\% & 1.162\% \\ \hline
5-year & 100 & $1.721 & 5yr & 1.721\% & 2-5 & 2.111\% & 1.731\% \\ \hline
10-year & 100 & $2.183 & 10yr & 2.183\% & 5-10 & 2.703\% & 2.216\% \\ \hline
\end{tabular}
\end{document}
```

With the forward or zero rates, we can PV any CF

$$
\mathbf {d f} (\mathbf {t}) = \frac {1}{(1 + \mathbf {z} _ {\mathrm {a b}}) ^ {\mathrm {t}}} = \exp (- \mathbf {t} _ {\mathrm {i}} \mathbf {z} _ {\mathrm {t}}) = \exp - \begin{array}{c} \dot {\mathbf {\Phi}} \\ 0 \end{array} \mathbf {f} (\mathbf {u}) \mathbf {d u}
$$

$$
\mathbf {z} _ {\mathrm {C C}} (\mathbf {t}) = \frac {1}{\mathbf {t}} \mathbf {\Lambda} _ {0} ^ {\mathbf {t}} \mathbf {f} _ {\mathrm {C C}} (\mathbf {u}) \mathbf {d} \mathbf {u} = \frac {1}{\mathbf {t}} \ln \frac {1}{\mathrm {d f} (\mathbf {t})} \quad \mathbf {z} _ {\mathrm {a b}} (\mathbf {t}) = \frac {1}{\mathrm {d f} (\mathbf {t})} (1 / \mathbf {t})
$$

$$
\mathbf {f} _ {\mathrm {c c}} (\mathbf {t} 1 \quad \mathbf {t} 2) = \frac {1}{\mathbf {t} 2 - \mathbf {t} 1} \begin{array}{l} \mathbf {t} 2 \\ \mathbf {t} 1 \end{array} \mathbf {f} _ {\mathrm {c c}} (\mathbf {u}) \mathbf {d u} \quad \mathbf {f} _ {\mathrm {a b}} (\mathbf {t} 1 \quad \mathbf {t} 2) = \begin{array}{l} \frac {\mathrm {d f} (\mathbf {t} 1)}{\mathrm {d f} (\mathbf {t} 2)} (1 / (\mathbf {t} 2 - \mathbf {t} 1)) \end{array}
$$

### 1.5 Pv For New 4-Yr Bond: Using Forward And Zero (Spot) Rates Contents

![](Https://Cdn-Mineru. Openxlab. Org. Cn/Result/2025-11-15/3C07Ddea-Cb45-4Eb2-Bd23-F544B33F30B6/B0Bad848A2600B8B3A6F3990145E8Aadbb44C6D7E7F0A63Ec43A3Ad12D3E70C1. Jpg)

## Using Forward Rates: Pv For Arbitrary Cfs
```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
Name & Price & Coupon & Matur & Yield & Fwd Period & Fwd Rate sab & Zero sab \\ \hline
2-year & 100 & $1.162 & 2yr & 1.162\% & 0-2 & 1.162\% & 1.162\% \\ \hline
5-year & 100 & $1.721 & 5yr & 1.721\% & 2-5 & 2.111\% & 1.731\% \\ \hline
10-year & 100 & $2.183 & 10yr & 2.183\% & 5-10 & 2.703\% & 2.216\% \\ \hline
\end{tabular}
\end{document}
```

What is PV for 4yr, $2\%$ bond? Or swap? Break into two as before

1. Bond from yr 4 back to yr 2: 2yr $2\%$ coupon bond at $2.111\%$ sab
2. "Bond" from yr 2 (FV not 100) back to yr 0: 2yr $2\%$ "bond" (with FV not 100) at $1.162\%$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/efc7fed220d630e04382f18f6fca594cb38c73851590f1d500222c28d68919f0.jpg)

4yr, $2\%$ bond, PV = 101.4406, yield = 1.627

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 4 & 2.111 & & 1.0 & 100 \\ \hline
Solve For & & & -99.7837 & & \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 4 & 1.162 & & 1.0 & 99.7837 \\ \hline
Solve For & & & -101.4406 & & \\ \hline
\end{tabular}
\end{document}
```

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/1b65f6956281ab8282de31c67a67c821d2c2f69f96d4eed301ae54654017836b.jpg)

## Note A Few Things:
- Previous version of this slide had "yield=1.574" but this was an error by leaving FV=99.7837
- YTM for this 4yr $2\%$ coupon bond is $1.627\%$. But the par rate for this set of forwards is $1.6282\%$. The difference is (of course) because the par bond is the coupon (\& yield) for a bond with PV=100.

## The Formula For A Par Bond Is
$$
100 = c _ {i} P V (\S 1 \text {a n n u i t y}) + P V (\S 100)
$$

## In This Case
```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 4 & 2.111 & & 0.5 & 0 \\ \hline
Solve For & & & -1.948319 & & \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 4 & 1.162 & & 0.5 & 1.948319 \\ \hline
Solve For & & & -3.874974 & & \\ \hline
Given & 4 & 2.111 & & 0 & 100 \\ \hline
Solve For & & & -95.887099 & & \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 4 & 1.162 & & 0 & 95.887099 \\ \hline
Solve For & & & -93.690678 & & \\ \hline
\end{tabular}
\end{document}
```

$$
100 = c _ {i} P V ($ 1 \text {a n n u i t y}) + P V ($ 100)
$$

$$
100 = \mathrm {c} _ {\mathrm {j}} 3.874974 + 9 3.690678
$$ and so $c = 1.6282$

4yr, $2\%$ bond, $\mathsf{PV} = 101.4406$ yield $= 1.627$

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
Name & Price & Coupon & Matur & Yield & Fwd Period & Fwd Rate sab & Zero sab \\ \hline
2-year & 100 & $1.162 & 2yr & 1.162\% & 0-2 & 1.162\% & 1.162\% \\ \hline
5-year & 100 & $1.721 & 5yr & 1.721\% & 2-5 & 2.111\% & 1.731\% \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 8 & & -101.4406 & 1.0 & 100 \\ \hline
Solve For & & 1.627 & & & \\ \hline
\end{tabular}
\end{document}
```

4-yr yield is "avg" of 2-yr & 5-yr
- Between ytm for 2yr & 5yr
- Need fwd rates to figure out precise 4yr ytm

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/d999b4206f78547ed75c3e0c24ab5670106dc8b0cabfa71619b1b4507c1d0d19.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/84a42e0298615f0f2031ecb281227198751c0a9028edc1277ad2ba526b679511.jpg)

## References

## Bond Sensitivity: Bpv, Dv01, And Duration
Lecture 5

Thomas S. Coleman

2 April 2023; Draft April 8,2023

## Outline
1 Periodic Payments & Compounding - Duplicated from Lecture 4
2 Why We Use Yield Instead of Price 7
3 BPV, DV01, & Duration 8

3.1 Converting from Yield to Price Changes 8
3.2 BPV & DV01: Bond Sensitivity 9
3.3 Duration 11
3.4 BPV / DV01 for Predicted P&L and Hedging 13
3.5 Decomposing P&L - Pure Discounting & Spread 14

4 A Digression on Shorting & Leverage 17

4.1 Shorting (BKM 3.8,3.9) 18
4.2Leverage 23

5 Digression on HP Calculator SOLVE Menu 24

## 1 Periodic Payments & Compounding – Duplicated From Lecture 4
Yield: Always "Per Year"

Very convenient to express price today vs tomorrow as yield: $\frac{1}{1 + y}$
- So far we haven't said if "tomorrow" is next day or next year

Almost always express yield "per year": $\mathsf{PV} = \mathsf{FV} / (1 + \mathsf{y})^{\mathsf{n}}$ with $\mathsf{n} = \mathsf{no}$ yrs.

Example: 4yr $6.5\%$ coupon bond, $\mathbf{P} = 99.658$:

$$
9 9.658 = \frac {6.5}{(1 + y _ {a b})} + \frac {6.5}{(1 + y _ {a b}) ^ {2}} + \frac {6.5}{(1 + y _ {a b}) ^ {3}} + \frac {6.5}{(1 + y _ {a b}) ^ {4}} + \frac {100}{(1 + y _ {a b}) ^ {4}}
$$

TVM does this automatically, gives Yield (Interest) per yr (I%YR)
- Make sure set right: <Blue> <MAIN> <FIN> <TVM> <1 P/YR> <END>

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 4 & & -99.658 & 6.5 & 100 \\ \hline
Solve For & & 6.6 & & & \\ \hline
\end{tabular}
\end{document}
```

Periodic CFs (Not 1 per year)

Example: 4yr $6.5\%$ coupon bond, $\mathbf{P} = 99.658 - 6.5\% /\mathrm{yr}$

$$
9 9.658 = \frac {6.5}{(1 + y _ {a b})} + \frac {6.5}{(1 + y _ {a b}) ^ {2}} + \frac {6.5}{(1 + y _ {a b}) ^ {3}} + \frac {6.5}{(1 + y _ {a b}) ^ {4}} + \frac {100}{(1 + y _ {a b}) ^ {4}}
$$

But what if pays every 6mths (like UST)? Get §3.25 every half-year.
- Seems natural to use annual rate, for "number of years" (may be 1/2 year):

$$
9 9.658 = \frac {3.25}{\left(1 + y _ {a b}\right) ^ {1 / 2}} + \frac {3.25}{\left(1 + y _ {a b}\right) ^ {1}} + \frac {3.25}{\left(1 + y _ {a b}\right) ^ {1.5}} + \dots + \frac {3.25}{\left(1 + y _ {a b}\right) ^ {4}} + \frac {100}{\left(1 + y _ {a b}\right) ^ {4}}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/25822b5a56ce3845bd4ed1c8721cd36223154d44d4386e29b4791829e6d5b537.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/ba2095add5ebfaadbedeefb1d6b5c5b1655f5ff18e9d6e823c29976d4b572376.jpg)

But No - Periodic CFs - Discount at Same Freq as Payment

Example: 4yr semi-annual $6.5\%$ coupon bond, $\mathrm{P} = 99.658 - 3.25\% / 6\mathrm{mth}$
- Seems natural to use annual rate, discount "number of years":

$$
9 9.658 = \frac {3.25}{\left(1 + y _ {a b}\right) ^ {1 / 2}} + \frac {3.25}{\left(1 + y _ {a b}\right) ^ {1}} + \frac {3.25}{\left(1 + y _ {a b}\right) ^ {1.5}} + \dots + \frac {3.25}{\left(1 + y _ {a b}\right) ^ {4}} + \frac {100}{\left(1 + y _ {a b}\right) ^ {4}}
$$

But that's far too simple. Instead, discount at same freq as payment:

$$
9 9.658 = \frac {3.25}{(1 + y _ {\mathrm {s a b}} / 2) ^ {1}} + \frac {3.25}{(1 + y _ {\mathrm {s a b}} / 2) ^ {2}} + \frac {3.25}{(1 + y _ {\mathrm {s a b}} / 2) ^ {3}} + \dots + \frac {3.25}{(1 + y _ {\mathrm {s a b}} / 2) ^ {8}} + \frac {100}{(1 + y _ {\mathrm {s a b}} / 2) ^ {8}}
$$

Discount at a 6-mth (half-yr) rate, $y_{\mathrm{stab}} / 2$

1st payment in 1 half-yr, $\frac{1}{1 + \text{ysab}} / 2$
- 2nd payment in 2 half-yrs, $1 / (1 + \mathrm{ysab} / 2)^2$
- etc up to 8th payment (4 yrs)

Why $y_{\mathrm{stab}} / 2$? Report "annual" rate
- Discount at half-yr rate $y_{\text{sab}} / 2$, but quote "annual" $y_{\text{sab}} = 2 \cdot y_{\text{sab}} / 2$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/10ee28d7d3aa33d95e9f878c4f99be79195460869154835fcf9c21d8c79ae01b.jpg)

## Periodic Cfs - 4 Yr Bond Example
Example: 4yr semi-annual $6.5\%$ coupon bond, $\mathbf{P} = 99.658 - 3.25\% /6\mathrm{mth}$

$$
9 9.658 = \frac {3.25}{(1 + y _ {\mathrm {s a b}} / 2) ^ {1}} + \frac {3.25}{(1 + y _ {\mathrm {s a b}} / 2) ^ {2}} + \frac {3.25}{(1 + y _ {\mathrm {s a b}} / 2) ^ {3}} + \dots + \frac {3.25}{(1 + y _ {\mathrm {s a b}} / 2) ^ {8}} + \frac {100}{(1 + y _ {\mathrm {s a b}} / 2) ^ {8}}
$$

Annual, 4yrs, $6.5\%/\mathrm{yr}$: <Blue> <MAIN> <FIN> <TVM> <1 P/YR>

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 4 & & -99.658 & 6.5 & 100 \\ \hline
Solve For & & 6.6 & & & \\ \hline
\end{tabular}
\end{document}
```

Semi-annual, 4yrs, $3.25\%/\mathrm{yr}$: <1 P/YR>

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 8 & & -99.658 & 3.25 & 100 \\ \hline
Solve For & & 3.299 & & & \\ \hline
\end{tabular}
\end{document}
```

Semi-annual, 4yrs, $3.25\%/\mathrm{yr}: < 2 \mathrm{P} / \mathrm{YR}$

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 8 & & -99.658 & 3.25 & 100 \\ \hline
Solve For & & 6.599 & & & \\ \hline
\end{tabular}
\end{document}
```

$< 2$ P/YR>onlyadjuststhe $\mathrm{I}\% \mathrm{YR}$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/f02a4398666b8062173aa2825068d78c20cdcc53a82b105b4e2051cad68e3b07.jpg)

## Don'T Be Fooled: 4Yr Annual = 4Yr Semi-Annual
Look the 2 bonds, same price but different coupon

4yr semi bond more valuable
- Get same total CF, but get CF sooner

Annual, 4yrs, $6.5\%/\mathrm{yr}$: < 1 P/YR>

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 4 & & -99.658 & 6.5 & 100 \\ \hline
Solve For & & 6.6 & & & \\ \hline
\end{tabular}
\end{document}
```

$y_{ab} = 6.6\%$ annual discount rate (yield)

Semi-annual, 4yrs, $3.25\%/\mathrm{yr}$: < 2 P/YR>

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 8 & & -99.658 & 3.25 & 100 \\ \hline
Solve For & & 6.599 & & & \\ \hline
\end{tabular}
\end{document}
```

$\mathbf{y_{sab}} = 6.599\%$ - semi-annual discount rate x 2

$\mathbf{y_{ab}}$ & $\mathbf{y_{sab}}$ look the same, but fundamentally different
- Semi-annual bond more valuable: pay same ($99.658) but get CFs sooner

Can only compare when convert from $\mathbf{y}_{\mathrm{stab}}$ to $\mathbf{y}_{\mathrm{ab}}$ (or vice-versa)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/cec74890dedac3f550f5f49e13676eed3e9a723fe4dad4b60b9bee0ae1835c5a.jpg)

## Complication: Compounding!
Among the most difficult things you'll learn - compounding is confusing

You can quote the yield on various bases:

Annual: (aka "ab") annual rate compounded by years

Semi-annual: (aka "sab") semi-annual rate compounded by half-years

$$
$ 100 \text {i n} 1 \text {y r}: \quad \begin{array}{c c} \text {a n n u a l} & \text {semi-annual} \\ 9 2.59 = \frac {100}{(1 +. 0 8)} & 9 2.59 = \frac {100}{(1 +. 07846 / 2) ^ {2}} \end{array}
$$

CFs same (that's what we buy & sell).
- "Yield" is convenient way to write PV $< ->$ FV relations
- Compounding and "basis" is code to tell you how to write PV relation

AND, everyone likes to see an "annual" rate, so write

$$
\mathbf {P V} = \frac {\mathbf {F V}}{\left(1 + \mathbf {y} _ {\mathrm {a b}}\right) ^ {\mathbf {Y r}}} \quad \mathbf {P V} = \frac {\mathbf {F V}}{\left(1 + \mathbf {y} _ {\mathrm {s a b}} / 2\right) ^ {2} \mathbf {Y r}}
$$

This gives $y_{\mathrm{stab}} = 0.07846 = 2^{\star}0.03923$

## Some Tips On Compounding
The most common "bases" or compounding frequencies are:

1. Annual or ab or annual bond: $\mathsf{PV} = \frac{\mathsf{FV}}{(1 + \mathsf{y}_{\mathsf{ab}})^{\mathsf{Yr}}}$
- European gov't bonds, some corporates

2. Semi-annual or sab or semi-annual bond: PV = FV (1 + ySab/2)² Yr
USgov'tand corporate bonds

3. Monthly or mb or monthly bond: PV = FV (1+ymb/12)12 Yr
- mortgage bonds

NEVER, ever quote a rate without saying what basis (ab, sab)
- And yell at me when I do that (which I will)

ALWAYS compare yields of same basis (ab vs ab, sab vs sab)

## Converting Bases
Remember, basis or compounding is just a way to quote the yield
- CFs are what matter

Always compare same basis
- ALWAYS need to convert from ab to sab or vice-versa

Start with fundamental discounting relation:

$$
(1 + \mathbf {y} _ {\mathrm {a b}}) = (1 + \mathbf {y} _ {\mathrm {s a b}} / 2) ^ {2}
$$

$$
\mathbf {y} _ {\mathbf {a b}} = (1 + \mathbf {y} _ {\mathbf {s a b}} / 2) ^ {2} - 1 \quad \mathbf {y} _ {\mathbf {s a b}} = 2 \cdot \overline {{1 + \mathbf {y} _ {\mathbf {a b}}}} - 1
$$

Build HP SOLVER equation:

$$
1 + \mathbf {y a b} \div 100 = (1 + \mathbf {y s a b} \div 200) ^ {\wedge} 2
$$

## Compounding: In-Class Exercise 1
Annual, 4yrs, $6.5\%/\mathrm{yr}$: < 1 P/YR>

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 4 & & -99.658 & 6.5 & 100 \\ \hline
Solve For & & 6.6 & & & \\ \hline
\end{tabular}
\end{document}
```

Semi-annual, 4yrs, $3.25\%/\mathrm{yr}$: < 2 P/YR>

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 8 & & -99.658 & 3.25 & 100 \\ \hline
Solve For & & 6.599 & & & \\ \hline
\end{tabular}
\end{document}
```

But $y_{ab}$ & $y_{sab}$ fundamentally different
- Semi-annual bond more valuable: pay same ($99.658) but get CFs sooner

Need to convert between $\mathbf{y}_{\mathrm{ab}}$ & $\mathbf{y}_{\mathrm{sab}}$

$$
\mathbf {y} _ {\mathrm {a b}} = (1 + \mathbf {y} _ {\mathrm {s a b}} / 2) ^ {2} - 1
$$

$$
\mathbf {y} _ {\mathrm {s a b}} = 2 \quad \overline {{1 + \mathbf {y} _ {\mathrm {a b}}}} - 1
$$

Convert to $y_{\text{stab}}$ from $y_{\text{ab}} = 6.60\%$:

$$
\mathrm {y} _ {\mathrm {s a b}} = 2; \quad \overline {{1 +. 0660 - 1}} =. 0649
$$

6.60%ab lower when sab (6.49%sab)

Convert to $y_{\mathrm{ab}}$ from $y_{\mathrm{Sab}} = 6.599\%$:

$$
\mathrm {y} _ {\mathrm {a b}} = (1 +. 06599 / 2) ^ {2} - 1 =. 06708
$$

6.599%stab higher when ab (6.708%ab)

Now we see that, indeed, semi-annual bond is higher yield:
- Annual bond: $6.60\%$ ab or $6.49\%$ Sab
- Semi-annual: 6.708%ab or 6.599%Sab

Always compare bonds on same basis

## Compounding: In-Class Exercise 2
Today's CF (PV) = $89,2 years CF (FV) = $100.

$$
\begin{array}{c c} \text {a n n u a l} & \text {semi-annual} \\ \mathsf {P V} = \frac {\mathsf {F V}}{\left(1 + \mathsf {y} _ {\mathsf {a b}}\right) ^ {\mathsf {Y r}}} & \mathsf {P V} = \frac {\mathsf {F V}}{\left(1 + \mathsf {y} _ {\mathsf {s a b}} / 2\right) ^ {2} \mathsf {Y r}} \end{array}
$$

1. What is $y_{ab}$? $y_{ab} = 0.06$

$$
\mathbf {P V} = \frac {\mathbf {F V}}{\left(1 + \mathbf {y} _ {\mathrm {a b}}\right) ^ {\mathbf {Y r}}} \quad 8 9 = \frac {100}{\left(1 + \mathbf {y} _ {\mathrm {a b}}\right) ^ {2}} \quad \left(1 + \mathbf {y} _ {\mathrm {a b}}\right) = \quad \frac {100}{8 9}
$$

2. What is $y_{\mathrm{stab}}$? $y_{\mathrm{stab}} = 0.05912$ ( $y_{\mathrm{stab}} / 2 = 0.029562$ )

$$
\mathbf {P V} = \frac {\mathbf {F V}}{(1 + \mathbf {y} _ {\mathbf {s a b}} / 2) ^ {2} \mathbf {Y r}} \quad 8 9 = \frac {100}{(1 + \mathbf {y} _ {\mathbf {s a b}} / 2) ^ {4}} \quad (1 + \mathbf {y} _ {\mathbf {s a b}} / 2) = \frac {4}{8 9} \overline {{\frac {100}{8 9}}}
$$

## Compounding: In-Class Exercise 3
$$
(1 + \mathcal {Y} _ {\mathrm {a b}}) = (1 + \mathcal {Y} _ {\mathrm {s a b}} / 2) ^ {2}
$$

$$
\mathbf {y} _ {\mathrm {a b}} = (1 + \mathbf {y} _ {\mathrm {s a b}} / 2) ^ {2} - 1 \quad \mathbf {y} _ {\mathrm {s a b}} = 2 \cdot \overline {{1 + \mathbf {y} _ {\mathrm {a b}}}} - 1
$$

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline yab & ysab \\ \hline
0.08 & 0.07846 \\ \hline
0.05 & 0.04939 \\ \hline
0.0816 & 0.08 \\ \hline
0.050625 & 0.05 \\ \hline
0.1025 & 0.10 \\ \hline
\end{tabular}
\end{document}
```
- ALWAYS compare like-with-like. $8\%$ ab is not $8\%$ sab
- And it is non-linear: Doubling $y_{\mathrm{Sab}}$ slightly more than doubles $y_{\mathrm{ab}}$.

## 2 Why We Use Yield Instead Of Price
Remember - Price vs Yield - Yield More Comparable

Yield has several advantages over price
- Comparable across bonds with different coupon, price, maturity

Let's compare 3 bonds (in-class exercise using TVM)

1.4yr $6.5\%$ bond, $\mathbf{P} = 99.658$, yield $= 6.60$
2.4yr $4\%$ bond, $\mathbf{P} = 91.113 -$ low price does o set low coupon
3.6yr $7\%$ bond, $\mathbf{P} = 101.930$, yield $= 6.60$

All these bonds are more-or-less same "value" (yield $6.60\%$ )

Here we can compare three different bonds - same in value & how much we earn
- Yield means discounting: converting between present and future cash
- Flat yield-to-maturity not perfect - Generally "term structure" upward or downward sloping
- Example: UST 2yr $2.88\%$, 10yr $3.23\%$ (upward)
- Later we look at "term structure of interest rates" and "yield curve"
- But so much better than price alone
- balances price vs coupon vs maturity

Yield is better way to think of "market price" than dollar price
- Just remember: P & Y

Yield-to-maturity isn't perfect, because generally there will be a "term-structure" meaning that CFs with different maturities are discounted at slightly different
- UST yields quoted in slide: 5-oct-2018 quotes, 2yr 2.75s of 30-sep-20,10yr 2.875s of 15-aug-28

But YTM is pretty good, and for now we will use YTM, ignoring any issues about term structure
- Later in the course we will introduce "term structure of interest rates" or "yield curve"

Yields: All Bonds Move Together

Yield good way to measure "market price"

Yields for different bonds similar & move together

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/80027ce215cef6587df8af5fd42ab4ca96c11ea099e47cfdc7aa46d4604e4ad1.jpg)

## 3 Bpv, Dv01, & Duration

### 3.1 Converting From Yield To Price Changes
Problem: Yield Good as "Market Price", But Need CFs & $s

Work with yield in thinking about market: Changes in yield changes in market Problem:
- For profit & loss, need to translate from "changes in market" to "changes in CFs"
- Need sensitivity: change yield 1bp how many $?
different bonds have different sensitivity

## Solution:
Measure bond sensitivity: $\frac{\mathrm{PV}}{\mathrm{y}}$
 • Translate y $ by $ PV y

Call the derivative BPV (basis point value) or DV01 (dollar value of an 01)
- BPV: $100 bond, 100bp change in yields (1 percentage point)
- DV01: your actual holding, 1bp change in yields

### 3.2 Bpv & Dv01: Bond Sensitivity

## Bpv & Dv01: Bond Sensitivity
$$
\mathbf {B P V} \& \mathbf {D V} 0 1 = - \frac {\mathbf {P V}}{\mathbf {y}} \quad - \frac {\mathbf {P V} (\mathbf {y} + \mathbf {h}) - \mathbf {P V} (\mathbf {y} - \mathbf {h})}{2 \mathbf {h}}
$$
- Minus sign so positive (because P & Y)
- BPV: $100 bond, 100bp change in yields (1 percentage point)
- DV01: your actual holding, 1bp change in yields

Practical Calculation: bump yield up & down (by 5bp):

EXAMPLE: 4yr $6.5\%$ bond, y=6.60%, BPV = -99.48788-99.82890 / 0.10 = 3.41
- Why $\pm 5\mathsf{bp}$? "not too big, not too small"

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 4 & 6.65 & & 6.5 & 100 \\ \hline
Solve For & & & -99.48788 & & \\ \hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 4 & 6.55 & & 6.5 & 100 \\ \hline
Solve For & & & -99.82890 & & \\ \hline
\end{tabular}
\end{document}
```

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/7244c101bf57b4285ce41453016d9c7c38b5fbf22f6bcbe51e828d6633c41108.jpg)

## Bpv & Dv01 For Our Sample Bonds
$$
B P V \& D V 0 1 = - \frac {P V}{y} - \frac {P V (y + h) - P V (y - h)}{2 h}
$$

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
Coup & Mat & Prc & YId & BPV & Amt & DV01 \\ \hline
6.5\% & 4yr & 99.658 & 6.60\% & 3.41 & $1mn & 341 \\ \hline
4.0\% & 4yr & 91.113 & 6.60\% & 3.22 & $1mn & 322 \\ \hline
7.0\% & 6yr & 101.93 & 6.60\% & 4.89 & $1mn & 489 \\ \hline
\end{tabular}
\end{document}
```

Getting units right is difficult
- BPV: $100 bond, 100bp change in yield, number like 1.5,3.41,11.1
• DV01: BPV*Amt / 100*100 (100 for $100 bond, 100 for 100bp)

## Some Notes On Definition And Measurement Of Bpv
There are many questions and confusions on how we define and how we calculate the BPV. Let's separate the Definition and the Calculation:

Definition:
- BPV is the derivative of PV w.r.t. yield (changed in sign): BPV - $\frac{\mathrm{PV}}{\mathrm{y}}$
- But we have to define "PV of what?" and "per what change in yield?"
- For BPV we are saying "PV of a bond with $100 notional, so FV=100" and "per one unit (one percentage point) change in yield" so we are writing yield as a percentage like 1.50% not as decimal like 0.015
- This means we are defining the PV as the derivative for “a $100 bond, per one percentage point (or 100bp) change in yield”
- This is our definition of the BPV, defining the units we are using ($100 bond, 100bp change in yield)

## Calculation:
- Remember that the derivative is defined as the slope at a point and to be perfectly accurate we would use the rules of calculus to calculate the derivative
- Let's focus on a simple bond, our 4-year $6.5\%$ coupon bond. Te be perfectly accurate we should write down the PV formula, and then use the rules of calculus to calculate the derivative. For our 4-year annual-coupon bond this would be:

$$
\mathbf {P V} (\mathbf {y}) = \frac {6.5}{(1 + \mathbf {y}) ^ {1}} + \frac {6.5}{(1 + \mathbf {y}) ^ {2}} + \frac {6.5}{(1 + \mathbf {y}) ^ {3}} + \frac {6.5}{(1 + \mathbf {y}) ^ {4}} + \frac {100}{(1 + \mathbf {y}) ^ {4}}
$$

$$
\frac {\mathrm {P V} (\mathcal {Y})}{\mathcal {Y}} = \frac {- 1 \times 6.5}{(1 + \mathcal {Y}) ^ {2}} + \frac {- 2 \times 6.5}{(1 + \mathcal {Y}) ^ {3}} + \frac {- 3 \times 6.5}{(1 + \mathcal {Y}) ^ {4}} + \frac {- 4 \times 6.5}{(1 + \mathcal {Y}) ^ {5}} + \frac {- 4 \times 100}{(1 + \mathcal {Y}) ^ {5}}
$$
- This is messy, and gets to be very very difficult for anything beyond a simple bond
- So instead, let's go back to the definition of the derivative:

$$
\frac {\mathbf {P V} (\mathbf {y})}{\mathbf {y}} = \lim _ {\mathbf {h} \rightarrow 0} \frac {\mathbf {P V} (\mathbf {y} + \mathbf {h}) - \mathbf {P V} (\mathbf {y})}{\mathbf {h}}
$$ which says we bump the original value up a little (that $h$ ), take the difference $(PV(y + h) - PV(y))$ and then divide by $h$ so that we measure the derivative per one unit change in $y$. We do this for smaller-and-smaller bumps $h$ until we reach the limit.
- Let's do that, but instead of just bumping up, we can bump up and down. And instead of taking the limit (as $h \to 0$ ) let's just use a small value for $h$ (and remember to divide by $2h$ because we are bumping both up and down):

$$
\frac {\mathrm {P V} (\mathrm {y})}{\mathrm {y}} \quad \frac {\mathrm {P V} (\mathrm {y} + \mathrm {h}) - \mathrm {P V} (\mathrm {y} - \mathrm {h})}{2 \mathrm {h}}
$$

This is called "finite different approximation" and is a standard way to calculate an approximation to the derivative without having to do the messy formulas.

## Example:
Let's use our 4 year bond, and try three different bump sizes: 3bp, 5bp, and 6bp (in percentage points that is 0.03,0.05, and 0.06):

3bp:

$$
\frac {\mathbf {P V} (\mathbf {y} = 6.60 \%)}{\mathbf {y}} \quad \frac {\mathbf {P V} (6.60 + 0.03) - \mathbf {P V} (6.60 - 0.03)}{2 \times 0.03} = \frac {99.55596 - 99.760575}{0.06} = \frac {- 0.2046}{0.06} = - 3.410
$$
- 5bp:

$$
\frac {\mathbf {P V} (\mathbf {y} = 6.60 \%)}{\mathbf {y}} \quad \frac {\mathbf {P V} (6.60 + 0.05) - \mathbf {P V} (6.60 - 0.05)}{2 \times 0.05} = \frac {99.55596 - 99.760575}{0.10} = \frac {- 0.3410}{0.10} = - 3.410
$$
- 6bp:

$$
\frac {\mathbf {P V} (\mathbf {y} = 6.60 \%)}{\mathbf {y}} \quad \frac {\mathbf {P V} (6.60 + 0.06) - \mathbf {P V} (6.60 - 0.06)}{2 \times 0.06} = \frac {99.55596 - 99.760575}{0.12} = \frac {- 0.4092}{0.12} = - 3.410
$$

The change in bond price $(\mathsf{PV}(\mathsf{y} + \mathsf{h}) - \mathsf{PV}(\mathsf{y} - \mathsf{h}))$ is different for each, because we are bumping up and down by different amounts. Those changes in bond price on their own will not be useful for the derivative because they measure changes for different amounts of change in yield. But we can normalize and convert them all to the change in bond price per 1 percentage point change in yield if we divide by the amount of the bump $(2\times \mathsf{h})$. We see that the change in price from bumping up-and-down by 6bp is twice the change in prices using 3bp (to four decimals at least). We can use either one to give us our approximation to the derivate (change in price per 1 percentage point $(100\mathrm{bp})$ change in yield). I tell you to use 5bp. Either 3 or 6 would also work, as long as we divide by the right $2\times \mathsf{h}$. But using $\pm 50\mathrm{bp}$ is not a good idea because that is too big a change. We use a small change (small bump h), and then normalize by the size of the bump to get the approximation per 1 percentage point change in yield.

### 3.3 Duration

## Duration: Length Vs Sensitivity
Three Concepts - I always start with BPV & DV01
- BPV & DV01 - dollar change per change in yield - (aka dollar duration)

$$
B P V \& D V 0 1 = - \frac {P V}{y} - \frac {P V (y + h) - P V (y - h)}{2 h}
$$
- Modified (Adjusted) Duration - % change per change in yield

$$
\text {M o d D u r} = - \frac {1}{P V} \frac {P V}{y} = 100 \cdot \frac {B P V}{P V}
$$
- Macaulay Duration - weighted avg time until get repayed in years (MacDur maturity)

$$
\text {M a c D u r} = \quad t _ {i} \cdot \frac {P V _ {i}}{P V _ {T}}; t _ {i} \text {i s t i m e t o p a y m e n t i}; \frac {P V _ {i}}{P V _ {T}} \text {i s w e i g h t}
$$

$$
\text {M a c D u r} = 1 + \frac {\mathcal {Y}}{\text {f r e q}} \cdot \text {M o d D u r} = 100 \cdot \frac {\text {B P V}}{\text {P V}} \cdot 1 + \frac {\mathcal {Y}}{\text {f r e q}}
$$

I like DV01 best - but Duration used more
- I start with BPV / DV01, build to Duration
- Most texts start with Duration - confusing because of % sensitivity vs years

Most textbooks and course start with duration but I find that very confusing, since "duration" is used for both Macaulay Duration and Modified (or Adjusted) Duration. I find it much easier to start with BPV / DV01 and then work towards Modified and Macaulay Duration. See the Wikipedia entry on "Bond Duration"  which is pretty good. (One is not supposed to quote Wikipedia, but I contributed much of that entry so I am pretty happy with it.)

## Modified And Macauley Separate Concepts
- Modified - sensitivity - % change in price
- Macauley - time (as in "duration") in years

I teach DV01 then Modified then Macauley
- Very easy to understand BPV & DV 01 = - $\frac{\mathrm{PV}}{\mathrm{y}}$

Why Macauley Duration at all?

History.
- Quick-and-dirty guess for BPV
- "Balance beam" shorter than maturity

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/368f975dfb989a083f2839050309418ba6a38d09139fcb7ca1598b6adaf2c8fa.jpg)

Macaulay duration for 4yr $6.5\%$ bond $= 3.65$ yrs
(annual coupon 6.5%, 4yrs, price 99.6582, yield 6.6%ab)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
6.60\%ab yield & BPV ($100 bond, 100bp yld ch) & Modified Duration (\%, 100bp) & Macaulay Duration (years) \\ \hline
4yr 6.5\% bond, P=99.658 & $3.410 & 3.422\% & 3.648 yrs \\ \hline
6yr 7.0\% bond, P=101.930 & $4.886 & 4.794\% & 5.110 yrs \\ \hline
\end{tabular}
\end{document}
```

In-Class Exercise 2: Duration / BPV

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
6.60\%ab yield & BPV ($100 bond, 100bp yld ch) & Modified Duration (\%, 100bp) & Macaulay Duration (years) \\ \hline
4yr 6.5\% bond, P=99.658 & $3.410 & 3.422\% & 3.648 yrs \\ \hline
6yr 7.0\% bond, P=101.930 & $4.886 & 4.794\% & 5.110 yrs \\ \hline
10yr 7.0\% bond, P=102.862 & $7.289 & 7.086\% & 7.554 yrs \\ \hline
\end{tabular}
\end{document}
```

1. Guess at Macaulay Duration, and from that BPV & Modified Duration
2. Calculate BPV (formula below)
3. Calculate ModDur & MacDur (formula below)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/e1963f8cd126ce831d19400bbaac674fb8a608c68c7f9006b6ceeb250de81523.jpg)

Macaulay duration for 4yr $6.5\%$ bond $= 3.65yrs$
(annual coupon 6.5%, 4yrs, price 99.6582, yield 6.6%ab)

$$
B P V \& D V 0 1 = - \frac {P V}{y} - \frac {P V (y + h) - P V (y - h)}{2 h}
$$

$$
\text {M o d D u r} = - \frac {1}{P V} \frac {P V}{y} = 100 \cdot \frac {B P V}{P V}
$$

$$
\text {M a c D u r} = 1 + \frac {\mathcal {Y}}{\text {f r e q}} \cdot \text {M o d D u r} = 100 \cdot \frac {\text {B P V}}{\text {P V}} \cdot 1 + \frac {\mathcal {Y}}{\text {f r e q}}
$$

You should be able to guess at the Macaulay duration of the 10-year as something shorter than 10 years, something like 7 or 8 or 9. Then the BPV & ModDur should be roughly the same.

This is not an accurate guess, but it tells you what kind of answer you should get.

### 3.4 Bpv / Dv01 For Predicted P&L And Hedging
Price as Function of Yield: Approximate P&L

Write price as function of new yield, and change in yield from old

$$
\mathbf {P} \left(\mathbf {y} _ {1}\right) = \mathbf {P} \left(\mathbf {y} _ {0} + \mathbf {y} _ {1} - \mathbf {y} _ {0}\right) = \mathbf {P} \left(\mathbf {y} _ {0} + \mathbf {\Delta y}\right)
$$

Then use 1st-order Taylor series expansion and DV01

$$
\mathbf {P} \left(\mathbf {y} _ {1}\right) = \mathbf {P} \left(\mathbf {y} _ {0} + \mathbf {\Delta y}\right) \quad \mathbf {P} \left(\mathbf {y} _ {0}\right) + \mathbf {\Delta y} \cdot \frac {\mathbf {P}}{\mathbf {\Delta y}} = \mathbf {P} \left(\mathbf {y} _ {0}\right) - \mathbf {\Delta y} \cdot \mathbf {D V} 0 1
$$

Finally, look at P&L (profit & loss) - subtract out $\mathbf{P}(\mathbf{y}_0)$:

$$
\mathbf {P} \left(\mathbf {y} _ {1}\right) - \mathbf {P} \left(\mathbf {y} _ {0}\right) - \mathbf {\Phi} _ {\mathbf {y}} \cdot \mathbf {D V} 0 1
$$

Caveats:
- Only 1st-order approximation (may need 2nd - convexity)
- Doesn't consider other "risk factors"
- Spread
- Time

## Approximate P&L - Example - In-Class Exercise 3
P&L=P($y_{1}$)-P($y_{0}$) -y $\cdot$ DV01

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
Coup & Amt & $P_{1}$ & $P_{2}$ & P&amp;L \\ \hline
4yr 6.5\% & $10mn & 99.658 & 99.318 & -$34k \\ \hline
10yr 7\% & $10mn & 102.862 & 102.137 &??-$72.5k \\ \hline
\end{tabular}
\end{document}
```

$\mathrm{P\&L = (102.137 - 102.862)^{*}10mn / 100}$

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
Coup & Amt & $Y_{1}$ & $Y_{2}$ & y & BPV & DV01 & P&amp;L \\ \hline
4yr 6.5\% & $10mn & 6.60\% & 6.70\% & 10bp & 3.41 & 3,410 &??-$S_{34}$0.1k \\ \hline
10yr 7\% & $10mn & 6.60\% & 6.70\% & 10bp & 7.29 &??7,290 &??-$S_{72}$0.9k \\ \hline
\end{tabular}
\end{document}
```

HEDGING: what if you want to sell 10yr to match P&L on 4yr.

• How much? Just match BPV / DV01: $4.7mn = $10mn * 3.41/7.29

Pred P&L (4yr) = -3410*10

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
Coup & Amt & $Y_{1}$ & $Y_{2}$ & y & BPV & DV01 & P&amp;L \\ \hline
4yr 6.5\% & $10mn & 6.60\% & 6.70\% & 10bp & 3.41 & 3,410 & -$34.1k \\ \hline
10yr 7\% &??-$4.7mn & 6.60\% & 6.70\% & 10bp & 7.29 &??-3,426 &??+$34.3k \\ \hline
\end{tabular}
\end{document}
```

### 3.5 Decomposing P&L - Pure Discounting & Spread Contents

## Fis Bond Change In October 2018
An FIS bond, prices from October 2018
- What was P&L from 1-oct to 5-oct?

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
1-Oct-18 5-oct-18 & $P_{1}$ & $Y_{1}$ & $P_{2}$ & $Y_{2}$ & Prc & Y ld \\ \hline
FIS 4.25s 15-may-2028 & 100.291 & 4.212\% & 99.645 & 4.295\% &??-$0.646 &??+8.3bp \\ \hline
\end{tabular}
\end{document}
```

Easy to get P&L, but how much due to
- Changes in pure discounting (today vs tomorrow, UST market)
- FIS risk - risk premium or FIS bond spread

Valuable to decompose, because result from very different sources
- Pure discounting: economy-wide factors
FIS risk: information about company-specific risks

You need to understand what risks you are taking on, and why you are making (or losing) money

How to Decompose FIS P&L? Think About YieldUse BPV/DV01 For default-risky bond like FIS, Yield decomposes into "UST" & "Spread"

$$
Y _ {F I S} = Y _ {U S T} + \text {s p r e a d} = Y _ {U S T} + \text {R i s k P r e m}
$$

Change decomposes into "UST" & "Spread"

$$
Y _ {F I S} = Y _ {U S T} + Y _ {s p r e a d}
$$

FIS changes because discounting (UST) or risk premium (Spread) change

How do we decompose actual price changes into "discounting" & "risk premium"?
- Focus on Spread
- Fill in Spread at period 2, and change in spread

We want to decompose that $0.646 loss into how much from UST & how much from FIS risk (Spread)

Simple solution: Yield & Predicted P&L decomposes into "UST" & "Spread"

$$
\begin{array}{l} \mathrm {P} \& \mathrm {L} = \mathrm {P} \left(\mathbf {y} _ {1}\right) - \mathrm {P} \left(\mathbf {y} _ {0}\right) - \mathbf {Y} _ {\text {F I S}} \cdot \mathbf {D V} 0 1 \\ Y _ {F I S} = Y _ {U S T} + Y _ {\text {s p r e a d}} \\ \mathrm {P} \& \mathrm {L} = \mathrm {P} (\mathrm {y} _ {1}) - \mathrm {P} (\mathrm {y} _ {0}) - \mathrm {Y} _ {\text {F I S}} \cdot \mathrm {D V 0 1} = - \mathrm {Y} _ {\text {U S T}} \cdot \mathrm {D V 0 1} - \mathrm {Y} _ {\text {s p r e a d}} \cdot \mathrm {D V 0 1} \\ \end{array}
$$
- Because we can decompose the yield change, we can decompose the approximate dollar change
- DV01 converts from yield P&L to dollar P&L

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
1-Oct-18 & 5-oct-18 & $P_{1}$ & $Y_{1}$ & $P_{2}$ & $Y_{2}$ & Prc & YId \\ \hline
UST 2.875s & 15-aug-28 & 98.2969 & 3.076\% & 97.0078 & 3.231\% & -$1.2891 & +15.5bp \\ \hline
FIS 4.25s & 15-may-2028 & 100.291 & 4.212\% & 99.645 & 4.295\% & -$0.646 & +8.3bp \\ \hline
Spread & & & 113.6bp & &??106.4bp & &??-7.2bp \\ \hline
\end{tabular}
\end{document}
```

## Reminder - Use Bond Menu For Bonds For Bpv/Dv01
$$
\mathrm {P} \& \mathrm {L} = \mathrm {P} (\mathrm {y} _ {1}) - \mathrm {P} (\mathrm {y} _ {0}) - \mathrm {Y} _ {\text {F I S}} \cdot \mathrm {D V} 0 1 = - \mathrm {Y} _ {\text {U S T}} \cdot \mathrm {D V} 0 1 - \mathrm {Y} _ {\text {s p r e a d}} \cdot \mathrm {D V} 0 1
$$

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline settle=1-Oct-18 & Amt & $P_{1}$ & $Y_{1}$ & BPV & DV01 \\ \hline
UST 2.875s 15-aug-28 & $10mn & 98.2969 & 3.076\% & 8.38 & \\ \hline
FIS 4.25s 15-may-2028 & $10mn & 100.291 & 4.212\% & 7.86 & 7,860 \\ \hline
Spread & & & 113.6bp & & \\ \hline
\end{tabular}
\end{document}
```

For BPV on FIS, use BOND menu & bump up & down:

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
 & Type & Settle & Mat & CPN\% & YLD\% & Price \\ \hline
Given & 360 semi & 10.012018 & 5.152028 & 4.25 & 4.26 & \\ \hline
Solve For & & & & & & 99.9176 \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
 & Type & Settle & Mat & CPN\% & YLD\% & Price \\ \hline
Given & 360 semi & 10.012018 & 5.152028 & 4.25 & 4.16 & \\ \hline
Solve For & & & & & & 100.7037 \\ \hline
\end{tabular}
\end{document}
```

$$
\frac {100.7037 - 9 9.9176}{0.10} = 7.86
$$

## Decomposing Fis P&L - "Ust" & "Spread"
P &L = P ($y_{1}$) - P ($y_{0}$) - Y_FIS $\cdot$ DV01 = - Y_UT $\cdot$ DV01 - Y_spread $\cdot$ DV01

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
1-Oct-18 5-oct-18 & Amnt & BPV & DV01 & Prc & Y ld & Pred P&amp;L \\ \hline
FIS 4.25s 15-may-2028 & $10mn & 7.86 & 7,860 & -$64,600 & +8.3bp & -$65,238 \\ \hline
UST & & & 7,860 & & +15.5bp &??-$121,830 \\ \hline
Spread & & & 7,860 & & -7.2bp &??+$56,592 \\ \hline
\end{tabular}
\end{document}
```

We want to use same BPV / DV01 for all changes ( $\mathsf{Y}_{\mathrm{FIS}},\quad \mathsf{Y}_{\mathrm{UST}},\quad \mathsf{Y}_{\mathrm{spread}})$
- If either UST or Spread change, the yield on FIS changes:

$$
\mathbf {Y} _ {\text {F I S}} = \mathbf {Y} _ {\text {U S T}} + \mathbf {Y} _ {\text {s p r e a d}}
$$

Predicted P&L for UST & Spread are just - Y $\cdot$ DV 01 Important things to remember:

• BPV: $100 notional, 100bp yld change; DV01: actual notional, 1bp yld change: DV01 = Amount BPV/(100 100)
- ALWAYS put the negative sign for P&L: PredP&L = - Y $\cdot$ DV01
- Check that predicted P&Ls are close to the actual and that they add: $\mathsf{Pred}_{\mathrm{FIS}} = \mathsf{Pred}_{\mathrm{UST}} + \mathsf{Pred}_{\mathrm{Spread}}$

There are a few important things to remember:

BPV is for $100 notional, 100bp yld change; DV01 is actual notional, 1bp yld change:

$$
D V 0 1 = \text {A m o u n t} \quad B P V / (100 \quad 100)
$$

• One 100 is for the $100 notional (to get to $1 notional) and the other 100 is for the 100bp (to get to 1bp)

ALWAYS put the negative sign for P&L:

$$
\operatorname {P r e d} P \& L = - Y \cdot D V 0 1
$$
- Remember that

$$
D V 0 1 = - \frac {P V}{y}
$$

Can We Arrange Instrument(s) To Give This P&L?

Can we actually trade bonds (portfolio) that give us this spread P&L?

First Idea: Buy FIS (obviously) but then Sell UST
- Selling UST will make money when $\Upsilon_{\mathrm{UST}}$ (P but short so make money)
- Almost works, but amounts are not really right
- We are making too much money on the UST - more than "predicted"
- We want actual P&L close to predicted $121,830, but too much
- But the reason is obvious - the UST BPV is too large
- Selling $10mn of the UST would give DV01 of 8,380, not 7,860

Solution is simple: sell less of the UST
- BPV of UST is too high, so sell less
 • Sell 7.86 / 8.38 = 0.938 or $9.38mn
Now we have the right DV01: $9.38\mathrm{mn}^{*}8.38 / (100^{*}100) = 7,860$
- Successfully created "Portfolio" (Long FIS, Short UST) giving spread P&L

Powerful Idea:
- Buying one instrument (FIS) that contains two risks (Discounting & Spread)
- Selling another instrument (UST) that strips out one risk (Discounting)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
1-Oct-18 5-oct-18 & Amnt & BPV & DV01 & Prc & Y ld & Prec & P&amp;L \\ \hline
FIS 4.25s 15-may-2028 & $10mn & 7.86 & 7,860 & -$64,600 & +8.3bp & -$6 &,238 \\ \hline
UST & -$10mn-$9.38mn & 8.38 & -7,8607,860 & -$128,910-$120,918 & +15.5bp & -$121,83 & -$121,830 \\ \hline
Spread & & & 7,8607,860 & +$64,310+$56,318 & -7.2bp & +$56,59 & +$56,592 \\ \hline
\end{tabular}
\end{document}
```

## 4 A Digression On Shorting & Leverage
I find the section of BKM on short sales and buying on margin ( section 3.8,3.9) confusing

```txt
How Do You Sell What You Don't Own?
Many people have a conceptual problem with "Shorting" How do you sell what you don't own?
Actually very easy - discuss today how it's done in bonds - Repo Bonds: repo or repurchase agreements Repo is a way to borrow & lend money - collateralized lending Side-ect: sell bond you don't own Futures and Forwards (Forward Rate Agreements) another way Repo & Leverage Repo (collateralized borrowing / lending) allows leverage Buying $100 bond with only $5 of cash Leverage $= \frac{\text{Assets}}{\text{Cash}} = 20$ to-1 in this case
```

### 4.1 Shorting (Bkm 3.8,3.9)
```txt
Before Selling & Shorting, How Do We Buy & Go Long?
Buying a bond seems simple: pay $100 and you own the bond
• P you win, P you lose
But what if you don't actually have $100?
• Borrow $100, buy bond, so still P you win, P you lose
But risk you won't repay, so rate to borrow is high
• Solution? Collateralized borrowing: you pledge the bond – give it away until you repay the loan
• Still "own" the bond, so P you win, P you lose
For US Treasury Bonds, called Repo (for "Repurchase")
• You Sell today, Buy back in future
• Sell / Buy-Back or Repurchase (Repo) transaction
```

Now "Buying Bond" is Two Transactions: Buy & Repo

BUY: Buy today at $\mathbf{P_0}$ (give $100), plan sell later at high price (get $?X?)

REPO (2%): Sell today at $\mathbf{P}_0$ (get $100), agree to buy back at $\mathbf{P}_1$ (give $102)

Buy today and hope price goes way up

Today: Buy & Repo all cancel
- Get bond from purchase, give it for repo
- Give $100 for purchase, get it from repo

Tomorrow: Cash doesn't cancel
- Get bond back from repo, then sell in market - Bonds cancel
- Get?X? from selling, give away $102 in repo
Profit $=$?X?-102
- If $\mathbf{X}$ is high, make money. If low, lose

Where does repo price of $102 come from?

Borrow @2%: PV Pricing (Forward Pricing)

$$
\begin{array}{l} \mathbf {P} _ {0} = \frac {\mathbf {P} _ {\mathbf {n}}}{(1 + \mathbf {y}) ^ {\mathbf {n}}} \\ \mathbf {P} _ {0} = $ 100; \mathbf {y} = 2 \%; \mathbf {n} = 1 \\ \mathbf {P} _ {\mathbf {n}} = $ 102 \\ \end{array}
$$

Repo is borrowing money (collateralized borrowing)

Here, borrow at $2\%$ for 1 year

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/fbbe1eaa7f33002f8dee7b9872b9f1a675f8be67fbcd1da303474872f8a9b87e.jpg)

## Summary For Buy & Repo
Legally, repos can be structured in two ways
- Repo: lending and borrowing, collateralized
- Repurchase: Sell / Buy-Back (sell today, buy back at price agreed today)

Either way, think about Borrowing or Lending money

```latex
\begin{document}
\begin{tabular}{|c|}
\hline
Buy &amp; Repo \\ \hline
Long the market \\ \hline
Market: Buy today @ $100, sell at $?X? \\ \hline
Repo: Borrow $100 today, pay $102 \\ \hline
Repurchase or Sell / Buy-Back: Sell today @ $100, buy at $102 \\ \hline
Think about: Borrowing Money \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|}
\hline
Sell &amp; Reverse Repo \\ \hline
Short the market \\ \hline
Market: Sell today @ $100, buy at $?X? \\ \hline
Reverse repo: Lend $100 today, get $102 \\ \hline
Reverse Repurchase or Buy / Sell-Back: Buy today @ $100, sell at $102 \\ \hline
Think about: Lending Money \\ \hline
\end{tabular}
\end{document}
```

Repo Pricing is simple Forward Pricing

$$
P _ {0} = \frac {P _ {n}}{(1 + y) ^ {n}}
$$

$$
\mathbf {P} _ {0} = $ 100; \mathbf {y} = 2 \%; \mathbf {n} = 1
$$

$$
P _ {n} = $ 102
$$

## Summary For Buy & Repo
```latex
\begin{document}
\begin{tabular}{|c|}
\hline
Buy &amp; Repo \\ \hline
Long the market \\ \hline
Market: Buy today @ $100, sell at $?X? \\ \hline
Repo: Sell today @ $100, buy at $102 \\ \hline
Repurchase or Sell / Buy-Back \\ \hline
Borrow Money \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|}
\hline
Sell &amp; Reverse Repo \\ \hline
Short the market \\ \hline
Market: Sell today @ $100, buy at $?X? \\ \hline
Repo: Buy today @ $100, sell at $102 \\ \hline
Reverse Repurchase or Buy / Sell-Back \\ \hline
Lend Money \\ \hline
\end{tabular}
\end{document}
```

Repo Pricing is simple Forward Pricing

$$
\mathbf {P} _ {0} = \frac {\mathbf {P} _ {\mathrm {n}}}{(1 + \mathbf {y}) ^ {\mathrm {n}}}
$$

$$
\mathbf {P} _ {0} = $ 100; \mathbf {y} = 2 \%; \mathbf {n} = 1
$$

$$
\mathbf {P} _ {\mathbf {n}} = $ 102
$$

"Selling Bond" is Now Simple: Sell & Reverse Repo

SELL: Sell today at $\mathbf{P_0}$ (get $100), plan buy later at low price (give $?X?)

REVERSE: Buy today at $\mathbf{P}_0$ (give $100), agree to sell back at $\mathbf{P}_1$ (get $102)

Reverse repo: get a bond, so now sell it

Sell today and hope price goes way down

Today: Sell & Reverse all cancel
- Need bond for sale, get it from repo
- Cash cancels out

Tomorrow: Cash doesn't cancel
- Give bond back for reverse, get by buying in market - Bonds cancel
 Give?X? to buy, get $102 in repo
Profit $= 102 -?X?$
- If $\mathbb{X}$ is low, make money. If high, lose

Where does repo price of $102 come from?

Lend @2%: PV Pricing (Forward Pricing)

$$
\begin{array}{l} \mathbf {P} _ {0} = \frac {\mathbf {P} _ {\mathbf {n}}}{(1 + \mathbf {y}) ^ {\mathbf {n}}} \\ \mathbf {P} _ {0} = $ 100; \mathbf {y} = 2 \%; \mathbf {n} = 1 \\ P _ {n} = $ 102 \\ \end{array}
$$

Reverse Repo is lending money (collateralized lending)

Here, lend at $2\%$ for 1 year

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/193e2b7d9f3d85fcdd17757b89d01c46be1ea78e12c312dade58403da6922516.jpg)

## Summary For Buy & Repo
Legally, repos can be structured in two ways
- Repo: lending and borrowing, collateralized
- Repurchase: Sell / Buy-Back (sell today, buy back at price agreed today)

Either way, think about Borrowing or Lending money

```latex
\begin{document}
\begin{tabular}{|c|}
\hline
Buy &amp; Repo \\ \hline
Long the market \\ \hline
Market: Buy today @ $100, sell at $?X? \\ \hline
Repo: Borrow $100 today, pay $102 \\ \hline
Repurchase or Sell / Buy-Back: Sell today @ $100, buy at $102 \\ \hline
Think about: Borrowing Money \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|}
\hline
Sell &amp; Reverse Repo \\ \hline
Short the market \\ \hline
Market: Sell today @ $100, buy at $?X? \\ \hline
Reverse repo: Lend $100 today, get $102 \\ \hline
Reverse Repurchase or Buy / Sell-Back: Buy today @ $100, sell at $102 \\ \hline
Think about: Lending Money \\ \hline
\end{tabular}
\end{document}
```

Repo Pricing is simple Forward Pricing

$$
P _ {0} = \frac {P _ {n}}{(1 + y) ^ {n}}
$$

$$
\mathbf {P} _ {0} = $ 100; \mathbf {y} = 2 \%; \mathbf {n} = 1
$$

$$
\mathbf {P} _ {\mathbf {n}} = $ 102
$$

## Shorting - Simple And Easy
In summary, shorting is simple and easy

Need way to "sell" something today, delay purchase until tomorrow or next week or next year
- Repo or sell / buy-back (reverse repo or buy / sell-back):
- Sell today, agree to buy back in future
- Get bond certificates as collateral for lending money to someone
- Forward & Futures contract:
- Agree today to sell in future

Pricing relationship exactly same for both:

$$
P _ {0} = \frac {P _ {n}}{(1 + y) ^ {n}}
$$

### 4.2 Leverage
Leverage & Actual Repo: Never Borrow Full $100

BUY: Buy today at $\mathbf{P_0}$ (give $$ 100$ ), plan sell later at high price (get $$ 2X$ )?

REPO: Sell today at $\mathbf{P_0}$ (borrow $95), agree to buy back at $\mathbf{P_1}$ (give $96.90)

In markets, Repo is always over-collateralized

Give bond worth $100, but only borrow $95
- Builds in "safety bu er" so that if bond price the collateral (the bond) still worth more than the loan
- You need to put $5 of your own money in

Leverage:
- How much you have as assets versus how much you put in

$$
\text {L e v e r a g e} = \frac {\text {A s s e t s}}{\text {C a s h}} = \frac {100}{5} = 2 0 \text {t o} 1
$$

Leverage increases potential for Profit & Loss
- Your investment now only $5

But Profit or Loss is on whole $100

$$
\mathbf {P} \& \mathbf {L} =? \mathbf {X}? - (9 6.9 + 5 \quad 1.02) =? \mathbf {X}? - 102
$$
- You can get big P&L for small investment

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/54b3c7db8ddf5f9744fe8fd3b906315e3f86d4bf79b809a245399ec9527cbf5a.jpg)

## 5 Digression On Hp Calculator Solve Menu
HP SOLVE Menu - General Equation Solver

TVM equation for our 4-year $6.5\%$ coupon bond cannot be easily solved when given PV, ask for Y:

$$
9 9.658 = \frac {6.5}{(1 + y _ {a b})} + \frac {6.5}{(1 + y _ {a b}) ^ {2}} + \frac {6.5}{(1 + y _ {a b}) ^ {3}} + \frac {6.5}{(1 + y _ {a b}) ^ {4}} + \frac {100}{(1 + y _ {a b}) ^ {4}}
$$

Financial calculators build in a SOLVER root finding algorithm for these kind of equations
- TVM menu
- HP (maybe others) allow you to program your own equations, use the same algorithm
SOLVE menu

## Hp Solve Menu - Tvm
TVM equation

$$
\mathbf {P V} = \begin{array}{l} N \\ i = 1 \end{array} \frac {\mathbf {P M T}}{(1 + Y) ^ {i}} + \frac {100}{(1 + Y) ^ {N}}
$$ which (with some algebra) becomes

$$
0 = \mathbf {P V} + \frac {\mathbf {P M T}}{\mathbf {Y}} 1 - \frac {1}{(1 + \mathbf {Y}) ^ {\mathrm {N}}} + \frac {\mathbf {F V}}{(1 + \mathbf {Y}) ^ {\mathrm {N}}}
$$ writing “ $0 = \mathrm{PV} + \ldots$ ” so that PV is negative when PMT & FV positive

Program into SOLVE menu as

$$
0 = \mathbf {P V} + (\mathbf {P M T} \div (\mathbf {Y} \div 100)) \times (1 - 1 \div ((1 + \mathbf {Y} \div 100) ^ {\wedge} \mathbf {N})) + \mathbf {F V} \div ((1 + \mathbf {Y} \div 100) ^ {\wedge} \mathbf {N})
$$
- Exact same answers as regular TVM menu

HP SOLVE Menu - Discount Yield to Bond Yield

Now, think about a TBill, where price is quoted using Discount Yield D:

$$
\text {P r i c e} = 100 - \text {D i s c Y I d} \times \frac {\text {A c t D a y s}}{360}
$$ and where the annualized yield is defined from the PV equation:

$$
P V = \frac {100}{\left(1 + Y / f r e q\right) ^ {A D / (365 \div f r e q)}}
$$

Putting $\mathbf{Price} = \mathbf{PV}$ we get the equation:

$$
100 - D Y \times \frac {A D}{360} = \frac {100}{\left(1 + Y / f r e q\right) ^ {A D / (365 \div f r e q)}}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/213081aebf04a75f07b572df4248be30d4a545137cf204dd896012f5314408e1.jpg)

You can then put this equation into the HP SOLVER menu as:

$$
100 - \mathbf {D Y} \times (\mathbf {A D} \div 365) = 100 \div ((1 + \mathbf {Y} \div (\mathbf {f} \times 100)) ^ {\wedge} (\mathbf {A D} \div (365 \div \mathbf {f})))
$$ and writing $\mathbf{Y} \div 100$ so that the calculator gives numbers like 4.83 (instead of 0.0483)

Now you have your own SOLVER menu with 4 items: DY (quote or discount yield), AD (actual days), f (freq = 1 for annual bond, 2 for semi-annual bond), and Y (ab or sab)

HP SOLVE Menu - Converting ab sab

Relation annual bond vs semi-annual bond:

$$
1 + \mathbf {y} _ {\mathrm {a b}} = 1 + \frac {\mathbf {y} _ {\mathrm {s a b}}}{2} ^ {2}
$$

Program SOLVER equation:

$$
1 + \mathbf {Y} \mathbf {A} \mathbf {B} \div 100 = (1 + (\mathbf {Y} \mathbf {S} \mathbf {A} \mathbf {B} \div 200)) ^ {\wedge} 2
$$

EXAMPLE:

$4\%_{\mathrm{ab}}$ $3.9608\%_{\mathrm{sab}}$

## References

## Bonds (Clean Vs Dirty) & Real Vs Nominal Discounting
Lecture 4

Thomas S. Coleman

29 March 2023; Draft April 3,2023

## Outline

## 1 Bonds - Details For Actual Us Treasury Bonds 2
1.1 Non-Coupon Date: Accrued Interest, Clean vs Dirty Price 2
1.2 HP 17B BOND Menu 4
1.3 Various Bonds & Conventions 7
1.4 Periodic Payments & Compounding 12

## 2 Real & Nominal Rates 17
2.1 Unpacking the Budget Line Part II: Real & Nominal Rates 17
2.2 TIPS - Treasury Inflation Protected Securities 20
2.3 More About Real & Nominal 21
2.4 Changes 2016-2023 24

## 1 Bonds - Details For Actual Us Treasury Bonds

### 1.1 Non-Coupon Date: Accrued Interest, Clean Vs Dirty Price Contents

## Partial Period: Pv Rises As Cfs Come Closer
- Our $6.5\%$ coupon bond, price $$ 99.658$. Exactly 4yrs to maturity
- What happens 73 days later, when it is 3yrs 292 days to maturity?
- Exact 4-yr (on coupon date): yield $= 6.60\%$ $\mathrm{PV} = 99.658$
Shorter: 73 days (0.2yrs) later: yield $= 6.60\%$ PV=100.940

$$
9 9.658 = \frac {6.5}{(1 +. 066) ^ {1}} + \frac {6.5}{(1 +. 066) ^ {2}} + i i i + \frac {100}{(1 +. 066) ^ {4}}
$$

$$
100.940 = \frac {6.5}{(1 +. 066) ^ {. 8}} + \frac {6.5}{(1 +. 066) ^ {1.8}} + i i i + \frac {100}{(1 +. 066) ^ {3.8}}
$$
- Exact 4-yr (on coupon date): PV=99.658, yield=6.60%
- Shorter: 73 days (0.2yrs) later: $\mathrm{PV} = 100.940$, yield $= 6.60\%$

Something wrong: yield is still $6.60\%$, price shouldn't go up by §1.28
- Reason: coupon is 0.2yrs closer, we've earned 0.2 of that coupon
- Solution: calculate how much we've "earned": $0.2^{*}6.5 = $ 1.30$
- Subtract out that "accrued interest": get $100.94 - 1.30 = 99.64$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/7cb14fc53399a3fb2c76240534e27f2a23eb6ccbdab5d60070f17be3a59d41ca.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/0a1e8e70a537a0eedca81c18cc258ff6d2ca640e61ea7694f4c54f47ce4bf0a2.jpg)

## Bond Pv O Coupon Date & Sawtooth
As move closer to next coupon, PV goes up: sawtooth pattern

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/56919748457c6b4ee0f9626e33f525da81fae25d26048bc1c169bf079a76bcb0.jpg)

Figure 3.3 - PV versus Maturity for a Four Year $6.5\%$ Coupon Bond with $6.5\%$ Yield
- Underlying market value not changed - just "earning" coupon
- Obscures underlying "value" - partly reflects earning past coupon
- If I buy after 0.2yrs, I pay "extra" because I get full coupon but hold for $80\%$ not $100\%$ of period

## Dirty Price, Clean Price, Accrued Interest
Solution - split PV ("Dirty Price") into two parts:
- "Accrued Interest": the fraction of the next coupon earned in past

$$
- \mathbb {S} 1.30 = 0.2 ^ {*} \mathbb {S} 6.5
$$
- "Clean Price": the price after adjusting: CleanP = DirtyP - AI

In this case, 0.2 of coupon period (0.2yrs) has passed
- CleanP = DirtyP - 0.2*6.5
- 99.64 = 100.94 - 1.30

This "Accrued Interest" is what we've accrued because we've held the bond, and earned interest The "extra" I pay to seller because I get full coupon when paid

But it's not really part of the "market price" - what is quoted in the market

### 1.2 Hp 17B Bond Menu

## Hp 17B Bond Menu And Bond Calculations
The HP calculator (any bond calculator) knows Clean, Dirty, Accrued:
- Blue <MAIN> <FIN> <BOND> <TYPE A/A Ann>
- You put in Clean Price (the newspaper quote) or yield
HP calculates AI
- Uses $\mathbf{DP} = \mathbf{CP} + \mathbf{AI}$ in yield calculations

Full 4 years (23-mar-2018 23-mar-2022)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
 & Type & Settle & Mat & CPN\% & YLD\% & Price & ACCRU \\ \hline
Given & A/A Ann & 3.232018 & 3.232022 & 6.5 & 6.60 & & \\ \hline
Solve For & & & & & & 99.658 & 0 \\ \hline
\end{tabular}
\end{document}
```

73 days or 0.2yrs later (on 4-jun-2018): $\mathbf{PV} = \mathbf{CP} + \mathbf{AI} = \mathbf{100.94}$

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
 & Type & Settle & Mat & CPN\% & YLD\% & Price & ACCRU \\ \hline
Given & A/A Ann & 6.042018 & 3.232022 & 6.5 & 6.60 & & \\ \hline
Solve For & & & & & & 99.64 & 1.30 \\ \hline
\end{tabular}
\end{document}
```

Clean Price - what people talk about (the market price)

Dirty Price - what you actually pay

## Bond Menu For Ust
Look at some actual bonds: 2.255 of 15-nov-2025 (back in 2015 & 2016)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/92a259c8431031ffe986a102af3aeca856e3b9a6faa02428c6c04f4a2bd78452.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/c4675e280c9b3f66e875dc2394b7388c9fd5e785c5cc6b001e2d845c27cc43e3.jpg)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
Molarity & CaCO3 & Tolal & P\#\#\#\#\# & Chg & A\#\#\#\#\# \\ \hline
10.0220 & 0.375 & 95.9888 & 95.8844 & 0.6203 & 0.006 \\ \hline
10.0220 & 0.375 & 95.9884 & 95.0000 & 0.6000 & 0.072 \\ \hline
10.0220 & 0.375 & 95.9888 & 95.0000 & 0.6000 & 0.072 \\ \hline
10.0220 & 0.375 & 95.9884 & 95.0000 & 0.6000 & 0.072 \\ \hline
10.0220 & 0.375 & 95.9884 & 95.0000 & 0.6000 & 0.072 \\ \hline
10.0220 & 0.375 & 95.9884 & 95.0000 & & 0.600 \\ \hline
10.0220 & 0.375 & 95.9884 & 95.0000 & & 0.600 \\ \hline
10.0220 & 0.375 & 95.9884 & 95.0000 & & 0.600 \\ \hline
10.0220 & 0.375 & 95.9900 & 95.0000 & & 0.600 \\ \hline
10.0220 & 0.375 & 95.9900 & 95.0000 & & 0.600 \\ \hline
10.0220 & 0.375 & 95.9900 & 95.0000 & & 0.600 \\ \hline
10.\#\#225 & 0.375 & 95.9900 & 95.0000 & & 0.600 \\ \hline
10.0220 & 0.375 & 95.9900 & 95.0000 & & 0.600 \\ \hline
10.0220 & 0.375 & 95.9900 & 95.000 & & 0.600 \\ \hline
10.0220 & 0.375 & 95.9900 & 95.000 & & 0.600 \\ \hline
10.0220 & 0.375 & 95.9900 & 95.000 & & 0.600 \\ \hline
10.0220 & 0.\#\#\# & 95.9900 & 95.000 & & 0.600 \\ \hline
\end{tabular}
\end{document}
```

### 2.25% Of 15-Nov-2025 On 31-Dec-2015
CF diagram is the same:
- N - no periods
- I%YR - yield (discount)
- PV - price
- PMT - periodic payment
FV - principal repayment

Now N is fraction: 9.874yrs

Bond menu builds in the date calculations to calculate the fractions

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
Type & Settle & Mat & CPN\% & YLD\% & Price \\ \hline
 & Uses to calculate N & PMT & I\%YR & & \\ \hline
 & & & & & \\ \hline
\end{tabular}
\end{document}
```

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/300eaa07056623737e8ded23f4bd6b1aa24d49eae894f9c95b4f9bbebf6d2921.jpg)

## In-Class Exercise 1: 2.25 Of 15-Nov-2025 On 31-Dec-2015

## Ust $2.5\%$ Of 15-Nov-2025, Price On 31-Dec-15 Is 99.84375
```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
 & Type & Settle & Mat & CPN\% & YLD\% & Price & ACCRU \\ \hline
Given & A/A semi & 12.312015 & 11.152025 & 2.25 & & 99.84375 & \\ \hline
Solve For & & & & & 2.268 & & 0.284 \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline
Key & Display & Description \\ \hline
FIN BOND TYPE & & Accesses BOND menu setup \\ \hline
A/A SEMI EXIT & A/A... & Sets payments per year \\ \hline
12.312015 & 12/31/2015 THU & Sets settle (&quot;today&quot;) \\ \hline
11.152025 & 11/15/2025 SAT & Sets maturity \\ \hline
2.25 CPN\% & CPN\%=2.25 & Sets coupon (per yr) \\ \hline
100 CALL & CALL=100.0 & Sets principal (redemption) \\ \hline
99.84375 PRICE & PRICE=99.84375 & Sets price \\ \hline
YIELD & YIELD=2.2676 & Calculates YIELD \\ \hline
\end{tabular}
\end{document}
```

15-nov-15 15-may-16 = 182 days
- leap-yr

15-nov-15 31-dec-15 = 46 days
- $46 / 182 = 0.2527$ half-yrs
- Accrued Int = $\frac{2.25}{2}$; 0.2527 = 0.2843

31-dec-15 15-may-16 = 136 days
- $136 / 182 = 0.74725$ half-yrs
- N is 9.874yrs
- $19 + 0.74725$ half-yrs

## Bond Menu Builds In The Date Calculations To Calculate The Fractions

![](Https://Cdn-Mineru. Openxlab. Org. Cn/Result/2025-11-15/3C07Ddea-Cb45-4Eb2-Bd23-F544B33F30B6/9655610A44606B0Eb7Fc354D4Ee95Ea3C930599B9A12292C6Caf5D75Cd753C7E. Jpg)

## In-Class Exercise 2: 2.25 Of 15-Nov-2025 On 6-Jan-2016

## Ust $2.5\%$ Of 15-Nov-2025, Yield On 6-Jan-2016 Is $2.1764\%$
```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
 & Type & Settle & Mat & CPN\% & YLD\% & Price & ACCRU \\ \hline
Given & A/A semi & 1.062016 & 11.152025 & 2.25 & 2.1764 & & \\ \hline
Solve For & & & & & & 100.6485 & 0.321 \\ \hline
\end{tabular}
\end{document}
```
- Yield down (2.268% 2.1764) so price up (99.84375 100.6485)
Accrued Interest (AI) up because time has passed ( $0.284$ 0.321)

Screen-shot from WSJ shows price 100.6484. Why did erent?
- Secret: price quoted on 6-jan-2016 settled on 7-jan-2016 - UST are $\mathrm{T} + 1$
- Should set Settle = 7-jan-2016,
- But in all our problems, pretend Settle = Quote

### 1.3 Various Bonds & Conventions

## Dates, Fractional Years, And Accrued Int Conventions
- Remember back to exact 4yr vs 73 days shorter (3.8yr)
- Need "Fraction of a year" for both discounting and AI (DP = CP + AI)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/a782c04fb7b69e3b6e029a1b2c55e778a1797223bb3ee91a939328371a6ddf5b.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/6a712c29201578d1796cb7e5573731dc422f8addb036b61e22bf56214b026f9a.jpg)

$$
100.940 = \frac {6.5}{(1 +. 066) ^ {. 8}} + \frac {6.5}{(1 +. 066) ^ {1.8}} + i i i + \frac {100}{(1 +. 066) ^ {3.8}}
$$

$$
\mathbf {A I} = 0.2 \quad 6.50 \quad 1.30100.940 = 9 9.640 + 1.300
$$

## Calendars Are Messy - Choose A "Convention"
"Fraction of a year" should be simple but it's not
- 4yr bond: 73 days seems like 0.20yr (73/365).
- But what if the year is a leap-year? 0.20yr or 0.19945yr $(\frac{73}{366})$?
- UST: is half-year 182.5days? Actual days?
- 15-nov-15 15-may-16 = 182 days
- 15-may-16 15-nov-16 = 184 days

Before computers, calculating dates very difficult (with computers still difficult - I know, I've done it multiple times)
- different markets agreed different "Conventions"
- Rules for how to count days, define year-fractions, calculate AI
- A little arbitrary, but fine as long as everyone knows rules

## Accrued Interest Conventions (Arbitrary Rules)
Bonds have different Accrued Interest conventions (Calendar & Frequency) Natural - Actual / Actual:

$$
A / A = \frac {\text {A c t u a l D a y s S i n c e L a s t C o u p o n}}{\text {D a y s B e t w e e n C o u p o n D a t e s}}
$$

But date calculations messy (before calculators)
- Fun fact: was 1900 a leap year?
- NO, but Excel on PCs thinks yes, and so dates around Jan & Feb 1900 messed up

Many bonds - 30/360 - 30 days per month, 360 per year:

$$
3 0 / 360 = \frac {\# 3 0 - d a y m o n t h s}{180 o r 360}
$$
- Sounds complicated, but easy: 15-feb -> 25-jun is 130: $4^{*}30 + 10$

## Some Bond Conventions (Calendar Or Basis)
- UST: Act/Act or "Actual", Semiannual
US Corporates: 30/360, Semiannual
- French Gov't: Act/Act, Annual

HP calculator handles dates for you

"BOND" menu: Act/Act or 30/360
- "TIME" menu: Act/Act or 30/360 or Act/365 fixed (ignore leap-year)

Oh, and 30E/360 and Act/365fixed

These sound arbitrary, and they (sort-of) are
- But just rules, to go from DP Yield & DP CP+AI

## Dirty Price, Clean Price, And Accrued Interest
So far we have worked mostly with bonds with exact years; e.g. a bond which is exactly four years from maturity. What happens a few days later when it is no longer exactly four years from maturity? We then make a simple modification to arrive at equation (3.3) which discounts by the fraction of the period to the next coupon:

$$
P V = \frac {\text {c o u p}}{(1 + y) ^ {1}} + \frac {\text {c o u p}}{(1 + y) ^ {2}} + i i + \frac {100}{(1 + y) ^ {4}}
$$ where

$\mathbf{PV} =$ Present Value (today's value)

$\mathbf{y} =$ yield or interest rate or discount rate

$\mathbf{x} =$ fraction of period to next coupon payment date

The next coupon of §6.50 is a fraction $x$ of a year away (say 292 days away which would be 0.8 of a year away). We discount by this fraction of a period rather than the whole period.

The equation works perfectly fine, but there is a slight problem which appears when we graph the PV as a function of maturity, shown in the figure above. For a four year bond with a $6.5\%$ coupon and a $6.5\%$ yield and exactly four years to go the PV is $100. As we move into a coupon period and the maturity shortens, however, the PV rises. This is simply because we have earned or accrued part of the coupon, and the next coupon is moving closer. (With only a few days until the next coupon payment we have owned the bond for almost the whole coupon period and thus "earned" almost the whole coupon.) After the coupon is paid, of course, the PV falls back down to $100. This saw-tooth pattern, while correct, obscures the fact that the market has not really changed and in some sense the market value of the bond has not changed; we have simply accrued part of the coupon by owning it for part of the coupon period.

The bond markets adjust for this e ect by the convention of calculating Accrued Interest (AI). This is defined as

AI = Next Coupon Payment * (Fraction of Period from Last Coupon)

The Clean Price of the bond is defined as the PV or Dirty Price less the Accrued Interest:

Clean Price $=$ Dirty Price-AI

The Clean Price for the four year $6.5\%$ bond is shown in figure 3.3; it is a straight line at $100.

The TVM menu on the HP17B will handle only exact coupon periods and so will not work for a bond except when it is an exact number of years to maturity. The BOND menu is specially designed for use with bonds, and has yield / price calculations and accrued interest built in.

NB: the better way to adjust would be to use

PV(Next Coupon Payment) * (Fraction of Period from Last Coupon)
 but that would be more complicated then we need. The bond calculator takes in the clean price, calculates the Accrued Interest, and then does the yield calculation on the actual PV (dirty price). We know that we need to compare yields and not prices, and so a slight "error" in the clean price is fine - the calculator actually uses the dirty price or PV.

We can see the slight error in the example above. The price at exactly four years is $99.658 or below par ($100). As time marches on (with no change in value) we need to move up towards $100. The "correct" CP shows this – it is $99.73 or slightly higher than $99.658. The market CP is $99.64, slightly lower than $99.658. But this is OK because the yield calculation (which is what we care about) uses the dirty price.

## Accrued Interest Conventions
There are various ways that we can calculate the "Fraction of the coupon period". The main methods are:

1. Actual / Actual:

$$
A / A = \frac {\text {A c t u a l D a y s S i n c e L a s t C o u p o n}}{\text {D a y s B e t w e e n C o u p o n D a t e s}}
$$

2.30/360:

$$
3 0 / 360 = \frac {\text {C o u n t E a c h M o n t h 3 0, P l u s D a y s}}{180 \text {o r} 360}
$$

This seems complicated but is acutely pretty simple. Count the number of months and multiply by 30 (30 days each month). Then take the extra days. Ignore the 31st. This means the number of 30/360 days from 15-feb to 25-jun are 130: four months 15-feb -> 15-jun (120 days) plus 10 days 15-jun -> 25-jun. You don't have to worry that February has 28 days (except 29 on leap years) or that May has 31. The end-of-month is a little messy and there is a difference between 30/360 and 30E/360, but nobody ever remembers what the difference is.

3. Actual / 365 fixed:

$$
A / A = \frac {\text {A c t u a l D a y s S i n c e L a s t C o u p o n}}{365} F r e q
$$ which means you don't have to count the number of days in the actual half-year. But this generates odd things at the end of long months - like negative accrued interest. British Gilts used to be A/365F but now A/A. Canadian bonds are A/365F, Japanese JGBs I think are A/365F.

Actual /Actual makes perfect sense and you might think all bonds are done this way. But calculating days is rather messy (or at least was before calculators) and so 30/360 (and even A/365F) are still used. The "Bond" and "Time" menu on the HP calculator do date calculations. The "Bond" recognizes A/A and 30/360 (but not 30E/360 or A/365F). The "Time" menu recognizes A/A, 30/360, A/365F (but not 30E/360)

## Accrued Interest Conventions - Compare Like-With-Like
Price is price & cash is cash - the market price (DP) is what matters AI conventions tell us how to go:
- Dirty Price yield (using PV formula: TVM or BOND menu)
- Dirty Price Clean Price (subtracting AI)

MUST compare like-with-like (A/A vs A/A & 30/360 vs 30/360)
- different calendars say different "fraction of year" different AI, different Clean Price, different yield

A/A DP=105.8086

30/360 DP=105.8086

[ \mathrm{CP} = 99.71823, \mathrm{yld} = 6.60\% ]

[ \mathrm{CP} = 99.7600, \mathrm{yld} = 6.584\% ]
- You pay 105.806 in both cases - same cash (Dirty Price)

EXAMPLE: $6.5\%$ bond, 342 days into year, on 28-feb-2019: Yield $= 6.60\%$

Actual / Actual convention (0.9370 yrs, AI=6.0904), yld=6.60% DP=105.8086 (99.71823+6.0904)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
 & Type & Settle & Mat & CPN\% & YLD\% & Price & ACCRU \\ \hline
Given & A/A Ann & 2.282019 & 3.232022 & 6.5 & 6.60 & & \\ \hline
Solve For & & & & & & 99.71823 & 6.0904 \\ \hline
\end{tabular}
\end{document}
```

30/360 convention (0.9306 yrs, AI=6.0486), DP=105.8086(99.7600+6.0486) yld=6.584%

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
 & Type & Settle & Mat & CPN\% & YLD\% & Price & ACCRU \\ \hline
Given & 360 Ann & 2.282019 & 3.232022 & 6.5 & & 99.7600 & \\ \hline
Solve For & & & & & 6.584 & & 6.0486 \\ \hline
\end{tabular}
\end{document}
```

EXAMPLE: $6.5\%$ bond, 342 days into coupon, on 28-feb-2019: Yield $= 6.60\%$

Actual / Actual convention (0.9370 yrs), DP = 105.8086

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
 & Type & Settle & Mat & CPN\% & YLD\% & Price & ACCRU \\ \hline
Given & A/A Ann & 2.282019 & 3.232022 & 6.5 & 6.60 & & \\ \hline
Solve For & & & & & & 99.71823 & 6.0904 \\ \hline
\end{tabular}
\end{document}
```
- 30/360 convention (0.9306 yrs), CP = 105.8086 - 6.0486 = 99.7600

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
 & Type & Settle & Mat & CPN\% & YLD\% & Price & ACCRU \\ \hline
Given & 360 Ann & 2.282019 & 3.232022 & 6.5 & & 99.7600 & \\ \hline
Solve For & & & & & 6.584 & & 6.0486 \\ \hline
\end{tabular}
\end{document}
```

Here the "difference" in yield is 1.6bp but in fact it is only due to different conventions: $6.600\% \mathrm{A} / \mathrm{A}$ $= 6.584\% 30 / 360$

These di erences are less than the di erences in frequency basis (ab vs sab: $6.60\% \mathrm{ab} = 6.495\% \mathrm{stab}$, 10.5bp)

EXAMPLE: $6.5\%$ bond, 73 days into coupon, on 4-jun-2018: Yield $= 6.60\%$

Actual / Actual convention (0.2 yrs, AI=1.300), DP = 100.9403 (99.6403+1.3000)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
 & Type & Settle & Mat & CPN\% & YLD\% & Price & ACCRU \\ \hline
Given & A/A Ann & 6.042018 & 3.232022 & 6.5 & 6.60 & & \\ \hline
Solve For & & & & & & 99.6403 & 1.30 \\ \hline
Given & 360 Ann & 6.042018 & 3.232022 & 6.5 & & 99.6584 & \\ \hline
Solve For & & & & & 6.595 & & 1.2819 \\ \hline
\end{tabular}
\end{document}
```

A/A and 30/360 prices and yields slightly differ (use Bloomberg "True Yield")

## Comparing Across Frequency - Very Important
For Semi (vs Annual), you get cash sooner (6mth instead of 1yr)
- This truly makes a difference, semi more valuable

Here, need to take yields and convert: $6.60\% \mathrm{ab}$ $6.495\% \mathrm{Sab}$

$$
1.066 = \quad 1 + \frac {. 06495}{2} ^ {2}. 06495 = 2 \quad \overline {{1.066}} - 1
$$

EXAMPLE: Exact 4yr, $6.5\%$ bond (no AI), annual vs semi:

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
 & Type & Settle & Mat & CPN\% & YLD\% & Price & ACCRU \\ \hline
Given & A/A Ann & 3.232018 & 3.232022 & 6.5 & 6.60 & & \\ \hline
Solve For & & & & & & 99.658 & 0 \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
 & Type & Settle & Mat & CPN\% & YLD\% & Price & ACCRU \\ \hline
Given & A/A Semi & 3.232018 & 3.232022 & 6.5 & 6.495 & & \\ \hline
Solve For & & & & & & 100.017 & 0 \\ \hline
\end{tabular}
\end{document}
```

You pay more for semi-annual bond - you should, since get coupon earlier.

My "Practical Guide to Bonds and Swaps" (https://papers.ssrn.com/abstract=1554029) covers the various conventions. Many, however, have changed and are now A/A.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
Security & Coupon Freq & Day-count Basis & Notes \\ \hline
US Treasury Bonds & Semi-annual & Actual/Actual & 1 day settle \\ \hline
US Corporate Bonds & Semi-annual & 30/360 & \\ \hline
UK Gilts & Semi-annual & Actual/Actual & 1 day settle \\ \hline
British Domestic Bonds & Semi-annual & Actual/365 fixed?? & \\ \hline
French OATs &amp; BTANs & Annual & Actual/Actual & Intern&\#$x_{27}$;l settle Euroclear \\ \hline
German Bunds &amp; BOBLS & Annual & Actual/Actual & Intern&\#$x_{27}$;l settle Euroclear \\ \hline
JAPanses JGBs & Semi-annual & Actual/365 fixed (not A/A) & Yield quoted simple \\ \hline
Dutch Gov. bonds (Guilders) & Annual & Actual/Actual & \\ \hline
Canadian Gov. bonds & Semi-annual & Actual/365 fixed (not A/A) & Yield quoted A/A, AI goes neg \\ \hline
Australian Gov. bonds & Semi-annual & Actual/Actual & \\ \hline
Italian Gov. bonds & Semi-annual & Actual/Actual & Yield quoted annual basis, AI has one extra day added \\ \hline
Eurobonds & Annual & Actual/Actual & Prior to 1999 30E/360 \\ \hline
\end{tabular}
\end{document}
```

Sources for conventions:
- http://treasurytoday.com/2001/11/day-count-conventions
- I'm not sure they are right in their definition of A/365(F) and A/365 (that they say is same as A/A). I think maybe there is some confusion between mm conventions (A/360 and A/365) and bond conventions (A/365(F) and A/A)
- They say that Eurobonds have switched from 30E/360 to A/A
- For Canadians: http://iiac.ca/wp-content/uploads/Canadian-Conventions-in-Fixed-Income-Markets-1.1.pdf
- For German Bunds: http://help.derivativepricing.com/1296.htm
- Wide variety: http://help.derivativepricing.com/1571.htm

### 1.4 Periodic Payments & Compounding

## Yield: Always "Per Year"
Very convenient to express price today vs tomorrow as yield: $1 / 1 + y$
- So far we haven't said if "tomorrow" is next day or next year

Almost always express yield "per year": $\mathsf{PV} = \frac{\mathsf{FV}}{(1 + \mathsf{y})^{\mathsf{n}}}$ with $\mathsf{n} = \mathsf{no}$ yrs.

Example: 4yr $6.5\%$ coupon bond, $\mathbf{P} = 99.658$:

$$
9 9.658 = \frac {6.5}{(1 + y _ {a b})} + \frac {6.5}{(1 + y _ {a b}) ^ {2}} + \frac {6.5}{(1 + y _ {a b}) ^ {3}} + \frac {6.5}{(1 + y _ {a b}) ^ {4}} + \frac {100}{(1 + y _ {a b}) ^ {4}}
$$

TVM does this automatically, gives Yield (Interest) per yr (I%YR)
- Make sure set right: <Blue> <MAIN> <FIN> <TVM> <1 P/YR> <END>

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 4 & & -99.658 & 6.5 & 100 \\ \hline
Solve For & & 6.6 & & & \\ \hline
\end{tabular}
\end{document}
```

## Periodic Cfs (Not 1 Per Year)
Example: 4yr $6.5\%$ coupon bond, $\mathbf{P} = 99.658 - 6.5\% /\mathrm{yr}$

$$
9 9.658 = \frac {6.5}{(1 + y _ {a b})} + \frac {6.5}{(1 + y _ {a b}) ^ {2}} + \frac {6.5}{(1 + y _ {a b}) ^ {3}} + \frac {6.5}{(1 + y _ {a b}) ^ {4}} + \frac {100}{(1 + y _ {a b}) ^ {4}}
$$

But what if pays every 6mths (like UST)? Get $3.25 every half-year.
- Seems natural to use annual rate, for "number of years" (may be 1/2 year):

$$
9 9.658 = \frac {3.25}{\left(1 + y _ {a b}\right) ^ {1 / 2}} + \frac {3.25}{\left(1 + y _ {a b}\right) ^ {1}} + \frac {3.25}{\left(1 + y _ {a b}\right) ^ {1.5}} + i i j + \frac {3.25}{\left(1 + y _ {a b}\right) ^ {4}} + \frac {100}{\left(1 + y _ {a b}\right) ^ {4}}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/57c11321c60c3447c7e44059a93746af0c57d8406983ebe5fc5f8819e4786326.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/fc88d6a8ef1f803ba70dcf36d0e0577feffe5d4701b4f8d320345dae901900a5.jpg)

## But No - Periodic Cfs - Discount At Same Freq As Payment
Example: 4yr semi-annual $6.5\%$ coupon bond, $\mathrm{P} = 99.658 - 3.25\% / 6\mathrm{mth}$
- Seems natural to use annual rate, discount "number of years":

$$
9 9.658 = \frac {3.25}{\left(1 + y _ {a b}\right) ^ {1 / 2}} + \frac {3.25}{\left(1 + y _ {a b}\right) ^ {1}} + \frac {3.25}{\left(1 + y _ {a b}\right) ^ {1.5}} + i i i + \frac {3.25}{\left(1 + y _ {a b}\right) ^ {4}} + \frac {100}{\left(1 + y _ {a b}\right) ^ {4}}
$$

But that's far too simple. Instead, discount at same freq as payment:

$$
9 9.658 = \frac {3.25}{\left(1 + y _ {\mathrm {s a b}} / 2\right) ^ {1}} + \frac {3.25}{\left(1 + y _ {\mathrm {s a b}} / 2\right) ^ {2}} + \frac {3.25}{\left(1 + y _ {\mathrm {s a b}} / 2\right) ^ {3}} + i i + \frac {3.25}{\left(1 + y _ {\mathrm {s a b}} / 2\right) ^ {8}} + \frac {100}{\left(1 + y _ {\mathrm {s a b}} / 2\right) ^ {8}}
$$

Discount at a 6-mth (half-yr) rate, $y_{\mathrm{stab}} / 2$

1st payment in 1 half-yr, $\frac{1}{1 + \text{ysab}}$
- 2nd payment in 2 half-yrs, $1 / (1 + \text{ysab} / 2)^2$
- etc up to 8th payment (4 yrs)

Why $y_{\text{stab}} / 2$? Report "annual" rate
- Discount at half-yr rate $y_{\text{stab}} / 2$, but quote "annual" $y_{\text{stab}} = 2$ i $y_{\text{stab}} / 2$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/5b795a37c211c495f6c899acf2450df0bb3c0b076fe55d04c5a440ea25b30a9e.jpg)

## Periodic Cfs - 4 Yr Bond Example
Example: 4yr semi-annual $6.5\%$ coupon bond, $\mathbf{P} = 99.658 - 3.25\% / 6\mathrm{mth}$

$$
9 9.658 = \frac {3.25}{(1 + y _ {\mathrm {s a b}} / 2) ^ {1}} + \frac {3.25}{(1 + y _ {\mathrm {s a b}} / 2) ^ {2}} + \frac {3.25}{(1 + y _ {\mathrm {s a b}} / 2) ^ {3}} + i i i + \frac {3.25}{(1 + y _ {\mathrm {s a b}} / 2) ^ {8}} + \frac {100}{(1 + y _ {\mathrm {s a b}} / 2) ^ {8}}
$$

Annual, 4yrs, $6.5\%/\mathrm{yr}$: <Blue> <MAIN> <FIN> <TVM> <1 P/YR>

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 4 & & -99.658 & 6.5 & 100 \\ \hline
Solve For & & 6.6 & & & \\ \hline
Semi-annual, 4yrs, 3.25\%/yr: &lt;1 P/YR&gt; & & & & & \\ \hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 8 & & -99.658 & 3.25 & 100 \\ \hline
Solve For & & 3.299 & & & \\ \hline
Semi-annual, 4yrs, 3.25\%/yr: &lt;2 P/YR&gt; & & & & & \\ \hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 8 & & -99.658 & 3.25 & 100 \\ \hline
Solve For & & 6.599 & & & \\ \hline
\end{tabular}
\end{document}
```

$< 2\mathrm{P} / \mathrm{YR} >$ only adjusts the I%YR

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/0788d897113d01401d1e40b8ad059cc3ffefefb8dc6491bfc6a1751cf1f176dc.jpg)

## Don'T Be Fooled: 4Yr Annual = 4Yr Semi-Annual
Look the 2 bonds, same price but different coupon

4yr semi bond more valuable
- Get same total CF, but get CF sooner

Annual, 4yrs, $6.5\%/\mathrm{yr}$: <1 P/YR>

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 4 & & -99.658 & 6.5 & 100 \\ \hline
Solve For & & 6.6 & & & \\ \hline
\end{tabular}
\end{document}
```

$y_{\text{ab}} = 6.6\%$ - annual discount rate (yield)

Semi-annual, 4yrs, $3.25\%/\mathrm{yr}$: < 2 P/YR>

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 8 & & -99.658 & 3.25 & 100 \\ \hline
Solve For & & 6.599 & & & \\ \hline
\end{tabular}
\end{document}
```

$y_{\mathrm{Sab}} = 6.599\%$ - semi-annual discount rate x 2

$y_{ab}$ & $y_{sab}$ look the same, but fundamentally different.
- Semi-annual bond more valuable: pay same ($99.658) but get CFs sooner

Can only compare when convert from $y_{\text{stab}}$ to $y_{\text{ab}}$ (or vice-versa)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/5ab4a9cc32f683189cfd7877babd2f5e2b45c2b1eff25a2ea82e6bb0518dddfb.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/e8c51ada53e3fc780d5ee932a62600306e078798ac7e00e2c74f32e690ace07c.jpg)

## Complication: Compounding!
Among the most difficult things you'll learn - compounding is confusing

You can quote the yield on various bases:

Annual: (aka "ab") annual rate compounded by years

Semi-annual: (aka "sab") semi-annual rate compounded by half-years

$$
$ 100 \text {i n} 1 \text {y r}: \quad \begin{array}{c c} \text {a n n u a l} & \text {semi-annual} \\ 9 2.59 = \frac {100}{(1 +. 0 8)} & 9 2.59 = \frac {100}{(1 +. 07846 / 2) ^ {2}} \end{array}
$$

CFs same (that's what we buy & sell).
- "Yield" is convenient way to write PV $< ->$ FV relations
- Compounding and "basis" is code to tell you how to write PV relation

AND, everyone likes to see an "annual" rate, so write

$$
P V = \frac {F V}{(1 + y _ {a b}) ^ {Y r}} P V = \frac {F V}{(1 + y _ {s a b} / 2) ^ {2} Y r}
$$

This gives $y_{\mathrm{stab}} = 0.07846 = 2^* \cdot 0.03923$

## Some Tips On Compounding
The most common "bases" or compounding frequencies are:

1. Annual or ab or annual bond: PV = FV (1 + yab)Yr
- European gov't bonds, some corporates

2. Semi-annual or sab or semi-annual bond: PV = FV/(1 + ySab/2)² Yr
USgov'tandcorporatebonds

3. Monthly or mb or monthly bond: PV = FV (1 + ymb/12)12 Yr
- mortgage bonds

NEVER, ever quote a rate without saying what basis (ab, sab)
- And yell at me when I do that (which I will)

ALWAYS compare yields of same basis (ab vs ab, sab vs sab)

## Converting Bases
Remember, basis or compounding is just a way to quote the yield
- CFs are what matter

Always compare same basis
- ALWAYS need to convert from ab to sab or vice-versa

Start with fundamental discounting relation:

$$
(1 + y _ {a b}) = (1 + y _ {s a b} / 2) ^ {2}
$$

$$ y _ {a b} = (1 + y _ {s a b} / 2) ^ {2} - 1 \quad y _ {s a b} = 2; \quad \overline {{1 + y _ {a b}}} - 1
$$

## Compounding: In-Class Exercise 1
Annual, 4yrs, $6.5\%/\mathrm{yr}$: <1 P/YR>

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 4 & & -99.658 & 6.5 & 100 \\ \hline
Solve For & & 6.6 & & & \\ \hline
\end{tabular}
\end{document}
```

Semi-annual, 4yrs, $3.25\%/\mathrm{yr}$: < 2 P/YR>

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 8 & & -99.658 & 3.25 & 100 \\ \hline
Solve For & & 6.599 & & & \\ \hline
\end{tabular}
\end{document}
```

But $y_{ab}$ & $y_{\text{stab}}$ fundamentally different
- Semi-annual bond more valuable: pay same ($99.658) but get CFs sooner

Need to convert between $y_{ab}$ & $y_{sab}$

$$ y _ {a b} = (1 + y _ {s a b} / 2) ^ {2} - 1
$$

$$ y _ {s a b} = 2 _ {i} \quad \overline {{1 + y _ {a b}}} - 1
$$

Convert to $y_{\text{stab}}$ from $y_{\text{ab}} = 6.60\%$:

$$ y _ {s a b} = 2; \quad \overline {{1 +. 0660}} - 1 =. 0649
$$

6.60%ab lower when sab (6.49%sab)

Convert to $y_{\mathrm{ab}}$ from $y_{\mathrm{Sab}} = 6.599\%$:

$$ y _ {a b} = (1 +. 06599 / 2) ^ {2} - 1 =. 06708
$$

6.599%sab higher when ab (6.708%ab)

Now we see that, indeed, semi-annual bond is higher yield:
- Annual bond: 6.60%ab or 6.49%stab
- Semi-annual: $6.708\%$ ab or $6.599\%$ Sab

Always compare bonds on same basis

## Compounding: In-Class Exercise 2
Today's CF (PV) = $89,2 years CF (FV) = $100.

$$
\begin{array}{c c} \text {a n n u a l} & \text {semi-annual} \\ \mathrm {P V} = \frac {\mathrm {F V}}{(1 + \mathrm {y} _ {\mathrm {a b}}) ^ {\mathrm {Y r}}} & \mathrm {P V} = \frac {\mathrm {F V}}{(1 + \mathrm {y} _ {\mathrm {s a b}} / 2) ^ {2} \mathrm {Y r}} \end{array}
$$

1. What is $y_{ab}$? $y_{ab} = 0.06$

$$
P V = \frac {F V}{(1 + y _ {a b}) ^ {Y r}} \quad 8 9 = \frac {100}{(1 + y _ {a b}) ^ {2}} \quad (1 + y _ {a b}) = \frac {100}{8 9}
$$

2. What is $y_{\text{stab}}$? $y_{\text{stab}} = 0.05912(y_{\text{stab}} / 2 = 0.029562)$

$$
P V = \frac {F V}{(1 + y _ {s a b} / 2) ^ {2} Y r} \quad 8 9 = \frac {100}{(1 + y _ {s a b} / 2) ^ {4}} \quad (1 + y _ {s a b} / 2) = \frac {100}{8 9}
$$

## Compounding: In-Class Exercise 3
$$
(1 + y _ {a b}) = (1 + y _ {s a b} / 2) ^ {2}
$$

$$
\mathcal {Y} _ {\mathrm {a b}} = (1 + \mathcal {Y} _ {\mathrm {s a b}} / 2) ^ {2} - 1 \quad \mathcal {Y} _ {\mathrm {s a b}} = 2; \quad \overline {{1 + \mathcal {Y} _ {\mathrm {a b}}}} - 1
$$

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline yab & ysab \\ \hline
0.08 & 0.07846 \\ \hline
0.05 & 0.04939 \\ \hline
0.0816 & 0.08 \\ \hline
0.050625 & 0.05 \\ \hline
0.1025 & 0.10 \\ \hline
\end{tabular}
\end{document}
```
- ALWAYS compare like-with-like. $8\%$ ab is not $8\%$ sab
- And it is non-linear: Doubling $y_{\mathrm{sb}}$ slightly more than doubles $y_{\mathrm{ab}}$

## 2 Real & Nominal Rates

### 2.1 Unpacking The Budget Line Part Ii: Real & Nominal Rates Contents

## Unpacking The Budget Line Part Ii: Real & Nominal Rates
Budget line - Left Side (consumption) instead of Right (money income)
- Start with 2 periods linked by savings
- Eliminate s and write in terms of PV
Or write in terms of FV

$$
\mathsf {p} _ {1} \mathsf {c} _ {1} = \mathsf {m} _ {1} - \mathsf {s}; \mathsf {p} _ {2} \mathsf {c} _ {2} = \mathsf {m} _ {2} + (1 + \mathsf {y}) \mathsf {s}
$$

$$
\mathsf {p} _ {1} \mathsf {c} _ {1} + \mathsf {p} _ {2} \mathsf {c} _ {2} / (1 + \mathsf {y}) = \mathsf {m} _ {1} + \mathsf {m} _ {2} / (1 + \mathsf {y})
$$

$$
\mathsf {p} _ {1} \mathsf {c} _ {1} (1 + \mathbf {y}) + \mathsf {p} _ {2} \mathsf {c} _ {2} = \mathsf {m} _ {1} (1 + \mathbf {y}) + \mathsf {m} _ {2}
$$

Budget line same either way
- In FV form income higher, but so are "prices"

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/fcc1aa4f63acb572f88d8f74ded3e9ff2f53d107e79bc1d95bdd1cfbb1e1f5e5.jpg)

## Left Hand Side Gives Real & Nominal Rates
$$
L H S: p _ {1} c _ {1} + \frac {p _ {2}}{1 + y} c _ {2}
$$

Consumption (today vs tomorrow) depends on the relative price: $\frac{p_1}{p_1}\frac{1}{1 + y}$

We know $\frac{\mathbf{P}_2}{\mathbf{P}_1}$ from Micro I.
- Let's write $p_2 = p_1 + (1 + \alpha)$ (inflation)

Now relative price is: $\frac{\mathbf{p}_2}{\mathbf{p}_1}\frac{1}{1 + \mathbf{y}} = \frac{1 + }{1 + \mathbf{y}}$
- Budget line is now: $p_1c_1 + p_1c_2\frac{1 + }{1 + y} = m_1 + m_2\frac{1}{1 + y}$
- Define "real rate" $\frac{1}{1 + r} = \frac{1 + 1}{1 + y}$: $p_1c_1 + p_1c_2\frac{1}{1 + r} = m_1 + m_2\frac{1}{1 + y}$
- For income (PV) look at nominal rate $1 + y$: PV is $m_1 + m_2 \frac{1}{1 + y}$.
- For consumption, real rate $1 + r = \frac{1 + y}{1 + }$: Consumption is $\mathsf{p}_1\mathsf{c}_1 + \mathsf{p}_1\mathsf{c}_2\frac{1}{1 + r}$

## 1. Unpacking The Budget Constraint: Nominal & Real Rates
- This budget constraint tells us everything we need to know about discounting, PV, FV, nominal rates, real rates. In fact everything we need to know about TVM (for certain - known - CFs).
- But we need to unpack this budget constraint, and think about it a little carefully.
- Once we do that we will then use the ideas of discounting, PV, FV, etc. to examine every aspect of modern finance.
- We will talk about bonds and discounting over multiple periods. About compounding and variable periods (rates per month, half-year, year). About nominal rates vs real rates. But the ideas all come back to this simple picture and simple budget line. (Have I ever said how wonderful budget lines are? I used to think they were really boring, but I've come to appreciate that a good part of economics is just thinking carefully about budget lines.)
- Nominal Rates: By "Nominal" we mean "money". We've been looking at money income or nominal income, the dollar PV: $\mathsf{m}_1 + \mathsf{m}_2 / (1 + \mathsf{y})$. For this we have been using the rate $\mathsf{y}$ which we call the nominal interest rate, the rate that applies to dollars.
- The nominal rate is what you see quoted in the papers. As of 22-feb-18, the nominal rate on 10-year UST is 2.92%. Roughly means that $100 today grows to $102.92 in one year, or 100 = 102.92/1+0.0292. (We will go through exactly what this means shortly - semiannually-compounded bond rate for (approximately) 10-year bond - 2.75% of 15-feb-18, QD=22-feb, SD=23-feb, P=98-18+, y=2.9152%)
- Much of the course we will only be looking at nominal income and nominal rates
- But let's look at the LHS, look at consumption and the relative price of consumption today vs tomorrow. Period-2 has the term $1 / (1 + y)$, just like the money income side. But the actual (relative) price of period-2 consumption is

$$
\frac {p _ {2}}{p _ {1}} \frac {1}{(1 + y)}
$$

The extra $\frac{\mathfrak{p}^2}{\mathfrak{p}^1}$ comes in because we are talking about real (as opposed to nominal) quantities - the real number of loaves of bread and bottles of wine. For the usual picture, where we are talking about all goods today we have just $\frac{\mathfrak{p}^2}{\mathfrak{p}^1}$ but now we have the extra term $1 / (1 + y)$ which tells us how we transform between today and tomorrow.
- We will almost always want to think about inflation which is the change in prices from today to tomorrow: $p_2 = p_1$ (1 + )
- The expression now becomes

$$
\frac {1 +}{1 + y} = \frac {1}{1 + r}
$$ and this gives us the real interest rate: $(1 + r) = (1 + y) / (1 + \cdot)$
- When we are talking about consumption and real goods we always need to think about the real rate $r$ rather than the nominal rate $y$.

## Real, Nominal, Expected Inflation
The relation between real and nominal discount rate is due to expected inflation
- UST (what we discussed above):
- CF nominal, not adjusted for inflation
Discount Rate (yield) is nominal
- TIPS (we will discuss more in a few min):
- CF real, adjusted for inflation
Discount Rate (yield) is real

difference between these is the (expected) inflation rate y nominal discount rate

$$
1 + \mathbf {y} = (1 + r) _ {i} (1 +)
$$ real discount rate expected inflation

For most purposes (when inflation is low, around $5\%$ or less)
 y r +

## Real, Nominal, Inflation Today
From the market 24 March 2023, UST & TIPS:

UST y = 3.358% (0.03358)

TIPS r = 1.132% (0.01132)

$$
\begin{array}{c c} \mathbf {y} & \mathbf {r} + \end{array}
$$

$$
3.36 \% \quad 1.13 \% +
$$

Expected inflation $= 2.23\%$
- Market expects moderate inflation ( $\sim 2.23\%$ ) over next ten years!

What does those negative real rates (2020-2022) mean?
- Investors have low price on consumption today: $p_1c_1 + p_1c_2\frac{1}{1 + r} = m_1 + m_2\frac{1}{1 + y}$ means $r$ as if $p_{tomorrow} \& p_{today}$
- During pandemic, severe concerns about opportunities and consumption tomorrow

## Inflation, Cfs, And Discounting
We mostly look at nominal CFs in this course
In Corporate Finance (project finance), CBA often consider real CFs
Incredibly important - Two ways to treat inflation, for CFs & Discounting

1. Real CFs (today's dollars), real discount rate
2. Inflation-adjusted CFs (nominal), nominal discount rate

Real vs nominal cash CFs

1. Real: forecast sales, costs, benefits, etc. in today's dollars (no inflation)
2. Nominal: CFs grow: CF nominal $t = CF \, real_{t} \mid (1 + t)^{t}$

Real vs. nominal rates

$$
1 + \text {n o m i n a l} = (1 + \text {r e a l}) \mid (1 + \exp \text {i n f l})
$$

$$
(1 + \mathcal {Y}) = (1 + \mathcal {r}) _ {\mid} (1 +)
$$

I somewhat prefer (1): real CFs and real rate
- Don't have to think as hard about inflation - Good and bad!

## Inflation - Keep "Real With Real", "Nominal With Nominal"

![](Https://Cdn-Mineru. Openxlab. Org. Cn/Result/2025-11-15/3C07Ddea-Cb45-4Eb2-Bd23-F544B33F30B6/5531B7977F67A54A96C92B09861742D88Da72D21Caf2B48D1F22D23150061003. Jpg)

Real CF, Real Discounting

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/6b4a7961718adcc071770153a1cc548fa353e279fce265cef33fd6ab991741a2.jpg)

Nominal CF, Nominal Discounting

Nominal rate: $8\%$
Expected inflation: $5\%$

$$
(1 + y) = (1 + r) _ {i} (1 + \quad) \quad (1.08) = (1.02857) _ {i} (1.05)
$$

Real: PV = 100/1.02857 + 100/(1.02857)² = 191.744

Nominal: PV = 105 / (1.08) + 110.25 / (1.08)^2 = 191.744

Except - when some CFs grow, others do not - like depreciation
- Must use nominal CFs, discount at nominal rates
Real may be useful for "quick-and-dirty"

### 2.2 Tips - Treasury Inflation Protected Securities

## Quotes - Now Tips
Let's look at some bond market prices from Friday 5-oct-2018

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
Friday 5-oct-2018 & Coupon & Maturity & Price & Yield \\ \hline
10-yr US Treasury & 2.875\% & 15-aug-28 & 97.0078 & 3.232\% \\ \hline
10-yr US TIPS & 0.75\% & 15-jul-28 & 97-6 & 1.054\% \\ \hline
10-yr Bund (German) & & & & 0.57\% \\ \hline
\end{tabular}
\end{document}
```

## Tips:
- Treasury Inflation Protected Securities
- CFs are "real" or inflation-protected CFs

From the market 5-oct-18, UST & TIPS:

$$
\mathbf{UST}\mathbf{y} = 3.23\% \left(\mathbf{0.0323}\right)
$$

$$
\mathbf{TIPS} \mathrm{r} = 1.05 \% (0.0105)
$$

$$
\begin{array}{c c} \mathbf {y} & \mathbf {r} + \end{array}
$$

$$
3.23 \% \quad 1.05 \% +
$$

Expected inflation $= 2.18\%$

Note that the yield quoted in the table is calculated from the HP 17 BOND menu. The TVM gives approximately the same answer, but the 3-decimal yield is from the bond menu:

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 10 & & -97.0078 & 2.875 & 100 \\ \hline
Solve For & & 3.2299 & & & \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
 & Type & Settle & Mat & CPN\% & YLD\% & Price & ACCRU \\ \hline
Given & A/A Ann & 10.092018 & 8.152028 & 2.875 & & 97.0078 & \\ \hline
Solve For & & & & & 2.2318 & & 0.4297 \\ \hline
\end{tabular}
\end{document}
```

## Tips (Treasury Inflation-Protected Security) - Real Cfs
How do we make "real CFs"? What do we mean by "real"?
- Coupon & principal "inflated" by CPI (Consumer Price Index)
- Actual CF rises with inflation: buy same goods with higher CF
- Makes CFs "real" - inflation-adjusted - in this case real $0.75\%$
- The yield (DR) (based on the 0.75 coupon) is real rate

The term $\frac{\mathrm{CPI}_t}{\mathrm{CPI}_0}$ is the (compounded) inflation from time zero to $t$ - the cash paid out is inflation-adjusted (real) Quote - what does 97-6 mean?
- Treasury market old-fashioned
- Prices quoted in 32nds: $97 - 6 = 97 + 6 / 32 = 97.1875$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/352ff8e76ea970df62642c7071f92c31f73349a3023de1614875ddfbf9a79a37.jpg)

## Tips - Real Discount Factor
Use TVM to calculate real discount rate: Market Price + CF DR

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 10 & & -97.1875 & 0.75 & 100 \\ \hline
Solve For & & 1.05 & & & \\ \hline
\end{tabular}
\end{document}
```

The CFs are real CFs so the Discount Rate is real

Real rate of $1.05\%$ is somewhat low - but higher than for years

We now have both a nominal DR (UST) and real DR (TIPS)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/d8c94eb0211110406b90a04d613d9e152aa66183953dd720390114e24b5e2c1f.jpg)

### 2.3 More About Real & Nominal

## Nominal & Real Rates
Real Yield (promised) & Real Return (earned) important macro variables
- Remember budget Line: ${\mathbf{p}}_{1}{\mathbf{c}}_{1} + {\mathbf{p}}_{1}{\mathbf{c}}_{2}\frac{1}{1 + \mathbf{r}} = {\mathbf{m}}_{1} + {\mathbf{m}}_{2}\frac{1}{1 + \mathbf{y}}$
Real rate r matters for consumption decisions - today vs tomorrow

Nominal yield (y) easy to see, everyone pays attention

Real yield (r) harder to see, matters more for decisions about consumption vs savings

Governments have kept real yield r low since 2008

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
 & 9/2016 & 3/2019 & 4/2020 & 4/2021 & 3/2022 & 3/2023 \\ \hline
10yr UST & 1.56\% & 2.39\% & 0.62\% & 1.71\% & 2.32\% & 3.36\% \\ \hline
10yr TIPS & 0.03\% & 0.55\% & -0.46\% & -0.65\% & -0.53\% & 1.13\% \\ \hline
Implied Infl & 1.5\% & 1.8\% & 1.1\% & 2.4\% & 2.9\% & 2.2\% \\ \hline
\end{tabular}
\end{document}
```

Historical data:

Friday 5-oct-2018

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
 & Coupon & Maturity & Price & Yield \\ \hline
5-yr US Treasury & 2.500\% & 15-aug-23 & 97.4609 & 3.067 \\ \hline
5-yr US TIPS & 0.625\% & 15-apr-23 & 98-11 & 0.999 \\ \hline
\end{tabular}
\end{document}
```

Tuesday 27-sep-16

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
 & Coupon & Maturity & Price & Yield \\ \hline
5-yr US Treasury & 2.125\% & 15-aug-21 & 104.5859 & 1.156 \\ \hline
5-yr US TIPS & 0.125\% & 15-apr-21 & 102-01 & -0.318 \\ \hline
\end{tabular}
\end{document}
```

Friday 28 sep-2014

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
 & Coupon & Maturity & Price & Yield \\ \hline
5-yr US Treasury & 1.625\% & 31-aug-19 & 99.3281 & 1.768 \\ \hline
5-yr US TIPS & 0.125\% & 15-apr-19 & 100-10 & 0.06\% \\ \hline
\end{tabular}
\end{document}
```

Friday 5-oct-2018

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
 & Coupon & Maturity & Price & Yield \\ \hline
10-yr US Treasury & 2.875\% & 15-aug-28 & 97.0078 & 3.232\% \\ \hline
10-yr US TIPS & 0.75\% & 15-jul-28 & 97-6 & 1.054\% \\ \hline
10-yr Bund (German) & & & & 0.57\% \\ \hline
\end{tabular}
\end{document}
```

Tuesday 27 sep-16

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
 & Coupon & Maturity & Price & Yield \\ \hline
10-yr US Treasury & 1.50\% & 15-aug-26 & 99.5234 & 1.55\% \\ \hline
10-yr US TIPS & 0.125\% & 15-jul-26 & 101-05 & 0.01\% \\ \hline
10-yr Bund (German) & & & & -0.15\% \\ \hline
\end{tabular}
\end{document}
```

Friday 28 sep-2014

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
 & Coupon & Maturity & Price & Yield \\ \hline
10-yr US Treasury & 2.375\% & 15-aug-24 & 98.8906 & 2.502\% \\ \hline
10-yr US TIPS & 0.125\% & 15-jul-24 & 96-08 & 0.518\% \\ \hline
\end{tabular}
\end{document}
```

## Real Returns Consistently Negative 10Yrs
Calculate 1yr Real Return - Since 2008, consistently negative - I think bad news

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/d8b303f34b267cf8ee05c85e7248813e467f03d55b6eb6e0eefe001fe41a777d.jpg)

The real return: 1yr T-Bill minus 1yr CPI inflation. Should be Lagged T-Bill yield less current CPI inflation to calculate return, so this graph is not absolutely correct

From FRED, the St Louis Federal Reserve Economic Data service. Really valuable

## Real Returns Consistently Negative 10Yrs
Calculate 1yr Real Return - Since 2008, consistently negative - I think bad news

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/a5afa85d12dcedc86a9a8069e87d47e568fda20691a050b7a43f11df0ecb5424.jpg)

## Why Do Investors Buy Nominal Vs Index-Linked?
Let's look at some bond market prices from Friday 5-oct-2018

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
 & Coupon & Maturity & Price & Yield \\ \hline
10-yr US Treasury & 2.875\% & 15-aug-28 & 97.0078 & 3.232\% \\ \hline
10-yr US TIPS & 0.75\% & 15-jul-28 & 97-6 & 1.054\% \\ \hline
\end{tabular}
\end{document}
```

## Expected Inflation $= 2.18\% = 3.23\% -1.05\%$
What happens if expected inflation 5.18%?

UST $3.23\%$ 6.23% (Why?)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 10 & 6.23 & & 2.875 & 100 \\ \hline
Solve For & & & -75.75 & & \\ \hline
\end{tabular}
\end{document}
```
- Lose over $20
- Inflation is dangerous
TIPS protect against rising inflation
- Coupon up with inflation, price does not fall

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/42cc998093484075202ed8512544a8187aeb40c53ea35e105b2e47db2d599d0c.jpg)

Example of inflation e ect

A few notes on this:

1. I am asking what happens when expected inflation up by 3 percentage points, from $2.18\%$ to $5.18\%$.
2. I assume that real rates don't change. It could be that real rates go down, and we will see that real rates can go negative.
3. But generally when inflation goes up, so do nominal rates. And nominal bonds lose big

## Option On Conventional Vs Linkers - Nominal Vs Real
UK, 1981, one of first developed nations with inflation-protected bonds
- During 1970s, inflation was high and investors lost wealth

Story from my time in the markets:
- In 1992, British insurance company o ered customers choice for pension: fixed nominal pension, or fixed real pension

They needed to protect against market movements - We sold them an Option
- In case big changes in inflation expectations, people chose one vs other

Came to us (SG Warburg) to protect against movements in nominal vs real yields
- They o ered pensions in spring / early summer
Customers could decide in November
- September: French Mastricht referendum, potential to upset European integration plans, change market expectations (nominal vs real yields)

Referendum pushed UK out of currency agreement (Soros made $1bn)
- I had a wild time managing option
- I learned a lot about real vs nominal yields

### 2.4 Changes 2016-2023

## Remember - Change From 2016 To 2023
Nominal bonds & yields (prices from Treasury Direct, yields A/A, sab)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & & Coupon & Maturity & Price & Yield \\ \hline
10-yr US Treasury & 27 sep-16 & 1.50\% & 15-aug-26 & 99.46875 & 1.558\% \\ \hline
10-yr US Treasury & 28-mar-19 & 2.625\% & 15-feb-29 & 102.0625 & 2.389\% \\ \hline
10-yr US Treasury & 3-apr-20 & 1.50\% & 15 feb-30 & 108.4375 & 0.617\% \\ \hline
10-yr US Treasury & 2-apr-21 & 1.125\% & 15 feb-31 & 94.6875 & 1.712\% \\ \hline
10-yr US Treasury & 31-mar-22 & 1.875\% & 15 feb-32 & 96.078 & 2.321\% \\ \hline
10-yr US Treasury & 24-mar-23 & 3.50\% & 15 feb-33 & 101.1875 & 3.358\% \\ \hline
\end{tabular}
\end{document}
```

Remember from before, what we said about yields:
- Yield cash today will grow to more tomorrow (10 yrs in this case) OR cash tomorrow worth less today
- Apr 2019: Economy growing pretty robustly, future growth prospects good
- Apr 2020: Pandemic, panic about future & future opportunities, yield
- Mar 2022 & 2023: Recovery, but also inflation (next lecture), yields

Real bonds & real yields (TIPS - prices from Treasury Direct)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & & Coupon & Maturity & Price & Yield \\ \hline
10-yr TIPS & 27-sep-16 & 0.125\% & 15-jul-26 & 100.9375 & 0.029\% \\ \hline
10-yr TIPS & 28-mar-19 & 0.875 & 15-jan-29 & 103.0625 & 0.554\% \\ \hline
10-yr TIPS & 3-apr-20 & 0.125\% & 15-jan-30 & 105.84375 & -0.458 \\ \hline
10-yr TIPS & 2-apr-21 & 0.125\% & 15-jan-31 & 107.875 & -0.653\% \\ \hline
10-yr TIPS & 31-mar-22 & 0.125\% & 15-jan-32 & 106.96875 & -0.533\% \\ \hline
10-yr TIPS & 24-mar-23 & 1.125\% & 15-jan-33 & 99.9375 & 1.132\% \\ \hline
\end{tabular}
\end{document}
```

With real yields, we can say more, but need to calculate Expected Inflation:
 nominaly real $\mathbf{r} +$ expected

Sep-2016:

1.558 0.029 + 1.529

Nominal & real yields, expected inflation

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
 & Nom Yld & Real Yld & Exp Infl \\ \hline
27-sep-16 & 1.558\% & 0.029\% & 1.529\% \\ \hline
28-mar-19 & 2.389\% & 0.554\% & 1.835\% \\ \hline
3-apr-20 & 0.617\% & -0.458 & 1.075\% \\ \hline
2-apr-21 & 1.712\% & -0.653\% & 2.365\% \\ \hline
31-mar-22 & 2.321\% & -0.533\% & 2.854\% \\ \hline
24-mar-23 & 3.358\% & 1.132\% & 2.226\% \\ \hline
\end{tabular}
\end{document}
```

Now we can say more:
- Apr 2019: Economy growing pretty robustly, future growth prospects good
- Real yield up, probably due to better future growth prospects
- Expansion of budget set
- Apr 2020: Pandemic, panic about future & future growth, real yield
- Contraction of budget set - poor future growth prospects
- Apr-21 & Mar-22: Real yield still low (future growth prospects still poor?) Inflation, nominal yields
· Mar-23: Real yield much higher – future growth prospects? Inflation, nominal yields

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
 & & Coupon & Maturity & Price & Approx Yield & Yield \\ \hline
10-yr US Treasury & 27 sep-16 & 1.50\% & 15-aug-26 & 99.5234 & 1.55\% & \\ \hline
10-yr US Treasury & 28-mar-19 & 2.625\% & 15-feb-29 & 102.0938 & 2.39\% & \\ \hline
10-yr US Treasury & 3-apr-20 & 1.50\% & 15 feb-30 & 108.4375 & 0.63\% & 0.617\% \\ \hline
10-yr US Treasury & 2-apr-21 & 1.125\% & 15 feb-31 & 94.625 & 1.71\% & 1.719\% \\ \hline
10-yr US Treasury & 31-mar-22 & 1.875\% & 15 feb-32 & 96.078 & 2.32\% & 2.321\% \\ \hline
10-yr US Treasury & 24-mar-23 & 3.50\% & 15 feb-33 & 101.015625 & 3.38\% & 3.378 \\ \hline
\end{tabular}
\end{document}
```

Re-done with prices updated from Treasury Direct (different time of day than above, which are from WSJ, which no longer has history). And calculating actual A/A semi-annual bond yield:

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & & Coupon & Maturity & Price & Yield \\ \hline
10-yr US Treasury & 27 sep-16 & 1.50\% & 15-aug-26 & 99.46875 & 1.558\% \\ \hline
10-yr US Treasury & 28-mar-19 & 2.625\% & 15-feb-29 & 102.0625 & 2.389\% \\ \hline
10-yr US Treasury & 3-apr-20 & 1.50\% & 15-feb-30 & 108.4375 & 0.617\% \\ \hline
10-yr US Treasury & 2-apr-21 & 1.125\% & 15-feb-31 & 94.6875 & 1.712\% \\ \hline
10-yr US Treasury & 31-mar-22 & 1.875\% & 15-feb-32 & 96.078 & 2.321\% \\ \hline
10-yr US Treasury & 24-mar-23 & 3.50\% & 15-feb-33 & 101.1875 & 3.358\% \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
 & & Coupon & Maturity & Price & Yield & Exp Infl \\ \hline
10-yr TIPS & 27-sep-16 & 0.125\% & 15-jul-26 & 100.9375 & 0.029\% & 1.529\% \\ \hline
10-yr TIPS & 28-mar-19 & 0.875 & 15-jan-29 & 103.0625 & 0.554\% & 1.835\% \\ \hline
10-yr TIPS & 3-apr-20 & 0.125\% & 15-jan-30 & 105.84375 & -0.458 & 1.075\% \\ \hline
10-yr TIPS & 2-apr-21 & 0.125\% & 15-jan-31 & 107.875 & -0.653\% & 2.365\% \\ \hline
10-yr TIPS & 31-mar-22 & 0.125\% & 15-jan-32 & 106.96875 & -0.533\% & 2.854\% \\ \hline
10-yr TIPS & 24-mar-23 & 1.125\% & 15-jan-33 & 99.9375 & 1.132\% & 2.226\% \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
 & Nom Yld & Real Yld & Exp Infl \\ \hline
27-sep-16 & 1.558\% & 0.029\% & 1.529\% \\ \hline
28-mar-19 & 2.389\% & 0.554\% & 1.835\% \\ \hline
3-apr-20 & 0.617\% & -0.458 & 1.075\% \\ \hline
2-apr-21 & 1.712\% & -0.653\% & 2.365\% \\ \hline
31-mar-22 & 2.321\% & -0.533\% & 2.854\% \\ \hline
24-mar-23 & 3.358\% & 1.132\% & 2.226\% \\ \hline
\end{tabular}
\end{document}
```

Thinking About Yield Changes: y Budget Line Twists First consider simple case: you only have Future CF or Present CF:

$$
\text {R e m e m e n t} \mathrm {P V} = \frac {\mathrm {F V}}{(1 + \mathrm {y})}
$$

$$
\text {B u d g e t L i n e R H S}: \quad \begin{array}{l} \mathbf {P V}: \mathbf {m} _ {1} + \mathbf {m} _ {2} / (1 + \mathbf {y}) \\ \mathbf {F V}: (1 + \mathbf {y}) \mid \mathbf {m} _ {1} + \mathbf {m} _ {2} \end{array}
$$

Growth: Only $\mathfrak{m}_1$, Present CF (PV fixed), y as if $\mathrm{CF}_{\mathrm{tomorrow}}$ and you are richer: budget line

$$
\begin{array}{l} \cdot \mathrm {PV} = 100, \mathrm {y} = 4 \%, \mathrm {F V} = 100; (1 + 0.04) = 104 \\ \cdot \mathrm {F V} = 100, \mathrm {y} = 5 \%, \mathrm {P V} = 100 \mid (1 + 0.05) = 105 - \text {Richer} \\ \end{array}
$$

Inflation: Only $\mathbf{m}_2$, Future CF (FV fixed), y as if PV of $\mathrm{CF}_{\mathrm{tomorrow}}$ and you are poorer: budget line

$$
\begin{array}{l} \cdot \mathrm {F V} = 100, \mathrm {y} = 4 \%, \mathrm {P V} = \frac {100}{(1 + 0.04)} = 96.15 \\ \cdot \mathrm {F V} = 100, \mathrm {y} = 5 \%, \mathrm {P V} = \frac {100}{(1 + 0.05)} = 95.24 - \text {Poorer} \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/c4f582a0ba790a2e3c1aba6b84cce8e6821d7871cfd3e4d9e5eea0e1cf9aeae1.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/1b206fc5399dc817b27f039ace688c9c66dfc50f596c8cda8f2cb2099ecbd671.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/e11977f970a7fd1939dc0c37fd9044faaf841c94829cd296a5c4188e6947c6e1.jpg)

## Tvm & Bonds: Pv, Fv, Discounting
Lecture 3

Thomas S. Coleman

27 March 2023, Draft March 31,2023

## Procedural
I. Groups
- Groups should be assigned

II. Assignment
- Due next Monday at 11:59pm

## Four Ideas - All About Yield
1 How to Think About Yield: Unpacking the Budget Line 2
2 How to Calculate Yield (for Bonds) 5

2.1 Single versus Multiple CF & Bonds 5
2.2 Solving Multiple CF & Bonds - PV Calculators: TVM and BOND Menu 7

3 How Do We Use Yield? Where Does Yield Come From? 10

3.1 TVM for Simple 4-year Bond 10
3.2 Understanding and Using Yield - Across PV, Coupon, Maturity 12
3.3 Where Do We Get Yield? 15

3.3.1 Bonds - Markets give us Yield (Discount Rate, Expected Return) 15
3.3.2 Equities & Projects: Dicult - Estimate Yield from Similar Risk 19

4 Yield / Discount Rate, Holding Period Return, IRR 20

4.1 Yield / Discount Rate (Expected Return, Required Return, Interest Rate) 20
4.2 Holding Period Return 20
4.3 IRR (Internal Rate of Return) 24

## 1 How To Think About Yield: Unpacking The Budget Line

## Remember: The Budget Line: Pv, Fv, Discounting
Budget line - Start with 2 periods linked by savings: put in $1, get$ 1(1+y)
- Start with no borrow / lend: $\mathrm{s} = 0$ - single point
- Next allow lending: $s > 0$, extend line upper left (eliminate $s$ )
- Finally borrowing & lending: $s < > 0$, full budget line

$$ p _ {1} c _ {1} = m _ {1} - s; p _ {2} c _ {2} = m _ {2} + (1 + y) s
$$

$$
\mathbf {p} _ {1} \mathbf {c} _ {1} + \mathbf {p} _ {2} \mathbf {c} _ {2} / (1 + \mathbf {y}) = \mathbf {m} _ {1} + \mathbf {m} _ {2} / (1 + \mathbf {y})
$$

$$
\mathbf {p} _ {1} \mathbf {c} _ {1} | (1 + \mathbf {y}) + \mathbf {p} _ {2} \mathbf {c} _ {2} = \mathbf {m} _ {1} | (1 + \mathbf {y}) + \mathbf {m} _ {2}
$$
- Can write as $\mathbf{PV}$: $m_2 / 1 + y$ or $\mathbf{FV}$: $m_{1 - 1}(1 + y)$
Budget line same either way
- In FV form income higher, but so are "prices"

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/ce4c932ef2d8371c324f210e1b3d38f348d0f3b42038b378093782d2d0057fc0.jpg)

## Remember: Right Hand Side Gives Pv, Fv & Discounting
$$
\begin{array}{l} \text {R H S:} \quad \begin{array}{l} \mathbf {P V}: \mathbf {m} _ {1} + \mathbf {m} _ {2} / (1 + \mathbf {y}) \\ \mathbf {F V}: (1 + \mathbf {y}) \mid \mathbf {m} _ {1} + \mathbf {m} _ {2} \end{array} \end{array}
$$

The RHS gives us the correct measure of income

Today's money we call Present Value or PV
Tomorrow's money we call Future Value or FV

## 1+Y Price Between Today & Tomorrow
- interest rate, discount rate, yield, IRR, expected return

This is the single most important idea in finance
- If you understand this you understand most of finance
- But I've spent most of my career learning, thinking, studying PV

A little like building a bridge: the physics is easy but the engineering is hard

I. Unpacking the budget constraint: PV, FV, nominal & real rates
- This budget constraint tells us everything we need to know about discounting, PV, FV, nominal rates, real rates. In fact everything we need to know about TVM (for certain – known – CFs).
- But we need to unpack this budget constraint, and think about it a little carefully.
- Once we do that we will then use the ideas of discounting, PV, FV, etc. to examine every aspect of modern finance.
- We will talk about bonds and discounting over multiple periods. About compounding and variable periods (rates per month, half-year, year). About nominal rates vs real rates. But the ideas all come back to this simple picture and simple budget line. (Have I ever said how wonderful budget lines are? I used to think they were really boring, but I've come to appreciate that a good part of economics is just thinking carefully about budget lines.)
- $\mathbf{PV}$: So let's start by looking at the RHS or the budget constraint: $\mathfrak{p}_1\mathfrak{c}_1 + \mathfrak{p}_2\mathfrak{c}_2 / (1 + \mathbf{y}) = \mathfrak{m}_1 + \mathfrak{m}_2 / (1 + \mathbf{y})$. The RHS says that the income for the budget line is the sum $\mathfrak{m}_1 + \mathfrak{m}_2 / (1 + \mathbf{y})$. We call this the Present Value, and it is the correct measure of income when we look at any set of CFs across time - we always need to discount future amounts (future CFs) back to today by $1 / (1 + \mathbf{y})$.
- This is the most important, maybe the only important thing, you will learn in this course: how to calculate and think about PVs.
- PVs matter and only PVs matter. Nothing else you learn in finance is as important as this. In fact, there really is not much else in finance except PV
- Three-quarters of this course is simply calculating $\mathfrak{m}_1 + \mathfrak{m}_2 / (1 + \mathbf{y})$. This becomes very complicated: What are the CFs? When are the CFs? What is the rate y? How do we quote the discount rate y and how do we calculate the discounting $1 / (1 + \mathbf{y})$? How do we get an appropriate rate?
- But it all comes down to PV: $\mathfrak{m}_1 + \mathfrak{m}_2 / (1 + \mathbf{y})$.
- $\mathbf{FV}$: the expression $m_1 + m_2 / (1 + y)$ expresses income in terms of period-1 money. But we could also write the budget line in terms of period-2 money:

$$
\mathbf {p} _ {1} \mathbf {c} _ {1} \mid (1 + \mathbf {y}) + \mathbf {p} _ {2} \mathbf {c} _ {2} = \mathbf {m} _ {1} \mid (1 + \mathbf {y}) + \mathbf {m} _ {2}
$$

Now the RHS is the FV: $\mathfrak{m}_1 \mid (1 + \mathbf{y}) + \mathfrak{m}_2$. FV is in terms of tomorrow's money (PV is today's money). For the budget line it is totally irrelevant, since it increases the income but also the prices on the LHS - the budget line does not change. $(\mathfrak{p}_1 \quad \mathfrak{p}_1 \mid (1 + \mathbf{y}) \& \mathfrak{p}_2 / (1 + \mathbf{y}) \quad \mathfrak{p}_2)$

II. The term $(1 + y)$ or $1 / 1 + y$ is the price between today and tomorrow.
- For every $1 today, we get 1+y next period. For one year, y will be something like 0.04 or 4%.
- The term $1 / 1 + y$ is called the discount factor: it tells us how much $$ 1$ next period is worth today (it will be less than $$ 1$, discounted)
- y is called the interest rate, discount rate, yield, yield-to-maturity, IRR (internal rate or return), expected return. These all mean slightly different things.

## Thinking About Yield Changes: Y Budget Line Twists First Consider Simple Case: You Only Have Future Cf Or Present Cf
$$
\text {R e m e m b e r P V} = \frac {\mathrm {F V}}{(1 + \mathrm {y})}
$$

Budget Line RHS: $\begin{array}{rl} & {\mathbf{PV}:\mathbf{m}_1 + \mathbf{m}_2 / (1 + \mathbf{y})}\\ & {\mathbf{FV}:(1 + \mathbf{y})\mid \mathbf{m}_1 + \mathbf{m}_2} \end{array}$

Growth: Only $\mathbf{m}_1$, Present CF (PV fixed), $\mathbf{y}$ as if $\mathrm{CF}_{\text{tomorrow}}$ and you are richer: budget line

$\mathbf{PV} = 100,\mathbf{y} = 4\%,\mathbf{F}\mathbf{V} = 100;$ $(1 + 0.04) = 104$
$\mathbf{FV} = 100$ $\mathrm{y} = 5\%$ $\mathbf{PV} = 100_{\mathrm{i}}(1 + 0.05) = 105 -$ Richer

Inflation: Only $\mathfrak{m}_2$, Future CF (FV fixed), y as if PV of $\mathrm{CF}_{\mathrm{tomorrow}}$ and you are poorer: budget line

$\mathbf{FV} = 100, \mathbf{y} = 4\%$ $\mathbf{PV} = \frac{100}{(1 + 0.04)} = 96.15$
$\mathbf{FV} = 100, y = 5\%$ $\mathbf{PV} = \frac{100}{(1 + 0.05)} = 95.24 - \text{Poorer}$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/49722a9310b6cb3feda81101ba0f7c67a750ab5741361c7df3961b85b80a2d5a.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/12b348d6d3e99cdc967eb7ccdb72fcba6316e6bef30a67724196c013efc3a4e8.jpg)

## 2 How To Calculate Yield (For Bonds)

### 2.1 Single Versus Multiple Cf & Bonds

## Single Cash Flow Is Simple (Sort-Of)
Relation between future cash and today's value: PV or discounting relation:

$$
P V = \frac {F V}{(1 + y) ^ {N}}
$$

$\mathbf{PV} =$ Present Value (today's value)

$\mathbf{FV} =$ Future Value (future cash flow)

$\mathbf{y} =$ yield or interest rate or discount rate (per period or year)

$\mathbf{N} =$ number of periods (years) of discounting

For example: $85.73 = \frac{100}{(1 + 0.08)^2}$
- But things can get complicated:
- For example, what about "periods" $\mathbf{N} = 2$? Is that 2 years, or two half-years (1 year)?

Need to be careful when we use PV formula

## Multiple Cfs: Just Apply Pv Many Times
PV is today's cash value, so just add the various PVs

• Say $6.50 in year 1,2,3,4, and also $100 in year 4. One PV each CF:

$$
\mathbf {P V} = \frac {6.5}{(1 + \mathbf {y} _ {\mathrm {a b}})} + \frac {6.5}{(1 + \mathbf {y} _ {\mathrm {a b}}) ^ {2}} + \frac {6.5}{(1 + \mathbf {y} _ {\mathrm {a b}}) ^ {3}} + \frac {6.5}{(1 + \mathbf {y} _ {\mathrm {a b}}) ^ {4}} + \frac {100}{(1 + \mathbf {y} _ {\mathrm {a b}}) ^ {4}}
$$

## A Few Things About This:
- We always want to work with a "CF diagram"
- CF diagram with these 5: PV, FV (final payment) I%YR (y), periodic PMT, N: incredibly common and useful
- This is a "bond": fixed coupon per year, $100 at the end

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/7b112f2574e26ace33e6904ce0a6f8e7386de1b23b497f4c1116edb30258f6a8.jpg)

## Taking Apart And Solving Pv Formula
For single future CF, things are easy:

$$
\mathbf {P V} = \frac {\mathbf {F V}}{(1 + \mathbf {y}) ^ {\mathbf {N}}}
$$
- Four variables (PV, FV, y, N): easily solve for one given the others

Solving more tricky with bond-type multiple CFs

$$
\mathbf {P V} = \frac {\mathbf {P M T}}{(1 + \mathbf {y})} + \frac {\mathbf {P M T}}{(1 + \mathbf {y}) ^ {2}} + \text {i i} + \frac {\mathbf {P M T}}{(1 + \mathbf {y}) ^ {\mathbf {N}}} + \frac {\mathbf {F V}}{(1 + \mathbf {y}) ^ {\mathbf {N}}}
$$
- Five variables (PV, FV, PMT, y, N)
- Can get PV when given other four. How to get y when given PV, PMT,...?

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/25b2a5e815a3150798955ccd842b80e4ab9062218b6ace353d6728c9eeaeabda.jpg)

### 2.2 Solving Multiple Cf & Bonds - Pv Calculators: Tvm And Bond Menu

## Solving Multiple Cfs: Trial-And-Error
Bond with $6.50 in year 1,2,3,4, $100 in year 4

$$
\mathbf {P V} = \frac {6.5}{(1 + \mathbf {y} _ {\mathrm {a b}})} + \frac {6.5}{(1 + \mathbf {y} _ {\mathrm {a b}}) ^ {2}} + \frac {6.5}{(1 + \mathbf {y} _ {\mathrm {a b}}) ^ {3}} + \frac {6.5}{(1 + \mathbf {y} _ {\mathrm {a b}}) ^ {4}} + \frac {100}{(1 + \mathbf {y} _ {\mathrm {a b}}) ^ {4}}
$$

I've given you PMT, FV, N.
- Now calculate PV-from-y or y-from-PV
- By far the most common two calculations
- I give you $y = 6.60\%$, you can calculate PV - takes time, but you can do it

What if I give you $\mathrm{PV} = 99.658$ and ask "what is y?"

Solving a polynomial - generally no formula for $y$.
- Formula for quartic exists - but a formula for 5 or higher does not exist
- But can use numerical methods - say trial-and-error
Try $y = 6.70\%$. $\mathbf{PV} = 99.3179$. PV too low, y too high
Try $y = 6.50\%$. $\mathbf{PV} = 100.000$. PV too high, y too low
- Keep trying, until at $y = 6.60\%$, $\mathrm{PV} = 99.658$ - just right

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/2614709eeeb65c46ceeb9b99421818ef3b8fb25d34e49fdecb5c260ea9a7ff6c.jpg)

## Using Computers For Yield Calculations
Trial-and-Error or root-finding algorithms for solving bond-type multiple CFs

$$
\mathbf {P V} = \frac {\mathbf {P M T}}{(1 + \mathbf {y})} + \frac {\mathbf {P M T}}{(1 + \mathbf {y}) ^ {2}} + \mathrm {i} \quad \mathrm {i} \quad + \frac {\mathbf {P M T}}{(1 + \mathbf {y}) ^ {\mathbf {N}}} + \frac {\mathbf {F V}}{(1 + \mathbf {y}) ^ {\mathbf {N}}}
$$
- Before computers incredibly difficult - people published "yield tables" to help

Today, calculator, or Excel. HP 17BII+: TVM (Time Value of Money)two menus, TVM & BOND:
- Learn about partial payments & AI (Accrued Interest) next class

TVM - Time Value of Money, built on that formula and CF diagram

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/566d7d386970f909306fe4c74c61379b78380ad14791031a9a58fb7f27b9b12e.jpg)

$$
\begin{array}{l} 100.00 = \frac {6.5}{(1 +. 066) ^ {\top}} + \frac {6.5}{(1 +. 066) ^ {2}} \\ + \mid \mid + \frac {100}{(1.066) ^ {4}} \\ \end{array}
$$

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 4 & & -99.658 & 6.5 & 100 \\ \hline
Solve For & & 6.6 & & & \\ \hline
\end{tabular}
\end{document}
```

BOND - Same as TVM (periodic payments) but allows partial first period

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/d1a0728ad412c1f887a16942aff91063faa82c2f7ae4768f46ba5594187dfaa1.jpg)

## Tvm & Bond: Same Answer If Same Cfs
- Exact 4-yr (on coupon date): PV=99.658, yield=6.60%
- Exact 4-yr, using dates: $\mathrm{{Prc}} = {99.658},{23} - \mathrm{{mar}} - {18}$ to 23-mar-22, yield $= {6.60}\%$

$$
\begin{array}{l} 9 9.658 = \frac {6.5}{(1 +. 066) ^ {1}} + \frac {6.5}{(1 +. 066) ^ {2}} \\ + | | | + \frac {100}{(1 +. 066) ^ {4}} \end{array}
$$

$$
\begin{array}{r l} 9 9.658 & = \frac {6.5}{(1 +. 066) ^ {1}} + \frac {6.5}{(1 +. 066) ^ {2}} \\ & + | | | + \frac {100}{(1 +. 066) ^ {4}} \end{array}
$$

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 4 & & -99.658 & 6.5 & 100 \\ \hline
Solve For & & 6.6 & & & \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
 & Type & Settle & Mat & CPN\% & YLD\% & Price & ACCRU \\ \hline
Given & A/A Ann & 3.232018 & 3.232022 & 6.5 & 6.60 & & \\ \hline
Solve For & & & & & & 99.658 & 0 \\ \hline
\end{tabular}
\end{document}
```

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/f4a4f88a1834995c2074d7e05218e75d5eb3cfe6bbd744c90304c0a00482ae11.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/aafe52fbfb50a564a9d3fb837e8fe9573e87b4d5c06468470700370431df52b8.jpg)

## 3 How Do We Use Yield? Where Does Yield Come From?

### 3.1 Tvm For Simple 4-Year Bond

## Mapping Cf Diagram To Tvm
TVM: Time Value of Money
- Solves the PV equation for periodic CFs

$$
P V = \frac {P M T}{(1 + y)} + \frac {P M T}{(1 + y) ^ {2}} + i i j + \frac {P M T}{(1 + y) ^ {N}} + \frac {F V}{(1 + y) ^ {N}}
$$

CF diagram is key - maps to the TVM menu

Five variables - put in $\tilde{4}$, ask for 5th

I. N: number of periods
II. I%YR: interest rate (per year)
III. PV: as negative
IV. PMT: periodic payment (per period)

V. FV

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/e548a7e5128c71771c8ef5a0d18169ec9de9be63965dddda692c3070ac21d2b5.jpg)

## Using Tvm For 4 Yr Bond
Four year fixed-coupon bond:

• PV=99.658, $6.50 in year 1,2,3,4, and also $100 in year 4, FV=100

$$
9 9.658 = \frac {6.5}{(1 + y _ {a b})} + \frac {6.5}{(1 + y _ {a b}) ^ {2}} + \frac {6.5}{(1 + y _ {a b}) ^ {3}} + \frac {6.5}{(1 + y _ {a b}) ^ {4}} + \frac {100}{(1 + y _ {a b}) ^ {4}}
$$

Five variables - put in 4, ask for 5th

I. $\mathbf{N} = 4$: number of periods
II. $\mathbb{I}\% \mathrm{YR} = 6.6$: interest rate (per year)
III. $\mathbf{PV} = -99.658$: as negative
IV. $\mathbf{PMT} = 6.5$: periodic payment (per period)
V. $\mathbf{F V} = \mathbf{100}$
- Blue MAIN FIN for TVM menu
- Then set 1 P/yr and END

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 4 & & -99.658 & 6.5 & 100 \\ \hline
Solve For & & 6.6 & & & \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 4 & 6.6 & & 6.5 & 100 \\ \hline
Solve For & & & -99.658 & & \\ \hline
\end{tabular}
\end{document}
```

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/b220a088872e9bfc00f2caead86760f3311f06712d5a610dda0a546b749b247f.jpg)

### 3.2 Understanding And Using Yield - Across Pv, Coupon, Maturity Contents

## Thinking Of Yield As "Value" Of Bond
Work with our four year fixed-coupon bond:

• PV=99.658, $6.50 in year 1,2,3,4, and also $100 in year 4, FV=100

$$
\mathbf {P V} = \frac {\mathbf {P M T}}{(1 + \mathbf {y})} + \frac {\mathbf {P M T}}{(1 + \mathbf {y}) ^ {2}} + \mathrm {i} \quad \mathrm {i} + \frac {\mathbf {P M T}}{(1 + \mathbf {y}) ^ {\mathbf {N}}} + \frac {\mathbf {F V}}{(1 + \mathbf {y}) ^ {\mathbf {N}}}
$$

$$
9 9.658 = \frac {6.5}{(1 + y _ {a b})} + \frac {6.5}{(1 + y _ {a b}) ^ {2}} + \frac {6.5}{(1 + y _ {a b}) ^ {3}} + \frac {6.5}{(1 + y _ {a b}) ^ {4}} + \frac {100}{(1 + y _ {a b}) ^ {4}}
$$

Yield as "value" of bond or CFs: Three ideas:

I. PV better value ("cheaper"): PV Y
II. Coup better value ("more CF"): Coup Y
III. Yield is a way to think about "value": High Y means high Value (low Price)

First two are simple and obvious - formula & CF diagram
- Third is deep and meaningful - allows us to use yield for all kinds of comparisons

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/0da67206cc0481b721a1dddd3fbc1cfe84d9f1a0bda1a54b8bd0a84166e2aedd.jpg)

Learn through examples using TVM

## Tvm - Low Price & High Yield - In-Class Exercise 1
Starting with bond from above, what happens when price (PV) goes down?

Start with 4 year bond (from above)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 4 & & -99.658 & 6.5 & 100 \\ \hline
Solve For & & 6.6 & & & \\ \hline
\end{tabular}
\end{document}
```

What happens when price falls?Low price means high yield (P

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 4 & & -99.0 & 6.5 & 100 \\ \hline
Solve For & & 6.794 & & & \\ \hline
\end{tabular}
\end{document}
```
- Remember that $\mathsf{PV} = \frac{\mathsf{FV}}{1 + \mathsf{y}}$, so low price means high yield
- Yield e ectively measures the "price" of the bond, taking into account both the up-front price and the coupon you earn.
- Simple in this case because same bond, just lower price - yield up

## Tvm - High Coupon And High Yield - Exercise 2
Same bond to start, but now increase the coupon (keeping PV the same)

Continue with 4 year $6.5\%$ coupon bond from above

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 4 & & -99.0 & 6.5 & 100 \\ \hline
Solve For & & 6.794 & & & \\ \hline
\end{tabular}
\end{document}
```

What happens with a higher coupon? (7% up from 6.5%)Higher coupon means higher yield (more future CF)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 4 & & -99.0 & 7.0 & 100 \\ \hline
Solve For & & 7.297 & & & \\ \hline
\end{tabular}
\end{document}
```
- Also simple: same price, coupon higher more each year
- Here up-front is the same, but the $7 \%$ coupon bond is truly “cheaper” because the coupon is higher.
- Yield trades-o the up-front price versus the future coupon you earn.

## Pv & Cf Change: High Yield High Value / Low Price
Complicated when both PV & CF change
- Yield balances PV & CF.
- We can work with either prices (PV & CF) or yield - PV eqtn converts between two two:

$$
\mathbf {P V} = \frac {\mathbf {P M T}}{(1 + \mathbf {y} _ {\mathbf {a b}})} + \frac {\mathbf {P M T}}{(1 + \mathbf {y} _ {\mathbf {a b}}) ^ {2}} + \frac {\mathbf {P M T}}{(1 + \mathbf {y} _ {\mathbf {a b}}) ^ {3}} + \frac {\mathbf {P M T}}{(1 + \mathbf {y} _ {\mathbf {a b}}) ^ {4}} + \frac {100}{(1 + \mathbf {y} _ {\mathbf {a b}}) ^ {4}}
$$

TVM or BOND converts prices/CFs (PV&PMT) Yield:

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 4 & & -99.658 & 6.5 & 100 \\ \hline
Solve For & & 6.6 & & & \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 4 & 6.6 & & 6.5 & 100 \\ \hline
Solve For & & & -99.658 & & \\ \hline
\end{tabular}
\end{document}
```

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/2ad4a45683c0790023940c0d3e492fedf22819c778217b9e9b4eea63d03abdf0.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/8a009670f2fcc07a07eb81b1d9fa1c31e30a47462caaf0bdefbb0c7ea02b87b4.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/25f92232e47ad7dd34013e5d51dba30e78ae43fa25e1f4f51d2ae165e273bd17.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/ed85ce9403cf2b9c6f73d349a5462de8fea5d276d7b71ba75ee0d69a15c01755.jpg)

## In-Class Exercise 3: Yield Compares different Bonds
Yield measures trade-o between low price today (PV) vs CFs in the futures
- Comparable across bonds with different coupon, price, maturity

Let's compare 3 bonds (in-class exercise using TVM)

I. 4yr $6.5\%$ coupon bond, $\mathbf{P} = 99.658$, yield $= 6.60\%$

II. 4yr $4\%$ coupon bond, $\mathbf{P} = 91.113 -$ does low price o set low coupon?yield $= 6.60\%$ -low price does o set low coupon

III. 6yr $7\%$ coupon bond, $\mathbf{P} = 101.930$, yield $= 6.60\%$

Yield trades 0 price today vs size of coupon & maturityAll these bonds are more-or-less same “value” (yield $6.60\%$ )

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 4 & & -99.658 & 6.5 & 100 \\ \hline
Solve For & & 6.60 & & & \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 4 & & -91.113 & 4 & 100 \\ \hline
Solve For & & 6.60 & & & \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 6 & & -101.930 & 7 & 100 \\ \hline
Solve For & & 6.60 & & & \\ \hline
\end{tabular}
\end{document}
```

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/b6e12d3aa248000eaded5dcfe2b19f7ff68119a4fc15b7b5269979651fd4ba5a.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/d9cdcb2083f2d3cb02fc02623b935499de89d7333df88619fe14cfd76b973445.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/b3abb68f1c804302acaaff188f478a5837819e7b34bdd53ecaaa94db4c468a56.jpg)

Here we can compare three different bonds - same in value & how much we earn
- Yield means discounting: converting between present and future cash
- Flat yield-to-maturity not perfect - Generally "term structure" upward or downward sloping
- Example: UST 2yr $2.88\%$, 10yr $3.23\%$ (upward)
- Later we look at "term structure of interest rates" and "yield curve"
- But so much better than price alone - balances price vs coupon vs maturity

Yield is better way to think of "market price" than dollar price
- Just remember: P & Y

What if there were a 4th bond?

IV. 4yr $5\%$ bond, $\mathbf{P} = 92.00$. What is the yield? Could this price occur in reality?

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 4 & & -92.0 & 5.0 & 100 \\ \hline
Solve For & & 7.38 & & & \\ \hline
\end{tabular}
\end{document}
```
- Let's use TVM to ask "what is yield?" Yield for this bond is $7.38\%$ - Would never occur in real markets
- $7.38\%$ is "cheap" relative to $6.60\%$ - Sell other bonds and buy this one

Yield-to-maturity isn't perfect, because generally there will be a "term-structure" meaning that CFs with different maturities are discounted at slightly different
- UST yields quoted in slide: 5-oct-2018 quotes, 2yr 2.75s of 30-sep-20,10yr 2.875s of 15-aug-28
But YTM is pretty good, and for now we will use YTM, ignoring any issues about term structure
- Later in the course we will introduce "term structure of interest rates" or "yield curve"

### 3.3 Where Do We Get Yield?

#### 3.3.1 Bonds - Markets Give Us Yield (Discount Rate, Expected Return)

## For Bonds - Markets Give Us Yield (Discount Rate)
For bonds (say our 4 yr $6.5\%$ coupon) move back-and-forth: Price Yield

• PV=99.658, PMT=$6.50 in year 1,2,3,4, FV=$100 Yield=6.60%

$$
\mathbf {P V} = \frac {\mathbf {P M T}}{(1 + \mathbf {y})} + \frac {\mathbf {P M T}}{(1 + \mathbf {y}) ^ {2}} + \texttt {i i i} + \frac {\mathbf {P M T}}{(1 + \mathbf {y}) ^ {\mathbf {N}}} + \frac {\mathbf {F V}}{(1 + \mathbf {y}) ^ {\mathbf {N}}}
$$

For bond CF diagram (down today, up tomorrow) unique solution PV Yield
- Yield often better, adjusts for low price, high coupon, long maturity

Solving for yield gives economic discount rate

$$
\mathsf {p} _ {1} \mathsf {c} _ {1} + \mathsf {p} _ {2} \mathsf {c} _ {2} / (1 + \mathsf {y}) = \mathsf {m} _ {1} + \mathsf {m} _ {2} / (1 + \mathsf {y})
$$
- Yield is "Price" of income today vs tomorrow
- Yield is "Discount Rate" - fundamental to economic & financial analysis

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/e95ec7909bea11ad80792bf39069b24f6c3680af3315bb0ca43f255d7348e38c.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/f41fdfc0b17765be9d8ff4073e6aa625275807b4f276740440fc168fabd75d2d.jpg)

## For Bonds: Cfs, Quotes, & Pv Yield
We get yields from market prices: P Y

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
Tuesday 27 sep-16 & Coupon & Maturity & Price & Yield \\ \hline
10-yr US Treasury & 1.50\% & 15-aug-26 & 99.5234 & 1.55\% \\ \hline
10-yr US TIPS & 0.125\% & 15-jul-26 & 101-05 & 0.01\% \\ \hline
10-yr Bund (German) & & & & -0.15\% \\ \hline
\end{tabular}
\end{document}
```

## A Number Of Questions:
What are UST vs TIPS?
- What are "coupon", "maturity", "price", "yield"?
- What about that negative yield on German Bunds?

## Three Things We Will Discuss
I. What are bonds & bond CFs? Discuss briefly, return later in course
II. How we apply PV ideas to bonds - same ideas, same formulae as now
III. Real vs nominal CFs & discount rates

## 10Yr Ust Cfs
"Coupon" etc. all have to do with defining CFs - look at CF diagram
- Coupon = 1.50% means: “$1.50 / 2 every six months”
- For now we will pretend it is $1.50 every year - close enough for now
- Maturity = 15-aug-26 means: "final payment ($100) on 15-aug-26; coupons every 15-aug & 15-feb"
- For now pretend exactly 10yrs - close enough for now

CF diagram just like any bond - fits with TVM
- Project valuation: NPV CF + RADR (risk-adjusted discount rate)
Bond: Market price + CF yield

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/787e34ab8b8d7cf91f2f07751394ddabdcda337d0b22df74cd178d8a0dbcc5ed.jpg)

 number N=10 periods

PV=-99.5234

## Bonds: Pv & Tvm Yield
For 10yr UST, use TVM to calculate yield: Market Price + CF yield

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 10 & & -99.5234 & 1.50 & 100 \\ \hline
Solve For & & 1.55 & & & \\ \hline
\end{tabular}
\end{document}
```

For bonds: Market Value & CF yield
- Given CF & PV, back out yield

For projects, trying to figure out PV & NPV
- Given $\mathbf{CF} + \mathbf{RA}$ yield, back out PV & NPV

Using TVM for UST not exactly right
- Not annual
- Not exact 10 yrs

But good for now - use BOND menu later

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/5307ec51d6e3cdaa489752d315cdb546c6566aa8ef2f943a53dc7336e58f2c4d.jpg)

## Bonds: Market Gives Us Yield (Discount Rate)
For bonds, PV formula is:

$$
\mathrm {P V} = \frac {\mathrm {P M T}}{(1 + \mathrm {y _ {a b}})} + \frac {\mathrm {P M T}}{(1 + \mathrm {y _ {a b}}) ^ {2}} + \frac {\mathrm {P M T}}{(1 + \mathrm {y _ {a b}}) ^ {3}} + \frac {\mathrm {P M T}}{(1 + \mathrm {y _ {a b}}) ^ {4}} + \frac {100}{(1 + \mathrm {y _ {a b}}) ^ {4}}
$$

Bond contract tells us PMT, N, FV = 100
Market gives us PV

We can back out the yield (discount rate)

Market gives this to us, for free

Change from 2016 to 2023

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & & Coupon & Maturity & Price & Yield \\ \hline
10-yr US Treasury & 27 sep-16 & 1.50\% & 15-aug-26 & 99.5234 & 1.55\% \\ \hline
10-yr US Treasury & 28-mar-19 & 2.625\% & 15-feb-29 & 102.0938 & 2.39\% \\ \hline
10-yr US Treasury & 3-apr-20 & 1.50\% & 15 feb-30 & 108.4375 & 0.63\% \\ \hline
10-yr US Treasury & 2-apr-21 & 1.125\% & 15-feb-31 & 94.625 & 1.71\% \\ \hline
10-yr US Treasury & 31-mar-22 & 1.875\% & 15 feb-32 & 96.078 & 2.32\% \\ \hline
10-yr US Treasury & 24-mar-23 & 3.50\% & 15 feb-33 & 101.015625 & 3.38\% \\ \hline
\end{tabular}
\end{document}
```

Calculate current 10-year UST (CF diagram not exactly correct but close enough):

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 10 & & -101.015625 & 3.50 & 100 \\ \hline
Solve For & & 3.379 & & & \\ \hline
\end{tabular}
\end{document}
```

Why yield up in 2019, down in 2020, up in 2022 & 2023? What changing yield tells us
- Yield cash today will grow to more tomorrow (10 yrs in this case) OR cash tomorrow worth less today
- Apr 2019: Economy growing pretty robustly, future growth prospects good
- Apr 2020: Pandemic, panic about future & future opportunities, yield
- Mar 2022 & 2023: Recovery, but also inflation (next lecture), yields

WSJ: https://www.wsj.com/market-data/bonds/treasuries

Treasury Direct: https://www.treasurydirect.gov/GA- FI/FedInvest/selectSecurityPriceDate

For 3-apr-20, Yield using "BOND" menu and actual dates (Settle = 3-apr-20, Maturity = 15-feb-30, coup = 1.5%, P = 108.4375, Y=0.617%. different only by 1bp

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
 & & Coupon & Maturity & Price & Approx Yield & Yield \\ \hline
10-yr US Treasury & 27 sep-16 & 1.50\% & 15-aug-26 & 99.5234 & 1.55\% & \\ \hline
10-yr US Treasury & 28-mar-19 & 2.625\% & 15 feb-29 & 102.0938 & 2.39\% & \\ \hline
10-yr US Treasury & 3-apr-20 & 1.50\% & 15 feb-30 & 108.4375 & 0.63\% & 0.617\% \\ \hline
10-yr US Treasury & 2-apr-21 & 1.125\% & 15 feb-31 & 94.625 & 1.71\% & 1.719\% \\ \hline
10-yr US Treasury & 31-mar-22 & 1.875\% & 15 feb-32 & 96.078 & 2.32\% & 2.321\% \\ \hline
10-yr US Treasury & 24-mar-23 & 3.50\% & 15 feb-33 & 101.015625 & 3.38\% & 3.378 \\ \hline
\end{tabular}
\end{document}
```

Re-done with prices updated from Treasury Direct (different time of day than above, which are from WSJ, which no longer has history). And calculating actual A/A semi-annual bond yield:

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & & Coupon & Maturity & Price & Yield \\ \hline
10-yr US Treasury & 27 sep-16 & 1.50\% & 15-aug-26 & 99.46875 & 1.558\% \\ \hline
10-yr US Treasury & 28-mar-19 & 2.625\% & 15-feb-29 & 102.0625 & 2.389\% \\ \hline
10-yr US Treasury & 3-apr-20 & 1.50\% & 15-feb-30 & 108.4375 & 0.617\% \\ \hline
10-yr US Treasury & 2-apr-21 & 1.125\% & 15-feb-31 & 94.6875 & 1.712\% \\ \hline
10-yr US Treasury & 31-mar-22 & 1.875\% & 15-feb-32 & 96.078 & 2.321\% \\ \hline
10-yr US Treasury & 24-mar-23 & 3.50\% & 15-feb-33 & 101.1875 & 3.358\% \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
 & & Coupon & Maturity & Price & Yield & Exp Infl \\ \hline
10-yr TIPS & 27 sep-16 & 0.125\% & 15-jul-26 & 100.9375 & 0.029\% & 1.529\% \\ \hline
10-yr TIPS & 28-mar-19 & 0.875 & 15-jan-29 & 103.0625 & 0.554\% & 1.835\% \\ \hline
10-yr TIPS & 3-apr-20 & 0.125\% & 15-jan-30 & 105.84375 & -0.458 & 1.075\% \\ \hline
10-yr TIPS & 2-apr-21 & 0.125\% & 15-jan-31 & 107.875 & -0.653\% & 2.365\% \\ \hline
10-yr TIPS & 31-mar-22 & 0.125\% & 15-jan-32 & 106.96875 & -0.533\% & 2.854\% \\ \hline
10-yr TIPS & 24-mar-23 & 1.125\% & 15-jan-33 & 99.9375 & 1.132\% & 2.226\% \\ \hline
\end{tabular}
\end{document}
```

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/9c7087393a4946903e81de6be7272b5948754c9f973bbdbf7e262f22273a7cd3.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/7042fd9423a02d9f363c0ebce4947e464ab6efbbc287d464442078f1f3e5cb8f.jpg)

## Inflation Past Five Years
```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & & Coupon & Maturity & Price & Yield \\ \hline
10-yr US Treasury & 3-apr-20 & 1.50\% & 15-feb-30 & 108.4375 & 0.63\% \\ \hline
10-yr US Treasury & 24-mar-23 & 3.50\% & 15-feb-33 & 101.015625 & 3.38\% \\ \hline
\end{tabular}
\end{document}
```

In 2021 & 2022, inflation surged
- Up to $15\%$ (CPI, monthly)
- Highest in 40 years

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/67e942bc5dea04876a2be7d36970ff35bfba53d7751586415ef79a4890a5bda2.jpg)

When inflation, y
- Discuss real rates & inflation next lecture

#### 3.3.2 Equities & Projects: difficult - Estimate Yield From Similar Risk

## Equities & Projects: Yield & Tvm Pv
Bonds have promised CFs:

For bonds: Market Value & CF yield
- Given CF & PV, back out yield (market discount rate, required rate of return)

For projects, trying to figure out PV & NPV - need Yield
- We often don't have market prices, say for starting a new business
- Have estimates of CFs, need yield to calculate PV
- Given CF & risk-adjusted yield, calculate PV & NPV

But where does Yield (Discount Rate, Required Rate) come from?
- If CFs were promised and certain, then discount using UST rate
- But always risky
- Look for other assets with similar risk, get market price, back out risk-adjusted yield

But we don't yet know what "risk" is

## 4 Yield / Discount Rate, Holding Period Return, Irr

### 4.1 Yield / Discount Rate (Expected Return, Required Return, Interest Rate)

![](Https://Cdn-Mineru. Openxlab. Org. Cn/Result/2025-11-15/3C07Ddea-Cb45-4Eb2-Bd23-F544B33F30B6/8D7F994Ce66Cef39D1C3F3C6A048769B6061B7E0Cfae2850C1Cb4B0485Dc78Aa. Jpg)

![](Https://Cdn-Mineru. Openxlab. Org. Cn/Result/2025-11-15/3C07Ddea-Cb45-4Eb2-Bd23-F544B33F30B6/38F0A2B2312536Adb4249C0D6E8Ca580C3257C9A58651C9D2A76241Bd7D863E4. Jpg)

## Market Yield (For A Bond) Is The Discount Rate
Yield, Discount Rate, Expected Return, Required Return, Interest Rate:
- Multiple names for the same thing
- Price for translating CFs between tomorrow and today
- More-or-less different names for same concept

For bonds, markets give us the Yield / Discount Rate
- Convert price to yield, and that is (pretty-much) the correct market discount rate

For equities, for projects (corporate projects, Cost Benefit Analysis)
- Back-out discount rate from other methods
- Must study risk - in a week or two
- Portfolio theory and CAPM (Capital Asset Pricing Model) most fundamental tools

### 4.2 Holding Period Return

## Yield (Looking Forward) Vs Return (Looking Backward)
Yield, Discount Rate, Interest Rate: Price for translating today to tomorrow
- Price set today
 • Looks from today to the future: 1/1+y is today's price of $1 in the future (something like $0.9615 = 1/1+0.04)

Yield is what you are promised, what you expect to get

Now turn around, look backwards at what you actually earned - Return

Two reasons why Yield and Return may differ
- Yield is promise but promise may get broken. Or maybe a range of possibilities
- We don't know how to do this yet - uncertain CFs. We come to this later
- Prices change, and we often have CFs spread over time

## Bond As Package Of Cfs Over Time
Single CF: yield $=$ return when hold to maturity

• Example: Buy 1yr T-bill @ $96.15 = 100/1+0.04
- Yield (looking forward): $1 + 0.04 = 100 / 96.15$
- Return (looking backward): $1 + 0.04 = \frac{100}{96.15}$

Bonds usually package of multiple CFs: 4yr, §6.5 each year for 4, then §100.

• Price today ($99.658) embeds separate price for each CF

$$
9 9.658 = \frac {6.5}{\left(1 + z _ {1}\right)} + \frac {6.5}{\left(1 + z _ {2}\right) ^ {2}} + \frac {6.5}{\left(1 + z _ {3}\right) ^ {3}} + \frac {6.5}{\left(1 + z _ {4}\right) ^ {4}} + \frac {100}{\left(1 + z _ {4}\right) ^ {4}}
$$
- z for zero rate instead of yield

If we hold for only 3yrs, then still have $z_{4}$ in future, it may change
- If we re-sell at yr 3, then return may be different than promised yield

## Yield Is Future, Return Is Past
Yield is what you would earn, looking to the future: Yield is Hope

Return is what you did earn, holding over the past: Return is Experience

Example: 4yr $6.5\%$ coupon bond, $\mathrm{P} = 99.658$, all zeros same $= \mathrm{yld} = 6.60\%$

$$
9 9.658 = \frac {6.5}{(1 + y _ {a b})} + \frac {6.5}{(1 + y _ {a b}) ^ {2}} + \frac {6.5}{(1 + y _ {a b}) ^ {3}} + \frac {6.5}{(1 + y _ {a b}) ^ {4}} + \frac {100}{(1 + y _ {a b}) ^ {4}}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/57b2cf24e839048dcef9860143ed98891178fa1c40427dba6daf2c023f5d7865.jpg)

Yield: what you would earn, holding until end: $6.60\%$

Standard TVM calculation for yield

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 4 & & -99.658 & 6.50 & 100 \\ \hline
Solve & & 6.60 & & & \\ \hline
\end{tabular}
\end{document}
```

Yield: would price be at year 3?
- If Yld for yr 4 is $6.60\%$, price at yr 3 = $99.91

How to calculate price at yr 3? Easy - TVM with $\mathbf{N} = 1$, $\mathbf{yld} = 6.60\%$

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 1 & 6.60 & & 6.50 & 100 \\ \hline
Solve & & & -99.91 & & \\ \hline
\end{tabular}
\end{document}
```

But what if sell at yr 3, Sell at $98?
- Yld for yr 4 now $8.67\%$, different than original $6.60\%$

Again, use TVM to ask for yield, if $\mathbf{PV} = -98$

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 1 & & -98 & 6.50 & 100 \\ \hline
Solve & & 8.67 & & & \\ \hline
\end{tabular}
\end{document}
```

Hold to year 3, sell for $98, earn what?

What you earn by holding for 3yr and selling at $98?
- Hold to year 3, sell for $98, earn 6.00% for yrs 1-3

Again, TVM but now FV = 98 (sell at 98 at yr 3) return = 6.00%: What you earn by holding for 3yr and selling at $98

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
 & N & I\%YR & PV & PMT & FV \\ \hline
Given & 3 & & -99.658 & 6.50 & 98 \\ \hline
Solve & & 6.0 & & & \\ \hline
\end{tabular}
\end{document}
```

The idea of Promised Yield (or yield, or interest rate, or discount rate) versus Holding Period Return is always difficult to understand and to explain.

The basic idea is:
- Promised Yield looks forward, what you are promised
- Holding Period Return looks backward, what you actually earned

The question is, "Why are they ever different" and there are two reasons:

I. Promises get broken: you aren't paid what was promised. Or, more generally, you may not be promised one specific value - there may be a range of possible future CFs and when one of them happens, that is what you earned.
- But we don't know how to deal with broken promises or uncertain CFs (a range of values). We get to that in a couple weeks.

II. For now the more important reason is that most bonds, most assets we look at, are a package of CFs spread over time with multiple yields (prices for future CFs). Prices change over time, and if we sell part-way, our Holding Period Return (what we have earned) reflects the change in prices.
- For the simple analysis with the budget line we pretended there was just today vs tomorrow ($c_{1}$ vs $c_{2}$) and only one yield or discount factor $(y$ or $1 + y)$.
- In real life we deal with CFs spread over time: $c_{1}$, $c_{2}$, $c_{3}$,.... We have one yield or discount factor for each: $y_{1}$, $y_{2}$, $y_{3}$,....

The slide above works through an example (4-yr bond) where we sell part-way through (after 3 years).
- At the start all the intertemporal prices (the discount rates or yields or zero rates) are the same, $6.60\%$.
 • But at $y_{3}$ the price for yr 4 has changed a lot, to 8.67% (you sell 1yr bond at $98).
- The yield has gone up so the price has gone down. If the yield had stayed at $6.60\%$ you would be able to sell at $$ 99.91$. Instead you sell at $$ 98$. You lose.
- The result is that over the first 3 yrs you earn only $6.00\%$, not the $6.60\%$ you were promised.

The reason: you didn't hold all the way, you sold at year 3, and you sold for a low price.

### 4.3 Irr (Internal Rate Of Return)
Yield & IRR Look Similar - Fundamentally different Ideas

Bond Yield (Yield-to-Maturity) translates $ Price into %y Price:

$$
\mathbf {P r i c e} = \frac {\mathbf {P M T}}{(1 + y)} + \frac {\mathbf {P M T}}{(1 + y) ^ {2}} + | | | + \frac {\mathbf {P M T}}{(1 + y) ^ {N}} + \frac {\mathbf {F V}}{(1 + y) ^ {N}}
$$
- Bonds trade in markets, Price set by Market: Bond Price Market Discount Rate (Yield)
• Two ways of expressing the market price – $ or %yld

Internal Rate of Return (IRR) equation looks similar:

$$
\mathbf {C F} _ {0} = \frac {\mathbf {C F} _ {1}}{(1 + \mathbf {I R R})} + \frac {\mathbf {C F} _ {2}}{(1 + \mathbf {I R R}) ^ {2}} + | | i | | + \frac {\mathbf {C F} _ {\mathbf {N}}}{(1 + \mathbf {I R R}) ^ {\mathbf {N}}}
$$

But fundamentally different

IRR generally used for non-traded projects, a tool for asking "is project valuable?"

High IRR thinking "high return, valuable, worth doing"
- Fundamental issue: $\mathsf{CF}_0$ is not the price or PV set by markets, simply the initial investment
- Sometimes IRR gives us a reasonable answer, sometimes it is misleading

IRR Can Be Misleading - Simple Project Example

Today $(\mathbf{yr} = 0)$

Build Factory

Tomorrow $(\mathbf{yr} = 1)$

Produce product, earn profits

Next yr $(\mathbf{yr} = 2)$

Tear down factory, dispose of waste

$$
C F = C o s t = - $ 100
$$

$$
C F = \text {P r o f i t} =
$$

$$
C F = C o s t = - $ 136
$$

$$
- $ 235
$$

IRR formula:

$$
\mathbf {C F} _ {0} = \frac {\mathbf {C F} _ {1}}{(1 + \mathbf {I R R})} + \frac {\mathbf {C F} _ {2}}{(1 + \mathbf {I R R}) ^ {2}} + \mid \mid + \frac {\mathbf {C F} _ {\mathbf {N}}}{(1 + \mathbf {I R R}) ^ {\mathbf {N}}}
$$

$$
100 = \frac {235}{(1 + I R R)} + \frac {- 136}{(1 + I R R) ^ {2}}
$$

So let's solve this, with our handy HP calculator and CF menu
- <Blue> Main / FIN / CFLO / <Blue> Clear Data
- 100 INPUT / 235 INPUT / -136 INPUT / CALC
- 10 i% [starting guess] / IRR% [calculation] 3.14%
- 20 i% [starting guess] / IRR% [calculation] 31.86%

Big problem - two solutions: $3.14\%$ and $31.86\%$
- Which is right? Both

Fundamental problem: IRR gives multiple solutions
- Is this project really low return (3.14%) or really high (31.86%)?

## Irr Is Asking Wrong Question
IRR asks wrong question.

Instead of IRR, use market discount rate (yields) to calculate NPV (adding up CF today and PV of future CFs)
- Ask "What is market value (NPV) if discount rate (yield) were $y$ ".

$$
\mathbf {N P V} = \mathbf {C F} _ {0} + \frac {\mathbf {C F} _ {1}}{(1 + \mathbf {y})} + \frac {\mathbf {C F} _ {2}}{(1 + \mathbf {y}) ^ {2}} + \text {i i} + \frac {\mathbf {C F} _ {\mathbf {N}}}{(1 + \mathbf {y}) ^ {\mathbf {N}}}
$$

$$
\mathbf {N P V} = - 100 + \frac {235}{(1 + \mathbf {y})} + \frac {- 136}{(1 + \mathbf {y}) ^ {2}}
$$

For our example: If $y = 10\%$, NPV = $1.24. If $y = 2\%$, NPV = -$0.33

Calculating market discount rates is really hard - firm cost of capital in corporate finance courses

## Yield & Irr Look Similar - Why Use Yield But Not Irr?
Two important facts about bonds:

I. Bond CFs are all negative today (pay a price) and positive tomorrow (earn coupons and principal)
- When future CFs are all the same sign, there is a single solution for yield (and IRR)

II. Even more important, markets give us the price
- Using market prices to uncover market discount rate (yield)

Bond Yield (Yield-to-Maturity):

$$
\mathbf {P V} = \frac {\mathbf {P M T}}{(1 + \mathbf {y})} + \frac {\mathbf {P M T}}{(1 + \mathbf {y}) ^ {2}} + \text {i i i} + \frac {\mathbf {P M T}}{(1 + \mathbf {y}) ^ {\mathbf {N}}} + \frac {\mathbf {F V}}{(1 + \mathbf {y}) ^ {\mathbf {N}}}
$$

Bond Price Yield - single solution, only one yield for each price

Bonds trade in Financial Markets, Price set by Market
- Yield is Market Discount Rate (Expected Return, Required Return)

## Bond & Money Markets
Lecture 2

Thomas S. Coleman

March 22nd, Draft March 24,2023

LaTeX Warning: Empty 'thebibliography' environment on input line 8.

## 1 Procedural

## Procedural
- Groups
- Form your own Groups on Canvas (under "People"), 3 or 4
- By Friday.
- Sheet if you want to be assigned
- Remember Name Tents

## 2 Introduction – According To Cecchetti & Schoenholtz “Money, Banking, And Financial Markets”

### 2.1 Financial Instruments

## Six Parts Of The Financial System
I. Money
II. Financial Instruments
III. Financial Markets
IV. Financial Institutions
V. Regulatory Agencies
VI. Central Banks

This course focuses on 2,3,4
- Cecchetti & Schoenholtz has a nice overview - their Ch 3 (Ch1 in ebook)

## Financial Instruments / Securities
- A financial instrument is the legal obligation (contract) to transfer something of value at some future date
- Usually transfers of money (versus, say, labor contract which is about labor)
- Very general definition
- Easier to see in examples:
- Bond: government or corporation promises to pay fixed cash flows at specific dates
- Stock or equity: corporation promises to pay portion of profits (if there are any)

Can become very complex - but underlying ideas simple:
- Transfer cash today vs tomorrow (discounting)
- Transfer risk

## Uses Of Financial Instruments
I. Means of Payment
- For purchase of goods and services
- Bank deposit (checking account) is a financial instrument. Use to pay for all kinds of things.
- Electronic funds transfers, use bonds or stocks to pay

II. Store of value
- Transfer value from today into the future
III. Transfer of risk - between people or over time
- Options, swaps, futures. Insurance contracts

## Examples: Financial Instruments We Care About See Cecchetti P 53
I. Government bond. Corporate bond.
II. Equity
III. Foreign Exchange
IV. Bank demand deposits (checking account) - loan to a bank
- Keep Money a little separate
- Another course (History of Financial Crises)

## Bond - Government Or Corporate
- Promises to pay fixed CFs, at fixed dates
 - Example: $6.50 every year for 4yrs, then $100
- Doesn't have to be fixed CFs (could float up and down) but most bonds
- Store of Value: Transforms current value into future value
- Need to use discounting and PV
- May involve risk
Corporation promises to pay back, but may break promise

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/548fb2bd742716f157f2a3b56ba5c2eb2a0ad3df7f9f1b8b74c38c02427ae740.jpg)

## Good Example Of "Financial Instrument"
- Promise to pay you something of value
- Usually pays "money" (dollars) - but not always - gold clause in bonds prior to 1933
- You need to give up something today to get this
- Can sometimes use as payment

Government bonds OK
Corporate bonds poor
- Why? Need to study company to decide how valuable, whether company will pay in future
- Not good as "money" - whatever that is

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/4375e2f98fe8383dbd29500d2803c3fa7614f75459367df7c88afa5db94ceafe.jpg)

## Equity
- Called "Equity" or "Stock"
- Promise of company (corporation) to pay profits as dividends
- As with bond, transforms current value into future value
- But unlike bond, no promises on how much - just paying out profits

## Foreign Exchange (Fx)
- Buying and selling different currencies
- Think of buying US dollars currency, selling British pounds
- Buy US $, Sell UK £
 - Sell US $, Buy Chinese ¥ (Yuan)
- As I have described, a financial transaction
- Actually, most FX transactions are instruments
- Agree to transfer currency in future - maybe 2 days, often 1 month or 6 months in the future (FX forward)

## Bank Demand Deposit - Loan
- Your bank or checking or deposit account
- Hold this for last, because it is so special
- We think of it and call it "money" - but really you are lending to the bank
  - You give money today, they promise to give it back
Special kind of loan, two special characteristics I. Promise to pay back on demand & at par - $1-per-$ 1 II. Upon default, pay first-come - first-served If you're late, you get nothing Strong incentive to get first in line - Bank Runs
- Very different than other loans (bonds)
- Regular bond-holders, upon default, get pro-rata share (assets divided according to payment hierarchy)

Money & Bank deposits - topic of my "History of Financial Crises"

### 2.2 Markets

## Market As "Information Processing Engine"
- Fundamental idea, throughout economics:
- When prices and markets are free and reflect demand & supply, they pull together a huge amount of information
- Prices convey information - all the information available to everyone - about the value of the thing and alternatives (see Hayek's 1945 address to AEA)
- Two additional benefits:
- Prices are free (or at least pretty cheap)
- Prices provide an incentive to act on the information
- Never, ever ignore market prices - believe markets
- If you disagree, you might be right but you are betting against many other smart people

Hayek, 1945 address to the American Economic Association:

A little reflection will show that there is beyond question a body of very important but unorganized knowledge which cannot possibly be called scientific in the sense of knowledge of general rules: the knowledge of the particular circumstances of time and place. It is with respect to this that practically every individual has some advantage over all others in that he possesses unique information of which beneficial use might be made, but of which use can be made only if the decisions depending on it are left to him or are made with his active cooperation. We need to remember only how much we have to learn in any occupation after our theoretical training, how big a part of our working life we spend learning particular jobs, and how valuable an asset in all walks of life is knowledge of people, of local conditions, and special circumstances. To know of and put to use a machine not fully employed, or somebody's skill which could be better utilized, or to be aware of a surplus stock which can be drawn down during an interruption of supplies, is socially quite as useful as the knowledge of better alternative techniques.

## Types Of Markets
Cecchetti & Schoenholtz p 57

Primary vs Secondary
- Primary: governments or companies sell new securities
- Secondary: we all buy and sell existing securities
- Centralized (auction) vs Over-the-Counter
- Centralized: Such as futures pits, where everyone gets together and prices set, usually by some auction process
- btw, I highly recommend the Eddie Murphy / Dan Akroyd 1983 movie "Trading Places" - good depiction of pit trading
- Over-the-Counter: individualized transactions between dealers and customers - US Treasury bonds
- Underlying vs Derivative
- Underlying: instrument based on an asset and promised CFs
- Derivative: based on some other price. Example: futures, option

## Primary Markets - Issuing
Issuers raise money by Issuing Securities

Investors

Security / Asset Class

Type of Market

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/28b81819c3b4c6070bb55a3cc7f68fe92afc20a5b94c15fe71bb18f669505376.jpg)

More details in week 5 or 6

## Secondary Market: Markets, Investors, Securities
Secondary Market: major locus or venue for investors to save and invest

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/98a852ba5e08d7e36b61df9bcdb8b1e6d61b9973e78bf6f5b8f364227d6a45fb.jpg)

More details in week 5 or 6

## Institutions
Cecchetti & Schoenholtz pp 66-67

## I. Banks
- Textbook Depository Institutions (1), Finance Companies (5)
- I group these together because they both take short-term loans from the public and convert to long-term. Important regulatory differences, but economic & financial functions similar. Maybe also GSEs.
Finance Companies often thought of as "shadow banking"

II. Broker Dealers or Securities Firms
- Textbook Securities Firms (4)

III. Investment Managers and Pensions
- Textbook Pension Funds (3)
- Investment management terribly important, and under-represented in texts

IV. Insurance Companies
- Textbook Insurance Companies (2)

V. Central Banks
- Textbook not included, but an important part of the financial industry

## 3 Introduction To Asset Classes & Securities

### 3.1 Overview - Bodie, Kane, Marcus Chapter 2

## Asset Classes - Overview
Bodie, Kane, Marcus Chapter 2

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/161b270b8ec0474e2720367a372eab0148e06672e0d58d0733a8490d96ca5b98.jpg)

## Asset Classes - Fixed Income
Money Markets: short-term; Bond Markets: long-term

We start on bonds and discounting today

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/3c2dbec7d9c6f0777bf1550b3dcb6930dabed558f1f7dc51e5100534ed465de9.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/3e8764f66b6f288d84f4197390804269c93f61c7ae86f50bd824f42ab88cec3a.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/891e2d4b03c81ba25e23354c45569a77f2dff04b54ee8d89fe7bdc7e5da9b25e.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/0682a8e65bff0c2c33186fd57af03f48842d2a6be929297ebf83bc8a387734b6.jpg)

### 3.2 Introduction To Fixed Income
Short-Term (Money Markets) vs Long-Term ("Capital" or Bond Markets) Money Markets: Subsector of the fixed-income market

Short-term
Liquid
- Low risk
- Often large denominations
- Names like Deposits, Fed Funds, Treasury Bills, Commercial Paper

Bond Markets: Subsector of the fixed-income market
- Long-Term
Liquid
Usually Low risk (but not as low as the Money Market)
- Names like US Treasury Note, Treasury Bond, Government Bond (UK Gilt, German Bund, French Tresor), Corporate Bond, Eurobond, Yankee Bond, Mortgage Bond, Debenture

## Fixed Income Or Debt Or Bond
Receive money today, promise to pay back in future
- Payment fixed by contract, thus "fixed income"

## Variety Of Characteristics
- Obvious: maturity, freq, coupon
- Seniority (where in pay-back line)
- Security (assets pledged)
- Maturity: short-term or long-term
- Securitization (corporate versus asset-back or mortgage-backed)
- Callability

## Covenants (Restrictions On Behavior)
- Debt ratios (how much debt)
- Dividend payouts
Events

## Ust Or Fis Are Simple Examples

![](Https://Cdn-Mineru. Openxlab. Org. Cn/Result/2025-11-15/3C07Ddea-Cb45-4Eb2-Bd23-F544B33F30B6/35Ebf29781Aac48A52416C98403C5C94572E75860D512F3Fbf4Bcf081B6C7A2E. Jpg)

## Seniority, Security, Securitization

## Mortgage Bonds (Senior)
- Long-term secured debt often containing claim against specific building or property

## Debentures (Junior)
- Long-term unsecured issues on debt

## Collateral Trust Bonds
Secured by common stocks or other securities owned by borrower

## Equipment Trust Certificate
- Form of secured debt used to finance railroad equipment
- Trustee retains ownership of equipment until debt is repaid

## Securitization
- Asset-backed (eg car loans, credit-card loans)
- Mortgage-backed

## Variety Of Bonds

![](Https://Cdn-Mineru. Openxlab. Org. Cn/Result/2025-11-15/3C07Ddea-Cb45-4Eb2-Bd23-F544B33F30B6/C6Fb9E99A9510Aeea0338930Ef73342De1Ee205F7C65D891B3A3Fc5Ae3A9B2F0. Jpg)

## Sample Terms (Jc Penny) 26,1992
```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
Issue date & August 26,1992 \\ \hline
Amount issued & $250 million \\ \hline
Maturity & August 15,2022 \\ \hline
Denomination & $1,000 \\ \hline
Interest & 6.25\% per annum, payable February 15 and August 15. \\ \hline
Offered & Issued at a price of 99.489\% plus accrued interest (proceeds to company 98.614\%) through First Boston Corporation. \\ \hline
Registered & Fully registered. \\ \hline
Trustee & Bank of America National Trust and Savings Association \\ \hline
Security & Not secured. Company will not permit to have any lien on its property or assets without equality and ratably securing the debt securities. \\ \hline
Seniority & Ranks part passu with other unsecured unsubordinated debt. \\ \hline
Sinking fund & Annually from August 15,2003, sufficient to redeem $12.5 million principal amount, plus an optional sinking fund of up to $25 million. \\ \hline
\end{tabular}
\end{document}
```

## 4 Tvm & Pv As Framework For Fixed Income

## Before "Bond Markets" - It'S All Pv
Wide variety of bonds, money markets, etc.
- They are all Cash Flows, calculate present value:

$$
P V = \frac {C F}{(1 + y)}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/b1ac3ac794f8a062629eaf923d6ae55798c625805a8e441adffd11188812fc38.jpg)

## Pv & Tvm (Time Value Of Money) Comes From Micro I, Budget Line:
Simple Budget Line
- Cover again Lecture 3
- Simple, but most important idea in finance

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/4c6fd8ed1194e8ad98df52dbbd02ab362eddbe50d52485bdeb31ebb9377cacdf.jpg)

### 4.1 Unpacking The Budget Line

## Unpacking The Budget Line: Pv, Fv, Discounting
Budget line - Start with 2 periods linked by savings: put in $1, get$ 1(1+y)
- Start with no borrow / lend: $\mathrm{s} = 0$ - single point
- Next allow lending: $s > 0$, extend line upper left (eliminate $s$ )
- Finally borrowing & lending: $s < > 0$, full budget line

$$
\mathsf {p} _ {1} \mathsf {c} _ {1} = \mathsf {m} _ {1} - \mathsf {s}; \mathsf {p} _ {2} \mathsf {c} _ {2} = \mathsf {m} _ {2} + (1 + \mathsf {y}) \mathsf {s}
$$

$$
\mathsf {p} _ {1} \mathsf {c} _ {1} + \mathsf {p} _ {2} \mathsf {c} _ {2} / (1 + \mathsf {y}) = \mathsf {m} _ {1} + \mathsf {m} _ {2} / (1 + \mathsf {y})
$$

$$
\mathbf {p} _ {1} \mathbf {c} _ {1} | (1 + \mathbf {y}) + \mathbf {p} _ {2} \mathbf {c} _ {2} = \mathbf {m} _ {1} | (1 + \mathbf {y}) + \mathbf {m} _ {2}
$$
- Can write as $\mathbf{PV}$: $m_2 / 1 + y$ or $\mathbf{FV}$: $m_{1} \mid (1 + y)$
Budget line same either way
- In FV form income higher, but so are "prices"
- Note - have not used Indifference curves - works for everyone

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/c45c7f99537d6d76a1d45eabfd2052c3a829f3050fa8c0360958e0eb05322434.jpg)

## Right Hand Side Gives Pv, Fv & Discounting
$$
R H S: \begin{array}{l} P V: m _ {1} + m _ {2} / (1 + y) \\ F V: (1 + y) _ {i} m _ {1} + m _ {2} \end{array}
$$

The RHS gives us the correct measure of income

Today's money we call Present Value or PV
Tomorrow's money we call Future Value or FV

## $1 + Y$ Price Between Today & Tomorrow
- interest rate, discount rate, yield, IRR, expected return

This is the single most important idea in finance
- If you understand this you understand most of finance
- But I've spent most of my career learning, thinking, studying PV

A little like building a bridge: the physics is easy but the engineering is hard

I. Unpacking the budget constraint: PV, FV, nominal & real rates
- This budget constraint tells us everything we need to know about discounting, PV, FV, nominal rates, real rates. In fact everything we need to know about TVM (for certain - known - CFs).
- But we need to unpack this budget constraint, and think about it a little carefully.
- Once we do that we will then use the ideas of discounting, PV, FV, etc. to examine every aspect of modern finance.
- We will talk about bonds and discounting over multiple periods. About compounding and variable periods (rates per month, half-year, year). About nominal rates vs real rates. But the ideas all come back to this simple picture and simple budget line. (Have I ever said how wonderful budget lines are? I used to think they were really boring, but I've come to appreciate that a good part of economics is just thinking carefully about budget lines.)
- $\mathbf{PV}$: So let's start by looking at the RHS or the budget constraint: $p_1c_1 + p_2c_2 / (1 + y) = m_1 + m_2 / (1 + y)$. The RHS says that the income for the budget line is the sum $m_1 + m_2 / (1 + y)$. We call this the Present Value, and it is the correct measure of income when we look at any set of CFs across time - we always need to discount future amounts (future CFs) back to today by $1 / (1 + y)$.
- This is the most important, maybe the only important thing, you will learn in this course: how to calculate and think about PVs.
- PVs matter and only PVs matter. Nothing else you learn in finance is as important as this. In fact, there really is not much else in finance except PV
- Three-quarters of this course is simply calculating $\mathsf{m}_1 + \mathsf{m}_2 / (1 + y)$. This becomes very complicated: What are the CFs? When are the CFs? What is the rate $y$? How do we quote the discount rate $y$ and how do we calculate the discounting $1 / (1 + y)$? How do we get an appropriate rate?
- But it all comes down to $\mathbf{PV}$: $m_1 + m_2 / (1 + y)$.
- $\mathbf{FV}$: the expression $m_1 + m_2 / (1 + y)$ expresses income in terms of period-1 money. But we could also write the budget line in terms of period-2 money:

$$
\mathsf {p} _ {1} \mathsf {c} _ {1} \mid (1 + \mathbf {y}) + \mathsf {p} _ {2} \mathsf {c} _ {2} = \mathsf {m} _ {1} \mid (1 + \mathbf {y}) + \mathsf {m} _ {2}
$$

Now the RHS is the FV: $\mathfrak{m}_1 \mid (1 + \mathfrak{y}) + \mathfrak{m}_2$. FV is in terms of tomorrow's money (PV is today's money). For the budget line it is totally irrelevant, since it increases the income but also the prices on the LHS - the budget line does not change. $(\mathfrak{p}_1 \quad \mathfrak{p}_1 \mid (1 + \mathfrak{y}) \& \mathfrak{p}_2 / (1 + \mathfrak{y}) \quad \mathfrak{p}_2)$

II. The term $(1 + y)$ or $1 / 1 + y$ is the price between today and tomorrow.
- For every $1 today, we get 1+y next period. For one year, y will be something like 0.04 or 4%.
- The term $1 / 1 + y$ is called the discount factor: it tells us how much $$ 1$ next period is worth today (it will be less than $$ 1$, discounted)
- y is called the interest rate, discount rate, yield, yield-to-maturity, IRR (internal rate or return), expected return. These all mean slightly different things.

## 5 Bond Market - Size And Variety

## Asset Class Comparison (Us)
Remember the different asset classes we discussed

Focusing on Bond Market now - compare US Bond & Equity

Each one is huge, relative to annual GDP
- Bond Market bigger than Equity (plus Money Markets)
Bonds: $41.0 trn
Equity: $30 trn
 GDP (flow): $19.39 trn

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/d9357aa76d34029a8340ccabb97e5b890c9bad42629c168fb6916f892fdb3611.jpg)

Bond market is for 2017, Corporates, MBS, ABS, UST, Muni, from sifma:
 https://www.sifna.org/resources/research/bond-chart/

Equity market is January 2018, quoted from Barrons.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/41d61d2360855ce1a1d89a6c037fb5a482c7022a846a2e91e82714ad26024fd3.jpg)

Bond Market and Sub-Sectors

US Bond Market Overview

```latex
\begin{document}
\begin{tabular}{|c|c|c|}
\hline
Sub-sector & Strn in 2017 & \\ \hline
Corporate & 9.0 & Issued by corporations, usually 5-10 years maturity but can be 30, even 100yrs. Usually callable, with sinking funds. At risk of default \\ \hline
Mortgage-Backed Securities (MBS) & 9.3 & Home mortgages, (also commercial, smaller), pooled together, repackaged, and sold as a bond. ( “Securitization” ) These pay down or pre-pay (amortize) unlike Corporates or UST (bullet).
Prepayments vary with interest rates – really difficult. \\ \hline
Asset-Backed Securities (ABS) & 1.5 & Like MBS but pooled assets are credit card receivables or car loans or student loans \\ \hline
US Treasuries & 14.5 & What we will study now \\ \hline
Municipal & 3.9 & Issued by state governments or cities \\ \hline
Total & 41.0 & \\ \hline
\end{tabular}
\end{document}
```

### 5.1 Us Treasuries

## Focus On Us Treasury Market To Start
US Treasuries are known CFs - promised CFs certain to be paid

For valuation, etc., focus on only TVM, no uncertainty Learn various tools
- PV, FV, discounting
- Yield-to-maturity, yield curve, forward curve
DV01, BPV, risk and sensitivity

Three (really two): Bills, Notes, Bonds TREASURY BILLS
- Issued: 1 year or less (1mth, 3mth, 6mth, 1yr)
 Discount bill - pay $98 today, get $100 in 1yr

## Notes And Bonds
- Technically, notes issued 2-10 yr maturity, bonds $10+$ (30) yrs
- No difference except in name
- Pay $96 today, get coupon of$ 3 every year for the next 30 yrs
- Coupon paid every 6 mths ($1.50 every 6 mths)

## New Us Treasuries Issued Regularly
Col 1: Announcement Date - new issues trade When Issued (WI)

Col 2: Auction Date - coupon set, trade normally

Col 3: Settle Date - cash & bonds change hands (normally $T + 1$ )

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
4-Week H. E. L. & & Thursday, April 9,2017 & Thursday, April 9,2017 & Thursday, April 12,2017 \\ \hline
3-Week H. E. L. & & Thursday, April 9,2017 & Thursday, April 9,2017 & Thursday, April 12,2017 \\ \hline
2-Week H. E. L. & & Thursday, April 9,2017 & Monday, April 11,2017 & Thursday, April 14,2017 \\ \hline
2-Week H. E. L. & & Thursday, April 9,2017 & Monday, April 11,2017 & Thursday, April 14,2017 \\ \hline
3-Year NOTE & & Thursday, April 9,2017 & Monday, April 11,2017 & Monday, April 18,2017 \\ \hline
3-Year NOTE & III & Thursday, April 9,2017 & Wednesday, April 12,2017 & Monday, April 18,2017 \\ \hline
3-Year BOND & IV & Thursday, April 9,2017 & Wednesday, April 12,2017 & Monday, April 18,2017 \\ \hline
\end{tabular}
\end{document}
```

Week of April 5,2022 is busy:
- Bunch of bills issued
- New 3-yr note issued
10-yr note and 30-yr bond re-opened

## Long List Of Us Treasuries (Wsj, Spring 2021)

![](Https://Cdn-Mineru. Openxlab. Org. Cn/Result/2025-11-15/3C07Ddea-Cb45-4Eb2-Bd23-F544B33F30B6/A433Bd8Eb715Efeb1Ab797C440F37A80C0Bdf9A70654Ded74C3830530797Daf1. Jpg)

## These Bonds Were Issued Long Ago, Now Have Just A Few Weeks To Maturity
- Three bonds with 15-may-2021 maturity
- Those are old bonds - probably old 10yr and 30yr
- How do I know? Treasuries issued "at-par" with coupon current rate
- The 8.125s must have been issued 30yrs ago (1991) - rates have not been that high since
Note - price > 100. Why?

How do I know the $8.125\%$ of 15-may-21 was probably issued in 2009?
- It is an old bond, either 2,5,10, or 30.
- 5-year rates have not been $8.125\%$ for the past five years, so can't be an old 5-year
- 30-year rates were about $8.125\%$ in May 1991, so it was probably issued then
- Also, 10 & 30yr bonds (maybe 5s? - I don't think so) are issued with maturity date 15th

## Spring 2021 Current (On-The-Run) 30 Year (Long Bond)
```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
1/12/2021 & 2.375 & 96.1800 & 96.2000 & 2.0400 & 2.3200 \\ \hline
1/12/2022 & 2.000 & 88.2410 & 88.1640 & 1.9800 & 2.1400 \\ \hline
11/12/2022 & 1.875 & 84.0900 & 88.1300 & 1.9800 & 2.1700 \\ \hline
11/12/2023 & 1.330 & 94.0900 & 94.1200 & 1.9900 & 2.1200 \\ \hline
\end{tabular}
\end{document}
```

SmaT TaH1 Pahel

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/cabfac26e64764fb06446ac36dd03ba60af96fc25de1bece83f0b782f57405a6.jpg)

## What Is Bid & Asked?
- Bid: Price dealer pays (low - customer sells low)
- Ask (o er): Price dealer sells (high - customer buys high)

15-feb-2052: the current (on-the-run) 30-year bond

• 2.250% or $2.250/yr, $1.125 every 6mth
Coupon every 15-aug & 15-feb

## Seems Complicated
- But it's all PV of CFs
- Next lecture, start studying CFs

Spring 2021 OTR is 2.250s of 15-feb-2052 (issued February, re-opened Apr 7)
 http://www.wsj.com/mdc/public/page/2_3020-treasury.html

## What Is Bid & Asked?
- Bid: Price dealer is willing to pay (low price - customer sells low)
- Ask (offer): Price dealer requires to sell (high price - customer buys high)
- Customer always buys at the high price, sells at the low.
- Dealer makes money from the Bid/Ask spread

## Us Treasury Quotes From Wall Street Journal:
 http://www.wsj.com/mdc/public/page/2_3020-treasury.html

## Auction List From Https://Www. Treasury. Gov/Resource-Center/Data-Chart-Center/Quarterly-Refunding/Documents/Auctions. Pdf

### 5.2 Other Bonds - Us Agency, Other Gov'T Bonds (Uk, Germany, Japan) Contents

## Agency Bonds & Government Sponsored Enterprises (Gses)
Long history of GSEs (FHLB 1932, Fannie Mae 1938, Freddie Mac 1970)
- Largest component: mortgages, subsidize market, encourage home ownership
- Federal Home Loan Banks, Fannie Mae, Freddie Mac, Farmer Mac, Farm Credit System, the Financing Corporation, and the Resolution Funding Corporation.

End 2017, debt outstanding - total $8.9trn:

$0.02trn Budget Agencies (e.g. TVA) - "on-budget"

$6.7trn GSEs - "off-budget"

$2.1trn Mortgage-backed pools - "off-budget"

Compares with US Treasury debt (held by public) about $12trn What is "on-budget" vs "off-budget"? Somewhat artificial distinction
- Learned that in 2008 take-over of Fannie Mae & Freddie Mac

GSEs: Federal Home Loan Banks, Fannie Mae, Freddie Mac, Farmer Mac, Farm Credit System, the Financing Corporation, and the Resolution Funding Corporation.

From Federal Reserve Flow of Funds ($z_{1}$):
- Table $L_{0}$0.103 end-2017 Debt Securities (GSE issues): $6,716.3bn
Table $L_{0}$0.211 end-2017:

$8,867.2bn Total of on-budget and o -budget

$24.4bn Budget Agencies such as Tennessee Valley Authority, Ex-Im Bank. Considered "on-budget"
$6,716.3bn Government Sponsored Enterprises (GSEs). Considered "off-budget" or "off balance sheet"
$2,126.6bn Mortgage-backed pools from Agencies & GSEs. Considered "off-budget"

This compares with about $12trn UST debt held by the public (and banks, etc). (from spread-sheet that takes apart FoF $L_{0}$0.210 - $14.9 marketable, $2.2 non-marketable ($17.1 total), but $2.4 held by Fed and $2.2 retirement funds)

The distinction between "on-budget" (an official obligation of the federal government and included in official deficit numbers) and "off-budget" (not officially an obligation and not included in official deficit numbers) is pretty artificial. Everybody kind-of knew that GSE debt was backed by the US government and we saw in 2008 that that belief was correct. Fannie and Freddie Mac (the two largest GSEs, involved in mortgage financing) were supposedly public companies but on September 7,2008 the government took them over and explicitly guaranteed their debt.

## Yields On Agency Bonds - Between Ust & Corporate
Agency bonds have some backing from US gov't, so less chance of default
- More chance than UST, less than Corporate bonds

Yields between UST & Corporate ("default risk" or "spread risk")

3.23% 10-yr UST
3.30% US Agency 10-20yr (spread 7bp)
3.91% Intermediate Corporate (spread 68bp)

Earn extra to compensate for chance of default (you don't get money back)
- Next lecture: start learning yield
- In a few weeks, learn about default risk & uncertain CFs
- This is an introduction to "spread": Y Idagency - Y IdUST, times 100
- "bp" is yield x 100: $3.30\%$ is 0.07% higher than $3.23\%$, or 7bp
- Spread measures default risk - extra for uncertainty of CFs

For 5-oct-18, From http://www.wsj.com/mdc/public/page/2_3022-bondbnchmrk.html?mod=topnav_2_3024 ("Bond & Index Benchmarks") and http://www.wsj.com/mdc/public/page/2_3021-bondyield.html?mod=topnav_2_302 ("Bond Yields" for UST) But note that I think there's a typo for "US Agency 10-20yr" - should be $3.30\%$ not $3.03\%$

3.227% 10-yr UST

3.300% US Agency 10-20yr (52 week spread 6-10bp)

3.910% Intermediate Corporate (spread 66-100bp)

The Agency bonds are between the UST and the Corporates in terms of chance of default. We haven't discussed default yet, but it is when you don't get paid back what you get promised. Remember that bonds are "promised CFs" – there is a contract that says what you should get paid. If the contract gets broken, that is default.

You should earn extra when there is a chance you won't get the CFs you have been promised, and a higher yield reflects the higher amount you expect to earn. We will discuss default and risk-adjusted discounting and risk-adjusted yields in detail, but for now we will just look at the quoted yields and note that the US Agency yield is higher than the UST and lower than the Intermediate Corporate.

The spread – the difference between yields – is the appropriate measure of default risk as we will see in a week or two. The UST yield is the pure TVM discount rate, reflecting the pure trade-off between today and tomorrow for known CFs. The Agency and Intermediate Corporate also have a component that reflects the uncertainty (the fact you might not get your CF). The higher yield or discount rate is the risk-adjusted discount rate. The difference or spread is a measure of the default risk.

## Other Government Bonds
Every developed and many (most) developing nations have bonds. Ideas are virtually all the same:

Periodic coupon, with final 100 payment
- Some pay annual coupon, others semi-annual

List of some:

UK Gilts (for "Gilt-Edged" stock")
- French BTAN (1-6yr) and OAT (Obligations assimilables du Trésor) 7 to 50 year
- German Bunds (Schatz, Bobls, Bunds)
Italy BTPs

My "Practical Guide to Bonds and Swaps" (https://papers.ssrn.com/abstract=1554029) covers the various conventions. Many, however, have changed and are now A/A.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
Security & Coupon Freq & Day-count Basis & Notes \\ \hline
US Treasury Bonds & Semi-annual & Actual/Actual & 1 day settle \\ \hline
US Corporate Bonds & Semi-annual & 30/360 & \\ \hline
UK Gilts & Semi-annual & Actual/Actual & 1 day settle \\ \hline
British Domestic Bonds & Semi-annual & Actual/365 fixed?? & \\ \hline
French OATs &amp; BTANs & Annual & Actual/Actual & Intern&\#$x_{27}$;l settle Euroclear \\ \hline
German Bunds &amp; BOBLS & Annual & Actual/Actual & Intern&\#$x_{27}$;l settle Euroclear \\ \hline
JAPanses JGBs & Semi-annual & Actual/365 fixed (not A/A) & Yield quoted simple \\ \hline
Dutch Gov. bonds (Guilders) & Annual & Actual/Actual & \\ \hline
Canadian Gov. bonds & Semi-annual & Actual/365 fixed (not A/A) & Yield quoted A/A, AI goes neg \\ \hline
Australian Gov. bonds & Semi-annual & Actual/Actual & \\ \hline
Italian Gov. bonds & Semi-annual & Actual/Actual & Yield quoted annual basis, AI has one extra day added \\ \hline
Eurobonds & Annual & Actual/Actual & Prior to 1999 30E/360 \\ \hline
\end{tabular}
\end{document}
```

Sources for conventions:
- http://treasurytoday.com/2001/11/day-count-conventions
- I'm not sure they are right in their definition of A/365(F) and A/365 (that they say is same as A/A). I think maybe there is some confusion between mm conventions (A/360 and A/365) and bond conventions (A/365(F) and A/A)
- They say that Eurobonds have switched from 30E/360 to A/A
- For Canadians: http://iiac.ca/wp-content/uploads/Canadian-Conventions-in-Fixed-Income-Markets-1.1.pdf
- For German Bunds: http://help.derivativepricing.com/1296.htm
- Wide variety: http://help.derivativepricing.com/1571.htm

## 6 Money Markets

### 6.1 Overview

## Money Markets - Short-Term Debt
Money Markets: short-term; Bond Markets: long-term

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/c7f22c4318423baae25e904186a0191e421376283ee557691d222a0538079523.jpg)

## Money Markets - Short-Term Debt
Subsector of the fixed-income market

Short-term
- Liquid
- Low risk
Often have large denominations

UST: TBills (0-1yr), about $14\%$ of all gov't debt

From Fed Reserve Flow of Funds ($z_{1}$):
- Table $L_{0}$0.210,2018:$Q_{2}$. Total Marketable UST $14,933.7bn, TBills $2,157.4bn (14.4%)

## Major Components Of The Money Market
Money Markets: short-term; Bond Markets: long-term

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
 & $ billion \\ \hline
Small-denomination time deposits &amp; savings deposits (individuals) & $8,991 \\ \hline
Money market mutual funds (individuals &amp; corporations) & 2,716 \\ \hline
Large-denomination time deposits (corporations &amp; banks) & 1,865 \\ \hline
Commercial paper (corporations) & 1,120 \\ \hline
Federal Funds &amp; repurchase agreements (banks) & 3,748 \\ \hline
Treasury bills (gov’t) & 1,527 \\ \hline
TOTAL & $18,967 \\ \hline
\end{tabular}
\end{document}
```

For 2015, from Bodie, Kane Marcus, from Flow of Funds

For comparison, total US bond market in 2017 $41,020bn

These numbers are from a table in Bodie, Kane, Marcus. They give source as "Flow of Funds Accounts" from the Board of Governors of the Fed (the $z_{1}$ report). I started tracking down and the relevant tables appear to be $L_{0}$0.205-$L_{0}$0.210. I couldn't find the split between large & small time deposits but otherwise rough match.

### 6.2 Types Of Securities

## Various Types Of Securities
Treasury Bills (government)

Discount: pay $98 today for $100 in 1 year
- Quote: Bank Discount - above would be $2\%$.
Actual discount $=$ Quote * (AD/360)

Commercial Paper (corporations)

Discount like T-Bills

Certificate of Deposit (CD, banks)
- Add-on yield. Actual coupon = Quote * AD/360
- Can be small (for you & me) or large ( $>$ 100,000$)

Bank Deposits - Eurodollar Deposits (banks)
- Basically same as CD
- LIBOR - London Interbank Offered Rate: 11am (London) quote for Eurodollar deposit

## Cfs, Pv, And Quotes
Bewildering variety of securities & quotes - need to untangle simple CFs

```latex
\begin{document}
\begin{tabular}{|c|c|}
\hline
different securities & Slightly different CFs, quotes \\ \hline
T-Bill, Comm Paper & Discount: pay less today, get $100 at end \\ \hline
Cert of Depo, bank deposits & Add-on: pay $100 today, get $100+ at end \\ \hline
\end{tabular}
\end{document}
```

Think of security definition & quote as just a coded way to tell you CF

Example: Eurodollar deposit, $5\%$, 1yr
 - Eurodollar is a bank deposit, so put in $100 today, get $100+ at end
Code: CF = Quote * AD/360
• final CF = 100 + 5*365/360 = $105.069
- NB: typo in picture - should be 105.069

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-15/3c07ddea-cb45-4eb2-bd23-f544b33f30b6/d2fc08dd0012efea5f4a6abe5d4a1c5bc3748cfdbe5f2665e59a5266e747906e.jpg)

The trick with money-market securities, as with any fixed-income security, is to figure out the CFs. Then we can PV or do whatever we need to.

Virtually all money-market instruments (at least those with 1 year or less maturity) have a single future CF, with a diagram like the Eurodollar deposit above. A more detailed table (for US money-market instruments) follows. I know some of the quoting conventions but don't know others.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
Security & Issuer/Buyer & Quote & CF today & CF at end & Example (Q=5\%, 1yr) \\ \hline
Treasury-Bill & US Government, to investors &amp; other gov&\#$x_{27}$;ts & A/360 discount & 100 - Q | AD 360 & $100 & 94.9306 = 100 - 5 | 365 / 360 \\ \hline
Commercial Paper & Good-quality corporations, to investors & A/360 discount & 100 - Q | AD 360 & $100 & 94.9306 = 100 - 5 | 365 / 360 \\ \hline
Bank Deposit (eg libor) & Banks, to individuals and corporations & Add-on A/360 & $100 & 100 + Q | AD 360 & 105.059 = 100 + 5 | 365 / 360 \\ \hline
Certificate of Deposit (1yr &amp; less) & Banks, to individuals and corporations & complicated & $100 & complicated & complicated \\ \hline
Banker&\#$x_{27}$;s Acceptances & Corporations for international trade, to banks &amp; others & Discount & & $100 & \\ \hline
Bond repos (repurchase and reverse repurchase agreements) & Corporations &amp; Banks, to corporations &amp; banks & Complicated, usually add-on A/360 & & & \\ \hline
Federal Funds & Banks, to Banks & overnight, discount & & & \\ \hline
\end{tabular}
\end{document}
```

## Some Additional Short-Term Debt
Money Market Funds
- Individuals and corporations put money into MMF
- MMF then buys other short-term debt (such as T-Bills or CP)
- We use them like checking (deposit, bank accounts)
- History: developed in response to Req-Q restrictions

Checking Account (bank deposit)

Usually think of this as "money"
- But better to think of lending money to a bank

## References