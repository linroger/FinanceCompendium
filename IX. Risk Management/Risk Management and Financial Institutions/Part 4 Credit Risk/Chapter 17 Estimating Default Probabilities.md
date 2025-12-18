---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Chapter 17
linter-yaml-title-alias: Chapter 17
---

# Chapter 17

# Estimating Default Probabilities

In this chapter, we discuss a number of different approaches to estimating default probabilities and explain the key difference between risk-neutral and real-world estimates. The material we cover will be used in Chapter 18 when we consider the counterparty credit risk in derivative transactions, and in Chapter 19 when we discuss the calculation of credit value at risk.

# 17.1 Credit Ratings

As explained in Section 1.7, rating agencies such as Moody's, S&P, and Fitch provide ratings describing the creditworthiness of corporate bonds. Because a credit rating is designed to provide information about credit quality, one might expect frequent changes in credit ratings as positive and negative information reaches the market. In fact, ratings change relatively infrequently. One of the objectives of rating agencies when they assign ratings is stability. For example, they want to avoid ratings reversals, where a company's bonds are downgraded and then upgraded a few weeks later. Ratings therefore change only when there is reason to believe that a long-term change in the company's creditworthiness has taken place. The reason for this is that bond traders are major users of ratings. Often they are subject to rules governing what the credit ratings of the bonds they hold must be. (For example, many bond funds are allowed to hold only investment-grade bonds.) If these ratings changed frequently, they might have to do a large amount of trading (and incur high transaction costs) just to satisfy the rules.

A related point is that rating agencies try to "rate through the cycle." Suppose that the economy exhibits a downturn and this has the effect of increasing the probability of a company defaulting in the next six months, but makes very little difference to the company's probability of defaulting over the next three to five years. A rating agency would not usually change the company's credit rating in these circumstances.

Companies such as Moody's KMV and Kamakura provide estimates of a company's probability of default that are based on its equity price and other variables. These estimates do not have stability as one of their objectives and tend to respond more quickly to market information than credit ratings. The types of models that are used to produce the estimates will be discussed in Section 17.8.

# 17.1.1 Internal Credit Ratings

Most banks have procedures for rating the creditworthiness of their corporate and retail clients. This is a necessity. The ratings published by rating agencies are usually available only for companies that have issued publicly traded debt. As a result, many small and medium-sized companies do not have credit ratings from rating agencies.

Internal-ratings-based approaches for estimating probabilities of default typically involve profitability ratios such as return on assets and balance sheet ratios such as current assets divided by current liabilities (the current ratio) and debt to equity. Banks recognize that it is cash rather than profits that is necessary to repay a loan. They typically take the financial information provided by a company and convert it to a cash flow statement. This allows them to estimate how easy it will be for a company to service its debt.

# 17.1.2 Altman's Z-Score

Edward Altman has pioneered the use of accounting ratios to predict default. In 1968, he developed what has become known as the Z-score. Using a statistical technique known as discriminant analysis, he attempted to predict defaults from five accounting ratios:

$X_{1}$ : Working capital/Total assets

$X_{2}$ : Retained earnings/Total assets

$X_{3}$ : Earnings before interest and taxes/Total assets

$X_{4}$ : Market value of equity/Book value of total liabilities

$X_{5}$ : Sales/Total assets

For publicly traded manufacturing companies, the original Z-score was

$$
Z = 1. 2 X _ {1} + 1. 4 X _ {2} + 3. 3 X _ {3} + 0. 6 X _ {4} + 0. 9 9 9 X _ {5} \tag {17.1}
$$

If the Z-score was greater than 3.0, the company was considered unlikely to default. If it was between 2.7 and 3.0, there was reason to be "on alert." If it was between 1.8 and 2.7, there was a good chance of default. If it was less than 1.8, the probability of a financial embarrassment was considered to be very high. Equation (17.1) was estimated from a sample of 66 publicly traded manufacturing companies. Of these, 33 failed within one year and 33 did not fail within one year. The model proved to be fairly accurate when tested out of sample (i.e., on a set of firms different from that used to estimate equation 17.1). Both Type I errors (companies that were predicted not to go bankrupt but did do so) and Type II errors (companies that were predicted to go bankrupt, but did not do so) were small. Variations on the model have been developed for manufacturing companies that are not publicly traded and for non-manufacturing companies. The Z-score methodology has been revised and extended since Altman's original research more than 50 years ago.

# Example 17.1

Consider a company for which working capital is 170,000, total assets are 670,000, earnings before interest and taxes is 60,000, sales are 2,200,000, the market value of equity is 380,000, total liabilities is 240,000, and retained earnings is 300,000. In this case,  $X_{1} = 0.254$ ,  $X_{2} = 0.448$ ,  $X_{3} = 0.0896$ ,  $X_{4} = 1.583$ , and  $X_{5} = 3.284$ . The Z-score is

$$
1. 2 \times 0. 2 5 4 + 1. 4 \times 0. 4 4 8 + 3. 3 \times 0. 0 8 9 6 + 0. 6 \times 1. 5 8 3 + 0. 9 9 9 \times 3. 2 8 4 = 5. 4 6
$$

The Z-score indicates that the company is not in danger of defaulting in the near future.

# 17.2 Historical Default Probabilities

Table 17.1 is typical of the data that are produced by rating agencies. It shows the default experience through time of companies that started with a certain credit rating. For example, Table 17.1 shows that a bond with an initial S&P credit rating of BBB has a  $0.16\%$  chance of defaulting by the end of the first year, a  $0.43\%$  chance of defaulting by the end of the second year, and so on. The probability of a bond defaulting during a particular year can be calculated from the table. For example, the probability that a bond initially rated BBB will default during the second year of its life is  $0.43 - 0.16 = 0.27\%$ .

Table 17.1 shows that, for investment-grade bonds (i.e., those rated BBB and above), the probability of default in a year tends to be an increasing function of time during the first few years. (For example, the probabilities of a bond initially rated A defaulting during

Table 17.1 Average Cumulative Issuer-Weighted Default Rates (\%), 1981-2020

Time Horizon (years)

<table><tr><td>Rating</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>7</td><td>10</td><td>15</td></tr><tr><td>AAA</td><td>0.00</td><td>0.03</td><td>0.13</td><td>0.24</td><td>0.34</td><td>0.51</td><td>0.70</td><td>0.90</td></tr><tr><td>AA</td><td>0.02</td><td>0.06</td><td>0.11</td><td>0.21</td><td>0.30</td><td>0.49</td><td>0.70</td><td>0.99</td></tr><tr><td>A</td><td>0.05</td><td>0.13</td><td>0.22</td><td>0.33</td><td>0.46</td><td>0.76</td><td>1.20</td><td>1.84</td></tr><tr><td>BBB</td><td>0.16</td><td>0.43</td><td>0.75</td><td>1.14</td><td>1.54</td><td>2.27</td><td>3.24</td><td>4.54</td></tr><tr><td>BB</td><td>0.63</td><td>1.93</td><td>3.46</td><td>4.99</td><td>6.43</td><td>8.89</td><td>11.64</td><td>14.65</td></tr><tr><td>B</td><td>3.34</td><td>7.80</td><td>11.75</td><td>14.89</td><td>17.35</td><td>20.99</td><td>24.62</td><td>28.24</td></tr><tr><td>CCC/C</td><td>28.30</td><td>38.33</td><td>43.42</td><td>46.36</td><td>48.58</td><td>50.75</td><td>52.76</td><td>54.76</td></tr></table> years one, two, three, and four are  $0.05\%$ ,  $0.08\%$ ,  $0.09\%$ , and  $0.11\%$ , respectively.) This is because the bond issuer is initially considered to be creditworthy and the more time that elapses, the greater the possibility that its financial health will decline. For bonds with a poor credit rating, the probability of default can be a decreasing function of time. (For example, the probabilities that a bond initially in the lowest (CCC/C) category will default during years one, two, three, and four are  $28.3\%$ ,  $10.03\%$ ,  $5.09\%$ , and  $2.94\%$ , respectively.) The reason here is that, for a bond with a poor credit rating, the next year or two may be critical. If the issuer survives this period, its financial health is likely to have improved.

SOURCE: S&P Global Ratings Research.

# 17.2.1 Hazard Rates

From Table 17.1, we can calculate the probability of a CCC/C bond defaulting during the third year as  $43.42 - 38.33 = 5.09\%$ . We will refer to this as the unconditional default probability. It is the probability of default during the third year as seen at time zero. The probability that the bond will survive until the end of year two is  $100 - 38.33 = 61.67\%$ . The probability that it will default during the third year conditional on no earlier default is therefore  $0.0509 / 0.6167$  or  $8.25\%$ .

The  $8.25\%$  we have just calculated is a conditional default probability for a one-year time period. When we consider a conditional default probability for a short time period of length  $\Delta t$ , we get a measure known as the hazard rate or default intensity. The hazard rate,  $\lambda(t)$ , at time  $t$  is defined so that  $\lambda(t) \Delta t$  is the probability of default between time  $t$  and  $t + \Delta t$  conditional on no default between time zero and time  $t$ . If  $V(t)$  is the cumulative probability of the company surviving to time  $t$  (i.e., no default by time  $t$ ), the unconditional default probability between times  $t$  and  $t + \Delta t$  is  $[V(t) - V(t + \Delta t)]$ . The probability of default between times  $t$  and  $t + \Delta t$  conditional on no earlier default is  $[V(t) - V(t + \Delta t)] / V(t)$ . Hence

$$
\frac {V (t) - V (t + \Delta t)}{V (t)} = \lambda (t) \Delta t
$$ or


$$

\frac {V (t + \Delta t) - V (t)}{\Delta t} = - \lambda (t) V (t)

$$

Taking limits

$$

\frac {d V (t)}{d t} = - \lambda (t) V (t)

$$ from which


$$

V (t) = e ^ {- \int_ {0} ^ {t} \lambda (\tau) d \tau}

$$

Defining  $Q(t)$  as the probability of default by time  $t$ , so that  $Q(t) = 1 - V(t)$  gives

$$

Q (t) = 1 - e ^ {- \int_ {0} ^ {t} \lambda (\tau) d \tau}

$$ or


$$

Q (t) = 1 - e ^ {- \bar {\lambda} (t) t} \tag {17.2}

$$ where  $\overline{\lambda}(t)$  is the average hazard rate between time zero and time  $t$ .

# Example 17.2

Suppose that the hazard rate is a constant  $1.5\%$  per year. The probability of a default by the end of the first year is  $1 - e^{-0.015 \times 1} = 0.0149$ . The probability of a default by the end of the second year is  $1 - e^{-0.015 \times 2} = 0.0296$ . The probabilities of a default by the end of the third, fourth, and fifth years are similarly 0.0440, 0.0582, and 0.0723. The unconditional probability of a default during the fourth year is  $0.0582 - 0.0440 = 0.0142$ . The probability of default in the fourth year, conditional on no earlier default, is  $0.0142 / (1 - 0.0440) = 0.0149$ .

# 17.3 Recovery Rates

When a company goes bankrupt, those who are owed money by the company file claims against the company.4 Sometimes there is a reorganization in which these creditors agree to a partial payment of their claims. In other cases, the assets are sold by the liquidator and the proceeds are used to meet the claims as far as possible. Some claims typically have priorities over other claims and are met more fully.

The recovery rate for a bond is normally defined as the price at which it trades about one month after default as a percent of its principal amount. Table 17.2 provides historical data on average default rates for different categories of bonds in the United States. These vary from  $54.6\%$  from first lien bonds to  $22.3\%$  for those ranking after other lenders. (A first lien bond has first claim on collateral; a second lien bond has second claim on collateral. Amongst bonds which are not protected by collateral, senior unsecured bonds rank above senior subordinated bonds, which rank above subordinated bonds, which in turn rank above junior subordinated bonds.)

Table 17.2 Recovery Rates on Corporate Bonds as a Percent of Face Value, 1983 to 2021, Issuer Weighted

<table><tr><td>Class</td><td>AverageRecovery Rate (\%)</td></tr><tr><td>1st lien bond</td><td>54.6</td></tr><tr><td>2nd lien bond</td><td>44.3</td></tr><tr><td>Senior unsecured bond</td><td>38.0</td></tr><tr><td>Senior subordinated bond</td><td>31.0</td></tr><tr><td>Subordinated bond</td><td>32.1</td></tr><tr><td>Junior subordinated bond</td><td>22.3</td></tr></table>

SOURCE: Moody's.

# 17.3.1 The Dependence of Recovery Rates on Default Rates

In Chapter 7, we saw that one of the lessons from the Global Financial Crisis of 2007-2008 is that the average recovery rate on mortgages is negatively related to the mortgage default rate. As the mortgage default rate increases, foreclosures lead to more houses being offered for sale and a decline in house prices. This in turn results in a decline in recovery rates.

The average recovery rate on corporate bonds exhibits a similar negative dependence on default rates. In a year when the number of bonds defaulting is low, economic conditions are usually good and the average recovery rate on those bonds that do default might be as high as  $60\%$ ; in a year when the default rate on corporate bonds is high, economic conditions are usually poor and the average recovery rate on the defaulting bonds might be as low as  $30\%$ . The result of the negative dependence is that a bad year for defaults is doubly bad for a lender because it is usually accompanied by a low recovery rate.

# 17.4 Credit Default Swaps

A credit default swap (CDS) is a derivative that allows market participants to trade credit risks. As indicated in Business Snapshot 17.1, the market for this product grew rapidly until 2007 and then declined. The simplest type of CDS is an instrument that provides insurance against the risk of a default by a particular company. The company is known as the reference entity and a default by the company is known as a credit event. The buyer of the insurance obtains the right to sell bonds issued by the company for their face value when a credit event occurs and the seller of the insurance agrees to buy the bonds for their face value when a credit event occurs. The total face value of the bonds that can be sold is known as the credit default swap's notional principal.

# BUSINESS SNAPSHOT 17.1

# The CDS Market

In 1998 and 1999, the International Swaps and Derivatives Association developed a standard contract for trading credit default swaps in the over-the-counter market. After that, the market grew very fast. The Bank for International Settlements (BIS) started producing statistics for the size of the credit derivatives market in December 2004. At that time, the total notional principal underlying outstanding contracts was estimated to be about  \$6 trillion. It peaked at\$ 58 trillion in December 2007. But it had fallen to under 10 trillion by December 2021. Banks and other financial institutions are both buyers and sellers of protection. Banks tend to be net buyers of protection, and insurance companies tend to be net sellers of protection. Banks sometimes use credit default swaps to hedge an exposure to a borrower. It is then the case that the financial institution bearing the credit risk of a loan is different from the financial institution that did the original credit checks.

During the credit turmoil that started in August 2007, regulators became concerned that CDSs were a source of systemic risk. No doubt their concerns arose in part because of the losses experienced by the insurance company AIG. This was a big seller of protection on the AAA-rated tranches created from mortgages (see Chapter 7). The protection proved very costly to AIG and a failure of AIG would have led to big losses elsewhere in the financial system. AIG was bailed out by the United States government in September 2008.

CDSs have come under criticism during the European sovereign debt crisis. Some legislators feel that speculative activity in credit default swap markets has exacerbated the debt problems of countries such as Greece; naked CDS positions on sovereign debt (where credit protection on a country is bought without an underlying exposure) were banned in Europe in 2013.

During 2007 and 2008, trading ceased in many types of credit derivatives, but plain vanilla CDSs, which provide protection against a single company or country defaulting, continued to trade actively (albeit with dramatically increased spreads). This is because their structure is easy to understand compared with, say, ABS CDOs (see Chapter 7).

There was a huge number of CDS contracts outstanding with Lehman Brothers as the reference entity when Lehman Brothers declared bankruptcy in September 2008. The recovery rate (determined by an auction process) was only about eight cents on the dollar, so that the payout to the buyers of protection was equal to about  $92\%$  of the notional principal. There were predictions that some sellers of protection would be unable to pay and that further bankruptcies would occur, but on the settlement day (October 21, 2008) everything went smoothly.

The buyer of a CDS makes periodic payments to the seller until the end of the life of the CDS or until a credit event occurs. These payments are usually made in arrears every quarter.

An example will help to illustrate how a typical deal is structured. Suppose that two parties enter into a five-year credit default swap on December 20, 2024. Assume that the notional principal is 100 million and the buyer agrees to pay 90 basis points per year (quarterly in arrears) for protection against default by the reference entity.

The CDS is shown in Figure 17.1. If the reference entity does not default (that is, there is no credit event), the buyer receives no payoff and pays approximately \$225,000 (= 0.25 × 0.0090 × 100,000,000) on March 20, June 20, September 20, and December 20 of each of the years 2025, 2026, 2027, 2028, and 2029. If there is a credit event, a substantial payoff is likely. Suppose that the buyer notifies the seller of a credit event on May 20, 2027 (five months into the third year). If the contract specifies physical settlement, the buyer of protection has the right to sell to the seller of protection bonds issued by the reference entity with a face value of \$100 million for \$100 million. If, as is now usual, there is a cash settlement, a two-stage auction process is used to determine the mid-market value of the cheapest deliverable bond several days after the credit event. Suppose the auction indicates that the cheapest deliverable bond is worth $35 per $100 of face value. The cash payoff would be \$65 million.

The regular payments from the buyer of protection to the seller of protection cease when there is a credit event. However, because these payments are made in arrears, a final accrual payment by the buyer is usually required. In our example, where there is a default on May 20, 2027, the buyer would be required to pay to the seller the amount of the annual payment accrued between March 20, 2027, and May 20, 2027 (approximately 150,000), but no further payments would be required.

The total amount paid per year, as a percent of the notional principal, to buy protection is known as the CDS spread. (In our example, the CDS spread is 90 basis points.) Several large banks are market makers in the credit default swap market. For a five-year credit default swap on a company, a market maker might quote: bid 250 basis points, ask 260 basis points. This means that the market maker is prepared to buy protection by paying 250 basis points per year (i.e.,  $2.5\%$  of the principal per year) and to sell protection for 260 basis points per year (i.e.,  $2.6\%$  of the principal per year).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/72b85ab4-d19a-472c-ae6e-15b401e7d831/9d7ce5f117e49fd30d03b04e6bd7f155c2d65d49b20b50c1fb9325901ec35b88.jpg)

Figure 17.1 Credit Default Swap

# BUSINESS SNAPSHOT 17.2

# Is a CDS a Flawed Contract?

There is one important difference between credit default swaps and most other over-the-counter derivatives. The other over-the-counter derivatives depend on interest rates, exchange rates, equity indices, commodity prices, and so on. There is no reason to assume that any one market participant has better information than other market participants about these variables.

Credit default swap spreads depend on the probability that a particular company will default during a particular period of time. Arguably, some market participants have more information to estimate this probability than others. A financial institution that works closely with a particular company by providing advice, making loans, and handling new issues of securities is likely to have more information about the creditworthiness of the company than another financial institution that has no dealings with the company. Economists refer to this as an asymmetric information problem.

A blatant abuse of the CDS market was reported in the *Financial Times* on January 11, 2018. A U.S. housebuilder, Hovnanian, obtained attractive funding from the hedge fund GSO Capital Partners with the agreement that it would skip an interest payment, thereby manufacturing a technical default. GSO had bought protection on Hovnanian and obtained a big payoff. It is necessary for CDS contracts to find a way of outlawing manufactured credit events of this type if the CDS market is to survive.

Many different companies and countries are reference entities for the CDS contracts traded. Contracts with maturities of five years are most popular, but other maturities such as 1, 2, 3, 7, and 10 years are also traded. Usually, contracts mature on the following standard dates: March 20, June 20, September 20, and December 20. The effect of this is that the actual time to maturity of a contract when it is initiated is close to, but not necessarily the same as, the number of years to maturity that is specified. Suppose you call a dealer on November 15, 2024, to buy five-year protection on a reference entity. The contract would probably last until December 20, 2029. Your first payment would be due on December 20, 2024, and would equal an amount covering the November 15, 2024, to December 20, 2024, period. After that, payments would be made quarterly.

A key aspect of a CDS contract is the definition of a credit event (i.e., a default). Usually a credit event is defined as a failure to make a payment as it becomes due, a restructuring of debt, or a bankruptcy. Restructuring is sometimes excluded in North American contracts, particularly in situations where the yield on the company's debt is high. Potential flaws in the CDS market are discussed in Business Snapshot 17.2. They may account for the market's declining popularity.

# 17.4.1 The Cheapest-to-Deliver Bond

Usually a CDS specifies that a number of different bonds can be delivered in the event of a default. The bonds typically have the same seniority, but they may not sell for the same percentage of face value immediately after a default. This gives the holder of a CDS what is known as a cheapest-to-deliver bond option. As already mentioned, an auction process is usually used to determine the value of the cheapest-to-deliver bond and, therefore, the payoff to the buyer of protection.

The determination of CDS spreads and the valuation of CDS transactions is discussed in Appendix K.

# 17.4.2 Credit Indices

Participants in credit markets have developed indices to track credit default swap spreads. In 2004, there were agreements between different producers of indices that led to some consolidation. Two important standard portfolios used by index providers are:

1. CDX NA IG, a portfolio of 125 investment-grade companies in North America
2. iTraxx Europe, a portfolio of 125 investment-grade companies in Europe

These portfolios are updated in March and September each year. Companies that are no longer investment grade are dropped from the portfolios and new investment-grade companies are added.[10]

Suppose that the five-year CDX NA IG index is quoted by a market maker as bid 165 basis points, ask 166 basis points. The quotes mean that a trader can buy CDS protection on all 125 companies in the index for 166 basis points per company. Suppose an investor wants \$800,000 of protection on each company. The total cost is 0.0166 × 800,000 × 125 or \$1,660,000 per year. (The investor could similarly sell \$800,000 of protection on each of the 125 companies for a total of \$1,650,000 per annum.) When a company defaults, the investor receives the usual CDS payoff and the annual payment is reduced by 1,660,000/125 = 13,280. There is an active market in buying and selling CDS index protection for maturities of 3, 5, 7, and 10 years. The maturities for these types of contracts on the index are usually December 20 and June 20. (This means that a "five-year" contract lasts between 4¾ and 5½ years.) Roughly speaking, the index is the average of the CDS spreads on the companies in the underlying portfolio.¹¹

# 17.4.3 The Use of Fixed Coupons

To facilitate trading, the precise way in which CDS and CDS index transactions work is a little more complicated than has been described up to now. In practice, CDS and CDS indices trade like bonds. For each of the standard transactions that trade, a fixed coupon and a recovery rate are specified. The periodic protection payments are equal to the coupon. The CDS spread is quoted in the market. When there is a trade, the present value of the difference between payments equal to the spread and payments equal to the coupon for the remaining life of the transaction is estimated using a specified procedure. If the quoted spread is less than the coupon, the seller of protection pays this present value to the buyer of protection at the time of the trade. If the quoted spread is greater than the coupon, the buyer of protection pays this present value to the seller of protection at the time of the trade. After that, the buyer of protection then pays the coupon times the principal applicable to those companies in the index that have not yet defaulted to the seller.

# 17.5 Credit Spreads

The credit spread is the extra rate of interest per annum required by investors for bearing a particular credit risk. CDS spreads, which were explained in the previous section, provide one measure of the credit spread. Another is the bond yield spread. This is the amount by which the yield on a corporate bond exceeds the yield on a similar risk-free bond. We now show that the two should be approximately equal.

# 17.5.1 CDS Spreads and Bond Yields

A CDS can be used to hedge a position in a corporate bond. Suppose that an investor buys a five-year corporate bond yielding  $7\%$  per year for its face value and at the same time enters into a five-year CDS to buy protection against the issuer of the bond defaulting. Suppose that the CDS spread is 200 basis points or  $2\%$  per annum. The effect of the CDS is to convert the corporate bond to a risk-free bond (at least approximately). If the bond issuer does not default, the investor earns  $5\%$  per year (when the CDS spread is netted against the corporate bond yield). If the bond issuer does default, the investor earns  $5\%$  up to the time of the default. Under the terms of the CDS, the investor is then able to exchange the bond for its face value. This face value can be invested at the risk-free rate for the remainder of the five years.

This argument shows that the  $n$ -year CDS spread should be approximately equal to the excess of the par yield on an  $n$ -year corporate bond over the par yield on an  $n$ -year risk-free bond.[12] If it is markedly less than this, an investor can earn more than the risk-free rate by buying the corporate bond and buying protection. If it is markedly greater than this, an investor can borrow at less than the risk-free rate by shorting the corporate bond and selling CDS protection. As will be discussed later, these are not perfect arbitrages, and the extent to which they can be used is in practice influenced by liquidity constraints and other considerations.

# 17.5.2 The Risk-Free Rate

CDSs provide a direct estimate of the credit spread. To calculate a credit spread from a bond yield, it is necessary to make an assumption about the risk-free rate. When bond yield spreads are quoted by bond traders, the risk-free rate that is used is usually the yield on a Treasury bond of similar maturity. For example, a bond trader might quote the yield on a particular corporate bond as being a spread of 250 basis points over Treasuries.

A number of researchers have compared bond yields to CDS spreads to imply a risk-free rate. This involves matching the maturities of CDSs and bonds and implying a risk-free rate from the arbitrage arguments given above. For example, if the five-year bond yield is  $4.7\%$  and the five-year CDS spread is 80 basis points, the implied five-year risk-free rate is  $3.9\%$ . The implied risk-free rate has been found to be higher than the Treasury rate. One estimate puts it close to the short-term borrowing rate for a AA-rated company.[13]

# 17.5.3 Asset Swaps

Asset swaps provide a convenient reference point for traders in credit markets because they give direct estimates of the excess of bond yields over a floating reference rate.

To explain how asset swaps work, consider the situation where an asset swap spread for a particular bond is quoted as 150 basis points. There are three possible situations:

1. The bond sells for its par value of 100. The swap then involves one side (Company A) paying the coupon on the bond and the other side (Company B) paying the floating reference rate plus 150 basis points.[14]
 2. The bond sells below its par value, say, for 95. The swap is then structured so that Company A pays $5 per $100 of notional principal at the outset. After that, Company A pays the bond's coupons and Company B pays the floating reference rate plus 150 basis points.
 3. The underlying bond sells above par, say, for 108. The swap is then structured so that Company B makes a payment of $8 per $100 of principal at the outset. After that, Company A pays the bond's coupons and Company B pays the floating reference rate plus 150 basis points.

The effect of structuring asset swaps in this way is that the present value of the asset swap spread (150 basis points in our example) is the amount by which the price of the corporate bond is exceeded by the price of a similar risk-free bond where the risk-free rate is assumed to be given by the floating reference rate (see Problem 17.16).

# 17.5.4 CDS-Bond Basis

The CDS-bond basis is the excess of the CDS spread over the bond yield spread for a company.

$$
\mathrm {C D S - B o n d B a s i s} = \mathrm {C D S S p r e a d - B o n d Y i e l d S p r e a d}
$$

The arbitrage argument given in Section 17.5.1, relating CDS spreads and bond yields, suggests that the CDS-bond basis should be close to zero. In fact, there are a number of reasons why it deviates from zero. For example:

1. The bond may sell for a price that is significantly different from par. (Bond prices above par tend to give rise to a negative basis; bond prices below par tend to give rise to a positive basis.)
2. There is counterparty default risk in a CDS. (This pushes the basis in a negative direction.)
3. There is a cheapest-to-deliver bond option in a CDS. (This pushes the basis in a positive direction.)
4. The payoff in a CDS does not include accrued interest on the bond that is delivered. (This pushes the basis in a negative direction.)
5. The restructuring clause in a CDS contract may lead to a payoff when there is no default. (This pushes the basis in a positive direction.)
6. The bond-yield spread might be calculated relative to a "risk-free" reference rate that is not the one used by the market.

Prior to the market turmoil starting in 2007, the basis tended to be positive. For example, De Wit estimates that the average CDS bond basis in 2004 and 2005 was 16 basis points.[15] During the Global Financial Crisis, the basis was at times very negative but, as explained by Bai and Collin-Dufresne (2011), it was difficult for financial institutions to arbitrage between bonds and CDSs because of a shortage of liquidity and other considerations.[16] Since the Global Financial Crisis, the CDS-bond basis has usually been small and negative.

# 17.6 Estimating Default Probabilities from Credit Spreads

We now discuss how default probabilities can be estimated from credit spreads.

# 17.6.1 Approximate Calculation

Suppose that a five-year credit spread (CDS spread, bond yield spread, or asset swap spread) for a company is 240 basis points and that the expected recovery rate in the event of a default is  $40\%$ . The holder of a corporate bond issued by the company must be expecting to lose 240 basis points (or  $2.4\%$  per year) from defaults. Roughly speaking, the credit spread can be considered to be an average loss rate. Given the recovery rate of  $40\%$ , this leads to an estimate of the average probability of a default per year over the five-year period, conditional on no earlier default, of  $0.024 / (1 - 0.4)$  or  $4\%$ . In general:

$$
\bar {\lambda} = \frac {s (T)}{1 - R} \tag {17.3}
$$ where  $s(T)$  is the credit spread (which should in theory be expressed with continuous compounding) for a maturity of  $T$ ,  $R$  is the recovery rate, and  $\overline{\lambda}$  is the average hazard rate between time zero and time  $T$ .


If credit spreads are known for a number of different maturities, the term structure of the hazard rate can be bootstrapped (at least approximately), as the following example illustrates.

# Example 17.3

Suppose that the CDS spreads for 3-, 5-, and 10-year instruments are 50, 60, and 100 basis points, respectively, and the expected recovery rate is  $60\%$ . The average hazard rate over three years is approximately  $0.005 / (1 - 0.6) = 0.0125$ . The average hazard rate over five years is approximately  $0.006 / (1 - 0.6) = 0.015$ . The average hazard rate over 10 years is approximately  $0.01 / (1 - 0.6) = 0.025$ . From this we can estimate that the average hazard rate between year 3 and year 5 is  $(5 \times 0.015 - 3 \times 0.0125) / 2 = 0.01875$ . The average hazard rate between year 5 and year 10 is  $(10 \times 0.025 - 5 \times 0.015) / 5 = 0.035$ .

# 17.6.2 A More Exact Calculation

The calculation we have just given works well for CDS spreads. It also works well for bond yield spreads and asset swap spreads when the underlying bond is selling for close to its par value. We now consider a more exact calculation for situations when the underlying bond's price is not close to par.

Suppose that a five-year corporate bond with a principal of 100 provides a coupon of  $6\%$  per annum (paid semiannually) and that the yield on the bond is  $7\%$  per annum (with continuous compounding). The yield on a similar risk-free bond is  $5\%$  (again with continuous compounding). The yields imply that the price of the corporate bond is 95.34 and the price of the risk-free bond is 104.09. The expected loss from default over the five-year life of the bond is therefore  $104.09 - 95.34$ , or  $\$8.75$ . For simplicity, we suppose that the unconditional probability of default per year is the same each year and equal to  $Q$ . Furthermore, we assume defaults can happen only at times 0.5, 1.5, 2.5, 3.5, and 4.5 years (immediately before coupon payment dates). Risk-free rates are assumed to be  $5\%$  (with continuous compounding) for all maturities and the recovery rate (i.e., recovery as a percent of principal) is assumed to be  $40\%$ . (The analysis can be extended so that defaults happen more frequently.)

Table 17.3 calculates the expected loss from defaults in terms of  $Q$ . To illustrate the calculations, consider the 3.5-year row in Table 17.3. The expected value of the

Table 17.3 Calculation of Loss from Default on a Bond in Terms of the Default Probabilities per Year, Q

<table><tr><td>Time (yrs)</td><td>Def. Prob.</td><td>Recovery Amount ($)</td><td>Default-Free Value ($)</td><td>Loss ($)</td><td>Discount Factor</td><td>PV of Expected Loss ($)</td></tr><tr><td>0.5</td><td>Q</td><td>40</td><td>106.73</td><td>66.73</td><td>0.9753</td><td>65.08Q</td></tr><tr><td>1.5</td><td>Q</td><td>40</td><td>105.97</td><td>65.97</td><td>0.9277</td><td>61.20Q</td></tr><tr><td>2.5</td><td>Q</td><td>40</td><td>105.17</td><td>65.17</td><td>0.8825</td><td>57.52Q</td></tr><tr><td>3.5</td><td>Q</td><td>40</td><td>104.34</td><td>64.34</td><td>0.8395</td><td>54.01Q</td></tr><tr><td>4.5</td><td>Q</td><td>40</td><td>103.46</td><td>63.46</td><td>0.7985</td><td>50.67Q</td></tr><tr><td>Total</td><td></td><td></td><td></td><td></td><td></td><td>288.48Q</td></tr></table>

Notional Principal = 100.

default-free bond at time 3.5 years (calculated using the forward risk-free interest rates) is

$$

3 + 3 e ^ {- 0. 0 5 \times 0. 5} + 3 e ^ {- 0. 0 5 \times 1. 0} + 1 0 3 e ^ {- 0. 0 5 \times 1. 5} = 1 0 4. 3 4

$$

Given the definition of recovery rates in Section 17.3, the amount recovered if there is a default is 40 so that the loss given default is  $104.34 - 40$  or  $\$64.34$ . The present value of this loss is 54.01 and the expected loss is therefore  $54.01Q$ .

Table 17.3 shows that the total expected loss is  $288.48Q$ . Setting this equal to the 8.75 expected loss calculated earlier, we obtain a value for  $Q$  of 8.75/288.48, or  $3.03\%$ . The calculations we have given assume that the default probability is the same in each year and that defaults take place at just one time during the year. We can extend the calculations to assume that defaults take place more frequently. Also, instead of assuming a constant unconditional probability of default, we can assume a constant hazard rate or assume a particular pattern for the variation of the default probability with time. With several bonds, we can estimate several parameters describing the term structure of default probabilities. Suppose, for example, that we have bonds maturing in 3, 5, 7, and 10 years and we assume a step function for the default probability. We could use the first bond to estimate the default probability per year for the first three years, the second bond to estimate the default probability per year for years 4 and 5, the third bond to estimate the default probability per year for years 6 and 7, and the fourth bond to estimate the default probability per year for years 8, 9, and 10 (see Problems 17.15 and 17.24). This approach is analogous to the bootstrap procedure for estimating the term structure of interest rates in Appendix B.

# 17.7 Comparison of Default Probability Estimates

We now compare the default probability estimates calculated from historical data with those calculated from credit spreads. Table 17.4 shows:
- The seven-year average cumulative probability of default for companies with different credit ratings. This is taken from data published by S&P. It is the seven-year column of Table 17.1.

Table 17.4 Cumulative Default Probabilities Compared with Credit Spreads

<table><tr><td>Rating</td><td>Cumulative 7-Year Default
Probabilities (\%) , 1981–2020</td><td>7-Year Credit Spread (bp)
1996–2007</td></tr><tr><td>AA</td><td>0.51</td><td>35.74</td></tr><tr><td>AA</td><td>0.49</td><td>43.67</td></tr><tr><td>A</td><td>0.76</td><td>68.68</td></tr><tr><td>BBB</td><td>2.27</td><td>127.53</td></tr><tr><td>BB</td><td>8.89</td><td>280.28</td></tr><tr><td>B</td><td>20.99</td><td>481.04</td></tr><tr><td>CCC/C</td><td>50.75</td><td>1,103.70</td></tr></table>
- The average credit spread for bonds with different credit ratings between December 1996 and June 2007. This is taken from data on bond yields published by Merrill Lynch and an assumption that the reference risk-free rate is 10 basis points less than the seven-year swap rate. The bonds had an average maturity of about seven years.

The table considers data on bond yields only up to the start of the 2008 Global Financial Crisis. During the crisis, credit spreads soared. If that unusual period had been included, the results to be presented, which show that hazard rates calculated from credit spreads are higher than those calculated from historical default probabilities, would become much more extreme.

Table 17.5 shows estimates of the average seven-year hazard rates. $^{17}$  Suppose that  $Q$  is the seven-year cumulative default probability. From equation (17.2)

$$

Q = 1 - e ^ {- 7 \bar {\lambda}}

$$ where  $\overline{\lambda}$  is the average hazard rate so that

$$
\overline {{\lambda}} (7) = - \frac {1}{7} \ln (1 - Q)
$$

Consider, for example, an A-rated company. The cumulative seven-year default rate is  $0.76\%$  or 0.0076 so that the average hazard rate is

$$
- \frac {1}{7} \ln (1 - 0. 0 0 7 6) = 0. 0 0 1 0 9
$$ or  $0.109\%$ . The hazard rates implied by credit spreads in Table 17.5 are based on equation (17.3). The recovery rate is assumed to be  $40\%$ . Consider again A-rated bonds. The average seven-year credit spread in Table 17.4 is 68.68 basis points or 0.006868. The average seven-year hazard rate is therefore


$$
0. 0 0 6 8 6 8 / (1 - 0. 4) = 0. 0 1 1 4 5
$$

Table 17.5 Average Seven-Year Hazard Rates

<table><tr><td>Rating</td><td>Rate from Default Probabilities (\%)</td><td>Rate Implied by Credit Spreads (\%)</td><td>Difference</td></tr><tr><td>AAA</td><td>0.073</td><td>0.596</td><td>0.523</td></tr><tr><td>AA</td><td>0.070</td><td>0.728</td><td>0.658</td></tr><tr><td>A</td><td>0.109</td><td>1.145</td><td>1.036</td></tr><tr><td>BBB</td><td>0.328</td><td>2.126</td><td>1.798</td></tr><tr><td>BB</td><td>1.330</td><td>4.671</td><td>3.341</td></tr><tr><td>B</td><td>3.366</td><td>8.017</td><td>4.651</td></tr><tr><td>CCC/C</td><td>10.118</td><td>18.395</td><td>8.207</td></tr></table>

$\%$  per annum.

Table 17.5 shows that the hazard rates implied by credit spreads before the 2008 Global Financial Crisis are higher than those calculated from a long period of historical data. The difference between the two hazard rates tends to increase as credit quality declines. From this, one can conclude that investors get well compensated for taking credit risk. The compensation is greater than an actuarial estimate of the cost of defaults. Furthermore, this excess compensation, or excess return, increases as the amount of the credit risk assumed increases.[18]

The excess return does not remain constant through time. When credit spreads are high (as they were, for example, during the 2008 Global Financial Crisis), excess returns tend to increase.

# 17.7.1 Reason for the Difference

Why do we see such big differences between hazard rates estimated from default probabilities and those implied by credit spreads? This is the same as asking why corporate bond traders on average get compensated for more than just the expected cost of defaults.

One reason for the results is that corporate bonds are relatively illiquid and the returns on bonds are higher than they would otherwise be to compensate for this. But this is a small part of what is going on. In normal markets, it explains perhaps 25 basis points of the excess return earned by bond traders. Another possible reason for the results is that the subjective default probabilities of bond traders are much higher than those given in Table 17.1. Bond traders may be allowing for depression scenarios much worse than anything seen in the period covered by their data. However, it is difficult to see how this can explain a large part of the excess return that is observed.

By far the most important reason for the results in Table 17.5 is that bonds do not default independently of each other. Evidence for this is that default rates vary markedly from year to year. Table 9.6 shows that default rates for all rated companies ranged from a low of  $0.15\%$  in 1981 to  $4.19\%$  in 2009. This year-to-year variation in default rates gives rise to systematic risk (i.e., risk that cannot be diversified away). Bond traders earn an excess expected return for bearing this risk. In this respect, bond traders are no different from equity traders. The average extra return earned by equity traders for bearing systematic risk is often assumed to be  $5\%$  or  $6\%$  per year. The excess return earned by bond traders is much less than this for high-quality bonds. However, as the bond's credit quality decreases, it becomes more like equity and the excess return earned tends to increase.

What causes default correlation and the resultant systematic risk? One explanation is the economy. Good macroeconomic conditions decrease the probability of default for all companies; bad macroeconomic conditions increase the probability of default for all companies. (In Vasicek's model, which was discussed in Chapter 9, the factor  $F$  can be

# BUSINESS SNAPSHOT 17.3

# Contagion

Credit contagion is the process whereby a problem in one sector of the world economy leads to problems in other, unrelated sectors. When Russia defaulted on its debt in 1998, there was a flight to quality and credit spreads on all bonds increased. During the Global Financial Crisis that started in 2007, there was a similar flight to quality and again credit spreads increased. The accompanying recession led to a record number of companies defaulting in 2009. In 2011, problems experienced by Greece caused investors to be reluctant to buy the debt of other countries such as Spain, Ireland, Portugal, and Italy. As a result, credit spreads on the debt issued by these countries increased sharply.

The reasons for credit contagion have been debated by researchers. It may be the case that investors become more risk averse when they lose money in one sector. It may be the case that problems in one sector lead investors to become more pessimistic about other, unrelated sectors. Whatever the reason, entities in unrelated sectors are liable to find it more difficult to fund their activities and, as a result, may become more likely to default.

regarded as representing the overall health of the economy.) Another explanation is what is known as "contagion." This is discussed in Business Snapshot 17.3.

In addition to systematic risk, which we have just talked about, there is nonsystematic (or idiosyncratic) risk associated with each bond. If we were talking about stocks, we would argue that investors can diversify the nonsystematic risk by choosing a portfolio of, say, 30 stocks. They should not therefore demand a risk premium for bearing nonsystematic risk. For bonds the arguments are not so clear cut. Bond returns are highly skewed, with limited upside. (For example, on an individual bond there might be a  $99.75\%$  chance of a  $7\%$  return in a year, and a  $0.25\%$  chance of a  $-60\%$  return in the year, the first outcome corresponding to no default and the second to default.) The nonsystematic component of this risk is difficult to "diversify away."19 It requires tens of thousands of different bonds to be held. In practice, many bond portfolios are far from fully diversified. As a result, bond traders may earn an extra return for bearing nonsystematic risk as well as for bearing the systematic risk mentioned in the previous paragraph.

# 17.7.2 Valuation vs. Scenario Analysis

In Chapter 10, we explained that the estimates made for market variables can depend on the use to which the estimates are to be put. For valuation it is common to make estimates in a risk-neutral world (i.e., a world where individuals do not require an extra return for bearing risk) and to use risk-neutral valuation. For scenario analysis, real-world estimates are appropriate.


Which estimates of default rates should be used for valuation and scenario analysis? The estimates from credit spreads can be used for valuation the same way the risk-neutral estimates of other variables are used. For example, to value a bond we can use the credit risk estimates of default probabilities and discount at the risk-free rate. However, for scenario analysis it is more appropriate to use the "real-world" estimates obtained from historical data.

# 17.8 Using Equity Prices to Estimate Default Probabilities

When we use a table such as Table 17.1 to estimate a company's real-world probability of default, we are relying on the company's credit rating. Unfortunately, credit ratings are revised relatively infrequently. This has led some analysts to argue that equity prices can provide more up-to-date information for estimating default probabilities.

In 1974, Merton proposed a model where a company's equity is an option on the assets of the company.[20] Suppose, for simplicity, that a firm has one zero-coupon bond outstanding and that the bond matures at time  $T$ . Define

$V_{0}$ : Value of company's assets today.

$V_{T}$ : Value of company's assets at time  $T$ .

$E_0$ : Value of company's equity today.

$E_{T}$ : Value of company's equity at time  $T$ .

$D$ : Amount of debt interest and principal due to be repaid at time  $T$ .

$\sigma_{V}$ : Volatility of assets (assumed constant).

$\sigma_{E}$ : Instantaneous volatility of equity.

If  $V_{T} < D$ , it is (at least in theory) rational for the company to default on the debt at time  $T$ . The value of the equity is then zero. If  $V_{T} > D$ , the company should make the debt repayment at time  $T$  and the value of the equity at this time is  $V_{T} - D$ . Merton's model, therefore, gives the value of the firm's equity at time  $T$  as

$$

E _ {T} = \max (V _ {T} - D, 0)

$$

This shows that the equity of a company is a call option on the value of the assets of the company with a strike price equal to the repayment required on the debt. The Black-Scholes-Merton formula (see Appendix E at the end of this book), assuming no dividend payments, gives the value of the equity today as

$$

E _ {0} = V _ {0} N \left(d _ {1}\right) - D e ^ {- r T} N \left(d _ {2}\right) \tag {17.4}

$$ where


$$

\begin{array}{l} d _ {1} = \frac {\ln (V _ {0} / D) + (r + \sigma_ {V} ^ {2} / 2) T}{\sigma_ {V} \sqrt {T}} \\ d _ {2} = d _ {1} - \sigma_ {V} \sqrt {T} \\ \end{array}

$$ and  $N$  is the cumulative normal distribution function.

Under Merton's model, the company defaults when the option is not exercised. The probability of this can be shown to be  $N(-d_2)$ . To calculate this, we require  $V_{0}$  and  $\sigma_V$ . Neither of these is directly observable. However, if the company is publicly traded, we can observe  $E_0$ . This means that equation (17.4) provides one condition that must be satisfied by  $V_{0}$  and  $\sigma_V$ . We can also estimate  $\sigma_E$ . From a result in stochastic calculus known as Ito's lemma,

$$
\sigma_ {E} E _ {0} = \frac {\partial E}{\partial V} \sigma_ {V} V _ {0}
$$

Here  $\partial E / \partial V$  is the delta of the equity. From Appendix E it is  $N(d_{1})$ , so that

$$
\sigma_ {E} E _ {0} = N \left(d _ {1}\right) \sigma_ {V} V _ {0} \tag {17.5}
$$

This provides another equation that must be satisfied by  $V_{0}$  and  $\sigma_V$ . Equations (17.4) and (17.5) provide a pair of simultaneous equations that can be solved for  $V_{0}$  and  $\sigma_V$ .[21]

# Example 17.4

The value of a company's equity is  \$3 million and the volatility of the equity is 80\%$ . The debt that will have to be paid in one year is 10 million. The risk-free rate is  $5\%$  per annum. In this case,  $E_0 = 3$ ,  $\sigma_E = 0.80$ ,  $r = 0.05$ ,  $T = 1$ , and  $D = 10$ . Solving equations (17.4) and (17.5) yields  $V_0 = 12.40$  and  $\sigma_V = 0.2123$ . The parameter,  $d_2$ , is 1.1408, so that the probability of default is  $N(-d_2) = 0.127$  or  $12.7\%$ . The market value of the debt is  $V_0 - E_0$  or 9.40. The present value of the promised payment on the debt is  $10e^{-0.05 \times 1} = 9.51$ . The expected loss on the debt is therefore  $(9.51 - 9.40) / 9.51$  or about  $1.2\%$  of its no-default value.

The basic Merton's model we have just presented has been extended in a number of ways. For example, one version of the model assumes that a default occurs whenever the value of the assets falls below a barrier level. Another allows payments on debt instruments to be required at more than one time. Hull et al. (2004) discuss how implied volatilities can be used in conjunction with Merton's model.[22]

# 17.8.1 Performance of the Model

How well do the default probabilities produced by Merton's model and its extensions correspond to actual default experience? The answer is that Merton's model and its extensions produce a good ranking of default probabilities (risk-neutral or real-world). This means that a monotonic transformation can be estimated to convert the probability of default output from Merton's model into a good estimate of either the real-world or risk-neutral default probability. Moody's KMV and Kamakura provide a service that transforms a default probability produced by Merton's model into a real-world default probability. Other organizations have used Merton's model to estimate credit spreads, which as we have explained, are closely linked to risk-neutral default probabilities. The default probability,  $N(-d_2)$ , is in theory a risk-neutral default probability because it is calculated from an option pricing model. It may seem strange for Moody's KMV and Kamakura to use it to estimate a real-world default probability. Given the nature of the calibration process we have just described, the underlying assumption is that the rankings of risk-neutral default probabilities, real-world default probabilities, and default probabilities produced by Merton's model are all the same.

# 17.8.2 Real-World vs. Risk-Neutral Default Probabilities

Merton's model provides a way of understanding why default probabilities are higher in the risk-neutral world than in the real world. In a risk-neutral world, the expected growth rate of the value of the company's assets is the risk-free rate. In the real world, the growth rate of the company's assets is usually higher than this (reflecting a risk premium demanded by the market). The probability of the value of the assets dropping below the face value of the debt at a future time is therefore higher in the risk-neutral world than in the real world.

# 17.8.3 Distance to Default

The term distance to default has been coined to describe the output from Merton's model. This is the number of standard deviations the asset price must change for default to be triggered  $T$  years in the future. One definition of distance to default is  $d_{2}$  or

$$
\frac {\ln V _ {0} - \ln D + (r - \sigma_ {V} ^ {2} / 2) T}{\sigma_ {V} \sqrt {T}}
$$

As the distance to default declines, the company becomes more likely to default. In Example 17.4, the one-year distance to default is 1.14 standard deviations.

# Summary

The estimation of default probabilities and recovery rates is an important activity for risk managers. If a company has issued publicly traded debt, credit ratings provide one source of information. Rating agencies such as S&P provide extensive statistics on default rates for companies that have been awarded particular credit ratings. The recovery rate is the value of a bond shortly after default as a percentage of its face value.

There are a number of sources of information about credit spreads. The credit default swap (CDS) market is one such source. A CDS is an instrument where one company buys from another company protection against a third company or country (the reference entity) defaulting on its obligations. The CDS spread is the amount paid per year for protection as a percentage of the notional principal. Two other sources of a company's credit spreads are the excess of yields on bonds issued by the company over the risk-free rate and asset swap spreads. Default probabilities can be implied from credit spreads and an assumption about recovery rates.

The default probabilities that are based on historical data, such as those produced by rating agencies, are termed real-world or physical default probabilities. Those based on credit spreads are risk-neutral default probabilities. Risk-neutral default probabilities are higher than real-world default probabilities. Risk-neutral default probabilities should be used for valuation. Real-world default probabilities should be used for scenario analysis. Either type of probability can be calculated using a model developed by Robert Merton in 1974, provided that the model is calibrated appropriately.

# Further Reading

Altman, E. I. "Measuring Corporate Bond Mortality and Performance." Journal of Finance 44 (1989): 902-922.

Duffie, D., and K. Singleton. "Modeling Term Structures of Defaultable Bonds." Review of Financial Studies 12 (1999): 687-720.

Fons, J. S. "The Default Premium and Corporate Bond Experience." Journal of Finance 42, no. 1 (March 1987): 81-97.

Hull, J., M. Predescu, and A. White. "Bond Prices, Default Probabilities, and Risk Premiums." Journal of Credit Risk 1, no. 2 (Spring 2005): 53-60.

Hull, J., M. Predescu, and A. White. "Relationship between Credit Default Swap Spreads, Bond Yields, and Credit Rating Announcements." Journal of Banking and Finance 28 (November 2004): 2789-2811.

Kealhofer, S. "Quantifying Credit Risk I: Default Prediction." *Financial Analysts Journal* 59, no. 1 (2003): 30-44.

Kealhofer, S. "Quantifying Credit Risk II: Debt Valuation." *Financial Analysts Journal* 59, no. 3 (2003): 78-92.

Litterman, R., and T. Iben. "Corporate Bond Valuation and the Term Structure of Credit Spreads." Journal of Portfolio Management (Spring 1991): 52-64.

Merton, R. C. "On the Pricing of Corporate Debt: The Risk Structure of Interest Rates." Journal of Finance 29 (1974): 449-470.

Rodriguez, R. J. "Default Risk, Yield Spreads, and Time to Maturity." Journal of Financial and Quantitative Analysis 23 (1988): 111-117.

# Practice Questions and Problems (Answers at End of Book)

17.1 What are the investment grade ratings used by S&P.
17.2 What is meant by a hazard rate?
17.3 Calculate the average hazard rate for a B-rated company during the first year from the data in Table 17.1.
17.4 Calculate the average hazard rate for a BB-rated company during the third year from the data in Table 17.1.
 17.5 A credit default swap requires a semiannual payment at the rate of 60 basis points per year. The principal is 300 million and the credit default swap is settled in cash. A default occurs after four years and two months, and the calculation agent estimates that the price of the cheapest deliverable bond is 40\% of its face value shortly after the default. List the cash flows and their timing for the seller of the credit default swap.
17.6 Explain the two ways a credit default swap can be settled.
17.7 Explain the difference between the default probabilities calculated from historical default experience and those calculated from credit spreads.
17.8 What is the formula relating the payoff on a CDS to the notional principal and the recovery rate?
17.9 The spread between the yield on a three-year corporate bond and the yield on a similar risk-free bond is 50 basis points. The recovery rate is  $30\%$ . Estimate the implied average hazard rate per year over the three-year period.
17.10 The spread between the yield on a five-year bond issued by a company and the yield on a similar risk-free bond is 80 basis points. Assuming a recovery rate of  $40\%$ , estimate the implied average hazard rate per year over the five-year period. If the spread is 70 basis points for a three-year bond, what do your results indicate about the implied average hazard rate in years 4 and 5?
17.11 Should researchers use default probabilities calculated from historical data or from credit spreads for (a) calculating credit value at risk and (b) adjusting the price of a derivative for default?
17.12 How are recovery rates usually defined?
17.13 Verify that the numbers in the second column of Table 17.5 are consistent with the numbers in the second column of Table 17.4.
17.14 A four-year corporate bond provides a coupon of  $4\%$  per year payable semiannually and has a yield of  $5\%$  expressed with continuous compounding. The risk-free yield curve is flat at  $3\%$  with continuous compounding. Assume that defaults can take place at the end of each year (immediately before a coupon or principal payment) and the recovery rate is  $30\%$ . Estimate the risk-neutral default probability on the assumption that it is the same each year using the approach in Table 17.3.
17.15 A company has issued threeand five-year bonds, each of which has a coupon of  $4\%$  per annum payable annually. The yields on the bonds (expressed with continuous compounding) are  $4.5\%$  and  $4.75\%$ , respectively. Risk-free interest rates are

$3.5\%$  with continuous compounding for all maturities. The recovery rate is  $40\%$ . Defaults can take place halfway through each year. The unconditional risk-neutral default rates per year are  $Q_{1}$  for years 1 to 3 and  $Q_{2}$  for years 4 and 5. Estimate  $Q_{1}$  and  $Q_{2}$ .

17.16 Suppose that in an asset swap,  $B$  is the market price of the bond per dollar of principal,  $B^{*}$  is the default-free value of the bond per dollar of principal, and  $V$  is the present value of the asset swap spread per dollar of principal. Show that  $V = B^{*} - B$ .
17.17 Show that, under Merton's model in Section 17.8, the credit spread on a  $T$ -year zero-coupon bond is  $-\ln [N(d_2) + N(-d_1) / L] / T$  where  $L = De^{-rT} / V_0$ .
17.18 The value of a company's equity is \$2 million and the volatility of its equity is 50\%. The debt that will have to be repaid in one year is \$5 million. The risk-free interest rate is 4\% per annum. Use Merton's model to estimate the probability of default. (Hint: The Solver function in Excel can be used for this question.)
 17.19 A five-year credit default swap entered into on June 20, 2023, requires quarterly payments at the rate of 400 basis points per year. The principal is 100 million. A default occurs after four years and two months. The auction process finds the price of the cheapest deliverable bond to be 30\% of its face value. List the cash flows and their timing for the seller of the credit default swap.
17.20 "The position of a buyer of a credit default swap is similar to the position of someone who is long a risk-free bond and short a corporate bond." Explain this statement.
17.21 Why is there a potential asymmetric information problem in credit default swaps?
17.22 Suppose that the risk-free yield curve is flat at  $6\%$  with continuous compounding and a five-year bond with a coupon of  $5\%$  (paid semiannually) sells for 90.00. How much would the bond be worth if it were a risk-free bond? What is the present value of the expected loss from defaults? How would an asset swap on the bond be structured? What is the asset swap spread that would be calculated in this situation?

# Further Questions

17.23 Suppose that a three-year corporate bond provides a coupon of  $7\%$  per year payable semiannually and has a yield of  $5\%$  (expressed with semiannual compounding). The yield for all maturities on risk-free bonds is  $4\%$  per annum (expressed with semiannual compounding). Assume that defaults can take place every six months (immediately before a coupon payment) and the recovery rate is  $45\%$ . Estimate the default probabilities assuming (a) the unconditional default probabilities are the same on each possible default date and (b) the default probabilities conditional on no earlier default are the same on each possible default date.
17.24 A company has issued oneand two-year bonds providing  $8\%$  coupons, payable annually. The yields on the bonds (expressed with continuous compounding) are  $6.0\%$  and  $6.6\%$ , respectively. Risk-free rates are  $4.5\%$  for all maturities. The recovery rate is  $35\%$ . Defaults can take place halfway through each year. Estimate the risk-neutral default rate each year.

17.25 The value of a company's equity is \$4 million and the volatility of its equity is 60\%. The debt that will have to be repaid in two years is \$15 million. The risk-free interest rate is 6\% per annum. Use Merton's model to estimate the expected loss from default, the probability of default, and the recovery rate (as a percentage of the no-default value) in the event of default. (Hint: The Solver function in Excel can be used for this question.)

