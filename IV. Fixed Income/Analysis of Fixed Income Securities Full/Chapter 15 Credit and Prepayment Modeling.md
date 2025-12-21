---
title: "Chapter 15: Credit and Prepayment Models"
parent_directory: "IV. Fixed Income"
formatted: 2025-12-21 11:03:25 PM
formatter_model: claude-sonnet-4
cli-tool: claude-code
primary_tags:
  - credit risk modeling
  - prepayment models
  - credit rating agencies
secondary_tags:
  - corporate credit
  - retail credit
  - FICO scores
  - mortality rates
  - logistic regression
  - CDS protection
  - refinancing incentive
  - seasoning multiplier
cssclasses: academia
---

# Chapter 15: Credit and Prepayment Models

## 15.1 Introduction

Building a reliable and accurate credit risk model is crucial in managing credit risk.

### 15.1.1 Rating Agencies

S&P Global Ratings (previously Standard & Poor's) is an American credit rating agency (CRA) and a division of S&P Global that publishes financial research and analysis on stocks, bonds, and commodities. S&P is considered the largest of the Big Three credit-rating agencies, which also include Moody's Investors Service and Fitch Ratings. Its head office is located on 55 Water Street in Lower Manhattan, New York City.

Moody's Investors Service, often referred to as Moody's, is the bond credit rating business of Moody's Corporation, representing the company's traditional line of business and its historical name. Moody's Investors Service provides international financial research on bonds issued by commercial and government entities. Moody's, along with Standard & Poor's and Fitch Group, is considered one of the Big Three credit rating agencies.

Fitch Ratings Inc. is an American credit rating agency and is one of the "Big Three credit rating agencies", the other two being Moody's and Standard & Poor's. It is one of the three nationally recognized statistical rating organizations (NRSRO) designated by the U.S. Securities and Exchange Commission in 1975.

Morningstar, Inc. is an American financial services firm headquartered in Chicago, Illinois, United States. It provides an array of investment research and investment management services. Joe Mansueto founded Morningstar in 1984. In 2010, Morningstar acquired Realpoint, LLC, a former division of private-equity giant Capmark Finance and a nationally recognized statistical rating organization (NRSRO). The firm was rebranded as Morningstar Credit Ratings and competes with S&P, Moody's Investors Service, Fitch Ratings and similar Wall Street firms to provide research and ratings of structured debt products, including mortgage-backed securities and asset-backed securities. Today, Morningstar Credit Ratings issues credit ratings on both structured financial products (CMBS, RMBS, CLOs) and corporate/financial institutions. On May 29, 2019, Morningstar publicly announced its intention to significantly expand the breadth and scope of its ratings business through a 669 million acquisition of DBRS.

Egan-Jones Ratings Company, also known as EJR, was founded in 1995 and actively rates the credit worthiness of approximately 2000+ high yield and high grade U.S. corporate debt issuers. Egan-Jones positions itself as unique among nationally recognized statistical rating organizations (NRSROs) for being wholly investor-supported, a structure designed to minimize the potential for conflicts of interest in assessing credit quality.

### 15.1.2 Credit Bureaus

#### Investopedia:

People talk a lot about credit bureaus. What do they do? How do they differ? And why are there three of them? (Actually, there are a lot more than that, but it's mainly a certain trio that affects most consumers' lives.) Let's take a closer look at these entities, what they do, and how they do it.

Credit rating agencies are different than credit reporting bureaus. Credit ratings assess a company or country's ability to repay a loan. Credit reporting determines an individual's credit score.

The three credit reporting agencies are TransUnion, Equifax, and Experian.

In order to get the best loan terms available, bring all three credit scores to your loan appointment. Because of their reporting methods, it is common to have a different credit score across all three bureaus.

## 15.2 Corporate Credit

Public corporations (i.e. stocks are publicly traded) are the easiest group to model. Their financial information is publicly available by law and hence they are most transparent. Private firms, on the contrary, are difficult to analyze because of the lack their financial information. As a result, tools for analyzing public firms are much more developed and reliable than those for the private firms.

### 15.2.1 Public Firms

Reduced-form Models

Structural Models

### 15.2.2 Private Firms

Private firms are usually smaller (with few exceptions such as Dell) and less transparent.

Some firms have accounting data. Use logit.

$$
y = \frac{1}{1 + \exp\left(-\sum_{i=0}^n \beta_i x_i\right)}
$$ where $x_i$'s are financials of the company and $y$ is a dummy variable (0 for no default and 1 for default). This is known as the logistic regression. Yet it cannot be performed as an OLS but must go through the maximum likelihood estimation.

Could we use Z score for this? Z score is a default prediction model. It classifies firms into two groups: default likely and default unlikely. Yet, Z score is a continuous measure and hence can be used as an indicator for credit quality.

#### KMV

In case of private companies, for which stock price data are generally not available, KMV uses essentially the same approach as for quoted firms. However, the market value of assets and asset volatility are estimated from the firm's observed characteristics (e.g. industry mix, size and geographic region) and are based on observations of trends among public firms.

Some firms have no accounting data. Benchmarking is the usual method for private firms. Benchmarking refers to using the credit rating of a publicly traded firm in the same industry with similar products.

## 15.3 Retail Credit

Retail credit refers to individuals or small in the neighborhood "mom-and-pop" stores. These borrowers are very diverse and hard to evaluate their credit quality. Hence, individual risks cannot be managed individually but must be managed by diversification (i.e. in large and diverse quantities) or through collateral.

### 15.3.1 FICO

Wikipedia:

FICO (legal name: Fair Isaac Corporation), originally Fair, Isaac and Company, is a data analytics company based in San Jose, California focused on credit scoring services. It was founded by Bill Fair and Earl Isaac in 1956. Its FICO score, a measure of consumer credit risk, has become a fixture of consumer lending in the United States.

In 2013, lenders purchased more than 10 billion FICO scores and about 30 million American consumers accessed their scores themselves.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/81824a24c1c00847d0f0468b94962102819ea2b42890ce17a4eadebafacce922.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/f87203571d42849922db0f114bade1d0ec2568959e74f699b4e1bd2cd5d2d0a5.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/c175fc9e11378e6bdfb8facbad31ccb17abe797c98d4793d23fa5d7355a77c39.jpg)
Figure 15.1: FICO Score Distribution

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/93a6b5d1e239cf26c9a77130f5473e93031fbbea49b254698d76f771271774d0.jpg)

FICO Scores are calculated using many different pieces of credit data in your credit report. This data is grouped into five categories: payment history (35%), amounts owed (30%), length of credit history (15%), new credit (10%) and credit mix (10%).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/50a83d59-0129-4701-a939-9f0396f0b64f/65fd342bf3ae97fbe974fcf8c57905a72cde00b792797029b4ff7ce2e2a31199.jpg)
Figure 15.2: FICO

### 15.3.2 Mortality Rate

Mortality rate is widely used by insurance companies to estimate life expectancy and then set the insurance premiums for life insurance policies. This is also used in ABS and mortgages (on a monthly basis, known as single monthly mortality (SMM) rate which will be discussed in Chapter 12) for prepayment as well as default.

The mortality rate is very similar to the intensity parameter in the Poisson process. In other words, using the mortality to measure credit risk is identical to assuming Poisson jumps for default. In this regard, the method used for retail credit is the same as that used in corporate credit (e.g. Jarrow-Turnbull model).

However, in corporate credit, each company has its own mortality rate, but in retail credit, mortality rate is applied to a (hopefully) homogeneous group of individuals or small private firms.

### 15.3.3 Constant Default Rate

The constant default rate (CDR) is the percentage of mortgages within a pool of loans in which the mortgagors (borrowers) have fallen more than 90 days behind in making payments to their lenders. These pools of individual outstanding mortgages are created by financial institutions that combine loans to create mortgage-backed securities (MBS), which they sell to investors.

An "implied" CDR will be discussed in Chapter 12.

### 15.3.4 Pay-As-You-Go (PAUG)

As mentioned earlier, because of lack of data, retail credit is usually analyzed in pools (hopefully homogeneous). As a result, defaults occur "continuously" in a pool. Unlike a corporation for which default means cease to exist, a default in a pool is much like a small reduction in size. As a result, for a CDS protection (against whole pool), it is not a large lump sum payment but a small fraction of the pool size.

PAUG ("Pay As You Go") refers to application of credit derivatives technology to structured finance products. It works similarly to a credit default swap (CDS) with the reference entity being a structured finance product such as ABS, commercial mortgage-backed security (CMBS), residential mortgage-backed security (RMBS), etc. The trigger events in PAUG can be classified mainly as "credit events" and "floating rate payment events". PAUG is a settlement methodology for CDS on ABS reference entities.

### 15.3.5 Foreclosure

Wikipedia:

Foreclosure is a legal process in which a lender attempts to recover the balance of a loan from a borrower who has stopped making payments to the lender by forcing the sale of the asset used as the collateral for the loan.

### 15.3.6 Real Estate Owned (REO)

From Wikipedia,

Real estate owned, or REO, is a term used in the United States to describe a class of property owned by a lender—typically a bank, government agency, or government loan insurer—after an unsuccessful sale at a foreclosure auction. A foreclosing beneficiary will typically set the opening bid at a foreclosure auction for at least the outstanding loan amount. If there are no bidders that are interested, then the beneficiary will legally repossess the property. This is commonly the case when the amount owed on the home is higher than the current market value of the foreclosure property, such as with a mortgage loan made at a high loan-to-value during a real estate bubble. As soon as the beneficiary repossesses the property it is listed on their books as REO and categorized as an asset. (See non-performing asset).

## 15.4 Prepayment Models

Loans can be prepaid. In such a case, banks earn less interests, although the principal is paid back early. There are many reasons why a borrower will prepay before the loan is due. Basically we classify the reasons into two broad categories:

1. economic reasons
2. non-economic reasons

The former mainly refers to refinancing. When interest rates drop (and so does the mortgage rate), the borrower can refinance to lower his/her interest payments.

The latter contains a number of different reasons. The commonly cited ones are:

(a) change of marital status - a newlywed coupon will likely to buy a larger home and a divorced couple will do the opposite and each case will result in selling the existing properties and terminate the mortgage.
(b) addition (or reduction) of members - couple after having a child will likely to move to suburbs to gain living space and children leaving home will result in downsize and each case will result in selling the existing properties and terminate the mortgage
(c) relocation – this can be change of jobs which will lead to selling the property and terminate the mortgage.

Non-economic reasons cannot be modeled easily using derivative pricing models. Hence large amount of data mining is the common methodology in this area.

Even refinance which is purely economical cannot be easily modeled. This is because people are generally not sensitive to financial information. Even when rates are lower, without aggressively paying attention, regular people will not know. Another big factor is refinance costs. Refinancing isn't free. Only when savings on interests outweigh the refinance costs, it is beneficial to refinance. As a result, although one can use an interest rate model introduced in Chapter 14, in reality, those models don't work well.

Accordingly, econometric methods employing large amount of data are the common practice in modeling the prepayment behavior. The key factors that determine prepayment rates are:

(1) refinancing incentive,
(2) seasonal variations,
(3) seasoning of the mortgage pool, and

(4) burnout effect.

A general model is logistic:

$$
\begin{align}
p &= \frac{\exp\left(\sum_{i=1}^n \beta_i x_i\right)}{1 + \exp\left(\sum_{i=1}^n \beta_i x_i\right)} \\
&= \frac{1}{1 + \exp\left(-\sum_{i=1}^n \beta_i x_i\right)}
\end{align}
$$

### 15.4.1 Richard and Roll Model

Mathworks:

While prepayment modeling often involves complex and sophisticated modeling, often at the loan level, this example uses a slightly modified approach based on the model proposed by Richard and Roll in [6].

Richard and Roll propose a multiplicative model of the following:

$\text{CPR} = \text{RefiIncentive} \times \text{SeasoningMultiplier} \times \text{SeasonalityMultiplier} \times \text{BurnoutMultiplier}$

For the custom model in this example, the Burnout Multiplier, which describes the tendency of prepayment to slow when a significant number of homeowners have already refinanced, is ignored and the first three terms are used.

The refinancing incentive is a function of the ratio of the coupon-rate of the mortgage to the available mortgage rate at that particular point in time. For example, the Office of Thrift Supervision (OTS) proposes the following model:

$$
\text{Refi} = 0.2406 - 0.1389 \times \arctan(5.952 \times (1.089 - \frac{\text{CouponRate}}{\text{MortgageRate}}))
$$

### 15.4.2 Andrew Davidson Prepayment Model

Andrew Davidson is a financial innovator and leader in the development of financial research and analytics. He has worked extensively on mortgage-backed securities product development, valuation and hedging. He is president of Andrew Davidson & Co., Inc., a New York firm specializing in the application of analytical tools to investment management, which he founded in 1992.

Andrew Davidson & Co., Inc. turns mortgage data into investment insight. The firm created VECTORS® Analytics, a set of proprietary tools including the LoanDynamics Model for credit-sensitive mortgage securities, prepayment and option-adjusted spread (OAS) models for fixed-rate mortgages, adjustable-rate mortgages, collateralized mortgage obligations (CMOs), and asset-backed securities (ABS). Over 150 financial institutions depend on VECTORS® Analytics to help manage risk and value securities.

The company also provides consulting advice to financial institutions in the development and implementation of investment management and risk management strategies. They also work on a variety of fixed-income trading and valuation analyses. Customers of the firm include businesses of all sizes including many of the largest and most sophisticated financial institutions.

Andrew was instrumental in the creation of the Freddie Mac and Fannie Mae risk-sharing transactions: STACR and CAS. These transactions allow Freddie Mac and Fannie Mae to attract private capital to bear credit risk, even as they remain in government conservatorship. Andrew is also active in other dimensions of GSE reform and has testified before the Senate Banking Committee on multiple occasions. Andrew also helped establish the Structured Finance Industry Group and served on the Executive Committee at its inception.

For six years Andrew worked at Merrill Lynch, where he was a Managing Director in charge of a staff of 60 financial and system analysts. In this role, he produced research reports and sophisticated analytical tools including prepayment and option-adjusted spread models, portfolio analysis tools, and was also responsible for the development of trading and risk management systems for the mortgage desk covering ARMs, CMOs, pass-throughs, IOs/POs and OTC options.

Andrew was previously a financial analyst in Exxon's Treasurer's Department. He received an MBA in Finance at the University of Chicago and a BA in Mathematics and Physics at Harvard.

He is co-author of the books Mortgage Valuation Models: Embedded Options, Risk and Uncertainty; Securitization: Structuring and Investment Analysis; and Mortgage-Backed Securities: Investment Analysis and Valuation Techniques. He has contributed to The Handbook of Mortgage-Backed Securities and other publications.

### 15.4.3 QRM Prepayment Model

QRM's Mortgage Banking Practice includes the entire secondary marketing process—from pricing, risk reporting, trade management, pool and hedge optimization, to loan delivery. QRM's clients have successfully hedged trillions of dollars of mort- gage originations across a multitude of economic conditions, bringing consistency to the bottom-line.


QRM clients create optimal secondary marketing strategies that produce a predictable flow of profits limited only by the amount of business coming in and the degree of competition in pricing. Clients accurately price and measure the exposure of all their loan products and use robust best execution analysis to accurately hedge, pool, and deliver those loans. QRM clients make informed decisions which preserve profitability and decrease earnings volatility, thereby increasing shareholder value.

QRM clients model virtually every mortgage product or related hedge instrument, including all conforming, jumbo, alt-A, sub-prime, hybrid, reverse, interest-only, and other adjustable rate loan types. As part of that analysis, QRM clients model all possible loan delivery options, including mortgage securities, cash trades, whole loan bids, assignments-of-trades, and CMO securitization. Our Trading Analytics Research group is committed to dissecting new financial instruments and passing the best practice modeling methods on to our clients.

### 15.4.4 BlackRock Prepayment Model

In 2000, BlackRock launched BlackRock Solutions, the analytics and risk management division of BlackRock, Inc. The division grew from the Aladdin System (which is the enterprise investment system), Green Package (which is the Risk Reporting Service) PAG (portfolio analytics) and AnSer (which is the interactive analytics). BlackRock Solutions (BRS) serves two roles within BlackRock. First, BlackRock Solutions is the in-house investment analytics and "process engineering" department for BlackRock which works with their portfolio management teams, risk and quantitative analysis, business operations and every other part of the firm that touches the investment process. Second, BlackRock Solutions (BRS) and the three primary divisions are services that offered to institutional clients. As of 2013, the platform had nearly 2,000 employees.

BlackRock differentiates itself from other asset managers by claiming its risk management is not separate. Risk management is the foundation and cornerstone of the firm's entire platform.[60] Aladdin keeps track of 30,000 investment portfolios, including BlackRock's own along with those of competitors, banks, pension funds, and insurers. According to The Economist, as at December 2013, the platform monitors almost 7 percent of the world's 225 trillion of financial assets.

BlackRock Solutions was retained by the U. S. Treasury Department in May 2009 to manage the toxic mortgage assets (i.e. to analyze, unwind, and price) that were owned by Bear Stearns, AIG, Inc., Freddie Mac, Morgan Stanley, and other financial firms that were affected in the 2008 financial crisis.

