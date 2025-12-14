---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Inflation and Asset Returns*
linter-yaml-title-alias: Inflation and Asset Returns*
---

# Inflation and Asset Returns*

Anna Cieslak Carolin Pflueger

July 18, 2023

# Abstract

The past half-century has seen major shifts in inflation expectations, how inflation comoves with the business cycle, and how stocks comove with Treasury bonds. Against this backdrop, we review the economic channels and empirical evidence on how inflation is priced in financial markets. Not all inflation episodes are created equal. Using in a New Keynesian model, we show how "good" inflation can be linked to demand shocks and "bad" inflation to supply shocks driving the economy. We then discuss asset pricing implications of "good" and "bad" inflation. We conclude by providing an outlook for inflation risk premia in the world of newly rising inflation.

Keywords: inflation, risk premia, bond return predictability, stagflation, monetary policy

JEL Classifications: E43, E52, E58

# 1 Introduction

The recent surge in inflation has spurred renewed questions about what drives inflation, why it is considered so costly by households, investors, and policymakers alike, and what high inflation means for governments' and firms' ability to fund themselves and households' ability to protect their retirement portfolios. Few would dispute that long-lasting episodes of high inflation pose a major risk for investors in nominal bonds, eroding their ability to consume out of fixed dollar payoffs. For investors in financial claims such as stocks that derive their value from real assets, intuition might instead suggest that inflation poses no tangible threat. Unfortunately, this intuition has badly failed over a significant part of the past century. Understanding the economic mechanism linking inflation and asset prices and how it manifests itself in the data is therefore crucial. For investors, this link matters for assessing the risks they bear. For policymakers, understanding this link provides a window into how financial markets perceive fundamental shocks, informing the appropriate policy response.

Not surprisingly, the recent reemergence of inflation is awakening the memories of the past. Figure 1 displays major macro-finance trends since the early 1950s, superimposing the price-to-earnings ratio for the S&P 500 index as a measure of stock valuation, the 10-year nominal Treasury yield, which is inversely related to bond prices, and the annualized 10-year consumer price inflation rate. Panel A presents the data in levels, and Panel B in changes. In Panel A, the high and persistent inflation of the 1970s and 1980s was accompanied not only by high nominal yields and, thus, low prices of nominal bonds, but also by depressed stock market valuations, otherwise not seen since the time of the Great Depression of the 1930s.<sup>1</sup> The following decades erased part of that Great Inflation experience, being hallmarked by gradually declining inflation expectations, low nominal yields, and historically high stock market valuations. As these generational trends unfolded, the properties of how stocks and yields comove with each other at higher frequencies changed as well. Panel B shows that the correlation between stock returns and yield changes switched sign from negative to positive around the turn of the 21st century. With nominal bonds hedging downturns in the stock market in recent decades, these shifts have had profound implications for long-term investors' ability to diversify risks.

What economic forces underlie these major shifts? How can they be linked to investors'

expectations of macroeconomic fundamentals and to the risk compensation that investors require for bearing fundamental risks? Fortunately, macro-finance research has made significant forays into understanding these questions. In this review, we combine different strands of research to take stock of the answers that we currently have. The guiding theme of our discussion is that inflation comes in different flavors. We highlight the asset pricing implications of "good" and "bad" inflation, depending on when inflation occurs over the business cycle, whether inflation is supplyor demand-driven, and whether it persists.

# 2 Economic channels linking inflation and asset prices

To introduce the notion of the "good" and "bad" inflation varieties, we start by reviewing the basic theory linking inflation and asset prices. We assume that all assets are priced by a representative investor, i.e., there exists a stochastic discount factor (SDF),  $M_{t+1}$ , such that for any asset with a real time- $(t+1)$  payoff  $X_{t+1}$  the time- $t$  price of the asset is given by  $P_t = E_t[M_{t+1}X_{t+1}]$ .

Inflation is particularly relevant for assets whose payoffs are fixed in dollars, such as nominal Treasury bonds. Let  $i_t$  and  $i_t^{(2)}$  denote the interest rates on oneand two-period default-free nominal bonds, i.e., bonds that promise to pay one dollar one or two periods in the future. The corresponding bond prices are then given by  $\exp(-i_t)$  and  $\exp\left(-2i_t^{(2)}\right)$ . Similarly, let  $r$  denote the real risk-free rate, or the interest rate on a default-free bond that promises to pay one unit of real consumption next period. The real risk-free rate is assumed to be constant for simplicity. We use  $\pi_t$  to denote log inflation from time  $t - 1$  to time  $t$ , and use lower-case letters to denote logs throughout. Using the notation  $\pi_t^e \equiv E_t\pi_{t + 1}$  and assuming that inflation and the SDF are jointly log-normal, the oneand two-period nominal interest rates can be written as

$$
i _ {t} = \underbrace {r + E _ {t} \pi_ {t + 1}} _ {\text {F i s h e r E q u a t i o n}} + \underbrace {C o v _ {t} \left(m _ {t + 1} , \pi_ {t + 1}\right)} _ {\text {R i s k P r e m i u m}} - \frac {1}{2} \sigma_ {\pi} ^ {2}, \tag {1}
$$

$$
i _ {t} ^ {(2)} - \underbrace {\frac {i _ {t} + E _ {t} i _ {t + 1}}{2}} _ {\text {E x p e c t a t i o n s H y p o t h e s i s}} = \underbrace {\frac {1}{2} C o v _ {t} \left(m _ {t + 1} , \pi_ {t + 1} ^ {e}\right)} _ {\text {R i s k P r e m i u m}} - \left(\frac {1}{2} C o v _ {t} \left(\pi_ {t + 1}, \pi_ {t + 1} ^ {e}\right) + \frac {1}{4} V a r \left(\pi_ {t + 1} ^ {e}\right)\right) (2)
$$

We call inflation dynamics that lead to positive long-term bond risk premia "bad" inflation, and inflation dynamics that lead to negative bond risk premia "good" inflation. Equation (2) shows that "bad" inflation corresponds to the case where  $\text{Cov}_t(m_{t+1}, \pi_{t+1}^e) > 0$  and "good" inflation corresponds to  $\text{Cov}_t(m_{t+1}, \pi_{t+1}^e) < 0$ .<sup>2</sup>

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/7c832deb-c943-42a0-937a-2a31d10aff9b/bb0246d1b6279a1512e5b1779136c3b58ea861c84486687d893edd6874ef31ac.jpg)  
Figure 1. Stock and Bond Valuations and Long-Term Inflation. This figure shows Robert Shiller's price-earnings ratio (CAPE), 10-year Treasury bond yield, and 10-year annualized CPI inflation from January 1952 through January 2023. The line representing inflation is constructed by adding  $2\%$  to the 10-year annualized inflation. Panel A presents the data in levels, Panel B in 12-month changes. The horizontal line in Panel B indicates January 2000. All data is from Robert Shiller's website http://www.econ.yale.edu/shiller/data.htm, accessed 2/25/2023.  
Panel A: Levels

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/7c832deb-c943-42a0-937a-2a31d10aff9b/79acda80481c832654d8efb17a2b289e7ca8a9d6e92c3e55b80cdced24f3d48a.jpg)  
Panel B: Changes

The intuition for inflation risk premia in bond yields is most simply illustrated by the

expression for the one-period interest rate in equation (1). The first two terms obtain even when there is no uncertainty and investors are risk neutral (i.e.,  $m_{t+1}$  constant), the famous Fisher equation. In the more plausible case where the SDF  $m_{t+1}$  is uncertain—i.e., some future states of the world are more feared than others—the risk premium in equation (1) can take either sign. Intuitively, with a positive inflation-SDF covariance, nominal Treasury bonds are worth less exactly in the states of the world that investors value more, and hence must offer investors a positive risk premium as a sweetener. Conversely, if the inflation-SDF covariance is negative, inflation raises the value of nominal Treasury bonds when investors value payoffs more (i.e., in high SDF states). Nominal Treasury bonds are therefore valuable hedges, and investors are willing to hold them even if the offered risk premium is negative.

Equation (2) develops the inflation risk premium for the two-period bond as a stand-in for long-maturity bonds more broadly. While the expression for the one-period bond is intuitive, this is merely illustrative as inflation is rarely a problem at very short horizons. By contrast, due to its persistent properties, inflation can be a very significant risk for long-term bonds. For long-term bonds, inflation risk premia depend on the covariance between expected inflation with the stochastic discount factor simply because long-term bond prices decline as expected inflation rises. Inflation is therefore "bad" if inflation expectations rise just as the marginal utility of an additional dollar is high, and inflation is "good" if inflation expectations rise when marginal utility and the SDF  $m_{t+1}$  are low.

Can we express the notion of "good" and "bad" inflation in terms of the business cycle properties of inflation? Under constant relative risk aversion (CRRA) preferences over aggregate consumption, utility of the representative agent is given by  $U(C_{t}) = \frac{C_{t}^{1 - \gamma}}{1 - \gamma}$ , with risk aversion parameter  $\gamma$ . The log SDF specializes to  $m_{t + 1} = \log \left(\beta \frac{U'(C_{t + 1})}{U'(C_t)}\right) = \log \beta -\gamma (c_{t + 1} - c_t)$ , where  $\beta$  is a constant discount rate and  $c_{t + 1}$  denotes log real consumption at time  $t + 1$ . This SDF implies that a financial asset is more valuable to investors if real payouts are high in states of the world when future consumption is low, and additional consumption is valuable. The risk premium for the two-period nominal bond then becomes

$$
C o v _ {t} \left(m _ {t + 1}, \pi_ {t + 1} ^ {e}\right) = - \gamma C o v _ {t} \left(c _ {t + 1}, \pi_ {t + 1} ^ {e}\right). \tag {3}
$$

The risk premium in equation (3) shows that inflation is of the "bad" variety if inflation expectations rise when consumption growth is low, giving rise to the so-called "stagflation." As a result, in recessions, prices of nominal Treasury bonds fall together with risky consumption claims such as stocks. Thus, bonds also become risky, and investors require a positive risk

premium to be willing to hold them. "Good" inflation, on the other hand, corresponds to the case where expected inflation rises when consumption and economic activity are high. In this case, real payoffs of nominal Treasury bonds become more valuable during recessions, making nominal Treasury bonds desirable hedges.

How should stocks depend on inflation? The early literature hypothesized that since dividends are a claim to firms' real profits, stocks should preserve their real value in the face of inflation. Subsequently, empirical research found that during the 1970s and 1980s, stocks also tended to return poorly when inflation was high, providing no protection against inflation in investors' portfolios (Fama and Schwert (1977), Kaul (1987)). This led to an interest in understanding which fundamental shocks might drive the value of stocks down and erode the value of long-term bonds through higher inflation expectations at the same time.

# 2.1 "Good" and "bad" inflation in a simple New Keynesian Model

To understand which fundamental economic shocks generate "good" vs. "bad" inflation, we revisit the workhorse three-equation New Keynesian model from macroeconomics. The traditional New Keynesian model can be summarized by the following three log-linearized equations<sup>4</sup>

$$
\textbf {E u l e r E q u a t i o n :} x _ {t} = (1 - \rho^ {x}) E _ {t} x _ {t + 1} + \rho^ {x} x _ {t - 1} - \psi (i _ {t} - E _ {t} \pi_ {t + 1}) + v _ {x, t}, \quad (4)
$$

$$
\text {P h i l l i p s C u r v e :} \quad \pi_ {t} = \kappa x _ {t} + \left(1 - \rho^ {\pi}\right) E _ {t} \pi_ {t + 1} + \rho^ {\pi} \pi_ {t - 1} + v _ {\pi , t}, \tag {5}
$$

$$
\text {M o n e t a r y P o l i c y R u l e :} \quad i _ {t} = \rho^ {i} i _ {t - 1} + \left(1 - \rho^ {i}\right) \left(\gamma^ {x} x _ {t} + \gamma^ {\pi} \pi_ {t}\right). \tag {6}
$$

Because we are interested in comovements between inflation and output, a constant risk premium is suppressed along with all other constants without loss of generality. Here,  $x_{t}$  denotes the output gap, or log real output relative to a frictionless price benchmark, and is the main indicator of whether the economy is in an expansion or a recession. The simplest models also assume that consumption equals output, so  $x_{t}$  should be thought of as closely linked to the real consumption that determines the SDF in consumption-based models of asset prices.

The Euler equation (4) represents the consumer's first-order condition for the real risk-free bond, describing the intertemporal trade-off between consumption today versus consumption

tomorrow. By raising interest rates, monetary policy makes it more attractive to save and less attractive to borrow, driving down real consumption and output on the left-hand-side of (4). The demand shock  $v_{x,t}$  represents anything that can increase consumption and output at a given risk-free rate, such as shocks to the demand for safe assets or credit market frictions.

The Phillips curve (5) follows from firms' optimal price-setting and production decisions when opportunities to revise prices are infrequent (Calvo (1983)). The backward-looking term may represent the dependence of inflation expectations on past realized inflation, or price indexation to past inflation. The supply (or so-called cost-push) shock  $v_{\pi ,t}$  captures any disturbance to the relationship between the output gap and marginal costs of production, such as increases in wage bargaining power or changing optimal markups due to partially monopolistic competition. Finally, monetary policy is conducted in terms of a rule for the nominal policy rate, in the tradition of Taylor (1993). It consists of a backward-looking or inertial term,  $\rho^i i_{t - 1}$  and the monetary policy target  $\gamma^{x}x_{t} + \gamma^{\pi}\pi_{t}$ , to which the monetary policy gradually adjusts.

How do the endogenous inflation and output dynamics from the New Keynesian model determine asset prices? The basic intuition is that higher inflation expectations reduce the real value of long-term nominal bonds, and stock prices rise with the output gap.5 The left column of Figure 2 shows that a positive demand shock moves inflation and the output gap up together along a stable Phillips curve, which in turn leads to a decline in long-term nominal bonds just as the output gap and stock prices rise. Demand shocks therefore induce a negative bond-stock correlation. Inflation is of the "good" variety, rising during expansions and being mostly transitory, as observed empirically during the 2000s. Equation (3) makes clear that this "good" type of inflation induced by demand shocks is predicted to lead to a negative inflation risk premium in a broad set of consumption-based models.

Conversely, the right column of Figure 2 suggests that an inflationary supply shock drives down the real value of long-term nominal bonds, just as the output gap and stocks also fall. Supply shocks therefore tend to induce a positive correlation between nominal long-term bonds and stocks, inflation is of the "bad" variety, nominal bonds are "risky", and the consumption-based inflation risk premium in equation (3) is positive.

In summary, we have seen that supply shocks tend to induce the "bad" variety of inflation, while demand shocks tend to induce the "good" variety. While Figure 2 provides a qualitative

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/7c832deb-c943-42a0-937a-2a31d10aff9b/6a262ca2102b0e26176ae77de326e5ed12a4b3026f1a568ef7fe70315304d3cc.jpg)  
Figure 2. Impulse Responses to Supply and Demand Shocks in Textbook New Keynesian Model. This figure shows impulse responses to demand and supply shocks. The output gap is in percent and inflation and interest rates are in annualized percent units. We show responses to a one percentage point demand shock and a one percentage point (in annualized units) supply shock. Quarter 1 is when the shock happens, with quarters after the shock shown on the x-axis. We set  $\rho^x = 0.45$  and  $\psi = 0.27$  as in Pflueger and Rinaldi (2022) following Fuhrer (2000);  $\rho^\pi = 0.8$  following Fuhrer (1997);  $\kappa = 0.019$  from Rotemberg and Woodford (1997);  $\gamma^x = 0.5$  and  $\gamma^\pi = 1.5$  following Taylor (1993).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/7c832deb-c943-42a0-937a-2a31d10aff9b/e09cfb7d95dfc934755dc4672e969262509b2d169954f8535be89729e609257d.jpg)

overview of the direct real cash flow effects on stocks and bonds, calibrating a quantitative model of stocks and bonds is beyond the scope of this review article. The next Section reviews the different approaches that have been used in the literature to link stocks and bonds to New Keynesian macroeconomic dynamics, and their implications for risk premia. One key message of this literature is that the indirect effects of supply and demand shocks through risk premia can be substantial.

# 2.2 "Good" and "bad" inflation in bonds and stocks

While the textbook New Keynesian model, as discussed in Section 2.1, is not focused on risk premia in stocks and bonds, recent research has made substantial progress on understanding the link between the economic sources of inflation and time-varying risk premia in stocks and bonds. Most of the approaches to pricing inflation risk within endowment economies have been applied to structural economic models. At the same time, the link between the real economy and asset prices remains an area of ongoing research.

Much of the earlier literature modeling the link between the economy and inflation risk premia focused on model calibrations with "bad" inflation, and their ability to generate positive risk premia and an upward-sloping nominal term structure of interest rates. Piazzesi

and Schneider (2006) brought to the fore the fact that over the second half of the 20th century, high inflation tended to predict poor future consumption, and therefore, nominal Treasury bonds were unattractive assets to hold. They show that embedding such a "bad" inflation effect on expected consumption together with Epstein and Zin (1989) preferences delivers a realistically upward-sloping nominal yield curve. Bansal and Shaliastovich (2013) incorporate the "bad" inflation logic within a long-run risk model that features two sources of time-varying uncertainty—real and nominal—and show that it can generate plausible risk-premium variation in stocks, bonds, and currencies. Rudebusch and Swanson (2012), Swanson (2019), and Kung (2015)) embed this logic in Dynamic Stochastic General Equilibrium (DGSE) models. Gabaix (2012) and Miller et al. (2022) consider rare disaster models where disasters are inflationary. They argue that devaluation of nominal Treasury bonds during such a high marginal utility state can justify an upward-sloping term structure, and potentially a decline in the term premium over time.

However, as the Great Inflation of the 1980s was followed by the Great Moderation of the mid-1990s and 2000s, researchers noted that nominal Treasury bonds no longer correlated positively with stocks. Instead, bond returns started to display a negative correlation with stocks, meaning that nominal Treasury bond prices increased when there was bad news for stocks (Connolly et al. (2005), Andersen et al. (2007), Baele et al. (2010), Viceira (2012)). An extreme example of this behavior of Treasury bonds occurred during the financial crisis of 2008–2009 when Treasury bond prices rose just as the stock market fell, though the negative bond-stock correlation was first noted in the early 2000s. Over this period, inflation also became more positively correlated with the business cycle.[6]

This change from "bad" to "good" inflation around the turn of the millennium was initially studied in reduced-form models of the SDF. Campbell et al. (2017) allow for a time-varying covariance between the SDF and inflation to work out the implications of changing inflation dynamics for the time-series of Treasury bond risk premia. Invoking the New Keynesian intuition—but no structural model—of supply and demand shocks, they argue that during earlier decades inflation rendered nominal Treasury bonds risky, justifying a positive term premium. By contrast the negative nominal bond-stock return correlation post-2000 led Treasury bonds to be valuable hedges, lowering the term premium.<sup>7</sup> To quantify the

contribution of different shocks to the asset price dynamics, Cieslak and Pang (2021) exploit theoretically-motivated sign restrictions on the comovement between stocks and nominal Treasury yields as well as on the impact of shocks on the slope of the yield curve. They emphasize two independent sources of variation in risk premia, that are consistent with the changing correlations emphasized in equation (3). In particular, they attribute the change in stock-bond comovement in the late 1990s to a diminished role of the 'common' risk premium and monetary news (both of which move stocks and bonds in the same direction), and increased importance of real cash-flow growth news and, in particular, 'hedging' premium news (whereby nominal bonds hedge recession risk in stocks).

Recent literature explaining the changing nature of inflation risk endogenizes time-varying risk premia in stocks and bonds by building on the habit formation preferences of Campbell and Cochrane (1999). Most simply, these preferences can be thought of as inducing time-variation in risk aversion  $\gamma$  in equation (3). This time-variation is nonlinearly linked to the business cycle, where risk aversion increases after a sequence of bad consumption and output surprises. The framework to model the changing nature of inflation risk with habit formation preferences is provided by Campbell et al. (2020). Their preferences jointly generate high stock market volatility and smooth short-term interest rates as in the data, and an exactly log-linear New Keynesian Euler equation, thereby taking a step towards integrating the favorable asset pricing properties of Campbell and Cochrane (1999)'s habit preferences with a New Keynesian model.

The key insight from allowing for time-varying risk aversion through habit formation preferences is that a small change in the macroeconomic comovement between inflation and output can be sufficient to dramatically change the risk properties of nominal Treasury bonds. Changes in the inflation-consumption correlation endogenously lead to a switch from common variation in risk discounts in bonds and stocks to negatively correlated risk discounts, consistent with the decomposition of Cieslak and Pang (2021). The intuition is that the negative inflation-output correlation in the 1980s induces a positive correlation between the real payoffs of nominal Treasury bonds and stocks. In this "bad" inflation regime, an increase in risk aversion  $\gamma$  raises risk premia on bonds and stocks at the same time, amplifying the positive comovement between stocks and nominal Treasury bonds. Conversely, during the "good" inflation regime of the 2000s, an increase in risk aversion  $\gamma$  increases risk premia on stocks but makes risk premia on nominal Treasury bonds even more negative. A sudden increase in risk aversion therefore drives risk premia on bonds and stocks in opposite directions and amplifies the negative comovement between nominal Treasury bonds and stocks. This mechanism can be interpreted as endogenous "flight-to

safety", which arises only if "good" inflation dynamics provide an initial seed of safety for nominal Treasury bonds.

Pflueger and Rinaldi (2022) and Pflueger (2023) go further by integrating the New Keynesian model of inflation and monetary policy with endogenously time-varying risk premia via habit formation preferences. Pflueger and Rinaldi (2022) explain the large and persistent risk premium responses to empirical monetary policy surprises. The intuition is that a hawkish monetary policy shock drives down consumption towards habit, thereby making investors more risk averse and leading stock prices to fall more than the present discounted value of dividends.<sup>8</sup> Pflueger (2023) analyzes the information content of time-varying bond betas for a New Keynesian asset pricing model with supply shocks, demand shocks, and monetary policy.<sup>9</sup> She finds that the economy has switched from volatile supply shocks during the 1980s to volatile demand and monetary policy shocks in the 2000s, and this can explain the switch from "bad" inflation and risky nominal Treasury bonds to "good" inflation and safe nominal Treasury bonds. Counterfactual exercises show that monetary policy also matters and can protect nominal bonds from becoming risky even when supply shocks are dominant. In this model, bond-stock betas again reflect endogenous "flight-to-safety", and therefore depend on the equilibrium more than on the realized shocks. For example, in a supply-driven equilibrium, a positive demand shock makes investors more willing to pay for (in this equilibrium) risky nominal bonds despite the rise in expected inflation and decline in real cash flows. An effect similar to Cieslak and Pang (2021)'s change from 'common' risk premium news to 'hedging' risk premium news therefore arises endogenously when the economy changes from being dominated by supply shocks to being dominated by demand shocks.

# 3 Empirical evidence on inflation effects in asset prices

The empirical literature studying the asset pricing implications of inflation is vast. We synthesize evidence across various strands of this research—from inflation expectations formation, through the time-varying bond risk premia, to the inflation risk premia extracted from the cross-section of asset returns, and finally the pricing of inflation derivatives—to highlight the common themes that emerge. The overriding conclusion from this body of

work is that persistent (trend) inflation shocks are costly and induce significant risk premia in both stocks and bonds. While inflation risk premia were likely positive in earlier decades, in recent decades they appear to have been on average close to zero or even negative.

# 3.1 Inflation expectations

The basic intuition from the Fisher equation suggests that the level of nominal interest rates should be related to inflation expectations. Indeed, Figure 1 makes it difficult to refute that such a link exists, at least in the long run.

To visualize the properties of inflation expectations, Figure 3 displays inflation forecasts at different horizons using the Survey of Professional Forecasters (SPF), augmented with a ten-year ahead expected inflation measure from the Federal Reserve in the early part of the sample. The graph reveals distinct properties of inflation in the shortand longer-run. The short-run component, driven primarily by volatile food and energy prices, mean-reverts within just a few quarters. The persistent inflation shocks, instead, give rise to the so-called trend inflation. Such shocks can linger around for years as seen in the early 1980s, suggesting considerable sluggishness in how the public updates their inflation beliefs (e.g., Sargent, 1999; Kozicki and Tinsley, 2001b). Accordingly, Malmendier and Nagel (2016) show that survey forecasts of inflation can be well described by models of adaptive expectations (constant-gain learning), whereby agents learn from their past experience. Given this evidence, the backward-looking nature of inflation expectations (as in equation (5)) has become an increasingly common assumption in macro-asset pricing literature.

Another notable feature of inflation expectations at longer horizons is their high volatility in the 1970s and 1980s and stability starting around the turn of the 21st century. The 1980s inflation had several "bad" features, being volatile, persistent and—importantly for the risk of nominal Treasury bonds—high in recessions. The change in the properties of inflation expectations coincides with the switch in the stock-bond comovement from positive to negative. Combining these empirical facts with the intuition from the New Keynesian model supports the view that trend inflation originated mainly from the supply-side shocks, and that these shocks must have been relatively modest in recent decades compared to the early part of the sample. To the extent that "bad" inflation shocks take a long time to dissipate, the theory reviewed above predicts that asset pricing implications of trend inflation can be profound.

Next, we summarize results from different strands of empirical literature on the asset-pricing implications of inflation risk.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/7c832deb-c943-42a0-937a-2a31d10aff9b/87809546861abd91827a6df8a52f432a5f5848b379ac9c1f5824be3969d57811.jpg)  
Figure 3. Term structure of inflation expectations. The figure presents CPI inflation expectations for different horizons from current-quarter nowcast up to 10-year-ahead forecast. The 10-year forecast is constructed from the survey-based measure used by the Federal Reserve (the perceived inflation target variable (PTR) in the FRB/US model). After 1991Q3, the Fed measure uses the 10-year CPI inflation forecast from the SPF. For shorter horizons, starting from 1981Q3, we use SPF quarterly CPI inflation forecasts and, before 1981Q3, the quarterly GDP deflator forecasts (adjusting for the mean difference between CPI inflation and GDP deflator). The sample spans 1970Q1 through 2022Q4.

# 3.2 Time-variation of bond risk premia

Inflation affects the term structure of nominal interest rates via investors' expectations of the short-rate path (the expectations hypothesis term) and because investors require a risk premium for bearing inflation risk. By an accounting identity, knowing the expected path of the short rate has immediate implications for understanding bond risk premia, and vice versa. Much of the empirical yield curve research focuses on disentangling these two channels.

By now, it is well-established that risk premia on nominal Treasury bonds fluctuate over time. A common approach to measuring the risk premium variation uses predictive regressions, i.e., projections of future realized excess returns on today's conditioning variables. Current yields are natural conditioning variables as they impound information about investors' expectations. Accordingly, Fama and Bliss (1987) and Campbell and Shiller (1991) document significant predictability of bond returns with the term spread. Cochrane and Piazzesi (2005) expand on this result to show a powerful predictive content of a single factor constructed as a linear combination of multiple current yields.

Those findings have stimulated active research into the nexus between the variation in bond risk premia, the persistent dynamics of nominal yields, and the trend inflation. Starting from the premise of the Fisher equation, Cieslak and Povala (2015) show that trend inflation

together with the current one-period yield span nearly perfectly the expectations hypothesis component of the yield curve, jointly capturing the real-rate and inflation expectations of investors. Controlling for the expectations hypothesis term allows to uncover the variation in the Treasury risk premium in longer-term yields. This leads to a simple characterization of the entire yield curve in terms of three factors—trend inflation, expected real rate, and the risk premium—which can be readily measured in the data.

Perhaps not surprisingly given Figure 1, trend inflation has been found to drive the level of interest rates in the long run and across maturities (see, e.g., Kozicki and Tinsley (2001a); Bekaert et al. (2010); Rudebusch and Wu (2008) for the US evidence and Barr and Campbell (1997) for the UK evidence). Indeed, Cieslak and Povala (2015) show that the trend inflation accounts for the bulk (more than  $80\%$ ) of the unconditional variance of the overall US nominal yield level since the 1970s.[10] The term structure slope, instead, reflects movements in real-rate expectations at the business cycle frequency and the risk premium. The risk premium contributes the least to the unconditional variance of yields, but its effect strengthens with yield maturity. Intuitively, investors holding long-term nominal bonds are particularly exposed to negative consequences of trend-inflation shocks, and require a time-varying compensation for this exposure. Thus, an increase in the trend-inflation premium steepens the yield curve.[11] As an additional property, nominal risk premia turn out to be effectively uncorrelated with investors' short-rate expectations, which implies that macrofinance models need to allow for a non-trivial variation in risk aversion or uncertainty to match the premia dynamics in the data.

While trend inflation dominates the level of nominal yields, at higher frequencies yield innovations primarily reflect real-rate and risk-premium news, rather than expected inflation news. Decomposing the variance of yield innovations, Duffee (2018) argues that expected inflation news explains only between  $10\%$  and  $20\%$  of yield innovations at quarterly and monthly frequencies in the post 1960s sample. Cieslak (2018) provides similar estimates studying sources of investors' short-rate forecast errors since the early 1980s. These findings may appear to contradict the dominance of expected inflation in yield levels, but the two views can be readily reconciled. The low contribution of expected inflation shocks to yield changes and high contribution to yield levels is a natural consequence of high persistence and sluggish updating of inflation expectations, as apparent in the survey forecast (Figure 3). Importantly, this evidence does not imply that expected inflation shocks are unpriced

by investors and, thus, irrelevant for bond risk premia. It merely confirms the finding from the bond predictability literature that term premia earned in compensation for expected inflation shocks (and real rate shocks) move around with state variables other than expected inflation itself.

# 3.3 Pricing of inflation risk in the cross-section of asset returns

Evidence from the cross-section of asset returns also supports the conclusion that investors care mostly about persistent movements in inflation, and less about transitory fluctuations. A useful metric for understanding the magnitude of how inflation risk affects asset prices is to measure the price of risk per unit of inflation-beta exposure, i.e., the discount attached to prices of financial assets that perform poorly when inflation goes up. In the tradition of beta-pricing models, one can estimate beta exposure by regressing excess returns on (innovations in) inflation (see e.g., Bekaert and Wang (2010), Boons et al. (2020)). In this spirit, Fang et al. (2022) take a step toward disentangling the effects of different inflation shocks by studying the pricing of core and energy inflation across asset classes, including stocks, bonds, real estate, and commodities. The core beta turns out to be consistently negative suggesting that these assets do not hedge core inflation risk. A one-unit higher core-beta exposure (in absolute terms) raises the risk premium by 1 percentage point per year. Energy shocks, instead, do not appear to command a significant risk compensation. Importantly, the identification of the core premium in Fang et al. (2022) stems from the pre-2000 sample, providing another piece of evidence on the negative consequences of persistent inflation shocks.[12] These findings, however, should not be interpreted as implying that energy shocks are irrelevant for asset prices, if oil price shocks eventually feed into core inflation (e.g., Hamilton, 2013; Meltzer, 2005).

# 3.4 Inflation swaps and inflation-linked bonds

Perhaps the most direct insight into how investors price inflation risk can be gleaned from the inflation swap market, with the inflation swap rate minus inflation expectations a natural measure of inflation risk premia. While closely related to the inflation-indexed Treasury bonds (TIPS), inflation swaps tend to be less affected by liquidity concerns (e.g., Fleckenstein et al. (2014); Pflueger and Viceira (2016)). Inflation swaps effectively isolate the inflation-driven component of nominal Treasury yields.[13] As such, the swap rate captures the risk-

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/7c832deb-c943-42a0-937a-2a31d10aff9b/e6db15808a82da324077994316581fff748c8afc90e6900bdc6e8e4d649ac86a.jpg)  
Inflation swap 1-year rate (adj)

Figure 4. Inflation swap rates and survey expected inflation. The figure superimposes zero-coupon oneand ten-year inflation swap rates and survey expectations of inflation. The vertical line marks the start of 2021. The swap rates are adjusted to account for the known component of the payoff due to the 2.5-month indexation lag in the swap contract. Since one-year inflation swap rate reflects investors' expectations over approximately the next three quarters, we match it with the three-quarter ahead survey. Survey expectations are from the SPF. The sample is quarterly from 2004Q3 through 2023Q1.  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/7c832deb-c943-42a0-937a-2a31d10aff9b/9d97d2075207e8e605a9c6ab93bc4b903ee456bc4a7f1594253f8a72da103ce5.jpg)  
Expected 3-quarter inflation  
Inflation swap 10-year rate (adj)  
Expected 10-year inflation

neutral expectation of inflation, or the expected inflation rate adjusted for the inflation risk premium arising from the comovement between the real SDF and (expected) inflation (equation (2)). To trace out inflation risk premia over time one can thus compare the swap rate with actual inflation expectations of investors using surveys. $^{14}$

Figure 4 juxtaposes the survey inflation expectations against the oneand ten-year swap rates (adjusted for the indexation lag). If the inflation risk premium is negative (positive), we would expect the inflation swap rate to be below (above) survey inflation expectations. This simple exercise shows that properties of inflation risk premia inferred from inflation swaps agree broadly with the post-2000 implications of structural models, such as Campbell et al. (2020). At the short horizon, in the left panel of Figure 4, the inflation swap-survey spread is on average negative. As discussed in Section 2, a negative inflation risk premium suggests that investors perceive inflation to be of the "good" variety. In contrast, at the ten-year horizon, in the right panel of Figure 4, the swap-survey spread is positive on average, albeit very modestly. The modest size of the premium indicates that the perceived trend inflation risk post-2000 has been small, aligning with the stable long-run inflation expectations over that period.

# 4 Conclusion

We have reviewed the theoretical and empirical progress made towards understanding how inflation and investors expectations of future inflation affect financial markets. Most obviously, inflation expectations matter for assets that deliver fixed dollar payouts, like nominal Treasury bonds. However, as inflation ultimately is an endogenous variable, its asset pricing implications depend on the nature of the underlying structural shocks. The body of evidence suggests that persistent, long-lived, stagflationary shocks are costly. When inflation is of such a "bad" type, as was the case during the 1980s, prices of Treasury bonds and stocks fall simultaneously, and consequently, both require a risk discount to attract investors.

It is too early to draw definitive conclusions about the sources and consequences of the post-Covid-19 pandemic surge inflation. For now, evidence from the inflation swap market and long-term inflation forecasts from surveys indicates that inflation risk premia have remained very narrow. An optimist may feel a relief that inflation risk continues to be small, a pessimist may worry that, given that beliefs take time to adjust, financial markets may be too optimistic.

# References

Andersen, T. G., T. Bollerslev, F. X. Diebold, and C. Vega (2007). Real-time price discovery in global stock, bond and foreign exchange markets. Journal of International Economics 73(2), 251-277.  
Auclert, A., M. Rognlie, and L. Straub (2020). Micro jumps, macro humps: Monetary policy and business cycles in an estimated hank model. Technical report, National Bureau of Economic Research.  
Baele, L., G. Bekaert, and K. Inghelbrecht (2010). The determinants of stock and bond return comovements. Review of Financial Studies 23(6), 2374-2428.  
Bansal, R. and I. Shaliastovich (2013). A long-run risks explanation of predictability puzzles in bond and currency markets. The Review of Financial Studies 26(1), 1-33.  
Barr, D. G. and J. Y. Campbell (1997). Inflation, real interest rates, and the bond market: A study of UK nominal and index-linked government bond prices. Journal of Monetary Economics 39(3), 361-383.  
Bauer, M. D., C. Pflueger, and A. Sundaram (2022). Perceptions about monetary policy. Unpublished manuscript, University of Hamburg, University of Chicago, and Harvard Business School.  
Bauer, M. D. and G. D. Rudebusch (2020). Interest rates under falling stars. *American Economic Review* 110(5), 1316-54.  
Bekaert, G., S. Cho, and A. Moreno (2010). New Keynesian macroeconomics and the term structure. Journal of Money, Credit and Banking 42, 34-62.  
Bekaert, G. and X. Wang (2010). Inflation risk and the inflation risk premium. *Economic Policy* 25(64), 755-806.  
Bernanke, B. S. (2017). Monetary policy in a new era. *Evolution or Revolution?: Rethinking Macroeconomic Policy* after the Great Recession, 3-48.  
Bianchi, F., M. Lettau, and S. C. Ludvigson (2022). Monetary policy and asset valuation. Journal of Finance 77(2), 967-1017.  
Bianchi, F., S. C. Ludvigson, and S. Ma (2022). Belief distortions and macroeconomic fluctuations. American Economic Review 112(7), 2269-2315.  
Boons, M., F. Duarte, F. De Roon, and M. Szymanowska (2020). Time-varying inflation risk and stock returns. Journal of Financial Economics 136(2), 444-470.  
Boudoukh, J. and M. Richardson (1993). Stock returns and inflation: A long-horizon perspective. American Economic Review 83(5), 1346-1355.  
Calvo, G. A. (1983). Staggered prices in a utility-maximizing framework. Journal of Monetary Economics 12(3), 383-398.  
Campbell, J. Y. and J. H. Cochrane (1999). By force of habit: A consumption-based explanation of aggregate stock market behavior. Journal of Political Economy 107, 205-251.  
Campbell, J. Y., C. Pflueger, and L. M. Viceira (2020). Macroeconomic drivers of bond and equity risks. Journal of Political Economy 128(8), 3148-3185.  
Campbell, J. Y. and R. J. Shiller (1991). Yield spreads and interest rate movements: A bird's eye view. The Review of Economic Studies 58(3), 495-514.  
Campbell, J. Y., R. J. Shiller, and L. M. Viceira (2009, March). Understanding inflation-indexed bond market. Working paper, Harvard University and Cowles Foundation.

Campbell, J. Y., A. Sunderam, L. M. Viceira, et al. (2017). Inflation Bets or Deflation Hedges? The Changing Risks of Nominal Bonds. Critical Finance Review 6(2), 263-301.  
Chernov, M., L. A. Lochstoor, and D. Song (2021). The real explanation of nominal bond-stock puzzles. Technical report, National Bureau of Economic Research.  
Cieslak, A. (2018). Short rate expectations and unexpected returns in Treasury bonds. Review of Financial Studies 31, 3265-3306.  
Cieslak, A. and H. Pang (2021). Common shocks in stocks and bonds. Journal of Financial Economics 142(2), 880-904.  
Cieslak, A. and P. Povala (2015). Expected returns in Treasury bonds. Review of Financial Studies 28(10), 2859-2901.  
Clarida, R., J. Galí, and M. Gertler (1999). The Science of Monetary Policy: A New Keynesian Perspective. Journal of Economic Literature 37, 1661-1707.  
Cochrane, J. H. (2001). Long-term debt and optimal policy in the fiscal theory of the price level. *Econometrica* 69(1), 69-116.  
Cochrane, J. H. and M. Piazzesi (2005). Bond risk premia. American Economic Review 95, 138-160.  
Connolly, R., C. Stivers, and L. Sun (2005). Stock market uncertainty and the stock-bond return relation. Journal of Financial and Quantitative Analysis 40(1), 161-194.  
David, A. and P. Veronesi (2013). What ties return volatilities to price valuations and fundamentals? Journal of Political Economy 121(4), 682-746.  
Duffee, G. R. (2018). Expected inflation and other determinants of Treasury yields. Journal of Finance 73(5), 2139-2180.  
Epstein, L. G. and S. E. Zin (1989). Substitution, risk aversion, and the temporal behavior of consumption. *Econometrica* 57(4), 937-969.  
Fama, E. F. and R. R. Bliss (1987). The information in long-maturity forward rates. *American Economic Review*, 680-692.  
Fama, E. F. and G. W. Schwert (1977). Asset returns and inflation. Journal of Financial Economics 5(2), 115-146.  
Fang, X., Y. Liu, and N. Roussanov (2022). Getting to the core: Inflation risks within and across asset classes. Technical report, National Bureau of Economic Research.  
Fleckenstein, M., F. A. Longstaff, and H. Lustig (2014). The TIPS-Treasury bond puzzle. Journal of Finance 69(5), 2151-2197.  
Fleckenstein, M., F. A. Longstaff, and H. Lustig (2017). Deflation risk. Review of Financial Studies 30(8), 2719-2760.  
French, K. R., R. S. Ruback, and G. W. Schwert (1983). Effects of nominal contracting on stock returns. Journal of Political Economy 91(1), 70-96.  
Fuhrer, J. C. (1997). The (un) importance of forward-looking behavior in price specifications. Journal of Money, Credit, and Banking, 338-350.  
Fuhrer, J. C. (2000). Habit formation in consumption and its implications for monetary-policy models. *American Economic Review* 90(3), 367-390.  
Gabaix, X. (2012). Variable rare disasters: An exactly solved framework for ten puzzles in macrofinance. Quarterly Journal of Economics 127(2), 645-700.  
Gali, J. (2015). Monetary Policy, Inflation, and the Business Cycle: An Introduction to the New Keynesian Framework and its Applications. Princeton University Press.

Gourio, F. and P. Ngo (2020). Risk premia at the ZLB: A macroeconomic interpretation. *Federal Reserve Bank of Chicago*.  
Hamilton, J. D. (2013). Historical oil shocks. In Handbook of Major Events in Economic History, pp. 258-284.  
Kaul, G. (1987). Stock returns and inflation: The role of the monetary sector. Journal of Financial Economics 18(2), 253-276.  
Kekre, R. and M. Lenel (2022). Monetary policy, redistribution, and risk premia. *Econometrica, forthcoming*.  
Kozicki, S. and P. Tinsley (2001a). Shifting endpoints in term structure of interest rates. Journal of Monetary Economics 47, 613-652.  
Kozicki, S. and P. Tinsley (2001b). Term structure views of monetary policy under alternative models of agent expectations. Journal of Economic Dynamics & Control 25, 149-184.  
Kung, H. (2015). Macroeconomic linkages between monetary policy and the term structure of interest rates. Journal of Financial Economics 115(1), 42-57.  
Li, E. X., T. Zha, J. Zhang, and H. Zhou (2022). Does fiscal policy matter for stock-bond return correlation? Journal of Monetary Economics 128, 20-34.  
Malmendier, U. and S. Nagel (2016). Learning from inflation experiences. Quarterly Journal of Economics 131(1), 53-87.  
Mankiw, N. G. and R. Reis (2002). Sticky information versus sticky prices: a proposal to replace the new keynesian phillips curve. The Quarterly Journal of Economics 117(4), 1295-1328.  
Meltzer, A. H. (2005). Origins of the great inflation. *Federal Reserve Bank of St. Louis Review April/March*, 145-176.  
Miller, M., J. D. Paron, and J. A. Wachter (2022). Sovereign default and the decline in interest rates. *Jacobs Levy Equity Management Center for Quantitative Financial Research* Paper.  
Mishkin, F. (2007, October). Headline versus core inflation in the conduct of monetary policy. Speech at the Business Cycles, International Transmission and Macroeconomic Policies Conference, HEC Montreal, Montreal, Canada.  
Pflueger, C. (2023). Back to the 1980s or not? The drivers of inflation and real risks in Treasury bonds. NBER Working Paper wp30921.  
Pflueger, C. and G. Rinaldi (2022). Why does the fed move markets so much? A model of monetary policy and time-varying risk aversion. Journal of Financial Economics forthcoming.  
Pflueger, C. E. and L. M. Viceira (2016). Return Predictability in the Treasury Market: Real Rates, Inflation, and Liquidity. In P. Veronesi (Ed.), Handbook in Fixed-Income Securities. Wiley, New Jersey.  
Piazzesi, M. and M. Schneider (2006). Equilibrium yield curves. NBER Macroeconomics Annual 21, 389-472.  
Rotemberg, J. J. and M. Woodford (1997). An optimization-based econometric framework for the evaluation of monetary policy. NBER macroeconomics annual 12, 297-346.  
Rudebusch, G. D. and E. T. Swanson (2012). The bond premium in a DSGE model with long-run real and nominal risks. *American Economic Journal: Macroeconomics* 4(1), 105-43.  
Rudebusch, G. D. and T. Wu (2008). A macro-finance model of the term structure, monetary policy, and the economy. *Economic Journal* 118, 906-926.  
Sargent, T. J. (1999). The Conquest of American Inflation. Princeton University Press.

Song, D. (2017). Bond market exposures to macroeconomic and monetary policy risks. Review of Financial Studies 30(8), 2761-2817.  
Swanson, E. T. (2019). A macroeconomic model of equities and real, nominal, and defaultable debt. working paper, University of California, Irvine.  
Taylor, J. B. (1993). Discretion versus policy rules in practice. In *Carnegie-Rochester Conference Series on Public Policy*, Volume 39, pp. 195-214. Elsevier.  
Viceira, L. M. (2012). Bond risk, bond return volatility, and the term structure of interest rates. International Journal of Forecasting 28(1), 97-117.  
Woodford, M. (2003). Interest and Prices. Princeton University Press.

# APPENDIX

(Not for publication)

# Two-period bond and the pricing of expected inflation shocks

The real log SDF  $(m_{t + 1})$  is assumed to be conditionally normal. The one-period real bond price satisfies

$$
e x p \left(- r _ {t}\right) = E _ {t} \left[ e x p \left(m _ {t + 1}\right) \right] = e x p \left(E _ {t} m _ {t + 1} + \frac {1}{2} V a r _ {t} m _ {t + 1}\right). \tag {A.7}
$$

The real risk-free rate is

$$
r _ {t} = - E _ {t} m _ {t + 1} - \frac {1}{2} \operatorname {V a r} _ {t} m _ {t + 1}. \tag {A.8}
$$

Assuming joint log-normality of inflation and log SDF, the one-period nominal bond price equals

$$
\begin{array}{l} e x p \left(- i _ {t}\right) = E _ {t} \left[ e x p \left(m _ {t + 1} - \pi_ {t + 1}\right) \right] (A.9) \\ = \exp \left(E _ {t} m _ {t + 1} - E _ {t} \pi_ {t + 1} + \frac {1}{2} \operatorname {V a r} _ {t} m _ {t + 1} - \operatorname {C o v} _ {t} \left(m _ {t + 1}, \pi_ {t + 1}\right) + \frac {1}{2} \sigma_ {\pi} ^ {2}\right). (A.10) \\ \end{array}
$$

Taking logs and multiplying by minus one gives the nominal one-period yield

$$
\begin{array}{l} i _ {t} = - E _ {t} m _ {t + 1} + E _ {t} \pi_ {t + 1} - \frac {1}{2} \operatorname {V a r} _ {t} m _ {t + 1} + \operatorname {C o v} _ {t} \left(m _ {t + 1} \pi_ {t + 1}\right) - \frac {1}{2} \sigma_ {\pi} ^ {2} (A.11) \\ = r _ {t} + E _ {t} \pi_ {t + 1} + C o v _ {t} \left(m _ {t + 1}, \pi_ {t + 1}\right) - \frac {1}{2} \sigma_ {\pi} ^ {2}. (A.12) \\ \end{array}
$$

The two-period nominal bond price equals

$$
\exp \left(- 2 i _ {t} ^ {(2)}\right) = E _ {t} [ \exp \left(m _ {t + 1} - \pi_ {t + 1} - i _ {t + 1}\right) ] \tag {A.13}
$$

$$
\begin{array}{l} = e x p \left(E _ {t} m _ {t + 1} - E _ {t} \pi_ {t + 1} - E _ {t} i _ {t + 1} + \frac {1}{2} V a r _ {t} m _ {t + 1} + \frac {1}{2} \sigma_ {\pi} ^ {2} + \frac {1}{2} V a r _ {t} i _ {t + 1} \right. \\ - C o v _ {t} \left(\pi_ {t + 1}, m _ {t + 1}\right) - C o v _ {t} \left(i _ {t + 1}, m _ {t + 1}\right) + C o v _ {t} \left(i _ {t + 1}, \pi_ {t + 1}\right)) \tag {A.14} \\ \end{array}
$$

$$
= \exp \left(- i _ {t} - E _ {t} i _ {t + 1} + \frac {1}{2} \operatorname {V a r} _ {t} i _ {t + 1} - \operatorname {C o v} _ {t} \left(i _ {t + 1}, m _ {t + 1}\right) + \operatorname {C o v} _ {t} \left(i _ {t + 1}, \pi_ {t + 1}\right)\right). 1 5)
$$

where above we substitute in for the one-period nominal rate from (A.12).

Taking logs and multiplying by  $-\frac{1}{2}$  gives

$$
i _ {t} ^ {(2)} - \frac {1}{2} (i _ {t} + E _ {t} i _ {t + 1}) = - \frac {1}{4} V a r _ {t} i _ {t + 1} + \frac {1}{2} C o v _ {t} (i _ {t + 1}, m _ {t + 1}) - \frac {1}{2} C o v _ {t} (i _ {t + 1}, \pi_ {t + 1}) \quad (\mathrm {A}. 1 6)
$$

Substituting in for the one-period nominal rate next period  $i_{t+1}$  from (A.12) and using the assumption

tion that the variance and covariance terms are time-invariant gives:

$$
\begin{array}{l} i _ {t} ^ {(2)} - \frac {1}{2} \left(i _ {t} + E _ {t} i _ {t + 1}\right) = - \frac {1}{4} \operatorname {V a r} _ {t} \left(r _ {t + 1} + E _ {t + 1} \pi_ {t + 2}\right) (A.17) \\ + \frac {1}{2} C o v _ {t} (r _ {t + 1} + E _ {t + 1} \pi_ {t + 2}, m _ {t + 1}) - \frac {1}{2} C o v _ {t} (r _ {t + 1} + E _ {t + 1} \pi_ {t + 2}, \pi_ {t + 1}) \\ = \frac {1}{2} \operatorname {C o v} _ {t} \left(E _ {t + 1} \pi_ {t + 2}, m _ {t + 1}\right) (A.18) \\ - \frac {1}{2} \operatorname {C o v} _ {t} \left(E _ {t + 1} \pi_ {t + 2}, \pi_ {t + 1}\right) - \frac {1}{4} \operatorname {V a r} _ {t} \left(E _ {t + 1} \pi_ {t + 2}\right), (A.19) \\ \end{array}
$$

where moving to the last equality we rearrange terms and make the additional assumption that the real risk-free rate is constant. We thus obtain the simplified expression (2) in the main paper, with  $\pi_{t + 1}^{e} = E_{t + 1}\pi_{t + 2}$ .