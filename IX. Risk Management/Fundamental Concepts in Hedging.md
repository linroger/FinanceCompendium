---
aliases:
  - Fundamental Concepts in Hedging
  - Hedging Fundamentals
parent_directory: Risk Management
formatted: 2025-12-21 02:30:00 AM
formatter_model: claude-sonnet-4-5-20250929
cli_tool: claude-code
primary_tags:
  - hedging strategies
  - risk management
  - mortgage-backed securities
  - interest rate risk
secondary_tags:
  - prepayment risk
  - volatility risk
  - mortgage basis risk
  - credit risk
  - duration hedging
cssclasses: academia
title: Fundamental Concepts in Hedging
---

# Fundamental Concepts in Hedging

Mortgage-backed securities, or MBS, are a type of asset-backed security that is backed by a mortgage or pool of mortgages. A residential mortgage-backed security, or RMBS, is a MBS with cash flows from residential debt. There are a wide variety of different types of RMBS available to invest in and there are inherent risks associated with these investments. Hedging these risks is critical to protecting book value. First, we will address arguably the biggest risk: interest rate risk. Then, we will discuss prepayment risk, volatility risk, mortgage basis and spread risk, and finally, credit risk.

## IMPORTANCE OF HEDGING

On slide 6, we have presented data that shows why hedging an RMBS portfolio is so important. In the top two graphs, we have plotted the 10-year U.S. treasury yield versus the Fed Funds rate during 1999 and during March through August of 2013. In the bottom two graphs we have plotted the 2-Year treasury yield versus the Fed Funds rate during 1994 and 2005. You can see that violent moves in interest rates are not that unusual, and this is the case whether or not the Fed is raising the Fed Funds rate. These graphs also show that rapid movements can occur at different points on the curve, thus potentially impacting the value of a portfolio. These graphs also illustrate the importance of maintaining a balanced interest rate posture, as rapid changes in interest rates can occur at any time.

## EXAMPLES OF HEDGING TOOLS

Let's talk about some tools available for hedging. As you can see on slide 7, there are a wide variety of tools available for risk mitigation. While there are many options to choose from, each has its own strengths and limitations, so we believe a comprehensive and sophisticated approach to hedging is critical to properly address risk. Swaps and swaptions are commonly used in interest rate hedging. TBAs and IO products, including MSRs, can also be used to hedge interest rate risk, but these tools have additional value in hedging prepayment risk and mortgage basis risk. This slide also shows some other available, but less commonly used, tools to hedge mortgage portfolio risks. We should note that in this presentation when we discuss IOs we mean that to include IOs, IOS and Inverse IOs. For definitions of these hedging tools, please refer to the Appendix on slide 23.

## INTEREST RATE RISK - DURATION

Moving to slide 8, let's delve deeper into the previously mentioned risks and the tools commonly used to hedge them. As evidenced on slide 6, arguably the most significant risk that RMBS investors face is interest rate risk. When interest rates change, the price of mortgages also changes. Because mortgages are negatively convex, the duration of the asset also changes when interest rates change. When rates go down, prices go up and durations shorten. Conversely, when rates rise, prices go down and durations extend. Therefore, it is important to model different duration scenarios on mortgage assets.

Effective duration is one way to model duration. It uses an option-adjusted spread, or OAS, model. The OAS approach incorporates a number of assumptions, namely that mortgage rates move in concert with swaps, and that the OAS is unaffected as interest rates change. Usually, a parallel interest rate shift is assumed. An investor would also want to look at other scenarios where, say, the yield curve steepens, flattens, or otherwise changes shape. These scenarios give rise to partial or "key-rate" durations. Partial duration calculates the price sensitivity for non-parallel interest rate shifts, or more specifically, to changing one point on the yield curve at a time.

It is important that we ground ourselves in other observations of market data, such as empirical duration and coupon swap duration. Empirical duration is obtained by comparing actual historical mortgage prices to treasury and swap rate moves. This methodology assumes that past relationships between market yields and other risk factors will hold going forward.

Coupon swap duration considers the current price of an instrument with different coupons and assumes that the price of a mortgage with a certain refinance incentive is constant in all rate environments. It is important to note that neither effective nor empirical durations hedge against price moves that are uncorrelated with yield curve moves. Specifically, if mortgage spreads widen or tighten, no instrument that solely hedges interest rates can fully protect the portfolio. We will cover this risk, which is referred to as mortgage basis risk, in a few moments.

## INTEREST RATE RISK - CONVEXITY

If investors only look at duration when managing interest rate risk, they might try to hedge something that is negatively convex with something that is not convex. On slide 9, we have presented graphs of the price, duration, and convexity of an RMBS asset in instant parallel shifts in interest rates.

On the left of this slide, please note that when rates decline, par priced mortgages increase, but at a decreasing rate, yet for an increase in rates par priced mortgages decline almost linearly. This aspect, shown by the slope of the MBS price curve, is called negative convexity.

The middle graph shows the effective duration as a function of rate shifts. As we discussed on slide 8, the duration is the rate of the change in price. We have plotted interest rate moves on the x-axis and duration, as measured in years, on the y-axis. Graphically, it is helpful to think of duration as the slope of the price function at any given point. From this graph, it is easy to see that the durations are low when rates are low and high when rates are high. This result makes sense because when rates are low, prepayments are likely to be fast and the expected life of a mortgage is short. On the other hand, when rates are high, borrowers are likely to keep their mortgage and the life of the mortgage is long, therefore leading to larger price changes for a given change in interest rates.

Since the duration graph is also not constant, a MBS asset has convexity. On the right, you can see how mortgages are negatively convex. Mathematically, it is the rate of change of the duration with respect to changes in interest rates. You can see from this graph that when mortgages are near par, and future prepayments more uncertain, they exhibit the highest amount of negative convexity, but when mortgages are at big premiums or discounts, and future prepayments less uncertain, their convexity is more neutral, thus making hedging easier and less expensive.

## HEDGING INTEREST RATE RISK

The most common tools to hedge interest rate risk are swaps and swaptions, though other tools can also be used.

On slide 10, we have presented two illustrative scenarios, the first hedging with "Swaps Only" and the second hedging with a combination of swaps and swaptions. In the "Swaps Only" graph on the left, we have plotted the gain or loss of a hypothetical 100 million investment in a current coupon RMBS, the P&L of a 10-Year swap hedge, and the sum of the two. As we are assuming an instantaneous parallel yield curve shift, the result would be similar if we used other maturity swaps in appropriate amounts. As this graph shows, using the "swaps only" strategy results in good performance if rates move only a little, but results in poor performance when rates move dramatically.

However, if we hedge with a combination of instruments, such as swaps and swaptions, the total performance is much better, as illustrated by the graph on the right. Here, the "Swaps Only" portfolio is shown in dark blue, and the portfolio with swaps and swaptions is shown in light blue. As you can see, this portfolio performs substantially better than the "Swaps Only" portfolio for all scenarios.

It is important to note when looking at these results, that while swaptions are good to protect against large rate moves, other factors need to be considered such as non-parallel shifts in rates, price of swaptions, carry, roll-down of the swaps, and rebalancing. As such, it is important to note that these graphs are for illustrative purposes only.

## PREPAYMENT RISK

Prepayment risk is the risk that principal will be repaid at a different rate than anticipated. Being able to accurately predict the rate of prepayments is even more important than the actual rate of prepayments itself, because only then can the investor can effectively hedge the portfolio. In general, as rates fall, prepayments rise, and as rates rise, prepayments fall. This result is what one would expect. Prepayments affect the yields and average lives of most mortgage investments. Bonds that are purchased at a premium benefit from slow prepays, whereas discount bonds benefit from fast prepays. On slide 11, we list some drivers of prepayments.

The best way to mitigate this risk is to choose securities that have stable prepayment characteristics. In our "Primer on Agency Prepayments" webinar, we gave an example of how a pool comprised of borrowers with low loan balances would have more stable prepay characteristics than a pool comprised of high balance loans. Choosing securities with characteristics like this is an example of protecting against prepayment risk through security selection.

Additionally, portfolio managers can use IOs or POs to hedge prepayment risk. These are bonds that are created by dividing the cash flows from a mortgage pool into separate principal and interest streams. TBAs can also be used to hedge prepay risk. By entering into TBA coupon swaps, that is, shorting one TBA coupon versus going long another, you can protect against unexpected changes in prepayments that might affect the pools you hold in your portfolio. Finally, one benefit of the recent interest rate selloff is that for the first time in several years the market has both discount and premium mortgage bonds. Discount priced mortgages can be used to offset the prepayment risk of premium dollar priced investments, as they are generally less susceptible to large changes in prepayment rates and are thus more stable investments.

## VOLATILITY RISK

Taking volatilities into account is critical when managing a mortgage portfolio, because different parts of the mortgage market display different sensitivities to volatility. Par coupon mortgages are short volatility, whereas non-par coupons can be long or short volatility. When implied volatility, or "vol," increases, there is higher uncertainty about the future of interest rates, and therefore of the timing of mortgage cash flows, especially for par coupon bonds. Because of this, investors require a higher yield, thus pushing the mortgage rate up and the price of par bonds down. As a result of the higher mortgage rate, expected future prepayments of premium mortgages decline and those investors holding premium priced mortgage bonds would therefore expect to receive cash flows for longer, therefore increasing the yield on these assets. This effect could make the premium priced MBS go up in price.

Consequently, there are two parameters that can impact premium MBS bonds, one being the higher expected yield and the other being increased volatility. For discount RMBS higher volatility also means more uncertain prepayments. Since discount RMBS are typically priced assuming slow speeds, potentially faster speeds are positive, which means that higher volatility could be beneficial to these bonds. The effect that dominates is a matter of detail and is why discount or premium mortgages can be either long or short volatility. In most cases, however, the mortgage investor is short volatility, but in varying amounts depending on the portfolio holdings.

This position of short volatility leads to a need for higher yield to compensate the mortgage investor for holding the RMBS. Hedging volatility risk can be accomplished by buying volatility back through options, typically either swaptions or mortgage options. The complexity that arises is determining which options to buy. Given that a 30-year mortgage is short prepayment options every month for its life, a mortgage instrument is actually a very complicated string of options, each with its own maturity, tenor, and implied vol. The sensitivity of a mortgage bond's price to each of these various parts of the "volatility surface" can be measured and, if desired, hedged. In practice, mortgage hedgers typically use short-dated options less than 1 year to hedge short-term convexity, or "gamma," and long-dated, multi-year options to hedge longer-dated volatility, or the "vega" components.

Hedging volatility relies heavily on models to determine both the magnitude and term structure of the mortgage volatility surface so investors must take care when undertaking this process.

## SPREAD AND MORTGAGE BASIS RISK

Moving to slide 13, let's discuss spread and mortgage basis risk. The mortgage spread can be thought of as the excess of the mortgage yield over the swap rate. Mortgage spread risk is the risk that an investor is left with after hedging all other risks. It is the risk that the spread between mortgage rates and swap rates will change over time. A measure of this risk is commonly called "spread duration" and it measures the sensitivity of an asset's price to changes in the discount rate. By convention, all mortgage assets have positive spread duration. This just means that when yields decline relative to swaps, mortgage prices outperform, and vice-versa.

Mortgage basis risk is closely related to spread risk and relates to how instruments behave when mortgage rates move but all other rates are unchanged. This risk impacts projections of prepayments, even if interest rates stay constant. A measure of this risk is commonly called "mortgage spread duration" or "mortgage basis duration." For current coupon MBS, spread duration and mortgage basis duration are the same. However, unlike spread duration, not all assets have positive mortgage basis duration. For example, MSRs and IOs have negative mortgage basis duration. This can be seen as follows: as mortgage rates rise, future expectations of prepayments fall, so all else equal, the value of an IO-like cash flow increases. This increase in value is opposite to the price action of RMBS, which decline in value when mortgage rates rise. Most importantly, if mortgage spreads widen, meaning that mortgage rates increase when swap rates do not increase, IO and MSR, whose cash flows are tied to the mortgage rate, will still increase in value and provide a good hedge, where swaps would not. This result is how these products help hedge the mortgage basis risk.

## SPREAD AND MORTGAGE BASIS RISK HEDGING

IOs and MSRs are a natural hedge to the RMBS portfolio as they hedge mortgage basis risk and can typically exhibit positive yield and negative duration. IOs are typically generated from CMO deals and have limited availability. A market exists in synthetic IO securities, called IOS, and can be used in certain circumstances to hedge. Because it is a synthetic contract, it is possible to either buy or sell that risk, depending on the preference. However, IOS is generally a more expensive form of IO and also has limited liquidity. While MSRs are currently available in large size and usually offer higher yields than other IO products, they are operationally intensive in nature and generally illiquid.

## MORTGAGE BASIS AND SPREAD RISK HEDGING EXAMPLE

Let's take a look at the graphs on slide 15. In these graphs we display the price, duration, and convexity of an IO or MSR asset (shown in red) as a function of a parallel instant change in interest rates. For comparison, we replicate the graphs from slide 9, where we show the same for a current coupon RMBS, shown in blue. For this discussion we will use the terms IO and MSR interchangeably.

In the graph on the left, you can see that as interest rates fall, the price of the IO goes down, and as the price of the current coupon MBS rises. Conversely, as interest rates rise, the price of the IO increases while the price of the current coupon MBS declines. As rates change, if the hedge ratio is right, the amount the investor loses on one position can be offset by the amount the investor makes on the other. It is important to remember that this relationship relates to changes in mortgage rates and not swap rates, thus providing both an interest rate and basis risk hedge.

The center graph shows that MSR and MBS generally have opposite effective durations and can be used to hedge one another. The current coupon MBS has a positive duration of 6 whereas the current coupon MSR has a duration of negative 20. When rates are very low, the duration of the MSR is substantially more negative. This can be understood by realizing that when the refinancing incentive changes dramatically, the value of the MSR cash flow does as well.

There is one sense in which MBS and IO products are not perfect hedges for each other, which is depicted on the graph on the far right. IOs, like MBS, have negative convexity and are also typically short vega exposure. So, while hedging MBS with these tools does protect an investor from changes in rates and mortgage spreads, it comes at the expense of an increase in exposure to convexity and volatility. The good news is that MSRs are positive yielding assets, so there is extra money to be spent on buying back some options to reduce the convexity and volatility risks.

The most important point of using an IO or MSR to hedge is that you can protect your portfolio against basis risk.

## CREDIT RISK

Understanding and managing credit risk is crucial for MBS investors. Credit risk is the risk that borrower defaults cause losses. Agency mortgages have credit protection because they are backed by the GSEs, Fannie and Freddie, or by Ginnie Mae. As a result, regardless of borrower performance, the Agency RMBS investor has government backing to recover full principal, thus these securities have minimal credit risk. There is a slight nuance to Agency mortgages in terms of credit risk. When a borrower defaults, the loan is bought out of the pool at par by the government agency, thus leading to a prepayment. Therefore, credit risk in Agency pools manifests itself in faster prepayments.

Non-Agency mortgages and mortgage loans carry credit risk inherently because they are generally not insured. This means that the greatest risk is that borrower defaults are over and above the expectations of default performance. There are a number of factors that impact mortgage defaults such as recessions, housing market declines, and high unemployment rates.

## CREDIT RISK HEDGING

In the non-Agency market, credit risk accompanies most investments. The most effective way to hedge non-Agency credit risk is by performing thorough underwriting and examining the loans backing a security or in a loan portfolio. Beyond thorough underwriting, an investor would want to find hedges that perform well in times of higher than expected defaults. Mortgage loan performance is sensitive to the economy, so we can use other indices that are also sensitive to the economy to help hedge credit risk in non-Agency RMBS and loans. Some of the options include the PrimeX index, ABX index, and the CDX Investment Grade and High Yield indices. We would expect that when the economy is poor and loan defaults are increasing, that both the stock market and other indices sensitive to credit would also be performing poorly. To examine this, on the bottom half of slide 17, we have presented a table of correlations between the CDX High Yield, the S&P 500 and the ABX 06-2 AAA indices for the past three years. The ABX AAA Index, for this presentation, can be thought of as a proxy for the non-Agency market. As you can see, for this period there have been relatively high correlations between non-Agency performance and that of the stock market and High Yield market. This result is not surprising and lends support to the use of credit sensitive hedges to hedge credit exposure in non-Agency RMBS. This is also evidenced in the graph on the right where you can see the three indices moving in concert with each other, although given different volatilities of these indices, hedge ratios are important to consider.

In particular, the ABX index can be used to hedge against adverse mortgage losses as it is a mortgage-based index. However, using an ABX index, which comprises only 20 bonds, to hedge a large portfolio with different types of non-Agency securities exposes the investor to basis risk because the bonds that underlie the ABX index will generally not be reflective of an investor's entire portfolio. Furthermore, liquidity in ABX is fairly limited, making ABX challenging to use to hedge a large portfolio. CDX Investment Grade and High Yield indices could also be used. While using either of these generates basis risk as well, the idea is that in an environment where an investor's non-Agency mortgage portfolio might be suffering, it is likely an environment where the macro-economy is also under stress. Corporate and high yield bonds therefore might be experiencing losses, or at least widening in spread to swaps. These two indices are also very large and liquid. So, to hedge credit risk, it is most important to perform thorough underwriting of the underlying loans in an RMBS deal or loan package. In addition, as we have discussed, there are a variety of other tools available to mitigate the risk of changes in macroeconomic conditions.

## TWO HARBORS HEDGING STRATEGY

Two Harbors' main objective in hedging is to preserve book value. In an attempt to protect against the risks we discussed today, we take a multifaceted approach to hedging, using a wide variety of available tools. We review our exposures to the risks we discussed on a daily basis and adjust our hedging positions accordingly, to best mitigate these risks and protect book value.

## MORTGAGE REIT RISKS

In our mortgage REIT primer we presented a slide that identified some of the risks that mortgage REITs were subject to. Today, we have elaborated on these risks, and also discussed volatility risk, spread and mortgage basis risk and credit risk. Overall, we strive for book value stability through hedging our portfolio, thus optimizing stockholder value over the long-term.

## CONCLUSION

In conclusion, managing interest rate exposure, prepayment risk, volatility risk, mortgage spread and basis risk and credit risk is critical to the protection of book value over time. Using a combination of hedges is the best way to effectively hedge a portfolio and protect book value. At Two Harbors, we utilize a sophisticated approach to hedging. For interest rate sensitive products, we use swaps, swaptions, TBAs, IOs, and MSRs, as well as other tools. IOs and MSRs are ideal hedges to the RMBS portfolio because they exhibit positive yield, negative duration, and hedge mortgage basis risk. To immunize the portfolio against credit risk, we conduct thorough underwriting of loans which is imperative to determine potential defaults. Additionally, we also selectively use some of the other credit hedging products we discussed today to manage exposures.
