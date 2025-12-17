
# Managing Credit Spread Risk Using Duration Times Spread (DTS)

ARIK BEN DOR, PhD

Managing Director, Barclays

LEV DYNKIN, PhD

Managing Director, Barclays

JAYHYMAN, PhD

Managing Director, Barclays, Tel Aviv

Abstract: Extensive empirical research has shown that the spread volatility of credit securities is linearly proportional to their level of spread. This finding holds true across corporate and sovereign issuers, for both cash and credit default swaps. A superior measure of spread risk for credit securities is the product of spread duration and spread, a measure referred to as duration times spread (DTS). DTS measures the sensitivity of the price of a bond to relative changes in spread, which are much more stable through time and cross-sectionally than absolute spread volatilities. DTS allows for better risk projection, hedging, replication, and portfolio construction.

The traditional presentation of the asset allocation in a portfolio or a benchmark is in terms of percentage of market value. For fixed-income portfolios, it is widely recognized that this is not sufficient, as differences in durations can cause two portfolios with the same market weight allocations to have very different exposures to macro-level risks. Market practices have evolved to address this issue. A common approach to structuring a fixed-income portfolio or comparing it to a benchmark is to partition it into homogeneous market cells comprised of securities with similar characteristics. Many fixed-income portfolio managers have become accustomed to expressing their cell allocations in terms of contributions to duration—the product of the percentage of portfolio market value in a given market cell and the average duration of securities comprising that cell. This represents the sensitivity of the portfolio to a parallel shift in yields across all securities within this market cell. For credit portfolios, the corresponding measure would be contributions to spread duration, measuring the sensitivity to a parallel shift in spreads. Determining the set of active spread duration bets to different market cells and issuers is one of the primary decisions made by credit portfolio managers.


Yet all spread durations were not created equal. Just as one could create a portfolio that matches the benchmark exactly by market weights, but clearly takes more credit risk (e.g., by investing in the longest duration credits within each cell), one could match the benchmark exactly by spread duration contributions and still take more credit risk—by choosing the securities with the widest spreads within each cell. These bonds presumably trade wider than their peer groups for a reason—that is, the market consensus has determined that they are more risky—and they are often referred to as high beta, because their spreads tend to react more strongly than the rest of the market to a systematic shock. We found strong empirical evidence that this relation takes on a nearly perfect linear form: Spread changes are linearly proportional to spread levels at the start of the period.

Based on the linear relation between spread level and the volatility of spread changes, we have advocated since 2005 a new measure of risk sensitivity that utilizes spreads as a fundamental part of the credit portfolio management process. To reflect the view that higher spread credits represent greater exposures to sector-specific risks, we represent sector exposures by contributions to duration times spread (DTS), computed as the product of market weight, spread duration, and spread. For example, an overweight of  $5\%$  to a market cell implemented by purchasing bonds with a spread of 80 basis points (bps) and spread duration of three years would be equivalent to an overweight of  $3\%$  using bonds with an average spread of 50 bps and spread duration of eight years.

The shift from spread duration exposures to DTS exposures as the measure of market risk sensitivity embraces a different paradigm for credit spread movement—in the form of relative spread changes rather than parallel shifts in spread. The introduction of the DTS paradigm was motivated by an extensive empirical study using over 560,000 monthly observations of individual corporate bonds spreads, spanning the period of September 1989 to January 2005. The analysis showed that changes in spreads are not parallel, but rather depend on the level of spread. Specifically, spread change volatility (both systematic and idiosyncratic) was shown to be linearly proportional to spread level for both investment-grade and high-yield credit securities, irrespective of the sector, duration, or time period. Subsequent studies indicated that the results were not confined to the realm of U.S. corporate bonds, but also extend to other spread asset classes with a significant default risk such as credit default swaps, European corporate and sovereign bonds, and emerging market sovereign debt denominated in U.S. dollars. Furthermore, even from a theoretical standpoint structural credit risk models such as Merton (1974) imply a near-linear relation between spread level and volatility.


The DTS concept has many implications for portfolio managers, both in terms of the way they manage exposures to industry and credit quality factors (systematic risk) and in terms of their approach to issuer exposures (nonsystematic risk). After a short review of the DTS concept and the empirical evidence supporting it, we discuss how it can help investors improve projected risk estimates, hedging, replication, and portfolio construction.

# THE DTS CONCEPT

To understand the intuition behind DTS, consider the return,  $R_{\mathrm{spread}}$ , due strictly to change in spread. Let  $D$  denote the spread duration of a bond and  $s$  its spread; the spread change return is then:

$$
R _ {\text {s p r e a d}} = - D \cdot \Delta s \tag {1}
$$

Or, equivalently,

$$
R _ {\text {s p r e a d}} = - D \cdot s \cdot \frac {\Delta s}{s} \tag {2}
$$

That is, just as spread duration is the sensitivity to an absolute change in spread (e.g., spreads widen by 5 bps), DTS  $(D\cdot s)$  is the sensitivity to a relative change in spread (e.g., spreads widen by  $5\%$ ). Note that this notion of relative spread change provides for a formal expression of the idea mentioned earlier—that credits with wider spreads are riskier since they tend to experience greater spread changes.


In the absolute spread change approach shown in equation (1), we can see that the volatility of excess returns can be approximated by

$$
\sigma_ {\text {r e t u r n}} \cong D \cdot \sigma_ {\text {s p r e a d}} ^ {\text {a b s o l u t e}} \tag {3}
$$ while in the relative spread change approach of equation (2), excess return volatility follows


$$
\sigma_ {\text {r e t u r n}} \cong D \cdot s \cdot \sigma_ {\text {s p r e a d}} ^ {\text {r e l a t i v e}} \tag {4}
$$

Given that the two representations above are equivalent, why should one of them be preferable to another? The key advantage of modeling changes in spreads in relative terms is the resulting stability. The above equations, for simplicity, present returns and volatilities as idealized concepts. We have not added subscripts to specify whether we are referring to specific securities or sectors, or over what time period. Yet the way spread changes of different securities relate to each other, or the way volatilities in one time period relate to those in another, can be of critical importance in measuring and controlling portfolio risk.

For example, to determine a portfolio's exposure to a systematic widening of spreads, one needs to know how spread changes are likely to be realized across a sector. If one is concerned that spreads might move in parallel, then exposures should be measured as the overall contribution to spread duration as per equation (1). However, if spreads tend to change proportionally, then the contribution to DTS provides the correct exposure to such an event.

Similarly, volatility can be measured or projected in many different ways. Historically realized volatilities can be measured using observed spread changes at a specified frequency over a given sample period. Projections of forward-looking volatilities are the key building blocks of risk management systems. The accuracy with which historically re alized volatilities can project future volatilities is therefore of fundamental importance. If relative spread volatilities can be predicted with greater accuracy than absolute spread volatilities, then equation (4) should be preferred over (3). We found this to be the case, based on extensive empirical evidence from credit markets.


# DTS AS BETA-ADJUSTED SPREAD DURATION

What are the dynamics of credit spread changes? Do spreads tend to widen in parallel, or do wider spreads widen by more? Figure 1 shows a specific example in which spread changes show a clear dependence on spread. The figure shows the changes in spreads experienced by key issuers in the Communications sector of the Barclays Capital Corporate Index in January 2001, during a temporary rally in the midst of the dot-com crisis. It is clear that this sector-wide rally was not characterized by a purely parallel shift; rather, issuers with wider spreads tightened by more.

Certainly, not all spread changes follow such a clear pattern. In many months, there are no large industry-wide spread changes, and spread changes are mostly idiosyncratic in nature. Occasionally, an industry will experience a systematic spread change that does seem to take the form of a parallel shift. However, an extensive set of regressions using individual bond spread changes across eight distinct market sectors and 185 months indicated that systematic factors expressed in terms of relative spread changes across an industry were able to capture nearly twice as much of the overall spread variance as factors based on parallel shifts in industry spreads. Furthermore, Ben Dor et al. (2007) found clear evidence that whenever a systematic widening or tightening of spreads across an industry occurred, credits with the highest spreads at the beginning of the month were most likely to experience the largest change in spreads.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/f5f883364047f50a8a627ba7cc896fc66d061a1d82c1509f7a0d0f7b578a9f27.jpg)
Figure 1 Average Spreads and Spread Changes for Key Issuers in the Communications Sector of the Barclays Capital Corporate Index (January 2001) Source: Barclays Capital.

This idea may strike investors as reminiscent of the idea of "market beta" that is familiar from the capital asset pricing model (CAPM), in which the beta of a given security represents the extent to which it would be expected to participate in a market-wide rally or decline. Some credit market investors, in fact, have used models of beta-adjusted spread duration to measure systematic risk exposures. The difficulty with this approach lies in estimating the betas. Empirical betas can be backed out of historical data, for example, by regressing the spread changes realized by a given bond against the average spread changes of the sector. However, it is not clear how much historical data to use for this purpose—a short sample may not give a good statistical estimate, but a long sample may include observations from a time when the security had very different characteristics. From this viewpoint, we can offer another interpretation of DTS. Essentially, DTS can be viewed as an implementation of beta-adjusted spread duration, in which the betas are provided by the market in the form of spreads. The ratio of a given issuer's spread to the average spread for the industry gives its beta, or sensitivity, to a relative spread change across the industry.

To demonstrate this, we carried out head-to-head tests of DTS versus empirical betas using weekly spread change data from the credit default swap (CDS) market. In the first test, we measured the empirical betas of each issuer's CDS with respect to its industry peer group. We then tested two different predictors for this beta—either the empirical beta from the prior period, or the ratio of issuer DTS to the industry average DTS as of the beginning of the period. In the second test, we set up long-short CDS trades between two issuers from within the same industry and investigated different approaches to setting up the hedge ratios so as to minimize the systematic risk exposures of the trades. The DTS approach was found to be superior to empirical betas for both tasks.

# THE RELATIONSHIP BETWEEN SPREAD VOLATILITY AND SPREAD LEVEL

We now turn our attention to the dependence of spread change behavior on spread level. Figure 2 plots the relation between systematic spread volatility and spread level using over 15 years of monthly spread change data from

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/5e8ffaea5627024b8036e97a86c9c5162805afb3863ffc2ff7daa6d6acdec99b.jpg)
Figure 2 Systematic Spread Volatility versus Spread Level Note: Based on monthly observations of bonds rated Aaa to B in the Barclays Capital Corporate and High-Yield Indexes, September 1989-January 2005. Source: Barclays Capital.

U.S. credit markets, spanning investment-grade and high-yield rated bonds. The bonds in the Barclays Capital indexes for these markets were partitioned each month by sector, quality, and spread level. The average spread level for each market cell is plotted against the timeseries volatility of the average absolute spread changes in each month. The results suggest that spread volatility can be closely approximated by a simple linear model of the form

$$
\sigma_ {\text {s p r e a d}} ^ {\text {a b s o l u t e}} (s) \cong \theta \cdot s \tag {5}
$$

This simple model provides an excellent fit to the data shown in Figure 2, with  $\theta$  equal to  $9.4\%$  irrespective of sector or maturity. Hence, the results suggest that the historical volatility of systematic spread movements can be expressed quite compactly, in terms of a relative spread change volatility of about  $9\%$  per month. That is, spread volatility for a market segment trading at 50 bps should be about 4.5 bps/month, while that of a market segment at 200 bps should be about 18 bps/month. Ben Dor et al. (2007) documented a similar pattern for idiosyncratic volatility: The cross-sectional volatility of credit spread changes across a sec tor also exhibits a linear dependence on spread with about the same slope.


The results in Figure 2 suggest that measuring spread volatility in relative terms should be much more stable than absolute spread volatilities, and therefore forms the basis for more accurate projections of forward-looking risk. The advantage of using relative spread volatility should be particularly strong in the event of a market crisis. If we plot the absolute spread volatilities of various assets in the postcrisis period against their precrisis volatilities, we will find a marked increase across the board. Essentially, market data from the earlier period becomes useless for estimating risk in the postcrisis world. However, if we work with relative spread volatilities, we may find that they have not changed that much. The absolute spread volatility increases proportionally with the spread level, and the relative spread volatility remains stable. This relationship is illustrated in Figure 3 using data from U.S. credit markets in the period before and after the Russian crisis of 1998.

Two clear phenomena can be observed in Figure 3. First, as discussed above, most of the observations representing absolute spread volatilities are located far above the diagonal, pointing to an increase in volatility in the second period of the sample. In contrast, relative spread volatilities are quite stable, with almost all observations located on the 45-degree line or very close to it. This is because the pickup in volatility in the second period was accompanied by a similar increase in spreads. Second, the relative spread volatilities of various sectors are quite tightly clustered, ranging from  $5\%$  /month to a bit over  $10\%$  /month, whereas the range of absolute volatilities is much wider, ranging from 5 bps/month to more than 20 bps/month.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/b5fa46bae9e5d95dc97d21a5b1a373ed8a096691a2b85a1832087b1c073b82fd.jpg)
Figure 3 Absolute and Relative Spread Change Volatility before and after 1998 Note: Based on a partition of the Barclays Capital U.S. Corporate Index, 8 sectors  $\times 3$  credit ratings. To enable the two to be shown on the same set of axes, both absolute and relative spread volatility are expressed in units with similar magnitudes. However, the interpretation is different: An absolute spread change of 0.1 represents a 10 bps parallel shift across a sector, while a relative spread change of 0.1 means that all spreads in the sector move by  $10\%$  of their current values (e.g., from 50 to 55, from 200 to 220). Source: Barclays Capital.


The results in Figure 3 exhibit the sharp discontinuity in credit market volatility that was experienced in 1998 due to the Russian crisis and the LTCM hedge fund failure. Since the introduction of DTS, global markets have provided us with ample opportunity to test the model with data from new out-of-sample crises. In both the credit crisis of 2007-2009 and the ensuing sovereign crisis that began in 2009, we have found that the DTS model has performed admirably. In each case, a plot of precrisis vs. postcrisis volatility reveals results similar to Figure 3, showing the stability advantage of relative spread volatilities. The incorporation of spread into the projection of risk was shown to keep risk projections much more accurate than traditional absolute volatility risk measures.[5]


These results clearly indicate that absolute spread volatility is highly unstable and tends to rise with increasing spread. Computing volatilities based on relative spread change generates a more stable time series. These findings have important implications for the appropriate way of measuring credit exposures and projecting excess return volatility, which we discuss next.

# DTS AND EXCESS RETURN VOLATILITY

If the volatility of both systematic and idiosyncratic spread changes is proportional to the level of spread, then equation (4) suggests two assertions regarding excess returns. First, excess return volatility should increase linearly with

DTS, where the slope represents the volatility of relative spread changes. Second, the magnitude of excess return volatility should be approximately equal across portfolios with similar DTS values, irrespective of their spread and spread duration characteristics. The results of Ben Dor et al. (2007) strongly supported both empirical predictions.

Another implication of the linear relation between spread level and spread volatility is that projecting volatility based on the current level of spread and the DTS slope from Figure 2 should be superior to using historical realizations of absolute spread changes. Specifically, using the product of DTS and the historical volatility of relative spread changes should generate better risk estimates than the product of spread duration and volatility of past absolute spread changes.

Our results confirmed that the DTS-based estimator was superior. A further indication that the DTS-based risk projection was more accurate is that it resulted in a smaller number of extreme realizations (above or below two standard deviations) than either of two estimators based on absolute spread volatility, using trailing windows of two different lengths.

Our understanding of these results is that the approach based on relative spread change volatility is able to give a more timely risk projection since it can react almost instantaneously to a change in market conditions reflected in the spread of the security. This should help the model react more quickly both to increase risk estimates at the onset of a crisis and to relax them once the turbulence subsides. Any significant widening or tightening of spreads will immediately flow through the DTS into the projection of excess return volatility.

# IMPLICATIONS OF DTS FOR PORTFOLIO MANAGERS

We have highlighted above the key points that emerge from the empirical evidence supporting the DTS paradigm. Spread changes are proportional to the level of spread. Systematic changes in spread across a sector tend to follow a pattern of relative spread change, in which bonds trading at wider spreads experience larger spread changes. The systematic spread volatility of a given sector (if viewed in terms of absolute spread changes) is proportional to the average spread in the sector; the nonsystematic spread volatility of a particular bond or issuer is proportional to its spread as well. Those findings hold irrespective of sector, duration, or time period.


There are several implications for a portfolio manager who wishes to act on these results. First, the best measure of exposure to a systematic change in spread within a given sector or industry is not the contribution to spread duration, but the contribution to DTS. At many asset management firms, the targeted active exposures for a portfolio relative to its benchmark are expressed as contribution-to-duration overweights and underweights within a sector by quality grid. Reports on the actual portfolio follow the same format. In the relative spread change paradigm, managers would express their targeted overweights and underweights in terms of contributions to DTS instead.

Second, our finding that the volatility of non-systematic return is proportional to DTS offers a simple mechanism for defining an issuer limit policy that enforces smaller positions in more risky credits. Many investors specify ad hoc weight caps by credit quality to control issuer risk. Alternatively, we can set a limit on the overall contribution to DTS for any single issuer. For example, say the product of Market value percentage  $\times$  Spread  $\times$  Duration must be 5 or less. Then, a position in issuer A, with a spread of 100 bps and a duration of five years, could be up to  $1\%$  of portfolio market value; while a position in issuer B, with a spread of 150 and an average duration of 10 years, would be limited to  $0.33\%$ . Issuer limits based on DTS and those based on market weight each have their advantages and disadvantages; investors might want to consider some combination of the two.6


Third, DTS can help improve the hedging of security-vs.-security or security-vs.-market credit trades. Say a hedge fund manager has a view on the relative performance of two issuers within the same industry and would like to capitalize on this view by going long issuer A and short issuer B in a market-neutral manner. How do we define market neutrality? A typical approach might be to match the dollar durations of the two bonds, or to go long and short CDS of the same maturities with the same notional amounts. However, if issuer A trades at a wider spread than issuer B, our results would indicate that a better hedge against market-wide spread changes would be obtained by using more of issuer B, so as to match the contributions to DTS on the two sides of the trade.

Fourth, portfolio management tools such as risk and performance attribution models should represent sector exposures in terms of DTS contributions and sector spread changes in relative terms. A risk model for any asset class is essentially a set of factors that characterize the main risks that securities in that asset class are exposed to. The risk of an individual security or portfolio is computed based on its sensitivities to the various risk factors and the factor volatilities and correlations estimated from their past realizations. For credit-risky securities, traditional risk factors typically measure absolute spread changes based on a sector by quality partition that spans the universe of bonds. A risk factor specification based instead on relative spread changes has two important benefits. First, such factors would exhibit more stability over time and allow better forward-looking risk forecasts. Second, the partition by quality would no longer be necessary to control risk, and each sector can be represented by a single risk factor. This would allow managers to express more focused views, essentially trading off the elimination of the quality-based factors with a more finely grained partition by industry. Similarly, a key goal for performance attribution models is to match the allocation process as closely as possible. If and when a manager starts to state allocation decisions in terms of DTS exposures, performance attribution should follow suit.


One practical difficulty that may arise in the implementation of DTS-based models is an increased vulnerability to pricing noise. Any small discrepancies in asset pricing should cause only small discrepancies in market values, but may potentially result in much larger variations in spreads. Consequently, managers who rely heavily on contribution-to-DTS exposures will need to implement strict quality controls on pricing.

Perhaps one of the most useful applications of DTS is in the management of core-plus portfolios that combine both investment-grade and high-yield assets. Traditionally, investment-grade credit portfolios are managed based on contributions to duration, while high-yield portfolios are managed based on market value weights. Using contributions to DTS across both markets could help bring consistency to this portfolio construction process. Skeptics may point out that in high-yield markets, especially when moving toward the distressed segment, neither durations nor spreads are particularly meaningful, and the market tends to trade on price, based on an estimated recovery value. A useful property of DTS in that context is that in the case of distressed issuers, where shorter duration securities tend to have artificially high spreads, DTS is fairly constant across the maturity spectrum, so that managing issuer contributions to DTS becomes roughly equivalent to managing issuer market weights.

The introduction of the DTS paradigm has had wide-ranging effects. It changed portfolio management practices across the industry and has been incorporated into some of the leading portfolio management analytics systems. We view it as a fundamental insight into the behavior of credit markets.

# KEY POINTS

Changes in credit spreads tend to be proportional to spread levels.
- Volatility of relative spread changes is more stable than volatility of absolute spread changes. This applies to all credit securities with a default component including corporate and sovereign issuers in developed and emerging market countries for both cash and derivatives.
- Whereas spread duration measures sensitivity to a parallel shift in spreads, DTS measures sensitivity to a relative change in spreads.
- The risk associated with credit spread exposures can therefore be managed more effectively using contributions to DTS than contributions to spread duration. This is true at the level of asset classes, industries, and individual issuers.
- Including spread in the estimation of risk can reduce the need to rely on credit ratings, allowing risk models to provide greater industry detail.

