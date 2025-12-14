---
aliases: Credit Default Swap
tags:
key_concepts:
parent_directory: Analysis
cssclasses: academia
title: Chapter 7 - Credit Default Swap
linter-yaml-title-alias: Chapter 7 - Credit Default Swap
---

# Chapter 7

# Credit Default Swap

# 7.1 Introduction

Credit default swap (CDS) is one of the greatest Wall Street innovations in history. For the first time, investors can transfer unwanted credit risk at a price. Conversely, for those who seek yield enhancements, it provides an additional vehicle.

Even since its introduction in mid 1990's, the growth of the CDS market has been exponential. Although suffered a short cutback after the 2008 Lehman crisis, the market has rebounded and stayed healthy ever since.

According to ISDA, a credit event can be one of the following:

1. failure to pay
2. restructuring,
3. repudiation/moratorium.
4. default

There are two main budling blocks for the evaluation of CDS: probability of default (PD) and loss given default (LGD) which is also known as 1 minus recovery. There are two streams of models for the evaluation of CDS: reduced form models and structural models. The former assumes sudden defaults and the latter assumes gradual defaults. As a result, reduced form models assume a Poisson jump process for defaults and structural models assume firm value falling below a default threshold.

# 7.2 The Contract

It is a swap (follows swap convention) and yet it does not quite follow the swap conventions. Its floating leg is one payment and furthermore probabilistic. Its fixed leg is quarterly (not semi-annually). Figure 7.1 demonstrates the payments of the two legs of a CDS contract.

The fixed leg payments are similar to a standard fixed-floating swap. The floating leg, on the other hand, differs slightly from the standard fixed-floating swap. Not only is the only payment random, it is also (probabilistically) unlikely to happen. The payment of the floating leg occurs only if default occurs, which is an unlikely event.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/f28a2f9bc3db962f1d50a09177c645cab772d29b09993a196cc93d3abe9e8b46.jpg)

Figure 7.1: Two Legs of CDS

# 7.2.1 CDS spread

$$ s (t, T _ {n}) = \frac {\sum_ {i = 1} ^ {n} P (t , T _ {i}) [ Q (t , T _ {i - 1}) - Q (t , T _ {i}) ]}{\sum_ {i = 1} ^ {n} P (t , T _ {i}) Q (t , T _ {i})} \tag {7.1}
$$

# 7.2.2 CDS as a Perfect Hedge to Corporate Floaters

That is why the fixed payment is called "spread".

# 7.2.3 CDS as a Put Option

But there is a big difference. Put options also carry market risk (CDS also do but relatively much smaller).

# 7.2.4 CDS as an Insurance Policy

That is why the fixed payment is called premium. Note that put options are like insurance policies and price is also called premium.

# 7.2.5 CDS as short Credit (Bond)

CDS is not a perfect hedge to fixed rate corporate bonds, but close enough.

# 7.3 Bootstrapping

Please see my Global Risk Management: A Quantitative Guide lecture notes Chapters  $13\sim 15$

# 7.4 Big Bang

After the Big Bang, single-name CDS follow the index quoting convention and hence no longer is a pure swap contract.

Consider a CDS contract on Bank of America with notional value of 10M dollars. The quoted 5Y CDS spread is 326 basis points. A protection buyer needs to

Before the Big Bang: pay 326,000 per year fixed 500: receive  $756,788 upfront and pay$ 500,000 per year

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/c3f2563edb5600f90e6c491cccfe5c9e2e935a5204694028907afc2302ea3819.jpg)

Figure 7.2: Before the Big Bang

After the Big Bang: fixed 100: pay $990,254 upfront plus $100,000 per year

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/e94b3cc5e6659967c98a295b110ddd1d7c7062971fd95f05e9728486242d06c8.jpg)

Figure 7.3: After the Big Bang

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/e47ecad725309fb1f2a62b29de1af5c9488d2b04e0841a1a54cee9642a1bd2ec.jpg)

Figure 7.4: After the Big Bang

# 7.4.1 Upfront, Running Spread, and Par Spread

There are two running spreads: 100 basis points and 500 basis points for high grade and high yield respectively.

Due to running spread, the upfront can be negative.

$$
\begin{array}{l} V _ {\mathrm {p r o t}} = V _ {\mathrm {p r e m}} \\ (1 - R) \sum_ {i = 1} ^ {4 n} P (t, T _ {i}) [ Q (t, T _ {i - 1}) - Q (t, T _ {i}) ] \\ = \frac {s}{4} \sum_ {i = 1} ^ {4 n} P (t, T _ {i}) Q (t, T _ {i}) \\ = \left\{ \begin{array}{l} U _ {\mathrm {H G}} + \frac {0 . 0 1}{4} \sum_ {i = 1} ^ {4 n} P (t, T _ {i}) Q (t, T _ {i}) \\ U _ {\mathrm {H Y}} + \frac {0 . 0 5}{4} \sum_ {i = 1} ^ {4 n} P (t, T _ {i}) Q (t, T _ {i}) \end{array} \right. \\ \end{array}
$$

Running spread is not informative as it is a contractual spread. Hence it is still customary in the industry to compute the par spread as before.

See Excel for an example

# 7.5 Recovery

Recovery value determines the protection leg value of a CDS. In case of a cash settled CDS, this amount is usually set at  $40\%$  to reflect the average recovery rate of senior unsecured bonds and  $15\%$  to reflect the average recovery of junior unsecured bonds.

However, in the case of physically settled CDS, an actual bond is delivered and its value will not be discovered until the liquidation process is finished. Under this situation, how can one estimate the value in order to evaluate today's CDS? Apparently, some kind of expectation of this value needs to be constructed.

In this section, we focus on the recovery impact of the CDS contract. In addition to estimating a recovery value, various recovery clauses can also heavily impact the evaluation of CDS contracts.

# 7.5.1 Cash versus Physical Settlement

Although it is more difficult to transact, the majority of the CDS contracts are physically settled. In other words, an actual bond needs to be delivered upon default of the company. When CDS was first introduced in early/mid 90's, CDS contracts were primarily written on actual bonds, known as issue-based CDS. These CDS contracts were mainly issued by those banks that actually owned bonds and would like to hedge their default risks. The other side (yield enhancement) of the contract was investment banks, hedge funds, or trading houses who made a profit from a positive carry (just like their other positive carry deals).

# 7.5.2 Distressed Bond Market

There is no clear definition for distressed debts. In the most severe case, a debt is in distress because its company is in default. Nevertheless, many high yield (a.k.a. junk) bonds that are at the brink of default are also targets for those distressed bond investors.

In general, a bond that is traded at a large discount, usually  $30\%$  or more, can be regarded as a distressed debt. Also, a bond that is traded by price (an otherwise normal healthy bond will be traded by yield) can be regarded as a distressed debt.

https://expertinvestoreurope.com/distressed-debt-funds-mushroom-to-4-year-high (interview of Preqin)

The number of distressed debt funds globally has jumped to 60 from 51, while capital targeted jumped to 72bn (€63.8bn), more than double as much as a year before.

The alternative data and analytics provider has found that out of the 60 funds, 42 have a regional focus on North America and 10 on Europe. But only seven of these funds are domiciled in Europe (see charts below).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/926a0e9de28510d2fd649af94cb8b85d986229efa8d765ad95be380dbcbed767.jpg)

Figure 7.5: Allocation of Distressed Debts

Figure 7.6: Examples of Distressed Debts

<table><tr><td>Fund Name</td><td>Vintage Year</td><td>Fundraising Status</td><td>Fund/Target Size ($mn)</td><td>Fund Manager</td><td>Manager Location</td></tr><tr><td>Alcentra Strategic Credit Fund II</td><td>2020</td><td>Raising</td><td>1,100.40</td><td>Alcentra</td><td>UK</td></tr><tr><td>Arrow Credit Opportunities</td><td>2020</td><td>Second Close</td><td>2,200.81</td><td>AGG Capital Management</td><td>UK</td></tr><tr><td>Clessidra Restructuring Fund</td><td>2019</td><td>First Close</td><td>-</td><td>Clessidra Capital Partners</td><td>Italy</td></tr><tr><td>Italian Recovery Fund II</td><td>2020</td><td>Raising</td><td>330.12</td><td>DEA Capital Alternative Funds</td><td>Italy</td></tr><tr><td>LCM Credit Opportunities Strategy 4</td><td>2020</td><td>Raising</td><td>4,401.62</td><td>LCM Partners</td><td>UK</td></tr><tr><td>M&amp;G Debt Opportunities Fund V</td><td>2020</td><td>Raising</td><td>1,110.78</td><td>M&amp;G Investments</td><td>UK</td></tr><tr><td>Triton Debt Opportunities Fund II</td><td>2019</td><td>Second Close</td><td>-</td><td>Triton</td><td>Jersey</td></tr></table>

As of June 2020, there is currently 68bn in 'dry powder', which it believes will be deployed in the coming months given the significant defaulting likelihood in the aftermath of the crisis.

Most distressed debt managers are seeking out low-rated bonds, such as tripleBs, in anticipation of them being downgraded to junk.

A spokesperson for UBS's alternatives and sustainable & impact investing teams told Expert Investor that they estimate "about half a trillion dollars across credit segments are trading at distressed levels", as of mid-June.

"Specifically, in the high-yield space, about 125bn of US and €25bn of European high yield [bonds] are trading at spreads above 1,000 points.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/0dc3d6a15626a0932535943ab0f8975b64fa50099d20971203d99b794307c5b5.jpg)

Figure 7.7: Sizes of Distressed Debts

"In the leveraged loan market, we estimate that about  $125bn of US and$ 15bn of European leveraged loans, including collateralised loan obligations, are currently in distress.

"In the private credit space, we estimate that around  $20\%$ , or  $\$120$ bn of outstanding loans, may require borrowers to seek alternative sources of liquidity," the UBS teams explained.

"In 2019, distressed debt investors raised  $15.3 billion, down from$ 17.4 billion in 2018, according to PitchBook data. Far fewer companies were in distress, of course, during the past decade's unprecedented economic expansion."

"In recent years, the largest individual vehicle was Blackstone's latest GSO Capital Solutions fund, which gathered more than 7 billion in 2018. Other top players in the market include recent funds raised by Apollo Global Management and Clearlake Capital."

# 7.5.3 Cheapest to Deliver Option

As in the T bond futrues contracts, CDS contracts also embed a CTD option. The contractual description of the CTD in CDS is similar to the that in T bond futures. Basically, the short side of the CDS contract can choose any bond of the given name to deliver, hence leaving the option for the short side to deliver the cheapest bond.

In the early days of CDS trading, CDS were written on bonds, known as issue-based CDS. As the market developed over time, experiencing difficulty in delivery,

GROWTH OF HIGH YIELD BOND MARKET issue-based CDS faded out and in replacement were issuer-based CDS that allow for the CTD option.

Figure 7.8: High Yield Debts

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/e25a235a86296ad39e2d5dae6c99dbcc5840ef156d76c8210796c455587fdf9d.jpg)

Source: Bank of America Merrill Lynch as of 31 December 2016

# 7.5.4 Restructuring Clauses https://www.bis.org/publ/qtrpdf/r_qt0503h.pdf

Since the original ISDA agreement in 1999, there have been six general categories of credit events under which payments from the protection seller to the protection buyer can be mandated: bankruptcy, failure to pay, repudiation/moratorium, obligation acceleration, obligation default and restructuring. In practice, the three principal credit events for corporate borrowers are bankruptcy, failure to pay and restructuring.

# Full restructuring (FR)

The full-restructuring clause was the standard contract term in the 1999 ISDA credit derivatives definitions. Under this contract option, any restructuring event qualifies as a credit event (and any bond of maturity up to 30 years is deliverable). The problems with this arrangement became clear in 2000, when the bank debt of Conseco Finance, restructured to include increased coupons and new guarantees, and thus not disadvantageous to holders of the previous debt, still constituted a credit event and triggered payments under the ISDA guidelines.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/99715910bb8f6cf6a611daba98f6516765b7a352221b61c3ae00821471c869e2.jpg)

Figure 7.9: Distressed Debts

Some banks delivered long-dated bonds to profit from buying discounted lower-priced bonds and receiving par value in return, which was perceived as a distortion of the CDS market.

# Modified restructuring (MR, introduced in 2001)

In 2001, to limit the scope of opportunistic behaviour by sellers in the event of restructuring agreements that did not cause loss, ISDA published a modified restructuring clause. While restructuring agreements still counted as credit events, the clause limited the deliverable obligations to those with a maturity of 30 months or less after the termination date of the CDS contract. Under this contract option, any restructuring event (except restructuring of bilateral loans) qualifies as a credit event.

# Modified-modified restructuring (MMR, introduced in 2003)

In 2003, a further modification of the modified restructuring clause was introduced, in response to the perception on the part of some market participants (particularly in Europe) that the modified restructuring had been too severe in its limitation of deliverable obligations. Under the modified-modified restructuring term, the remaining maturity of deliverable assets must be shorter than 60 months for restructured obligations and 30 months for all other obligations.

# No restructuring (NR)

Under this contract option, all restructuring events are excluded under the contract as "trigger events". The advantage to this contract is that so-called "soft" credit events under restructuring that do not constitute a true loss for the protection buyers, but still might encourage opportunistic behaviour on their part, are ruled out. In August 2002, JPMorgan Chase announced that it would no longer include restructuring clauses in its non-sovereign CDS contracts used for hedging purposes (see CGFS (2003)). In addition, some of the most popular CDS indices in North America (for instance, the DJ.CDX.NA.IG and DJ.CDX.NA.HY indices) are traded under the no-restructuring definition.

# 7.6 Sovereign CDS https://www.bondvigilantes.com/blog/2010/02/25/sovereign-cds-qa/

Credit Default Swaps (CDS) are contracts made by two market participants to either increase or reduce credit exposure to an entity – in this case a sovereign nation rather than a company. Quoted in basis points per year, a CDS price indicates the cost per year to either buy or sell exposure to the possibility of a sovereign defaulting or restructuring. Selling protection means you receive the premium every year of the contract but bear the risk of capital losses in the event of default; buying protection means that you pay the premium but will receive a payment equivalent to the losses suffered by bond holders in the event of default or restructuring. In other words sovereign CDS behave a little like insurance contracts – you can take the role of the insurer, or be insured.

# 7.7 CDO CDS

CDO CDS refer to the securitized notes in a CDO (collateralized debt obligations). These CDOs are known as synthetic CDOs (which are different from cash CDOs) in which both assets and liabilities are CDS.

# 7.8 Capital Structure Arbitrage

CDS not only provides a tool to transfer credit risk, it also facilitate arbitrage trading and bridge the debt and equity markets.

Recognizing (or approximating) CDS as a bond, then one can replace bonds with CDS (similar to synthetic CDO) and find discrepancies between CDS and equity or the option written on equity. To do that, we need to link CDS with bonds and adopt structural models.

Choices of structural models:

- Merton (KMV)
Geske
Leland (or Leland-Toft)
- Barrier (flat or exponential (Black-Cox))
- Madan-Unal (hybrid)
CreditGrades™(hybrid)

# 7.8.1 CDS versus Put

The rationale here is that CDS is like a put option on the company's stock. As the company's credit risk increases, CDS spread widens and the put option value goes up. Upon default, the put option pays the strike (as the company's stock is worthless) and CDS pays one minus recovery. Hence, if we choose the number of shares of the put option so that the payout upon default is equal to the notional times one minus recovery, people believe that the two must be equivalent.

However, such arbitrage is not perfect. Although the payouts upon default are equal, today's investment amounts are not. In other words, it is not a 0-cost arbitrage. The main reason is that put options also carry equity risk (i.e. volatility) and CDS do not. Hence, they are fundamentally different securities. They become closely related to each other when a company is near default. As a result, such an arbitrage might work well for risky companies and not well for good quality companies.

# 7.8.2 CDS versus Stock

The rationale here is that CDS is a bond. If the bond spread is equivalent to the CDS spread, then buying a bond is equivalent to shorting a CDS. Credit structural models argue that the equity of a firm is a (compound) call option and hence the liabilities are a covered call (or put). As a result, the difference between the corporate debt value and the risk-free debt value is the CDS spread.

While there are a number of structural models to choose from, the Credit-Grades model is the easiest to implement and requires the least amount of data. The CreditGrades model (2002) was developed by Goldman Sachs, JP Morgan, Deutsche Bank, and RiskMetrics. This is essentially a random barrier model. The technical document can be downloaded from creditgrades.com. The main equation is its approximation formula for the survival probability, as follows:

$$
Q (t) = N \left[ - \frac {A}{2} + \frac {\ln d}{A} \right] - d \cdot N \left[ - \frac {A}{2} - \frac {\ln d}{A} \right] \tag {7.2}
$$ where


$$

A = \sqrt {\sigma^ {2} \xi^ {2} t + \lambda^ {2}}

$$

$$ d = \frac {1}{1 - \xi} e ^ {\lambda^ {2}}
$$

$$
\xi = \frac {E}{E + D}
$$ and  $N[\cdot ]$  is normal probability,  $\sigma$  is the asset volatility,  $\lambda$  is the volatility parameter for the stochastic barrier,  $E$  is the equity value and  $D$  is the "target" debt value. Hence, it is logical to view  $\xi$  as the leverage ratio. With the survival probability function, we can proceed with CDS valuation. Using equation (7.1), we can solve for the asset value and volatility.


Use data to do a long HW

