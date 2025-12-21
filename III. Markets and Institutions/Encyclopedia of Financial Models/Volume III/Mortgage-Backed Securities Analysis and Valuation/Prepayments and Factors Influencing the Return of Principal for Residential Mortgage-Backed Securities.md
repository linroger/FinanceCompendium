
---
title: "Prepayments and Factors Influencing the Return of Principal for Residential Mortgage-Backed Securities"
parent_directory: "III. Markets and Institutions/Encyclopedia of Financial Models/Volume III/Mortgage-Backed Securities Analysis and Valuation"
formatted: "2025-12-21 07:05:00 AM"
formatter_model: "kimi-k2-turbo"
cli-tool: "claude-code"
primary_tags:
  - "mortgage-backed securities prepayments"
  - "prepayment risk factors"
  - "residential mortgage refinancing"
  - "conditional prepayment rates"
secondary_tags:
  - "housing turnover dynamics"
  - "cash-out refinancing activity"
  - "borrower credit performance"
  - "mortgage default frequency"
  - "voluntary prepayment rates"
  - "involuntary prepayment rates"
  - "conditional default rates"
  - "mortgage-backed securities valuation"
  - "prepayment modeling techniques"
  - "yield curve control impact"
  - "mortgage interest rate dynamics"
cssclasses: academia
---

# Prepayments and Factors Influencing the Return of Principal for Residential Mortgage-Backed Securities

WILLIAM S. BERLINER

Executive Vice President, Manhattan Advisory Services Inc.

FRANK J. FABOZZI, PhD, CFA, CPA

Professor of Finance, EDHEC Business School

ANAND K. BHATTACHARYA, PhD

Professor of Finance Practice, Department of Finance, W. P. Carey School of Business,

Arizona State University

Abstract: Prepayments and their impact on principal cash flows are critical components of the valuation, trading, and risk management of residential mortgage-backed securities. Because of this, substantial resources are expended by investors and dealers in understanding and modeling prepayment "speeds." However, prepayment behavior is not static and has evolved repeatedly since the first prepayment waves in the early 1990s. Moreover, the very definition of "prepayments" has evolved from one focused primarily on borrowers' refinancing options to one encompassing a plethora of actions and decisions.

In general, a mortgage is a loan that is secured by underlying assets that can be repossessed in the event of default. In the residential housing market, a mortgage is defined as a loan made to the owner of a one- to four-family residential dwelling and secured by the underlying property (i.e., the land, the structure and any improvements). The fundamental unit in the residential mortgage-backed securities (MBS) market is the pool. At its lowest common denominator, mortgage-backed pools are aggregations of large numbers of mortgage loans with similar (but not identical) characteristics. Loans with a commonality of attributes such as note rate (i.e., the interest rate paid by the borrower on the loan), term to maturity, credit quality, loan balance, and product type are combined using a variety of legal mechanisms to create relatively fungible investment vehicles.

To value a residential MBS, a financial modeler must project the cash flow. For an individual mortgage, the monthly cash flow includes the scheduled principal payments (also referred to as amortization), interest payments, and any prepayments. Prepayments are any payments made by borrowers that are in excess of the scheduled principal payment. Consequently, the cash flow depends on the prepayment behavior of the borrowers in the mortgage pool. This risk faced by investors is referred to as prepayment risk and is similar to the risk faced by investors in callable corporate bonds.


Both the valuation and the subsequent performance of a residential MBS depend on prepayments—projected in the former case and realized in the latter case. In this entry, we discuss the underlying factors impacting principal repayment rates. We also draw distinctions between the traditional view of prepayments and a broader one that puts credit-related factors into context. In all these cases, the resulting proceeds (from either the property's sale or an insurance settlement) are passed on as prepaid principal to the holder of the mortgage. In the event of the sale of the property, the loan is paid off from the proceeds of the sale; in fact, most loans contain a "due-on-sale" clause ensuring that the loan is retired once the property is sold. Properties are also sold in the event that the obligors encounter financial difficulties. While we discuss credit-related factors at several points in this entry, it is important to note that prepayments resulting from credit events are sometimes taken into account under the broad umbrella of "turnover."


A second form of prepayment can be broadly ascribed to refinancing. This behavior can take a number of forms. A rate-and-term refinancing is undertaken solely to reduce the borrower's monthly payment, most commonly due to a decline in the level of consumer mortgage rates. Such a change puts the market rate for new mortgages below the rate of existing loans, creating incentives to refinance. A related activity takes place when borrowers refinance in order to liquefy their home's equity by increasing the balance on their new loan. Such transactions, referred to as cash-out refinancings, often are taken as an alternative to second lien loans. Cash-out activity is strongly correlated with rates of home price appreciation which, logically enough, creates the borrower equity extracted through the transaction. Such activity can also be relatively insensitive to traditional refinancing incentives, and has at times boosted prepayment speeds for lower-coupon MBS.

At various points in time, borrowers have also been inclined to refinance from one product into a different one that offers a payment savings. A simple form of product transition is to refinance from a fixed-rate loan into an adjustable-rate mortgage (ARM) that offers a lower rate. Borrowers have also transitioned into products with alternative amortization schemes, such as interest-only and negative amortization loans, in order to reduce their monthly payment burdens. Such transitions are contingent on the availability and popularity of alternative products, as well as borrowers' ability (either through lower rates or other nontraditional means) to achieve payment reductions.

```d2
direction: right

prepayments: Prepayments {
  shape: rectangle
  style.fill: "#e3f2fd"
  style.stroke: "#1976d2"
}

turnover: Turnover {
  shape: oval
  style.fill: "#f3e5f5"
  style.stroke: "#7b1fa2"
}

refinancing: Refinancing {
  shape: oval
  style.fill: "#e8f5e9"
  style.stroke: "#388e3c"
}

rate_term: Rate-and-Term {
  shape: rectangle
  style.fill: "#fff3e0"
  style.stroke: "#f57c00"
}

cash_out: Cash-Out {
  shape: rectangle
  style.fill: "#ffebee"
  style.stroke: "#d32f2f"
}

product_transitions: Product Transitions {
  shape: rectangle
  style.fill: "#f3e5f5"
  style.stroke: "#7b1fa2"
}

prepayments -> turnover: "Property sale/liquidation"
prepayments -> refinancing: "Replace existing loan"

refinancing -> rate_term: "Reduce monthly payment"
refinancing -> cash_out: "Extract home equity"
refinancing -> product_transitions: "Change loan type"

turnover -> prepayments
rate_term -> refinancing
cash_out -> refinancing
product_transitions -> refinancing
```
**Figure 1.1: Types of Mortgage Prepayments**  
This diagram illustrates the main categories of prepayments: turnover (when properties are sold) and refinancing (when borrowers replace their existing loans). Refinancing can be further categorized into rate-and-term refinancing, cash-out refinancing, and product transitions.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/5f56f8619e05ad7b696ff98074a6b7e5bcf12efd817bba7233309c1004a3a29f.jpg)
Figure 1 Prepayment S-Curves for Different Years for 30-year Fixed Rate Conventional Loans Data Source: eMBS.

Another critical factor in prepayments is based on the borrower's financial situation. However, the impact of borrower credit on prepayments is quite complex. Prepayments often result directly from changes to homeowners' financial situation. At its simplest, principal is returned to investors when borrowers default on their loans, although the amount and timing of principal cash flows is subject to many variables. However, credit-related factors also exert more subtle effects on prepayment behavior. For example, borrowers with weak credit, or who don't have significant equity in their home, may not be able to take advantage of declining interest rates by obtaining new loans.

Taken together, these factors and activities result in prepayment speeds that vary across the MBS market. The most common way to assess prepayment speeds within a product group is by a simple view of prepayment speeds as measured by conditional prepayment rates (CPRs) at various levels of refinancing incentive. Prepayment $S$-curves show prepayment speeds for different levels of mortgage rates and/or refinancing incentives. $S$-curves can be created using a number of different methodologies and data sources. Either projected or historical prepayment speeds can be shown; additionally, the level of prepayments can be compared by showing either the absolute level of rates or the relative degree of refinancing incentive.


An example of S-curves for different periods of time is shown in Figure 1. The figure shows historical prepayment speeds for 30-year conventional fixed-rate pools exhibited by refinancing incentive (defined as the cohort's WAC less the Freddie Mac 30-year fixed survey rate for that period). The different shapes of the S-curves are indicative of different consumer behaviors. For example, the curve for 2003 was quite steep, indicating that borrowers were extremely sensitive to refinancing opportunities; borrowers that had an incentive to refinance (or, to borrow a term from the option market, were "in-the-money") did so in large numbers. At the same time, prepayments on "out-of-the-money" pools (i.e., those with lower weighted-average coupons (WACs) and no apparent refinancing incentive) were relatively slow, reflecting slow housing turnover and limited cash-out activity. By contrast, the S-curves for 2004 and 2005 were increasingly flat. This reflected faster housing turnover, brisk levels of cash-out activity, and growing product transition activity for loans with minimal or negative incentives, while in-the-money borrowers were less responsive to apparent refinancing opportunities.

```d2
direction: down

s_curves: S-Curve Shapes {
  shape: rectangle
  style.fill: "#f5f5f5"
  style.stroke: "#333"
}

steep_curve: Steep S-Curve {
  shape: rectangle
  style.fill: "#c8e6c9"
  style.stroke: "#2e7d32"
}

flat_curve: Flat S-Curve {
  shape: rectangle
  style.fill: "#ffcdd2"
  style.stroke: "#c62828"
}

steep_curve.label: |md
  **Characteristics:**
  - High sensitivity to rates
  - Borrowers refinance quickly when in-the-money
  - Low turnover on out-of-the-money loans
  - Example: 2003 market
|

flat_curve.label: |md
  **Characteristics:**
  - Low sensitivity to rate incentives
  - High turnover activity
  - Cash-out refinancing prevalent
  - Product transitions common
  - Example: 2004-2005 market
|

s_curves -> steep_curve: "Rate-sensitive environment"
s_curves -> flat_curve: "High turnover environment"
```
**Figure 1.2: S-Curve Shapes and Market Conditions**  
Different market environments produce different S-curve shapes. Steep curves indicate high refinancing sensitivity, while flat curves suggest significant non-refinancing prepayment activity.

The following subsections discuss the primary drivers of prepayment speeds in more detail.

# Turnover

As previously described, turnover refers to activity in which the underlying property is sold or liquidated, with the proceeds of the sale subsequently passed through to the holder of the mortgage as a prepayment. There are a number of ways to observe the level of turnover. A simple way to assess turnover is to look at the prepayment speeds of out-of-the-money MBS pools, such as, for example, prepayment speeds on Fannie 4.0s when mortgage rates are  $5\%$  or higher.

However, prepayment speeds for lower-coupon MBS can also be influenced by factors other than turnover. For example, high levels of cash-out refinancings (when borrowers refinance primarily to monetize the equity in their homes) will also increase prepayment speeds on out-of-the-money coupons. Product transition activity, which was widespread from 2004 through early 2007, can also distort the normal calculation of "in-the-moneyness." As discussed later in this entry, transitions typically are associated with the widespread availability and popularity of products that allow borrowers to reduce their monthly payment obligations through either lower loan rates or alternative amortization schemes.

A truer estimate of housing turnover can be obtained by calculating existing home sales for single-family homes as a percentage of the number of such homes owned. Existing home sales data are published monthly by the National Association of Realtors, while the number of single-family homes outstanding is reported by the Census Bureau on a quarterly basis, subject to periodic adjustments. Research indicates that turnover has varied over time, primarily reflecting changes in the level of home sales.


It is tempting to associate elevated housing turnover with robust growth in home prices. Purely speaking, however, housing turnover is not directly associated with real estate price appreciation, but rather with the level of home sales activity and the number of completed transactions. While home prices and sales are highly correlated, it is conceivable that home prices could stagnate while sales activity remains firm, and vice versa.

# Refinancing

Refinancing ("refi") activity can be broadly defined as transactions where borrowers replace their existing mortgage with a new loan, using the proceeds from the new loans to pay off their preexisting mortgage obligations. While it encompasses a number of different activities, it most commonly occurs when the prevailing level of interest rates declines to the point where borrowers can take out new loans and reduce their monthly payments (after accounting for transaction costs and potential penalties).

As noted already, refinancing activity can be broadly categorized as rate-and-term refinancings, where borrowers act solely to reduce their mortgage payments, and cash-out refinancings for which the new loan is larger than the one being retired. Rate-and-term refis are easily conceptualized as a form of option exercise. In a fashion similar to a corporation calling a debt issue, homeowners can reduce their required debt service obligations by calling their current loans carrying above-market rates and issuing new debt.

However, the nature of mortgage lending complicates borrowers' refinancing decisions. Homeowners refinancing their loans are subject to a variety of costs and fees, many of which are fixed. The expected monthly savings, by contrast, is a function of the size of the loan in question. This implies that refinancing incentives are strongly impacted by loan size, as smaller loans typically require a greater refinancing incentive in order to trigger refinancing activity. Take, for example, two loans with $5\%$ note rates and balances of \$200,000 and \$400,000, respectively. A 50 basis point rate savings reduces the payment on the \$200,000 loan by \$60 per month, while the same rate savings reduces the larger loan's monthly payment by roughly \$120. If both loans are subject to \$1,000 in refinancing costs, the borrower with the \$400,000 loan will recoup the initial outlay in month 8; the borrower with the smaller loan needs more than double the time to break even. This makes loan size a critical variable in modeling and projecting future prepayment speeds.


Cash-out refinancings are commonly viewed as a subset of overall refinancing activity. For example, Freddie Mac defines cash-out refis as transactions where the new loan is at least  $5\%$  larger than the original one, and reports cash-outs as a percentage of overall prepayment activity. The level of cash-out activity has varied significantly over time. For example, the relative level of cash-out activity was extremely high in the late 1980s and 1990s, as well as in the period between 2003 and 2007.

The primary driver of cash-out activity at any point in time is the amount of equity borrowers have in their homes. In turn, equity is a function of both the original equity in the home (i.e., the inverse of a loan's loan-to-value (LTV) ratio) and the rate of home price appreciation since the home was purchased.

Aggregate refinancing incentives can be observed by examining the distribution of note rates within the MBS universe at various points in time. Keep in mind that the outstanding mortgage population is always changing, as new loans are issued and older loans are retired. The distribution of note rates for the population of outstanding loans is strongly impacted by refinancing activity, which can be thought of as recycling older high-rate loans into new mortgages with lower rates.


A useful technique is to compare the outstanding balances and the cumulative percentages of note rates for MBS products at different points in time. The cumulative balance percentages are calculated as follows:

- Divide the outstanding market balances into discrete segments or " buckets" by WAC. (The following analysis uses 12.5 basis point WAC buckets.)
- For each WAC bucket, calculate the percentage of the remaining balances with note rates equal to and below that bucket.

For example, if the lowest WAC bucket is  $5.0\%$  to  $5.124\%$  and it represents  $2\%$  of the remaining balance, its cumulative percentage is  $2\%$ . If the next WAC bucket (5.125\% to 5.249\%) comprises  $6\%$  of the unpaid balance of the market, its cumulative balance is therefore  $8\%$ . This process is completed for all WAC buckets. This technique is particularly useful in assessing the "refinanceability" of the market at particular points in time.

# Factors Influencing Prepayment Speeds

In understanding and evaluating prepayment behavior, the level of consumer mortgage rates is the single factor upon which most attention is paid. However, there is no single "market" rate that analysts can observe. There are always differences in the rate offerings of different lenders; since loans are the "product" they offer, it's not surprising that there are pricing discrepancies. Individual lenders also have a variety of offerings, with different combinations of interest rates and up-front fees (or "points," which vary inversely with the rate offered). While these options give borrowers choices between up-front costs and monthly payments, the relationship between rates and points is highly lender-specific and a function of their pricing algorithms. Finally, lenders seek to price in the risk of loans to various borrowers in a series of activities broadly classified under "risk-based pricing."2

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/cd62b0aab3cef9e71259a0c2fde07e6bea10e560efb2ce567ac82f02560ee7d7.jpg)
Figure 2 MBA Refi Index versus Freddie Mac 30-year Survey Rate Data Sources: Mortgage Bankers Association and Freddie Mac.


However, a variety of outside factors that influence prepayment speeds and refinancing behavior can be outlined. These include exogenous factors, mortgage industry economics, and consumer behaviors and preferences.

# Borrower Inefficiencies

Rational borrowers will always seek to lower their borrowing costs by refinancing their debts. Refinancing opportunities present themselves to both institutional and individual borrowers. Unlike corporations and municipalities, however, residential borrowers are relatively inefficient in capitalizing on refinancing opportunities. (If mortgagors were efficient, for example, few if any premium pools would be outstanding; however, there were approximately 110 billion of 30-year Fannie Maes with coupons of 6.5\% and higher at the end of 2010.)

Borrower inefficiencies exist for a number of reasons. Homeowners have varying degrees of awareness of financial market rates and conditions, and as a result are not always cognizant of refinancing opportunities. Borrowers often hear about declines in rates from their friends and co-workers; they also may read about it in the financial press or see it discussed on news programs. These are collectively referred to as media effects. While the growth of the financial press (with information available from print, television, and the Internet) has improved refinancing efficiency over time, it often takes a significant and noteworthy drop in rates to generate conversation and media "buzz." This explains the tendency for refinancings to occur in waves, as illustrated in Figure 2. The figure shows mortgage rates (using Freddie Mac's 30-year survey rate as a proxy, shown on a reverse scale) versus refinancing activity, using the Mortgage Bankers Association's refinancing applications index. The figure indicates that refinancing activity often remains tepid for long periods of time, but spikes when mortgage rates decline beyond some indeterminate threshold.


In addition, the costs associated with refinancing alter the refinancing economics for borrowers. The need to overcome cost hurdles serves to inhibit refinancing activity and complicates refinancing decisions. As noted previously, this is particularly relevant for borrowers with smaller loan balances, who typically require a greater refinancing incentive before engaging in rate-and-term refinancings.


Refinancing efficiency has also been impacted by the structure of the mortgage industry. Beginning in the mid-1990s, lenders became increasingly adept at marketing their products and generating refinancing activity. Some of these activities involve directly contacting existing customers, while others involve mass marketing through television commercials, print advertisements, and direct mail and phone solicitations. Also contributing to the marketing effort was a cadre of mortgage brokers and other "third-party originators" who acted as agents linking lenders and borrowers. These developments contributed to improved refinancing efficiency.

The events that culminated in the financial crisis in 2008, however, led to sharp contraction in "wholesale" lending activities. Brokers were blamed for poor loan quality and sloppy paperwork; since they did not make loans directly, they arguably had no incentive to insure the quality of their loans. As a result, many smaller originators that were dependent on the wholesale channel failed, while a number of large originators curtailed or severely limited their interaction with third-party lenders. This development in turn served to impair borrowers' ability and/or willingness to capitalize on refinancing opportunities.

Finally, additional factors impact refinancing activities. After 2007, for example, a combination of significantly tighter lending standards, fewer product offerings, and declining borrower equity due to falling home prices acted to further depress refinancing activity. Referring to Figure 2, the inability of the MBA's refi index to reach and maintain high levels reflected the fact that the pool of borrowers with the ability to refinance was quickly exhausted when mortgage rates plummeted beginning in early 2009.

# Product Choices and Transitions

Both rate-and-term and cash-out refinancing activity is at times influenced by product transitions. This means that borrowers can lower their monthly payment by refinancing from one product into another. This type of activity has varied over time, depending on the availability, popularity, and pricing of alternative products. When the yield curve has been relatively steep, for example, large numbers of borrowers have sometimes refinanced out of fixed rate loans into adjustable rate products.

Transition activity has varied substantially over time, however, driven by both lender offerings and consumer preferences. Prior to mid-2003, for example, ARMs were a niche product targeted primarily to first-time home buyers. In the summer of 2003, however, ARM volumes rose fairly dramatically, as consumers refinanced out of fixed rate products into newly popular hybrid ARMs. This reflected both consumers' increased comfort with adjustable rate loans as well as marketing efforts by mortgage lenders designed to maintain issuance volumes. By mid-2007, borrowers once again eschewed ARMs, in part due to bad publicity emphasizing their riskiness.

These abrupt changes in behavior are illustrated in Figure 3. The figure contains a scatterchart showing the Freddie Mac 30-year fixed survey rate on the horizontal axis, and the percentage of loans taken as ARMs on the vertical axis. The figure demonstrates the existence of three distinct regimes. ARMs were relatively unpopular in the years prior to mid-2003, and only reflected a large share of activity when mortgage rates were relatively high. From mid-2003 through early 2008, by contrast, the percentage of ARMs was relatively high irrespective of the level of mortgage rates and, by implication, refi activity. After the beginning of 2008, ARMs again fell out of favor; by 2010 they comprised less than  $10\%$  of new loan applications.

The varying popularity of fixed-to-ARM refinancings has several implications. Because of the generally upward slope of the yield curves, ARM rates are typically lower than fixed rates. This means that borrowers willing to utilize adjustable rate products will be presented with an apparent refinancing incentive more often than those borrowers that eschew ARMs and will only consider fixed rate products. (Of course, this savings is only guaranteed for an ARM's fixed rate or "teaser" period.) Taking available ARM rates into account means that more borrowers can reduce their mortgage rates by refinancing. As a result, regimes where ARMs are a popular product choice (due to consumer preferences and/or a steep yield curve) are characterized by steady levels of refinancing activity and relatively flat S-curves.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/0abe0920ea3cedd5aaed0006505cafc4eecd5523e4252240b54356264ef835b3.jpg)
Figure 3 Freddie Mac 30-Year Survey Rate versus MBA's ARM Percentage Data Sources: Mortgage Bankers Association and Freddie Mac.


Alternatively, when short rates rise and push ARM rates higher, fixed-to-ARM refinancing incentives are reduced. In fact, regimes associated with flat yield curves are often characterized by ARM-to-fixed transitions, as borrowers seek to lock in lower long-term rates. Taken together, these phenomena indicate that refinancing behavior is not simply dictated by the level of intermediate and long interest rates. The levels of all interest rates, as well as the shape of the yield curve, are important drivers of refinancing incentives and prepayment activity.


Large-scale transitions also have been observed as borrowers utilized loan products with alternative amortization schedules and payment schemes. As a simple example, a borrower with a 200,000 loan balance and a 30-year loan with a fixed 5\% note rate would have monthly P&I payments of 1,074. If they refinanced into an interest-only loan with the same term and note rate, their new monthly payment would be \$833, an initial savings of \$240. However, the savings would only be available for the period that the borrower was allowed to make interest-only payments; after that point, the loan is "recast" (i.e., the payments are recalculated) over the remaining term. If the borrower chooses a new loan with an interest-only period of 10 years, the post-recast monthly payment would be 1,320, significantly higher than the payment on the original loan.

The borrower's decision thus trades off early savings for a sharply increased monthly payment (or payment shock) at the recast. While such decisions were popular during the period of widespread product transitions, the mortgage crisis of 2007 led to the realization that these types of transitions exposed both borrowers and lenders to serious embedded risks. As a result, transitions into alternative payment products became fairly rare by 2008.


# Changes in Homeowner Equity and Credit

As noted earlier, the experience of the post-2007 period has highlighted the interrelationship between prepayments and home prices and, by extension, borrower credit. We already highlighted the importance of cash-out refinancings and the critical role that home price appreciation plays in this activity. In addition, deteriorating borrower credit (of which homeowner equity is a crucial element) often directly results in prepayments, as we discuss next.

However, changing home prices and borrower credit have other subtle effects on prepayments. For example, borrowers often are presented with an enhanced refinancing incentive when their credit improves. If they took loans with relatively high rates because of risk-based pricing, they can capitalize on their improved situation by refinancing. Such "credit curing" can be related to economic factors such as improving labor markets and consumer credit conditions, particularly when observing local or regional activity. A similar phenomenon is associated with rapid increases of home prices. Borrowers with high LTVs who were saddled with higher risk-based mortgage rates and/or mortgage insurance premiums can lower their payments once their homes appreciate in value, even if the overall level of mortgage rates remains unchanged.

Alternatively, borrower credit can also act to slow prepayment speeds. Borrowers with deteriorating credit may not be able to capitalize on declining interest rates if they cannot obtain new loans because of tighter credit standards. Declining real estate values can also prevent homeowners from refinancing existing loans by reducing or eliminating their equity. If homeowners' equity disappears or becomes negative (a situation often referenced as "being underwater"), they may lose the ability to obtain new loans. Moreover, significant declines in home values ultimately serve to constrain homeowners from selling their properties, as they would be forced to realize large losses on their homes. These developments are collectively called prepayment lock-in, and serve to slow both refinancing- and turnover-related prepayments.

```d2
direction: right

credit_factors: Credit Factors Impact {
  shape: rectangle
  style.fill: "#fff8e1"
  style.stroke: "#f57f17"
}

improving_credit: Improving Credit {
  shape: oval
  style.fill: "#e8f5e9"
  style.stroke: "#2e7d32"
}

deteriorating_credit: Deteriorating Credit {
  shape: oval
  style.fill: "#ffebee"
  style.stroke: "#c62828"
}

rising_prices: Rising Home Prices {
  shape: oval
  style.fill: "#e3f2fd"
  style.stroke: "#1976d2"
}

falling_prices: Falling Home Prices {
  shape: oval
  style.fill: "#fce4ec"
  style.stroke: "#c2185b"
}

refi_opportunity: Enhanced Refi Opportunity {
  shape: rectangle
  style.fill: "#f3e5f5"
  style.stroke: "#7b1fa2"
}

prepayment_lock_in: Prepayment Lock-In {
  shape: rectangle
  style.fill: "#efebe9"
  style.stroke: "#f57f17"
}

credit_factors -> improving_credit
credit_factors -> deteriorating_credit
credit_factors -> rising_prices
credit_factors -> falling_prices

improving_credit -> refi_opportunity: "Credit curing"
rising_prices -> refi_opportunity: "Equity extraction"
deteriorating_credit -> prepayment_lock_in: "Cannot refinance"
falling_prices -> prepayment_lock_in: "Underwater mortgages"
```
**Figure 1.3: Credit and Home Price Factors Affecting Prepayments**  
Borrower credit quality and home price changes have complex effects on prepayment behavior. Improving credit and rising home prices create refinancing opportunities, while deteriorating credit and falling prices lead to prepayment lock-in.

# Time

Prepayment rates vary with the passage of time. In addition to purely random variations, fairly predictable changes occur to prepayment speeds due to factors that are independent of interest rates. The behavior of borrowers undergoes a variety of secular and cyclical changes as time elapses; in addition, the composition of closed loan populations (i.e., loans collateralizing a pool) changes as the pool ages and loans drop out for any number of reasons.

Time-related factors mean that evaluating any MBS at a single constant speed is unrealistic. This realization was first incorporated into the PSA prepayment benchmark, which recognized the fact that loans are more likely to prepay as they age (or season). Borrowers are disinclined to prepay their loans immediately after issuance, but become increasingly open to the possibility as time elapses. This is due to a variety of factors:

- Borrowers typically are reluctant to undertake the effort and expense of refinancing until their loans are at least a few months old.
- Borrowers are unlikely to sell their properties and move immediately after purchasing a home. This is true even for homeowners that relocate frequently; evidence suggests that they tend to stay in their homes for at least a year.
- It takes some time for borrowers to build equity in their property (assuming, of course, a regime of rising home prices).

The key insight introduced by the PSA model is the concept that prepayment speeds are not constant over time, especially early in loans' lives. It is, however, simplistic in its assumption of a constant prepayment speed after 30 months, and does not account for other time-related behaviors. One such factor is seasonality, which suggests that prepayments typically increase during spring and summer months. Another behavior, burnout, accounts for the observation that loans remaining in a population are less likely to refinance after a certain point in time. The underlying logic is that borrowers that have not availed themselves of refinancing opportunities lack the ability and/or the inclination to do so.

The combination of these behaviors means that a time series of CPRs generated by a prepayment model (as well as the realized prepayment speeds for any security)—the  $CPR$  vector—will look very different from the equivalent speeds quoted as percentages of the PSA model.

Time-related changes to prepayment speeds are even more profound for mortgage products that do not require fixed monthly payments over their life. For example, ARMs typically experience a spike in prepayment speeds as the loans approach their first reset date. (For example, the monthly payments on 5/1 hybrid ARMs change when the loans reset at month 60.) Interest-only loans exhibit comparable behavior, as their required monthly payments increase once the IO period expires. All such products exhibit prepayment patterns reflecting variations in the loans' monthly payments and, by implication, refinancing incentives.

The spike in ARM speeds at their reset results from a variety of factors. Unlike homeowners in Europe, U.S. borrowers have traditionally been somewhat averse to adjustable-rate loans. This means that borrowers often prepay hybrid ARMs simply to avoid being exposed to changing interest rates and variable payments. It also is a function of the level of the benchmark rate at the reset; in regimes where the yield curve is flat or inverted, the new loan rates are often higher than the teaser rate. The resulting payment shock creates a refinancing incentive for borrowers during periods when the new rate is higher than that for either a new ARM or a fixed rate loan.


Empirical evidence shows a sharp increase in CPRs at the reset; in addition, models also project a cyclical increase in speed every 12 months thereafter, corresponding with the annual rate resets for the loans as well as normal seasonal patterns.4

# Defaults and "Involuntary" Prepayments

The mortgage crisis that erupted in early 2007 underscored the critical role of credit performance in all sectors of the mortgage and MBS markets. In the past, investors assumed that senior nonagency MBS were "money-good" by virtue of their triple-A ratings. The collapse of mortgage performance both reinforced the importance of sound credit analysis of private-label securities, while also giving investors a painful and expensive lesson on the factors influencing residential mortgage credit performance.

# Factors Influencing Default Frequency and Credit Performance

The general thinking has long been that borrower equity simply provides a cushion for the lender in cases when the home must be repossessed. However, a critical lesson learned from the post-2006 experience is that borrower credit performance and home prices are strongly interrelated at a number of levels, and that high-LTV loans have, all else being equal, an increased likelihood of default.

At its most basic, appreciating home prices give borrowers the ability to monetize their home's equity in order to meet their financial obligations and mitigate cash flow problems. In addition, steady or rising home prices also impact the resolution of troubled loans.

Delinquent borrowers that have equity in their homes can sell their properties and, using the net proceeds, pay off their loans instead of going into foreclosure. In theory, borrowers should never default if their homes' values are great enough to extinguish the loan and pay the associated costs. Borrowers whose homes have declined to the point where their LTVs are greater than  $100\%$  (i.e., where their loans are greater than the value of their homes) do not have this option. This accounts for why some loan vintages (such as the year 2000) have experienced relatively high levels of delinquency but limited defaults and losses; borrowers in financial difficulty were able to sell their homes and emerge "whole."5

The decline in home prices that began in 2007 resulted in unexpectedly large increases in defaults. The loss of home equity induced numerous borrowers to exercise the option embedded in any collateralized loan that allows the collateral to revert back to the lender. It is axiomatic in corporate credit theory that borrowers are expected to default on loans once the value of the loans' collateral declines below the value of the loans themselves. However, the mortgage sector has long operated under the assumption that obligors rarely walk away from the properties because of the importance of dwellings to families' well-being. This behavior was untested until 2007, in large part because home prices have never before experienced significant and widespread declines. However, the new phenomenon of the "strategic default" emerged during the mortgage crisis, where large numbers of homeowners with income and assets sufficient to service their loans nevertheless ceased making monthly mortgage payments.

The emergence of this activity has a number of implications. The most important realization is that home prices and mortgage credit performance are closely linked. In this light, the strong credit performance exhibited by the mortgage market since the 1950s was arguably skewed higher by decades of steady home price appreciation. This assertion implicitly argues that residential mortgage loans are riskier assets than previously assumed. In addition, mortgage underwriters have placed undue faith in metrics such as credit scores which, while valuable, cannot serve as reliable proxies for borrowers' willingness to service their loans during times of financial distress.


# Voluntary and Involuntary Prepayments

Once borrowers cease making regular payments, the loans eventually go into default, meaning that the borrowers lose title to the underlying properties. The properties are subsequently liquidated, typically by being placed in foreclosure; this means that the servicer eventually takes possession of the property and sells it. The proceeds of the sale, less associated costs, are categorized as recovered principal or recoveries. Since recoveries are typically less than the amount of the loan, some entity must absorb a principal loss.

Losses for agency MBS are absorbed by the entity or agency that guaranteed them. At some point, seriously delinquent loans in agency pools are classified as "nonperforming" and subsequently bought out of the pools, either by the GSEs or (in the case of FHA and VA loans) the servicer. Because of the principal guaranty, the full face value of principal is quickly returned to investors. This means that all unscheduled principal payments can be captured in a single "prepayment speed" reported for the security in question. This measure is calculated based on the total principal repaid on the pool and the breakdown (either reported or estimated) between amortizations and prepayments (i.e., between scheduled and unscheduled principal payments). As a result, many agency securities exhibited increased prepayment speeds during periods of poor credit performance and widespread delinquencies, particularly when the agencies change their buyout policies.[6] (This also blurs the line between credit-related prepayments and normal housing "turnover.")

By contrast, traditional and credit-related prepayments must be calculated and reported separately for nonagency securities. This is because of the fact that credit support for these securities is internal; deals are structured such that senior bonds in a transaction have priority over other bonds in receiving principal and interest. Since the transaction itself will absorb incurred losses, traditional prepayments (which return all of principal to the security holder) and credit-related prepayments (which result in shortfalls that must be allocated within structures) must be segregated. As a result, private-label securities report both voluntary prepayments, which encompass traditional prepayment activity, and credit-related involuntary prepayments. The latter result from defaults or other events specifically related to credit events (such as short sales of homes), while also accounting for the likelihood that less than the full amount of principal will be returned to the transaction (or, more accurately, the trust holding the deal's collateral).

These factors complicate the projection and calculation of prepayment speeds for private-label securities. Voluntary prepayments are typically quoted as VPRs, which stands for voluntary prepayment rate. They are calculated similarly to a CPR, in which a monthly percentage of prepaid principal (sometimes called a VMM) is annualized. Involuntary prepayment speeds are quoted as conditional default rates (CDRs) which are calculated by annualizing the monthly default rates or MDRs. Note that the sum of the monthly VMMs and MDRs equals the total deal SMM for any particular month.

```d2
direction: down

prepayment_types: Prepayment Types {
  shape: rectangle
  style.fill: "#f5f5f5"
  style.stroke: "#333"
}

voluntary: Voluntary Prepayments {
  shape: rectangle
  style.fill: "#e8f5e9"
  style.stroke: "#2e7d32"
}

involuntary: Involuntary Prepayments {
  shape: rectangle
  style.fill: "#ffebee"
  style.stroke: "#c62828"
}

agency_securities: Agency Securities {
  shape: oval
  style.fill: "#e3f2fd"
  style.stroke: "#1976d2"
}

private_label: Private-Label Securities {
  shape: oval
  style.fill: "#f3e5f5"
  style.stroke: "#7b1fa2"
}

voluntary.label: |md
  **VPR (Voluntary Prepayment Rate)**
  - Refinancing activity
  - Housing turnover
  - Full principal return
  - Monthly: VMM
|

involuntary.label: |md
  **CDR (Conditional Default Rate)**
  - Credit-related defaults
  - Shortfalls in principal
  - Loss severity metrics
  - Recovery lag time
  - Monthly: MDR
|

prepayment_types -> voluntary
prepayment_types -> involuntary

voluntary -> agency_securities: "Single CPR measure"
voluntary -> private_label: "Separate VPR reporting"

involuntary -> private_label: "Separate CDR reporting"
involuntary -> agency_securities: "Included in CPR (guaranteed)"
```
**Figure 1.4: Voluntary vs Involuntary Prepayments**  
Agency securities combine all prepayments into a single CPR measure due to principal guarantees, while private-label securities separately report voluntary prepayments (VPR) and involuntary credit-related prepayments (CDR).

Involuntary prepayments require additional metrics to be reported. In addition to the rate of default, an estimate must be made of the loss severity (which indicates how much of the defaulted principal amount is returned to investors) as well as the lag between the time when loans go into default (i.e., when the borrowers lose title to the properties) and when the trusts receive the recovered principal.

# Interactions Between Prepayments and Defaults

There are some interesting interactions between voluntary and involuntary prepayment speeds that impact the analysis of private-label securities. All things equal, fast prepayments enhance the performance of these securities; faster return of principal means that there is less principal outstanding to go into default. At the same assumed CDR, faster voluntary prepayment speeds (i.e., a higher VPR assumption) will typically result in higher projected yields and returns.

This assertion is somewhat simplistic, however, since it doesn't take the changing composition of the pool into account. For example, it is unlikely that the CDR would remain constant under the different VPR assumptions, as the profile of any closed population of mortgages changes over time. In addition to home prices and economic conditions, the composition of the collateral pool backing a transaction evolves as the result of attrition. Loans pay off over time as a result of both voluntary and involuntary factors. Voluntary prepayments negatively impact the composition of a pool because "better" borrowers (i.e., those with stronger credit and/or more equity in their homes) are able to take advantage of refinancing opportunities; since weaker borrowers are locked into their existing loans, the credit profile of the remaining population deteriorates. This is known as adverse selection, and suggests that the credit quality of a pool typically declines over time, all things equal.

The high level of defaults experienced during the mortgage crisis also created a new and unanticipated phenomenon. High levels of defaults means that weaker borrowers are dropping out of the collateral pools. In turn, the remaining borrowers generally have stronger credit, meaning that the population's credit profile improves over time. This is especially noteworthy during periods of declining home prices. Borrowers with poor credit (i.e., both those unable or unwilling to service their loans) go into default in large numbers, while stronger borrowers who are nonetheless "locked in" by a lack of equity continue to service their loans and remain in the pool. This process is sometimes called favorable selection, and was most prominently observed in subprime and alt-A pools, which experienced very high levels of defaults.


Neither the processes of adverse nor favorable selection take place in a vacuum. For example, the performance of a cohort assumed to be adversely selected (i.e., having experienced relatively high levels of voluntary prepayments) will improve in the face of home price appreciation. Alternatively, a population of subprime loans may experience a renewed surge in defaults if money-market rates increase sharply. Since many subprime loans have adjustable note rates with very high loan margins, rising rates create widespread payment shock that challenges the ability of borrowers to service their loans.

# Key Points

- Traditional prepayment analysis has focused on borrowers' option to retire their loans prior to maturity.
- The two primary drivers of prepayment behavior are turnover and refinancing.
- Turnover occurs when the underlying properties are sold and the associated loan is retired.
- Refinancing behavior includes rate-and-term refinancing (undertaken to reduce the borrower's monthly payment, most commonly due to a decline in the level of consumer mortgage rates) and cash-out refinancing (often are taken as an alternative to second lien loans and strongly correlated with rates of home price appreciation).
- The most common way to assess prepayment speeds within a product group at various levels of refinancing incentive is with the prepayment S-curves. These curves show prepayment speeds for different levels of mortgage rates and/or refinancing incentives.


- In understanding and evaluating prepayment behavior, the level of consumer mortgage rates is the single factor to which most attention is paid.
- Outside factors that influence prepayment speeds and refinancing behavior include exogenous factors, mortgage industry economics, and consumer behaviors and preferences.

# NOTES

1. For a more detailed discussion, see Chapter 3 in Fabozzi, Bhattacharya, and Berliner (2011).
2. See Bhattacharya, Berliner, and Fabozzi (2008).
3. If ARM rates are low enough, virtually the entire fixed rate coupon stack can be considered in-the-money.
4. See Bhattacharya, Berliner, and Fabozzi (2008).
5. In these cases, the transaction is recorded as a home sale and captured under "turnover."
6. In early 2010, Fannie Mae and Freddie Mac instituted policies in which loans that were 120 days or more delinquent were automatically bought out of pools. Prior to that, buyouts had been left to their discretion. The process of buying out large numbers of seriously delinquent loans led to sharp short-term spikes in prepayment speeds, as well as huge writedowns for Fannie Mae and Freddie Mac.

# REFERENCES

Bhattacharya, A. K., Berliner, W. S., and Fabozzi, F. J. (2008). The interaction of MBS markets and primary mortgage rates. Journal of Structured Finance 14, 3: 16-36.

Fabozzi, F. J., Bhattacharya, A. K., and Berliner, W. S. (2011). Mortgage-Backed Securities, 2nd ed. Hoboken, NJ: John Wiley & Sons.
