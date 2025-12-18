---
aliases:
  - Identification in Macroeconomics
tags:
key_concepts:
parent_directory: Microeconomics
cssclasses: academia
title: IDENTIFICATION IN MACROECONOMICS
linter-yaml-title-alias: IDENTIFICATION IN MACROECONOMICS
---

# IDENTIFICATION IN MACROECONOMICS

In order to recommend a course of action to achieve an objective, we must first know whether that course of action will in fact promote the objective. Positive scientific knowledge … is clearly a prerequisite for … normative judgment.

Milton Friedman

Nobel Lecture, 1976

Key empirical questions same as 80 years ago:

What are the sources of business cycles?

- How does monetary and fiscal policy affect the economy?
Why do some countries grow faster than others?
Why do we not know the answers to these questions?
- Crucial reason: Identification in macro is hard
- Monetary policy is endogenous
- Not just a little endogenous
Fed employs hundreds of PhD economists to make policy as endogenous as possible
Fed lowered rates aggressively in 2008
- Did so for a reason! (e.g., housing collapse and financial crisis)
OLS regression of output on interest rates does not capture effects of monetary policy
- It captures combined effects of monetary policy and factors causing Fed to act
- Direct causal inference
- Identify plausibly exogenous variation in some policy (i.e., a natural experiment)
- Regress outcomes of interest on exogenous policy variation
- More structural modes of inference
- Use a set of moments to discriminate between models
GMM estimation of a structural model
Full information DSGE estimation
# Two challenges:
- Convincing natural experiments few and far between
Rarely see exactly the experiment we want (external validity)
# 1. Term structure of shocks heterogeneous
- Some only affect short run
- Some affect short and long run
- Some only affect longer run (e.g., when monetary policy at ZLB)
- Responses to these are (very) different in standard models
1. Term structure of shocks heterogeneous
- Some only affect short run
- Some affect short and long run
- Some only affect longer run (e.g., when monetary policy at ZLB)
- Responses to these are (very) different in standard models
2. Fiscal shock depend on monetary response (and vice versa)
- Multiplier in normal times
- Multiplier when monetary policy is at ZLB
1. Term structure of shocks heterogeneous
- Some only affect short run
- Some affect short and long run
- Some only affect longer run (e.g., when monetary policy at ZLB)
- Responses to these are (very) different in standard models
2. Fiscal shock depend on monetary response (and vice versa)
- Multiplier in normal times
- Multiplier when monetary policy is at ZLB
3. Policy response depends on state of the economy
Degree of slack in the economy
How open the economy is
4. Term structure of shocks heterogeneous
- Some only affect short run
- Some affect short and long run
- Some only affect longer run (e.g., when monetary policy at ZLB)
- Responses to these are (very) different in standard models
2. Fiscal shock depend on monetary response (and vice versa)
- Multiplier in normal times
- Multiplier when monetary policy is at ZLB
3. Policy response depends on state of the economy
Degree of slack in the economy
- How open the economy is
4. Policy response depends on information content of the shock
- Monetary surprises may convey information about other economic fundamentals
- Even very clean natural experiments only give partial answers to how future policy actions will affect economy
One response: Gather direct evidence on every different case
- May not be feasible
- Surely we can learn from experiments we have about other cases
- Structural inference in macro often take following form:
- Use a set of moments to discriminate between models
I.e., affect posterior over space of models
- Portable statistics are particularly valuable:
Statistics that can be used over and over again to discipline and test different models
Example: Equity premium
- Mehra-Prescott 85 used it to evaluate one class of models
- Generation of researchers has since used this same statistic to evaluated a host of new models
Several types of moments can be highly informative:
- Micro moments
Macro moments
- Simple moments (means, variances, covariances)
- "Identified moments" (responses to structural shocks - causal effects)
# Examples:

Frequency or price change and related statistics

(Bils-Klenow 04, Nakamura-Steinsson 08, Klenow-Kryvtsov 08)

- Informative about models of price setting
- Indirectly informative about effectiveness of monetary and fiscal policy
Changes in shopping time and quantity and quality of food intake at retirement (Aguiar-Hurst 05)
- Informative about competing models of life-cycle consumption and savings
# Example:

Real wages and hours worked

- Past 200 years have seen substantial increases in real wages, while hours worked have been stable or fallen
- Rules out models without income effects
Motivates use of "balanced-growth preferences" (King-Plosser-Rebelo 88, Boppart-Krusell 16)
Rich tradition of using simple micro and macro moments:
RBC literature (Kydland-Prescott 82, King-Rebelo 99)
Shimer puzzle literature (Shimer 05)
- Misallocation literature (Hsieh-Klenow 09)
Exchange rate disconnect (Meese-Rogoff 83, Itskhoki-Mukhin 17)
"Wedges" literature (Chari-Kehoe-McGrattan 08, Shimer 09)
Simple statistics can often yield powerful inference
- Rising standards for what constitutes a credible identification strategy to estimate a causal effect (e.g., Angrist-Pischke 10)
- Increased use of:
Instrumental variables
- Difference-in-difference estimation
- Regression discontinuities
- Randomized controlled trials
- How can these methods be used in macro?
- Key challenge: Object estimated often does not correspond directly to object of interest (i.e., policy response or structural parameter)
- Even when they don't directly answer question of interest, responses to identified shocks (i.e., causal effects) can be used as moments in structural estimation exercises to help discriminate between models
- Favored structural model then used to answer question of interest
- We use term identified moment as a shorthand for:
- A target statistic (i.e., moment) obtained as a response to an identified structural shock (i.e., causal effect)
- In some cases, identified moments correspond directly to a deep structural parameter
- Example: Estimates of Frisch elasticity of labor supply (see, e.g., Chetty 2012, Chetty et al., 2013)
- Macroeconomists long been comfortable using such estimates to "calibrate" parameters in their models
# In other cases:
- Doesn't correspond directly to a deep structural parameter
- Yet is still a powerful diagnostic tool for important classes of models
- Example: Estimates of marginal propensity to consume (e.g., Johnson-Parker-Souleles 06, Parker et al. 13)
- simple complete markets models can't match these
- Angeles et al. 01: adding self-control problems helps match this
- Kaplan-Violante 14: uninsurable risk/borrowing constraints/illiquid assets helps match this
- If your strategy is match moments between theory and data …
… why pick complicated identified moments? …
… why not pick simple moments (like variances and covariances)? …
… identifying structural shocks is often complicated and controversial …
… why go through the bother? …
… after all, a moment is a moment!
- Unconditional moments typically sensitive to relative variance of all structural shocks in the model
- If you ignore some structural shock, estimation will be biased
- Identified moments focus on parameters having to do with a particular structural shock — particular subset of causal mechanisms
- Identified moments can be invariant to relative variance of other shocks and in some cases parameters in other "blocks" of the model (these can be treated as nuisance parameters)
- Mian-Sufi-Rao: Cities where house prices fell more saw larger drop in consumption and non-tradable employment
- Use Saiz 10 instrument to isolate causal effect from housing to consumption and employment
- Results informative about "consumption block" of macro models
- Rejects simple Sinai-Souleles 05 complete markets model
- More consistent with incomplete markets/life-cycle model (e.g., Berger et al. 17)
- Simpler alternative: Look at raw correlation between housing, consumption, etc
- Sensitive to auxiliary assumptions (e.g., what shocks drive the cycle)
Rotemberg-Woodford 97, Christiano-Eichenbaum-Evans 05:
- Use structural VAR to estimate causal effect of monetary policy on output, inflation, etc.
- Use these identified impulse responses as moments in a structural estimation exercise
- Completely different identifying assumptions from Smets-Wouter 07
- Advantage: Insensitive to many model features (e.g., what shocks drive business cycles)
- Challenge: Must argue for identification of monetary policy responses
Any given set of identified moments typically:
- Consistent with several models (but not all models)
I.e., partially identify model space
Point-identifying correct model unrealistic:
- Several models being consistent with a statistic not grounds for throwing out statistic
- Think in reverse: If statistic provides evidence against an important class of models, statistic is useful.
- Increasingly important in macro:
- Mian-Sufi 14, Nakamura-Steinsson 14, Autor-Dorn-Hanson 13, Baraja-Hurst-Ospina 16, Martin-Phillipon 17, …
Key challenge:
- How to go from regional responses to aggregate responses
Cross-sectional responses don't directly answer key aggregate questions
GE effects absorbed by time fixed effects
Common to do "back-of-envelope" calculation
- Important insight:
- Cross-sectional responses often powerful diagnostic tools to distinguish between models
$\bullet$  Approach:
- Use cross-sectional responses as moments in estimation of structural models
- Use favored structural model to answer aggregate questions
Example: Fiscal stimulus …
- Barro-Redlick 11 use evidence from wars:
Government purchases multiplier of 0.6-0.7
- Most identification from WWI, WWII, Korean War
- Conceptually: Use wars as instrument for spending
- Potential violations of exclusion restriction: patriotism, rationing, etc.
- Blanchard-Perotti 02 use SVAR:
Peak output response of 1.3 after 15 quarters
- Very large standard errors
Highly sensitive to sample period, controls (see, e.g., Gali et al. 07, Ramey 11, 16)
Additional weakness of evidence:
Highly sensitive to monetary reaction
- Monetary reaction to fiscal shock:
Normal time: "leans against the wind"
- At ZLB: Not able to lean against the wind
Aggregate multiplier may be very different at ZLB
(See Ramey-Zubairy 17, Miyamoto et al. 17 for direct evidence)
- Telling apart RBC model and NK model crucial
- Both can yield multipliers around 0.7 in normal times
- But NK model implies much bigger multipliers at ZLB
- Explosion of work post Great Recession:
- Chodorow-Reich et al. 12, Wilson 12, Shoag 15, Nakamura-Steinsson 14, Acconcia et al. 14, Dupor-Mehkari 16, etc.
Survey by Chodorow-Reich 17
Estimates of local fiscal multiplier cluster at 1.5-2.0
- Regress output growth on change in military spending at state level the U.S.
$$
\left(\frac {Y _ {i t} - Y _ {i t - 2}}{Y _ {i t - 2}}\right) = \alpha_ {i} + \gamma_ {t} + \beta \left(\frac {\boldsymbol {G} _ {i t} - \boldsymbol {G} _ {i t - 2}}{Y _ {i t - 2}}\right) + \Gamma X _ {i t} + \epsilon_ {i t}
$$

Basic idea for identification:

- National military buildups exogenous to relative conditions in states receiving disproportionate procurement spending
- Instrument: Fitted value of state spending on national spending allowing different sensitivity for each state
- Year fixed effects (controls for all aggregate shocks)
State fixed effects (state specific trends)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/6f17730ddab17a60bf717e19b4aca7c2a31291a3332820b4541a7132e649b88e.jpg)
Figure: Prime Military Contracts as a Fraction of State GDP
TABLEI The Effects of Military Spending
<table><tr><td rowspan="2"></td><td colspan="2">Output</td><td colspan="2">Output defl. state CPI</td><td colspan="2">Employment</td><td colspan="2">CPI</td><td>Pop.</td></tr><tr><td>State</td><td>Region</td><td>State</td><td>Region</td><td>State</td><td>Region</td><td>State</td><td>Region</td><td>State</td></tr><tr><td>Prime Military Contracts</td><td>1.43(0.36)</td><td>1.85(0.58)</td><td>1.35(0.36)</td><td>1.91(0.65)</td><td>1.28(0.29)</td><td>1.76(0.62)</td><td>0.03(0.18)</td><td>-0.26(0.45)</td><td>-0.10(0.17)</td></tr><tr><td>Num. Obs.</td><td>1989</td><td>390</td><td>1989</td><td>390</td><td>1989</td><td>390</td><td>1785</td><td>350</td><td>1989</td></tr></table>
- Local multiplier not the same as aggregate multiplier:
States don't have to pay for spending (financed federally)
- Spillovers to other states
- Monetary policy doesn't respond in cross-section
- Local multiplier not the same as aggregate multiplier:
States don't have to pay for spending (financed federally)
- Spillovers to other states
- Monetary policy doesn't respond in cross-section
One reaction:
- Local multiplier estimate not so useful
- Don't answer the right question (which is aggregate multiplier)
- Local multiplier not the same as aggregate multiplier:
States don't have to pay for spending (financed federally)
- Spillovers to other states
- Monetary policy doesn't respond in cross-section
One reaction:
- Local multiplier estimate not so useful
- Don't answer the right question (which is aggregate multiplier)
Different reaction:
- Perhaps relative multiplier is a powerful statistic in distinguishing between competing models (e.g., RBC vs. New Keynesian)
- Aggregate multiplier is actually not very strong on that front
TABLE 6—GOVERNMENT SPENDING MULTIPLIER IN SEPARABLE PREFERENCES MODEL
<table><tr><td></td><td>Closed economy aggregate multiplier</td><td>Open economy relative multiplier</td></tr><tr><td colspan="3">Panel A. Sticky prices</td></tr><tr><td>Volcker-Greenspan monetary policy</td><td>0.20</td><td>0.83</td></tr><tr><td>Constant real rate</td><td>1.00</td><td>0.83</td></tr><tr><td>Constant nominal rate</td><td>∞</td><td>0.83</td></tr><tr><td>Constant nominal rate (ρg=0.85)</td><td>1.70</td><td>0.90</td></tr><tr><td colspan="3">Panel B. Flexible prices</td></tr><tr><td>Constant income tax rates</td><td>0.39</td><td>0.43</td></tr><tr><td>Balanced budget</td><td>0.32</td><td>0.43</td></tr></table>
Notes: The table reports the government spending multiplier for output deflated by the regional CPI for the model presented in the text with the separable preferences specification. Panel A presents results for the model with sticky prices, while panel B presents results for the model with flexible prices. The first three rows differ only in the monetary policy being assumed. The fourth row varies the persistence of the government spending shock relative to the baseline parameter values. The fifth and sixth rows differ only in the tax policy being assumed.
TABLE 7-GOVERNMENT SPENDING MULTIPLIER IN GHH MODEL
<table><tr><td></td><td>Closed economy aggregate multiplier</td><td>Open economy relative multiplier</td></tr><tr><td colspan="3">Panel A. Sticky prices</td></tr><tr><td>Volcker-Greenspan monetary policy</td><td>0.12</td><td>1.42</td></tr><tr><td>Constant real rate</td><td>7.00</td><td>1.42</td></tr><tr><td>Constant nominal rate</td><td>∞</td><td>1.42</td></tr><tr><td>Constant nominal rate (ρg=0.50)</td><td>8.73</td><td>2.04</td></tr><tr><td colspan="3">Panel B. Flexible prices</td></tr><tr><td>Constant income tax rates</td><td>0.00</td><td>0.30</td></tr><tr><td>Balanced budget</td><td>-0.18</td><td>0.30</td></tr></table>
Notes: The table reports the government spending multiplier for output deflated by the regional CPI for the model presented in the text with the GHH preferences specification. Panel A presents results for the model with sticky prices, while panel B presents results for the model with flexible prices. The first three rows differ only in the monetary policy being assumed. The fourth row varies the persistence of the government spending shock relative to the baseline parameter values. The fifth and sixth rows differ only in the tax policy being assumed.
- Plain vanilla RBC model inconsistent with regional multiplier
- Plain vanilla NK model inconsistent with regional multiplier
- "Ultra Keynesian" model consistent with regional multiplier
- "Ultra Keynesian" model implies large aggregate effects of fiscal stimulus when monetary policy is constrained
When we ask prominent macroeconomists, most common answers are:1
Friedman and Schwartz 63
- Volcker disinflation
Mussa 86
Three policy actions that were:
1. "Of major magnitude"
2. "Cannot be regarded as necessary or inevitable economic consequences of contemporary changes in money income and prices."
These were:
1. January - June 1920
2. October 1931
3. July 1936 - January 1937
We focus on second two - which were during the Great Depression
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/08f6aaa814b3f82cd5ab641d929ad32297f890edc765b44c43193b53e0d5a135.jpg)
Fed raised rediscount rate from  $1.5\%$  to  $3.5\%$
- Seeking to arrest speculative attack on US dollar
- Industrial production plunged sharply afterwards
- But had also been in free fall before
Clean exogenous monetary shock
- But what is counterfactual?
Fed announced doubling of reserve requirements and Treasury sterilized gold inflows
Strong growth before, sharp plunge afterwards
Confounding factors?
Fiscal policy was tight in 1937
(end or veteran's bonuses and first collection of social security tax)
Great deal of labor unrest in 1937
- More general argument that Fed caused the Depression by failing to act
Eichengreen 92 argues policy was constrained by gold standard
- Roosevelt took US off gold standard in April 1933
(black line in figure above)
- Timing suggests that something Roosevelt did mattered
- But Roosevelt did several things
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/26b9e19fe43df2fcd309c30e3e32dc3b76ce0d67fc5eb2085806fcfe50537bb5.jpg)
Blue: Fed funds rate. Red: 12-month inflation. Green: Unemployment.
- Volatile and rising inflation in the 1970s
- "Stop-go" policy (e.g., Goodfriend 07)
- August 79, Paul Volcker takes over as Chair of Fed:
- Oct 79 - Mar 80: Very tight policy
- Apr 80 - Nov 80: Loose policy
- Nov 80 - Late 82: Very tight policy
Economy swings with monetary policy:
Spring-Summer 80: Output fell dramatically
- Late 80: Output rebounds, inflation still high (stop-go)
1981-1982: Output falls, large recession, inflation down
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/37197543af4fed678b0ee90c57b3f443381f0d40ce6cf4e600af04026c4a06c6.jpg)
Change in U.S. - German real exchange rate.
- Strong evidence for effects of monetary policy on relative prices
- Can be assessed using discontinuity-based identification
- Bretton Woods system of fixed exchange rates breaks down in Feb 73
- This is a pure high-frequency change in monetary policy
Sharp break in volatility of real exchange rate
High-frequency evidence on real interest rates
- Look at narrow time windows around FOMC announcements
Measure real interest rate using yields on TIPS
- Nominal and real rates respond roughly one-for-one several years into term structure (see, e.g., Nakamura-Steinsson 17, Hansen-Stein 15)
Much weaker!
(e.g., Cochrane-Piazzesi 02, Angrist et al. 17)
High-frequency monetary shocks are small
- Output not observed at high frequency
- Too many other shocks occur over several quarters
- Not enough statistical power to estimate effects on output using this method
- Effect on relative prices is key empirical issue
- Relative prices affect output in all models
- Monetary and non-monetary models (e.g., NK versus RBC) differ sharply on whether monetary policy can affect relative prices
# Romer-Romer 89:
Fed records can be used to identify natural experiments
- Specifically: "Episodes in which the Federal Reserve attempted to exert a contractionary influence on the economy in order to reduce inflation."
- Six episodes (Romer-Romer 94 added a seventh)
- After each one, unemployment rises sharply
- Strong evidence for substantial real effects of monetary policy
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/6e01f10394a5f2f3d51d41b01712eb957355fc8fa4d8674b7001b24b1a9726c7.jpg)
Unemployment rate. Vertical lines are Romer-Romer 89 dates.
- Inherent opacity of the process of selecting the shock dates
High cost of replication
- Similar critique applies to many complex econometric methods
Few data points
- May happen to be correlated with other shocks
- Hoover-Perez 94 point out high correlation with oil shocks
- Shocks predictable suggesting endogeneity
- Difficult to establish convincingly due to overfitting concerns
- Cumulative number of predictability regressions run hard to know
Common approach to identification in VAR literature:
- Regress fed funds rate on output, inflation, etc. + a few lags of fed funds rate, output, inflation, etc.
- View residual as exogenous variation in monetary policy
- Often described as involving "minimal identifying assumptions"
In our view, these are strong identifying assumptions
Fed bases policy on huge amount of data
- Banking sector, stock market, foreign developments, commodity prices, terrorist attacks, temporary investment tax credit, Y2K, etc., etc.
- Too many variables to include in regression!
- Any information used by Fed and not sufficiently controlled for by included controls will result in endogenous variation being viewed as exogenous
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/25080a8e53b50aa4969e9432bffd60c7c3aeddb15232dcc951b5d31590ee715c.jpg)
Dark line: Fed funds target. Light line/dots: 1-month eurodollar rate. * indicates unscheduled meeting.
Sample period: Dec 2000 - Feb 2002.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/9aea346851c59f79b3f4b281d080b760552c2799c3a94be50d53853d146c2e5f.jpg)
- According to structural VARs: Yes!?!
Nothing had yet happened to controls in VAR
- Drop in rates cannot be explained, therefore an exogenous shock
In reality: Obviously not!
Fed dropped rates in Sept 2001 in response to terrorist attack, which affected Fed's assessment of future output growth and inflation
- Any unusual (from perspective of VAR) weakness in output growth after 9/11, perversely, attributed to exogenous easing of monetary policy
Highly problematic
- "The" identifying assumption in a monetary VAR often described as:
Fed funds rate does not affect output, inflation, etc. contemporaneously
Seems like magic:
You make one relatively innocuous assumption
- Violá: You can estimate dynamic causal effects of monetary policy
Is there perhaps something more to it?
- Timing assumption not only identifying assumption being made
- Timing assumption rules out reverse causality
- Contemporaneous correlation assumed to go from output to interest rates
- Not other way around
- Bigger concern: Omitted variables bias
- Monetary policy and output may be reacting to some other shock
- If not sufficiently proxied by included controls, this shock will cause omitted variables bias (e.g., 9/11)
- Hopeless to control individually for everything in Feds information set
- Alternative approach:
Control for Fed's own forecasts (Greenbook forecasts)
Key idea:
- Endogeneity of monetary policy comes from one thing only: What Fed thinks will happen to the economy
- Controlling for this is sufficient
Fed does not roll dice.
- Every movement in intended fed funds rate is a response to something
- Some are responses to something that directly affects outcome variable of interest
These are endogenous
- Others are responses to other things:
Time variation in policy makers' preferences
Time variation in policy makers' beliefs about how economy works
Political influences on the Fed
- Pursuit of other objectives (e.g., exchange rate stability)
- Dynamic causal inference involves two steps:
1. Identifying exogenous variation in policy (the shocks)
2. Estimating an impulse response given the shocks
One way to estimate an impulse response:
- Regress variable of interest (e.g.,  $\Delta^j y_{t+j}$ ) directly on shock (perhaps including some pre-treatment controls)
- This imposes minimal structure (other than linearity)
- Specification advocated by Jorda 05
VARs construct impulse response by iterating forward entire estimated VAR system
- Embeds whole new set of strong identifying assumptions
- Not only interest rate equation that must be correctly specified
- Entire system must be correct representation of dynamics of all variables in the system
I.e., whole model must be correctly specified (including number of shocks)
- Solution to any linear rational expectations model is a VAR
- This is usual defense regarding VAR impulse response construction
- However, to estimate true VAR, all state variables must be observable
- Suppose some state variable is not observed
- Can iteratively solve out for it
- But this typically transforms  $\mathrm{VAR}(p)$  into  $\mathrm{VARMA}(\infty, \infty)$
Estimation of VARs therefore relies on assumption that true VARMA  $(\infty ,\infty)$  in observed variables can be approximated by VAR(p) (See footnote 36 of the paper for an example you can work through.)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/abfacafbe019907c03019955cf3221aa9650496b5d326debc4ba5761212f0d23.jpg)
VAR Shocks
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/b96d8f96ce2c7f1551f1ea080bf3a9ae8c113c2c62fff4670af269cbce9a7c01.jpg)
Romer-Romer Shocks
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/6ced59109825e25f33f257a084fc77dd0c260daaf03c84ddd1fdde5e711a5317.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/ce6ea2876a2eef2b791b49bb42c8da6b50233f20b6fae98e1caccd822d71f26b.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/61da96cf6d9bbb4d0b7c00ab6adeb009c72ef212bbf5a9609dbde0a285a7cb23.jpg)
Black line: Industrial production. Blue line: Real interest rate
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/6bbd3bed82d7983f93a157f2d4eb321e282865866c182c1b4dc4491bd5dc7ecb.jpg)
Gertler-Karadi 15 use external instruments in VAR to estimate effects of monetary policy
- External instrument: Surprise movement in 3-month ahead fed funds future in 30-minute window around FOMC meetings
Method:
- Run monthly VAR
- Regress reduced form residuals on external instrument to get contemporaneous responses
- Iterate forward estimate VAR system to get dynamic responses
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/822885478f669b897ccb3da5d40cbf9fa83de86b16a722c7a724a7675c2f874f.jpg)
External Instrument
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/c3eabdf6fa6b650dd78ef7f732b2a2ca3f06cdf4357f16c28f03ff57821f41a1.jpg)
Cholesky
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/bbb41ecae995156f8b36c18c29f9f8de191934257408b558044db69f113b746a.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/d02a8a52c831fe80c41ecd50839befd4eac9e41a427ba89ebce69fda9ea5ea94.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/5c4449b99f4ffdfb37fad1f1c618bd684e9767549b9efbe9de9e6472910069ab.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/ecfab2ef194defa245b31e3a1d0a25c0f5e36aeeeeea6cb5b4c68b970f8a8133.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/b29fa47e0df8b05515e14d295ad9cfb2f510db5bcdcfa257998a2dcc2051fe7b.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/e97f142fd1dcbb59dd8dafd82d9a86e0a206fe396edd3fdde08a369f8e202161.jpg)
Possible to include fast-moving financial variables
- With standard Cholesky assumptions one must make a choice:
Financial variables don't affect fed funds rate contemporaneously
Fed funds rate doesn't affects financial variables contemporaneously
- Neither assumption palatable
- External instrument gets away from this dichotomy
- Do not relax assumptions embedded in construction of VAR impulse responses
- Still must assume that VAR system is a correct representation of dynamics off all included variables
- Since contemporaneous response on output are small, dynamic responses rely heavily on these assumptions
Similar in certain ways:
- Deal with highly complex general equilibrium systems
- Trouble making long-term predictions
- Meteorology:
- Olden days: People prayed to the rain gods
Today: People watch the weather channel
Macroeconomics:
- Today: Policy discussions highly ideological since evidence is not convincing
- Future (hopefully): Solid empirical knowledge will lead policy discussions to be based on evidence rather than faith
# EVIDENCE FOR MONETARY NON-NEUTRALITY
#  and Jon Steinsson
UC Berkeley
March 2019
# EFFECTS OF MONETARY POLICY?
Central question in macroeconomics:
1. Monetary policy is a central macroeconomic policy tool
2. Answer helps distinguish between competing views of how the world works more generally (Why?)
Central question in macroeconomics:
1. Monetary policy is a central macroeconomic policy tool
2. Answer helps distinguish between competing views of how the world works more generally (Why?)
- Consensus within mainstream U.S. media that effects are large
No consensus in many other countries
- Much controversy in academia (Often quite heated and antagonistic)
Central question in macroeconomics:
1. Monetary policy is a central macroeconomic policy tool
2. Answer helps distinguish between competing views of how the world works more generally (Why?)
- Consensus within mainstream U.S. media that effects are large
No consensus in many other countries
- Much controversy in academia
(Often quite heated and antagonistic)
Scientific question!!
- Conclusive empirical evidence should be able to settle this issue (for those willing to base opinion on evidence as opposed to ideology)
# WHY DON'T WE ALREADY KNOW?
Given central importance, how can we not already know?
Given central importance, how can we not already know?
Changes in monetary policy occur for a reason!!
- Purpose of central banks to conduct systematic policy that reacts to developments in economy
Fed employs hundreds of PhD economists to pore over data
Leaves little room for exogenous variation in policy needed to identify effects of policy
Fed lowered interest rates aggressively in fall of 2008
- Done in response to worsening financial crisis
Fed lowered interest rates aggressively in fall of 2008
- Done in response to worsening financial crisis
- Consider simple OLS regression:
$$
\Delta y _ {t} = \alpha + \beta \Delta i _ {t} + \epsilon_ {t}
$$
Fed lowered interest rates aggressively in fall of 2008
- Done in response to worsening financial crisis
- Consider simple OLS regression:
$$
\Delta y _ {t} = \alpha + \beta \Delta i _ {t} + \epsilon_ {t}
$$
This regression will not identify effects of policy
- Financial crisis – event that induced Fed to act – is a confounding factor (in error term and correlated with  $\Delta i_{t}$ )
When we ask prominent macroeconomists, most common answers are:1
Friedman and Schwartz 63
- Volcker disinflation
Mussa 86
Any mention of VARs and evident from other modern econometric methods is conspicuous by its absence
Of course, a significant fraction say something along the lines of "I know it in my bones that monetary policy has no effect on output."
Evidence from Large Shocks
- Discontinuity-Based Evidence / High-Frequency Evidence
Evidence from the Narrative Record
- Controlling for Confounding Factors
Structural Vector Autoregressions
Romer and Romer (2004)
# Evidence from Large Shocks
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/faf16be3404ce74043f819b2f61245125d514848550f8995eae7ddbf9b4b6624.jpg)
Source: Nakamura and Steinsson (2018)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/208a43a973ab66d8f26cecb050ecd244ef69007f1e3c104348142e18dc09bb99.jpg)
Blue: Fed funds rate (left). Red: 12-month inflation (left). Green: Unemployment (right).
# Discontinuity-Based Evidence
- Strong evidence for effects of monetary policy on relative prices
- Important reason: Can be assessed using discontinuity-based identification
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/7c688475f3b44d21c459671e67a917f282d3345c017e45b7263129584fcdbed9.jpg)
Change in U.S. - German real exchange rate. Source: Nakamura and Steinsson (2018)
- Bretton Woods system of fixed exchange rates breaks down in Feb 73
- This is a pure high-frequency change in monetary policy
- Sharp break in volatility of real exchange rate
- Bretton Woods system of fixed exchange rates breaks down in Feb 73
- This is a pure high-frequency change in monetary policy
- Sharp break in volatility of real exchange rate
- Identifying assumption:
Nothing else changed discontinuously in Feb 73
- Imbalances had been building up gradually
- More inflationary policy in US than in Germany, Japan, etc.
US running substantial current account deficit
- Intense negotiations for months about future of system
- Hard to see anything else that discontinuously changes in Feb 73
High-frequency evidence on real interest rates:
- Look at narrow time windows around FOMC announcements
Measure real interest rate using yields on TIPS
- Identifying assumption:
- Little else happens during narrow window (30-minutes)
Changes must be due to what Fed did and announced
- Nominal and real rates respond roughly one-for-one several years into term structure (see, e.g., Hansen-Stein 15, Nakamura-Steinsson 18)
- We will return to this on Thursday
# EVIDENCE ON RELATIVE PRICES
# Advantages:
- Effect on relative prices can be estimated using discontinuity-based approaches
# Advantages:
- Effect on relative prices can be estimated using discontinuity-based approaches
# Disadvantages:
No direct link to output
- Effects depend on how we interpret price changes (information, risk premia)
- Effect on output depends on various other parameters in the "real" model (e.g., IES)
# - Much weaker!
(e.g., Cochrane-Piazzesi 02, Angrist et al. 17)
- Output not observed at high frequency
- Monetary policy may affect output with "long and variable lags"
- Too many other shocks occur over several quarters
- Not enough statistical power to estimate effects on output using this method
Much weaker!
(e.g., Cochrane-Piazzesi 02, Angrist et al. 17)
- Output not observed at high frequency
- Monetary policy may affect output with "long and variable lags"
- Too many other shocks occur over several quarters
- Not enough statistical power to estimate effects on output using this method
- But, effect on relative prices is – arguably – the key empirical issue
- Relative prices affect output in all models
- Monetary and non-monetary models (e.g., NK versus RBC) differ sharply on whether monetary policy can affect relative prices
# Evidence from the Narrative Record
# Romer-Romer 89:
Fed records can be used to identify natural experiments
- Specifically: "Episodes in which the Federal Reserve attempted to exert a contractionary influence on the economy in order to reduce inflation."
- Six episodes (Romer-Romer 94 added a seventh)
After each one, unemployment rises sharply
Strong evidence for substantial real effects of monetary policy
(Paper also contains an interesting critical assessment of Friedman-Szhwartz 63)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/cf27df3fa4640569fdacb3e84025089055b5c54e9d456c35d3c9fbeac1f76b79.jpg)
Unemployment rate. Vertical lines are Romer-Romer 89 dates. Source: Nakamura and Steinsson (2018)
- Process for selecting the shock dates is opaque
High cost of replication
- Similar critique applies to many complex econometric methods
Few data points
- May happen to be correlated with other shocks
- Hoover-Perez 94 point out high correlation with oil shocks
- Shocks predictable suggesting endogeneity
- Difficult to establish convincingly due to overfitting concerns
- Cumulative number of predictability regressions run hard to know
Table A.1: Romer-Romer Dates and Oil-Shock Dates
<table><tr><td>Romer and Romer Dates</td><td>Oil Shock Dates</td></tr><tr><td>October 1947</td><td>December 1947</td></tr><tr><td></td><td>June 1953</td></tr><tr><td>September 1955</td><td>June 1956</td></tr><tr><td></td><td>February 1957</td></tr><tr><td>December 1968</td><td>March 1969</td></tr><tr><td></td><td>December 1970</td></tr><tr><td>April 1974</td><td>January 1974</td></tr><tr><td>August 1978</td><td>March 1978</td></tr><tr><td>October 1979</td><td>September 1979</td></tr><tr><td></td><td>February 1981</td></tr><tr><td></td><td>January 1987</td></tr><tr><td>December 1988</td><td>December 1988</td></tr><tr><td></td><td>August 1990</td></tr></table>
Notes: Romer-Romer dates are dates are identified by Romer and Romer (1989) and Romer and Romer (1994). Oil-shock dates up to 1981 are taken from Hoover and Perez (1994), who refine the narrative identification of these shocks by Hamilton (1983). The last three oil shock dates are from Romer and Romer (1994).
Source: Nakamura and Steinsson (2018)
# Controlling for Confounding Factors
Large class of linear rational expectations models can be written as follows: (state space representation)
$$
A Y _ {t + 1} = B Y _ {t} + C \epsilon_ {t + 1} + D \eta_ {t + 1}
$$
# where
- $Y_{t}$  is an  $n \times 1$  vector
$E[\epsilon_{t + 1}|I_t] = 0$ $E[\eta_{t + 1}|I_t] = 0$
$\bullet$ $\epsilon_{t + 1}$  are exogenous shocks  $(m_1\times 1$  vector)
- $\eta_{t+1}$  are prediction errors ( $m_2 \times 1$  vector)
- Only some elements of  $Y_{t+1}$  have initial conditions
$$
\pi_ {t} = E _ {t} \pi_ {t + 1} + \kappa \left(y _ {t} - y _ {t} ^ {n}\right)
$$
$$ y _ {t} = E _ {t} y _ {t + 1} - \sigma \left(i _ {t} - E _ {t} \pi_ {t + 1} - r _ {t} ^ {n}\right)
$$
$$
\dot {i} _ {t} = \phi_ {\pi} \pi_ {t} + \phi_ {y} y _ {t} + v _ {t}
$$
$$
\pi_ {t} = E _ {t} \pi_ {t + 1} + \kappa \left(y _ {t} - y _ {t} ^ {n}\right)
$$
$$ y _ {t} = E _ {t} y _ {t + 1} - \sigma \left(i _ {t} - E _ {t} \pi_ {t + 1} - r _ {t} ^ {n}\right)
$$
$$
\dot {i} _ {t} = \phi_ {\pi} \pi_ {t} + \phi_ {y} y _ {t} + v _ {t}
$$
Some manipulation yields:
$$
\pi_ {t + 1} = \pi_ {t} - \kappa y _ {t} + \kappa y _ {t} ^ {n} + \eta_ {\pi , t + 1}
$$
$$ y _ {t + 1} + \sigma \pi_ {t + 1} = y _ {t} + \sigma i _ {t} - \sigma r _ {t} ^ {\eta} + \eta_ {y, t + 1} + \sigma \eta_ {\pi , t + 1}
$$
$$ i _ {t + 1} - \phi_ {\pi} \pi_ {t + 1} - \phi_ {y} y _ {t + 1} = \nu_ {t + 1}
$$ where  $\eta_{\pi ,t + 1} = \pi_{t + 1} - E_t\pi_{t + 1}$  and  $\eta_{y,t + 1} = y_{t + 1} - E_ty_{t + 1}$
$$
\left[ \begin{array}{c c c c c c} 1 & 0 & 0 & 0 & 0 & 0 \\ \sigma & 1 & 0 & 0 & 0 & 0 \\ - \phi_ {\pi} & - \phi_ {y} & 1 & 0 & 0 & - 1 \\ 0 & 0 & 0 & 1 & 0 & 0 \\ 0 & 0 & 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 0 & 0 & 1 \end{array} \right] \left[ \begin{array}{c} \pi_ {t + 1} \\ y _ {t + 1} \\ i _ {t + 1} \\ y _ {t + 1} ^ {n} \\ r _ {t + 1} ^ {n} \\ \nu_ {t + 1} \end{array} \right] = \left[ \begin{array}{c c c c c c} 1 & - \kappa & 0 & \kappa & 0 & 0 \\ 0 & 1 & \sigma & 0 & - \sigma & 0 \\ 0 & 0 & 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & \rho_ {\pi} & 0 & 0 \\ 0 & 0 & 0 & 0 & \rho_ {y} & 0 \\ 0 & 0 & 0 & 0 & 0 & \rho_ {i} \end{array} \right] \left[ \begin{array}{c} \pi_ {t} \\ y _ {t} \\ i _ {t} \\ y _ {t} ^ {n} \\ r _ {t} ^ {n} \\ \nu_ {t} \end{array} \right]
$$
$$
+ \left[ \begin{array}{l l l} 0 & 0 & 0 \\ 0 & 0 & 0 \\ 0 & 0 & 0 \\ 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{array} \right] \left[ \begin{array}{l} \epsilon_ {1, t + 1} \\ \epsilon_ {2, t + 1} \\ \epsilon_ {3, t + 1} \end{array} \right] + \left[ \begin{array}{l l} 1 & 0 \\ \sigma & 1 \\ 0 & 0 \\ 0 & 0 \\ 0 & 0 \end{array} \right] \left[ \begin{array}{l} \eta_ {\pi , t + 1} \\ \eta_ {\gamma , t + 1} \end{array} \right]
$$
- Have assumed that  $y_{t}^{n}, r_{t}^{n}$ , and  $\nu_{t}$  are AR(1)
- System comes with only three initial conditions (for  $y_{t}^{n}, r_{t}^{n}$ , and  $\nu_{t}$ )
State space representation:
$$
A Y _ {t + 1} = B Y _ {t} + C \epsilon_ {t + 1} + D \eta_ {t + 1}
$$
Solution:
$$
Y _ {t} = G Y _ {t - 1} + R \epsilon_ {t}
$$
How to solve?
- Blanchard-Kahn 80. See, e.g., Sims 00 or lecture notes by Den Haan
- Notice: Solution of a linear RE model is a VAR
- Suppose we are interested in effect of  $\epsilon_{3,0}$  on  $y_{t}$  for  $t \geq 0$  (Recall that  $\epsilon_{3,0}$  is the innovation to the monetary shock)
- Iterate forward the VAR starting at time 0:
$$
Y _ {t} = G ^ {t} Y _ {- 1} + G ^ {t - 1} R \epsilon_ {0}
$$
- Suppose for simplicity that we start off in a steady state  $Y_{-1} = 0$ :
$$
Y _ {t} = G ^ {t - 1} R \epsilon_ {0}
$$
- If we can estimate  $G$  and  $R$ , then we can calculate dynamic causal effect of all structural shocks
$$
Y _ {t} = G Y _ {t - 1} + R \epsilon_ {t}
$$
# 1. Some variables in true VAR may be unobservable
In NK model example,  $(y_{t}^{n},r_{t}^{n}$  , and  $\nu_{t})$  are unobservable
How about solving out for these variables?
- This typically transforms a VAR(p) into a VARMA  $(\infty, \infty)$  in the remaining variables
- Implicit assumption in VAR estimation that true VARMA  $(\infty, \infty)$  in observable variables can be approximated by a VAR(p) (Problem Set 3 will have you think more about this)
$$
Y _ {t} = G Y _ {t - 1} + R \epsilon_ {t}
$$
2. How do we get from reduced form errors to structural errors?
- Suppose you estimate a VAR (i.e., estimate  $n$  OLS regressions)
- You will get:
$$
Y _ {t} = G Y _ {t - 1} + u _ {t}
$$ where  $u_{t}$  are reduced form errors with variance-covariance matrix  $\Sigma$
Unfortunately,  $\Sigma$  not enough to identify  $R$
- Structural VARs make additional assumptions to be able to identify  $R$
- Two ways of thinking about it: Identification of  $R$  or identification of structural shocks  $\epsilon_{t}$
Example: Short-run restrictions (see Stock-Watson 01)
# Objective:
- Causal effect of change in monetary policy at time  $t$  on output / prices / etc. at time  $t + j$
# Two steps:
1. Identify shocks (exogenous variation in (say) monetary policy)
2. Estimate effects of shocks on output / prices / etc.
- Important to consider these two steps separately
Common approach:
- Regress fed funds rate on output, inflation, etc. + a few lags of fed funds rate, output, inflation, etc.
$$ i _ {t} = \alpha + \phi_ {y} y _ {t} + \phi_ {\pi} \pi_ {t} + [ \text {f o u r l a g s o f} i _ {t}, y _ {t}, \pi_ {t} ] + \epsilon_ {t}
$$
- View residual as exogenous variation in monetary policy
- Equivalent to performing a Cholesky decomposition on reduced form errors from VAR, ordering fed funds rate last (See Stock-Watson 01)
$$ i _ {t} = \alpha + \phi_ {y} y _ {t} + \phi_ {\pi} \pi_ {t} + [ \text {f o u r l a g s o f} i _ {t}, y _ {t}, \pi_ {t} ] + \epsilon_ {t}
$$
What can go wrong?
$$ i _ {t} = \alpha + \phi_ {y} y _ {t} + \phi_ {\pi} \pi_ {t} + [ \text {f o u r l a g s o f} i _ {t}, y _ {t}, \pi_ {t} ] + \epsilon_ {t}
$$
What can go wrong?
1. Reverse causation:
- Assumption begin made: Correlation between  $i_t$  and  $(\pi_t, y_t)$  is due to  $(\pi_t, y_t)$  influencing  $i_t$  but not the other way around
- If  $i_t$  influences  $(\pi_t, y_t)$  (contemporaneously), we have a "simultaneous equation problem"  $(\epsilon_t$  correlated with  $(\pi_t, y_t))$
- Assumption being made:  $i_t$  is "fast-moving" variable, while  $\pi_t$  and  $y_t$  are slow moving. So  $i_t$  doesn't affect  $\pi_t$  and  $y_t$  contemporaneously
$$ i _ {t} = \alpha + \phi_ {y} y _ {t} + \phi_ {\pi} \pi_ {t} + [ \text {f o u r l a g s o f} i _ {t}, y _ {t}, \pi_ {t} ] + \epsilon_ {t}
$$
What can go wrong?
1. Reverse causation:
- Assumption begin made: Correlation between  $i_t$  and  $(\pi_t, y_t)$  is due to  $(\pi_t, y_t)$  influencing  $i_t$  but not the other way around
- If  $i_t$  influences  $(\pi_t, y_t)$  (contemporaneously), we have a "simultaneous equation problem"  $(\epsilon_t$  correlated with  $(\pi_t, y_t))$
- Assumption being made:  $i_t$  is "fast-moving" variable, while  $\pi_t$  and  $y_t$  are slow moving. So  $i_t$  doesn't affect  $\pi_t$  and  $y_t$  contemporaneously
Often, the discussion of identification stops here and seems surprisingly innocuous. Where did the rabbit go into the hat?
$$ i _ {t} = \alpha + \phi_ {y} y _ {t} + \phi_ {\pi} \pi_ {t} + [ \text {f o u r l a g s o f} i _ {t}, y _ {t}, \pi_ {t}, \text {e t c .} ] + \epsilon_ {t}
$$
What can go wrong?
2. Omitted variables bias:
- There may be other variables that affect  $i_t$  and also  $y_{t+j}$ .
Fed bases policy on huge amount of data
Banking sector, stock market, foreign developments, commodity prices, terrorist attacks, temporary investment tax credit, Y2K, etc., etc.
- Too many variables to include in regression!
- Any information used by Fed and not sufficiently controlled for by included controls will result in endogenous variation in policy being viewed as exogenous shock to policy
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/9e52ef6cabbaad8631ba7733069bfeddde004ee29e214d967fcd6d99053b4849.jpg)
Dark line: Fed funds target. Light line/dots: 1-month eurodollar rate. * indicates unscheduled meeting.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/eb290af50a34dcc036f71926bbfd6e4c8b5337059b2c839d2509779eeb45416c.jpg)
Sample period: Dec 2000 - Feb 2002. Source: Nakamura and Steinsson (2018)
- According to structural VARs: Yes!?!
Nothing had yet happened to controls in VAR
- Drop in rates cannot be explained, therefore an exogenous shock
In reality: Obviously not!
Fed dropped rates in Sept 2001 in response to terrorist attack, which affected Fed's assessment of future output growth and inflation
- Any unusual (from perspective of VAR) weakness in output growth after 9/11, perversely, attributed to exogenous easing of monetary policy
Highly problematic
9/11 an example of a news shock
- Almost nothing happened to contemporaneous output
- But event contains news about future output
9/11 an example of a news shock
- Almost nothing happened to contemporaneous output
- But event contains news about future output
- Why not just include fast moving variables like stock/bond prices in interest rate equation to capture news?
9/11 an example of a news shock
- Almost nothing happened to contemporaneous output
- But event contains news about future output
- Why not just include fast moving variables like stock/bond prices in interest rate equation to capture news?
- Only makes sense if these variables not affected by contemporary monetary policy
- But that is clearly not the case
Post-treatment controls (endogenous or "bad" controls)
- "The" identifying assumption in a monetary VAR often described as:
Fed funds rate does not affect output, inflation, etc. contemporaneously
Seems like magic:
- You make one relatively innocuous assumption
- Violá: You can estimate dynamic causal effects of monetary policy
- Timing assumption not only identifying assumption being made
- Timing assumption rules out reverse causality
- Contemporaneous correlation assumed to go from output to interest rates
- Not other way around
- Bigger concern: Omitted variables bias
- Monetary policy and output may be reacting to some other shock
- If not sufficiently proxied by included controls, this shock will cause omitted variables bias (e.g., 9/11)
- Hopeless to control individually for everything in Feds information set
- Alternative approach:
Control for Fed's own forecasts (Greenbook forecasts)
Key idea:
- Endogeneity of monetary policy comes from one thing only: What Fed thinks will happen to the economy
- Controlling for this is sufficient
Romer-Romer's shock series addresses two problems:
1. Fed has imperfect control over fed funds rate
- More of a problem before Greenspan era
- Movements in FFR relative to FOMC target are endogenous
(FFR rises relative to target in response to good news about future output)
- Romer-Romer construct FFR target series
Romer-Romer's shock series addresses two problems:
1. Fed has imperfect control over fed funds rate
- More of a problem before Greenspan era
- Movements in FFR relative to FOMC target are endogenous (FFR rises relative to target in response to good news about future output)
- Romer-Romer construct FFR target series
2. Movements in FOMC's FFR target are endogenous
- "Anticipatory effects" important (e.g., Fed lowers rates in anticipation of economic weakness)
- Use of Fed's Greenbook forecasts control for such endogeneity (Greenbook typically prepared six days before meeting)
Romer-Romer's specification:
$$
\begin{array}{l} {\Delta f f _ {m}} = {\alpha + \beta f f b _ {m} + \sum_ {i = - 1} ^ {2} \gamma_ {i} \Delta \tilde {y} _ {m i} + \sum_ {i = - 1} ^ {2} \lambda_ {i} (\Delta \tilde {y} _ {m i} - \Delta \tilde {y} _ {m - 1, i})} \\ + \sum_ {i = - 1} ^ {2} \phi_ {i} \tilde {\pi} _ {m i} + \sum_ {i = - 1} ^ {2} \theta_ {i} \left(\tilde {\pi} _ {m i} - \tilde {\pi} _ {m - 1, i}\right) + \rho \tilde {u} _ {m 0} + \epsilon_ {m} \\ \end{array}
$$
$\bullet$ $\Delta f_{m}$  change in intended FFR at meeting
- $ffb_{m}$  level before meeting
- $\tilde{y}$ ,  $\tilde{\pi}$ ,  $\tilde{u}$  forecasts of output, inflation, and unemployment
- Both forecasts and change in forecasts since last meeting included
- Residual  $\epsilon_{m}$  considered exogenous monetary policy shock
- Does this make sense?
- Residual  $\epsilon_{m}$  considered exogenous monetary policy shock
- Does this make sense?
Romer-Romer 04:
It is important to note that the goal of this regression is not to estimate the Federal Reserve's reaction function as well as possible. What we are trying to do is to purge the intended funds rate series of movements taken in response to useful information about future economic developments. Once we have accomplished this, it is desirable to leave in as much of the remaining variation as possible.
Proposition 1: To measure the effects of monetary policy on output it is enough that the shock is orthogonal to output forecasts. The shock does not have to be orthogonal to price, exchange rate or other forecasts. It may be predictable from time  $t$  information; it does not have to be a shock to agent's or the Fed's entire information set.
(no proof provided)
All the shock has to do is remove the reverse causality from output forecasts.
Preferred specification for effects on output:
$$
\Delta f f _ {m} = \alpha + \sum_ {i = - 1} ^ {2} \gamma_ {i} \Delta \tilde {y} _ {m i} + \beta f f _ {m - 1} + \delta \Delta f f _ {m - 1} + \epsilon_ {m} ^ {\gamma}
$$
Preferred specification for effects on inflation:
$$
\Delta \pmb {f} \pmb {f} _ {m} = \alpha + \sum_ {i = - 1} ^ {2} \gamma_ {i} \Delta \tilde {\pi} _ {m i} + \beta \pmb {f} \pmb {f} _ {m - 1} + \delta \Delta \pmb {f} \pmb {f} _ {m - 1} + \epsilon_ {m} ^ {\pi}
$$
Preferred specification for effects on output:
$$
\Delta f f _ {m} = \alpha + \sum_ {i = - 1} ^ {2} \gamma_ {i} \Delta \tilde {y} _ {m i} + \beta f f _ {m - 1} + \delta \Delta f f _ {m - 1} + \epsilon_ {m} ^ {\gamma}
$$
Preferred specification for effects on inflation:
$$
\Delta \pmb {f} \pmb {f} _ {m} = \alpha + \sum_ {i = - 1} ^ {2} \gamma_ {i} \Delta \tilde {\pi} _ {m i} + \beta \pmb {f} \pmb {f} _ {m - 1} + \delta \Delta \pmb {f} \pmb {f} _ {m - 1} + \epsilon_ {m} ^ {\pi}
$$
- Lagged FFR only included to make shocks serially uncorrelated, which simplifies interpretation
Preferred specification for effects on output:
$$
\Delta f f _ {m} = \alpha + \sum_ {i = - 1} ^ {2} \gamma_ {i} \Delta \tilde {y} _ {m i} + \beta f f _ {m - 1} + \delta \Delta f f _ {m - 1} + \epsilon_ {m} ^ {\gamma}
$$
Preferred specification for effects on inflation:
$$
\Delta \pmb {f} \pmb {f} _ {m} = \alpha + \sum_ {i = - 1} ^ {2} \gamma_ {i} \Delta \tilde {\pi} _ {m i} + \beta \pmb {f} \pmb {f} _ {m - 1} + \delta \Delta \pmb {f} \pmb {f} _ {m - 1} + \epsilon_ {m} ^ {\pi}
$$
- Lagged FFR only included to make shocks serially uncorrelated, which simplifies interpretation
No need to include other controls
In fact, better not to, since this keeps more shocks
# ROMER-ROMER 04 / COCHRANE 04:
# WHAT IS A MONETARY SHOCK?
Fed does not roll dice
- Every movement in intended fed funds rate is a response to something
- Some are responses to something that directly affects outcome variable of interest
These are endogenous
- Reactions to anything else (exchange rate, political pressure, etc) conditional on output forecast count as a shock
1. Variation in Fed operating procedure important
E.g., emphasis on monetary quantities in 1979-1982
2. Variation in policy makers' beliefs about workings of economy
- In early 1970's Fed believed inflation highly unresponsive to slack (Romer-Romer 02)
3. Variation in policy maker preferences/goals
E.g., time-varying distaste for inflation
4. Political influences
E.g., Arthur Burns set loose policy in 1977 to get re-appointed
5. Pursuit of other objectives
- At some times, Fed concerned about exchange rate a. New Measure of Monetary Policy Shocks
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/a9ba2f7e54f554ae5bd4e674a8860ff60486097d264505baf1d01c24e05efe61.jpg) b. Change in the Actual Federal Funds Rate
Source: Romer and Romer (2004).
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/82347b90bc45930b56cb453aedc06d10b54acd3c083026c04c1e5dc2c15a3d37.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/ac6a33647663391dd8f9bf3768b45def6675d5812dce14971434d42098e74d2b.jpg)
FIGURE 1. MEASURES OF MONETARY POLICY
Source:Romer and Romer (2004).
# PREDICTABLE MONETARY SHOCKS?
Cochrane (2004) argues monetary shocks can be predictable
- Does this make sense?
Cochrane (2004) argues monetary shocks can be predictable
- Does this make sense?
- It does not in and of itself cause endogeneity concerns
- It does complicate interpretation
- Shocks can have effects both upon announcement and when they are implemented
- Upon announcement: Yield curve will move
- Upon implementation: Short rates themselves move
- Dynamic causal inference involves two steps:
1. Identifying exogenous variation in policy (the shocks)
2. Estimating an impulse response given the shocks
- Three methods to construct impulse response:
1. Directly regress variable of interest on shock (Jorda 05)
2. Iterate forward VAR
3. Iterate forward univariate AR specification (Romer-Romer 04)
- Simple approach: Regress variable of interest directly on shock: (perhaps including some pre-treatment controls)
$$ y _ {t + j} - y _ {t - 1} = \alpha + \beta \nu_ {t} + \Gamma X _ {t - 1} + \epsilon_ {t}
$$
Variable of interest:  $y_{t + j} - y_{t - 1}$
- Monetary shock:  $\nu_{t}$
Pre-treatment controls:  $X_{t - 1}$
- Separate regression for each horizon  $j$
- This imposes minimal structure (other than linearity)
- Specification advocated by Jorda 05 (often called "local projection")
- Construct impulse response by iterating forward entire estimated VAR system
- Embeds whole new set of strong identifying assumptions
- Not only interest rate equation that must be correctly specified
- Entire system must be correct representation of dynamics of all variables in the system
I.e., whole model must be correctly specified (including number of shocks, number of lags, relevant variable observable)
- Recall earlier discussion of true  $\mathrm{VARMA}(\infty, \infty)$  in observed variables being approximated by VAR(p)
See discussion in Plagborg-Moller and Wolf 19
$$
\Delta y _ {t} = a _ {0} + \sum_ {k = 1} ^ {1 1} a _ {k} D _ {k t} + \sum_ {i = 1} ^ {2 4} b _ {i} \Delta y _ {t - i} + \sum_ {j = 1} ^ {3 6} c _ {j} S _ {t - j} + e _ {t}
$$
- $\Delta y_{t}$  monthly change in industrial production
- $D_{kt}$  month dummies (they use seasonally unadjusted data)
$S_{t}$  monetary shocks
- Assume money doesn't affect output contemporaneously (No contemporaneous monetary shock)
- Impulse response:
Effect on  $y_{t + 1}$  is  $c_{1}$
- Effect on  $y_{t+2}$  is  $c_1 + (c_2 + b_1 c_1)$
$$
\Delta y _ {t} = a _ {0} + \sum_ {k = 1} ^ {1 1} a _ {k} D _ {k t} + \sum_ {i = 1} ^ {2 4} b _ {i} \Delta y _ {t - i} + \sum_ {j = 1} ^ {3 6} c _ {j} S _ {t - j} + e _ {t}
$$
- Inclusion of lagged dependent variables may induce bias
$b_{i}$ s are estimated off of dynamics of output to all shocks
- If dynamics after monetary shocks are different, inclusion of lagged output terms will induce bias
$$
\Delta y _ {t} = a _ {0} + \sum_ {k = 1} ^ {1 1} a _ {k} D _ {k t} + \sum_ {i = 1} ^ {2 4} b _ {i} \Delta y _ {t - i} + \sum_ {j = 1} ^ {3 6} c _ {j} S _ {t - j} + e _ {t}
$$
- Inclusion of lagged dependent variables may induce bias
$b_{i}$ s are estimated off of dynamics of output to all shocks
- If dynamics after monetary shocks are different, inclusion of lagged output terms will induce bias
Extreme example:
- Two shocks: money and weather
- Weather i.i.d. while money is persistent
- Weather shocks induce negative autocorrelation in output
- Estimated effects of monetary shocks will be affected by this
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/6791e8fd8b3a20c61246e5fdf21b1c7b93fe7ab91f6dc61571eaf2a33503eaba.jpg)
VAR Shocks
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/7b0c142722759bf9c6eab97d8aeaab3880cd7c14f3dae4566a8c8912fb369f0a.jpg)
Romer-Romer Shocks
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/76d1a8982199f93c579e6c10a1a3f890ae75990c1fe17aadf53eb97dde4b7d73.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/bfa7a57238d91caa812d85a9e07ca8fd1b1c10a76377d65d4e1fddf24286e5ba.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/0939f5c05491167213826a63de1bb3137fc442d5ebaf412024f8bb4331031f7a.jpg)
Black line: Industrial production. Blue line: Real interest rate
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/654859dcff0876946b5b9eb5e30f020ea9ff98a87af80d2556da33714b4da582.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/9831b99f6b1bdab6ed9fd2ec7e576c485f148d321c6266751410e2954540fbcc.jpg)
VAR Shocks
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/7466f55217e751db481bfa23c185fd48f02a7467cffa5443580cf210e52dc53e.jpg)
Romer-Romer Shocks
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/3f37e3fa04a40c95ac0dc45d2b41e3975df9e82e1f66ce264e2fc277c950e31d.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/162184659fd8fa85a4c44de076bf93eeb5bbf01ee7fcdda9b298dd9f49c4f5e4.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/a631047e46774322205caa3ae3b1806642531f725a9c79e835e6867dfacf9093.jpg)
Black line: CPI. Blue line: Nominal interest rate
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/d2033b0cb2e17c08201f7b38acbafbf7f63264a84c1c0dd190220e9200049023.jpg)
# High Frequency Identification
- A substantial amount of monetary news is released at the end of each FOMC meeting
Possible to use a "discontinuity" based identification approach
- Look at changes in interest rates during a narrow window around FOMC meeting
One-day window or 30-minute window
- Basic idea: Changes in interest rates at these times dominated by monetary announcement
Policy indicator: Change in fed funds rate target
- Variables of interest: Longer-term nominal rates (One-day windows, Sept 74 - Sept 79)
- Question: Can the Fed control nominal interest rates?
The effect of funds rate target changes on market interest rates.
$$
\Delta R _ {t} = b 1 + b 2 \Delta R F F _ {t} + u _ {t}
$$
Table 3
<table><tr><td>ΔRt</td><td>b1</td><td>b2</td><td>R²</td><td>Set</td><td>DW</td></tr><tr><td rowspan="2">3-month bill rate</td><td>0.016</td><td>0.554</td><td>0.47</td><td>0.13</td><td>1.89</td></tr><tr><td>(1.04)</td><td>(8.10)b</td><td></td><td></td><td></td></tr><tr><td rowspan="2">6-month bill rate</td><td>0.017</td><td>0.541</td><td>0.59</td><td>0.10</td><td>1.82</td></tr><tr><td>(1.44)</td><td>(10.25)b</td><td></td><td></td><td></td></tr><tr><td rowspan="2">12-month bill rate</td><td>0.024</td><td>0.500</td><td>0.56</td><td>0.10</td><td>1.94</td></tr><tr><td>(2.02)c</td><td>(9.61)b</td><td></td><td></td><td></td></tr><tr><td rowspan="2">3-year bond rate</td><td>0.018</td><td>0.289</td><td>0.46</td><td>0.07</td><td>1.59</td></tr><tr><td>(2.16)c</td><td>(7.87)b</td><td></td><td></td><td></td></tr><tr><td rowspan="2">5-year bond rate</td><td>0.012</td><td>0.208</td><td>0.36</td><td>0.06</td><td>1.59</td></tr><tr><td>(1.66)</td><td>(6.43)b</td><td></td><td></td><td></td></tr><tr><td rowspan="2">7-year bond rate</td><td>0.009</td><td>0.185</td><td>0.39</td><td>0.05</td><td>1.89</td></tr><tr><td>(1.47)</td><td>(6.78)b</td><td></td><td></td><td></td></tr><tr><td rowspan="2">10-year bond rate</td><td>0.012</td><td>0.131</td><td>0.32</td><td>0.04</td><td>1.94</td></tr><tr><td>(2.34)c</td><td>(5.85)b</td><td></td><td></td><td></td></tr><tr><td rowspan="2">20-year bond rate</td><td>0.007</td><td>0.098</td><td>0.29</td><td>0.03</td><td>2.04</td></tr><tr><td>(1.73)</td><td>(5.46)b</td><td></td><td></td><td></td></tr></table> aIncludes 75 changes in the federal funds rate target from September 1974 through September 1979. Bill and bond rate changes are calculated over the day of the target changes.  $t$ -statistics are in parentheses.
${}^{\mathrm{b}}$  Significant at the 1\% level,using a two-tailed test.
cSignificant at the  $5\%$  level, using a two-tailed test.
Source: Cook and Hahn (1989).
- 100bp change in fed funds target moves 3M Tbill rate by only 55bp
- Suggests that Fed can't move nominal interest rates very effectively
- Really?
- What concern might arise with this approach?
- 100bp change in fed funds target moves 3M Tbill rate by only 55bp
- Suggests that Fed can't move nominal interest rates very effectively
Really?
What concern might arise with this approach?
- Some changes in funds rate target might be anticipated
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/6a8b34b2046a17b32bd015dfe494c0b6e602bf51a8b9bb7e462d453d24911998.jpg)
Source: Nakamura and Steinsson (2018). Fed funds target and 1 month Eurodollar rate in 2001.
* indicates move at unscheduled meeting of FOMC
- Policy indicator: Change in fed funds future for current month
- Variables of interest: Longer-term nominal rates (One-day window, June-89 - Feb-00)
- Able to distinguish between anticipated and unanticipated movements in fed funds rate
Table 2 Actual, expected and unexpected changes in the Fed funds target
<table><tr><td>Date</td><td></td><td>FOMC</td><td>Actual</td><td>Expected</td><td>Unexpected</td></tr><tr><td rowspan="6">1989</td><td>6/6</td><td></td><td>-25</td><td>-24</td><td>-1</td></tr><tr><td>7/7</td><td>√</td><td>-25</td><td>-22</td><td>-3</td></tr><tr><td>7/27</td><td></td><td>-25</td><td>-25</td><td>0</td></tr><tr><td>10/18</td><td></td><td>-25</td><td>-25</td><td>0</td></tr><tr><td>11/6</td><td></td><td>-25</td><td>-29</td><td>+4</td></tr><tr><td>12/20</td><td>√</td><td>-25</td><td>-8</td><td>-17</td></tr><tr><td rowspan="5">1990</td><td>7/13</td><td></td><td>-25</td><td>-11</td><td>-14</td></tr><tr><td>10/29</td><td></td><td>-25</td><td>+6</td><td>-31</td></tr><tr><td>11/14</td><td>√</td><td>-25</td><td>-29</td><td>+4</td></tr><tr><td>12/7</td><td></td><td>-25</td><td>+2</td><td>-27</td></tr><tr><td>12/18</td><td>√</td><td>-25</td><td>-4</td><td>-21</td></tr><tr><td rowspan="10">1991</td><td>1/8</td><td></td><td>-25</td><td>-7</td><td>-18</td></tr><tr><td>2/1</td><td></td><td>-50</td><td>-25</td><td>-25</td></tr><tr><td>3/8</td><td></td><td>-25</td><td>-9</td><td>-16</td></tr><tr><td>4/30</td><td></td><td>-25</td><td>-8</td><td>-17</td></tr><tr><td>8/6</td><td></td><td>-25</td><td>-10</td><td>-15</td></tr><tr><td>9/13</td><td></td><td>-25</td><td>-20</td><td>-5</td></tr><tr><td>10/31</td><td></td><td>-25</td><td>-20</td><td>-5</td></tr><tr><td>11/6</td><td>√</td><td>-25</td><td>-13</td><td>-12</td></tr><tr><td>12/6</td><td></td><td>-25</td><td>-16</td><td>-9</td></tr><tr><td>12/20</td><td></td><td>-50</td><td>-22</td><td>-28</td></tr><tr><td rowspan="3">1992</td><td>4/9</td><td></td><td>-25</td><td>-1</td><td>-24</td></tr><tr><td>7/2</td><td>√</td><td>-50</td><td>-14</td><td>-36</td></tr><tr><td>9/4</td><td></td><td>-25</td><td>-3</td><td>-22</td></tr><tr><td rowspan="3">1994</td><td>2/4</td><td>√</td><td>+25</td><td>+13</td><td>+12</td></tr><tr><td>3/22</td><td>√</td><td>+25</td><td>+28</td><td>-3</td></tr><tr><td>4/18</td><td></td><td>+25</td><td>+15</td><td>+10</td></tr><tr><td>Source: Kuttner (2001)</td><td>5/17</td><td>√</td><td>+50</td><td>+37</td><td>+13</td></tr></table>
Table 3 The 1-day response of interest rates to the Fed funds surprisesa
<table><tr><td rowspan="2">Maturity</td><td rowspan="2">Intercept</td><td colspan="2">Response to target change</td><td rowspan="2">R2</td><td rowspan="2">SE</td><td rowspan="2">DW</td></tr><tr><td>Anticipated</td><td>Unanticipated</td></tr><tr><td rowspan="2">3 month</td><td>-0.7</td><td>4.4</td><td>79.1</td><td>0.70</td><td>7.1</td><td>1.82</td></tr><tr><td>(0.5)</td><td>(0.8)</td><td>(8.4)</td><td></td><td></td><td></td></tr><tr><td rowspan="2">6 month</td><td>-2.5</td><td>0.6</td><td>71.6</td><td>0.69</td><td>6.3</td><td>2.06</td></tr><tr><td>(2.2)</td><td>(0.1)</td><td>(8.5)</td><td></td><td></td><td></td></tr><tr><td rowspan="2">12 month</td><td>-2.2</td><td>-2.3</td><td>71.6</td><td>0.64</td><td>6.9</td><td>2.10</td></tr><tr><td>(1.8)</td><td>(0.5)</td><td>(7.8)</td><td></td><td></td><td></td></tr><tr><td rowspan="2">2 year</td><td>-2.8</td><td>-0.4</td><td>61.4</td><td>0.52</td><td>7.8</td><td>2.25</td></tr><tr><td>(2.0)</td><td>(0.1)</td><td>(6.0)</td><td></td><td></td><td></td></tr><tr><td rowspan="2">5 year</td><td>-2.4</td><td>-5.8</td><td>48.1</td><td>0.33</td><td>8.6</td><td>2.37</td></tr><tr><td>(1.6)</td><td>(0.9)</td><td>(4.3)</td><td></td><td></td><td></td></tr><tr><td rowspan="2">10 year</td><td>-2.4</td><td>-7.4</td><td>31.5</td><td>0.19</td><td>7.8</td><td>2.37</td></tr><tr><td>(1.8)</td><td>(1.3)</td><td>(3.1)</td><td></td><td></td><td></td></tr><tr><td rowspan="2">30 year</td><td>-2.5</td><td>-8.2</td><td>19.4</td><td>0.13</td><td>6.5</td><td>2.46</td></tr><tr><td>(2.2)</td><td>(1.7)</td><td>(2.3)</td><td></td><td></td><td></td></tr></table>
 Note: Anticipated and unanticipated changes in the Fed funds target are computed from the Fed funds futures rates, as described in the text. Parentheses contain t-statistics. See also notes to Table 1.
Source: Kuttner (2001). Responses in basis points to 100 basis point change.
Table 1 The 1-day response of interest rates to changes in the Fed funds targeta
<table><tr><td>Maturity</td><td>Intercept</td><td>Response</td><td>R2</td><td>SE</td><td>DW</td></tr><tr><td rowspan="2">3 month</td><td>-3.6</td><td>26.8</td><td>0.42</td><td>9.8</td><td>2.04</td></tr><tr><td>(2.3)</td><td>(5.4)</td><td></td><td></td><td></td></tr><tr><td rowspan="2">6 month</td><td>-5.2</td><td>21.9</td><td>0.37</td><td>9.0</td><td>2.04</td></tr><tr><td>(3.6)</td><td>(4.6)</td><td></td><td></td><td></td></tr><tr><td rowspan="2">12 month</td><td>-5.1</td><td>19.8</td><td>0.29</td><td>9.5</td><td>2.07</td></tr><tr><td>(3.3)</td><td>(4.1)</td><td></td><td></td><td></td></tr><tr><td rowspan="2">2 year</td><td>-5.2</td><td>18.2</td><td>0.26</td><td>9.6</td><td>2.28</td></tr><tr><td>(3.4)</td><td>(3.7)</td><td></td><td></td><td></td></tr><tr><td rowspan="2">5 year</td><td>-4.5</td><td>10.4</td><td>0.10</td><td>9.8</td><td>2.40</td></tr><tr><td>(2.9)</td><td>(2.1)</td><td></td><td></td><td></td></tr><tr><td rowspan="2">10 year</td><td>-4.0</td><td>4.3</td><td>0.02</td><td>8.5</td><td>2.50</td></tr><tr><td>(2.9)</td><td>(1.0)</td><td></td><td></td><td></td></tr><tr><td rowspan="2">30 year</td><td>-3.6</td><td>0.1</td><td>0.00</td><td>6.9</td><td>2.47</td></tr><tr><td>(3.2)</td><td>(0.0)</td><td></td><td></td><td></td></tr></table>
 Note: The change in the target Fed funds rate is expressed in percent, and the interest rate changes are expressed in basis points. The sample contains 42 changes in the target Fed funds rate from 6 June 1989 through 2 February 2000. Parentheses contain  $t$ -statistics.
Source: Kuttner (2001). Responses in basis points to 100 basis point change.
- Crucial to distinguish between anticipated and unanticipated movements in fed funds rate
- Increasingly important in an era of greater monetary policy transparency (where markets anticipate much of the monetary policy action)
FOMC Meeting on January 28, 2004:
- No change in Fed Funds Rate, fully anticipated
- Unexpected change in Fed Funds Rate: -1 bp
- Kuttner's monetary shock indicator implies essentially no shock
# FOMC Meeting on January 28, 2004:
- No change in Fed Funds Rate, fully anticipated
- Unexpected change in Fed Funds Rate: -1 bp
- Kuttner's monetary shock indicator implies essentially no shock
However, FOMC statement dropped the phrase:
"policy accommodation can be maintained for a considerable period"
- Twoand five-year yields jumped 20-25 bp
(largest movements around an FOMC announcement for years)
- January 28, 2004 FOMC meeting example of forward guidance
- Forward guidance: Statements by central bank meant to manage market expectations about what it is going to do in the future
- January 28, 2004 FOMC meeting example of forward guidance
- Forward guidance: Statements by central bank meant to manage market expectations about what it is going to do in the future
- Has become a major part of how monetary policy is conducted (especially at zero lower bound)
- Implies that unexpected changes in fed funds rate are poor indicator for size monetary shock
- In past 15 years, Fed has usually managed expectations to the point that there is no surprise about action at meeting
- Main news about adjustments to language in post-meeting statement containing information about future moves
- Consider changes in 5 fed funds and eurodollar futures:
Fed Funds future for current month (scaled)
Fed Funds future for month of next FOMC meeting (scaled)
3-month Eurodollar futures at horizons of 2Q, 3Q, 4Q
These span first year of term structure
- Consider changes in 5 fed funds and eurodollar futures:
Fed Funds future for current month (scaled)
Fed Funds future for month of next FOMC meeting (scaled)
3-month Eurodollar futures at horizons of 2Q, 3Q, 4Q
These span first year of term structure
- They then ask: Are effects of monetary policy announcements adequately characterized by a single factor?
(i.e., unexpected changes in current fed funds rate)
GSS 05 perform principle component analysis on the 5 fed funds and eurodollar futures
- Two factors needed to characterize effect of FOMC announcements:
- Target factor (unexpected changes in current fed funds rate)
- Path factor (changes in future rates orthogonal to changes in current rate)
GSS 05 perform principle component analysis on the 5 fed funds and eurodollar futures
- Two factors needed to characterize effect of FOMC announcements:
- Target factor (unexpected changes in current fed funds rate)
- Path factor (changes in future rates orthogonal to changes in current rate)
- Bulk of response of longer-term rates is to path factor
Table 5. Response of Asset Prices to Target and Path Factors
<table><tr><td rowspan="2"></td><td colspan="3">One Factor</td><td colspan="4">Two Factors</td></tr><tr><td>Constant (std. err.)</td><td>Target Factor (std. err.)</td><td>R2</td><td>Constant (std. err.)</td><td>Target Factor (std. err.)</td><td>Path Factor (std. err.)</td><td>R2</td></tr><tr><td rowspan="2">MP Surprise</td><td>-0.021***</td><td>1.000***</td><td rowspan="2">.91</td><td>-0.021***</td><td>1.000***</td><td>0.001</td><td rowspan="2">.91</td></tr><tr><td>(0.003)</td><td>(0.047)</td><td>(0.003)</td><td>(0.048)</td><td>(0.026)</td></tr><tr><td rowspan="2">One-Year-Ahead Eurodollar Future</td><td>-0.018***</td><td>0.555***</td><td rowspan="2">.36</td><td>-0.017***</td><td>0.551***</td><td>0.551***</td><td rowspan="2">.98</td></tr><tr><td>(0.006)</td><td>(0.076)</td><td>(0.001)</td><td>(0.017)</td><td>(0.014)</td></tr><tr><td rowspan="2">SEP 500</td><td>-0.008</td><td>-4.283***</td><td rowspan="2">.37</td><td>-0.008</td><td>-4.283***</td><td>-0.966</td><td rowspan="2">.40</td></tr><tr><td>(0.041)</td><td>(1.083)</td><td>(0.040)</td><td>(1.144)</td><td>(0.594)</td></tr><tr><td rowspan="2">Two-Year Note</td><td>-0.011**</td><td>0.485***</td><td rowspan="2">.41</td><td>-0.011***</td><td>0.482***</td><td>0.411***</td><td rowspan="2">.94</td></tr><tr><td>(0.005)</td><td>(0.080)</td><td>(0.002)</td><td>(0.032)</td><td>(0.023)</td></tr><tr><td rowspan="2">Five-Year Note</td><td>-0.006</td><td>0.279***</td><td rowspan="2">.19</td><td>-0.006**</td><td>0.276***</td><td>0.369***</td><td rowspan="2">.80</td></tr><tr><td>(0.005)</td><td>(0.078)</td><td>(0.002)</td><td>(0.044)</td><td>(0.035)</td></tr><tr><td rowspan="2">Ten-Year Note</td><td>-0.004</td><td>0.130**</td><td rowspan="2">.08</td><td>-0.004*</td><td>0.128***</td><td>0.283***</td><td rowspan="2">.74</td></tr><tr><td>(0.004)</td><td>(0.059)</td><td>(0.002)</td><td>(0.039)</td><td>(0.025)</td></tr><tr><td rowspan="2">Five-Year Forward Rate Five Years Ahead</td><td>0.001</td><td>-0.098**</td><td rowspan="2">.06</td><td>0.001</td><td>-0.099**</td><td>0.157***</td><td rowspan="2">.34</td></tr><tr><td>(0.003)</td><td>(0.049)</td><td>(0.003)</td><td>(0.047)</td><td>(0.028)</td></tr></table>
Note: Sample is all monetary policy announcements from July 1991-December 2004 (January 1990-December 2004 for S&P 500). Target factor and path factor are defined in the main text. Heteroskedasticity-consistent standard errors reported in parentheses. *, **, and *** denote significance at 10 percent, 5 percent, and 1 percent, respectively. See text for details.
Source: Gurkaynak-Sack-Swanson (2005). Window length: 30-minutes.
Table 4. Ten Largest Observations of the Path Factor
<table><tr><td>Date</td><td> Z_1 (Target Factor)</td><td> Z_2 (Path Factor)</td><td>Statement</td><td>Financial Market Commentary</td></tr><tr><td>Jan. 28, 2004</td><td>-1.1</td><td>42.7</td><td>✓</td><td>Statement drops commitment to keep policy unchanged for “a considerable period,” bringing forward expectations of future tightenings</td></tr><tr><td>Jul. 6, 1995</td><td>-8.7</td><td>-38.4</td><td>✓</td><td>First easing after long (seventeen-month) series of tightenings raises expectations of further easings; statement notes that inflationary pressures have receded</td></tr><tr><td>Aug. 13, 2002</td><td>8.1</td><td>-37.2</td><td>✓</td><td>Statement announces balance of risks has shifted from neutral to economic weakness</td></tr><tr><td>May 18, 1999</td><td>0.5</td><td>32.8</td><td>✓</td><td>Statement announces change in policy bias going forward from neutral to tightening</td></tr><tr><td>May 6, 2003</td><td>5.2</td><td>-27.0</td><td>✓</td><td>Statement announces balance of risks now dominated by risk of “an unwelcome substantial fall in inflation”</td></tr><tr><td>Dec. 20, 1994</td><td>-15.1</td><td>26.6</td><td></td><td>Surprise that FOMC not tightening considering recent comments by Blinder on “overshooting”; some fear Fed may have to tighten more in 1995 as a result</td></tr><tr><td>Oct. 5, 1999</td><td>-2.7</td><td>25.8</td><td>✓</td><td>Statement announces change in policy bias going forward from neutral to tightening</td></tr><tr><td>Oct. 28, 2003</td><td>3.9</td><td>-24.4</td><td>✓</td><td>Statement leaves the “considerable period” commitment unchanged, pushing back expectations of future tightenings</td></tr><tr><td>Jan. 3, 2001</td><td>-32.3</td><td>22.8</td><td>✓</td><td>Large surprise intermeeting case reportedly causes financial markets to mark down probability of a recession; Fed is perceived as being “ahead of the curve” and as needing to ease less down the road as a result</td></tr><tr><td>Oct. 15, 1998</td><td>-24.0</td><td>-22.6</td><td>✓</td><td>First intermeeting move since 1994 and statement pointing to “unsettled conditions in financial markets… restraining aggregate demand” increases expectations of further easings</td></tr></table>
Source: Gurkaynak-Sack-Swanson (2005)
1. If there are other shocks during window:
- Policy indicator will be contaminated by these shocks because Fed may respond (now or in the future)
These same shocks may directly affect future variables
No longer estimating a causal effect of monetary shocks
2. If entire response of interest rates doesn't occur in narrow window:
Estimate of monetary shock biased because shock size biased
- Might be over-reaction or under-reaction
Key Question: How long should the window be?
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/1d482b1e28bc64185292372ec45c4853e29527c7ae6573ef83cda7aedcf6e5b3.jpg)
Figure 1. Intraday Trading in Federal Funds Futures Contracts
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/ddaa13941a67fbb327d11a1684706d843dd4fac1fefb7c2fe80d9035d22642fb.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/b320c7a44f39e679a34c9f490a189147c2bbc8046cfc031f413892bd675c2fda.jpg)
Source: Gurkaynak-Sack-Swanson (2005)
- HFI arguably the cleanest way to identify monetary shocks … but shocks are small and sample short
- Regressions on future output very imprecise (Cochrane-Piazzesi 02, Angrist-Jorda-Kuersteiner 17)
Angrist-Jorda-Kuersteiner 17
- Policy indicator: unexpected fed funds target changes
- Window: one-day (although slightly unusual methods)
Outcome variable: inflation, industrial production
- Allow for different effects of increases and decreases
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/35439c539873c5e148855c845b9aaa489018834636d824f7a710e0d0a90a3a59.jpg)
0.25 Effect on Inflation
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/f2130d12bddec101832c05671e68345e09f7951db9521c457d825c97e413eff4.jpg)
-0.25 Effect on Inflation
0.25 Effect on IP
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/0eeb15164318c8255a22d841e4f4b10ec09f56f070f746cb2fd8291eb506981c.jpg)
Source: Angrist-Jorda-Kuersteiner (2017).  $90\%$  confidence bands. Vertical axis is in months.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/ab8250e698cf25eb24f710d2176ba4c9311f7f9145710aa4c855abc59d255cde.jpg)
-0.25 Effect on IP
Why are effects on output and inflation so imprecise?
- Shocks are small: High frequency method leaves out lots of shocks (perhaps vast majority)
- All news about monetary policy on non-FOMC days not captured
Sample period is short (only back to late 1980's)
Outcomes are noisy
- Many other shocks affect output and inflation over a 1 year horizon
# Potential solution:
- Focus on outcome variables that move contemporaneously e.g., real yields and forwards (from TIPS) (Hanson-Stein 15, Nakamura-Steinsson 18)
Essentially a discontinuity based identification strategy
Policy indicator: Policy news shock
- First principle component of change in GSS 05's 5 interest rate futures over narrow window around scheduled FOMC announcements
Similar to GSS 05 path factor, but simpler (no 2nd factor)
- Variables of interest: Nominal and real yields and forward rates (30-minute window, 2000-2014)
TABLE 1
Response of Interest Rates and Inflation to the Policy News Shock
<table><tr><td></td><td>Nominal</td><td>Real</td><td>Inflation</td></tr><tr><td>2Y Treasury Yield</td><td>1.10</td><td>1.06</td><td>0.04</td></tr><tr><td></td><td>(0.33)</td><td>(0.24)</td><td>(0.18)</td></tr><tr><td>5Y Treasury Yield</td><td>0.73</td><td>0.64</td><td>0.09</td></tr><tr><td></td><td>(0.20)</td><td>(0.15)</td><td>(0.11)</td></tr><tr><td>10Y Treasury Yield</td><td>0.38</td><td>0.44</td><td>-0.06</td></tr><tr><td></td><td>(0.17)</td><td>(0.13)</td><td>(0.08)</td></tr><tr><td>2Y Treasury Inst. Forward Rate</td><td>1.14</td><td>0.99</td><td>0.15</td></tr><tr><td></td><td>(0.46)</td><td>(0.29)</td><td>(0.23)</td></tr><tr><td>3Y Treasury Inst. Forward Rate</td><td>0.82</td><td>0.88</td><td>-0.06</td></tr><tr><td></td><td>(0.43)</td><td>(0.32)</td><td>(0.15)</td></tr><tr><td>5Y Treasury Inst. Forward Rate</td><td>0.26</td><td>0.47</td><td>-0.21</td></tr><tr><td></td><td>(0.19)</td><td>(0.17)</td><td>(0.08)</td></tr><tr><td>10Y Treasury Inst. Forward Rate</td><td>-0.08</td><td>0.12</td><td>-0.20</td></tr><tr><td></td><td>(0.18)</td><td>(0.12)</td><td>(0.09)</td></tr></table>
Source: Nakamura-Steinsson (2016). Window: 30-minutes.
# Main take-away:
- Nominal and real rates move one-for-one several years out into term structure
- Response of break-even inflation is delayed and small
# Challenges:
Background noise
Risk Premia
Fed information effects
# FISCAL STIMULUS: EVIDENCE
 and
UC Berkeley
April 2019
# Neoclassical models:
- Positive but small multipliers (less than one)
Due to negative wealth effect
Hours go up but consumption goes down
- Exception:
Persistent spending with "flexible capital"
- Investment rises a lot but consumption still falls
# New Keynesian models:
- Multiplier highly dependent on monetary policy response
- Constant real rate: multiplier 1
- Lean against the wind: multiplier less than 1 zero lower bound: multiplier larger than 1
- Multipliers larger with credit constrained agents (old Keynesian multiplier logic)
# Other important issues:
- Multiplier dependent of tax response (varies across episodes)
- Multiplier dependent on type of spending
Etc., Etc.
# No single multiplier!
- Challenging to use aggregate multiplier estimates to distinguish between models
- Government purchases multiplier:
- When government purchases of goods and services go up by 1, how many dollars does output go up by?
$$
\left(Y _ {t} - Y _ {t - 1}\right) = \alpha + \beta \left(G _ {t} - G _ {t - 1}\right) + \epsilon_ {t}
$$
- Government purchases multiplier:
- When government purchases of goods and services go up by 1, how many dollars does output go up by?
$$
\left(Y _ {t} - Y _ {t - 1}\right) = \alpha + \beta \left(G _ {t} - G _ {t - 1}\right) + \epsilon_ {t}
$$
Usually divide through by  $Y_{t - 1}$
$$
\frac {Y _ {t} - Y _ {t - 1}}{Y _ {t - 1}} = \alpha + \beta \frac {G _ {t} - G _ {t - 1}}{Y _ {t - 1}} + \epsilon_ {t}
$$
Why?
- Government purchases multiplier:
- When government purchases of goods and services go up by 1, how many dollars does output go up by?
$$
\left(Y _ {t} - Y _ {t - 1}\right) = \alpha + \beta \left(G _ {t} - G _ {t - 1}\right) + \epsilon_ {t}
$$
Usually divide through by  $Y_{t - 1}$
$$
\frac {Y _ {t} - Y _ {t - 1}}{Y _ {t - 1}} = \alpha + \beta \frac {G _ {t} - G _ {t - 1}}{Y _ {t - 1}} + \epsilon_ {t}
$$
Why?
Reduces heteroskedasticity.
- Multiplier regression:
$$
\frac {Y _ {t} - Y _ {t - 1}}{Y _ {t - 1}} = \alpha + \beta \frac {G _ {t} - G _ {t - 1}}{Y _ {t - 1}} + \epsilon_ {t}
$$
Different from
$$
\frac {Y _ {t} - Y _ {t - 1}}{Y _ {t - 1}} = \alpha + \beta \frac {G _ {t} - G _ {t - 1}}{G _ {t - 1}} + \epsilon_ {t}
$$
- Multiplier regression:
$$
\frac {Y _ {t} - Y _ {t - 1}}{Y _ {t - 1}} = \alpha + \beta \frac {G _ {t} - G _ {t - 1}}{Y _ {t - 1}} + \epsilon_ {t}
$$
Different from
$$
\frac {Y _ {t} - Y _ {t - 1}}{Y _ {t - 1}} = \alpha + \beta \frac {G _ {t} - G _ {t - 1}}{G _ {t - 1}} + \epsilon_ {t}
$$
- Second specification estimates an elasticity as opposed to a multiplier
- Some papers estimate elasticity and then convert to multiplier by multiplying by average value of  $Y / G$
(Ramey-Zubairy 18 argue this is not a good practice)
Suppose we seek to estimate:
$$
\frac {Y _ {t} - Y _ {t - 1}}{Y _ {t - 1}} = \alpha + \beta \frac {G _ {t} - G _ {t - 1}}{Y _ {t - 1}} + \epsilon_ {t}
$$
An important empirical problem is endogeneity of  $G_{t}$
- What is the likely nature of the endogeneity?
# Countercyclical spending:
- Governments might systematically spend more when output is low due to other shocks in an effort to counteract these other shocks and stabilize economy
In this case, OLS would be downward biased
# Countercyclical spending:
- Governments might systematically spend more when output is low due to other shocks in an effort to counteract these other shocks and stabilize economy
In this case, OLS would be downward biased
# Procyclical spending:
- Balanced budget rules or credit constraints may lead government to spend more when things are good for other reasons
In this case, OLS would be upward biased
# Methods for identification:
Wars (Barro-Redlick 11; Hall 09; Ramey 11)
VARs (Blanchard-Perotti 02; Gali, et al. 07, Perotti 07)
- Regional shocks (Chodorow-Reich et al. 12, Shoag 13, Nakamura-Steinsson 14, Acconcia-Corsetti-Simonelli 14)
# PROS AND CONS OF LOOKING AT WARS
# PROS AND CONS OF LOOKING AT WARS
War yield large changes in spending
Military spending easy to model
Infrequent
# PROS AND CONS OF LOOKING AT WARS
- War yield large changes in spending
Military spending easy to model
- Infrequent
- Is military spending associated with wars exogenous?
# PROS AND CONS OF LOOKING AT WARS
War yield large changes in spending
Military spending easy to model
- Infrequent
- Is military spending associated with wars exogenous?
Often easy to rule out reverse causality
(war not due to state of US business cycle)
- But does "exclusion restriction" hold?
(i.e., do wars only affect output through spending?)
# PROS AND CONS OF LOOKING AT WARS
- War yield large changes in spending
Military spending easy to model
- Infrequent
- Is military spending associated with wars exogenous?
Often easy to rule out reverse causality
(war not due to state of US business cycle)
- But does "exclusion restriction" hold?
(i.e., do wars only affect output through spending?)
- Important confounding factors:
- Patriotism
Rationing, price controls
- Mismeasurement of prices of tanks and wages of soldiers
# PROS AND CONS OF LOOKING AT WARS
- War yield large changes in spending
Military spending easy to model
- Infrequent
- Is military spending associated with wars exogenous?
Often easy to rule out reverse causality
(war not due to state of US business cycle)
- But does "exclusion restriction" hold?
(i.e., do wars only affect output through spending?)
- Important confounding factors:
- Patriotism
Rationing, price controls
- Mismeasurement of prices of tanks and wages of soldiers
- Barro-Redlick 11 think war-time multiplier overestimate true multipliers
- Hall 09 thinks they are underestimates
- Look at variation in military spending from 1917-2006
Dominated by WWI, WWII, Korean War change in defense purchases change in nondefense purchases
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/5426f4d0e2a238deeb251d336c0527f86ea20c657905e6a5686f2efdf4271b39.jpg)
Source: Barro and Redlick (2011)
Table: Changes in Defense Spending
<table><tr><td>Year</td><td>DG (\% GDP)</td><td>Year</td><td>DG (\% GDP)</td></tr><tr><td>WWI</td><td></td><td>Korea</td><td></td></tr><tr><td>1917</td><td>3.5</td><td>1951</td><td>5.6</td></tr><tr><td>1918</td><td>14.9</td><td>1952</td><td>3.3</td></tr><tr><td>1919</td><td>-7.9</td><td>1953</td><td>0.5</td></tr><tr><td>1920</td><td>-8.2</td><td>1952</td><td>-2.1</td></tr><tr><td>WWII</td><td></td><td>Vietnam</td><td></td></tr><tr><td>1941</td><td>10.6</td><td>1966</td><td>1.2</td></tr><tr><td>1942</td><td>25.8</td><td>1967</td><td>1.1</td></tr><tr><td>1943</td><td>17.2</td><td></td><td></td></tr><tr><td>1944</td><td>3.6</td><td>Reagan</td><td></td></tr><tr><td>1945</td><td>-7.1</td><td>1982-1985</td><td>0.4-0.5</td></tr><tr><td>1946</td><td>-25.8</td><td>Bush II</td><td></td></tr><tr><td></td><td></td><td>2002-2004</td><td>0.3-0.4</td></tr></table>
Source: Barro and Redlick (2011)
Empirical specification:
$$
\begin{array}{l} \frac {Y _ {t} - Y _ {t - 1}}{Y _ {t - 1}} = \alpha + \beta_ {1} \frac {G _ {t} - G _ {t - 1}}{Y _ {t - 1}} \\ + \beta_ {2} \frac {G _ {t - 1} - G _ {t - 2}}{Y _ {t - 2}} + \beta_ {3} \frac {G _ {t - 1} ^ {*} - G _ {t - 2} ^ {*}}{Y _ {t - 2}} + \text {c o n t r o l s} + \epsilon_ {t} \\ \end{array}
$$
- $G_{t}^{*}$  captures news at time  $t$  about future spending from Ramey 11
- Gathered from Business Week estimates of changes in spending over next 3 to 5 years
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/ac42c55386633d54c78d7f880dcd42ce8c442a2d86e44a8eb9774418bb0ed2b7.jpg)
FIGURE II Defense News Variable, 1913-2008
Source: Barro and Redlick (2011)
TABLE II Equations for GDP Growth, Various Samples
<table><tr><td></td><td>(1)</td><td>(2)</td><td>(3)</td><td>(4)</td><td>(5)</td><td>(6)</td></tr><tr><td>Starting date</td><td>1950</td><td>1939</td><td>1930</td><td>1930 (w/o 1949)</td><td>1917</td><td>1954</td></tr><tr><td rowspan="2">Δg: defense</td><td>0.68*</td><td>0.44**</td><td>0.46**</td><td>0.48**</td><td>0.47**</td><td>0.98</td></tr><tr><td>(0.27)</td><td>(0.06)</td><td>(0.08)</td><td>(0.08)</td><td>(0.08)</td><td>(0.65)</td></tr><tr><td rowspan="2">Δg: defense (-1)</td><td>0.01</td><td>0.20**</td><td>0.21*</td><td>0.25**</td><td>0.16</td><td>-0.54</td></tr><tr><td>(0.28)</td><td>(0.06)</td><td>(0.09)</td><td>(0.08)</td><td>(0.08)</td><td>(0.56)</td></tr><tr><td rowspan="2">Δg*: defense news</td><td>0.026</td><td>0.039**</td><td>0.034*</td><td>0.034*</td><td>0.034*</td><td>-0.120</td></tr><tr><td>(0.016)</td><td>(0.011)</td><td>(0.015)</td><td>(0.014)</td><td>(0.017)</td><td>(0.112)</td></tr><tr><td rowspan="2">U(-1)</td><td>0.50**</td><td>0.58**</td><td>0.61**</td><td>0.58**</td><td>0.47**</td><td>0.51**</td></tr><tr><td>(0.17)</td><td>(0.14)</td><td>(0.10)</td><td>(0.10)</td><td>(0.10)</td><td>(0.18)</td></tr><tr><td rowspan="2">Δτ(-1)</td><td>-0.54**</td><td>-0.16</td><td>-0.26</td><td>-0.52*</td><td>-0.19</td><td>-0.48*</td></tr><tr><td>(0.21)</td><td>(0.16)</td><td>(0.22)</td><td>(0.23)</td><td>(0.25)</td><td>(0.22)</td></tr><tr><td rowspan="2">Yield spread squared</td><td>-43.9*</td><td>-37.8</td><td>-101.5**</td><td>-103.4**</td><td>-73.6**</td><td>-43.1*</td></tr><tr><td>(20.7)</td><td>(22.0)</td><td>(12.8)</td><td>(12.4)</td><td>(12.2)</td><td>(21.8)</td></tr><tr><td>p-value, defense variables</td><td>0.030</td><td>0.000</td><td>0.000</td><td>0.000</td><td>0.000</td><td>0.47</td></tr><tr><td>R2</td><td>0.48</td><td>0.82</td><td>0.75</td><td>0.77</td><td>0.66</td><td>0.45</td></tr><tr><td>σ</td><td>0.017</td><td>0.019</td><td>0.027</td><td>0.026</td><td>0.030</td><td>0.018</td></tr></table>
Source: Barro and Redlick (2011)
If variation in government spending is truly random, what is the role of the controls in the regressions?
If variation in government spending is truly random, what is the role of the controls in the regressions?
- They soak up noise in the regression and make the estimates more precise
- But if they end up affecting the point estimates substantially, this suggests that spending may not be truly random
TABLE III
Nondefense Government Purchases and Transfers
<table><tr><td></td><td>(1)</td><td>(2)</td><td>(3)</td><td>(4)</td><td>(5)</td><td>(6)</td></tr><tr><td>Starting date</td><td>1950</td><td>1930</td><td>1950</td><td>1930</td><td>1950</td><td>1950</td></tr><tr><td rowspan="2">Δg: defense</td><td>0.89**</td><td>0.46**</td><td>0.34</td><td>0.51**</td><td>0.84**</td><td>0.46</td></tr><tr><td>(0.27)</td><td>(0.08)</td><td>(0.32)</td><td>(0.10)</td><td>(0.24)</td><td>(0.26)</td></tr><tr><td rowspan="2">Δg: defense (-1)</td><td>-0.13</td><td>0.21*</td><td>0.08</td><td>0.18*</td><td>-0.36</td><td>0.02</td></tr><tr><td>(0.27)</td><td>(0.09)</td><td>(0.28)</td><td>(0.09)</td><td>(0.25)</td><td>(0.26)</td></tr><tr><td rowspan="2">Δg*: defense news</td><td>0.040**</td><td>0.036*</td><td>0.028</td><td>0.033*</td><td>0.014</td><td>0.016</td></tr><tr><td>(0.016)</td><td>(0.016)</td><td>(0.016)</td><td>(0.015)</td><td>(0.013)</td><td>(0.014)</td></tr><tr><td rowspan="2">U(-1)</td><td>0.64**</td><td>0.60**</td><td>0.43*</td><td>0.62**</td><td>0.26*</td><td>0.55**</td></tr><tr><td>(0.17)</td><td>(0.11)</td><td>(0.18)</td><td>(0.10)</td><td>(0.16)</td><td>(0.16)</td></tr><tr><td rowspan="2">Δτ(-1)</td><td>-0.45*</td><td>-0.25</td><td>-0.56**</td><td>-0.25</td><td>-0.26</td><td>-0.38</td></tr><tr><td>(0.20)</td><td>(0.23)</td><td>(0.21)</td><td>(0.22)</td><td>(0.19)</td><td>(0.20)</td></tr><tr><td rowspan="2">Yield spread squared</td><td>-31.2</td><td>-100.9**</td><td>-28.4</td><td>-102.3**</td><td>-38.9*</td><td>-21.6</td></tr><tr><td>(20.0)</td><td>(13.3)</td><td>(25.4)</td><td>(13.0)</td><td>(18.1)</td><td>(20.5)</td></tr><tr><td rowspan="2">Δg: nondefense</td><td>2.65**</td><td>0.12</td><td>—</td><td>—</td><td>—</td><td>—</td></tr><tr><td>(0.93)</td><td>(0.63)</td><td></td><td></td><td></td><td></td></tr><tr><td rowspan="2">Δ(transfers)</td><td>—</td><td>—</td><td>-1.53</td><td>0.64</td><td>—</td><td>—</td></tr><tr><td></td><td></td><td>(0.92)</td><td>(0.68)</td><td></td><td></td></tr><tr><td rowspan="2">Δ(GM sales)</td><td>—</td><td>—</td><td>—</td><td>—</td><td>3.66**</td><td>—</td></tr><tr><td></td><td></td><td></td><td></td><td>(0.86)</td><td></td></tr><tr><td rowspan="2">Δ(GE sales)</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>17.6**</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td>(4.7)</td></tr><tr><td>R2</td><td>0.54</td><td>0.75</td><td>0.51</td><td>0.75</td><td>0.63</td><td>0.57</td></tr><tr><td>σ</td><td>0.017</td><td>0.027</td><td>0.017</td><td>0.027</td><td>0.015</td><td>0.016</td></tr></table>
Source: Barro and Redlick (2011)
- Structural VAR based evidence for fiscal stimulus:
$$
X _ {t} = A (L) X _ {t - 1} + U _ {t}
$$
$X_{t} = [T_{t},G_{t},Y_{t}]$
- Four lags (and quarter dependence of coefficients)
- Various different detrending methods plus some dummy variables
Sample period: 1960:1-1997:4 (No Korean War)
# They argue:
VAR methods better suited for study of fiscal policy than monetary policy
- Variation in government spending occurs for many reasons other than output stabilization
- Implementation lags implies no response of spending to output within, say, a quarter
- Consider the relationship between  $\Delta G$  and  $\Delta Y$
- Blanchard and Perotti's "identifying assumption" for  $\Delta G$ :
- Output does not affect government spending contemporaneously
- Consider the relationship between  $\Delta G$  and  $\Delta Y$
- Blanchard and Perotti's "identifying assumption" for  $\Delta G$ :
- Output does not affect government spending contemporaneously
- Given this identifying assumption, would it work to simply estimate:
$$
\Delta Y _ {t} = \alpha + \beta \Delta G _ {t} + \epsilon_ {t}
$$
- Two things can go wrong in causal inference:
1. Reverse causality: Causality can go "opposite" way (simultaneity bias)
2. Omitted variable bias: A third factor can cause movements in both variables
- Two things can go wrong in causal inference:
1. Reverse causality: Causality can go "opposite" way (simultaneity bias)
2. Omitted variable bias: A third factor can cause movements in both variables
- Blanchard and Perotti's "identifying assumption" deals with reverse causality, but not the omitted variables bias
What is Blanchard and Perotti's strategy for dealing with omitted variables bias?
What is Blanchard and Perotti's strategy for dealing with omitted variables bias?
- By controlling for four lags of  $\Delta Y_{t}, \Delta G_{t}$ , and  $\Delta T_{t}$
What is Blanchard and Perotti's strategy for dealing with omitted variables bias?
- By controlling for four lags of  $\Delta Y_{t}, \Delta G_{t}$ , and  $\Delta T_{t}$
General feature of "structural" VARs: identification by controlling for lags
News shocks about future output that are not captured by lags:
- Terrorist attacks
Wars
Financial crises
Oil price shocks
Regime shifts in monetary policy
Each one may only matter for a few data points. But they can add up.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/d69f07196cc29655e083c30ff4514546dd037475417e38a9a189fb5efddaf180.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/64ce3bff4e4879a8fcb3dc3baa2c23abb95549da82cc7b857bdd7e9d224b24e5.jpg)
FIGURE I Net Taxes and Spending, Shares of GDP
Source: Blanchard and Perotti (2002)
- They exclude 1950's because "difficult to think of the early 1950's as being generated by the same stochastic process as the post-1960 period."
- But is this an important disadvantage?
- They exclude 1950's because "difficult to think of the early 1950's as being generated by the same stochastic process as the post-1960 period."
- But is this an important disadvantage?
Not obvious
- Different perspective: Large variation very valuable for identification
- Also dummy out tax cut in 1975:II
TABLE IV RESPONSES TO SPENDING SHOCKS
<table><tr><td></td><td>1 qrt</td><td>4 qrts</td><td>8 qrts</td><td>12 qrts</td><td>20 qrts</td><td>peak</td></tr><tr><td colspan="7">DT</td></tr><tr><td>GDP</td><td>0.84*</td><td>0.45</td><td>0.54</td><td>1.13*</td><td>0.97*</td><td>1.29* (15)</td></tr><tr><td>GCN</td><td>1.00*</td><td>1.14*</td><td>0.95*</td><td>0.70*</td><td>0.42*</td><td></td></tr><tr><td>TAX</td><td>0.13</td><td>0.14</td><td>0.17</td><td>0.43*</td><td>0.52*</td><td></td></tr><tr><td colspan="7">ST</td></tr><tr><td>GDP</td><td>0.90*</td><td>0.55</td><td>0.65</td><td>0.66</td><td>0.66</td><td>0.90* (1)</td></tr><tr><td>GCN</td><td>1.00*</td><td>1.30*</td><td>1.56*</td><td>1.61*</td><td>1.62*</td><td></td></tr><tr><td>TAX</td><td>0.10</td><td>0.18</td><td>0.33</td><td>0.36</td><td>0.37</td><td></td></tr></table> resp.ofspe,DT
Source: Blanchard and Perotti (2002)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/28f1069446258f0e366793a33338e8697b7cb9a74285bd087ca5dbf9d728fe55.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/8b5eafae4e3697257e576d89cbb99f8457e8f1e07645c2ec2a07d0d786f62809.jpg) resp.of tax,DT
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/df23e3efd8805464403a1b3a755b971e827d22fd437584e381ac8dc44864e6b8.jpg) resp.ofgdp,DT
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/5e257ffa967efd11f21df02d768cd03be2a33ce292e06f5e02f6dda3f0cc04b8.jpg) resp.of ape,ST
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/9f32b7657c6febe6656cde2bd69a7442ea97b20e2285ea5cc798b6dccdd3f910.jpg) resp.of tax, ST
FIGURE V
Response to a Spending Shock resp.ofgdp,ST
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/dd373a049eeb985a2eecbce38d963ac681853e1ad363bbaeb8225b506043fdb6.jpg)
Source: Blanchard and Perotti (2002). Broken lines: One standard deviation bands.
- Notice the use of one standard deviation bands
Evidently not much information in 1960-1997 sample
- Notice the use of one standard deviation bands
Evidently not much information in 1960-1997 sample
- Also, max response of output is after 15 quarters, and after a "wavy response"
Estimates further out rely heavily on iteration of VAR system
- Notice the use of one standard deviation bands
Evidently not much information in 1960-1997 sample
- Also, max response of output is after 15 quarters, and after a "wavy response"
Estimates further out rely heavily on iteration of VAR system
- Alternative way to report results:
- Cumulative response of output divided by cumulative response of spending (over some horizon)
- Ramey-Zubairy 18 report such results using Blanchard-Perotti 02 identification for sample period including Korean war and find estimate below one
VAR with government spending "ordered first"
(i.e., is not contemporaneously affected by other variables in VAR)
- Large: Government spending, GDP, hours, consumption of non-durables and services, private nonresidential investment, real wage, budget deficit, personal disposable income.
- Small: Government spending, GDP, consumption, deficit
Quarterly data, four lags
Baseline sample: 1954:I-2003:IV (No Korean War)
Alternative sample: 1948:I-2003:IV (Includes Korean War)
TABLE 1. Estimated effects of government spending shocks.
<table><tr><td rowspan="3"></td><td colspan="6">Estimated Fiscal Multipliers</td><td rowspan="2" colspan="3">Implied Fiscal Parameters</td></tr><tr><td colspan="3">Output</td><td colspan="3">Consumption</td></tr><tr><td>1stQ</td><td>4thQ</td><td>8thQ</td><td>1stQ</td><td>4thQ</td><td>8thQ</td><td>ρg</td><td>φg</td><td>φb</td></tr><tr><td colspan="10">1948:I-2003:IV</td></tr><tr><td colspan="10">Baseline spending</td></tr><tr><td>Small VAR</td><td>0.51</td><td>0.31</td><td>0.28</td><td>0.04</td><td>0.09</td><td>0.19</td><td>0.85</td><td>0.10</td><td>0.10</td></tr><tr><td>Larger VAR</td><td>0.41</td><td>0.31</td><td>0.68</td><td>0.07</td><td>0.11</td><td>0.49</td><td>0.80</td><td>0.06</td><td>0.06</td></tr><tr><td colspan="10">Excluding military</td></tr><tr><td>Small VAR</td><td>0.15</td><td>-0.12</td><td>0.34</td><td>-0.11</td><td>0.24</td><td>0.32</td><td>0.95</td><td>0.005</td><td>0.60</td></tr><tr><td>Larger VAR</td><td>0.36</td><td>0.62</td><td>1.53</td><td>0.03</td><td>0.51</td><td>0.68</td><td>0.94</td><td>0.005</td><td>0.60</td></tr><tr><td colspan="10">1954:I-2003:IV</td></tr><tr><td colspan="10">Baseline spending</td></tr><tr><td>Small VAR</td><td>0.74</td><td>0.75</td><td>1.22</td><td>0.14</td><td>0.46</td><td>0.73</td><td>0.95</td><td>0.13</td><td>0.20</td></tr><tr><td>Larger VAR</td><td>0.68</td><td>0.70</td><td>1.74</td><td>0.17</td><td>0.29</td><td>0.95</td><td>0.95</td><td>0.10</td><td>0.30</td></tr><tr><td colspan="10">Excluding military</td></tr><tr><td>Small VAR</td><td>0.63</td><td>1.95</td><td>2.60</td><td>0.25</td><td>1.41</td><td>1.12</td><td>0.95</td><td>0.05</td><td>0.50</td></tr><tr><td>Larger VAR</td><td>0.74</td><td>2.37</td><td>3.50</td><td>0.37</td><td>1.39</td><td>1.76</td><td>0.95</td><td>0.01</td><td>0.50</td></tr><tr><td colspan="10">1960:I-2003:IV</td></tr><tr><td colspan="10">Baseline spending</td></tr><tr><td>Small VAR</td><td>0.91</td><td>1.05</td><td>1.32</td><td>0.19</td><td>0.59</td><td>0.84</td><td>0.95</td><td>0.13</td><td>0.20</td></tr><tr><td>Larger VAR</td><td>0.81</td><td>0.44</td><td>0.76</td><td>0.20</td><td>0.25</td><td>0.45</td><td>0.95</td><td>0.08</td><td>0.20</td></tr><tr><td colspan="10">Excluding military</td></tr><tr><td>Small VAR</td><td>0.72</td><td>1.14</td><td>1.19</td><td>0.17</td><td>0.78</td><td>0.68</td><td>0.94</td><td>0.03</td><td>0.50</td></tr><tr><td>Larger VAR</td><td>1.13</td><td>1.89</td><td>2.08</td><td>0.40</td><td>1.14</td><td>1.07</td><td>0.98</td><td>0.01</td><td>0.55</td></tr></table>
Note: Large VAR corresponds to the 8-variable VAR described in the text; Small VAR estimates are based on a 4-variable VAR including government spending, output, consumption, and the deficit. Government spending excluding military was obtained as  $\mathrm{GFNEH} + \mathrm{GSEH} + \mathrm{GFNIH} + \mathrm{GSIH}$ . For each specification  $\rho_{g}$  is the AR(1) coefficient that matches the half-life of the estimated government spending response. Parameter  $\phi_{g}$  is obtained as the difference of the VAR-estimated impact effects of government spending and deficit, respectively. Finally, given  $\rho_{g}$  and  $\phi_{g}$ , we calibrate the parameter  $\phi_{g}$  such that the dynamics of government spending (21) and debt (37) are consistent with the horizon at which the deficit is back to steady state, matching our empirical VAR responses of the fiscal deficit.
Source: Gali, Lopez-Salido, Valles (2007)
- Multipliers much smaller if Korean war included (perhaps due to large tax increases)
- Multiplier bigger for non-defense spending
Barro-Redlick argue this is endogenous
- Multipliers much smaller if Korean war included (perhaps due to large tax increases)
- Multiplier bigger for non-defense spending
Barro-Redlick argue this is endogenous
Measure of multipliers:  $dY_{t + k} / dG_t$
- Tricky to interpret
- Not only  $dG_{t}$  that is affecting  $dY_{t+k}$ , also  $dG_{t+1} \ldots dG_{t+k}$
- Alternative: Ratio of cumulative impulse responses
Fahri and Werning 16 has a nice discussion of this
- Use narrative approach to identify shocks to government spending
- Dates when Business Week suddenly began forecasting large increases in defense spending
- War dates: 1950:III (Korean War), 1965:I (Vietnam War), 1980:I (Carter-Reagan Buildup)
Ramey 11 adds: 2001:III (9/11)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/07109753e5ecd649bc2fea33587bafcaa9053ed47a60fb36d4dc30c82312458f.jpg)
(a) Defense Spending
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/617891703095f4e5bd953e4d5edc96919a275e51c22a327206ce7489f55b5598.jpg)
(b) Total Government Spending
FIGURE I
Real Government Spending Per Capita (in thousands of chained dollars, 2005)
# War dates "Granger cause" VAR shocks
- Government spending "shocks" are anticipated!
- Doesn't mean they are necessarily endogenous
- Invalidates VAR method for constructing impulse response
- Some of the effects occur when news arrives
Some of the effects occur when spending occurs
VAR misses effects that occur prior to spending
VAR misspecified, impulse response potentially way off
(My discussion here is somewhat different than Ramey's)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/228b97db6c3a9918a1331605c8869aa00ffcdeb47b221a261ccf0f12382807b4.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/1dbd4dc69102d8ba214afde908894cfb50c3f8b0bd1ef54d8b55b63062e87d36.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/9ce1134d139e45ceab72814f587bdd6de666712aef76def7e92a88d870b97413.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/cf5173eac4efb90decf37bbe99cf70d28393c3f24a459e4663db5f1ace679b04.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/ca2abc89b863e531517bc28c232baaf6f249cf7eb611b3b5db702a69a3f244cd.jpg)
FIGURE V Comparison of VAR Defense Shocks to Forecasts: Korea and Vietnam
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/73a6f522753b0b2c493d4f68d17b1dc5a49485fffd97deb704ed0fd07eab9b07.jpg)
<table><tr><td>—— actual</td><td>——Jun 50 forecast</td></tr><tr><td>——Aug 50 forecast</td><td>——Sep 50 forecast</td></tr></table>
<table><tr><td>actual</td><td>Jan 65 forecast</td></tr><tr><td>Aug 65 forecast</td><td>Sep 66 forecast</td></tr><tr><td>Jan 67 forecast</td><td>May 67 forecast</td></tr></table>
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/bc0563b8df215fea818b7efbe909961f5f9f134394615b059a3e00e3214a5620.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/ebe05688b786315dc06d909235914df844ab1f529599bc78c0d137260d5e74f1.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/1c6be15b0a10a52c44dae0a3e3fb9633a10bd5767252f200d19dd8172133c5bb.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/b5697d9b38189b11e10f1a74b6a2ee5c555f9cad09787a0ac1bb0f1069e530e6.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/1964dd0bcc6f645527a8444788ba52ddebe23c507e90301c6a2092648388a0a1.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/fcab9bc01bdce58949c04b912718d05577e3fc9bfde64f36811a78314267ab87.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/bee9dfe266c0e43658ce986a747d5c15ad48e81ea0d61c253fbdfc0fa2d9f031.jpg)
FIGURE VI
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/d2ec4b6e2b55aa33252ec31a560fed347a6f159a00b27e600195a0eeab99b984.jpg)
Comparison of VAR Defense Shocks to Forecasts: Carter-Reagan and 9/11
# ANTICIPATED GOVERNMENT SPENDING
How should anticipation of spending affect results?
Suppose  $G \uparrow$  is announced one period in advance
- What happens upon announcement?
How should anticipation of spending affect results?
Suppose  $G \uparrow$  is announced one period in advance
What happens upon announcement?
Negative wealth effect:  $C\downarrow ,H\uparrow$
- Anticipatory investment:  $I \uparrow$
- If you measure shock as occurring when spending occurs, you will miss these effects
- War dates variable embedded in a VAR — ordered first
VAR with: War Dates, G, Y, H, C, I, Barro-Redlick tax rate, W
- Quadratic trend, four lags
Sample period: 1947-2008
- War Dates essentially an instrument for spending government spending
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/83ed37e044425fbe979e1e7317bfb00fb665b6f4c0d7a4c12dae0685f59b3800.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/aa71349edb85208b238104557e0408b96111df9082984f698635b72cff97dd48.jpg) government spending
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/49508f40b281bbe2177b1a9f40aa93595f19714d4cfd1dc2139715b55f5327a2.jpg) gdp
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/8ce5754e20c564ee761c63ea6c76c22c7f4e3f80fc91aa8ffd46709c6cddcef4.jpg) gdp
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/ec92b26539cc98df4159132de4304a66696a469d71bb35a3ae69a662e20f92f1.jpg) total hours
Standard Identification
FIGURE IV
Comparison of Identification Methods: Response to a Government Spending
Shock (Standard error bands are  $68\%$  confidence intervals) total hours
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/a613a9c94421c7811931de892d7a547c822bdb28f6c46cdaeba157454522c39b.jpg)
War Dates
Source: Ramey (2011)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/2539faf3f817a949c2afbd99c78e214ba62f22147a6f6656130d14e0b3f25e10.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/c62de5e9692d34e3e048e7b66cc633d8c11dd4e219a205d9143d21b3091519d0.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/a51b6c5ea38becfcc90deb1edf7014df914a8ca4d0a3ade7e0dedbe6eebff1e2.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/8b86f82f194c6c71b312b1889c3e3171ec5e40a2c57bd3f60121fb13113b2e4f.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/4fc03549bdd8c96b4cf5307d40d35c2f71083c471fefcdaa9e2fbc851cbb1ee2.jpg)
FIGURE IV (CONTINUED)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/8901e6f34f6eabb8e2bcb417a2944a9d8a184fe3f4db7a2c56107fc9b3999236.jpg)
- Ramey argues that difference between results based on structural VAR identification and War Dates identification has to do with timing
- War dates recognize that news about spending occurs before spending occurs
- Ramey argues that difference between results based on structural VAR identification and War Dates identification has to do with timing
- War dates recognize that news about spending occurs before spending occurs
VARs miss initial drop in consumption
- Delaying War dates yields VAR type results
- Delayed dates: 1951:1, 1965:3, 1980:4, 2003:2
Original dates: 1950:3, 1965:1, 1980:1, 2001:3 government spending
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/52b6f929e7a190cc6c808364341c826c4aff51a624f3b845c98f0283132026d9.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/87b82b1b54c3a9c645358cabe523c9fb382db904fe8efc28e310eb218109acc0.jpg) gdp
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/5f5123585db7034d68f083282ac0d74000775ba68111b0cc3e708e1927da328c.jpg) total hours
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/28661b9be4f072eacd97839eca27fac5a40a8a40fe3781d127e06b5be0cb3bf2.jpg) consumption, ndur + serv
investment, nonres + res
FIGURE VIII
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/9bafc20abee62b05982dd3af65f69af3928b11876417aaeece1f2be2a8d52414.jpg)
The Effect of Mistiming the Ramey-Shapiro Dates (Standard error bands are real wages
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/f98108fa838e759d50713fd5e69aabeb5247d402cedabef6325e568c9dc26ef8.jpg)
68\% confidence intervals)
- Structural VAR studies:  $G \uparrow = > C \uparrow, W / P \uparrow$
Ramey-Shapiro "war dates":  $G \uparrow = > C \downarrow, W / P \downarrow$
- Structural VAR studies:  $G \uparrow = > C \uparrow, W / P \uparrow$
- Ramey-Shapiro "war dates":  $G \uparrow = > C \downarrow, W / P \downarrow$
Massive focus on whether  $C \uparrow$  or  $C \downarrow$  in literature
- Structural VAR studies:  $G \uparrow = > C \uparrow, W / P \uparrow$
- Ramey-Shapiro "war dates":  $G \uparrow = > C \downarrow, W / P \downarrow$
Massive focus on whether  $C \uparrow$  or  $C \downarrow$  in literature
- Suggestion that this distinguishes between Neoclassical models and New Keynesian models
- In fact Keynesian models can generate both depending on monetary policy
# Regional Multipliers
# Since the Great Recession:
- Explosion of empirical work estimating regional multipliers
- Wide array of identification strategies:
- Windfall returns on state pension plans (Shoag 15)
Military buildups (Nakamura-Steinsson 14)
- Crackdown on Mafia infiltrated municipalities in Italy (Acconica et al. 14)
- Spending discontinuities at decadal census population revisions (Suarez Serrato-Wingender 16)
Evidence from ARRA (Chodorow-Reich et al. 12, Wilson 12, Dupor-Mehkari 16)
Survey: Chodorow-Reich 17
A lot more data, a lot more variation
- Allows for difference-in-difference identification
- Allows for powerful class of instruments:
- Differential regional exposure to aggregate shocks
- Regional multiplier not the same as aggregate multipliers
- Not answering the "right" question?
What do we learn?
$$
\left(\frac {Y _ {i t} - Y _ {i t - 2}}{Y _ {i t - 2}}\right) = \alpha_ {i} + \gamma_ {t} + \beta \left(\frac {\boldsymbol {G} _ {i t} - \boldsymbol {G} _ {i t - 2}}{Y _ {i t - 2}}\right) + \epsilon_ {i t}
$$
$G_{it}$  is prime military contract spending
State fixed effects (state specific trends)
- Year fixed effects (controls for aggregate shocks)
- Variables measured per capita
Biannual regressions (in lieu of dynamics)
- Government spending potential endogenous and measured with error
Subcontracting
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/2368924f82dfb8b4876026b19d1f6d51aa876fe5fde6433ccacb83698b078b80.jpg)
FIGURE 1. PRIME MILITARY CONTRACT SPENDING AS A FRACTION OF STATE GDP
Source: Nakamura and Steinsson (2014)
- National military buildups exogenous to relative conditions in states receiving disproportionate procurement spending
- Use differential sensitivity to national shocks across states to identify effects on state output
Intuition:
- When  $\Delta G_{US} > 0$ ,  $\Delta G_{CA} > \Delta G_{IL}$
- What is effect on  $\Delta Y_{CA}$  vs  $\Delta Y_{IL}$ ?
Identifying assumption:
- No other shock  $\alpha_{i}\mathcal{E}_{t}$  correlated with  $\Delta G_{US}$  in the time series and differentially affects same set of states as our instrument (i.e.,  $\alpha_{j}$  correlated with differential cross-sectional sensitivity of our instrument)
# Baseline instrument:
National spending interacted with state dummy
- In effect, we estimate sensitivity of state spending to national spending in "first stage"
# Baseline instrument:
National spending interacted with state dummy
- In effect, we estimate sensitivity of state spending to national spending in "first stage"
# Bartik (1991) type instrument:
- National spending scaled by each state's average spending in the first five years of sample
- Idea: Spending varies more in states with a lot of spending
TABLE 2 THE EFFECTS OF MILITARY SPENDING
<table><tr><td rowspan="2"></td><td colspan="2">Output</td><td colspan="2">Output defl. state CPI</td><td colspan="2">Employment</td><td>CPI</td><td>Population</td></tr><tr><td>States</td><td>Regions</td><td>States</td><td>Regions</td><td>States</td><td>Regions</td><td>States</td><td>States</td></tr><tr><td>Prime military contracts</td><td>1.43(0.36)</td><td>1.85(0.58)</td><td>1.34(0.36)</td><td>1.85(0.71)</td><td>1.28(0.29)</td><td>1.76(0.62)</td><td>0.03(0.18)</td><td>-0.12(0.17)</td></tr><tr><td>Prime contracts plus military compensation</td><td>1.62(0.40)</td><td>1.62(0.84)</td><td>1.36(0.39)</td><td>1.44(0.96)</td><td>1.39(0.32)</td><td>1.51(0.91)</td><td>0.19(0.16)</td><td>0.07(0.21)</td></tr><tr><td>Observations</td><td>1,989</td><td>390</td><td>1,989</td><td>390</td><td>1,989</td><td>390</td><td>1,763</td><td>1,989</td></tr></table>
Notes: Each cell in the table reports results for a different regression with a shorthand for the main regressor of interest listed in the far left column. A shorthand for the dependent variable is stated at the top of each column. The dependent variable is a two-year change divided by the initial value in each case. Output and employment are per capita. The regressor is the two-year change divided by output. Military spending variables are per capita except in Population regression. Standard errors are in parentheses. All regressions include region and time fixed effects, and are estimated by two-stage least squares. The sample period is 1966-2006 for output, employment, and population, and 1969-2006 for the CPI. Output is state GDP, first deflated by the national CPI and then by our state CPI measures. Employment is from the BLS payroll survey. The CPI measure is described in the text. Standard errors are clustered by state or region.
Source: Nakamura and Steinsson (2014)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/1f61e29488d3616975a4df62a16ed3b90b58689a6246c07fcee4259b506f4511.jpg)
FIGURE 3. QUANTILES OF CHANGE IN OUTPUT VERSUS PREDICTED CHANGE IN MILITARY SPENDING
Source: Nakamura and Steinsson (2014). Binned Scatter plot.
TABLE 3-ALTERNATIVE SPECIFICATIONS FOR EFFECTS OF MILITARY SPENDING
<table><tr><td rowspan="2"></td><td colspan="2">1. Output level instr.</td><td colspan="2">2. Employment level instr.</td><td colspan="2">3. Output per working age</td><td colspan="2">4. Output OLS</td></tr><tr><td>States</td><td>Regions</td><td>States</td><td>Regions</td><td>States</td><td>Regions</td><td>States</td><td>Regions</td></tr><tr><td>Prime military contracts</td><td>2.48(0.94)</td><td>2.75(0.69)</td><td>1.81(0.41)</td><td>2.51(0.31)</td><td>1.46(0.58)</td><td>1.94(1.21)</td><td>0.16(0.14)</td><td>0.56(0.32)</td></tr><tr><td>Prime contracts plus military compensation</td><td>4.79(2.65)</td><td>2.60(1.18)</td><td>2.07(0.67)</td><td>1.97(0.98)</td><td>1.79(0.60)</td><td>1.74(1.00)</td><td>0.19(0.19)</td><td>0.64(0.31)</td></tr><tr><td>Observations</td><td>1,989</td><td>390</td><td>1,989</td><td>390</td><td>1,785</td><td>350</td><td>1,989</td><td>390</td></tr><tr><td rowspan="2"></td><td colspan="2">5. Output with oil controls</td><td colspan="2">6. Output with real int. controls</td><td colspan="2">7. Output LIML</td><td colspan="2">8. BEA employment</td></tr><tr><td>States</td><td>Regions</td><td>States</td><td>Regions</td><td>States</td><td>Regions</td><td>States</td><td>Regions</td></tr><tr><td>Prime military contracts</td><td>1.32(0.36)</td><td>1.89(0.54)</td><td>1.40(0.35)</td><td>1.80(0.59)</td><td>1.95(0.62)</td><td>2.07(0.66)</td><td>1.52(0.37)</td><td>1.64(0.98)</td></tr><tr><td>Prime contracts plus military compensation</td><td>1.43(0.39)</td><td>1.72(0.66)</td><td>1.61(0.40)</td><td>1.59(0.84)</td><td>2.21(0.67)</td><td>1.90(1.02)</td><td>1.62(0.42)</td><td>1.28(1.16)</td></tr><tr><td>Observations</td><td>1,989</td><td>390</td><td>1,989</td><td>390</td><td>1,989</td><td>390</td><td>1,836</td><td>360</td></tr></table>
Source: Nakamura and Steinsson (2014)
- Potential threat to identification:
- Sensitivity of military spending correlated with overall cyclical sensitivity
- In fact cyclical sensitivity uncorrelated with military sensitivity
Consider:
$$
\Delta Y _ {i t} = \alpha_ {i} + \gamma_ {t} + \beta \mathbf {s} _ {i} \Delta Y _ {t} + \epsilon_ {i t}
$$ where
$s_i$  is average level of military spending in state  $i$
- If states with high  $s_i$  are more cyclically sensitive,  $\beta > 0$
In fact  $\beta < 0$
- Baseline results have 50 instruments Potential weak / many instrument problem
- When instruments are weak / many, IV is biased towards OLS
- Intuition: Overfitting - i.e., fitting endogenous noise in 1st stage
Good read: Stock-Wright-Yogo 02
- Rule of thumb: First stage F-stat of excluded instruments > 10
- In our case, state reg with baseline instruments: First state F-stat = 5
Multiplier biased by about  $10\%$  towards OLS (we ran extensive Monte Carlo simulations)
Large difference between IV (1.4-2.8) and OLS (0.1-0.6)
Why?
Large difference between IV (1.4-2.8) and OLS (0.1-0.6)
Why?
- Endogeneity: States doing badly get more spending
- Measurement error in spending variable
Large difference between IV (1.4-2.8) and OLS (0.1-0.6)
Why?
- Endogeneity: States doing badly get more spending
- Measurement error in spending variable
- Eliminate only measurement error by instrumenting for prime contract spending with shipments data
Sample period 1966-1982
Results: 1.3 (0.5), versus OLS of 0.2 (0.2) and Bartik of 2.0 (0.4)
Is the multiplier larger in times of slack?
$$
\frac {Y _ {i t} - Y _ {i t - 2}}{Y _ {i t - 2}} = \alpha_ {i} + \gamma_ {t} + \beta_ {h} \frac {G _ {i t} - G _ {i t - 2}}{Y _ {i t - 2}} + (\beta_ {l} - \beta_ {h}) I _ {i t} \frac {G _ {i t} - G _ {i t - 2}}{Y _ {i t - 2}} + \epsilon_ {i t}
$$
$I_{it}$  is an indicator for periods of low slack
- Based on unemployment at the start of interval
- National slack: National unemployment rate is below its median
- State slack: State unemployment rate is below its median
$\beta_{h}$ : Multiplier in high slack periods
- $\beta_{l} - \beta_{h}$ : Difference in multiplier between low and high slack periods
TABLE 5-EFFECTS OF MILITARY SPENDING IN HIGH VERSUS LOW UNEMPLOYMENT PERIODS
<table><tr><td></td><td colspan="2">Output</td><td colspan="2">Employment</td></tr><tr><td></td><td>National slack</td><td>State slack</td><td>National slack</td><td>State slack</td></tr><tr><td rowspan="2">βh</td><td>3.54</td><td>4.31</td><td>1.85</td><td>1.32</td></tr><tr><td>(1.55)</td><td>(1.80)</td><td>(0.87)</td><td>(0.81)</td></tr><tr><td rowspan="2">βl-βh</td><td>-2.80</td><td>-3.37</td><td>-0.75</td><td>0.03</td></tr><tr><td>(1.49)</td><td>(1.84)</td><td>(0.89)</td><td>(0.84)</td></tr></table>
Notes: A shorthand for the dependent variable is stated at the top of each column. The dependent variable is a two-year change divided by the initial value in each case. All variables are per capita. Standard errors are in parentheses. The unit of observation is US states for all regressions in the table. The two regressors are (i) the two-year change in military spending and (ii) the two-year change in military spending interacted with a dummy indicating low slackness. We employ two different measures of slackness: "National slack" refers to whether the national unemployment rate is below its median value over the sample period; "State slack" refers to whether the state unemployment rate is below its median value over the sample period. This yields the effect of spending during high unemployment periods  $(\beta_h)$  and the difference between the effect of spending during low and high unemployment periods  $(\beta_l - \beta_h)$ . The national slack regressions include state and time fixed effects. The state slack regressions include state and time fixed effects interacted with the low slackness dummy. The regression are estimated by two-stage least squares. The sample period is 1966-2006. Output is state GDP. Employment is from the BLS payroll survey.
Source: Nakamura and Steinsson (2014)
- Relative multiplier we estimate, not the same as aggregate multiplier
States don't have to pay for spending (financed federally)
- Monetary policy can't react in cross-section
- Spillovers to other states
- Relative multiplier we estimate, not the same as aggregate multiplier
States don't have to pay for spending (financed federally)
- Monetary policy can't react in cross-section
- Spillovers to other states
One reaction:
- Not so useful since this it not what we are really interested in (which is aggregate multiplier)
- Relative multiplier we estimate, not the same as aggregate multiplier
States don't have to pay for spending (financed federally)
- Monetary policy can't react in cross-section
- Spillovers to other states
One reaction:
- Not so useful since this it not what we are really interested in (which is aggregate multiplier)
Different reaction:
- Perhaps relative multiplier is a powerful statistic in distinguishing between different models (e.g., RBC vs. New Keynesian)
- Aggregate multiplier is actually not very strong on that front
- We can use relative multiplier estimate as a moment to distinguish between competing structural models
- To this end, we write down a two-region macro model that nests competing models (RBC and New Keynesian)
- Calculate relative multiplier in different versions of the model
# - Two regions
Home and foreign goods imperfect substitutes
- Use commodity flow data to estimate "openness" (US regions ≈ Spain)
Labor immobile (regressions in per capita terms)
Common monetary policy
Common tax policy
Households consume and supply labor
Firms hire labor and set prices
- Neoclassical model: Prices adjust frictionlessly, economy responds efficiently to shocks
- New Keynesian model: Sluggish price response, output may be inefficiently low
# Consider several different cases:
# Aggregate Monetary Policy:
$$
\hat {i} _ {t} = \rho_ {i} \hat {i} _ {t - 1} + (1 - \rho_ {i}) (\phi_ {\pi} \hat {\pi} _ {t} ^ {a g} + \phi_ {y} \hat {y} _ {t} ^ {a g} + \phi_ {g} \hat {g} _ {t} ^ {a g})
$$
- Volcker-Greenspan:  $\rho = 0.8$ ,  $\phi_{\pi} = 1.5$ ,  $\phi_{y} = 0.5$ ,  $\phi_{g} = 0$
- Constant real interest rate (r unresp. to G)
- Constant nominal interest rate (i unresp. to G)
# Aggregate Tax Policy:
- Constant labor income tax (lump-sum taxes vary)
Labor income tax balances budget
TABLE 6 GOVERNMENT SPENDING MULTIPLIER IN SEPARABLE PREFERENCES MODEL
<table><tr><td></td><td>Closed economy aggregate multiplier</td><td>Open economy relative multiplier</td></tr><tr><td colspan="3">Panel A. Sticky prices</td></tr><tr><td>Volcker-Greenspan monetary policy</td><td>0.20</td><td>0.83</td></tr><tr><td>Constant real rate</td><td>1.00</td><td>0.83</td></tr><tr><td>Constant nominal rate</td><td>∞</td><td>0.83</td></tr><tr><td>Constant nominal rate (ρg=0.85)</td><td>1.70</td><td>0.90</td></tr><tr><td colspan="3">Panel B. Flexible prices</td></tr><tr><td>Constant income tax rates</td><td>0.39</td><td>0.43</td></tr><tr><td>Balanced budget</td><td>0.32</td><td>0.43</td></tr></table>
Notes: The table reports the government spending multiplier for output deflated by the regional CPI for the model presented in the text with the separable preferences specification. Panel A presents results for the model with sticky prices, while panel B presents results for the model with flexible prices. The first three rows differ only in the monetary policy being assumed. The fourth row varies the persistence of the government spending shock relative to the baseline parameter values. The fifth and sixth rows differ only in the tax policy being assumed.
Source: Nakamura and Steinsson (2014)
Key advantage of relative multiplier: Not sensitive to changes in monetary and tax policy
Intuition: Aggregate policy is "differenced out"
Yields multiplier for relatively "unresponsive" monetary/tax policy
- Same as multiplier for small open economy with fixed exchange rate
- Relative nominal interest rate fixed
- May seem analogous to zero lower bound situation
Stimulus lowers short-term real interest rate
- Relative nominal interest rate fixed
- May seem analogous to zero lower bound situation
Stimulus lowers short-term real interest rate
- Crucial difference:
- Long-term real interest rate doesn't fall
- Purchasing power parity must hold
Any rise in relative price level will be reversed
- Demand determined by long-term real rate
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/50140d75405ba6a6e579c4733e68c240bb477e2d40ef090c1886d402fef056f6.jpg)
FIGURE 4. PRICES AND REAL INTEREST RATES AFTER A GOVERNMENT SPENDING SHOCK
Note: The figure plots the relative price level and the relative real interest rate in the two regions for the model with separable preferences after a positive government spending shock to the home region.
Source: Nakamura and Steinsson (2014)
Introduce "ultra-Keynesian" features
- Consumption and work are complements (Aguiar-Hurst, 2005; Schmitt-Grohe-Uribe, 2010)
- Such complementarities can raise fiscal multiplier (Monacelli-Perotti, 2008; Bilbii, 2009; Hall, 2009)
Intuition:
Higher output raises marginal utility of consumption
This leads to even higher output
TABLE 7-GOVERNMENT SPENDING MULTIPLIER IN GHH MODEL
<table><tr><td></td><td>Closed economy aggregate multiplier</td><td>Open economy relative multiplier</td></tr><tr><td colspan="3">Panel A. Sticky prices</td></tr><tr><td>Volcker-Greenspan monetary policy</td><td>0.12</td><td>1.42</td></tr><tr><td>Constant real rate</td><td>7.00</td><td>1.42</td></tr><tr><td>Constant nominal rate</td><td>∞</td><td>1.42</td></tr><tr><td>Constant nominal rate (ρg=0.50)</td><td>8.73</td><td>2.04</td></tr><tr><td colspan="3">Panel B. Flexible prices</td></tr><tr><td>Constant income tax rates</td><td>0.00</td><td>0.30</td></tr><tr><td>Balanced budget</td><td>-0.18</td><td>0.30</td></tr></table>
Notes: The table reports the government spending multiplier for output deflated by the regional CPI for the model presented in the text with the GHH preferences specification. Panel A presents results for the model with sticky prices, while panel B presents results for the model with flexible prices. The first three rows differ only in the monetary policy being assumed. The fourth row varies the persistence of the government spending shock relative to the baseline parameter values. The fifth and sixth rows differ only in the tax policy being assumed.
Source: Nakamura and Steinsson (2014)
Federal vs. Local Financing
Variable Capital
- Increasingly important in macro:
- Mian-Sufi 14, Nakamura-Steinsson 14, Autor-Dorn-Hansen 13, Baraja-Hurst-Ospina 16, Martin-Phillipon 17, …
Key challenge:
- How to go from regional responses to aggregate responses
Cross-sectional responses don't directly answer key aggregate questions
GE effects absorbed by time fixed effects
Common to do "back-of-envelope" calculation
Typically invalid
- Fully specified general equilibrium model needs to translate regional responses to aggregate responses
Regional responses helpful in distinguishing between models
# Appendix
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/12a8edfe0fcbed361308f256cbff3a11a787a0944972ef0c89d43b68a7facef6.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/2cb1bdef11a48de55c1b11f7bc10d0825b61e4885160cc65f10375cb2e85cdc5.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/63124c0c46bab75b44bb32046805081ac90aebd490eaf2f2d51cc6793beed10e.jpg)
FIGURE 2. PRIME MILITARY CONTRACTS AND MILITARY SHIPMENTS
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/ff27e3575d7de9ca7b6ff1b586551147dc784b0889a74e931713fdebc43ccafc.jpg)
Source: Nakamura and Steinsson (2014). State of prime contractor is where majority of work is done.
Back
- Baseline model has complete markets (local vs. federal financing doesn't matter)
- As robustness, we consider incomplete markets model and compare multipliers with local and federal financing
Differences are small for our calibration (see Fahri-Werning 16 for cases where differences are bigger)
- Multiplier slightly larger with federal financing when prices are sticky (demand effect from increased wealth)
TABLE 8-GOVERNMENT SPENDING MULTIPLIERS IN INCOMPLETE MARKETS MODEL
<table><tr><td></td><td>Closed economy aggregate multiplier</td><td>Open economy relative multiplier</td></tr><tr><td colspan="3">Panel A. Sticky prices</td></tr><tr><td>Baseline model (complete markets)</td><td>0.20</td><td>0.83</td></tr><tr><td>Incomplete markets, locally financed</td><td>0.18</td><td>0.84</td></tr><tr><td>Incomplete markets, federally financed</td><td>0.18</td><td>0.90</td></tr><tr><td colspan="3">Panel B. Flexible prices</td></tr><tr><td>Baseline model (complete markets)</td><td>0.39</td><td>0.43</td></tr><tr><td>Incomplete markets, locally financed</td><td>0.39</td><td>0.41</td></tr><tr><td>Incomplete markets, federally financed</td><td>0.39</td><td>0.40</td></tr></table>
Notes: The table reports the government spending multiplier for output deflated by the regional CPI for a version of the model presented in the text with separable utility in which the only financial asset traded across regions is a noncontingent bond. Panel A presents results for the model with sticky prices, while panel B presents results for the model with flexible prices.
Source: Nakamura and Steinsson (2014)
Back
- Baseline model has fixed amount of capital per firm
- Does allowing for variable capital change results?
- Two versions:
Firm-specific capital (Woodford, 2003, 2005, Altig et al., 2011)
Regional capital markets (Christiano et al., 2005)
- Firm-specific capital model yields similar results to baseline
- Regional capital markets reduce strategic complementarity in price setting (highly unrealistic model)
TABLE 9—OPEN ECONOMY RELATIVE MULTIPLIER IN MODELS WITH VARIABLE CAPITAL
<table><tr><td></td><td>Output</td><td>CPI inflation</td></tr><tr><td>Baseline model (fixed capital)</td><td>1.42</td><td>0.17</td></tr><tr><td>Firm-specific capital model</td><td>1.47</td><td>0.15</td></tr><tr><td>Regional capital market model</td><td>0.98</td><td>0.09</td></tr><tr><td>Firm-specific capital model, flexible prices</td><td>0.25</td><td>0.36</td></tr></table>
Notes: The table reports the open economy relative government spending multiplier for output and CPI inflation for our baseline model with GHH preferences and the two models with variable capital, also with GHH preferences. Output is deflated by the regional CPI.
Source: Nakamura and Steinsson (2014)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/cfa160517deaa0789bbd4db8c3e8e409b25b64a152b6bb7fa5c47b4a1380f9cf.jpg)
# PRICE RIGIDITY:
# MICROECONOMIC EVIDENCE AND
# MACROECONOMIC IMPLICATIONS

UC Berkeley

March 2019

# WHY CARE ABOUT PRICE RIGIDITY IN MACRO?

Diverse evidence that demand shocks affect output:

- Monetary shocks: Friedman-Schwartz 63, Eichengreen-Sachs 85, Mussa 86, Christiano-Eichenbaum-Evans 99, Romer-Romer 04, Gertler-Karadi 15, Nakamura-Steinsson 18
- Fiscal shocks: Blanchard-Perotti 02, Ramey 11, Barro-Redlick 11, Nakamura-Steinsson 14, Guajardo-Leigh-Pescatori 14
Household deleveraging shocks: Mian-Sufi 14
Diverse evidence that demand shocks affect output:
- Monetary shocks: Friedman-Schwartz 63, Eichengreen-Sachs 85, Mussa 86, Christiano-Eichenbaum-Evans 99, Romer-Romer 04, Gertler-Karadi 15, Nakamura-Steinsson 18
- Fiscal shocks: Blanchard-Perotti 02, Ramey 11, Barro-Redlick 11, Nakamura-Steinsson 14, Guajardo-Leigh-Pescatori 14
Household deleveraging shocks: Mian-Sufi 14
Major challenge: How to explain this empirical finding?
Diverse evidence that demand shocks affect output:
- Monetary shocks: Friedman-Schwartz 63, Eichengreen-Sachs 85, Mussa 86, Christiano-Eichenbaum-Evans 99, Romer-Romer 04, Gertler-Karadi 15, Nakamura-Steinsson 18
- Fiscal shocks: Blanchard-Perotti 02, Ramey 11, Barro-Redlick 11, Nakamura-Steinsson 14, Guajardo-Leigh-Pescatori 14
Household deleveraging shocks: Mian-Sufi 14
Major challenge: How to explain this empirical finding?
- In RBC type models, demand shocks have small effects on output
Diverse evidence that demand shocks affect output:
- Monetary shocks: Friedman-Schwartz 63, Eichengreen-Sachs 85, Mussa 86, Christiano-Eichenbaum-Evans 99, Romer-Romer 04, Gertler-Karadi 15, Nakamura-Steinsson 18
- Fiscal shocks: Blanchard-Perotti 02, Ramey 11, Barro-Redlick 11, Nakamura-Steinsson 14, Guajardo-Leigh-Pescatori 14
Household deleveraging shocks: Mian-Sufi 14
Major challenge: How to explain this empirical finding?
- In RBC type models, demand shocks have small effects on output Leading explanation: Prices adjust sluggishly to shocks
Monetary shock: Increase in money supply
- Flexible prices: Prices increase, while output and real rate unchanged
- Sticky prices: Reduction in nominal interest rate reduces real rates
Monetary shock: Increase in money supply
- Flexible prices: Prices increase, while output and real rate unchanged
- Sticky prices: Reduction in nominal interest rate reduces real rates
Fiscal shock: Increase in government spending
- Flexible prices: Real rates rise, which crowds out private spending
- Sticky prices: Real rate sluggish unless nominal rate moves, output increases more
Monetary shock: Increase in money supply
- Flexible prices: Prices increase, while output and real rate unchanged
- Sticky prices: Reduction in nominal interest rate reduces real rates
Fiscal shock: Increase in government spending
- Flexible prices: Real rates rise, which crowds out private spending
- Sticky prices: Real rate sluggish unless nominal rate moves, output increases more
Same logic implies muted response of real rates to other shocks such as: deleveraging shocks, financial panics, increased uncertainty, "animal spirits"
# COULD PRICE RIGIDITIES CAUSE MAJOR RECESSIONS?
- Many people's first reaction is that this is not plausible
- Many people's first reaction is that this is not plausible
- But many shocks call for sharp movements in the real interest rate
- Many people's first reaction is that this is not plausible
- But many shocks call for sharp movements in the real interest rate
- Deleveraging shocks:
(Eggertsson-Krugman 12 and Guerrieri-Lorenzoni 17)
Sharp increase in desire to save  $\rightarrow$  Sharp drop in "natural" rate of interest
- Many people's first reaction is that this is not plausible
- But many shocks call for sharp movements in the real interest rate
- Deleveraging shocks:
(Eggertsson-Krugman 12 and Guerrieri-Lorenzoni 17)
Sharp increase in desire to save  $\rightarrow$
Sharp drop in "natural" rate of interest
- But if prices are sticky and nominal rate constrained by ZLB …
Real rate stuck at too high a level, output stuck at too low a level
- Many people's first reaction is that this is not plausible
- But many shocks call for sharp movements in the real interest rate
- Deleveraging shocks:
(Eggertsson-Krugman 12 and Guerrieri-Lorenzoni 17)
Sharp increase in desire to save  $\rightarrow$
Sharp drop in "natural" rate of interest
- But if prices are sticky and nominal rate constrained by ZLB …
Real rate stuck at too high a level, output stuck at too low a level
Financial disruptions and investment hang-overs have similar effects
# PRICE RIGIDITY AND COORDINATION FAILURE
- Nominal price stickiness not the whole story!
- Nominal price stickiness not the whole story!
Usually combined with coordination failures among price setters
Staggered price setting
Strategic complementarity among price setters (firm A's optimal price increasing in firm B's price)
- Nominal price stickiness not the whole story!
Usually combined with coordination failures among price setters
Staggered price setting
Strategic complementarity among price setters (firm A's optimal price increasing in firm B's price)
These three features interact powerfully to create a lot of sluggishness
- Nominal price stickiness not the whole story!
Usually combined with coordination failures among price setters
Staggered price setting
Strategic complementarity among price setters (firm A's optimal price increasing in firm B's price)
These three features interact powerfully to create a lot of sluggishness
- Can price rigidity create long-lived effects on output?
- Nominal price stickiness not the whole story!
Usually combined with coordination failures among price setters
Staggered price setting
Strategic complementarity among price setters (firm A's optimal price increasing in firm B's price)
These three features interact powerfully to create a lot of sluggishness
- Can price rigidity create long-lived effects on output?
- Yes! If combined with coordination failure among price setters
- What matters for the business cycle is the extent to which micro price rigidity lead to a sluggish response of the aggregate price level
- What matters for the business cycle is the extent to which micro price rigidity lead to a sluggish response of the aggregate price level
This depends on the nature of the micro price rigidity
- What matters for the business cycle is the extent to which micro price rigidity lead to a sluggish response of the aggregate price level
- This depends on the nature of the micro price rigidity
- Stark comparison: Calvo model vs. Caplin-Spulber model
Each firm adjusts with probability  $1 - \alpha$  each period
$$ p _ {t} = (1 - \alpha) p _ {i t} ^ {*} + \alpha p _ {t - 1}
$$

Each firm adjusts with probability  $1 - \alpha$  each period

$$ p _ {t} = (1 - \alpha) p _ {i t} ^ {*} + \alpha p _ {t - 1}
$$

CES demand:

$$
\pmb {p} _ {i t} ^ {*} = (1 - \alpha \beta) \sum_ {j = 0} ^ {\infty} (\alpha \beta) ^ {j} E _ {t} m \pmb {c} _ {t + j}
$$

Each firm adjusts with probability  $1 - \alpha$  each period

$$ p _ {t} = (1 - \alpha) p _ {i t} ^ {*} + \alpha p _ {t - 1}
$$

CES demand:

$$ p _ {i t} ^ {*} = (1 - \alpha \beta) \sum_ {j = 0} ^ {\infty} (\alpha \beta) ^ {j} E _ {t} m c _ {t + j}
$$
- MP targets nominal output:  $m_{t} = y_{t} + p_{t}$
- Simple utility and production function:  $mc_{t} = m_{t}$
- Random walk nominal output (no drift):  $E_{t}mc_{t + j} = m_{t}$
$$
\boldsymbol {p} _ {t} = (1 - \alpha) \boldsymbol {m} _ {t} + \alpha \boldsymbol {p} _ {t - 1}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/7217918b7a12a0c55746f8ee8679979cfb3fbd10440c838f2667f1efc3794fe8.jpg)

- MP targets nominal output:  $m_{t} = y_{t} + p_{t}$
$m_{t}$  is increasing (i.e., high inflation)
$p_t^*\propto m_t$
- MP targets nominal output:  $m_{t} = y_{t} + p_{t}$
- $m_t$  is increasing (i.e., high inflation)
$p_t^*\propto m_t$
- Fixed cost of changing prices
- When real price falls to  $s$ , firms raise it to  $S$
- Initial distribution of real prices uniform on  $(s, S)$
- Say infinitesimal  $\Delta m$  occurs
- Say infinitesimal  $\Delta m$  occurs
- $p_{it} - p_t^*$  falls by  $\Delta m$  for all firms
- Firms with initial real price below  $s + \Delta m$  fall below  $s$  and raise their price to  $S$  (think of this occurring in continuous time)
- Say infinitesimal  $\Delta m$  occurs
- $p_{it} - p_t^*$  falls by  $\Delta m$  for all firms
- Firms with initial real price below  $s + \Delta m$  fall below  $s$  and raise their price to  $S$  (think of this occurring in continuous time)
- Fraction of firms that change their price?
- Say infinitesimal  $\Delta m$  occurs
- $p_{it} - p_t^*$  falls by  $\Delta m$  for all firms
- Firms with initial real price below  $s + \Delta m$  fall below  $s$  and raise their price to  $S$  (think of this occurring in continuous time)
- Fraction of firms that change their price?
$$
\begin{array}{c} \Delta m \\ \hline S - s \end{array}
$$
- Say infinitesimal  $\Delta m$  occurs
- $p_{it} - p_t^*$  falls by  $\Delta m$  for all firms
- Firms with initial real price below  $s + \Delta m$  fall below  $s$  and raise their price to  $S$  (think of this occurring in continuous time)
- Fraction of firms that change their price?
$$
\begin{array}{c} \Delta m \\ \hline S - s \end{array}
$$
- How much do they change their price by?
- Say infinitesimal  $\Delta m$  occurs
- $p_{it} - p_t^*$  falls by  $\Delta m$  for all firms
- Firms with initial real price below  $s + \Delta m$  fall below  $s$  and raise their price to  $S$  (think of this occurring in continuous time)
- Fraction of firms that change their price?
$$
\begin{array}{c} \Delta m \\ \hline S - s \end{array}
$$
- How much do they change their price by?
$$
S - s
$$
- How much does the price level and output respond?
- How much does the price level and output respond?
$$
\Delta p = \frac {\Delta m}{S - s} (S - s) = \Delta m
$$
- How much does the price level and output respond?
$$
\Delta p = \frac {\Delta m}{S - s} (S - s) = \Delta m
$$
$$
\Delta y = \Delta m - \Delta p = 0
$$
- How much does the price level and output respond?
$$
\Delta p = \frac {\Delta m}{S - s} (S - s) = \Delta m
$$
$$
\Delta y = \Delta m - \Delta p = 0
$$

Conclusion: Money is neutral no matter how sticky prices are!!

# CAPLIN-SPULBER VS. CALVO
# Calvo model:
- Timing of price changes random
- Random assortment of firms that change prices
Some don't really need to change
Aggregate price level responds modestly
# Calvo model:
- Timing of price changes random
- Random assortment of firms that change prices
Some don't really need to change
Aggregate price level responds modestly
# Caplin-Spulber model:

Timing of price changes chosen optimally

Firms with biggest "pent-up" desire to change price do

Aggregate price level responds a great deal

Golosov-Lucas call this "selection effect" a

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/72c3804705a1f7eb145c9f63d927dec978b5fac8bf03288293d78fbd605f70fd.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/c9d444edf07ee8c5bf11bfe0183dcc4d2bed3e1ccaa656b4a7174ed50087691f.jpg) b

FIG. 6.—Price adjustment in menu cost and Calvo models.  $a$ , Price adjustment before aggregate shock.  $b$ , Price adjustment after aggregate shock.

Source: Golosov and Lucas (2007)

# Both models extreme cases
- Calvo: Aggregate conditions have no effect on which firms or how many firms change prices
- Caplin-Spulber model: Aggregate shocks only determinant of which firms and how many firms change prices (+ other special assumption that matter for result)
# Both models extreme cases
- Calvo: Aggregate conditions have no effect on which firms or how many firms change prices
- Caplin-Spulber model: Aggregate shocks only determinant of which firms and how many firms change prices (+ other special assumption that matter for result)
Subsequent literature explores intermediate cases and uses empirical evidence on characteristics of micro price adjustment to choose between models
Ss literature had gotten a bit stale in late 90's
- Only so much you can do analytically
(computers not yet good enough to simulate realistic models)
Lack of data to discipline models
Ss literature had gotten a bit stale in late 90's
- Only so much you can do analytically
(computers not yet good enough to simulate realistic models)
Lack of data to discipline models
Both things changed after 2000:
Computers became powerful enough to simulate realistic models
Bils and Klenow (2004) introduced massive new source of data
- Conventional wisdom in late 90's: Prices change once a year
Cecchetti (1986), Carlton (1986), Kashyap (1995), Blinder et al. (1998)
- Conventional wisdom in late 90's: Prices change once a year
Cecchetti (1986), Carlton (1986), Kashyap (1995), Blinder et al. (1998)
Bils and Klenow (2004) used BLS micro data from 95-97:
- Prices change every 4-5 months
- Spawned a large subsequent literature
- BLS micro data allowed researchers to document additional facts about price adjustment
Klenow and Kryvtsov (05,08):
Average absolute size of price changes large: about  $10\%$
Golosov-Lucas 07:
2.5\% annual inflation
20\% of prices changing every month
Average absolute size of price change  $10\%$
How can this be?
- BLS micro data allowed researchers to document additional facts about price adjustment
Klenow and Kryvtsov (05,08):
Average absolute size of price changes large: about  $10\%$
Golosov-Lucas 07:
3.5\% annual inflation
20\% of prices changing every month
Average absolute size of price change  $10\%$
- How can this be?
Evidence for large, transitory idiosyncratic shocks that drive price adjustment
Quantitatively assess monetary non-neutrality in menu cost model in light of these facts
Households maximize:
$$
E _ {0} \sum_ {t = 0} ^ {\infty} \beta^ {t} \left[ \log C _ {t} - \omega L _ {t} \right]
$$ where
$$

C _ {t} = \left[ \int_ {0} ^ {1} c _ {t} (z) ^ {\frac {\theta - 1}{\theta}} d z \right] ^ {\frac {\theta}{\theta - 1}}

$$ subject to:
$$

P _ {t} C _ {t} + Q _ {t, t + 1} B _ {t + 1} \leq B _ {t} + W _ {t} L _ {t} + \int_ {0} ^ {1} \Pi_ {t} (z) d z

$$ and natural borrowing limits
Cost minimization implies
$$ c _ {t} (z) = C _ {t} \left(\frac {p _ {t} (z)}{P _ {t}}\right) ^ {- \theta}
$$

Cost minimization implies

$$ c _ {t} (z) = C _ {t} \left(\frac {p _ {t} (z)}{P _ {t}}\right) ^ {- \theta}
$$

Labor-leisure optimization yields:

$$
W _ {t} = \omega P _ {t} C _ {t}
$$

So, nominal wages are proportional to nominal output

Define nominal aggregate demand as:

$$
S _ {t} = P _ {t} C _ {t}
$$

Suppose central banks varies interest rate / money supply in such a way that log nominal aggregate demand follows a random walk:

$$
\log S _ {t} = \mu \log S _ {t - 1} + \eta_ {t}
$$ where  $\eta_t\sim \mathsf{N}(0,\sigma_\eta^2)$
This is aggregate source of uncertainty in the model
Linear production function
$$ y _ {t} (z) = A _ {t} (z) L _ {t} (z)
$$

This implies that marginal cost of production is  $W_{t} / A_{t}(z)$ .

Linear production function

$$ y _ {t} (z) = A _ {t} (z) L _ {t} (z)
$$

This implies that marginal cost of production is  $W_{t} / A_{t}(z)$ . Idiosyncratic productivity follows an AR(1) in logs:

$$
\log A _ {t} (z) = \rho \log A _ {t - 1} (z) + \epsilon_ {t} (z)
$$ where  $\epsilon_t(z) \sim \mathsf{N}(0, \sigma_\epsilon^2)$ .
Firm maximizes value of expected profits
$$

E _ {t} \sum_ {\tau = 0} ^ {\infty} D _ {t, t + \tau} \Pi_ {t + \tau} (z)

$$ where profits are
$$

\Pi_ {t} (z) = p _ {t} (z) y _ {t} (z) - W _ {t} L _ {t} (z) - \chi_ {j} W _ {t} I _ {t} (z) - P _ {t} U

$$
- Firm must hire  $\chi_{j}$  units of labor to change price
$\circ U$  fixed cost of operation
(helpful to reconcile large markups with small profits)
$D_{t,t + \tau}$  is household's stochastic discount factor
# HOW TO SOLVE FIRM'S PROBLEM
- "Perturbation methods" won't work due to fixed cost
- "Perturbation methods" won't work due to fixed cost
- Alternative: Dynamic programming, i.e., set up a Bellman equation
$$

V (Z _ {t}) = \max  _ {p _ {t}} \left[ \Pi_ {t} ^ {R} (z) + E \left[ D _ {t, t + 1} ^ {R} V (Z _ {t + 1}) \right] \right.

$$
$$

\Pi_ {t} ^ {R} (z) = C _ {t} \left(\frac {p _ {t} (z)}{P _ {t}}\right) ^ {- \theta} \left(\frac {p _ {t} (z)}{P _ {t}} - \frac {1}{A _ {t} (z)} \frac {W _ {t}}{P _ {t}}\right) - \chi_ {j} \frac {W _ {t}}{P _ {t}} I _ {t} (z) - U

$$
$Z_{t}$  denotes vector of state variables
- "Perturbation methods" won't work due to fixed cost
- Alternative: Dynamic programming, i.e., set up a Bellman equation
$$

V (Z _ {t}) = \max  _ {p _ {t}} \left[ \Pi_ {t} ^ {R} (z) + E \left[ D _ {t, t + 1} ^ {R} V (Z _ {t + 1}) \right] \right.

$$
$$

\Pi_ {t} ^ {R} (z) = C _ {t} \left(\frac {p _ {t} (z)}{P _ {t}}\right) ^ {- \theta} \left(\frac {p _ {t} (z)}{P _ {t}} - \frac {1}{A _ {t} (z)} \frac {W _ {t}}{P _ {t}}\right) - \chi_ {j} \frac {W _ {t}}{P _ {t}} I _ {t} (z) - U

$$
$Z_{t}$  denotes vector of state variables
Key question: What is the state?
- Generic answer: All variables that affect firm's value
- "Perturbation methods" won't work due to fixed cost
- Alternative: Dynamic programming, i.e., set up a Bellman equation
$$

V (Z _ {t}) = \max  _ {p _ {t}} \left[ \Pi_ {t} ^ {R} (z) + E \left[ D _ {t, t + 1} ^ {R} V (Z _ {t + 1}) \right] \right.

$$
$$

\Pi_ {t} ^ {R} (z) = C _ {t} \left(\frac {p _ {t} (z)}{P _ {t}}\right) ^ {- \theta} \left(\frac {p _ {t} (z)}{P _ {t}} - \frac {1}{A _ {t} (z)} \frac {W _ {t}}{P _ {t}}\right) - \chi_ {j} \frac {W _ {t}}{P _ {t}} I _ {t} (z) - U

$$
$Z_{t}$  denotes vector of state variables
Key question: What is the state?
- Generic answer: All variables that affect firm's value
$A_{t}(z),p_{t - 1}(z) / P_{t},C_{t}$
- "Perturbation methods" won't work due to fixed cost
- Alternative: Dynamic programming, i.e., set up a Bellman equation
$$

V (Z _ {t}) = \max  _ {p _ {t}} \left[ \Pi_ {t} ^ {R} (z) + E \left[ D _ {t, t + 1} ^ {R} V (Z _ {t + 1}) \right] \right.

$$
$$

\Pi_ {t} ^ {R} (z) = C _ {t} \left(\frac {p _ {t} (z)}{P _ {t}}\right) ^ {- \theta} \left(\frac {p _ {t} (z)}{P _ {t}} - \frac {1}{A _ {t} (z)} \frac {W _ {t}}{P _ {t}}\right) - \chi_ {j} \frac {W _ {t}}{P _ {t}} I _ {t} (z) - U

$$
$Z_{t}$  denotes vector of state variables
Key question: What is the state?
- Generic answer: All variables that affect firm's value
$A_{t}(z),p_{t - 1}(z) / P_{t},C_{t}$
- Any variable that is needed to forecast  $Z_{t+1}$  (e.g.,  $C_{t+1}$  and  $P_{t+1}$ )
- "Perturbation methods" won't work due to fixed cost
- Alternative: Dynamic programming, i.e., set up a Bellman equation
$$

V (Z _ {t}) = \max  _ {p _ {t}} \left[ \Pi_ {t} ^ {R} (z) + E \left[ D _ {t, t + 1} ^ {R} V (Z _ {t + 1}) \right] \right.

$$
$$

\Pi_ {t} ^ {R} (z) = C _ {t} \left(\frac {p _ {t} (z)}{P _ {t}}\right) ^ {- \theta} \left(\frac {p _ {t} (z)}{P _ {t}} - \frac {1}{A _ {t} (z)} \frac {W _ {t}}{P _ {t}}\right) - \chi_ {j} \frac {W _ {t}}{P _ {t}} I _ {t} (z) - U

$$
$Z_{t}$  denotes vector of state variables
Key question: What is the state?
- Generic answer: All variables that affect firm's value
$A_{t}(z),p_{t - 1}(z) / P_{t},C_{t}$
- Any variable that is needed to forecast  $Z_{t+1}$  (e.g.,  $C_{t+1}$  and  $P_{t+1}$ )
- Entire joint distribution of  $(p_{t - 1}(z) / P_t, A_t(z))$
Krusell-Smith (1998):
- Assume firms are slightly boundedly rational
- Firms perceive price level as being a function of a small number of moments of the joint distribution of  $(p_t(z) / P_t, A_t(z))$
Krusell-Smith (1998):
- Assume firms are slightly boundedly rational
- Firms perceive price level as being a function of a small number of moments of the joint distribution of  $(p_t(z) / P_t, A_t(z))$
$\bullet$  Response to single unexpected shock
- Conjecture path for endogenous aggregates
- Solve household problem conditional on this by backward induction
Simulate and update conjecture
Krusell-Smith (1998):
- Assume firms are slightly boundedly rational
- Firms perceive price level as being a function of a small number of moments of the joint distribution of  $(p_t(z) / P_t, A_t(z))$
$\bullet$  Response to single unexpected shock
- Conjecture path for endogenous aggregates
- Solve household problem conditional on this by backward induction
Simulate and update conjecture
Reiter (2009) method
- Continuous time methods (Ahn-Kaplan-Moll-Winberry-Wolf 17) More generally, see Ben Moll's website and Alisdair McKay's website.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/59379369496b678d4911352c11f4341ecc9cbad120ff0c75b759b4a8a39a9513.jpg)
FIG. 1.-Pricing bounds for 0.64 percent quarterly inflation. Solid lines: upper and lower bounds  $U(v)$  and  $L(v)$ . Dotted line:  $g(v)$ .
Source: Golosov and Lucas (2007)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/160e0081bad39caacc6bb43dcd18ca1261d6992dd4720976db03e4bc3845a94d.jpg)
Policy Function
Left axis: Prior price. Right axis: Marginal cost. Vertical axis: New price.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/774d238b1e81b3b903343d1d62436cffc98ddfc6b62a5244dde01a57df6bf3f5.jpg)
FIG. 3.-Fraction of prices changed each month
Source: Golosov and Lucas (2007)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/f1522aa32bc9a592f09219f5d4bba5d8e450d331d26b910f446f67e31aa57ac4.jpg)
Sample path without idiosyncratic shocks. Small price changes. No price decreases.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/10079c08c2502533f598128a92f817e1b839db48c3de3de27ff814a93d5f0f2c.jpg)
Sample path with idiosyncratic shocks.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/97e103b09b9d79d6d7c309134c7f2dc2d2d563507ca7f29095b2adc0891667c4.jpg)
FIG. 5.—Output responses in menu cost and Calvo models
Source: Golosov and Lucas (2007)
$\bullet$  Very strong selection effect
- 6 times less monetary non-neutrality than in Calvo model
$\bullet$  Very strong selection effect
- 6 times less monetary non-neutrality than in Calvo model
- Bottom line: Realistic menu cost model yields monetary non-neutrality that is "small and transient"
Bils and Klenow (2004)
- Prices change every 4-5 months
Golosov and Lucas (2007)
- Monetary non-neutrality is "small and transient"
Perhaps Golosov-Lucas model not sufficiently realistic to yield credible policy conclusions
Perhaps Golosov-Lucas model not sufficiently realistic to yield credible policy conclusions
Empirical Issues:
- How should we treat temporary sales?
Perhaps Golosov-Lucas model not sufficiently realistic to yield credible policy conclusions
Empirical Issues:
- How should we treat temporary sales?
- How does heterogeneity in price rigidity matter?
Perhaps Golosov-Lucas model not sufficiently realistic to yield credible policy conclusions
Empirical Issues:
- How should we treat temporary sales?
- How does heterogeneity in price rigidity matter?
- Are all price changes selected?
Perhaps Golosov-Lucas model not sufficiently realistic to yield credible policy conclusions
# Empirical Issues:
- How should we treat temporary sales?
- How does heterogeneity in price rigidity matter?
- Are all price changes selected?
- What is a realistic distribution of idiosyncratic shocks?
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/d792e000d59079e5742481e1ae107eb329195095f537d448fa0bdd560d0fac2b.jpg)
Figure 2
Price series of Nabisco Premium Saltines (16 oz) at a Dominick's Finer Foods store in Chicago.
Source: Nakamura and Steinsson (2013)
# Two features stand out:
1. Change in "regular" price is infrequent and "lumpy"
- Only 9 "regular price" changes in a 7 year period
# Two features stand out:
1. Change in "regular" price is infrequent and "lumpy"
- Only 9 "regular price" changes in a 7 year period
2. Frequent temporary discounts (sales)
117 price changes in 365 weeks
# Two features stand out:
1. Change in "regular" price is infrequent and "lumpy"
- Only 9 "regular price" changes in a 7 year period
2. Frequent temporary discounts (sales)
117 price changes in 365 weeks
- Does this product have essentially flexible prices?
- Or is it's price highly rigid?
Table: Frequency of Price Change by Major Group 1998-2005
<table><tr><td>Major Group</td><td>Weight</td><td>Reg. Price Freq.</td><td>Price Freq.</td><td>Frac. Price Ch. Sales</td></tr><tr><td>Processed Food</td><td>8.2</td><td>10.5</td><td>25.9</td><td>57.9</td></tr><tr><td>Unprocessed Food</td><td>5.9</td><td>25.0</td><td>37.3</td><td>37.9</td></tr><tr><td>Household Furnishing</td><td>5.0</td><td>6.0</td><td>19.4</td><td>66.8</td></tr><tr><td>Apparel</td><td>6.5</td><td>3.6</td><td>31.0</td><td>87.1</td></tr><tr><td>Transportation Goods</td><td>8.3</td><td>31.3</td><td>31.3</td><td>8.0</td></tr><tr><td>Recreation Goods</td><td>3.6</td><td>6.0</td><td>11.9</td><td>49.1</td></tr><tr><td>Other Goods</td><td>5.4</td><td>15.0</td><td>15.5</td><td>32.6</td></tr><tr><td>Utilities</td><td>5.3</td><td>38.1</td><td>38.1</td><td>0.0</td></tr><tr><td>Vehicle Fuel</td><td>5.1</td><td>87.6</td><td>87.6</td><td>0.0</td></tr><tr><td>Travel</td><td>5.5</td><td>41.7</td><td>42.8</td><td>1.5</td></tr><tr><td>Services (excl. Travel)</td><td>38.5</td><td>6.1</td><td>6.6</td><td>3.1</td></tr></table>
Source: Nakamura and Steinsson (2008)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/f5db5b625bfefd57f8d65c100e232c7100efb12f1db637e7fb48436c890549a8.jpg)
Processed Food
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/f77f07c8311ddb5319e0827b9f4119c65df81a762e6d26005bc598742fc5f53f.jpg)
Unprocessed Food
Apparel
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/413a382750ac44b27ecf8f75536434d4a063241b4363830f95dbda848b504093.jpg)
Source: Nakamura-Steinsson-Sun-Villar (2018)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/54e40406164bc638bcf1293509c55221808fc7517445ec867d8288091c36963d.jpg)
Household Furnishings
Table 1 Frequency of price change in consumer prices
<table><tr><td></td><td colspan="2">Median</td><td colspan="2">Mean</td></tr><tr><td></td><td>Frequency</td><td>Implied duration</td><td>Frequency</td><td>Implied duration</td></tr><tr><td colspan="5">Nakamura &amp; Steinsson (2008)</td></tr><tr><td>Regular prices (excluding substitutions 1988–1997)</td><td>11.9</td><td>7.9</td><td>18.9</td><td>10.8</td></tr><tr><td>Regular prices (excluding substitutions 1998–2005)</td><td>9.9</td><td>9.6</td><td>21.5</td><td>11.7</td></tr><tr><td>Regular prices (including substitutions 1988–1997)</td><td>13.0</td><td>7.2</td><td>20.7</td><td>9.0</td></tr><tr><td>Regular prices (including substitutions 1998–2005)</td><td>11.8</td><td>8.0</td><td>23.1</td><td>9.3</td></tr><tr><td>Posted prices (including substitutions 1998–2005)</td><td>20.5</td><td>4.4</td><td>27.7</td><td>7.7</td></tr><tr><td colspan="5">Klenow &amp; Kryvtsov (2008)</td></tr><tr><td>Regular prices (including substitutions 1988–2005)</td><td>13.9</td><td>7.2</td><td>29.9</td><td>8.6</td></tr><tr><td>Posted prices (including substitutions 1988–2005)</td><td>27.3</td><td>3.7</td><td>36.2</td><td>6.8</td></tr></table>
Source: Nakamura and Steinsson (2013)
- Temporary sales have very special empirical characteristics
They are highly transient
They very often return to the original price
Strongly suggests that firms are not reoptimizing
- How do these empirical characteristics affect degree to which temporary sales enhance the flexibility of the aggregate price level?
Table 2 Transience of temporary sales
<table><tr><td></td><td>Fraction return after one-period sales</td><td>Frequency of regular price change</td><td>Frequency of price change during one-period sales</td><td>Average duration of sales</td></tr><tr><td>Processed food</td><td>78.5</td><td>10.5</td><td>11.4</td><td>2.0</td></tr><tr><td>Unprocessed food</td><td>60.0</td><td>25.0</td><td>22.5</td><td>1.8</td></tr><tr><td>Household furnishings</td><td>78.2</td><td>6.0</td><td>11.6</td><td>2.3</td></tr><tr><td>Apparel</td><td>86.3</td><td>3.6</td><td>7.1</td><td>2.1</td></tr></table>
The sample period is 1998-2005. The first data column gives the median fraction of prices that return to their original level after one-period sales. The second is the median frequency of price changes excluding sales. The third lists the median monthly frequency of regular price change during sales that past one month. The monthly frequency is calculated as  $1 - (1 - f)^{0.5}$ , where  $f$  is the fraction of prices that return to their original levels after one-period sales. The fourth data column gives the weighted average duration of sale periods in months. Data taken from Nakamura & Steinsson (2008).
Source: Nakamura and Steinsson (2013)
- Temporary sales have very special empirical characteristics
They are highly transient
They very often return to the original price
Strongly suggests that firms are not reoptimizing
- How do these empirical characteristics affect degree to which temporary sales enhance the flexibility of the aggregate price level?
- Menu cost model (also consider Calvo model)
Firms can change prices for one period at lower cost
- Change regular price permanently ("buy" a new price)
Temporary sale ("rent" a new price)
- Menu cost model (also consider Calvo model)
Firms can change prices for one period at lower cost
- Change regular price permanently ("buy" a new price)
Temporary sale ("rent" a new price)
- Timing of sales chosen optimally and responds to macro shocks
- Menu cost model (also consider Calvo model)
Firms can change prices for one period at lower cost
- Change regular price permanently ("buy" a new price)
Temporary sale ("rent" a new price)
- Timing of sales chosen optimally and responds to macro shocks
- Nevertheless, sales generate very little aggregate price flexibility
- Results on monetary non-neutrality close to those if sales had been excluded
- Two Views of Sales:
- Intertemporal price discrimination (e.g., Varian, 1980)
Inventory Management (e.g., Lazear, 1986)
Due to unpredictable shifts in taste (fashion)?
- How should we treat temporary sales?
- How does heterogeneity in price rigidity matter?
- Are all price changes selected?
- What is a realistic distribution of idiosyncratic shocks?
Table 1 Frequency of price change in consumer prices
<table><tr><td></td><td colspan="2">Median</td><td colspan="2">Mean</td></tr><tr><td></td><td>Frequency</td><td>Implied duration</td><td>Frequency</td><td>Implied duration</td></tr><tr><td colspan="5">Nakamura &amp; Steinsson (2008)</td></tr><tr><td>Regular prices (excluding substitutions 1988–1997)</td><td>11.9</td><td>7.9</td><td>18.9</td><td>10.8</td></tr><tr><td>Regular prices (excluding substitutions 1998–2005)</td><td>9.9</td><td>9.6</td><td>21.5</td><td>11.7</td></tr><tr><td>Regular prices (including substitutions 1988–1997)</td><td>13.0</td><td>7.2</td><td>20.7</td><td>9.0</td></tr><tr><td>Regular prices (including substitutions 1998–2005)</td><td>11.8</td><td>8.0</td><td>23.1</td><td>9.3</td></tr><tr><td>Posted prices (including substitutions 1998–2005)</td><td>20.5</td><td>4.4</td><td>27.7</td><td>7.7</td></tr><tr><td colspan="5">Klenow &amp; Kryvtsov (2008)</td></tr><tr><td>Regular prices (including substitutions 1988–2005)</td><td>13.9</td><td>7.2</td><td>29.9</td><td>8.6</td></tr><tr><td>Posted prices (including substitutions 1988–2005)</td><td>27.3</td><td>3.7</td><td>36.2</td><td>6.8</td></tr></table>
Source: Nakamura and Steinsson (2013)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/134e02112e70d7951e79f126599b9dbf8a9a5acb29b6e8971e881b342330a811.jpg)
Figure 3
The expenditure weighted distribution of the frequency of regular price change (percent per month) across product categories (entry-level items) in the US Consumer Price Index (CPI) for the period 1998-2005. Data taken from Nakamura & Steinsson (2008).
Source: Nakamura and Steinsson (2013)
Distribution is skewed: long right tail
- Many products with low frequency
- Some products with very high frequency
- Different summary statistics give impressions:
- Excl. sales: Mean freq:  $23\%$ , median freq:  $11\%$
Questions:
- Does this heterogeneity matter for aggregate monetary non-neutrality?
- What statistic should single sector models be calibrated to?
Heterogeneity matters a lot!
No model free answer for calibrating a single sector model
Heterogeneity matters a lot!
No model free answer for calibrating a single sector model
In Taylor model: Bils-Klenow (2002) use median frequency
Heterogeneity matters a lot!
- No model free answer for calibrating a single sector model
In Taylor model: Bils-Klenow (2002) use median frequency
- In Calvo model: Carvalho (2007) use mean implied duration (NOT = inverse of mean frequency)
Heterogeneity matters a lot!
No model free answer for calibrating a single sector model
In Taylor model: Bils-Klenow (2002) use median frequency
- In Calvo model: Carvalho (2007) use mean implied duration (NOT = inverse of mean frequency)
- In menu cost model: Nakamura and Steinsson (2010) say use median frequency for US data (no general theorem)
- Intuition: Extra price change not as useful in high frequency sector since everyone has already changed
- How should we treat temporary sales?
- How does heterogeneity in price rigidity matter?
- Are all price changes selected?
- What is a realistic distribution of idiosyncratic shocks?
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/9bc068865ba58a032b1e1185666853e1e99d94768b26aa49aab6c75a0283bf5c.jpg)
Household Furnishings
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/89c3107ba6a8e16e3679a23ccb8b75643ef29f3ed1e44fdb32bd7e2fff77a1f4.jpg)
Apparel
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/29182b6e673db693267e883fbebff763bde7cc9988ee74faf3b67cdfc9a39b65.jpg)
Transportation Goods
Figure: Seasonality in Product Substitution
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/25e7672e079aa911fdfdb5eba3f3105c1ef1da72a7d2e1038f62aeb18ab722d8.jpg)
Recreation Goods
Source: Nakamura and Steinsson (2008)
# Nakamura and Steinsson 10:
- Consider version of model in which substitutions are not selected (i.e., substitutions are like Calvo price changes, while other price changes are selected)
Non-selected price changes matter very little
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/81348e2d35a44b66a19d922ea863ef8c2480d5c0d40cbfac86185efb7ea479fb.jpg)
Frequency of Regular Price Increases and Decreases by Month for Consumer Prices
Source: Nakamura and Steinsson (2008)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/88a0b09148f106fcc9e10e44171923c5db782f34bfe3ecf3e97aa3bf3ab01fd9.jpg)
Figure 19: Frequency of Regular Price Increases and Decreases by Month for Finished Producer Goods
The figure plots the weighted median frequency of price increase and decrease by month.
Source: Nakamura and Steinsson (2008 Supplement)
- How should re treat temporary sales?
- How does heterogeneity in price rigidity matter?
- Are all price changes selected?
- What is a realistic distribution of idiosyncratic shocks?
Strength of selection effect highly sensitive to assumptions about distribution of idiosyncratic shocks
Strength of selection effect highly sensitive to assumptions about distribution of idiosyncratic shocks
Golosov-Lucas 07 assume normal shocks
- Suppose we instead assume shocks are either tiny or huge i.e., that they have huge kurtosis
Strength of selection effect highly sensitive to assumptions about distribution of idiosyncratic shocks
Golosov-Lucas 07 assume normal shocks
- Suppose we instead assume shocks are either tiny or huge i.e., that they have huge kurtosis
In the limit, model becomes much like Calvo
Strength of selection effect highly sensitive to assumptions about distribution of idiosyncratic shocks
Golosov-Lucas 07 assume normal shocks
- Suppose we instead assume shocks are either tiny or huge i.e., that they have huge kurtosis
In the limit, model becomes much like Calvo
Midrigan evidence:
Size of price changes dispersed
- Many small price changes
Coordination of timing of price changes within category
# Distribution of  $p$  changes: Data vs. GL model
All price changes
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/963e674fefebd5ff5f76804ff934db51bad6d1409b3565ee56e6cdf9abd89a7a.jpg)
Source: Midrigan (2011)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/709a841df960ac9276519ee24bd59d7a5cbca7c069ac8df31bc4daad4be8f139.jpg)
Regular price changes
Two changes to Golosov-Lucas model:
- Leptokurtic distribution of idiosyncratic shocks
- Returns to scale in price adjustment
Two changes to Golosov-Lucas model:
- Leptokurtic distribution of idiosyncratic shocks
- Returns to scale in price adjustment
Selection effect much smaller.
Model yields similar conclusions as Calvo model
# Alvarez-Le Bihan-Lippi 15:
In a wide class of models ...
(Calvo, Taylor, Golosov-Lucas, Reis, Midrigan, etc.)
Cumulative output effect of money shock:
$$

\mathcal {M} = \frac {\delta}{6 \epsilon} \frac {\operatorname {K u r} (\Delta p _ {i})}{\operatorname {N} (\Delta p _ {i})}

$$
$\delta$  size of monetary shock
1/ε-1 Frisch elasticity of labor supply
-  $\operatorname{Kur}(\Delta p_i)$  kurtosis of size distribution of price changes
-  $\mathrm{N}\left( {\Delta {p}_{i}}\right)$  frequency of price change
# Alvarez-Le Bihan-Lippi 15:
In a wide class of models ...
(Calvo, Taylor, Golosov-Lucas, Reis, Midrigan, etc.)
Cumulative output effect of money shock:
$$

\mathcal {M} = \frac {\delta}{6 \epsilon} \frac {\operatorname {K u r} (\Delta p _ {i})}{\operatorname {N} (\Delta p _ {i})}

$$
$\bullet$ $\delta$  size of monetary shock
1/ε-1 Frisch elasticity of labor supply
-  $\operatorname{Kur}(\Delta p_i)$  kurtosis of size distribution of price changes
-  $\mathrm{N}\left( {\Delta {p}_{i}}\right)$  frequency of price change
- Obviously, there are some simplifying assumptions
(e.g., unit root shock, no inflation, no strategic complementarity, etc.)
$$

\mathcal {M} = \frac {\delta}{6 \epsilon} \frac {\operatorname {K u r} (\Delta p _ {i})}{\operatorname {N} (\Delta p _ {i})}

$$
Kurtosis in Calvo model is 6
Kurtosis in Golosov-Lucas model is 1
Kurtosis is hard to measure!!
Heterogeneity:
- Mixture of distributions with different variances but same kurtosis will have higher kurtosis
- Authors divide by standard deviation at category level
- Measurement errors:
- Standard to drop large observations. Kurtosis very sensitive to this!!
Authors drop largest  $1\%$  of price changes
Spurious small price changes also a problem (product not held constant, coupons)
Authors drop price changes that are smaller than 1 cent or  $0.1\%$
Distinction between time-dependent and state-dependent pricing models important for key questions:
Degree of monetary non-neutrality
Costs of inflation
Distinction between time-dependent and state-dependent pricing models important for key questions:
Degree of monetary non-neutrality
Costs of inflation
Which class of models does the evidence favor?
- Calvo model implies that frequency of price change doesn't change as inflation changes
- Menu cost model implies that frequency increases
- Calvo model implies that frequency of price change doesn't change as inflation changes
- Menu cost model implies that frequency increases
- Empirical Strategy: Measure how frequency changes as inflation changes
- Calvo model implies that frequency of price change doesn't change as inflation changes
- Menu cost model implies that frequency increases
- Empirical Strategy: Measure how frequency changes as inflation changes
Gagnon 09: Mexico 1994-2002 (Tequila crisis)
- Nakamura-Steinsson-Sun-Villar 18: U.S. 1978-2014 (Great Inflation/Volcker disinflation)
- Alvarez-Baraja-Gonzalez-Rozada-Neumeyer 19: Argentina 1988-1997 (Hyperinflation /Stabilization)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/7a056bc68573e22905ba99f26ddddc2aff7c0c0e713d4755fac91c182702f679.jpg)
FIGURE I
Inflation and Time Coverage of U.S., Euro-Area, and Mexican CPI Studies Source: Gagnon (2009)
(a) Frequency of price changes a) Frequency all items
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/0eaa01a8c4f648adbcb81bdffcf6132c0a22fb2ef34e54cfeee49a3aa3b9868c.jpg)
Source: Gagnon (2009)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/d856c9d9de368dcbf7c4ee2c3cefe05468c0d7bd5f19d1f54218312d5dbef61d.jpg)
Source: Gagnon (2009). Diamonds: data on changes. Boxes: data on increases.
Triangles: data on decreases. Lines: corresponding statistics from model.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/a4b468dbb841062f97abbb0def7ed3fc6dce39c9333c9148e61a46560c397ecd.jpg)
Figure 12: Frequency of Price Changes in U.S. Data
Source: Nakamura-Steinsson-Sun-Villar (2018)
# At zero inflation:
$\bullet$  Derivative of frequency  $= 0$
Derivative of price dispersion  $= 0$
Inflation 9/10th due to "extensive margin"
$$

\pi = \lambda^ {+} \Delta^ {+} - \lambda^ {-} \Delta^ {-}

$$
# At zero inflation:
$\bullet$  Derivative of frequency  $= 0$
Derivative of price dispersion  $= 0$
Inflation 9/10th due to "extensive margin"
$$

\pi = \lambda^ {+} \Delta^ {+} - \lambda^ {-} \Delta^ {-}

$$
# At high inflation:
- Elasticity of frequency with inflation equal to 2/3
- Elasticity of dispersion with inflation equal to  $1 / 3$
Figure 5: Estimated Frequency of Price Changes  $\lambda$  and Expected Inflation
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/a7254264a22825d71f46aa1867e26828ea920ecb9a79f166571797ecb0ec0c73.jpg)
Source: Alvarez-Beraja-Gonzalez-Rozada-Neumeyer (2019)
Figure 6: The Frequency of Price Changes  $(\lambda)$  and Expected Inflation.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/ccfb3ba7451ee615a55a7c530191e3546304443eede9fae2a01d6a7323fe744b.jpg)
Source: Alvarez-Beraja-Gonzalez-Rozada-Neumeyer (2019)
Large changes in technology over past 40 years
- Perhaps costs of changing prices have fallen?
- This would make price changes more frequent
Large changes in technology over past 40 years
- Perhaps costs of changing prices have fallen?
- This would make price changes more frequent
- However, evolution of frequency of price (excluding sales) change can be explained by menu cost model with a constant menu cost over entire sample period
- Regular prices have not become more flexible
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/a5a462a0c9a7910169bdc1cd828dc09b5db98173384c9a7ed77dc9b265ae1729.jpg)
Frequency of Price Change in Data and Model
Figure 14: Predicted and Actual Frequency of Price Changes
Source: Nakamura-Steinsson-Sun-Villar (2018)
What level of inflation should central banks target?
Pre-crisis policy consensus to target roughly  $2\%$  inflation per year
- Academic studies argued for still lower rates (Schmitt-Grohe and Uribe, 2011; Coibion et al., 2012)
What level of inflation should central banks target?
Pre-crisis policy consensus to target roughly  $2\%$  inflation per year
- Academic studies argued for still lower rates (Schmitt-Grohe and Uribe, 2011; Coibion et al., 2012)
- Great Recession has lead to increasing calls for higher inflation targets
- Blanchard, Dell'Ariccia, Mauro (2010), Ball (2014), Krugman (2014)
- Blanco (2015)
- Higher inflation will lead to higher price dispersion
- Prices will drift further from optimum between times of adjustment
Distorts allocative role of the price system
Higher inflation will lead to higher price dispersion
- Prices will drift further from optimum between times of adjustment
Distorts allocative role of the price system
- In standard New Keynesian models, these costs are very large
- Going from  $0\%$  to  $12\%$  inflation per year yields a  $10\%$  loss of welfare
- Much more costly than business cycle fluctuations in output in these same models
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/6ab0e741a8570409416db998652b971fd4ae6066e56f323402d350400299865b.jpg)
Welfare Loss
Measure sensitivity of inefficient price dispersion to changes in inflation
Measure sensitivity of inefficient price dispersion to changes in inflation
# Challenges:
1. Very limited variation in inflation over last 30 years!
Measure sensitivity of inefficient price dispersion to changes in inflation
# Challenges:
1. Very limited variation in inflation over last 30 years!
- Extend BLS micro-data on consumer prices back to 1977
- Covers "Great Inflation" and Volcker disinflation
Measure sensitivity of inefficient price dispersion to changes in inflation
# Challenges:
1. Very limited variation in inflation over last 30 years!
- Extend BLS micro-data on consumer prices back to 1977
- Covers "Great Inflation" and Volcker disinflation
2. Difficulty in interpreting raw price dispersion
Measure sensitivity of inefficient price dispersion to changes in inflation
# Challenges:
1. Very limited variation in inflation over last 30 years!
- Extend BLS micro-data on consumer prices back to 1977
- Covers "Great Inflation" and Volcker disinflation
2. Difficulty in interpreting raw price dispersion
Heterogeneity in size and quality of products
- Absolute size of price changes informative about inefficient price dispersion
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/858ca975b3fa60825f3772a4c985de8ec9c09862f836e42e08ce7e1de48f1591.jpg)
Mean Absolute Size of Price Changes
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/40fd5347f9ed04d11245ed77155f4513280861cfa7dcb2c45923dc0ed93e28aa.jpg)
12 Month CPI Inflation
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/f0937e954e20c221b64a977ad74cc362163e9f0de965fea566c187e5898f9965.jpg)
Absolute Size of Price Changes
- No evidence that absolute size of price changes rose during Great Inflation
- Suggests inefficient price dispersion not any higher during Great Inflation
Costs of inflation emphasized in New Keynesian models elusive
# PHILLIPS CURVE ESTIMATION: BASICS

UC Berkeley
September 2021
- Phillips 58 points out empirical relationship between wage inflation and unemployment in UK 1861-1957
Samuelson-Solow 60 popularize idea in US
# INFLATION AND UNEMPLOYMENT IN THE UK
Fig.1.1861-1913
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/a4d987d358e5e69496cba089229d4c40b6f758b5f9eb418d61c140e835927a61.jpg)
Source: Phillips (1958)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/dcaa955433f1b7e5f24c1695850f789f841276247d8bda9235f9a02d12e1b20b.jpg)
Source: Phillips (1958)
Fig.3.1868-1879
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/0cca5193bd12cdcc94c2e8d0494bfba685ba4ed73f4a4a8432f80b8964c02a29.jpg)
Source: Phillips (1958)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/150be1e84d53ca9ab4fc241bce8a9a1cc87ac8bf0c83951cdf8fde83e83ca011.jpg)
Fig.5. 1886-1893
Source: Phillips (1958)
Fig.6.1893-1904
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/6bc6477dcc2055e7aeaae77c267c6f52f2aeae8dd79c8f42f6e4445104106180.jpg)
Source: Phillips (1958)
- Phillips curve viewed as a menu of options
- Policy makers can lower unemployment if they are willing to tolerate more inflation
# INFLATION AND UNEMPLOYMENT IN THE US
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/2ecad5951b2c413474204b3378ca8a96ce6116323f3604dc2ecb111b2ab5ebfc.jpg)
# Friedman 68 and Phelps 67:
- Policymakers cannot exploit a stable Phillips curve forever
- Workers will demand wage increases in excess of expected inflation
- As inflation rises, expectations of inflation will rise
Changes in expected inflation will shift the Phillips curve
# INFLATION AND UNEMPLOYMENT IN THE US
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/f9d770a2acf16d3f6da6fabd3d3e995ac126157544e476d1970f384128dd011e.jpg)
# FRIEDMAN AND PHELPS WERE RIGHT!
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/57118aa2462046828cd0f1189099f034404ba39b276af3b4f1dc1c62c2583ad8.jpg)
$$

\pi_ {t} = \beta E _ {t} \pi_ {t + 1} + \kappa \left(y _ {t} - y _ {t} ^ {n}\right) + \eta_ {t}

$$
- Three drivers of inflation:
Expected inflation:  $E_{t}\pi_{t + 1}$
Output relative to potential:  $y_{t} - y_{t}^{n}$
Cost-push shocks:  $\eta_t$
- Specific form above based on Calvo 83 sticky-price assumptions Details vary across specifications (e.g., sticky information yields  $\bar{E}_{t - 1}\pi_t$ )
- Structural equation originating from firm's price setting decision
$$

\pi_ {t} = \beta E _ {t} \pi_ {t + 1} + \kappa \left(y _ {t} - y _ {t} ^ {n}\right) + \eta_ {t}

$$
Object of interest: Slope coefficient  $\kappa$
- How much does an increase in "demand" / "tightness" / "output gap" affect inflation
$$

\pi_ {t} = \beta E _ {t} \pi_ {t + 1} + \kappa (y _ {t} - y _ {t} ^ {n}) + \eta_ {t}

$$
Object of interest: Slope coefficient  $\kappa$
- How much does an increase in "demand" / "tightness" / "output gap" affect inflation
Tricky identification issues:
Expected inflation unobserved
- "Natural rate of output" (i.e., supply shocks) unobserved
- Cost push shocks (e.g., variation in desired markups) unobserved All three may cause omitted variables bias
- Pre Friedman/Phelps Phillips curve: Change in output gap needed to change inflation
$$

\pi_ {t} = \mu + \kappa \left(y _ {t} - y _ {t} ^ {n}\right)

$$
- Same is true for accelerationist Phillips curve (i.e., Phillips curve with adaptive expectations)
$$

\pi_ {t} = \pi_ {t - 1} + \kappa \left(y _ {t} - y _ {t} ^ {n}\right)

$$
- Pre Friedman/Phelps Phillips curve: Change in output gap needed to change inflation
$$

\pi_ {t} = \mu + \kappa \left(y _ {t} - y _ {t} ^ {n}\right)

$$
- Same is true for accelerationist Phillips curve (i.e., Phillips curve with adaptive expectations)
$$

\pi_ {t} = \pi_ {t - 1} + \kappa \left(y _ {t} - y _ {t} ^ {n}\right)

$$
- Sargent 82: Hyperinflations end abruptly with little or no output cost Clear violation of aforementioned Phillips curves
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/6a34c11ebce75a66476bf0e4fb6b8ac129538b12457462143d4a98e5aa06544a.jpg)
Fig. 2.4 Wholesale prices in Germany.
Source: Sargent (1982)
- In Calvo model, perfectly credible, unexpected disinflation can occur without any effect on output gap
Expected inflation does all the work
- Theoretical victory: Potential explanation for Sargent facts
- In Calvo model, perfectly credible, unexpected disinflation can occur without any effect on output gap
Expected inflation does all the work
- Theoretical victory: Potential explanation for Sargent facts
Empirical headache:
- Movements in inflation potentially completely unrelated to output gap
- Even if output gap moves during disinflation, not clear what fraction of disinflation was due to shift in expected inflation
- Measurement of expected inflation crucial but hard
Estimation of Phillips curve slope also complicated by classic simultaneity problem
- Need to isolate demand variation to estimate slope
Supply shocks yield "stagflation" (i.e., positive correlation between unemployment and inflation)
- Bias slope estimates towards zero (or "wrong" sign)
# INFLATION EXPECTATIONS + SUPPLY SHOCKS
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/41bcdc429a82b4665c646b3284f1b1283b63780f1b6d5dda7f5c9aaeb2b8745b.jpg)
- Phillips curve often pronounced dead
- Many economists think Phillips curve is an empirical disaster
- Prominent episodes:
- Missing inflation in late 1990s
- Missing disinflation in the Great Recession
- Missing reinflation in the subsequent recovery
- Missing disinflation in the COVID crisis
Seems like inflation is always going missing...
# M MISSING INFLATION IN LATE 1990S
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/3807138a242f1155ca07a29f62490c2055b400999a58cfa3b6c5b276f73ab832.jpg)
Inflation
# MISING DISINFLATION IN THE GREAT RECESSION
16.0
14.0
12.0
10.0
8.0
6.0
4.0
2.0
0.0
2.0
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/35a41527004b210ff884d2ac6572152e36689d71b92d710ecc8cb4b8239a2197.jpg)
Inflation
Unemployment
# MISING REINFLATION SINCE GREAT RECESSION
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/b7212ba1a1deda48e04e71c7720e81568ef527d5caf26f6378cadd344d5febe5.jpg)
- Are Phillips Curves Useful for Forecasting Inflation?
- Answer: No
Methodology:
Compare forecasts from Phillips curve models with "naive" no-change model
Metric of fit: root mean squared error (RMSE)
- "Online" estimation using data from January 1959 onward
Naive model:
$$

E _ {t} \pi_ {t + 1 2} ^ {1 2} = \pi_ {t} ^ {1 2}

$$
- Original Phillips curve:
$$

E _ {t} \pi_ {t + 1 2} ^ {1 2} = \beta (u _ {t} - \bar {u})

$$
NAIRU Phillips curve:
$$

E _ {t} \pi_ {t + 1 2} ^ {1 2} = \pi_ {t} ^ {1 2} + \beta (u _ {t} - \bar {u})

$$
Stock and Watson's (1999) NAIRU Phillips curve:
$$

E _ {t} \pi_ {t + 1 2} ^ {1 2} = \pi_ {t} ^ {1 2} + \alpha + \beta (L) u _ {t} + \gamma (L) \left(\pi_ {t} - \pi_ {t - 1}\right)

$$
(Theirnomenclature)
# Why Use the NAIRU Phillips Curve?
Ratios of Errors of NAIRU and Naive Model* Forecasts of Inflation for 1984-99, Made With Alternative Indicators and Measures
<table><tr><td rowspan="2">Inflation Indicator</td><td rowspan="2">Inflation Measure†</td><td colspan="2">Range of Ratio of NAIRU/Naive RMSEs**</td></tr><tr><td>Minimum</td><td>Maximum</td></tr><tr><td rowspan="3">Unemployment Rate</td><td>PCE Deflator</td><td>1.02</td><td>1.34</td></tr><tr><td>CPI</td><td>.99</td><td>1.32</td></tr><tr><td>Core CPI</td><td>1.06</td><td>1.94</td></tr><tr><td rowspan="3">Activity Index‡</td><td>PCE Deflator</td><td>1.04</td><td>1.23</td></tr><tr><td>CPI</td><td>1.06</td><td>1.32</td></tr><tr><td>Core CPI</td><td>1.33</td><td>1.81</td></tr></table>
Stock and Watson (1999) NAIRU Phillips curve vs. Naive model with different lag lengths from 1 to 12 for both  $\beta(L)$  and  $\gamma(L)$ .
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/aa5f4cadbf08c319bac35385a1e889bb1ec99954b308cb8850c1142f272b70e8.jpg)
Chart 1 A Negative Relationship in 1959-69 . . .
Chart 2 . Disappeared in 1970-1999
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/0f73fc223f27e0130b8385a35d2f1ef4f74ea68d48db7924ff3c6a348a174b2b.jpg)
Unemployment Data (\% of Labor Force)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/dbdf612f209d4fcb094989b62ad96bc95fe23f6a9d97a36957fdd7aee7557bbb.jpg)
Chart 3 The Steep Negative Relationship in 1960-83 . . .
Change in Inflation Rate (\% Points)
# Chart 4 . . . Flattened in 1984-99
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/6ee65611622b840eb3f7d217a2828cef079a1d1c239f3c9670df8ec8f8f825e9.jpg)
Change in Inflation Rate (\% Points)
- Theory does not suggest that the Phillips curve would necessarily be useful for forecasting
- Phillips curve is a supply curve
- Useful for forecasting only if (when) demand variation is dominant (and inflation expectation stable)
- Clearly not true in 1970s and 1980s
- Same as any other market
Supply curve for oil not necessarily useful to forecast price of oil
1. Aggregate Variation with Adaptive or Survey Expectations
Stock-Watson (2010, 2019), Ball-Mazumder (2011, 2019), Coibion-Gorodnichenko (2015)
2. Aggregate Variation with Rational Expectations
Gali-Gertler (1999), Sbordone (2002), Mavroeidis-Plagborg-Muller-Stock (2014)
3. Cross-Sectional Variation
- Fitzgerald-Nicolini (2014), McLeay-Tenreyro (2019), Hazell-Herreno-Nakamura-Steinsson (2021)
- Has the Phillips curve flattened?
- Is there missing disinflation / reinflation?
- Does "anchoring" of inflation expectations explain stability of inflation?
Is there a stable Phillips curve?
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/665a85d3ed8010e38a24043b86b48999ba8e4c57b07a26434e5243e58be2cb94.jpg)
Figure 1: Stock and Watson's Changing Phillips Correlation
- Inflation fell and prices became more sticky (as menu cost model would predict)
Inflation expectations became better anchored
- Output gap and change in inflation expectations correlated in 1970s and 1980s (biased estimates of Phillips curve slope)
- Some other structural change to the economy
- To "see" the Phillips curve, must control for:
Changes in inflation expectations
Supply shocks
Stock and Watson (2010):
- The history of the Phillips curve "is one of apparently stable relationships falling apart upon publication."
- Empirical specification:
$$

\pi_ {t} = \pi_ {t} ^ {e} + \alpha (U _ {t} - U _ {t} ^ {*}) + \epsilon_ {t}

$$
Focus on post-1985 period
- Use "non-standard series":
Median inflation
- Long-run inflation expectations
Short-term unemployment
- Ignore endogeneity
Basic idea to get away from supply shocks
- More common to use core
Supply shocks important in food and energy
Ball and Mankiw (1995):
- Relative price changes (due to supply shocks) can affect aggregate inflation in a menu cost model
Firms in sectors with large shocks will adjust, while others will not
- Ball and Mazumder (2011, 2019): median inflation filters out movements in headline inflation due to large relative price movements in all sectors (not just food and energy)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/4da1300796f65b127638b2ab1a5635ca18d1f5f102a87ca6223c461a026759da.jpg)
- Literature uses various different "slack" measures
- Rationale for short-run unemployment:
- Long-term unemployed are on the margins of the labor force
- Don't put pressure on wages
- Largely co-linear with total unemployment prior to Great Recession
- Not so during Great Recession (smaller rise results in smaller fitted fall in inflation)
# SHORT- RUN UNEMPLOYMENT RATE
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/6be543cb72ad73b8886e956403b257bb3aa92b6994e280e6ee21de893b2a0702.jpg)
- Which inflation expectations should be used?
- Ball and Mazumder (2019) use long-run SPF inflation forecasts
- Doesn't New Keynesian model say one should use one-period-ahead inflation expectations?
- Can one just pick whatever one want's?
- We will come back to this (when discussing cross-sectional papers)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/0eaef9e64bf94b5a2d66880266a85da398bc754a38377911dd7bd1ba32c5101a.jpg)
AN EXPECTATIONS-AUGMENTED PHILLIPS CURVE, 1985-2015
TABLE 1
<table><tr><td></td><td>πt=πte+α(ut-1s−ut*-1)+εt</td></tr><tr><td rowspan="2">α</td><td>-0.756</td></tr><tr><td>(0.077)</td></tr><tr><td>DW</td><td>1.259</td></tr><tr><td>SE of Reg.</td><td>0.383</td></tr><tr><td>R2</td><td>0.824</td></tr></table>
NOTE: OLS with Newey-West (1987) standard errors in parentheses.  $\pi_t$  is median CPI inflation,  $\pi_{t}^{c}$  is the average forecast of long-term CPI inflation from the Survey of Professional Forecasters,  $\overline{u}_{t - 1}^s$  is the average of the short-term unemployment rate from  $t - 1$  to  $t - 4$ , and  $\overline{u}_{t - 1}^{s*}$  is the average of the natural rate of short-term unemployment from  $t - 1$  to  $t - 4$ .
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/5599271e7ad3ade9e627fc31e9e3501f65c28b829cf7b2e35b9c43b2879691e8.jpg)
(a)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/8ae8eebe2f892370a202609eed279e5c5322f9d011a0881617673116e28de262.jpg)
TABLE 2
STABILITY OF THE EXPECTATIONS-AUGMENTED PHILLIPS CURVE
<table><tr><td rowspan="2"></td><td>πt=πt+α(u′t-1- u′s,*)</td><td>εt</td><td rowspan="2">2008Q1-2015Q4</td></tr><tr><td>1985Q1-1997Q4</td><td>1998Q1-2007Q4</td></tr><tr><td>α</td><td>-0.702</td><td>-0.781</td><td>-0.795</td></tr><tr><td></td><td>(0.094)</td><td>(0.228)</td><td>(0.109)</td></tr><tr><td>DW</td><td>1.492</td><td>1.043</td><td>1.286</td></tr><tr><td>SE of Reg.</td><td>0.361</td><td>0.436</td><td>0.353</td></tr><tr><td>R²</td><td>0.764</td><td>0.316</td><td>0.755</td></tr><tr><td>p-Value for stability</td><td></td><td>0.813</td><td></td></tr></table>
NOTE: OLS with Newey-West (1987) standard errors in parentheses.  $\pi_t$  is median CPI inflation,  $\pi_t^e$  is the average forecast of long-term CPI inflation from the Survey of Professional Forecasters,  $\overline{u}_{t - 1}^s$  is the average of the short-term unemployment rate from  $t - 1$  to  $t - 4$ , and  $\overline{u}_{t - 1}^{**}$  is the average of the natural rate of short-term unemployment from  $t - 1$  to  $t - 4$ . The reported  $p$ -value is for a Wald test of the hypothesis that  $\alpha$  is equal in the three subsamples.
- Anchored Expectations:
$$

\pi_ {t} ^ {\boldsymbol {e}} = 2. 5 + \epsilon_ {t}

$$
- Backward-Looking Expectations:
$$

\pi_ {t} ^ {e} = \frac {1}{1 - \gamma^ {4 0}} [ (1 - \gamma) \pi_ {t - 1} + \gamma (1 - \gamma) \pi_ {t - 2} + \ldots + \gamma^ {3 9} (1 - \gamma) \pi_ {t - 4 0} ] + \epsilon_ {t}

$$
- Nested Specification:
Weighted average with weight  $\lambda$
- Ball-Mazumder estimate this allowing for a break in  $\lambda$
Estimated break date is 1998Q1
ANCHORED VS. BACKWARD-LOOKING EXPECTATIONS
$$

\pi_ {t} ^ {e} = \lambda 2. 5 + (1 - \lambda) \frac {1}{1 - \gamma^ {4 0}} [ (1 - \gamma) \pi_ {t - 1} + \gamma (1 - \gamma) \pi_ {t - 2} + \ldots + \gamma^ {3 9} (1 - \gamma) \pi_ {t - 4 0} ] + \epsilon_ {t}

$$
TABLE 4
<table><tr><td></td><td colspan="2">1985Q1-2015Q4 (with 1998Q1 Break in λ)</td></tr><tr><td rowspan="2">λprebreak</td><td>0.067</td><td rowspan="2">0</td></tr><tr><td>(0.046)</td></tr><tr><td rowspan="2">λpostbreak</td><td>0.773</td><td rowspan="2">1</td></tr><tr><td>(0.066)</td></tr><tr><td rowspan="2">γ</td><td>0.875</td><td>0.859</td></tr><tr><td>(0.018)</td><td>(0.017)</td></tr><tr><td>DW</td><td>0.357</td><td>0.312</td></tr><tr><td>SE of Reg.</td><td>0.189</td><td>0.203</td></tr><tr><td>R²</td><td>0.940</td><td>0.930</td></tr></table>
NOTE: NLLS with Newey-West (1987) standard errors in parentheses.  $\pi_e^e$  is the average forecast of long-term CPI inflation from the Survey of Professional Forecasters, and  $\pi_t$  is median CPI inflation. The break date of 1998Q1 is the quarter that produces the largest Wald statistic for the hypothesis that  $\lambda^{prebreak} = \lambda^{postbreak}$ .
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/8f9ee5497353de570638573c7f93f6bafe0b06b21197a44d867c6ca167295249.jpg)
Fitted Values with Estimated Weights Before and After Break
Fitted Values with Pre- and Postbreak Weights on Anchored Expectations set at 0 and 1, respectively
# COUNTERFACTUAL WITH NO ANCHORING
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/2dc267d5ea745a2cba155db5259a46a3f8cb69dd0a14ccadb4e2282838320921.jpg)
Focus on "missing disinflation" during Great Recession
- Argue that population explanations insufficient
- Anchored inflationary expectations
- Movements in natural rate
- Flattening of the Phillips curve
New explanation:
Household inflation expectations rose in 2009-2013
- If firm's expectation the same, this can explain missing disinflation
$$

\pi_ {t} = \beta E _ {t} \pi_ {t + 1} + \kappa \left(y _ {t} - y _ {t} ^ {n}\right) + \eta_ {t}

$$
Baseline assumptions:
- Output gap measure: Unemployment rate
$$ y _ {t} - y _ {t} ^ {n} = u _ {t}
$$

(Ignore natural rate  $u_{t}^{n}$ )

- Expectations of inflation: backward looking
$$
E _ {t} \pi_ {t + 1} = \frac {1}{4} \left(\pi_ {t - 1} + \pi_ {t - 2} + \pi_ {t - 3} + \pi_ {t - 4}\right)
$$

( Ignore discounting:  $\beta = 1$

$$
\pi_ {t} - E \pi_ {t + 1} ^ {\text {B a c k}} = \kappa u _ {t} + \eta_ {t}
$$

Estimate by OLS for sample 1960Q1-2007Q4

- Implicitly assuming that  $\eta_t \perp u_t$  (i.e., ignoring supply shocks)
- Consider alternative specifications later
See whether Great Recession "sticks out"
Panel A. CPI inflation and US unemployment
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/c03c9561930b4e328c76d44081ac752cc0baa44c7fd1d3b24cb20f4414c0823b.jpg)
Source: Coibion and Gorodnichenko (2015)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/cf55064117ff36a3bf6cffe2cda3aee90c61dd180a914e7a0948d15dc6dcc490.jpg)
Panel B. CPI inflation and predicted inflation from the Phillips Curve
FIGURE 1. THE MISSING DISINFLATION
Source: Coibion and Gorodnichenko (2015)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/8b4f241112e5f548d18269ec67b9883b7099756a2ef217293156bd04f53b64da.jpg)
Panel C. Core CPI inflation
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/1288db34670e42cbfcc79f2baa0211c576c48145793969cb78757fffcbe2f0f5.jpg)
Panel D. Core PCE inflation
Source: Coibion and Gorodnichenko (2015)
Survey expectations
CBO estimates of natural rate
Oil shocks
Help address alternative explanations:
- Anchoring of inflation expectations
- Movements in natural rate
$\bullet$  Role of supply shocks
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/1b01eda013def60b834e0cf7d72e0c1efe4d022481564b5999ffd1469111c1da.jpg)
Panel E. SPF inflation (CPI) forecasts
Unemployment rate
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/e7152afc71b8acc9b4ad8d4be6cad2eaa533b16ee40a40afe83de3e64c3aef1f.jpg)
Panel F. Controlling for oil prices
Unemployment rate, partial out oil price changes
Source: Coibion and Gorodnichenko (2015) - SPF forecast over next four quarters.
Panel A. Missing disinflation with CBO unemployment gaps
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/f5093d584df01649ae29ef121e4ce96fdec5ae14fdb510132b046e5c778c90e5.jpg)
Unemployment gap
Source: Coibion and Gorodnichenko (2015)
# Missing DISINFLATION: NATURAL RATE

Panel B. Changes in natural rate of unemployment needed to explain missing disinflation

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/90199bde47f284c40bc66423480478e63aede142f90f1986adf04770f716c0de.jpg)

Source: Coibion and Gorodnichenko (2015)

- Expectations typically measured by SPF forecasts
But is this the way to go?
- Perhaps firm expectations exhibit similar biases to household expectations
- Show that household expectations (Michigan survey) have quite different properties from SPF
Overreact to gasoline prices
Panel A. Inflation expectations for different economic agents
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/ba62afa8bb9f1dee2a148764e0794da8202ad9c215fb190e2cbac9e9228ad5d6.jpg)
Source: Coibion and Gorodnichenko (2015)
Panel B. Phillips Curve with household inflation expectations
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/430af65e-726b-4380-9580-dd31768b4686/9476a578d182bc297dc681cca358d5e02cf14702c206d2185024eee1f234f3f3.jpg)
Source: Coibion and Gorodnichenko (2015)
Three differences versus SPF:
No evidence of flattening
- Flatter throughout
No evidence of missing disinflation!
Large variation across sectors in correlation between inflation and cyclical component of real activity
Stronger correlation for well-measured, domestic components
In particular housing
- Median inflation measure used by Ball-Mazumder 19 ends up placing a lot of weigh on housing
Inflation measure for owner-occupied housing changed in 1983
- pre-83: Changes in house prices and mortgage costs (interest rates) post-83: Changes in rents
- Makes a BIG difference for properties of CPI
- CPI Research Series uses modern methodology back in time (as do PCE and GDP deflators)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/66c0f005b0e90e078946837d66c87ccdee2ae06bb8892b587aff949308fd053e.jpg)
Figure B.1: CPI Inflation Using Preand Post-1983 Housing Methodology
# PHILLIPS CURVE:STRUCTURAL ESTIMATION

UC Berkeley

October 2021

- Simple theory with Calvo pricing assumption implies:
$$
\pi_ {t} = \beta E _ {t} \pi_ {t + 1} + \lambda m c _ {t}
$$ where
$$

\lambda = \frac {(1 - \theta) (1 - \beta \theta)}{\theta}

$$ and  $1 - \theta$  is frequency of price change,  $\beta$  subjective discount factor

- Theory implies that  $mc_{t}$  is the appropriate "forcing variable" in the Phillips curve
- Yet most empirical work uses simple measures of the output gap such as detrended output
# Motivation:
- Is New Keynesian (Calvo) Phillips curve consistent with observed inflation persistence?
- Implies disinflations can be costless
In practice, it seems disinflations are costly (Ball 94, 95) (Imperfect credibility could explain this)
- Do we need "sticky inflation" models or adaptive expectations?
- With quarterly data, hard to get statistically significant effect of real activity on inflation, when using output gap
Under certain assumptions:
$$ m c _ {t} = \kappa X _ {t}
$$ where  $x_{t} = y_{t} - y_{t}^{n}$  denotes the output gap
- Maybe Phillips curve estimation doesn't work because:
These assumptions don't hold in reality
Output gap is mismeasured
- With rational expectations, NK Phillips curve can be written as
$$

\pi_ {t + 1} - \pi_ {t} = - \lambda \kappa X _ {t} + \epsilon_ {t + 1}

$$ where  $\epsilon_{t + 1} = \pi_{t + 1} - E_t\pi_{t + 1}$ , and assuming  $\beta = 1$ .

- Traditional Phillips curve with adaptive expectations:
$$
\pi_ {t} = E _ {t - 1} \pi_ {t} + \lambda \kappa X _ {t}
$$
$$
\pi_ {t} - \pi_ {t - 1} = \lambda \kappa x _ {t}
$$ where we are assuming  $E_{t - 1}\pi_t = \pi_{t - 1}$
- Notice the difference in the sign on the output gap term!! (and difference in timing of inflation change)
$$

\pi_ {t + 1} - \pi_ {t} = - \lambda \kappa x _ {t} + \epsilon_ {t + 1}

$$
- NK Phillips curve implies tight labor market should lead inflation to fall!!
Theoretical logic:
Inflation is a jump variable in this model
- When output gaps are expected, inflation should jump up and start falling
$$

\pi_ {t} = \lambda \kappa \sum_ {k = 0} ^ {\infty} \beta^ {k} E _ {t} x _ {t + k}

$$
- I.e., inflation should lead output gap according to NK Phillips curve (Fuhrer-Moore 95)
- Simple estimation using quadratically detrended log GDP yields:
$$

\pi_ {t + 1} - \pi_ {t} = 0. 0 8 1 x _ {t} + \epsilon_ {t + 1}

$$
- Output gap term has "wrong sign" (from NK perspective)
Output Gap (t), Inflation  $(\mathrm{t} + \mathrm{k})$
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/2efb5a7f36454c7ac8043b63bdf7df3ae48e2732bf69a20c276f3430e6dcf496.jpg)
Source: Gali and Gertler (1999) – Output gap measure as detrended output using HP-filter. Sample period 1960Q1-1997Q4. Current output gap positively correlated with future inflation.
- One reaction: NK Phillips curve is empirically unrealistic.
- Perhaps some sluggishness messes up this jump business
- Perhaps information frictions play a role (yield  $E_{t - 1}\pi_t$ )
Gali-Gertler argue:
- Use of output gap is the problem
Output gap measured with error
- Marginal costs tends to lag output gap
- Gali-Gertler propose to estimate Phillips curve using marginal cost as forcing variable
- But marginal costs are unobservable as well!!
Gali-Gertler make following assumptions:
Production function:  $Y_{t} = A_{t}K_{t}^{\alpha_{k}}N_{t}^{\alpha_{n}}$
Labor is hired on a spot market at constant wage
- Marginal cost:
$$

M C _ {t} = \frac {W _ {t} / P _ {t}}{\partial Y _ {t} / \partial N _ {t}} = \frac {W _ {t} / P _ {t}}{\alpha_ {n} Y _ {t} / N _ {t}} = \frac {1}{\alpha_ {n}} \frac {W _ {t} N _ {t}}{P _ {t} Y _ {t}} = \frac {S _ {t}}{\alpha_ {n}}

$$ proportional to labor share (average cost)
In logs, we get:
$$ m c _ {t} = s _ {t}
$$
- Assumptions that Gali-Gertler make to derive this are strong assumptions!!
- Worker-firm relationship often long-term relationship
- Not clear that current wage is a good proxy for marginal cost
- May just be an installment payment on a long-term contract
Suppose workers performs well at time  $t$ :
Wage may not reflect this at time  $t$
- Rather worker may expect a raise / promotion in the future
Firms may insure workers (labor hoarding)
Wages at a given point in time complicated by overtime
- Marginal wage may not be the same as average wage
Gali-Gertler estimate
$$
\pi_ {t} = \beta E _ {t} \pi_ {t + 1} + \lambda s _ {t}
$$
- Advantage of using measure of marginal costs:
Supply shocks should be reflected in marginal costs
- What do Gali-Gertler do about expectations of inflation?
- They assume rational expectations
- Under this assumption, Phillips curve can be written
$$
\pi_ {t} = \beta \pi_ {t + 1} + \lambda s _ {t} + \epsilon_ {t + 1}
$$ where  $\epsilon_{t + 1} = \beta E_t\pi_{t + 1} - \beta \pi_{t + 1}$  (i.i.d.)
- They furthermore take structural model super seriously in assuming that there is no other error term than this expectations error
- This strong structural assumption allows them to use lagged variables as instruments (any variable dated at time  $t$  or earlier)
- Maintained assumptions:
$$

\pi_ {t} - \beta \pi_ {t + 1} - \lambda s _ {t} = \epsilon_ {t + 1}

$$ where  $\epsilon_{t+1}$  is an i.i.d. expectations error and therefore uncorrelated with variables at time  $t$  or earlier

$\bullet$  Implies:

$$
E _ {t} \left\{\left(\pi_ {t} - \beta \pi_ {t + 1} - \lambda s _ {t}\right) z _ {t} \right\} = 0
$$ where  $z_{t}$  is in the time  $t$  information set of agents
Gali-Gertler use GMM with these orthogonality conditions
$$

E _ {t} \left\{\left(\pi_ {t} - \beta \pi_ {t + 1} - \lambda s _ {t}\right) z _ {t} \right\} = 0

$$
Sample period: 1960Q1-1997Q4
- Instruments: Four lags of inflation, labor income share, output gap, long-short interest rate spread, wage inflation, and commodity price inflation (24 instruments)
$$

\pi_ {t} = \beta \pi_ {t + 1} + \lambda s _ {t} + \epsilon_ {t + 1}

$$
- Under maintained assumption that error term is i.i.d. expectation error dated at time  $t + 1$ , instrument only needed to estimate  $\beta$
- More generally, other omitted variables (or cost push shocks) enter the equation and are dated at time  $t$  (i.e., affect  $\pi_t$ ):
$$

\pi_ {t} = \beta \pi_ {t + 1} + \lambda s _ {t} + \eta_ {t}

$$
In this case, both  $\beta$  and  $\lambda$  potentially biased
Is  $\epsilon_{t + 1}$  really just an i.i.d. expectations error?
- If assumptions needed for  $mc_{t} = s_{t}$  don't hold, it's not
- If expectations are not rational, it is not
- If it is not, then instruments may be invalid
- Slow moving omitted variables correlated with past stuff
- 24 instruments raises concerns about many-weak instruments
- Many/Weak instruments issue is an overfitting issue in small samples
- Using 24 relatively weak instruments may lead to substantial overfitting
Estimation with labor share:
$$

\pi_ {t} = \underset {(0. 0 1 2)} {0. 0 2 3} s _ {t} + \underset {(0. 0 4 5)} {0. 9 4 2} E _ {t} \pi_ {t + 1}

$$
- Coefficients have "correct sign" and "sensible" magnitude
Estimation with output gap (HP-filtered GDP):
$$

\pi_ {t} = - \underset {(0. 0 0 5)} {0. 0 1 6} s _ {t} + \underset {(0. 0 3 0)} {0. 9 8 8} E _ {t} \pi_ {t + 1}

$$
- Coefficient on output gap has "wrong sign"
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/a8220782391ca8210c88c8993793108e96506e07303a55cec4a69114f254984c.jpg)
Output Gap (t), Inflation  $(\mathbf{t} + \mathbf{k})$
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/714d7cedeb62b034216f99d7bbfb2088e4e2bbf3cc9f509c7a8b73ea3ed59197.jpg)
Output Gap (t), Labor Share  $(\mathbf{t} + \mathbf{k})$
Labor Share (t), Inflation  $(\mathbf{t} + \mathbf{k})$
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/bb9b9a41b5ed83f9cb111e7e3f215224e2e149d9d797ffe29d9d590a52241b33.jpg)
Source: Gali and Gertler (1999) - Output gap measure as detrended output using HP-filter.
Sample period 1960Q1-1997Q4.
- Output gap leads inflation in contradiction to theory
Labor share strongly correlated with inflation contemporaneously
Labor share lags output gap
- Lag in response of labor share explains why it does better in Phillips curve estimation
Table 1 Estimates of the new Phillips curve
<table><tr><td></td><td>θ</td><td>β</td><td>λ</td></tr><tr><td colspan="4">GDP deflator</td></tr><tr><td>(1)</td><td>0.829</td><td>0.926</td><td>0.047</td></tr><tr><td></td><td>(0.013)</td><td>(0.024)</td><td>(0.008)</td></tr><tr><td>(2)</td><td>0.884</td><td>0.941</td><td>0.021</td></tr><tr><td></td><td>(0.020)</td><td>(0.018)</td><td>(0.007)</td></tr><tr><td colspan="4">Restricted β</td></tr><tr><td>(1)</td><td>0.829</td><td>1.000</td><td>0.035</td></tr><tr><td></td><td>(0.016)</td><td></td><td>(0.007)</td></tr><tr><td>(2)</td><td>0.915</td><td>1.000</td><td>0.007</td></tr><tr><td></td><td>(0.035)</td><td></td><td>(0.006)</td></tr><tr><td colspan="4">NFB deflator</td></tr><tr><td>(1)</td><td>0.836</td><td>0.957</td><td>0.038</td></tr><tr><td></td><td>(0.015)</td><td>(0.018)</td><td>(0.008)</td></tr><tr><td>(2)</td><td>0.884</td><td>0.967</td><td>0.018</td></tr><tr><td></td><td>(0.023)</td><td>(0.016)</td><td>(0.008)</td></tr></table>
Notes: This table reports GMM estimates of the structural parameters of Eq. (15). Rows (1) and (2) correspond to the two specifications of the orthogonality conditions found in Eqs. (18) and (19) in the text, respectively. Estimates are based on quarterly data and cover the sample period 1960:1-1997:4. Instruments used include four lags of inflation, labor income share, long-short interest rate spread, output gap, wage inflation, and commodity price inflation. A 12-lag Newey-West estimate of the covariance matrix was used. Standard errors are shown in brackets.
Source: Gali and Gertler (1999) - Two normalizations of moment conditions.
Comparison vs. ex ante views:
Sensible" estimates for  $\beta$
Estimates of  $\theta$  on the high end
- Imply price rigidity of 5-6 quarters
- Does NK Phillips curve account for inflation inertia?
Gali-Gertler estimate specification with fraction of rule-of-thumb agents
- Rule-of-thumb agents set
$$ p _ {t} ^ {b} = \bar {p} _ {t - 1} ^ {*} + \pi_ {t - 1}
$$

This yields

$$
\pi_ {t} = \lambda m c _ {t} + \gamma_ {f} E _ {t} \pi_ {t + 1} + \gamma_ {b} \pi_ {t - 1}
$$ where
$$

\lambda = \frac {(1 - \omega) (1 - \theta) (1 - \beta \theta)}{\theta + \omega [ 1 - \theta (1 - \beta) ]}

$$
$$

\gamma_ {f} = \frac {\beta \theta}{\theta + \omega [ 1 - \theta (1 - \beta) ]} \quad \gamma_ {b} = \frac {\omega}{\theta + \omega [ 1 - \theta (1 - \beta) ]}

$$ and  $\omega$  denotes the fraction of rule-of-thump agents

Table 2 Estimates of the new hybrid Phillips curve

<table><tr><td></td><td>ω</td><td>θ</td><td>β</td><td>γb</td><td>γt</td><td>λ</td></tr><tr><td colspan="7">GDP deflator</td></tr><tr><td rowspan="2">(1)</td><td>0.265</td><td>0.808</td><td>0.885</td><td>0.252</td><td>0.682</td><td>0.037</td></tr><tr><td>(0.031)</td><td>(0.015)</td><td>(0.030)</td><td>(0.023)</td><td>(0.020)</td><td>(0.007)</td></tr><tr><td rowspan="2">(2)</td><td>0.486</td><td>0.834</td><td>0.909</td><td>0.378</td><td>0.591</td><td>0.015</td></tr><tr><td>(0.040)</td><td>(0.020)</td><td>(0.031)</td><td>(0.020)</td><td>(0.016)</td><td>(0.004)</td></tr><tr><td colspan="7">Restricted β</td></tr><tr><td rowspan="2">(1)</td><td>0.244</td><td>0.803</td><td>1.000</td><td>0.233</td><td>0.766</td><td>0.027</td></tr><tr><td>(0.030)</td><td>(0.017)</td><td></td><td>(0.023)</td><td>(0.015)</td><td>(0.005)</td></tr><tr><td rowspan="2">(2)</td><td>0.522</td><td>0.838</td><td>1.000</td><td>0.383</td><td>0.616</td><td>0.009</td></tr><tr><td>(0.043)</td><td>(0.027)</td><td></td><td>(0.020)</td><td>(0.016)</td><td>(0.003)</td></tr><tr><td colspan="7">NFB deflator</td></tr><tr><td rowspan="2">(1)</td><td>0.077</td><td>0.830</td><td>0.949</td><td>0.085</td><td>0.871</td><td>0.036</td></tr><tr><td>(0.030)</td><td>(0.016)</td><td>(0.019)</td><td>(0.031)</td><td>(0.018)</td><td>(0.008)</td></tr><tr><td rowspan="2">(2)</td><td>0.239</td><td>0.866</td><td>0.957</td><td>0.218</td><td>0.755</td><td>0.015</td></tr><tr><td>(0.043)</td><td>(0.025)</td><td>(0.021)</td><td>(0.031)</td><td>(0.016)</td><td>(0.006)</td></tr></table>
Notes: This table reports GMM estimates of parameters of Eq. (26). Rows (1) and (2) correspond to the two specifications of the orthogonality conditions found in Eqs. (27) and (28) in the text, respectively. Estimates are based on quarterly data and cover the sample period 1960:1-1997:4. Instruments used include four lags of inflation, labor income share, long-short interest rate spread, output gap, wage inflation, and commodity price inflation. A 12-lag Newey-West estimate of the covariance matrix was used. Standard errors are shown in brackets.
Source: Gali and Gertler (1999) - Two normalizations of moment conditions.
Estimate of  $\omega$  statistically significant
- Normalization 1 yields:  $\omega = 0.265(0.031)$
- Normalization 2 yields:  $\omega = 0.486(0.040)$
A quarter to half of agents are rule-of-thumb
Gali-Gertler conclusion:
- Forward-looking behavior more important than backward-looking behavior
Estimates of  $\beta$  on the low side at around 0.9
- Subsequent work has found Gali-Gertler's results to be highly sensitive to instruments used, vintage of data, model specification
- Mavroeidis-Plagborg-Moller-Stock 14 argue fundamental problem is weak instruments
Inflation is notoriously difficult to forecast
Lagged variables weak instruments for future inflation
- More recent literature has used many fewer instruments to avoid many-instruments problem
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/b60c21af4c8870ec511eb05fcececd6e525a866af3c3b40d21631ed76dfe9344.jpg)
Figure 3. Point Estimates Reported in the Literature
Notes: Point estimates of  $\lambda$  (vertical axis) and  $\gamma_{f}$  (horizontal axis) reported in the literature. Only estimates that use U.S. data and the labor share as forcing variable are plotted. For some papers the semistructural point estimates have been imputed from point estimates of deeper parameters. The dotted blue lines indicate 95 percent confidence intervals for  $\lambda$  where available. We include papers with readily available estimates and more than twenty-five Google Scholar citations as of mid-September 2012: Gali and Gertler (1999); Gali, Gertler, and Lopez-Salido (2001); Fuhrer and Olvei (2005); Gagnon and Khan (2005); Guay and Pelgrin (2005); Henzel and Wollmershäuser (2008); Jondeau and Le Bihan (2005); Roberts (2005); Shordone (2005); Dufour, Khalaf, and Kichian (2006); Fuhrer (2006); Kiley (2007); Kurmann (2007); Rudd and Whelan (2007); Brissimis and Magrinas (2008); and Adam and Padula (2011).
Source: Mavroeidis, Plagborg-Moller, Stock (2014)
Rudd-Whelan 07 emphasize sensitivity to data vintage
- Mavroeidis-Plagborg-Moller-Stock 14 run Gali-Gertler 99 hybrid specification with Gali-Gertler-Lopez-Salido 01 instruments on Gali-Gertler 99 sample period for two data vintages
- Roughly replicate Gali-Gertler 99 results for 2008 data vintage
- With 2012 data vintage, slope of Phillips curve  $30\%$  smaller and insignificant
TABLE3 BASELINE GIV ESTIMATES USING DIFFERENT DATA VINTAGES
<table><tr><td>Data vintage</td><td>Const.</td><td>λ</td><td>γf</td><td>γb</td><td>Hansen test</td></tr><tr><td>1998</td><td>0.041</td><td>0.026</td><td>0.615</td><td>0.340</td><td>5.263</td></tr><tr><td></td><td>(0.030)</td><td>(0.013)</td><td>(0.057)</td><td>(0.058)</td><td>[0.628]</td></tr><tr><td>2012</td><td>-0.049</td><td>0.018</td><td>0.719</td><td>0.240</td><td>9.816</td></tr><tr><td></td><td>(0.040)</td><td>(0.012)</td><td>(0.099)</td><td>(0.095)</td><td>[0.199]</td></tr></table>
Notes: Comparison of GIV estimates of the hybrid NKPC based on 1998 and 2012 vintages of data. The estimation sample is 1970q1 to 1998q1. Inflation: GDP deflator. Labor share: NFB. Instruments: four lags of inflation and two lags of the labor share, wage inflation, and quadratically-detrended output. Estimation method: CUE GMM. Weight matrix: Newey and West (1987) with automatic lag truncation (4 lags). Standard errors in parentheses and  $p$ -values in square brackets.
Source: Mavroeidis, Plagborg-Moller, Stock (2014)
- Run huge number of different a priori reasonable specifications with a common dataset
- Main findings:
Large amount of specification uncertainty
Large amount of sampling uncertainty
- Both conclusions due to weakness of identification
TABLE4 NKPC SPECIFICATION COMBINATIONS
<table><tr><td>Specification settings</td><td>Options</td></tr><tr><td>Inflation (πi)</td><td>GDP deflator, CPI, chained GDP def., GNP def., chained GNP def., NFB GDP def., PCE, core PCE, core CPI, filtered GDP def. gap, smoothed GDP def. gap, filt, CPI gap, sm, CPI gap, SFP-based CPI gap, filt, core CPI gap, sm, core CPI gap, filt, PCE gap, sm, PCE gap, filt, core PCE gap, sm, core PCE gap</td></tr><tr><td>Labor share (ls)</td><td>NFB, NFB coint. relation, HP filtered NFB gap, Baxter-King fill. NFB gap, linearly detrended NFB gap, quadratically detrended NFB gap, real-time NFB HP gap, real-time NFB BK gap, real-time NFB lin. detr. gap, real-time NFB quadr. detr. gap</td></tr><tr><td>Output gap (ygap)</td><td>CBO, HP fill., BK fill., lin. detr., quadr. detr., real-time HP fill., real-time BK fill., real-time lin. detr., real-time quadr. detr.</td></tr><tr><td>Reduced form</td><td>Unrestricted, VAR</td></tr><tr><td>Survey forecasts (πf,t)</td><td>SPF CPI, SPF GDP def., GB GDP def.</td></tr><tr><td>Expectations</td><td>πt+1 (endogenous), πt+1(t) (endog.), πt+2(t) (exogenous)πt+1(t-1) (endog.), πt+2(t-1) (exog.)</td></tr><tr><td rowspan="7">Instruments</td><td>GG: 4 lags of πt, ls, ygap, 10y-90d yield spread, wage infl., commodity price infl.</td></tr><tr><td>GGLS: 4 lags of πt and 2 lags of ls, ygap, wage infl.</td></tr><tr><td>small: 4 lags of πt and 3 lags of forcing variable</td></tr><tr><td>exact: 1 extra lag of each endog. repr. (just-identified)</td></tr><tr><td>RT: 2 real-time lags of GDP def. inflation, Δls, ygap</td></tr><tr><td>survey: 2 lags of 1-quarter SPF/GB forecasts, forcing variable</td></tr><tr><td>Extra regressors (e.g., oil) added to instruments (if endog., use 2 lags)</td></tr><tr><td>Inflation lags</td><td>0 lags (pure NKPC), 1 lag, 4 lags</td></tr><tr><td>Parameter restrictions</td><td>No restrictions, γ(1) = γj (inflation coefficients sum to 1)With γ(1) = γj, use lags of Δπ, instead of πt as instruments</td></tr><tr><td>Oil shocks</td><td>None, log change of WTI spot price divided by GDP def.</td></tr><tr><td>Interest rate</td><td>None, 90-day Treasury rate</td></tr><tr><td>Sample</td><td>Full available, 1960-1997, 1968-2005, 1968-2008, 1971-2008, 1981-2008, 1984-end of sample</td></tr><tr><td>GMM estimator</td><td>2-step, CUE</td></tr></table>
Notes: List of the specification options that we consider when estimating the NKPC (9). The efficient GMM weight matrix is computed using the Newey and West (1987) heteroskedasticity and autocorrelation consistent estimator with automatic lag truncation, except for VAR specifications, which use the White (1980) heteroskedasticity consistent estimator.
# Source: Mavroeidis, Plagborg-Moller, Stock (2014)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/60f408f1dab4689d22e4acf3e039869e1f72cca1f6c7a011bfc1c02752d1517b.jpg)
Figure 4. Point Estimates: Labor Share Specifications
Notes: Point estimates of  $\lambda, \gamma_f$  from the various specifications listed in table 4 that use the labor share as forcing variable, excluding real-time and survey instrument sets. The black dot and ellipse represent the point estimate and 90 percent joint Wald condence set from the 1998 vintage results in table 3.
Source: Mavroeidis, Plagborg-Moller, Stock (2014)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/11afeff0502ce617a248c592ce901f74997fad29fa657169e72ee100aceb00f9.jpg)
Figure 5. Point Estimates: Output Gap Specifications
Notes: Point estimates of  $\lambda$ ,  $\gamma_{f}$  from the various specifications listed in table 4 that use the output gap as forcing variable, excluding real-time and survey instrument sets.
Source: Mavroeidis, Plagborg-Moller, Stock (2014)
# Overall conclusion:
"Literature has reached a limit on how much can be learned about the New Keynesian Phillips curve from aggregate macroeconomic time series."
"New identification approaches and new datasets are needed to reach an empirical consensus."
Since about 2000, labor share has been trending downward
- If labor share is a good measure of marginal costs, downward trend should create massive deflationary pressure (Coibion-Gorodichenko 15)
- Doesn't seem to line up with the evolution of inflation
Figure 1. Labor share, payroll share, and replicated labor share in U.S. nonfarm business sector.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/52536438675114bd49a6951e257c783f6630235147c20dc367127c082a9e9ae9.jpg)
Source: Bureau of Labor Statistics, Bureau of Economic Analysis, and authors' calculations
Source: Elsby, Hobijn, Sahin (2014)
# PHILLIPS CURVE: CROSS-SECTIONAL ESTIMATION
#  and
UC Berkeley
October 2021
New Keynesian formalization:
$$
\pi_ {t} = \beta E _ {t} \pi_ {t + 1} - \kappa \left(u _ {t} - u _ {t} ^ {n}\right) + \nu_ {t}
$$
Drivers of inflation:
- Expected inflation:  $E_{t}\pi_{t + 1}$
Measure of "output gap":  $u_{t} - u_{t}^{n}$
Cost-push shocks:  $\nu_{t}$
Object of interest: Slope coefficient  $\kappa$
- How much does an increase in "demand" affect inflation?
- Volcker disinflation:
- Tight policy -> high unemployment -> lower inflation
Substantial slope of the Phillips curve
Since 1990:
Muted response of inflation to unemployment
- Great Recession: missing disinflation
- Late 2010s and 1990s: missing rise in inflation
- Phillips curve is getting flatter or hibernating
- Perhaps an important flaw in the Keynesian model
Assume adaptive expectations:  $\beta E_{t}\pi_{t + 1} = \pi_{t - 1}$
In this case,
$$
\pi_ {t} = \beta E _ {t} \pi_ {t + 1} - \kappa \left(u _ {t} - u _ {t} ^ {n}\right) + \nu_ {t}
$$ becomes
$$
\Delta \pi_ {t} = - \kappa \left(u _ {t} - u _ {t} ^ {n}\right) + \nu_ {t},
$$
Stock and Watson (2019):
$\Delta \pi_{t}$ : Annual change in 12-month core PCE inflation
$u_{t} - u_{t}^{n}$  : CBO unemployment gap
Refer to  $\kappa$  as "Phillips correlation
# FLATTENING PHILLIPS CURVE
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/bea53e3634d101d34eea2013152af121d4beb502eabdfdb373e50da7255e5ad2.jpg)
- Volcker disinflation:
Sharp regime shift
Rapid fall in long-run inflation expectations
Rapid fall in inflation
Since 1990:
- Long-run inflation expectations have become anchored
- Consequently, inflation has become more stable
- Apparent "flattening" of Phillips curve due to anchoring of inflationary expectations (Bernanke, 2007; Mishkin, 2007)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/14323e33aab3aa8428dffac28990fd84491620132fc7e293cbca3a4504cc0720.jpg)
- Extremely difficult using aggregate evidence
- Results based on survey or adaptive expectations are very sensitive to details of specification (e.g., which expectation variable)
- Results based on structural rational expectations specifications also very sensitive to details (partly due to a weak instruments problem)
Mavroeidis, Plagborg-Moller, Stock 14:
[T]he Literature has reached a limit on how much can be learned about the New Keynesian Phillips curve from aggregate macroeconomic time series. New identification approaches and new datasets are needed to reach an empirical consensus.
1. Inflation expectations may covary with unemployment
For example: Imperfectly credible regime change
- Literature seeks to control for inflation expectations but this is difficult in practice
2. Supply shocks  $(u_{t}^{n}$  and  $\nu_{t})$
- Lead to positive comovement between inflation and unemployment (stagflation)
Good monetary policy compounds with by counteracting demand variation, leaving only supply variation (Fitzgerald-Nicolini, 2014, McLeay-Tenreyro 2019)
# CAN CROSS-SECTIONAL DATA HELP?
- Recent literature estimates "regional Phillips curves"
- Fitzgerald-Nicolini 14; Kiley 15; Babb-Detmeister 17; McLeay-Tenreyro 19; Hooper-Mishkin-Sufi 19; Fitzgerald-Jones-Kulish-Nicolini 20; Beraja-Hurst-Ospina 19 (wages), Hazell-Herreno-Nakamura-Steinsson 21.
Major advantages:
- Fixed effects soak up variation in (common) long-run inflation expectations
- Fixed effects soak up aggregate supply shocks
- Shift-share instruments can be used to deal with regional supply shocks
New challenge:
- How is the slope of the regional Phillips curve related to the slope of the aggregate Phillips curve?
- Let's understand better the central role of long-run inflation expectations:
$$
\pi_ {t} = \beta E _ {t} \pi_ {t + 1} - \kappa \left(u _ {t} - u _ {t} ^ {n}\right) + \nu_ {t}
$$
- Solve forward:
$$
\pi_ {t} = - \kappa E _ {t} \sum_ {j = 0} ^ {\infty} \beta^ {j} u _ {t + j} + \omega_ {t}
$$
$$
\mathsf {w h e r e} \omega_ {t} = E _ {t} \sum_ {j = 0} ^ {\infty} \beta^ {j} (\kappa u _ {t + j} ^ {n} + \nu_ {t + j}).
$$
- Looks like long-run inflation expectation vanishes due to discounting
This is an illusion!
- Useful to decompose  $u_{t+j}$  into permanent and transitory component:
$$
\pi_ {t} = - \kappa E _ {t} \sum_ {j = 0} ^ {\infty} \beta^ {j} u _ {t + j} + \omega_ {t}
$$ becomes
$$
\pi_ {t} = - \kappa E _ {t} \sum_ {j = 0} ^ {\infty} \beta^ {j} \tilde {u} _ {t + j} + \frac {\kappa}{1 - \beta} E _ {t} u _ {t + \infty} + \omega_ {t}
$$ where  $\tilde{u}_t\equiv u_t - E_tu_{t + \infty}$
Since  $\frac{\kappa}{1 - \beta} E_t u_{t + \infty} = E_t \pi_{t + \infty}$ , we have
$$
\pi_ {t} = - \kappa E _ {t} \sum_ {j = 0} ^ {\infty} \beta^ {j} \tilde {u} _ {t + j} + E _ {t} \pi_ {t + \infty} + \omega_ {t}
$$
(Same result with  $\beta = 1$ )
$$
\pi_ {t} = - \kappa E _ {t} \sum_ {j = 0} ^ {\infty} \beta^ {j} \tilde {u} _ {t + j} + E _ {t} \pi_ {t + \infty} + \omega_ {t}
$$
- Long-run inflation target actually major determinant of current inflation
- Has a coefficient of one!!
- Current inflation moves one-for-one with beliefs about long-run inflation target
In contrast,  $\kappa$  may be very small
To simplify, one can assume that  $\tilde{u}_t$  follows an AR(1)
This implies  $E_{t}\tilde{u}_{t + j} = \rho_{u}^{j}\tilde{u}_{t}$
$$
\pi_ {t} = - \kappa E _ {t} \sum_ {j = 0} ^ {\infty} \beta^ {j} \tilde {u} _ {t + j} + E _ {t} \pi_ {t + \infty} + \omega_ {t}
$$ becomes
$$
\pi_ {t} = - \psi \tilde {u} _ {t} + E _ {t} \pi_ {t + \infty} + \omega_ {t}
$$ where  $\psi = \kappa /(1 - \beta \rho_{u})$
$$
\pi_ {t} = - \psi \tilde {u} _ {t} + E _ {t} \pi_ {t + \infty} + \omega_ {t}
$$
- Variation in inflation may be dominated by variation in  $E_{t}\pi_{t + \infty}$
- Variation in inflation may be completely unrelated to variation in  $\tilde{u}_t$
- Worse still, correlation between  $E_{t\pi_{t + \infty}}$  and  $\tilde{u}_t$  potentially a source of severe omitted variables bias
$$
\pi_ {t} = \beta E _ {t} \pi_ {t + 1} - \kappa \left(u _ {t} - u _ {t} ^ {n}\right) + \nu_ {t}
$$
- This is approximately (if  $\beta \approx 1$ ):
$$
\pi_ {t} - E _ {t} \pi_ {t + 1} \approx - \kappa \left(u _ {t} - u _ {t} ^ {n}\right) + \nu_ {t}
$$
- So, standard analysis aims to explain  $\pi_t - E_t\pi_{t+1}$
- But how much is there to explain?
- Let's look at the difference between  $\pi_t$  and  $E_{t}\pi_{t + 1}$  in the data
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/334efcce6ef2532d8c30341296ff556d8009c4a8a250512b093b62065c8b2a4b.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/3abf787a34fdbd8f84fda918c7042a008393526275a198325affd90aaeb1e247.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/eb13fae17a965a5343aeb9ba67d332174fe5ae3e86dab5cd919f2ef5f6539108.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/329cd320ec4a4cf97cbb23e9dd74e024b5d7c80b4b079f63ec5bc1ef3227243d.jpg)
$$
\pi_ {t} - E _ {t} \pi_ {t + 1} \approx - \kappa \left(u _ {t} - u _ {t} ^ {n}\right) + \nu_ {t}
$$
- Inflation gap for core inflation is small throughout (for core using modern methods)
Consistent with a flat Phillips curve
# However:
- Relies heavily on exact timing of New Keynesian Phillips curve (Also subject to other concerns regarding aggregate Phillips curve estimation)
- Two regions: Home and Foreign
Tradeable and non-tradeable sector in each region
No labor mobility between regions
- Perfect labor mobility between sectors within region
- Monetary union
Households:
- Consume and supply labor
- Nested CES demand over varieties of traded and non-traded goods
GHH preferences
Firms:
- Linear production function in labor
- Calvo (1983) type price rigidity
Regional Phillips Curve for Non-Tradeables:
$$
\pi_ {H t} ^ {N} = \beta E _ {t} \pi_ {H, t + 1} ^ {N} - \kappa \hat {u} _ {H t} - \lambda \hat {p} _ {H t} ^ {N} + \nu_ {H t} ^ {N}
$$
Aggregate Phillips Curve:
$$
\pi_ {t} = \beta E _ {t} \pi_ {t + 1} - \kappa \hat {U} _ {t} + \nu_ {t}
$$ where  $\hat{u}_{Ht} = -\hat{n}_{Ht}$  and  $\hat{u}_t = -\hat{n}_t$
- Important result: Same slope  $\kappa$
This is true for non-tradeable regional Phillips curve
- Not for overall regional Phillips curve (traded goods priced nationally)
- Relies on GHH preferences
$$
\pi_ {H t} ^ {N} = \beta E _ {t} \pi_ {H, t + 1} ^ {N} - \kappa \hat {u} _ {H t} - \lambda \hat {\rho} _ {H t} ^ {N} + \nu_ {H t} ^ {N}
$$
Extra term:  $\lambda \hat{p}_{H^{\prime}}^{N}$  . Theoretically important!
Common critique:
- Even in multi-region RBC model, regional demand shock would result in an increase in relative price of local goods
- Extra term implies that this model nests multi-region RBC model
- If prices were flexible,  $\lambda$  would be large
- Empirically,  $\lambda$  estimated to be small
- Let's solve the regional Phillips curve forward:
$$
\pi_ {H t} ^ {N} = - \kappa E _ {t} \sum_ {j = 0} ^ {\infty} \beta^ {j} \tilde {u} _ {H, t + j} - \lambda E _ {t} \sum_ {j = 0} ^ {\infty} \beta^ {j} \hat {\rho} _ {H, t + j} ^ {N} + E _ {t} \pi_ {t + \infty} + \omega_ {H t} ^ {N},
$$
- Long-run inflation expectations are constant across regions and can be replaced with time and state fixed effects:
$$
\pi_ {H t} ^ {N} = - \kappa E _ {t} \sum_ {j = 0} ^ {\infty} \beta^ {j} \tilde {u} _ {H, t + j} - \lambda E _ {t} \sum_ {j = 0} ^ {\infty} \beta^ {j} \hat {\rho} _ {H, t + j} ^ {N} + \alpha_ {i} + \gamma_ {t} + \omega_ {H t} ^ {N},
$$
- Panel specification "differences out" long-run inflation expectations
$$
\pi_ {H t} ^ {N} = - \kappa E _ {t} \sum_ {j = 0} ^ {\infty} \beta^ {j} \tilde {u} _ {H, t + j} - \lambda E _ {t} \sum_ {j = 0} ^ {\infty} \beta^ {j} \hat {\boldsymbol {p}} _ {H, t + j} ^ {N} + E _ {t} \pi_ {t + \infty} + \omega_ {H t} ^ {N},
$$
- Can't long-run inflation expectation differ across regions?
- Prices are rising in New York relative to Kansas
Balassa-Samuelson effects
- Constant differences captured by state fixed effects
- Non-constant differences in long-run inflation expectations will be in error term
- Small part of total variation (arguably)
A concern if correlated with instruments
Regional Phillips curve:
$$
\pi_ {H t} ^ {N} = - \kappa E _ {t} \sum_ {j = 0} ^ {\infty} \beta^ {j} \tilde {u} _ {H, t + j} - \lambda E _ {t} \sum_ {j = 0} ^ {\infty} \beta^ {j} \hat {\pmb {p}} _ {H, t + j} ^ {N} + \alpha_ {i} + \gamma_ {t} + \omega_ {H t} ^ {N},
$$
Suppose we assume that  $\tilde{u}_{Ht}$  and  $\hat{p}_{Ht}^{N}$  follow AR(1) processes:
$$
\pi_ {H t} ^ {N} = - \psi \tilde {u} _ {H t} - \delta \hat {\boldsymbol {p}} _ {H t} ^ {N} + \alpha_ {i} + \gamma_ {t} + \omega_ {H t} ^ {N} \tag {1}
$$
$$
\text {w h e r e} \quad \psi = \frac {\kappa}{1 - \beta \rho_ {u}} \quad \text {a n d} \quad \delta = \frac {\lambda}{1 - \beta \rho_ {p N}}
$$
- Equation (1) similar to typical regional empirical specification
- But  $\kappa$  and  $\psi$  are not the same!
$\psi$  potentially much larger than  $\kappa$  since  $\tilde{u}_{Ht}$  is persistent
- Prior regional Phillips curve literature estimates  $\psi$  not  $\kappa$ .
- Helps explain large slope estimates in this literature
- New state-level inflation indexes (Hazell-Herreno-Nakamura-Steinsson 21)
Sample period 1978 - 2018, quarterly
- Based on BLS CPI micro data
Free of cross-state imputations
- Separate indexes for tradeables vs. non-tradeables
- Analyze housing separately
Measure of slack: State unemployment rates
Tradeable demand spillover instrument:
State-industry employment shares
2-digit SIC for 1975-2000
3-digit NAICS from 1990-2018
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/afc6f6493c2cf6313fd7774dc702379cc89e86cfaaabc8f7a9e7f942970140cf.jpg)
Regional Phillips curve from model:
$$
\pi_ {i t} ^ {N} = \alpha_ {i} + \gamma_ {t} - \kappa E _ {t} \sum_ {j = 0} ^ {\infty} \beta^ {j} u _ {i, t + j} - \lambda E _ {t} \sum_ {j = 0} ^ {\infty} \beta^ {j} \hat {\pmb {\rho}} _ {i, t + j} ^ {N} + \omega_ {i t}
$$
- Reduced form equation similar to prior literature:
$$
\pi_ {i t} ^ {N} = \alpha_ {i} + \gamma_ {t} - \psi \boldsymbol {u} _ {i, t - 4} - \delta \boldsymbol {p} _ {i, t - 4} ^ {N} + \varepsilon_ {i t}
$$
- HHNS present estimates of both  $\kappa$  and  $\psi$
$$
\pi_ {i t} ^ {N} = \alpha_ {i} + \gamma_ {t} - \kappa E _ {t} \sum_ {j = 0} ^ {\infty} \beta^ {j} u _ {i, t + j} - \lambda E _ {t} \sum_ {j = 0} ^ {\infty} \beta^ {j} \hat {\boldsymbol {\rho}} _ {i, t + j} ^ {N} + \omega_ {i t}
$$
- Replace expectations with realized values and expectation error and truncate the infinite sums:
$$
\pi_ {i t} ^ {N} = \alpha_ {i} + \gamma_ {t} - \kappa \sum_ {j = 0} ^ {T} \beta^ {j} u _ {i, t + j} - \lambda \sum_ {j = 0} ^ {T} \beta^ {j} \hat {\rho} _ {i, t + j} ^ {N} + \omega_ {i t} + \eta_ {i t}
$$ where  $\eta_{it}$  is an expectations error (and truncation error)
- $\kappa$  can now be estimated using an IV regression (i.e., GMM)
- Calibrate  $\beta = 0.99$
# Two Approaches:
1. Use lagged unemployment and relative prices as instruments
- Unemployment may reflect supply shocks
Time fixed effects capture national supply shocks
- Identifying assumption: No relative change in restaurant technology in Texas vs. Illinois when Texas experiences a recession relative to Illinois
2. Tradeable demand instrument
$$
\text {T r a d a b l e} \quad \text {D e m a n d} _ {i, t} = \sum_ {x \in T} \bar {S} _ {x, i} \times \Delta \log S _ {- i, x, t}
$$
- $\bar{S}_{x,i}$ : Average employment share of industry  $x$  in state  $i$  over time
- log  $S_{-i,x,t}$ : National employment share of industry  $x$  at time  $t$
- Identifying assumption: supply shocks not simultaneously correlated with both shifts  $\Delta \log S_{-i,x,t}$  and shares  $\bar{S}_{x,i}$
Intuition:
Oil boom increases labor demand and wages in Texas
- "Demand shock" for Texan restaurants
- Oil boom does not differentially affect production technology for restaurants in Texas
$$
\pi_ {i t} ^ {N} = \alpha_ {i} + \gamma_ {t} - \psi u _ {i, t - 4} - \delta p _ {i, t - 4} ^ {N} + \varepsilon_ {i t}
$$
Same two approaches:
OLS
Instrument for  $u_{i,t-4}$  with tradeable demand instrument
TABLE: Full Sample
<table><tr><td></td><td>No State
Effects</td><td>No Time
Effects</td><td>Lagged u IV</td><td>Tradeable
Demand IV</td></tr><tr><td></td><td>(1)</td><td>(2)</td><td>(3)</td><td>(4)</td></tr><tr><td>ψ</td><td>-0.103</td><td>0.017</td><td>0.112</td><td>0.339</td></tr><tr><td></td><td>(0.036)</td><td>(0.027)</td><td>(0.057)</td><td>(0.126)</td></tr><tr><td>K</td><td>-0.0037</td><td>0.0003</td><td>0.0062</td><td>0.0062</td></tr><tr><td></td><td>(0.0013)</td><td>(0.0019)</td><td>(0.0028)</td><td>(0.0025)</td></tr><tr><td>State Effects</td><td></td><td>✓</td><td>✓</td><td>✓</td></tr><tr><td>Time Effects</td><td></td><td></td><td>✓</td><td>✓</td></tr></table>
TABLE: Has the Phillips Curve Flattened?
<table><tr><td></td><td colspan="2">Lagged u IV
No Time Fixed Effects</td><td colspan="2">Lagged u IV
Time Fixed Effects</td><td colspan="2">Tradeable Demand IV
Time Fixed Effects</td></tr><tr><td></td><td>Pre-1990
(1)</td><td>Post-1990
(2)</td><td>Pre-1990
(3)</td><td>Post-1990
(4)</td><td>Pre-1990
(5)</td><td>Post-1990
(6)</td></tr><tr><td>ψ</td><td>0.449</td><td>0.009</td><td></td><td></td><td></td><td></td></tr><tr><td></td><td>(0.063)</td><td>(0.025)</td><td></td><td></td><td></td><td></td></tr><tr><td>κ</td><td>0.0278</td><td>0.0002</td><td></td><td></td><td></td><td></td></tr><tr><td></td><td>(0.0025)</td><td>(0.0017)</td><td></td><td></td><td></td><td></td></tr></table>
All specifications include state fixed effects
TABLE: Has the Phillips Curve Flattened?
<table><tr><td></td><td colspan="2">Lagged u IV
No Time Fixed Effects</td><td colspan="2">Lagged u IV
Time Fixed Effects</td><td colspan="2">Tradeable Demand IV
Time Fixed Effects</td></tr><tr><td></td><td>Pre-1990
(1)</td><td>Post-1990
(2)</td><td>Pre-1990
(3)</td><td>Post-1990
(4)</td><td>Pre-1990
(5)</td><td>Post-1990
(6)</td></tr><tr><td rowspan="2">ψ</td><td>0.449</td><td>0.009</td><td>0.198</td><td>0.090</td><td>0.422</td><td>0.332</td></tr><tr><td>(0.063)</td><td>(0.025)</td><td>(0.113)</td><td>(0.057)</td><td>(0.232)</td><td>(0.157)</td></tr><tr><td rowspan="2">κ</td><td>0.0278</td><td>0.0002</td><td>0.0107</td><td>0.0050</td><td>0.0109</td><td>0.0055</td></tr><tr><td>(0.0025)</td><td>(0.0017)</td><td>(0.0080)</td><td>(0.0038)</td><td>(0.0048)</td><td>(0.0029)</td></tr></table>
All specifications include state fixed effects
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/cbc906af35d06bc7f6fb41cbeaeec6005d3a139a54e31e15f9abf74b306c098c.jpg)
FIGURE: Scatterplots—Non-Tradeable Inflation and Unemployment
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/de06e635b14e856ae0286e6b5ff73631b6fa0666340cda18f5590a9a6eda77b2.jpg)
# - Slope of Phillips curve small
- $\kappa = 0.0062$  implies that even a 5 percentage point increase in unemployment decreases inflation by only 2 percentage points (if inflation expectations remain unchanged)
# - Apparent "flattening" mainly due to anchoring of expectations
No time fixed effects: Factor  $>100$  flattening
- With time fixed effects: Factor 2 flattening
- Interpretation: Time fixed effects absorb movements in long-run inflation expectations
TABLE: HHNS Estimates Compared to Prior Work
<table><tr><td></td><td>K</td></tr><tr><td>Gali (2008)</td><td>0.085</td></tr><tr><td>Rotemberg and Woodford (1997)</td><td>0.019</td></tr><tr><td>Nakamura and Steinsson (2014)</td><td>0.0077</td></tr><tr><td colspan="2">Our Estimate</td></tr><tr><td>Full Sample IV Estimate</td><td>0.0062</td></tr></table>
Note: HHNS adjust prior estimates by the elasticity of output with respect to employment in the model in these papers. For Nakamura and Steinsson (2014), HHNS use the calibration with GHH preferences.
- Can HHNS's cross-section estimate of  $\kappa$  explain aggregate time-series fluctuations in inflation?
- Many have argued:
- Missing disinflation during Great Recession
- Missing reinflation during late 2010s and late 1990s
- Are cross-sectional estimates of Phillips curve steeper than time-series estimates?
- Plot RHS and LHS of
$$
\pi_ {t} - E _ {t} \pi_ {t + \infty} = - \kappa \zeta \tilde {u} _ {t} + \omega_ {t}
$$ assuming no supply shocks  $\omega_{t} = 0$
- Scaling factor:  $\zeta = 6.16$  (s.e. 1.80)
$$
\sum_ {j = 0} ^ {T} \beta^ {j} \tilde {u} _ {t + j} = \zeta \tilde {u} _ {t} + \alpha + \epsilon_ {t}.
$$
- Aggregate includes housing
Estimate aggregate Phillips curve for shelter
Data from American Community Survey for 2001-2017
$\kappa = 0.0243$  (s.e. 0.0053)
- About four time larger than for non-shelter
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/90f7f13abab57c5ff576476128d506779866833867f13b880a2bc985367aa730.jpg)
FIGURE: Aggregate Phillips Curve
Post-1990: Predictions fit data reasonably well
Essentially no missing disinflation or missing reinflation
Pre-1990: Data deviates substantially from predictions
- Actual inflation gap much higher than predicted
Natural Explanation: Adverse supply shocks
- Opposite of conventional wisdom
Key determinant of inflation:  $E_{t}\pi_{t + \infty}$
- But how does the monetary authority change  $E_{t}\pi_{t + \infty}$
Fundamentally hard!!
- How does it convince people that what it says is credible?
- Answering this is not a strong suit of economists (need more research)
- Sometimes beliefs do change rapidly (e.g., Volcker disinflation, ends of hyperinflations)
- Volcker tightened policy dramatically
- Caused massive recession
- Didn't get fired
- Perhaps this was crucial in changing beliefs about long-run monetary regime
- Fundamentally different from view that inflation fell due to steep Phillips curve
# CONSUMPTION:
# BASIC PERMANENT INCOME MODEL
Jon Steinsson
UC Berkeley
Fall 2023
Consumption is the sole end and purpose of all production.
Adam Smith
# Micro:
- Apples versus Oranges (vs. TVs vs. trips to Hawaii, etc)
- Normal goods, luxury goods, inferior goods, Giffen goods, etc.
- Slutsky equation, Shephard's lemma, Roy's identity, etc.
- Demand systems: CES, AIDS, Translog, etc.
# Macro:
Behavior of overall individual consumption
Response of consumption to changes in income and interest rates
- Consumption and saving over the life-cycle
- Response of economy-wide aggregate consumption to income and interest rates
Household consumption problem is to maximize:
$$
E _ {0} \sum_ {t = 0} ^ {T} \beta^ {t} U (C _ {t})
$$
$$
C _ {t} = \left[ \int_ {0} ^ {1} c _ {t} (i) ^ {\frac {\theta - 1}{\theta}} d i \right] ^ {\frac {\theta}{\theta - 1}}
$$ subject to a budget constraint
- Problem can be divided into two parts:
- Solve for  $c_{t}(i)$  subject to  $C_{t}$
- Solve for  $C_t$
- Expenditure on goods in budget constraint:
$$
\int_ {0} ^ {1} p (i) c (i) d i
$$
- Define  $P_{t}$  as the minimum expenditure needed to purchase one unit of the composite consumption good  $C_{t}$
- Then it turns out that
$$
\int_ {0} ^ {1} p (i) c (i) d i = P _ {t} C _ {t}
$$
- So, we can write budget constraint without reference to  $c(i)$ s and  $p(i)$ s
$P_{t}$  is the ideal price index
Social Programs / Taxes / Inequality :
- Do people save "enough" for retirement?
- How does consumption respond to an unemployment spell?
- How much do the super-rich save?
Business Cycles:
- How does consumption respond to monetary policy?
- How does consumption respond to stimulus checks / UI extensions?
- Long-Run Growth:
What are the determinants of aggregate savings?
# History of Thought
Keynes (1936, p. 96):
The fundamental psychological law, upon which we are entitled to depend with great confidence both a priori and from our knowledge of human nature and from detailed facts of experience, is that men are disposed, as a rule and on average, to increase their consumption as their income increases, but not by as much as the increase in their income.
Keynes (1936, p. 93-94):
The usual type of short-period fluctuation in the rate of interest is not likely, however, to have much direct influence on spending either way. There are not many people who will alter their way of living because the rate of interest has fallen from 5 to 4 per cent, if their aggregate income is the same as before.
$$
C _ {t} = \alpha + \gamma \left(Y _ {t} - T _ {t}\right)
$$
- Consumption a function of after-tax income
- Marginal propensity to consume  $(\gamma)$  between zero and one
- Interest rates not important
Future income not important
- Suppose you receive a surprise one-time 1,000 scholarship.
- How much would you spend within a year?
- Suppose you receive a surprise one-time 1,000 scholarship.
- How much would you spend within a year?
- How about a one-time 10,000 scholarship?
- Suppose you receive a surprise one-time 1,000 scholarship.
- How much would you spend within a year?
- How about a one-time 10,000 scholarship?
- How about a one-time 100,000 scholarship?
- Suppose you receive a surprise one-time 1,000 scholarship.
- How much would you spend within a year?
 How about a one-time 10,000 scholarship?
How about a one-time 100,000 scholarship?
How about a person like me?
Suppose interest rates rose by 1 percentage point.
- How much less would you consume over a year as a fraction of your annual consumption?
- Suppose interest rates rose by 1 percentage point.
- How much less would you consume over a year as a fraction of your annual consumption?
- Suppose you received news that short term interest rates were going to be 1 percentage point higher (than you thought before) 5 years from now for one year.
- How much less would you consume over this coming year as a fraction of your annual consumption?
- Suppose  $I, G, NX$  are exogenous
(i.e., not functions of output directly or indirectly)
- Planned expenditure (aggregate demand):
$$
P E _ {t} = \alpha + \gamma \left(Y _ {t} - T _ {t}\right) + I _ {t} + G _ {t} + N X _ {t}
$$
- Suppose  $I, G, NX$  are exogenous
(i.e., not functions of output directly or indirectly)
- Planned expenditure (aggregate demand):
$$
P E _ {t} = \alpha + \gamma \left(Y _ {t} - T _ {t}\right) + I _ {t} + G _ {t} + N X _ {t}
$$
- Suppose the output is completely demand determined
Output must equal  $PE_{t}$ :
$$
Y _ {t} = \alpha + \gamma \left(Y _ {t} - T _ {t}\right) + I _ {t} + G _ {t} + N X _ {t}
$$
A little algebra then yields:
$$
Y _ {t} = \frac {1}{1 - \gamma} [ \alpha - \gamma T _ {t} + I _ {t} + G _ {t} + N X _ {t} ]
$$
Government purchases multiplier  $= \frac{1}{1 - \gamma}$
Tax cut multiplier  $= \frac{\gamma}{1 - \gamma}$
- With MPC = 2/3: G multiplier is 3 and T multiplier is 2
Logic:
- Government spends:  $\Delta G$  (which raises income by  $\Delta G$ )
- First round change in consumption:  $\gamma \Delta G$
Second round change in consumption:  $\gamma^2\Delta G$
Etc.
- Multiplier for change to "autonomous spending" (i.e.,  $\alpha$ ) same as for  $G$
Keynesian Economics in its simplest form
- VERY strong assumptions!!
1. Simplistic consumption function
2. Investment exogenous
3. No prices change as output changes (i.e., economy completely demand determined)
4. No monetary policy response (but wouldn't matter since nothing responds to interest rate)
- IS-LM:  $I(r) +$  monetary policy response
- New Keynesian model: "Modern" consumption function + Phillips curve + monetary policy
Classical Economics:
Saving is good
- Foundation for capital accumulation
(Old) Keynesian Economics:
- Increased saving / fall in “autonomous” spending (i.e.,  $\alpha$ ) thought to have contributed to causing the Great Depression
Widespread worry during WWII about "secular stagnation"
As people get richer, they will save larger share of income (MPC < 1)
- Eventually too much saving
- Not enough demand, not enough investment opportunities
- Early work looked at budget studies (i.e., cross section at a point in time)
$\Delta C / \Delta Y\approx 2 / 3$
- Also analyzed aggregate saving over course of Great Depression
- Savings rose as economy recovered
"dealt a fatal blow to this extraordinarily simple view of the savings process" (Modigliani 86)
Simon Kuznetz (1946):
National Income and Product Accounts back to 1899
- No rise in aggregate savings over time
Dorothy Brady and Rose D. Friedman (1947):
- Re-analyze budget study data
- Consumption function shifts up over time as average income increases
Margaret Reid (unpublished):
- Re-analyzes budget study data
- Introduces concept of "permanent component of income"
(See Burns (2022) for history of "Hidden Figures.")
# Permanent Income Hypothesis
# and Life-Cycle Hypothesis
- Originally developed independently by:
- Modigiani and Brumberg (1954) (Life-Cycle Hypothesis)
Friedman (1957) (Permanent Income Hypothesis)
Basic idea:
- Utility maximization and perfect markets imply that current consumption is determined by net present value of life-time income
- Dramatically different from Keynesian consumption function
# Simplifying assumptions:
- Known finite horizon  $T$
No uncertainty
- Constant interest rate
No durable goods (houses/cars/etc)
Exogenous income process
Costless enforcement of contracts
No bankruptcy (i.e., full commitment to repay debt)
Natural borrowing limit
- Preferences:
$$
\sum_ {t = 0} ^ {T} \beta^ {t} U (C _ {t})
$$
Savings/Borrowing technology:
Household can save at rate  $r$
Household can borrow at rate  $r$  up to some limit
Household assets denoted  $A_{t}$
- Initial assets:  $A_{-1}$
Income stream:  $Y_{t}$
- Maximize
$$
\sum_ {t = 0} ^ {T} \beta^ {t} U (C _ {t})
$$
- Subject to "budget constraint":
$$
\frac {A _ {t}}{1 + r} + C _ {t} = Y _ {t} + A _ {t - 1}
$$
- But, mathematically, this is not really a constraint (doesn't constrain the problem)
- Mathematically, this is just a definition of  $A_{t}$
Real constraint is constraint on  $A_{t}$  sequence
- Simplest: "Natural" borrowing limit:  $A_T \geq 0$  (i.e., household cannot die with debt)
Alternative: No (unsecured) borrowing:  $A_{t} > 0$  (much tighter / much more realistic)
- With natural borrowing limit, sequence of one-period budget constraints can be consolidated into a single intertemporal budget constraint:
$$
\sum_ {t = 0} ^ {T} \frac {C _ {t}}{(1 + r) ^ {t}} \leq A _ {- 1} + \sum_ {t = 0} ^ {T} \frac {Y _ {t}}{(1 + r) ^ {t}}
$$
- Present value of consumption cannot be larger than present value of income and assets
- This embeds the  $A_T \geq 0$  constraint
$$
\max  \sum_ {t = 0} ^ {T} \beta^ {t} U (C _ {t})
$$ subject to:
$$
\sum_ {t = 0} ^ {T} \frac {C _ {t}}{(1 + r) ^ {t}} \leq A _ {- 1} + \sum_ {t = 0} ^ {T} \frac {Y _ {t}}{(1 + r) ^ {t}}
$$
- Important to differentiate between:
- Choice variables:  $C_t$  (and  $A_t$ , for  $t \geq 0$ )
- Exogenous variables:  $A_{-1}$  and  $Y_{t}$  (and  $r$  and  $\beta$ )
- Krusell (2015, ch. 4) is preferred reading on dynamic optimization
- Hard to strike right balance on technical details (this is not a math class)
- Sims lecture notes, Stokey, Lucas, with Prescott (1989), Ljungqvist and Sargent (2018), Acemoglu (2009) are more techy
- Romer (2019) is less techy
- Various readings present slightly different versions of the problem
E.g., Krusell (2015) presents planner problem with production
Good for you to see slight variations in notation and setup
One way to solve household's problem is to set up a Lagrangian:
$$
\mathcal {L} = \sum_ {t = 0} ^ {T} \beta^ {t} U (\mathcal {C} _ {t}) - \lambda \left(\sum_ {t = 0} ^ {T} \frac {\mathcal {C} _ {t}}{(1 + r) ^ {t}} - A _ {- 1} - \sum_ {t = 0} ^ {T} \frac {Y _ {t}}{(1 + r) ^ {t}}\right)
$$ and derive Kuhn-Tucker conditions
Differentiating yield first order conditions:
$$
\beta^ {t} U ^ {\prime} (C _ {t}) = \frac {\lambda}{(1 + r) ^ {t}}
$$
- The full set of optimality conditions additionally includes a complementary slackness condition:
$$
\lambda \left(\sum_ {t = 0} ^ {T} \frac {C _ {t}}{(1 + r) ^ {t}} - A _ {- 1} - \sum_ {t = 0} ^ {T} \frac {Y _ {t}}{(1 + r) ^ {t}}\right) = 0
$$
$$
\lambda \left(\sum_ {t = 0} ^ {T} \frac {C _ {t}}{(1 + r) ^ {t}} - A _ {- 1} - \sum_ {t = 0} ^ {T} \frac {Y _ {t}}{(1 + r) ^ {t}}\right) = 0
$$
- Notice from first order conditions that:
$$
\lambda = \beta^ {t} (1 + r) ^ {t} U ^ {\prime} \left(C _ {t}\right)
$$
- If  $U'(C_t) > 0$ , then  $\lambda > 0$
- Implies that:
$$
\sum_ {t = 0} ^ {T} \frac {C _ {t}}{(1 + r) ^ {t}} - A _ {- 1} - \sum_ {t = 0} ^ {T} \frac {Y _ {t}}{(1 + r) ^ {t}} = 0
$$
- Since  $U^{\prime}(C_t) > 0$ , intertemporal budget constraint holds with equality.
Often we just impose this from the beginning
$$
\beta^ {t} U ^ {\prime} (\mathcal {C} _ {t}) = \frac {\lambda}{(1 + r) ^ {t}}
$$
$$
\beta^ {t + 1} U ^ {\prime} \left(\mathcal {C} _ {t + 1}\right) = \frac {\lambda}{(1 + r) ^ {t + 1}}
$$
Divide one by the other:
$$
\frac {U ^ {\prime} \left(C _ {t}\right)}{\beta U ^ {\prime} \left(C _ {t + 1}\right)} = (1 + r)
$$
Rearrange:
$$
U ^ {\prime} \left(C _ {t}\right) = \beta (1 + r) U ^ {\prime} \left(C _ {t + 1}\right)
$$
This equation is usually referred to as the consumption Euler equation
Lagrangian math does not yield much intuition
- Alternative: Calculus of variations
We seek to maximize
$$
V (C) = \sum_ {t = 0} ^ {T} \beta^ {t} U (C _ {t})
$$ subject to
$$
\sum_ {t = 0} ^ {T} \frac {C _ {t}}{(1 + r) ^ {t}} \leq A _ {- 1} + \sum_ {t = 0} ^ {T} \frac {Y _ {t}}{(1 + r) ^ {t}}
$$
Here  $C$  denotes the sequence  $\{C_0,C_1,\dots,C_{T_1},C_T\}$
Suppose we have a candidate optimal path  $C_t^*$
- Let's consider a variation on this path:
- Save  $\epsilon$  more at time  $t$
- Consume proceeds at time  $t + 1$
- Utility from new path:
$$
V (C) = \dots + \beta^ {t} U \left(C _ {t} ^ {*} - \epsilon\right) + \beta^ {t + 1} U \left(C _ {t + 1} ^ {*} + \epsilon (1 + r)\right) + \dots
$$
- If  $C_t^*$  is the optimum, then
$$
\left. \frac {d V}{d \epsilon} \right| _ {\epsilon = 0} = 0
$$
- At the optimum, benefit of small variation must be zero
$$
\frac {d V}{d \epsilon} = - \beta^ {t} U ^ {\prime} \left(C _ {t} ^ {*} - \epsilon\right) + (1 + r) \beta^ {t + 1} U ^ {\prime} \left(C _ {t + 1} ^ {*} + \epsilon (1 + r)\right)
$$
$$
\left. \frac {d V}{d \epsilon} \right| _ {\epsilon = 0} = - \beta^ {t} U ^ {\prime} \left(\mathcal {C} _ {t} ^ {*}\right) + (1 + r) \beta^ {t + 1} U ^ {\prime} \left(\mathcal {C} _ {t + 1} ^ {*}\right) = 0
$$
$$
U ^ {\prime} \left(C _ {t}\right) = \beta (1 + r) U ^ {\prime} \left(C _ {t + 1}\right)
$$
- The generic first order condition in calculus of variations is called the Euler equation (or Euler-Lagrange equation)
- This is where the consumption Euler equation gets its name
Suppose  $U(C_{t}) = \log C_{t}$
- Then
$$
U ^ {\prime} \left(C _ {t}\right) = \beta (1 + r) U ^ {\prime} \left(C _ {t + 1}\right)
$$ becomes:
$$
\frac {C _ {t + 1}}{C _ {t}} = \beta (1 + r)
$$
Suppose  $U(C_{t}) = \log C_{t}$
- Then
$$
U ^ {\prime} \left(C _ {t}\right) = \beta (1 + r) U ^ {\prime} \left(C _ {t + 1}\right)
$$ becomes:
$$
\frac {C _ {t + 1}}{C _ {t}} = \beta (1 + r)
$$
- How does consumption growth  $C_{t+1} / C_t$  depend on income growth  $Y_{t+1} / Y_t$ ?
Suppose  $U(C_{t}) = \log C_{t}$
- Then
$$
U ^ {\prime} \left(C _ {t}\right) = \beta (1 + r) U ^ {\prime} \left(C _ {t + 1}\right)
$$ becomes:
$$
\frac {C _ {t + 1}}{C _ {t}} = \beta (1 + r)
$$
- How does consumption growth  $C_{t+1} / C_t$  depend on income growth  $Y_{t+1} / Y_t$ ?
It doesn't!!
Suppose for simplicity that  $\beta (1 + r) = 1$
- Consumption Euler equation becomes
$$
U ^ {\prime} \left(C _ {t}\right) = U ^ {\prime} \left(C _ {t + 1}\right)
$$ which implies
$$
C _ {t} = C _ {t + 1}
$$
- Consumers optimally smooth their consumption
Suppose for simplicity that  $\beta (1 + r) = 1$
- Consumption Euler equation becomes
$$
U ^ {\prime} \left(C _ {t}\right) = U ^ {\prime} \left(C _ {t + 1}\right)
$$ which implies
$$
C _ {t} = C _ {t + 1}
$$
- Consumers optimally smooth their consumption
- Variation in consumption only due to:
- Variation in interest rates
- Variation in marginal utility  $U_{t}^{\prime}(C_{t})$  (e.g., children, health)
- Let's plug  $C_t = C_{t+1}$  into intertemporal budget constraint:
$$
C _ {0} = \Phi (r) \left(A _ {- 1} + \sum_ {t = 0} ^ {T} \frac {Y _ {t}}{(1 + r) ^ {t}}\right)
$$
$$
\Phi (r) = \frac {1 - \frac {1}{1 + r}}{1 - \left(\frac {1}{1 + r}\right) ^ {T + 1}}
$$
- Consumption a function of present value of life-time income
Current income is not special
$$
C _ {0} = \Phi (r) \left(A _ {- 1} + \sum_ {t = 0} ^ {T} \frac {Y _ {t}}{(1 + r) ^ {t}}\right)
$$
$$
\Phi (r) = \frac {1 - \frac {1}{1 + r}}{1 - \left(\frac {1}{1 + r}\right) ^ {T + 1}}
$$
- Marginal propensity to consume (MPC): How much of a windfall extra dollar a household spends over some period of time
- What does Permanent Income Hypothesis imply about MPC?
$$
C _ {0} = \Phi (r) \left(A _ {- 1} + \sum_ {t = 0} ^ {T} \frac {Y _ {t}}{(1 + r) ^ {t}}\right)
$$
$$
\Phi (r) = \frac {1 - \frac {1}{1 + r}}{1 - \left(\frac {1}{1 + r}\right) ^ {T + 1}}
$$
- Marginal propensity to consume (MPC): How much of a windfall extra dollar a household spends over some period of time
- What does Permanent Income Hypothesis imply about MPC?
- MPC out of windfall gain is equal to  $\Phi(r)$
Suppose  $T = 40$  and  $r = 0.02$ :
$$
\Phi (r) = 0. 0 3 5
$$
Let's consider a version of the household problem with:
- Infinite horizon
Uncertainty
Heterogeneous preferences
We still maintain:
No durable goods (houses/cars/etc)
Exogenous income process
Costless enforcement of contracts
No bankruptcy (i.e., full commitment to repay debt)
Natural borrowing limit
# 1. Altruism: We love our children
- If we value our children's consumption like our own, intergenerational discounting is the same as intragenerational discounting
- If we however value giving (not children's consumption) things are different (warm glow bequests)
# 2. Simplicity:
- Infinite horizon makes problem more stationary
In finite horizon problem, horizon is a state variable (i.e., affects optimal choice)
- Solution to problem with long horizon similar to one with infinite horizon
Household  $i$  faces uncertainty about future income  $Y_{it + j}$  (include  $i$  to emphasize that risk is partly idiosyncratic)
- Heterogeneity in income across households potentially yields heterogeneity in consumption:  $C_{it}$
- If households are risk averse, they will want to "buy insurance" against income risk
- Whether they can depends on what assets are traded
- Two polar cases:
- Complete markets: Complete set of state contingent assets available
- Bonds only: Only non-state contingent asset available
- We will start by considering the complete markets case
- What is the "natural" borrowing limit in the infinite horizon case?
- What is the "natural" borrowing limit in the infinite horizon case?
- Household can "borrow" (sell assets) up to the point where it can repay for sure in all states of the world
Rules out "Ponzi schemes":
- Sell asset at time  $t$
- Sell more assets at time  $t + 1$  to pay off interest/principle coming due
- Keep doing this ad infinitum
Natural borrowing limit can be quite "tight":
- If non-zero probability of zero future income, natural borrowing limit is zero
$$
\max  E _ {0} \sum_ {t = 0} ^ {\infty} \beta^ {t} U _ {i} \left(C _ {i t} \left(s ^ {t}\right)\right)
$$ subject to:
$$
C _ {i t} (s ^ {t}) + \sum_ {s ^ {t + 1} \mid s ^ {t}} Q _ {t} (s ^ {t + 1}) A _ {i t} (s ^ {t + 1}) = Y _ {i t} (s ^ {t}) + A _ {i, t - 1} (s ^ {t}),
$$ a No Ponzi scheme constraint, and given  $A_{i, - 1}$
- $s^t = [s_1, s_2, \dots, s_t]$  denotes history of states up to date  $t$ .
- $Q_{t}(s^{t + 1})$  denotes the time  $t$  price of Arrow security that pays off one unit of consumption in state  $s^{t + 1}$
- $A_{it}(s^{t+1})$  denotes quantity of Arrow security that pays off in state  $s^{t+1}$  that is purchased at time  $t$  by household  $i$
One solution method (again) is to set up a Lagrangian:
$$
\begin{array}{l} \mathcal {L} _ {t} = E _ {t} \sum_ {j = 0} ^ {\infty} \beta^ {j} \left(U _ {i} \left(C _ {i, t + j} \left(\boldsymbol {s} ^ {t + j}\right)\right) - \lambda_ {i, t + j} \left(\boldsymbol {s} ^ {t + j}\right) \left(C _ {i, t + j} \left(\boldsymbol {s} ^ {t + j}\right) \right. \right. \\ \left. \left. + \sum_ {\mathcal {S} ^ {t + j + 1} \mid \mathcal {S} ^ {t + j}} Q _ {t + j} \left(\mathcal {S} ^ {t + j + 1}\right) A _ {i, t + j} \left(\mathcal {S} ^ {t + j + 1}\right) - Y _ {i, t + j} \left(\mathcal {S} ^ {t + j}\right) - A _ {i, t + j - 1} \left(\mathcal {S} ^ {t + j}\right)\right)\right) \\ \end{array}
$$
The choice variables at time  $t$  are  $C_{it}(s^t)$  and  $A_{it}(s^{t + 1})$
- Differentiation of time  $t$  Lagrangian yields:
$$
\frac {\partial \mathcal {L} _ {t}}{\partial \mathcal {C} _ {i t} (\boldsymbol {s} ^ {t})}: U _ {i} ^ {\prime} \left(\mathcal {C} _ {i t} (\boldsymbol {s} ^ {t})\right) = \lambda_ {i t} (\boldsymbol {s} ^ {t})
$$
$$
\frac {\partial \mathcal {L} _ {t}}{\partial A _ {i t} (s ^ {t + 1})}: \lambda_ {i t} (s ^ {t}) Q _ {t} (s ^ {t + 1}) = E _ {t} [ \beta \lambda_ {i t + 1} (s ^ {t + 1}) I (s ^ {t + 1}) ]
$$ where  $I(s^{t + 1})$  is an indicator for whether state  $s^{t + 1}$  occurs
The latter of these can be rewritten:
$$
\lambda_ {i t} (\boldsymbol {s} ^ {t}) Q _ {t} (\boldsymbol {s} ^ {t + 1}) = \beta p _ {t} (\boldsymbol {s} ^ {t + 1}) \lambda_ {i t + 1} (\boldsymbol {s} ^ {t + 1})
$$ where  $p_t(s^{t+1})$  is the time  $t$  probability of state  $s^{t+1}$  occurring
See Sims Lecture Notes for more general "cookbook"
Combining equations from last slide to eliminate  $\lambda_{it}$  we get:
$$
Q _ {t} \left(\boldsymbol {s} ^ {t + 1}\right) U _ {i} ^ {\prime} \left(C _ {i t} \left(\boldsymbol {s} ^ {t}\right)\right) = \beta p _ {t} \left(\boldsymbol {s} ^ {t + 1}\right) U _ {i} ^ {\prime} \left(C _ {i t + 1} \left(\boldsymbol {s} ^ {t + 1}\right)\right)
$$
This is a version of the consumption Euler equation
- Trades off consumption today and consumption in one particular state tomorrow
Cost today:  $Q_{t}(s^{t + 1})U_{i}^{\prime}(C_{it}(s^{t}))$
Expected benefit tomorrow:  $\beta p_t(s^{t + 1})U_i'(C_{it + 1}(s^{t + 1}))$
- Since Euler equation holds for each state  $s^{t+1}$ , it also holds on average
$$
\begin{array}{l} \sum_ {s ^ {t + 1} \mid s _ {t}} \left[ Q _ {t} \left(s ^ {t + 1}\right) U _ {i} ^ {\prime} \left(C _ {i t} \left(s ^ {t}\right)\right) \right] = \sum_ {s ^ {t + 1} \mid s _ {t}} \left[ \beta p _ {t} \left(s ^ {t + 1}\right) U _ {i} ^ {\prime} \left(C _ {i t + 1} \left(s ^ {t + 1}\right)\right) \right. \\ = > \quad U _ {i} ^ {\prime} \left(C _ {i t} \left(s ^ {t}\right)\right) \sum_ {s ^ {t + 1} \mid s _ {t}} Q _ {t} \left(s ^ {t + 1}\right) = \beta E _ {t} \left[ U _ {i} ^ {\prime} \left(C _ {i t + 1} \left(s ^ {t + 1}\right)\right) \right. \\ = > U _ {t} ^ {\prime} \left(C _ {i t} \left(s ^ {t}\right)\right) \left(1 + R _ {i t} \left(s ^ {t}\right)\right) ^ {- 1} = \beta E _ {t} \left[ U _ {t} ^ {\prime} \left(C _ {i t + 1} \left(s ^ {t + 1}\right)\right) \right] \\ = > U _ {i} ^ {\prime} \left(C _ {i t} \left(s ^ {t}\right)\right) = \beta (1 + R _ {f t}) E _ {t} \left[ U _ {i} ^ {\prime} \left(C _ {i t + 1} \left(s ^ {t + 1}\right)\right) \right] \\ \end{array}
$$ where  $R_{ft}(s^t)$  is the riskless interest rate in state  $s^t$
- Notice that buying one unit of each Arrow security is the same as buying a riskless bond
# TRANSVERSALITY CONDITION
- In finite horizon case, there was a complementary slackness condition that said that household should not die with positive wealth
- What is the counterpart in infinite horizon case?
- In finite horizon case, there was a complementary slackness condition that said that household should not die with positive wealth
- What is the counterpart in infinite horizon case?
Transversality condition:
$$
\lim _ {j \to \infty} \beta^ {j} E _ {t} [ U _ {i} ^ {\prime} (C _ {i t + j} (\boldsymbol {s} ^ {t + j})) A _ {i t + j} (\boldsymbol {s} ^ {t + j}) ] \leq 0
$$
Intuitively:
- Cannot be optimal to choose a plan that leaves resources with positive net present value today unspent in the infinite future
- Cannot be optimal to allow your wealth to explode at a rate faster than discounted marginal utility is falling
- Are Harvard/Princeton/Stanford etc. optimizing?
- Transversality and No Ponzi are sometimes confused
- Very different in nature!!!
No Ponzi:
- Debt cannot explode
- Constraint imposed by lenders
Transversality:
- Wealth cannot explode (too fast)
- Necessary condition for optimality
Complete markets and common beliefs imply perfect risk sharing
The consumption Euler equation
$$
Q _ {t} (\boldsymbol {s} ^ {t + 1}) U _ {i} ^ {\prime} (C _ {i t} (\boldsymbol {s} ^ {t})) = \beta p _ {t} (\boldsymbol {s} ^ {t + 1}) U _ {i} ^ {\prime} (C _ {i t + 1} (\boldsymbol {s} ^ {t + 1}))
$$ holds for all households
This implies
$$
\frac {Q _ {t} (s ^ {t + 1})}{\beta p _ {t} (s ^ {t + 1})} = \frac {U _ {i} ^ {\prime} (C _ {i t + 1} (s ^ {t + 1}))}{U _ {i} ^ {\prime} (C _ {i t} (s ^ {t}))} = \frac {U _ {k} ^ {\prime} (C _ {k t + 1} (s ^ {t + 1}))}{U _ {k} ^ {\prime} (C _ {k t} (s ^ {t}))}
$$
- Taking the ratio of this equation for states  $s^{t + 1}$  and  $s^{*t + 1}$  yields
$$
\frac {U _ {i} ^ {\prime} \left(C _ {i t + 1} \left(s ^ {t + 1}\right)\right)}{U _ {i} ^ {\prime} \left(C _ {i t + 1} \left(s ^ {* t + 1}\right)\right)} = \frac {U _ {k} ^ {\prime} \left(C _ {k t + 1} \left(s ^ {t + 1}\right)\right)}{U _ {k} ^ {\prime} \left(C _ {k t + 1} \left(s ^ {* t + 1}\right)\right)}
$$
$$
\frac {U _ {i} ^ {\prime} (C _ {i t + 1} (s ^ {t + 1}))}{U _ {j} ^ {\prime} (C _ {i t + 1} (s ^ {* t + 1}))} = \frac {U _ {k} ^ {\prime} (C _ {k t + 1} (s ^ {t + 1}))}{U _ {k} ^ {\prime} (C _ {k t + 1} (s ^ {* t + 1}))}
$$
- Ratio of marginal utility of all households perfectly correlated
This is called perfect risk sharing
See Campbell (2018, ch. 4.1.6)
- Empirical literature: Cochrane (1991), Mace (1991), Schulhofer-Wohl (2010), Townsend (1994), Ogaki and Zhang (2001), Ligon, Thomas, Worrall (2002), Fafchamps and Lund (2003), Mazzucco and Saini (2012)
- Perfect risk sharing condition implies all households have the same ordering of marginal utility and consumption across states
- We can number the states  $s^{t+1}$  such that
$$
C _ {i t + 1} (1) \leq C _ {i t + 1} (2) \leq \dots \leq C _ {i t + 1} (S)
$$
- Define  $\bar{C}_{t+1}(s^{t+1}) = \sum_{i} C_{it+1}(s^{t+1})$  and we get
$$
\bar {C} _ {t + 1} (1) \leq \bar {C} _ {t + 1} (2) \leq \dots \leq \bar {C} _ {t + 1} (S)
$$
We also have
$$
\frac {Q _ {t} (1)}{\beta p _ {t} (1)} \geq \frac {Q _ {t} (2)}{\beta p _ {t} (2)} \geq \dots \geq \frac {Q _ {t} (S)}{\beta p _ {t} (S)}
$$ i.e., assets that provide insurance are expensive
- We can now define a function  $g(\bar{C}_{t+1}(s^{t+1}))$  such that
$$
\frac {g (\bar {C} _ {t} (s ^ {t + 1}))}{g (\bar {C} _ {t} (s ^ {* t + 1}))} = \frac {Q _ {t} (s ^ {t + 1}) / \beta p _ {t} (s ^ {s + 1})}{Q _ {t} (s ^ {* t + 1}) / \beta p _ {t} (s ^ {* t + 1})}
$$ for all states  $s^{t+1}$  and  $s^{*t+1}$
- $g(\bar{C}_{t+1}(s^{t+1}))$  can be interpreted as the marginal utility of a "composite household" or "representative household"
- We can then integrate to get a function  $v(\bar{C}(s^{t+1})$  such that
$$ v ^ {\prime} (\bar {C} (s ^ {t + 1})) = g (\bar {C} _ {t + 1} (s ^ {t + 1}))
$$ which is the utility function of the representative household
- Complete market and common beliefs are one way to justify the common representative household assumption
- Important limitations:
- Utility function of representative household need not be the same as that of individual households
- Does not generally imply "demand aggregation": reallocation of wealth alters representative household's utility function and aggregate demand
See Campbell (2018, ch. 4.1.7), Constantinides (1982), Guvenen (2011)
- Demand aggregation requires "Gorman preferences"
(see MWG ch. 4.D and Acemoglu (2009, ch. 5.2))
- Representative household assumption is a pretty strong assumption
# THE GREAT PARADIGM SHIFT
Old Keynesian economics:
- Backward-looking system
$$
\boldsymbol {c} _ {t} = \alpha \boldsymbol {c} _ {t - 1} + \beta \boldsymbol {y} _ {t}
$$
Old Keynesian economics:
- Backward-looking system
$$
\boldsymbol {c} _ {t} = \alpha \boldsymbol {c} _ {t - 1} + \beta \boldsymbol {y} _ {t}
$$
- The most important idea in macroeconomics in the 20th century:
People are forward looking
Milton Friedman, Robert Lucas, etc.
Old Keynesian economics:
- Backward-looking system
$$
\boldsymbol {c} _ {t} = \alpha \boldsymbol {c} _ {t - 1} + \beta \boldsymbol {y} _ {t}
$$
- The most important idea in macroeconomics in the 20th century:
People are forward looking
Milton Friedman, Robert Lucas, etc.
Pendulum swung really far:
$$
\boldsymbol {c} _ {t} = E _ {t} \boldsymbol {c} _ {t + 1} - \sigma \left(i _ {t} - E _ {t} \pi_ {t + 1}\right)
$$
Old Keynesian economics:
- Backward-looking system
$$
\boldsymbol {c} _ {t} = \alpha \boldsymbol {c} _ {t - 1} + \beta \boldsymbol {y} _ {t}
$$
- The most important idea in macroeconomics in the 20th century:
People are forward looking
Milton Friedman, Robert Lucas, etc.
Pendulum swung really far:
$$
\boldsymbol {c} _ {t} = E _ {t} \boldsymbol {c} _ {t + 1} - \sigma \left(i _ {t} - E _ {t} \pi_ {t + 1}\right)
$$
- Maybe the world is somewhere in between
- Biggest difference: People are forward looking!
- How does this show up mathematically?
- System does not have a full set of initial conditions
- Rather, some of the boundary conditions are terminal conditions
Example:
- Household problem does not come with an initial condition for consumption
- The boundary condition is the transversality condition
- Water rolling down a hill is not forward looking: Problem comes with a full set of initial conditions (not a transversality condition)
- Presence of expectations not the fundamental difference. Fundamental difference is nature of boundary conditions.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/353629ed9369fc9fead924981dc5b5c8b390966f0657ef74818aaede64cd9a07.jpg)
Source: Romer (2019)
# One approach:
1. Solve for first order conditions of each agent's problem (household/firm/etc)
- System of non-linear dynamic equations (difference or differential equations)
E.g., consumption Euler equation, capital accumulation equation, labor supply curve, Phillips curve
- N equations for N unknown variables for each period t plus a set of boundary conditions
2. Solve this system of non-linear dynamic equations
- If problem doesn't have "kinks": can linearize (perturbation methods), and solve linear dynamic system (e.g., Blanchard-Kahn algorithm)
- If problem does have "kinks": Need to use "global methods"
- Dynamic Programming is an alternative way to solve dynamic optimization problems
- Has its pros and cons versus Lagrangian methods
- For certain types of problems it is the easiest way to go
- Problems where continuation value is directly used (e.g., Nash bargaining)
- Problems where non-linearities are important (sometimes)
- For other problems it is more cumbersome than Lagrangian methods
E.g., problems that lend themselves to linearization
(e.g., Real Business Cycle models, New Keynesian models)
- Why? Value function is an extra object. Distinction between state variables and control variables extra headache
# Dynamic Programming
$$
V \left(X _ {t}\right) = \max  _ {C _ {t}, A _ {t}} E _ {t} \sum_ {t = j} ^ {\infty} \beta^ {t} U _ {i} \left(C _ {i, t + j} \left(s ^ {t + j}\right)\right)
$$ subject to
$$
C _ {i t} (s ^ {t}) + \sum_ {s ^ {t + 1} | s ^ {t}} Q _ {t} (s ^ {t + 1}) A _ {i t} (s ^ {t + 1}) = Y _ {i t} (s ^ {t}) + A _ {i, t - 1} (s ^ {t}),
$$ a No Ponzi scheme constraint, and given  $A_{i,t - 1}$
$X_{t}$  is a vector of "state variables"
- Figuring out what variables are in  $X_{t}$  is a crucial element of using Dynamic Programming
- The state contains all known variables that affect the household's value function (i.e., the maximized value of the household's objective function).
What is the state in our household problem?
What is the state in our household problem?
- Cash on hand at the beginning of the period:  $Y_{it}(s^t) + A_{i,t - 1}(s^t)$
What is the state in our household problem?
- Cash on hand at the beginning of the period:  $Y_{it}(s^t) + A_{i,t - 1}(s^t)$
- Any variable that helps forecast future income
- If  $Y_{it}(s^t)$  is i.i.d.: Nothing
If  $Y_{it}(s^t)$  is AR(1):  $Y_{it}(s^t)$
- if  $Y_{it}(s^t)$  is AR(2):  $Y_{it}(s^t)$  and  $Y_{it - 1}(s^{t - 1})$
Etc.
What is the state in our household problem?
- Cash on hand at the beginning of the period:  $Y_{it}(s^t) + A_{i,t - 1}(s^t)$
- Any variable that helps forecast future income
- If  $Y_{it}(s^t)$  is i.i.d.: Nothing
- If  $Y_{it}(s^t)$  is AR(1):  $Y_{it}(s^t)$
- if  $Y_{it}(s^t)$  is AR(2):  $Y_{it}(s^t)$  and  $Y_{it - 1}(s^{t - 1})$
Etc.
Current asset prices  $Q_{t}(s^{t + 1})$
- Any variables that help forecast future asset prices (Sometimes the whole distribution of every agent's wealth)
What is the state in our household problem?
- Cash on hand at the beginning of the period:  $Y_{it}(s^t) + A_{i,t - 1}(s^t)$
- Any variable that helps forecast future income
- If  $Y_{it}(s^t)$  is i.i.d.: Nothing
- If  $Y_{it}(s^t)$  is AR(1):  $Y_{it}(s^t)$
- if  $Y_{it}(s^t)$  is AR(2):  $Y_{it}(s^t)$  and  $Y_{it - 1}(s^{t - 1})$
Etc.
- Current asset prices  ${Q}_{t}\left( {s}^{t + 1}\right)$
- Any variables that help forecast future asset prices (Sometimes the whole distribution of every agent's wealth
State vector can potentially be quite large and complicated!!
Consider the following yoeman farmer / planner problem:
$$
\max  _ {\left\{C _ {s}, K _ {s + 1} \right\} _ {s = 0} ^ {\infty}} \sum_ {t = 0} ^ {\infty} \beta^ {t} U (C _ {t})
$$ subject to
$$
C _ {t} + K _ {t + 1} \leq f (K _ {t}),
$$
$C_t \geq 0$ ,  $K_{t+1} \geq 0$ , and  $K_0$  given.
- No markets. Yoeman farmer doesn't interact with the outside world.
$f(K_{t}) = F(K_{t},N) + (1 - \delta)K_{t}$
- Consumption-savings problem where savings technology is productive capital (seeds)
- If  $U^{\prime}(C_t) > 0$  for all  $C_t$ , no resources will be waisted and resource constraint will hold with equality
- In this case we can plug resource constraint into objective function and get
$$
\max  _ {\{0 \leq K _ {t + 1} \leq f (K _ {t}) \} _ {t = 0} ^ {\infty}} \sum_ {t = 0} ^ {\infty} \beta^ {t} U (f (K _ {t}) - K _ {t + 1})
$$ with  $K_0$  given
What is the state at time 0?
- If  $U'(C_t) > 0$  for all  $C_t$ , no resources will be waisted and resource constraint will hold with equality
- In this case we can plug resource constraint into objective function and get
$$
\max  _ {\left\{0 \leq K _ {t + 1} \leq f (K _ {t}) \right\} _ {t = 0} ^ {\infty}} \sum_ {t = 0} ^ {\infty} \beta^ {t} U \left(f \left(K _ {t}\right) - K _ {t + 1}\right)
$$ with  $K_0$  given
What is the state at time 0?
- Only  $K_{0}$
No exogenous income source, no prices
$$
V \left(K _ {0}\right) = \max  _ {\left\{0 \leq K _ {t + 1} \leq f \left(K _ {t}\right) \right\} _ {t = 0} ^ {\infty}} \sum_ {t = 0} ^ {\infty} \beta^ {t} U \left(f \left(K _ {t}\right) - K _ {t + 1}\right)
$$
- Let's now make use of the fact that
$$
\max  _ {x, y} f (x, y) = \max  _ {y} \left\{\max  _ {x} f (x, y) \right\}
$$
I.e., we can maximize in steps:
- First max over  $x$  given  $y$  (yields a function of  $y$ )
- Then max resulting function of  $y$  over  $y$
- In our context we divide the problem into  $K_{1}$  and  $K_{t}$  for  $t > 1$
$$
V (K _ {0}) = \max  _ {\{0 \leq K _ {1} \leq f (K _ {0}) \}} \left\{U (f (K _ {0}) - K _ {1}) + \max  _ {\{0 \leq K _ {t + 1} \leq f (K _ {t}) \} _ {t = 1} ^ {\infty}} \sum_ {t = 1} ^ {\infty} \beta^ {t} U (f (K _ {t}) - K _ {t + 1}) \right\}
$$ which simplifies to
$$
V \left(K _ {0}\right) = \max  _ {\left\{0 \leq K _ {1} \leq f \left(K _ {0}\right) \right\}} \left\{U \left(f \left(K _ {0}\right) - K _ {1}\right) + \beta V \left(K _ {1}\right) \right\}
$$ and holds for all times  $t$ . So, we can write:
$$
V (K) = \max  _ {\{0 \leq K ^ {\prime} \leq f (K) \}} \left\{U (f (K) - K ^ {\prime}) + \beta V (K ^ {\prime}) \right\}
$$
- This equation is called the Bellman equation
- It is a functional equation: the unknown is a function  $V(K)$
The object of primary interest is actually not  $V(K)$
It is the decision rule (policy function):
$$
K ^ {\prime} = g (K)
$$ where
$$ g(K) = \arg \max_{\{0\leq K^{\prime}\leq f(K)\}}\left\{U(f(K) - K^{\prime}) + \beta V(K^{\prime})\right\}
$$
$$
V (K) = \max  _ {K ^ {\prime} \in \Gamma (K)} \{F (K, K ^ {\prime}) + \beta V (K ^ {\prime}) \}
$$
# Suppose:
- $F$  is continuously differentiable in its two arguments, strictly increasing in  $K$ , and decreasing in  $K'$ , strictly concave, and bounded.
- $\Gamma$  is a nonempty, compact-valued, monotone, and continuous correspondence with a convex graph
$\beta \in (0,1)$
# Then:
- There exists a unique  $V(K)$  that solves the Bellman equation
- Value function iteration:  $V(K)$  can be found as follows:
Pick any initial  $V_{0}(K)$
- Find  $V_{1}(K)$  by evaluating RHS of Bellman equation
Repeat until  $V_{n+1}(K)$  converges to a stable function. This is  $V(K)$ .
V is strictly concave
V is strictly increasing
V is continuously differentiable
- Optimal behavior can be characterized by a function  $g \colon K' = g(K)$  that is increasing as long as  $F_{2}$  is increasing in  $K$
For proofs, see Stokey, Lucas, with Prescott (1989)
Those interested in more detail should read:
Stokey, Lucas, with Prescott (1989) [starting with ch. 2.1, 3, and 4]
Ljungqvist and Sargent (2018) [starting with ch. 3 and 4]
- Note: I do not agree with Ljungqvist and Sargent's strong emphasis on the importance of recursive methods. I think they overdo this.
$$
\max_{\{C_{s},K_{s + 1}\}_{s = 0}^{T}}\sum_{t = 0}^{T}\beta^{t}U(C_{t})
$$ subject to
$$
C _ {t} + K _ {t + 1} \leq f (K _ {t}),
$$
$C_t \geq 0$ ,  $K_{t+1} \geq 0$ , and  $K_0$  given.
Non-stationary problem
- Value function will be different in each period  $V_{t}(K_{t})$
- Can be solved by backward induction
- Start by solving the problem at time  $T$  as a function of  $K_{T}$
Clearly  $K_{T + 1} = 0$  is optimal and  $V_{T + 1}(K_{T + 1}) = 0$
This implies that
$$
\begin{array}{l} V _ {T} \left(K _ {T}\right) = \max  _ {\left\{0 \leq K _ {T + 1} \leq f \left(K _ {T}\right) \right\}} \left\{U \left(f \left(K _ {T}\right) - K _ {T + 1}\right) + \beta V _ {T + 1} \left(K _ {T + 1}\right) \right\} \\ = U (f \left(K _ {T}\right)) \\ \end{array}
$$
- Then move back one period to  $T - 1$
The Bellman function for this period is:
$$
V _ {T - 1} \left(K _ {T - 1}\right) = \max  _ {\left\{0 \leq K _ {T} \leq f \left(K _ {T - 1}\right) \right\}} \left\{U \left(f \left(K _ {T - 1}\right) - K _ {T}\right) + \beta V _ {T} \left(K _ {T}\right) \right\}
$$
- Since  $V_{T}(K_{T})$  is known from prior step, this can be easily solved for  $V_{T - 1}(K_{T - 1})$
- This process can be iterated backward all the way to  $t = 0$
- Notice that this algorithm is essentially the same as the value function iteration algorithm we discussed for finding  $V(K)$  in the infinite horizon case
- This similarity means that the behavior of a household with a long but finite horizon is similar to the behavior of a household with an infinite horizon
- Start with an initial guess for the policy function  $K' = g_0(K)$
- Calculate the value function for this policy function
$$
V _ {0} (K) = \sum_ {t = 0} ^ {\infty} \beta^ {t} U (f (K) - g _ {0} (K))
$$
(In practice a finite sum with a large  $T$ )
- Generate a new policy function
$$ g _ {1} (K) = \arg \max  _ {K ^ {\prime}} \left\{U \left(f (K) - K ^ {\prime}\right) + \beta V _ {0} \left(K ^ {\prime}\right) \right\}
$$
- Iterate on this algorithm until the policy function converges
Four methods:
1. Guess a solution
2. Iterate on Bellman equation analytically
3. Iterate on Bellman equation numerically
4. Iterate on policy function numerically
- First two methods only work for highly special models
- In practice, Dynamic Programming most useful for problems that require numerical solution methods
- We can derive an Euler equation from the Bellman function
$$
V (K) = \max  _ {K ^ {\prime} \in \Gamma (K)} \left\{F \left(K, K ^ {\prime}\right) + \beta V \left(K ^ {\prime}\right) \right\}
$$
- Using the policy function  $K' = g(K)$  we can rewrite the Bellman equation:
$$
V (K) = F (K, g (K)) + \beta V (g (K))
$$
- Also, this policy function satisfies the first order condition
$$
F _ {2} (K, K ^ {\prime}) + \beta V ^ {\prime} (K ^ {\prime}) = 0
$$
- Evaluating this equation at  $K' = g(K)$  we get
$$
F _ {2} (K, g (K)) + \beta V ^ {\prime} (g (K)) = 0
$$
- If we differentiate
$$
V (K) = F (K, g (K)) + \beta V (g (K))
$$ with respect to  $K$  we get
$$
V ^ {\prime} (K) = F _ {1} (K, g (K)) + g ^ {\prime} (K) \left\{F _ {2} (K, g (K)) + \beta V ^ {\prime} (g (K)) \right\}
$$
Second term on RHS is zero (see last slide) and we get:
$$
V ^ {\prime} (K) = F _ {1} (K, g (K))
$$
- The fact that the second term drops out is an application of the envelope theorem
Combining:
$$
F _ {2} (K, g (K)) + \beta V ^ {\prime} (g (K)) = 0
$$
$$
V ^ {\prime} (g (K)) = F _ {1} (g (K), g (g (K)))
$$ yields
$$
F _ {2} (K, g (k)) = - \beta F _ {1} (g (K), g (g (K)))
$$
- This is the Euler equation stated as a functional equation
In yoeman farmer model:
$$
F (K, K ^ {\prime}) = U (F (K) - K ^ {\prime}) = U (C (K))
$$
$$
F _ {1} (K, K ^ {\prime}) = U ^ {\prime} (C (K)) F ^ {\prime} (K)
$$
$$
F _ {2} (K, K ^ {\prime}) = - U ^ {\prime} (C (K))
$$
- This means that the Euler equation in the yoeman farmer model is
$$
U ^ {\prime} (C (K)) = \beta F ^ {\prime} \left(K ^ {\prime}\right) U ^ {\prime} \left(C \left(K ^ {\prime}\right)\right)
$$
- $F^{\prime}(K)$  plays the role of the return on investment
- $C(K) = F(K) - g(K)$  is the yoeman farmer's consumption function
$$
U ^ {\prime} (C (K)) = \beta F ^ {\prime} \left(K ^ {\prime}\right) U ^ {\prime} \left(C \left(K ^ {\prime}\right)\right)
$$
- Iterating on the functional Euler equation for  $C(K)$  is an alternative to value function iteration, policy function iteration, and Blanchard-Kahn methods
Advantages:
- Level of value function not important (only derivative). Value function iteration waists one polynomial point on getting the level
- Computationally useful in models with many agents and many frictions (see McKay's notes)
Disadvantage:
May not converge
- Acemoglu, D. (2009): Introduction to Modern Economic Growth, Princeton University Press, Princeton, NJ.
- Brady, D.S. and Friedman, R.D. (1947): "Savings and the Income Distribution," NBER Studies in Income and Wealth, No. 9, New York, NY.
Campbell, J.Y. (2018): Financial Decisions and Markets: A Course in Asset Pricing, Princeton University Press, Princeton, NJ.
- Cochrane, J.H. (1991): "A Simple Test of Consumption Insurance," Journal of Political Economy, 99, 957-976.
- Constantinides, G. (1982): "Intertemporal Asset Pricing with Heterogeneous Consumers and without Demand Aggregation," Journal of Business, 55, 253-267.
- Fafchamps, M., and S. Lund (2003): "Risk-Sharing Networks in Rural Philippines," Journal of Development Economics, 71, 261-287.
- Friedman, M. (1957): A Theory of the Consumption Function, Princeton University Press, Princeton, NJ.
- Guvenen, F. (2011): "Macroeconomics with Heterogeneity: A Practical Guide," Federal Reserve Bank of Richmond Economic Quarterly, 97, 255-326.
Keynes, J.M. (1936): The General Theory of Employment, Interest, and Money, Palgrave McMillan, London, England.
$\bullet$  Krusell, P. (2015): Real Macroeconomic Theory, manuscript.
- Kuznetz, S. (1946): National Income: A Summary of Findings, NBER, Arno Press, New York, NY.
- Ligon, E., J.P. Thomas, and T. Worrall (2002): "Informal Insurance Arrangements with Limited Commitment: Theory and Evidence from Village Economies," Review of Economic Studies, 69, 209-244.
- Ljungqvist, L., and T.J. Sargent (2018): Recursive Macroeconomic Theory, MIT Press, Cambridge, MA.
- Mace, B.J. (1991): "Full Insurance in the Presence of Aggregate Uncertainty," Journal of Political Economy, 99, 928-956.
- Mas-Colell, A., M. Whinston, and J. Green (1995): Microeconomic Theory, Oxford University Press, New York, NY.
- Mazzucco, M. and S. Saini (2012): "Testing Efficient Risk Sharing with Heterogeneous Risk Preferences," American Economic Review, 102, 428-468.
- Modigliani, F. and R. Brumberg (1954): "Utility Analysis and the Consumption Function: An Interpretation of Cross-Section Data," in K. Kurihara, ed., Post-Keynesian Economics, Rutgers University Press, New Brunswick, NJ.
- Ogaki, M. and Q. Zhang (2001): "Decreasing Risk Aversion and Tests of Risk Sharing," Econometrica, 69, 515-526.
- Reid, M.G. (unpublished): "The Relation of the Within-Group Permanent Component of Income to the Inceom Elasticity of Expenditure."
$\bullet$  Romer, D. (2019): Advanced Macroeconomics, McGraw Hill, New York, NY.
Schulhofer-Wohl, S. (2011): Heterogeneity and Tests of Risk Sharing, Journal of Political Economy, 119, 925-958.
- Sims, C. (2000): "Stochastic Lagrange Multipliers for Problems with Lagged Expectations," Lecture Notes.
- Sims, C. (2006): "Random Lagrange Multipliers and Transversality," Lecture Notes.
Stokey, N.L., R.E. Lucas, with E.C. Prescott (1989): Recursive Methods in Economic Dynamics, Harvard University Press, Cambridge, MA.
- Townsend, R.M. (1994): "Risk and Insurance in Village India," Econometrica, 62, 539-591.
# RESPONSE OF CONSUMPTION TO INCOME SHOCKS

UC Berkeley

Fall 2023

- Consumption Euler equation with uncertainty:
$$
U ^ {\prime} \left(C _ {t}\right) = \beta (1 + r) E _ {t} \left[ U ^ {\prime} \left(C _ {t + 1}\right) \right]
$$ with  $\beta (1 + r) = 1$
$$

U ^ {\prime} \left(C _ {t}\right) = E _ {t} \left[ U ^ {\prime} \left(C _ {t + 1}\right) \right]

$$
- Marginal utility is a martingale:
- Best current predictor of tomorrow's marginal utility is today's marginal utility
- Suppose marginal utility is linear (i.e., quadratic utility):
$$

C _ {t} = E _ {t} C _ {t + 1}

$$
- Consumption a martingale!!
- Suppose marginal utility is linear (i.e., quadratic utility):
$$

C _ {t} = E _ {t} C _ {t + 1}

$$
Consumption a martingale!!
This is Robert Hall's (1978) random walk hypothesis
- Very controversial at the time
Seems "obvious" today
(Are we too conditioned by our models?)
$$

E _ {t} C _ {t + 1} = C _ {t}

$$
$$

C _ {t + 1} = C _ {t} + \epsilon_ {t + 1}

$$ where  $\epsilon_{t + 1} = C_{t + 1} - E_tC_{t + 1}$

- Two important properties of  $\epsilon_{t+1}$ :
- Since it is an expectations error, it is uncorrelated with information known at time  $t$  or earlier
- It is proportional to the innovation to the consumer's present value of life-time income ("permanent income" for short)
- Infinite horizon case:
$$
C _ {t} = \frac {r}{1 + r} \left(A _ {t} + \sum_ {j = 0} ^ {\infty} (1 + r) ^ {- j} E _ {t} Y _ {t + j}\right)
$$
$$
\Delta C _ {t + 1} = \epsilon_ {t + 1} = \frac {r}{1 + r} \sum_ {j = 0} ^ {\infty} (1 + r) ^ {- j} \Delta E _ {t + 1} Y _ {t + 1 + j}
$$
$$ w h e r e \Delta E _ {t + 1} Y _ {t + 1 + j} = E _ {t + 1} Y _ {t + 1 + j} - E _ {t} Y _ {t + 1 + j}
$$

$\bullet$  Response to anticipated changes in income: Zero

$\bullet$  Response to transitory unanticipated change in income: Small

- Marginal propensity to consume
- Something like  $2 - 5\%$  per year
$\bullet$  Response to permanent unanticipated change in income: Large
1\% permanent increase in income raises "permanent income" by 1\% (ignoring assets) and should therefore raise consumption by  $1 \%$
- Random walk hypothesis implies that consumption growth should be unpredictable. I.e., unforecastable using lagged variables
Suggests following regression test:
$$
\Delta C _ {t + 1} = \alpha + \mathbf {X} _ {t} \beta + \epsilon_ {t + 1}
$$ where  $\mathbf{X}_t$  is a set of regressors known at time  $t$  and the test is  $\beta = 0$
- Hall (1978) performed tests along these lines:
- Failed to reject for lagged values of income and consumption
- Rejected using lagged value of stock market
- Interpreted results in favor of hypothesis
Rejections in early tests hard to interpret
- Are they economically meaningful?
- Even very accurate models can be rejected with enough data
- Useful to have a specific alternative hypothesis
- Two types of consumers:
- Fraction  $\lambda$  are "hand-to-mouth", i.e., consume their income
- Fraction 1 -  $\lambda$  are rational PIH consumers
$\bullet$  Implies
$$

\Delta C _ {t} = \lambda \Delta Y _ {t} + (1 - \lambda) \epsilon_ {t}

$$ i.e., consumption growth is a weighted average of income growth and growth in permanent income
- Important complication:
$\Delta Y_{t}$  and  $\epsilon_t$  are likely correlated. Why?
$\bullet$  Implies
$$

\Delta C _ {t} = \lambda \Delta Y _ {t} + (1 - \lambda) \epsilon_ {t}

$$ i.e., consumption growth is a weighted average of income growth and growth in permanent income
- Important complication:
$\Delta Y_{t}$  and  $\epsilon_t$  are likely correlated. Why?
- Recall that  $\epsilon_{t}$  denotes innovations to permanent income
- Changes in current income likely correlated with innovations to permanent income
$$

\Delta C _ {t} = \lambda \Delta Y _ {t} + (1 - \lambda) \epsilon_ {t}

$$
- Can we think of instruments that will work in this case?
(Hint: Error term is an expectation error)
$$

\Delta C _ {t} = \lambda \Delta Y _ {t} + (1 - \lambda) \epsilon_ {t}

$$
- Can we think of instruments that will work in this case?
(Hint: Error term is an expectation error)
- Any variable know at time  $t - 1$  works as an instrument
- Since  $\epsilon_t$  is an expectation error, it is orthogonal to all variables known at time  $t - 1$  or earlier
- So, we can use lags of anything as instruments (Wow, lots of possible instruments)
- Consumption homoskedastic in logs rather than levels
- Regression in levels would suffer from heteroskedasticity
Campbell-Mankiw take logs (i.e., log-linear approximation)
Alternative to divide through by, e.g.,  $C_{t-1}$
$C_t$  is a time average over a quarter
- Even if  $C_t$  were a random walk, time averaging would imply serial correlation of changes (Working, 1960)
Campbell and Mankiw (1989) lag instruments by 2 periods to avoid this
Table 1 UNITED STATES 1953-1986
$\Delta c_{y} = \mu + \lambda \Delta y_{t}$
<table><tr><td rowspan="2">Row</td><td rowspan="2">Instruments</td><td colspan="2">First-stage regressions</td><td rowspan="2">λ estimate (s.e.)</td><td rowspan="2">Test of restrictions</td></tr><tr><td>Δc equation</td><td>Δy equation</td></tr><tr><td>1</td><td>None (OLS)</td><td>—</td><td>—</td><td>0.316 (0.040)</td><td>—</td></tr><tr><td>2</td><td>Δyt-2, . . . Δyt-4</td><td>-0.005 (0.500)</td><td>0.009 (0.239)</td><td>0.417 (0.235)</td><td>-0.022 (0.944)</td></tr><tr><td>3</td><td>Δyt-2, . . . Δyt-6</td><td>0.017 (0.209)</td><td>0.026 (0.137)</td><td>0.506 (0.176)</td><td>-0.034 (0.961)</td></tr><tr><td>4</td><td>Δct-2, . . . Δct-4</td><td>0.024 (0.101)</td><td>0.045 (0.028)</td><td>0.419 (0.161)</td><td>-0.009 (0.409)</td></tr><tr><td>5</td><td>Δct-2, . . . Δct-6</td><td>0.081 (0.007)</td><td>0.079 (0.007)</td><td>0.523 (0.131)</td><td>-0.016 (0.572)</td></tr><tr><td>6</td><td>Δit-2, . . . Δit-4</td><td>0.061 (0.010)</td><td>0.028 (0.082)</td><td>0.698 (0.235)</td><td>-0.016 (0.660)</td></tr><tr><td>7</td><td>Δit-2, . . . Δit-6</td><td>0.102 (0.002)</td><td>0.082 (0.006)</td><td>0.584 (0.137)</td><td>-0.025 (0.781)</td></tr><tr><td>8</td><td>Δyt-2, . . . Δyt-4, Δct-2, . . . Δct-4, ct-2-yt-2</td><td>0.007 (0.341)</td><td>0.068 (0.024)</td><td>0.351 (0.119)</td><td>-0.033 (0.840)</td></tr><tr><td>9</td><td>Δyt-2, . . . Δyt-4 Δct-2, . . . Δct-4, Δit-2, . . . Δit-4, ct-2-yt-2</td><td>0.078 (0.026)</td><td>0.093 (0.013)</td><td>0.469 (0.106)</td><td>-0.029 (0.705)</td></tr></table>
Note: The columns labeled "First-stage regressions" report the adjusted  $R^2$  for the OLS regressions of the two variables on the instruments; in parentheses is the p-value for the null that all the coefficients except the constant are zero. The column labeled "λ estimate" reports the IV estimate of λ and, in parentheses, its standard error. The column labeled "Test of restrictions" reports the adjusted  $R^2$  of the OLS regression of the residual on the instruments; in parenthesis is the p-value for the null that all the coefficients are zero.
Source: Campbell and Mankiw (1989)
Estimate  $\lambda$  of roughly 0.5
Strongly reject  $\lambda = 0$  (random walk hypothesis)
Lagged income growth weak instruments
Lagged consumption growth much stronger instruments
- Consumption seems to encode information about future income growth
- This type of rejection of random walk hypothesis is often referred to as "excess sensitivity"
Few observations
- Difficult to find variables with much predictive power for income
- Rely on strong assumption that  $\epsilon_t$  is only a expectations error
- If not true, hard to find a valid instrument
- Rely on strong aggregation assumptions (see, e.g., Attanasio and Weber, 1993, 1995)
Large literature has analyzed anticipated changes in income at the household level:
- Wilcox (1989): Preannounced increases in social security benefits
- Parker (1999): Reaching Social Security payroll cap
- Souleles (1999): Receipt of tax refund
- Souleles (2002): Reagan tax cuts
- Johnson, Parker, Souleles (2006): 2001 tax rebate
- Parker, Souleles, Johnson, McClelland (2013): 2008 tax rebate
- Hsieh (2003) and Kueng (2015): Alaska Permanent Fund payments
# ANTICIPATED OR UNANTICIPATED
- All these income changes are pre-announced
- But many were (likely) not very salient to households
I received 2008 in the mail and was pleasantly surprised
- Does it matter whether consumers knew?
# ANTICIPATED OR UNANTICIPATED
- All these income changes are pre-announced
- But many were (likely) not very salient to households
I received 2008 in the mail and was pleasantly surprised
- Does it matter whether consumers knew?
If transitory, probably not that much
- Don't affect permanent income much
- MPC out of transitory income shock should be very small
- If persistent (Wilcox 89, Souleles 02) matters more
Economic Stimulus Act of February 2008
- 100 billion of tax rebates to 130 million US tax filers
Single filers received $300-$600
(max of \$300 and tax liability up to \$600)
• Couples received $600-$1200
- Fazed out for incomes above  $75,000 ($ 150,000 for couples)
Economic Stimulus Act of February 2008
- 100 billion of tax rebates to 130 million US tax filers
Single filers received $300-$600
(max of \$300 and tax liability up to \$600)
• Couples received $600-$1200
- Fazed out for incomes above  $75,000 ($ 150,000 for couples)
- Timing of dispersion based on last two digits of SSN (effectively random)
- Compare spending of households that received payment at different dates
TABLE 1—THE TIMING OF THE ECONOMIC STIMULUS PAYMENTS OF 2008
<table><tr><td colspan="2">Payments by electronic funds transfer</td><td colspan="2">Payments by mailed check</td></tr><tr><td>Last two digits of taxpayer SSN</td><td>Date ESP funds transferred to account by</td><td>Last two digits of taxpayer SSN</td><td>Date check to be received by</td></tr><tr><td>00–20</td><td>May 2</td><td>00–09</td><td>May 16</td></tr><tr><td>21–75</td><td>May 9</td><td>10–18</td><td>May 23</td></tr><tr><td>76–99</td><td>May 16</td><td>19–25</td><td>May 30</td></tr><tr><td></td><td></td><td>26–38</td><td>June 6</td></tr><tr><td></td><td></td><td>39–51</td><td>June 13</td></tr><tr><td></td><td></td><td>52–63</td><td>June 20</td></tr><tr><td></td><td></td><td>64–75</td><td>June 27</td></tr><tr><td></td><td></td><td>76–87</td><td>July 4</td></tr><tr><td></td><td></td><td>88–99</td><td>July 11</td></tr></table>
Source: Internal Revenue Service (http://www.irs.gov/newsroom/article/0,.id=180247,00.html).
Source: Parker et al. (2013)
- Should be anticipated (program highly publicized)
- Consumption response should be a lower bound on response of an unanticipated income change
- Some of the effect may have occurred upon announcement
- Totally transitory
- Main data source: Consumer Expenditure Survey
- Households surveyed 4 times with 3 month intervals about spending over past 3 months
New households added each month
- Main data source: Consumer Expenditure Survey
- Households surveyed 4 times with 3 month intervals about spending over past 3 months
New households added each month
- Authors worked with BLS to add questions about receipt of stimulus payments
- Did they receive stimulus payment?
- When did they receive it?
How much did they receive?
$$

C _ {i, t + 1} - C _ {i, t} = \sum_ {s} \beta_ {0 s} \times \text {m o n t h} _ {s, j} + \beta_ {1} ^ {\prime} X _ {i, t} + \beta_ {2} E S P _ {i, t + 1} + u _ {i, t + 1}

$$
Dependent variable: 3-month change in consumption
- Independent variable of interest:  $ESP_{i,t+1}$
$$

C _ {i, t + 1} - C _ {i, t} = \sum_ {s} \beta_ {0 s} \times m o n t h _ {s, j} + \beta_ {1} ^ {\prime} X _ {i, t} + \beta_ {2} E S P _ {i, t + 1} + u _ {i, t + 1}

$$
Dependent variable: 3-month change in consumption
- Independent variable of interest:  $ESP_{i,t+1}$
- Time dummies:
Soaks up all aggregate effects
(GE effects, anticipation effects)
- Identification comes from cross section
Comparison of those that get ESP at time  $t + 1$  and those that don't
$$

C _ {i, t + 1} - C _ {i, t} = \sum_ {s} \beta_ {0 s} \times m o n t h _ {s, j} + \beta_ {1} ^ {\prime} X _ {i, t} + \beta_ {2} E S P _ {i, t + 1} + u _ {i, t + 1}

$$
Dependent variable: 3-month change in consumption
- Independent variable of interest:  $ESP_{i,t+1}$
Time dummies:
- Soaks up all aggregate effects
(GE effects, anticipation effects)
- Identification comes from cross section
Comparison of those that get ESP at time  $t + 1$  and those that don't
-  $X_{i,t}$  to soak up some variation from error term
TABLE 2- THE CONTEMPORANEOUS RESPONSE OF EXPENDITURES TO ESP RECEIPT AMONG ALL HOUSEHOLDS
<table><tr><td></td><td>Food OLS</td><td>Strictly nondurables OLS</td><td>Nondurable spending OLS</td><td>All CE goods and services OLS</td><td>Food OLS</td><td>Strictly nondurables OLS</td><td>Nondurable spending OLS</td><td>All CE goods and services OLS</td></tr><tr><td colspan="9">Panel A. Dollar change in spending</td></tr><tr><td>ESP</td><td>0.016(0.027)</td><td>0.079(0.046)</td><td>0.121(0.055)</td><td>0.516(0.179)</td><td></td><td></td><td></td><td></td></tr><tr><td>I(ESP)</td><td></td><td></td><td></td><td></td><td>10.9(31.7)</td><td>74.8(56.6)</td><td>121.5(67.2)</td><td>494.5(207.2)</td></tr><tr><td></td><td>Food OLS</td><td>Strictly nondurables OLS</td><td>Nondurable spending OLS</td><td>All CE goods and services OLS</td><td>Food 2SLS</td><td>Strictly nondurables 2SLS</td><td>Nondurable spending 2SLS</td><td>All CE goods and services 2SLS</td></tr><tr><td colspan="5">Panel B. Percent change in spending</td><td colspan="4">Panel C. Dollar change in spending</td></tr><tr><td>ESP</td><td></td><td></td><td></td><td></td><td>0.012(0.033)</td><td>0.079(0.060)</td><td>0.128(0.071)</td><td>0.523(0.219)</td></tr><tr><td>I(ESP)</td><td>0.69(1.27)</td><td>1.74(0.96)</td><td>2.09(0.94)</td><td>3.24(1.17)</td><td></td><td></td><td></td><td></td></tr></table>
Notes: All regressions also include a full set of month dummies, age, change in the number of adults, and change in the number of children following equation (1). Reported standard errors are adjusted for arbitrary within-household correlations and heteroskedasticity. The coefficients in panel B are multiplied by 100 so as to report a percent change. The last four columns report results from 2SLS regressions where the indicator variable for ESP receipt and the other regressors are used as instruments for the amount of the ESP. All regressions use 17,478 observations except for the first two columns of panel B which have only 17,427 and 17,475, respectively.
Source: Parker et al. (2013)
# TYPES OF VARIATION: FIRST PASS
- Timing of payments is random
# TYPES OF VARIATION: FIRST PASS
Timing of payments is random
- How much a person got is not random
Correlated with income
- Possible that this is correlated with error term (if high income people did relatively well or badly in this period)
# TYPES OF VARIATION: FIRST PASS
Timing of payments is random
- How much a person got is not random
Correlated with income
- Possible that this is correlated with error term (if high income people did relatively well or badly in this period)
- 2nd set of results use  $I(ESP > 0)$
(i.e., only whether household received ESP, not how much)
TABLE 2- THE CONTEMPORANEOUS RESPONSE OF EXPENDITURES TO ESP RECEIPT AMONG ALL HOUSEHOLDS
<table><tr><td></td><td>Food OLS</td><td>Strictly nondurables OLS</td><td>Nondurable spending OLS</td><td>All CE goods and services OLS</td><td>Food OLS</td><td>Strictly nondurables OLS</td><td>Nondurable spending OLS</td><td>All CE goods and services OLS</td></tr><tr><td colspan="9">Panel A. Dollar change in spending</td></tr><tr><td>ESP</td><td>0.016(0.027)</td><td>0.079(0.046)</td><td>0.121(0.055)</td><td>0.516(0.179)</td><td></td><td></td><td></td><td></td></tr><tr><td>I(ESP)</td><td></td><td></td><td></td><td></td><td>10.9(31.7)</td><td>74.8(56.6)</td><td>121.5(67.2)</td><td>494.5(207.2)</td></tr><tr><td></td><td>Food OLS</td><td>Strictly nondurables OLS</td><td>Nondurable spending OLS</td><td>All CE goods and services OLS</td><td>Food 2SLS</td><td>Strictly nondurables 2SLS</td><td>Nondurable spending 2SLS</td><td>All CE goods and services 2SLS</td></tr><tr><td colspan="5">Panel B. Percent change in spending</td><td colspan="4">Panel C. Dollar change in spending</td></tr><tr><td>ESP</td><td></td><td></td><td></td><td></td><td>0.012(0.033)</td><td>0.079(0.060)</td><td>0.128(0.071)</td><td>0.523(0.219)</td></tr><tr><td>I(ESP)</td><td>0.69(1.27)</td><td>1.74(0.96)</td><td>2.09(0.94)</td><td>3.24(1.17)</td><td></td><td></td><td></td><td></td></tr></table>
Notes: All regressions also include a full set of month dummies, age, change in the number of adults, and change in the number of children following equation (1). Reported standard errors are adjusted for arbitrary within-household correlations and heteroskedasticity. The coefficients in panel B are multiplied by 100 so as to report a percent change. The last four columns report results from 2SLS regressions where the indicator variable for ESP receipt and the other regressors are used as instruments for the amount of the ESP. All regressions use 17,478 observations except for the first two columns of panel B which have only 17,427 and 17,475, respectively.
Source: Parker et al. (2013)
Timing of payments is random
- How much a person got is not random
Correlated with income
- Possible that this is correlated with error term (if high income people did relatively well or badly in this period)
2nd set of results use  $I(ESP > 0)$
(i.e., only whether household received ESP, not how much)
- Panel C uses 2SLS with  $I(ESP > 0)$  as an instrument for  $ESP_{i,t+1}$
First stage:  $ESP_{i,t+1}$  on  $I(ESP > 0)$
- Reduced form:  $C_{i,t+1} - C_{i,t}$  on  $I(ESP > 0)$
- IV is ratio of these two
TABLE 2- THE CONTEMPORANEOUS RESPONSE OF EXPENDITURES TO ESP RECEIPT AMONG ALL HOUSEHOLDS
<table><tr><td></td><td>Food OLS</td><td>Strictly nondurables OLS</td><td>Nondurable spending OLS</td><td>All CE goods and services OLS</td><td>Food OLS</td><td>Strictly nondurables OLS</td><td>Nondurable spending OLS</td><td>All CE goods and services OLS</td></tr><tr><td colspan="9">Panel A. Dollar change in spending</td></tr><tr><td>ESP</td><td>0.016(0.027)</td><td>0.079(0.046)</td><td>0.121(0.055)</td><td>0.516(0.179)</td><td></td><td></td><td></td><td></td></tr><tr><td>I(ESP)</td><td></td><td></td><td></td><td></td><td>10.9(31.7)</td><td>74.8(56.6)</td><td>121.5(67.2)</td><td>494.5(207.2)</td></tr><tr><td></td><td>Food OLS</td><td>Strictly nondurables OLS</td><td>Nondurable spending OLS</td><td>All CE goods and services OLS</td><td>Food 2SLS</td><td>Strictly nondurables 2SLS</td><td>Nondurable spending 2SLS</td><td>All CE goods and services 2SLS</td></tr><tr><td colspan="5">Panel B. Percent change in spending</td><td colspan="4">Panel C. Dollar change in spending</td></tr><tr><td>ESP</td><td></td><td></td><td></td><td></td><td>0.012(0.033)</td><td>0.079(0.060)</td><td>0.128(0.071)</td><td>0.523(0.219)</td></tr><tr><td>I(ESP)</td><td>0.69(1.27)</td><td>1.74(0.96)</td><td>2.09(0.94)</td><td>3.24(1.17)</td><td></td><td></td><td></td><td></td></tr></table>
Notes: All regressions also include a full set of month dummies, age, change in the number of adults, and change in the number of children following equation (1). Reported standard errors are adjusted for arbitrary within-household correlations and heteroskedasticity. The coefficients in panel B are multiplied by 100 so as to report a percent change. The last four columns report results from 2SLS regressions where the indicator variable for ESP receipt and the other regressors are used as instruments for the amount of the ESP. All regressions use 17,478 observations except for the first two columns of panel B which have only 17,427 and 17,475, respectively.
Source: Parker et al. (2013)
# TYPES OF VARIATION: 2ND PASS
Timing of payments is random
# TYPES OF VARIATION: 2ND PASS
Timing of payments is random
- Who got payments is not random (again, correlated with income)
Timing of payments is random
- Who got payments is not random (again, correlated with income)
Three approaches:
Control for receipt of payment
- Only households that received payment
- Only households that reported receiving payment on time
TABLE 3- THE RESPONSE TO ESP RECEIPT AMONG HOUSEHOLDS RECEIVING PAYMENTS
<table><tr><td rowspan="2"></td><td colspan="2">Dollar change in</td><td colspan="2">Percent change in</td><td colspan="2">Dollar change in</td></tr><tr><td>Nondurable spending OLS</td><td>All CE goods and services OLS</td><td>Nondurable spending OLS</td><td>All CE goods and services OLS</td><td>Nondurable spending 2SLS</td><td>All CE goods and services 2SLS</td></tr><tr><td colspan="7">Panel A. Sample of all households (N = 17,478)</td></tr><tr><td>ESP</td><td>0.117(0.060)</td><td>0.507(0.196)</td><td></td><td></td><td>0.123(0.081)</td><td>0.509(0.253)</td></tr><tr><td>I(ESP)</td><td></td><td></td><td>2.63(1.07)</td><td>3.97(1.34)</td><td></td><td></td></tr><tr><td>I(ESPit &gt; 0 for any it)</td><td>9.58(36.07)</td><td>21.21(104.00)</td><td>-0.88(0.50)</td><td>-1.17(0.63)</td><td>8.23(38.79)</td><td>20.77(112.18)</td></tr><tr><td colspan="7">Panel B. Sample of households receiving ESPs (N = 11,239)</td></tr><tr><td>ESP</td><td>0.185(0.066)</td><td>0.683(0.219)</td><td></td><td></td><td>0.252(0.103)</td><td>0.866(0.329)</td></tr><tr><td>I(ESP)</td><td></td><td></td><td>3.91(1.33)</td><td>5.63(1.69)</td><td></td><td></td></tr><tr><td colspan="7">Panel C. Sample of households receiving only on-time ESPs (N = 10,488)</td></tr><tr><td>ESP</td><td>0.214(0.070)</td><td>0.590(0.217)</td><td></td><td></td><td>0.308(0.112)</td><td>0.911(0.342)</td></tr><tr><td>I(ESP)</td><td></td><td></td><td>4.52(1.50)</td><td>6.05(1.89)</td><td></td><td></td></tr></table>
Source: Parker et al. (2013)
Timing of payments is random
- Who got payments is not random (again, correlated with income)
Three approaches:
Control for receipt of payment
- Only households that received payment
- Only households that reported receiving payment on time
Most of later results with this last sample
- Results significant, but standard errors not trivial
- Do effects reverse or build over time?
- Add lagged term to regression
TABLE 5- THE LONGER- RUN RESPONSE OF EXPENDITURES TO ESP RECEIPT
<table><tr><td rowspan="2"></td><td colspan="2">Dollar change in</td><td colspan="2">Percent change in</td><td colspan="2">Dollar change in</td></tr><tr><td>Nondurable spending OLS</td><td>All CE goods and services OLS</td><td>Nondurable spending OLS</td><td>All CE goods and services OLS</td><td>Nondurable spending 2SLS</td><td>All CE goods and services 2SLS</td></tr><tr><td> ESP_{t+1}  or  I(ESP_{t+1}) </td><td>0.201(0.067)</td><td>0.517(0.211)</td><td>3.92(1.55)</td><td>4.96(1.96)</td><td>0.254(0.110)</td><td>0.757(0.360)</td></tr><tr><td> ESP_t  or  I(ESP_t) </td><td>-0.054(0.080)</td><td>-0.288(0.214)</td><td>-1.23(1.50)</td><td>-2.22(1.92)</td><td>-0.097(0.113)</td><td>-0.278(0.330)</td></tr><tr><td>Implied spending effect in second three-month period</td><td>0.146(0.104)</td><td>0.230(0.303)</td><td>NA</td><td>NA</td><td>0.156(0.177)</td><td>0.479(0.568)</td></tr><tr><td>Implied cumulative fraction of rebate spent over both three-month periods</td><td>0.347(0.155)</td><td>0.747(0.477)</td><td>NA</td><td>NA</td><td>0.410(0.273)</td><td>1.235(0.892)</td></tr></table>
Notes: All regressions also include the change in the number of adults, the change in the number of children, the age of the household, and a full set of month dummies. The sample includes only households receiving only on-time ESPs. Standard errors are adjusted for arbitrary within-household correlations and heteroskedasticity. The coefficients in the second triplet of columns are multiplied by 100 so as to report a percent change. The final triplet of columns reports results from 2SLS regressions where  $I(ESP)$  and the other regressors are used as instruments for  $ESP$ . The number of observations for all regressions is 10,488.
Source: Parker et al. (2013)
- Do effects reverse or build over time?
- Add lagged term to regression
Growth slightly negative in next quarter
- But level still above control group
- Do effects reverse or build over time?
- Add lagged term to regression
Growth slightly negative in next quarter
- But level still above control group
- Point estimate thus suggests higher spending persists and longer term impact bigger than short-term impact
Standard errors large
TABLE 7- THE PROPENSITY TO SPEND ON SUBCATEGORIES OF EXPENDITURES
<table><tr><td rowspan="2">Dependent variable:</td><td colspan="3">Panel A. Food</td><td colspan="4">Panel B. Additional categories in strictly nondurables</td></tr><tr><td>Food at home</td><td>Food away from home</td><td>Alcoholic beverages</td><td>Utilities, household operations</td><td>Personal care and misc.</td><td>Gas, motor fuel, public transportation</td><td>Tobacco products</td></tr><tr><td>Coefficient on ESP</td><td>0.050</td><td>0.025</td><td>0.011</td><td>0.059</td><td>0.083</td><td>0.027</td><td>0.007</td></tr><tr><td>Standard error</td><td>(0.032)</td><td>(0.033)</td><td>(0.007)</td><td>(0.027)</td><td>(0.049)</td><td>(0.039)</td><td>(0.009)</td></tr><tr><td>Implied share of increase in nondurable spending</td><td>0.16</td><td>0.08</td><td>0.04</td><td>0.19</td><td>0.27</td><td>0.09</td><td>0.02</td></tr><tr><td>Share of avg. spending on subcategory</td><td>0.23</td><td>0.11</td><td>0.01</td><td>0.23</td><td>0.04</td><td>0.16</td><td>0.01</td></tr><tr><td rowspan="2">Dollar change in spending on:</td><td colspan="3">Panel C. Additional categories in nondurables</td><td colspan="4">Panel D. Additional categories in total CE spending</td></tr><tr><td>Apparel</td><td>Health</td><td>Reading</td><td>Housing (incl. furnishings)</td><td>Entertainment</td><td>Education</td><td>Transportation</td></tr><tr><td>Coefficient on ESP</td><td>0.022</td><td>0.025</td><td>-0.001</td><td>0.099</td><td>0.077</td><td>-0.100</td><td>0.527</td></tr><tr><td>Standard error</td><td>(0.021)</td><td>(0.048)</td><td>(0.003)</td><td>(0.092)</td><td>(0.099)</td><td>(0.042)</td><td>(0.269)</td></tr><tr><td>Implied share of increase in:</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Nondurable spending</td><td>0.07</td><td>0.08</td><td>0.00</td><td></td><td></td><td></td><td></td></tr><tr><td>Durable spending</td><td></td><td></td><td></td><td>0.16</td><td>0.13</td><td>-0.17</td><td>0.87</td></tr></table>
<table><tr><td rowspan="2">Dollar change in spending on:</td><td colspan="5">Panel E. Subcategories of transportation</td></tr><tr><td>New vehicle purchases</td><td>Used vehicle purchases</td><td>Other vehicle purchases</td><td>Maintenance and repairs</td><td>Other, insurance fees, etc.</td></tr><tr><td>Coefficient on ESP</td><td>0.357</td><td>0.123</td><td>0.011</td><td>0.009</td><td>0.027</td></tr><tr><td>Standard error</td><td>(0.204)</td><td>(0.149)</td><td>(0.054)</td><td>(0.028)</td><td>(0.024)</td></tr><tr><td colspan="6">Implied share of increase in durable spending</td></tr><tr><td></td><td>0.59</td><td>0.20</td><td>0.02</td><td>0.01</td><td>0.04</td></tr><tr><td colspan="6">Share of average durable spending</td></tr><tr><td></td><td>0.07</td><td>0.06</td><td>0.01</td><td>0.04</td><td>0.09</td></tr></table>
Source: Parker et al. (2013)
- For non-durables: alcohol, personal care, tobacco, apparel
- For durables: cars
- For non-durables: alcohol, personal care, tobacco, apparel
For durables: cars
- Large effect on cars suggests ESP provided down payment for debt-financed cars (alleviated liquidity constraints)
Possible reversal for cars:
- Did it move everyone forward a few months (no reversal)?
- Or did those that didn't buy immediately, spend it on something else and become liquidity constrained again (subsequent reversal)?
- It has become common to view an MPC of 0.25-0.30 as a reasonable target in theoretical work on consumption
- But are the magnitudes of the effects in Parker et al. (2013) plausible?
- Orchard, Ramey, and Wieland (2023) argue effects including durables are not
- First pass: What would New Motor Vehicle spending have been absent the stimulus checks
- Based on earlier work by Sahm, Shapiro, and Slemrod (2012)
- "Partial equilibrium" counterfactual (everything else equal)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/6b2c68452a7e7082658511c51ce604b8f3745433aae9249cdb2c0499a1d351ae.jpg)
Figure 1. Expenditures on New Motor Vehicles: Actual vs. Counterfactual
Note. Based on Sahm, Shapiro, and Slemrod calculations applied to revised data.
Source: Orchard, Ramey, Wieland (2023)
- Build a standard two-agent New Keynesian model
PIH agent and hand-to-mouth agent
Counterfactual even more extreme
- Dominant GE force: Keynesian multiplier
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/d193e1430525be67ed67ebb9a2de30a5f897a4915631df70bc465cae4cbc171d.jpg)
Figure 4. Counterfactual Real Consumption Expenditures: Baseline Model
Real PCE: Micro
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/e0e3b5ebdba721aa1a18d7aee1e018934b921d410d32b4ba76b6bf0ddfaab20c.jpg)
Real PCE: GE
Motor Vehicles: Micro
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/ab614e888ad216ab2791a80f371608b162df1d1c19bf93cc10493ade6521aa80.jpg)
Source: Orchard, Ramey, Wieland (2023). This is total motor vehicles, not new motor vehicles.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/5c3a9432e1cffeda6585fcc2e4cceb9e32af9c56a6e1a62880709cd325cb5a72.jpg)
Motor Vehicles: GE
- General equilibrium dampening
- Parker et al. (2013) only estimate relative effects
- Perhaps control group was affected
Higher demand for cars may have raised the price of cars
- Problems with specification / estimator (two-way fixed effects)
Causal effect is dynamics (rise and fall).
Specification must take that into account, or else it is misspecified
In the presence of heterogeneous treatment effects, two-way fixed effects can have problems
(e.g., Sun and Abraham 2020, Borusyak, Jaravel, Spiess, 2022)
Households have low consumption in period before they report a rebate
$$

C _ {i, t + 1} - C _ {i, t} = \sum_ {s} \beta_ {0 s} \times m o n t h _ {s, i} + \beta_ {1} ^ {\prime} X _ {i, t} + \beta_ {2} E S P _ {i, t + 1} + u _ {i, t + 1}

$$
- Suppose true causal effect is dynamics: Consumption rises, then falls
- If specification is not dynamic (i.e., no lags), some "control" observations will be experiencing post-treatment fall in consumption
This will "contaminate" the controls
- Adding lagged treatment "fixes" this problem (as Parker et al. (2013) do in their Table 5)
- Critiques of two-way fixed effect regressions focus on the use of always-treated / earlier-treated units as controls
- Basic idea: If treatment effect  $(Y_{i,t}(1) - Y_{i,t}(0))$  is different at different times, always-treated / earlier-treated units will not be valid controls
- But potential outcome if untreated  $(Y_{i,t}(0))$  may also vary over time. Not clear this issue is less important
Diff-in-Diff and TWFE are fundamentally parametric.
- Hard to say anything without some assumptions
- Whether a given assumption (about  $Y_{i,t}(1) - Y_{i,t}(0)$  or  $Y_{i,t}(0)$ ) is problematic will depend on setting
Figure 6. TWFE Coefficients in the Full and Rebate Only Samples By Month
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/ee5de38630b448e187aa3d64dfff23dff646ec695acd46c03388df3d66cbc072.jpg)
Treated-Not Yet Treated Past Treated
Source: Orchard, Ramey, Wieland (2023). Black bars are recipients versus not-yet or never treated. Red bars are recipients versus previously treated.
Table 4. Negative effect of future rebate receipt on current expenditure
<table><tr><td></td><td>Full Sample (1)</td><td>Rebate Recipients Only (2)</td></tr><tr><td rowspan="2">Lead Rebate Indicator</td><td>-866.5***</td><td>-562.0*</td></tr><tr><td>(289.5)</td><td>(335.9)</td></tr><tr><td rowspan="2">Rebate Indicator</td><td>-383.4</td><td>246.1</td></tr><tr><td>(303.8)</td><td>(377.8)</td></tr><tr><td>Observations</td><td>16,962</td><td>10,076</td></tr></table>
Notes: The dependent variable is the Level of PCE. Regressions include interview (time) fixed effects, and household level controls for age, change in number of adults, and change in number of children.Standard errors, in parentheses, are clustered at the household level:  $^* p <   0.1$ $^{**}p <   0.05$ $^{**}p <   0.01$
Source: Orchard, Ramey, Wieland (2023). Anticipation effect? Recall bias?
Panel B: Rebate Recipients Only
<table><tr><td></td><td colspan="2">Homogeneous Treatment Effect</td><td colspan="2">Heterogeneous Treatment Effect</td></tr><tr><td></td><td>(1)</td><td>(2)</td><td>(3)</td><td>(4)</td></tr><tr><td>Rebate Indicator</td><td>811.07**</td><td>544.36</td><td>633.99</td><td>355.01</td></tr><tr><td></td><td>(323.27)</td><td>(344.12)</td><td>(406.07)</td><td>(500.40)</td></tr><tr><td>Lag Rebate Indicator</td><td></td><td>-481.50</td><td>-203.34</td><td>-345.32</td></tr><tr><td></td><td></td><td>(374.61)</td><td>(325.30)</td><td>(361.87)</td></tr><tr><td>Lag Total Expenditure</td><td></td><td></td><td></td><td>-0.29***</td></tr><tr><td></td><td></td><td></td><td></td><td>(0.02)</td></tr><tr><td>Lag Motor Vehicle</td><td></td><td></td><td></td><td>-0.71***</td></tr><tr><td></td><td></td><td></td><td></td><td>(0.03)</td></tr><tr><td>Implied 3-month MPC</td><td>0.87</td><td>0.58</td><td>0.67</td><td>0.37</td></tr><tr><td>Implied 6-month MPC</td><td></td><td>0.63</td><td>1.14</td><td>0.06</td></tr><tr><td>6-Month MPC S.E.</td><td></td><td>(0.93)</td><td>(1.08)</td><td>(1.19)</td></tr><tr><td>Income Decile FE</td><td>No</td><td>No</td><td>No</td><td>Yes</td></tr><tr><td>Observations</td><td>10,076</td><td>10,076</td><td>10,076</td><td>10,076</td></tr></table>
Notes: The dependent variable is the change in Personal Consumption Expenditure (PCE). Regressions include interview (time) fixed effects, and household level controls for age, change in number of adults, and change in number of children. Standard errors for the 6-month MPC are estimated via Delta-method. The rebate coefficients in columns (3) and (4) are the weighted average of the interaction between rebate cohort and the (lagged) rebate indicator with weights computed following Sun and Abraham (2021). Standard errors, in parentheses, are clustered at the household level:  $^* p <   0.1$ $^{**}p <   0.05$ $^{***}p <   0.01$
Source: Orchard, Ramey, Wieland (2023).
Table 5. Household Spending Response to Rebate by Subcategory
<table><tr><td rowspan="2"></td><td colspan="2">Full Sample</td><td colspan="2">Rebate Only Sample</td></tr><tr><td>Motor Vehicles (1)</td><td>Other PCE (2)</td><td>Motor Vehicles (3)</td><td>Other PCE (4)</td></tr><tr><td rowspan="2">Rebate Indicator</td><td>308.41***</td><td>-20.28</td><td>286.72*</td><td>68.29</td></tr><tr><td>(114.69)</td><td>(145.54)</td><td>(173.35)</td><td>(460.16)</td></tr><tr><td rowspan="2">Lag Rebate Indicator</td><td>129.58</td><td>-181.36</td><td>138.07</td><td>-483.39</td></tr><tr><td>(94.72)</td><td>(133.82)</td><td>(120.18)</td><td>(343.67)</td></tr><tr><td rowspan="2">Lag Total Expenditure</td><td>0.02***</td><td>-0.28***</td><td>0.02***</td><td>-0.32***</td></tr><tr><td>(0.01)</td><td>(0.03)</td><td>(0.01)</td><td>(0.02)</td></tr><tr><td rowspan="2">Lag Motor Vehicle</td><td>-1.04***</td><td>0.30***</td><td>-1.04***</td><td>0.33***</td></tr><tr><td>(0.01)</td><td>(0.03)</td><td>(0.01)</td><td>(0.03)</td></tr><tr><td>Implied 3-month MPC</td><td>0.33</td><td>-0.02</td><td>0.30</td><td>0.07</td></tr><tr><td>Income Decile FE</td><td>Yes</td><td>Yes</td><td>Yes</td><td>Yes</td></tr><tr><td>Observations</td><td>16,962</td><td>16,962</td><td>10,076</td><td>10,076</td></tr></table>
Source: Orchard, Ramey, Wieland (2023).
- Parker (1999) and Souleles (1999) find that households respond to predictable changes in income
- Parker (1999): Households hitting SS tax limit
- Souleles (1999): Tax rebates
- Parker (1999) and Souleles (1999) find that households respond to predictable changes in income
- Parker (1999): Households hitting SS tax limit
- Souleles (1999): Tax rebates
$\bullet$  Interpretations:
1. Failure of "LC-PIH"
2. Too small and irregular for households to plan for (but why does that mean spend as opposed to save)
- Parker (1999) and Souleles (1999) find that households respond to predictable changes in income
- Parker (1999): Households hitting SS tax limit
- Souleles (1999): Tax rebates
Interpretations:
1. Failure of "LC-PIH"
2. Too small and irregular for households to plan for (but why does that mean spend as opposed to save)
- Browning and Collado (2001) study large predictable seasonal variation in earnings in Spain and find no response of consumption
Studies consumption response to payments from Alaska's Permanent Fund
- Payments are large and predictable
Studies consumption response to payments from Alaska's Permanent Fund
- Payments are large and predictable
- Finds no response of consumption to these payments
- In contrast, finds that Alaskan household are excessively sensitive to income tax rebates
Studies consumption response to payments from Alaska's Permanent Fund
- Payments are large and predictable
- Finds no response of consumption to these payments
- In contrast, finds that Alaskan household are excessively sensitive to income tax rebates
- Concludes: Households will behave according to "LC-PIH" when it comes to large and regular payments
Created in 1976
25\% of states government's oil royalties go to fund
- Since 1982, about  $50\%$  of fund dividends distributed to Alaskan residents
Created in 1976
25\% of states government's oil royalties go to fund
- Since 1982, about  $50\%$  of fund dividends distributed to Alaskan residents
- Subject to eligibility, every resident gets the same amount
- Amount equal to payment  $t \times$  familysize $_h$
Over sample period, payments varied from low of  \$331 in 1984 to high of\$ 1,964 in 2000
Created in 1976
-  $25\%$  of states government's oil royalties go to fund
- Since 1982, about  $50\%$  of fund dividends distributed to Alaskan residents
- Subject to eligibility, every resident gets the same amount
Amount equal to payment  $t \times$  familysize
Over sample period, payments varied from low of  \$331 in 1984 to high of\$ 1,964 in 2000
Good for testing "LC-PIH":
- Payments are large and predictable
- Application in March. Dispersement in October. Amount set in September. But estimated by newspapers before that.
- Main data source: Consumer expenditure survey
- Aggregates observations to household level
- Drops households in student housing, lacking family size, age of head of household, or food expenditures. Also drops movers.
Total number of observations: about 800
TABLE 1-SAMPLE STATISTICS
<table><tr><td></td><td colspan="2">Alaska</td><td colspan="2">Other 49 states</td></tr><tr><td></td><td>Mean</td><td>Standard deviation</td><td>Mean</td><td>Standard deviation</td></tr><tr><td colspan="5">Monthly consumption (July-September)</td></tr><tr><td>Nondurable consumption</td><td>1,107</td><td>(998)</td><td>792</td><td>(656)</td></tr><tr><td>Food and alcohol</td><td>412</td><td>(221)</td><td>310</td><td>(211)</td></tr><tr><td>Apparel and services</td><td>109</td><td>(139)</td><td>83</td><td>(119)</td></tr><tr><td>Entertainment and personal care</td><td>161</td><td>(744)</td><td>83</td><td>(358)</td></tr><tr><td>Durable consumption</td><td>713</td><td>(1,178)</td><td>528</td><td>(1,097)</td></tr><tr><td colspan="5">Monthly Consumption (October-December)</td></tr><tr><td>Nondurable consumption</td><td>1,109</td><td>(646)</td><td>802</td><td>(601)</td></tr><tr><td>Food and alcohol</td><td>396</td><td>(210)</td><td>296</td><td>(197)</td></tr><tr><td>Apparel and services</td><td>140</td><td>(186)</td><td>103</td><td>(147)</td></tr><tr><td>Entertainment and personal care</td><td>142</td><td>(208)</td><td>83</td><td>(236)</td></tr><tr><td>Durable consumption</td><td>643</td><td>(962)</td><td>512</td><td>(996)</td></tr><tr><td>Family size</td><td>2.7</td><td>(1.5)</td><td>2.6</td><td>(1.5)</td></tr><tr><td>Age</td><td>42.1</td><td>(13.3)</td><td>48.9</td><td>(17.6)</td></tr><tr><td>Pretax family income (monthly)</td><td>2,898</td><td>(2,341)</td><td>2,068</td><td>(2,169)</td></tr><tr><td>Alaska dividend fund income (per family)</td><td>2,048</td><td>(1,310)</td><td></td><td></td></tr><tr><td>Number of observations</td><td>806</td><td></td><td>56,801</td><td></td></tr></table>
Notes: All nominal values were converted to 1982-1984 dollars. Alaska dividend fund income is for observations from 1984-2000.
Source: Hsieh (2003)
$$

\log \left(\frac {C _ {t h} ^ {I V}}{C _ {t h} ^ {I I I}}\right) = \alpha_ {1} \frac {P F D _ {t} \times f a m i l y s i z e _ {h}}{F a m i l y i n c o m e _ {h}} + z _ {t h} ^ {\prime} \alpha_ {2} + \epsilon_ {t h}

$$
-  $C_{th}^{IV}$  is non-durable consumption of household  $h$  in quarter  $IV$
-  $PFD_{t}$  is Permanent Fund payout per person in year  $t$
-  $z_{h}$  contains constant, change in # adults, # children, 2nd order polynomial in age of household head
-  $\alpha_{1}$  measures elasticity of household consumption with respect to increase in income due to Permanent Fund payments
TABLE 2-RESPONSE OF CONSUMPTION TO ALASKA PFD
<table><tr><td></td><td colspan="3">dlog(Nondurable consumption)</td><td colspan="3">dlog(Durable consumption)</td></tr><tr><td></td><td>(1)</td><td>(2)</td><td>(3)</td><td>(4)</td><td>(5)</td><td>(6)</td></tr><tr><td>PFDt× Family Sizeh</td><td>0.0002</td><td>-0.0167</td><td>-0.0034</td><td>-0.1659</td><td>-0.1741</td><td>-0.1488</td></tr><tr><td>Family Incomeh</td><td>(0.0324)</td><td>(0.0336)</td><td>(0.0328)</td><td>(0.0878)</td><td>(0.0916)</td><td>(0.0890)</td></tr><tr><td>Controls for:</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Family size</td><td>No</td><td>No</td><td>Yes</td><td>No</td><td>No</td><td>Yes</td></tr><tr><td>Year dummies</td><td>No</td><td>Yes</td><td>No</td><td>No</td><td>Yes</td><td>No</td></tr><tr><td>Number of observations</td><td>806</td><td>806</td><td>806</td><td>806</td><td>806</td><td>806</td></tr></table>
Notes: Dependent variable is  $\log (C_{IV} / C_{III})$ . Standard errors are in parentheses. All regressions are ordinary least squares (OLS) and include a quadratic in age and changes in the number of children and adults in the household.
Source: Hsieh (2003)
Baseline elasticity for non-durable consumption 0.0002 (s.e. 0.0324)
- Typical shock  $20\%$ . Response 0.004 percent or 4 cents.
Baseline elasticity for non-durable consumption 0.0002 (s.e. 0.0324)
Typical shock  $20\%$ . Response 0.004 percent or 4 cents.
- Baseline estimated from variation across years and across family size
- Perhaps seasonal pattern is different for households of different size
- 3rd column controls for family size (only uses variation across time)
TABLE 2-RESPONSE OF CONSUMPTION TO ALASKA PFD
<table><tr><td></td><td colspan="3">dlog(Nondurable consumption)</td><td colspan="3">dlog(Durable consumption)</td></tr><tr><td></td><td>(1)</td><td>(2)</td><td>(3)</td><td>(4)</td><td>(5)</td><td>(6)</td></tr><tr><td>PFDt× Family Sizeh</td><td>0.0002</td><td>-0.0167</td><td>-0.0034</td><td>-0.1659</td><td>-0.1741</td><td>-0.1488</td></tr><tr><td>Family Incomeh</td><td>(0.0324)</td><td>(0.0336)</td><td>(0.0328)</td><td>(0.0878)</td><td>(0.0916)</td><td>(0.0890)</td></tr><tr><td>Controls for:</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Family size</td><td>No</td><td>No</td><td>Yes</td><td>No</td><td>No</td><td>Yes</td></tr><tr><td>Year dummies</td><td>No</td><td>Yes</td><td>No</td><td>No</td><td>Yes</td><td>No</td></tr><tr><td>Number of observations</td><td>806</td><td>806</td><td>806</td><td>806</td><td>806</td><td>806</td></tr></table>
Notes: Dependent variable is  $\log (C_{IV} / C_{III})$ . Standard errors are in parentheses. All regressions are ordinary least squares (OLS) and include a quadratic in age and changes in the number of children and adults in the household.
Source: Hsieh (2003)
Baseline elasticity for non-durable consumption 0.0002 (s.e. 0.0324)
Typical shock  $20\%$ . Response 0.004 percent or 4 cents.
Baseline estimated from variation across years and across family size
- Perhaps seasonal pattern is different for households of different size
- 3rd column controls for family size (only uses variation across time)
- But perhaps seasonal pattern varied over time
- 2nd column controls for time effects (only uses variation in family size)
- Elasticity for durables negative and significant: -0.166 (0.088)
- Suggests households purchase durables in 3rd quarter, before payments are made
- This is consistent with theory, since this is when payment amount becomes known
- CEX only asks about income and assets in 1st and 4th interview
- Not possible to see what each household does with payments
- But survey starting dates random throughout year
- Can construct estimates for representative Alaskan family
FIGURE 1. AVERAGE CONSUMER DEBT AND BALANCES IN SAVINGS AND CHECKING ACCOUNTS (ALASKA RESIDENTS)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/190a7352d70a61c9621ebd9b99c6b0c739490331c30f5ffaf790682b91ea6970.jpg)
Source: Hsieh (2003) – Credit down by  \$680, savings and checking up by\$ 440 and \$640, respectively. Average received from Fund: \$2,000.
# WHY ARE RESULTS SO DIFFERENT FROM PREVIOUS LITERATURE?
- Perhaps Alaskan households less liquidity constrained
- But they are substantially younger ...
- And results hold for those with low income
- Perhaps due to size and visibility of payments
- Check this by considering response to income tax receipts (as in Souleles 1999)
TABLE 6—RESPONSE OF NONDURABLE CONSUMPTION TO INCOME TAX REFUNDS AND PFD
<table><tr><td></td><td colspan="2">dlog(Nondurable consumption)</td></tr><tr><td></td><td>log(CII/CI)</td><td>log(CIV/CIII)</td></tr><tr><td>PFDt× Family Sizeh</td><td>—</td><td>0.0032</td></tr><tr><td>Family Incomeh</td><td></td><td>(0.0562)</td></tr><tr><td>Income tax refundh</td><td>0.2831</td><td>—</td></tr><tr><td>Family Incomeh</td><td>(0.1140)</td><td></td></tr><tr><td>Number of observations</td><td>369</td><td>369</td></tr></table>
Notes: Dependent variable is  $\log (C_{II} / C_I)$  in the first column and  $\log (C_{IV} / C_{III})$  in the second column. Standard errors are in parentheses. All regressions are OLS and include a quadratic in age and changes in the number of children and adults in the household.
Source: Hsieh (2003)
- Households display excess sensitivity to small, unpredictable, hard to predict changes in income
- Consistent with Parker (1999), Souleles (1999), Johnson-Parker-Souleles (2006), Parker et al. (2013)
- Households display excess sensitivity to small, unpredictable, hard to predict changes in income
- Consistent with Parker (1999), Souleles (1999), Johnson-Parker-Souleles (2006), Parker et al. (2013)
- Households do not display excess sensitivity to large, predictable, highly visible changes in income
Consistent with Paxson (1992), Browning and Collado (2001)
Revisits Hsieh's (2003) analysis and gets very different results
Revisits Hsieh's (2003) analysis and gets very different results
- Normalizes dividend payments by total expenditure as opposed to current total family pre-tax income
This makes a big difference
Lots of measurement error in family income variable
Attenuation bias
Revisits Hsieh's (2003) analysis and gets very different results
- Normalizes dividend payments by total expenditure as opposed to current total family pre-tax income
This makes a big difference
Lots of measurement error in family income variable
Attenuation bias
- Extends sample by 12 years and uses non-Alaskans as control group
- Much more variation in dividend payments
Control group also improves precision
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/30fbe4e78460a75154cf4d70f4a7d988bfe40e2f6c37bfc71d1b65de14aff78a.jpg)
Figure 2 - Alaska Permanent Fund Dividend per person, 1982-2014 (nominal amount)
Source: Kueng (2015)
$$

\log c _ {i, t} - \log c _ {i, t - 1} = \alpha_ {1} \frac {P F D _ {t} \times f a m i l y s i z e _ {i}}{y _ {i}} + \alpha_ {2} ^ {\prime} z _ {i, t} + \epsilon_ {i, t}

$$
$y_{i}$  is either total expenditures or pre-tax total income
$z_{i,t}$  is a vector of controls that may include fixed effects
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/63126cac18849bc8552dc2921989b4f629da846143ddea301756075bfefac2ef.jpg)
Figure 1 - Distribution of annual before-tax family income and total annualized expenditures
Source: Kueng (2015)
Table 2: Spending excess sensitivity tests using the Permanent Fund Dividend
<table><tr><td rowspan="3">Dep. var.: Δln(cu), nondurables and services</td><td colspan="5">Alaskans only</td><td colspan="4">All households</td></tr><tr><td colspan="2">Hsieh&#x27;s specification</td><td>replication and extension</td><td>normalize w/ total expend.</td><td>control for aggr. effects</td><td>more sample selection</td><td>using rest of U.S. as contol</td><td>control for all main effects</td><td>attenuation factor</td></tr><tr><td>(1)</td><td>(2)</td><td>(3)</td><td>(4)</td><td>(5)</td><td>(6)</td><td>(7)</td><td>(8)</td><td>(9)</td></tr><tr><td colspan="10">A: Sample 1980-2001</td></tr><tr><td rowspan="2">PFD x family size x Alaska / before-tax income</td><td>-0.003</td><td>-0.003</td><td></td><td></td><td></td><td></td><td></td><td></td><td>0.052**</td></tr><tr><td>(0.033)</td><td>(0.005)</td><td></td><td></td><td></td><td></td><td></td><td></td><td>(0.025)</td></tr><tr><td rowspan="2">PFD x family size x Alaska / total expenditures</td><td></td><td></td><td>0.123</td><td>0.124</td><td>0.126</td><td>0.090**</td><td>0.091**</td><td>0.107**</td><td></td></tr><tr><td></td><td></td><td>(0.086)</td><td>(0.112)</td><td>(0.127)</td><td>(0.036)</td><td>(0.036)</td><td>(0.043)</td><td></td></tr><tr><td>Number of observations (rounded)</td><td>806</td><td>800</td><td>800</td><td>800</td><td>600</td><td>315200</td><td>315200</td><td>315200</td><td>281500</td></tr><tr><td>Number of Alaskan obs. (rounded)</td><td>806</td><td>800</td><td>800</td><td>800</td><td>600</td><td>4300</td><td>4300</td><td>4300</td><td>3800</td></tr><tr><td>Number of clusters (rounded)</td><td>--</td><td>0</td><td>800</td><td>800</td><td>600</td><td>117000</td><td>117000</td><td>117000</td><td>103400</td></tr><tr><td>Number of Alaskan CUs (rounded)</td><td>806</td><td>800</td><td>800</td><td>800</td><td>600</td><td>1700</td><td>1700</td><td>1700</td><td>1500</td></tr><tr><td>R-squared</td><td>N/A</td><td>0.009</td><td>0.013</td><td>0.038</td><td>0.044</td><td>0.009</td><td>0.009</td><td>0.009</td><td>0.010</td></tr><tr><td>F-statistic for current and lagged dividend</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="10">B: Sample 1980-2013</td></tr><tr><td rowspan="2">PFD x family size x Alaska / before-tax income</td><td></td><td>-0.001</td><td></td><td></td><td></td><td></td><td></td><td></td><td>0.076***</td></tr><tr><td></td><td>(0.004)</td><td></td><td></td><td></td><td></td><td></td><td></td><td>(0.023)</td></tr><tr><td rowspan="2">PFD x family size x Alaska / total expenditures</td><td></td><td></td><td>0.116*</td><td>0.134*</td><td>0.125</td><td>0.113***</td><td>0.113***</td><td>0.136***</td><td></td></tr><tr><td></td><td></td><td>(0.060)</td><td>(0.077)</td><td>(0.087)</td><td>(0.027)</td><td>(0.027)</td><td>(0.032)</td><td></td></tr><tr><td>Number of observations (rounded)</td><td></td><td>1400</td><td>1400</td><td>1400</td><td>1000</td><td>559400</td><td>559400</td><td>559400</td><td>458000</td></tr><tr><td>Number of Alaskan obs. (rounded)</td><td></td><td>1400</td><td>1400</td><td>1400</td><td>1000</td><td>7100</td><td>7100</td><td>7100</td><td>5900</td></tr><tr><td>Number of clusters (rounded)</td><td></td><td>0</td><td>1400</td><td>1400</td><td>1000</td><td>206200</td><td>206200</td><td>206200</td><td>160000</td></tr><tr><td>Number of Alaskan CUs (rounded)</td><td></td><td>1400</td><td>1400</td><td>1400</td><td>1000</td><td>2800</td><td>2800</td><td>2800</td><td>2300</td></tr><tr><td>R-squared</td><td></td><td>0.004</td><td>0.007</td><td>0.032</td><td>0.039</td><td>0.007</td><td>0.007</td><td>0.007</td><td>0.009</td></tr><tr><td>- Other household characteristics</td><td>YES</td><td>YES</td><td>YES</td><td>YES</td><td>YES</td><td>YES</td><td>YES</td><td>YES</td><td>YES</td></tr><tr><td>- Family size</td><td>YES</td><td>YES</td><td>YES</td><td>YES</td><td>YES</td><td>YES</td><td>YES</td><td>YES</td><td>YES</td></tr><tr><td>- Period FEs</td><td></td><td></td><td></td><td>YES</td><td>YES</td><td>YES</td><td>YES</td><td>YES</td><td>YES</td></tr><tr><td>- Alaska FE</td><td></td><td></td><td></td><td></td><td></td><td>YES</td><td>YES</td><td>YES</td><td>YES</td></tr><tr><td>- Inverse total expenditures</td><td></td><td></td><td></td><td></td><td></td><td></td><td>YES</td><td>YES</td><td>YES</td></tr></table>
Notes: To maintain confidentiality, sample sizes in columns (2)-(10) are rounded to the nearest hundred. Columns (1)-(5) use only Alaskan households. For comparison, columns (3)-(4) use the same smaller sample as in columns (1)-(2) that excludes households with zero self-reported family income. Other household characteristics include quarterly changes in the number of children, adults, and seniors, and a quadratic in the age of the reference person. Robust standard errors in parentheses are clustered at the household level in columns (3)-(9), thereby adjusting for arbitrary within-household correlations and heteroskedasticity; OLS standard errors are used in columns (1) and (2).
Source: Kueng (2015)
- Normalizing by total expenditures dramatically changes results
- Results similar for extended sample (more significant without time FE)
- Normalizing by total expenditures dramatically changes results
- Results similar for extended sample (more significant without time FE)
- Using non-Alaskans as a control group improves precision (Why?)
- Normalizing by total expenditures dramatically changes results
- Results similar for extended sample (more significant without time FE)
Using non-Alaskans as a control group improves precision (Why?)
- Column 8 takes into account that on average only 83 cents per dollar of PFD is received in the form of cash income (some is garnished, also college fund, etc.)
# Up until now:
- Excess sensitivity of consumption to predictable movements in income
Another type of potential excess sensitivity:
- Consumption seems to track income over the life-cycle
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/45e690372b70c1faea9dd15519a1f63ae8a1667cf9e5e7f86f36cc3954941788.jpg)
FIGURE 1. CONSUMPTION AND INCOME OVER THE LIFE CYCLE
Note: Connected solid, solid and dashed lines represent different cohorts.
Source: Attanasio and Browning (1995). Data are from the UK Family Expenditure Survey.
- Consumption needs may vary over the life-cycle
- Most obvious source of such variation is family size and composition
- Attanasio and Browning (1995) regress cohort-year averages of consumption on cohort-year averages of:
Number of children
Number of adults
- Log of family size
- Dummy for at least one child
Then plot residual consumption
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/40c32ac4b030e771fa28410e72bdadd2f7910d41aa345653a209a26e61e8d2c2.jpg)
FIGURE 2. UNADJUSTED AND ADJUSTED CONSUMPTION OVER THE LIFE CYCLE
Note: Connected solid, solid and dashed lines represent different cohorts.
Source: Attanasio and Browning (1995). Data are from the UK Family Expenditure Survey.
- Interpretation not clear
- Does family size cause differences in consumption over life-cycle?
- Or is it simply possible to predict age with family size variables used by Attanasio and Browning?
- More informative to see if people of the same age that have different family size have different levels of consumption
Estimate age profile of consumption and income using U.S. data from the Consumer Expenditure Survey
Household-level regression:
$$

\log \tilde {C} _ {i} = f _ {i} \pi_ {1} + a _ {i} \pi_ {2} + b _ {i} \pi_ {3} + \mathcal {U} _ {i} \pi_ {4} + \operatorname {R e t} _ {i} \pi_ {5} + \epsilon_ {i}

$$
-  $f_{i}$ : family size dummies;
$a_{i}$  : age dummies
$b_{i}$  : cohort dummies;
$\mathcal{U}_i$  : unemployment rate
- Ret: dummy for retired
Control for family size at household level and conditional on age
- Do people of the same age with different family size have different levels of consumption
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/bcc5f200e6b87baea7862ff86d4c9da9f07116df36aa39c09d0b31fa6681c747.jpg)
Thousands of 1987 dollars
FIGURE 2.—Household consumption and income over the life cycle.
Source: Gourinchas-Parker (2002). Takes out cohort effects. Family size held constant over life-cycle.
- Gourinchas and Parker allow for age effects and cohort effects but not time effects
$$

\log \tilde {C} _ {i} = f _ {i} \pi_ {1} + a _ {i} \pi_ {2} + b _ {i} \pi_ {3} + \mathcal {U} _ {i} \pi_ {4} + \mathrm {R e t} _ {i} \pi_ {5} + \epsilon_ {i}

$$
- All three types of effects may be important:
Age: income, productivity, preference vary with age
Cohort: Later cohorts richer, more educated, etc. at a given age
Time: Business cycles may affect consumption
- "Annoying identity":  $T - A = C$
- Can't control for all three!
Gourinchas and Parker use unemployment to proxy for time effect:
$$

\log \tilde {C} _ {i} = f _ {i} \pi_ {1} + a _ {i} \pi_ {2} + b _ {i} \pi_ {3} + \mathcal {U} _ {i} \pi_ {4} + \mathsf {R e t} _ {i} \pi_ {5} + \epsilon_ {i}

$$
Schulhofer-Wohl (2018) shows that it is the slope of the consumption profile that is unidentified
- True consumption profile may have different trend (e.g., more upward sloping)
- Proposes a method to pick trend and concludes that consumption profile IS more upward sloping
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/ea2a9dbf67d171b8090d2bbabde1d95eefcf592e1b1798134f1b957622c22aa2.jpg)
Source: Schulhofer-Wohl (2018).
- PIH/LCH predicts that fast growing countries should have very different age-consumption profiles at a point in time than slow growing countries. (How should they differ?)
- PIH/LCH predicts that fast growing countries should have very different age-consumption profiles at a point in time than slow growing countries. (How should they differ?)
- In a fast growing country, young have much higher life-time resources than old
In a slow growing country, less so.
- Age-consumption profile should be more downward sloping in fast growing countries than slow growing (Relies imperfect sharing of income across generations within families)
(a)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/15e07abc82472585a3c63d65083890a3764582fe709c3ba6c2b2bc3c1c54772a.jpg)
Source: Carroll and Summers (1991). Households desire  $2\%$  consumption growth.
Point in time consumption profile.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/468c475b23b94de695327681b84f69a612a3c22871c57cda3beadb390a82a55b.jpg)
US
Japan
Canada
□ Britain
Denmark
Norway
Source: Carroll and Summers (1991). Consumption profiles from the mid 1980s.
Growth in per capita GNP from 1960-1985:
Japan:  $5.2\%$
U.S.: 2.1\%
- Yet Japan has a steeper consumption profile than US!!
What about family transfers?
- Perhaps there is some common cause of income growth and consumption growth across countries
- But what if we look across education groups or occupations within a country?
- Education groups and occupations with steeper income profiles should borrow more early in life according to PIH/LCH
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/f4848cda62b21a3bb2b0c54fe107f47ca76833d8c7a0ccb00136acf05afdbc5f.jpg)
Some Grade School
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/2b8b5fbba4ab5593d338808a70d92bce895bd07d26b56c2be5e110fbc3c7e5be.jpg)
Some High School
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/7d58e855e8e51c9c2485f41643e00f5a11730947ee91b16273c5a6faadb32dbb.jpg)
Finished High School
Some College
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/ae12d8d9ae4408bb85c0b4d8f403acc5855fd5015993e73b0986c945790644a4.jpg)
- Disposable Income - Consumption
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/2b10f34ff372d802843c601d9110c13ad01ba823473d5000f70cd7299ababf79.jpg)
Finished College
Source: Carroll and Summers (1991). Data from the US CES.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/c5c00369014a18023c3f38ceb02e213b91ab44f62b5dcec1877c16849da51960.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/1edd230ffc29a26352dc18b30dcb761c4fe46d5e288a4dc948184c19c2ec6b90.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/22d09dff07fc4f2a0c6c45d14d52199f637483a8704b575095f802ae2265070d.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/08b206b6a517e97161623fc91a18e805d0249f8be8841646a1d375c81a3dbe2c.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/1f494a917ff6997fac8d342d2d092d05208a5ae472ad4968037892e956281457.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/28466a9bbea789adfb4ab4d35159ee3304bb62ceee98c6ef2fc70b09ee845485.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/916c6875180278b73ab454809fcb01535d6e9bf40630977712f1c894e5867c7a.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/75480fc4d088f868700fefdd88c570ee81b10e81d1d8b124aec1c8adc3f033a3.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/2671f165003da6a07bf7dc06538c9f064191a70930f6b36d9d295423cfd63252.jpg)
- Disposable Income - Consumption
Source: Carroll and Summers (1991). Data from the US CES.
# PRECAUTIONARY SAVINGS, LIQUIDITY
# CONSTRAINTS, AND SELF-CONTROL
#
University of California, Berkeley
Fall 2023
# THREE IMPORTANT IDEAS
Precautionary Saving
- Liquidity Constraints
Self-Control Problems
Suppose for simplicity  $\beta (1 + r) = 1$
- Consumption Euler equation:
$$

U ^ {\prime} \left(C _ {t}\right) = E _ {t} U ^ {\prime} \left(C _ {t + 1}\right)

$$
- With quadratic utility:
$$

C _ {t} = E _ {t} C _ {t + 1}

$$
This implies certainty equivalence:
-  $C_t$  depends only on  $E_t C_{t+1}$  not  $\operatorname{var}_t(C_{t+1})$  (or any higher moments)
Suppose for simplicity  $\beta (1 + r) = 1$
- Consumption Euler equation:
$$

U ^ {\prime} \left(C _ {t}\right) = E _ {t} U ^ {\prime} \left(C _ {t + 1}\right)

$$
- With quadratic utility:
$$

C _ {t} = E _ {t} C _ {t + 1}

$$
This implies certainty equivalence:
-  $C_t$  depends only on  $E_t C_{t+1}$  not  $\operatorname{var}_t(C_{t+1})$  (or any higher moments)
$\bullet$  Very extreme model:
- Savings behavior unaffected by uncertainty!!
- Consumption smoothing and intertemporal substitution only forces affecting savings (same thing for linearized or log-linearized models)
- With quadratic utility, utility cost of given variance of consumption is independent of the level of consumption
Amount of curvature of utility independent of level
- Jensen's inequality term independent of the level
- But marginal utility falls with level of consumption
- Thus, with quadratic utility, consumers are willing to pay more to avoid a given amount of uncertainty (particular dollar coin toss) the richer they are
- Quadratic utility implies increasing absolute risk aversion
- Constant Relative Risk Aversion (CRRA):
$$

U (C) = \left\{ \begin{array}{l l} \frac {C ^ {1 - \gamma} - 1}{1 - \gamma} & \text {i f} \gamma \neq 1 \\ \log C & \text {i f} \gamma = 1 \end{array} \right.

$$
Relative Risk Aversion  $= -\frac{U''(C)C}{U'(C)} = \gamma$
- Constant Absolute Risk Aversion (CARA):
$$

U (C) = - \frac {\exp (A C)}{A}

$$
Absolute Risk Aversion  $= -\frac{U''(C)}{U'(C)} = A$
- Increasing absolute risk aversion completely unrealistic
- Implications for portfolio allocation:
- CRRA: Constant share in risky assets
- CARA: Constant dollar amount in risky assets
IARA: Decreasing dollar amount in risky assets as wealth increases
- In reality, richer people allocate larger share of wealth to risky assets
Suggests decreasing relative risk aversion (DRRA)
(CRRA not such a bad approximation)
See Gollier (2001, ch 2.) for more detailed discussion of various forms of risk aversion.
- Curvature of utility almost surely falls as consumption rises:
$$

U ^ {\prime \prime \prime} \left(C _ {t}\right) > 0

$$
What does this imply about savings?
- Curvature of utility almost surely falls as consumption rises:
$$

U ^ {\prime \prime \prime} \left(C _ {t}\right) > 0

$$
What does this imply about savings?
- With  $U''(C_t) > 0$ ,  $U'(C_t)$  is convex
- If  $C_t = E_t C_{t+1}$ , then
-  $U'(C_t) < E_t U'(C_{t+1})$  (since  $U'(C_t) = U'(E_t C_{t+1}) < E_t U'(C_{t+1})$ )
- Marginal reduction in  $C_t$  (increase in saving) increases utility
- This extra saving relative to certainty equivalent case is called precautionary saving
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/a456e502dca15369e667b14c7ea3147e399e72e8049919503f09b22c8a91dfc6.jpg)
Source: Romer (2019). 50-50 chance of  $C_H$  and  $C_L$ .
(b)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/f89912f5cf7ba7701ffef256be3079282c5677ef3d290fd04ea758c57e712e53.jpg)
Source: Romer (2019)
Definition: (Kimball, 1990) An agent is prudent if adding an uninsurable zero-mean risk to their future wealth raises their optimal savings
Proposition: (Leland, 1968) An agent is prudent if and only if the marginal utility of future consumption is convex.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/6f01fd00667e2e29fbffd230e1f58d9df3148aa40ac0f9562f76d0764d06549d.jpg)
Thousands of 1987 dollars
- Consumption smoothing over the life-cycle likely involves substantial borrowing early in life
- Simple PIH/LCH model assumes people can borrow (unsecured) at same rate as they can save
Highly unrealistic:
- Most household borrowing is secured (e.g., mortgages, car loans)
- Interest rates on car loans and even mortgages substantially higher than on savings accounts
- Interest rates on unsecured consumer lending (i.e., credit cards) extremely high ( $\sim 20\%$ )
- Limits on unsecured borrowing beyond which can't go at any rate
Two effects of liquidity constraints:
1. Less borrowing when they bind
2. Less borrowing even when they don't bind because they may bind in the future
- Bad shock tomorrow may cause low consumption due to binding liquidity constraint at that point
- Consumer saves today to "self-insure" against this future bad shock
- Liquidity constraints and prudence cause households facing uninsurable income risk to engage in buffer stock saving (i.e., self-insurance)
Other sources of saving:
- Life-cycle saving to smooth consumption over the life-cycle relative to life-cycle profile of income
- Saving due to patience/impatience. If  $1 / \beta \neq (1 + r)$  household will tilt consumption profile (down if impatient, up if patient)
- Saving due to intertemporal substitution. If interest rates are temporarily high, consumers save more to take advantage of this
# Depends crucially on  $\beta (1 + r)$
If  $\beta (1 + r) = 1$
Households will eventually save themselves out of constraint
I.e., save enough that they will eventually never hit constraint
- At that point, full consumption smoothing
If  $\beta (1 + r) < 1$
- Households sufficiently impatient that they don't eventually save themselves out of the constraint
- Finite amount of buffer stock savings
- Lack of full consumption smoothing even in the long run
- If  $\beta (1 + r) > 1$ : Asset holdings explode in the long run
Households maximize
$$

\mathbb {E} _ {0} \sum_ {t = 0} ^ {\infty} \beta^ {t} \frac {C _ {t} ^ {1 - \gamma}}{1 - \gamma},

$$ subject to
$$

W _ {t + 1} = R \left(W _ {t} + Y _ {t} - C _ {t}\right)

$$
$$

Y _ {t} = P _ {t} V _ {t}

$$
$$

P _ {t} = P _ {t - 1} N _ {t}

$$ where  $V_{t}$  and  $N_{t}$  are i.i.d. log-normal random variables.

- $R$  is given exogenously (partial equilibrium)
Household income shocks are uninsurable
- In some versions, household faces borrowing constraint  $W_{t} \geq \underline{W}$
See Zeldes (1989), Deaton (1991), Carroll (1992, 1997)
- Problem Sets 8 and 9 ask you to solve two versions of this model
Zeldes-Deaton-Carroll argue that model helps explain:
High MPC out of transitory windfalls
- That consumption tracks income over the life-cycle (need impatient households for this)
- Sometimes called the "buffer stock model"
- General equilibrium version called Bewely-Aiyagari-Hugget model (i.e., interest rate is endogenous)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/d019e72c114dca48302cd0d24be80948cd7fa6d4b33c8f330fa6a70c05d3a458.jpg)
$$
T = 1 5
$$

Income Processes: 1A, 2

U =  $\frac{C^{1 - A}}{1 - A}$  A=3 Expected future income equals 100 per period

Source: Zeldes (1989)

Basic Zeldes-Deaton-Carroll model very stylized

Is buffer stock saving important quantitatively?

Add:

Realistic life-cycle income process with retirement

- Longevity risk
Health expenses
- Taxes and government transfer programs
# Figure 3a
# Average Consumption and Earnings by Age

No High School Degree gamma=3, delta=.03

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/5c361c4e3d943f8b9eb972c375e3efc468ac052afc1ce94a1effeaa518838d36.jpg)

Source:Hubbard-Skinner-Zeldes (1994)

Consumption does not equal earning for young in certainty case because of medical expenses.

Figure 2a

Average Assets by Age

No High School Degree gamma=3, delta=.03

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/b3b51b4d2ee682d5fcbd1cd0e846aa20956e9ce61e5e5aac9ce702e5b31558ee.jpg)

Source:Hubbard-Skinner-Zeldes (1994)

Precautionary savings and liquidity constraints:

- Yield life-cycle consumption profile the tracks income substantially
- Can contribute substantially to asset accumulation
- Go one step further than Hubbard-Skinner-Zeldes 94
Estimate the preference parameters
Thousands of 1987 dollars
FIGURE 2.—Household consumption and income over the life cycle.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/e3d60d1db6e23a9949c7802d7b39d2e61df11322d95096dad86449f3427f9a11.jpg)
Source: Gourinchas-Parker (2002)
TABLE III
STRUCTURAL ESTIMATION RESULTS
<table><tr><td>MSM Estimation</td><td>Robust Weighting</td><td>Optimal Weighting</td></tr><tr><td>Discount Factor (β)</td><td>0.9598</td><td>0.9569</td></tr><tr><td>S.E.(A)</td><td>(0.0101)</td><td></td></tr><tr><td>S.E.(B)</td><td>(0.0179)</td><td>(0.0150)</td></tr><tr><td>Discount Rate (β-1)-1)(\%)</td><td>4.188</td><td>4.507</td></tr><tr><td>S.E.(A)</td><td>(1.098)</td><td></td></tr><tr><td>S.E.(B)</td><td>(1.949)</td><td>(1.641)</td></tr><tr><td>Risk Aversion (ρ)</td><td>0.5140</td><td>1.3969</td></tr><tr><td>S.E.(A)</td><td>(0.1690)</td><td></td></tr><tr><td>S.E.(B)</td><td>(0.1707)</td><td>(0.1137)</td></tr><tr><td>Retirement Rule:</td><td></td><td></td></tr><tr><td>γ0</td><td>0.0015</td><td>5.6810-6</td></tr><tr><td>S.E.(A)</td><td>(3.84)</td><td></td></tr><tr><td>S.E.(B)</td><td>(3.85)</td><td>(16.49)</td></tr><tr><td>γ1</td><td>0.0710</td><td>0.0613</td></tr><tr><td>S.E.(A)</td><td>(0.1215)</td><td></td></tr><tr><td>S.E.(B)</td><td>(0.1244)</td><td>(0.0511)</td></tr><tr><td>χ2(A)</td><td>175.25</td><td></td></tr><tr><td>χ2(B)</td><td>174.10</td><td>185.67</td></tr></table>
Note: MSM estimation for entire group. Standard errors calculated without (A) and with (B) correction for first stage estimation. Cell size is 36,691 households. The last row reports a test of the overidentifying restrictions distributed as a Chi-squared with 36 degrees of freedom. The critical value at  $5\%$  is 50.71. Efficient estimates are calculated with a weighting matrix  $\widehat{\Omega}$  computed from the robust estimates.
Source: Gourinchas-Parker (2002)
- Reasonable discount rate of  $4\%$
(Carroll-Samwick 97 had suggested larger rates were needed)
- Reasonable IES of about 2 (sensitive to weighting matrix)
- Reasonable MPC in retirement of  $7 \%$ per year
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/7ffa42a062c85d195483dd06b59f9a2e7789c155ea23a266f846b9a859d2f1c2.jpg)
Thousands of 1987 dollars
Panel A: Baseline Estimation  $\beta = 0.960$ $\rho = 0.514$ $\gamma_{1} = 0.071$ $\gamma_0 = 0.001$
Panel B: Various  $\beta$
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/9578748d05465e62e3f3af0cdc8b987efde1c44df0f2c20159ca32245f1f85a1.jpg)
Source: Gourinchas-Parker (2002)
- Level of cash on hand at age  $t$  that is expected to remain unchanged:
$$
\bar {x} _ {t} = E _ {t} \left[ x _ {t + 1} \mid x _ {t} = \bar {x} _ {t} \right]
$$
- If  $x_{t} > \bar{x}_{t}$  households dissave on average
- If  $x_{t} < \bar{x}_{t}$  households build up assets on average
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/27fbcaddc5d1ae93d1f3652574a8eeb8537f26b985c13820cc4ff15175aa4ba4.jpg)
FIGURE 6.—Normalized target cash-on-hand by age.
Source: Gourinchas-Parker (2002). Cash-on-hand normalized by permanent income.
- Define life-cycle consumption as consumption under complete insurance markets
- Use this concept to construct:
Life-cycle savings / wealth
Buffer-stock savings / wealth
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/0d999f0150ff195614871a3c06389c4ea9ac0e431f5aee4868c44a385ffb7c06.jpg)
Thousands of 1987 dollars
Panel A: Life Cycle and Buffer Saving
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/e3f6fbf64a7f5b19a6cf4cbe5b85c624d7e71e516ea2caf0bd06dfbfd1ee44be.jpg)
Panel B: Life Cycle and Buffer Wealth
FIGURE 7.-The role of risk in saving and wealth accumulation.
Source: Gourinchas-Parker (2002)
# GOURINCHAS-PARKER 02:SUMMARY
- Can uninsurable income risk explain comovement of consumption and income over the life-cycle?
- Can uninsurable income risk explain comovement of consumption and income over the life-cycle?
Yes!
- Households are impatient (want downward sloping consumption profiles)
- Consumption constrained by income early in life
Households save for retirement later in life
- Standard incomplete markets models can't match large estimated spending responses of consumption to tax rebates
- Argue that incorporating illiquid wealth into model is key:
Liquid assets (-1.5\% real return)
Illiquid asset (2.3\% real return + 4\% service flow)
Unsecured debt (6\% real interest rate)
- Two types of hand-to-mouth agents:
- Poor hand-to-mouth (no illiquid wealth, no liquid wealth)
- Wealthy hand-to-mouth (have illiquid wealth, no liquid wealth)
This model generates much higher rebate responses
Common for people to display dissatisfaction with their choices
I am not saving enough for retirement
- I eat too much and exercise too little
- I spend too much time surfing the internet and work too little
One reaction:
- This is stupid. What you do are you actual preferences
- What you say are some imagined idealized preferences
- Everyone says they want to be fit and work really hard
- But the costs of achieving these goals actually outweigh the benefits for many people
An alternative reaction:
- Consumer regret is due to self-control problems
- Arises due to present biased preferences that give rise to preference reversals
An alternative reaction:
- Consumer regret is due to self-control problems
- Arises due to present biased preferences that give rise to preference reversals
- Consider the following choice for a worker:
1. 15 minute break today
2. 20 minute break tomorrow
An alternative reaction:
- Consumer regret is due to self-control problems
- Arises due to present biased preferences that give rise to preference reversals
- Consider the following choice for a worker:
1. 15 minute break today
2. 20 minute break tomorrow
- Now consider this choice:
1. 15 minute break in 100 days
2. 20 minute break in 101 days
An alternative reaction:
- Consumer regret is due to self-control problems
- Arises due to present biased preferences that give rise to preference reversals
- Consider the following choice for a worker:
1. 15 minute break today
2. 20 minute break tomorrow
- Now consider this choice:
1. 15 minute break in 100 days
2. 20 minute break in 101 days
- Choosing option 1 from the first set but option 2 from the second set indicates time-discounting that is not independent of horizon
Figure 1 Discounting as a Function of Time Delay and Money Amount.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/828b5f168349184fecb7f6c93c8f37d4323be47f5940a49c02b43a86bb036d7f.jpg)
Source: Benzion et al. (1989).
Source: Loewenstein and Thaler (1989). Based on experiments where subjects are asked how much they need to be compensated to delay receiving a reward.
- Exponential discounting:
Discount function:  $\beta^t$ : 1,  $\beta$ ,  $\beta^2$ ,  $\beta^3$ , etc.
Discount rate independent of horizon
- Degree of patience independent of horizon
Hyperbolic discounting:
Discount function:  $1 / t$  or  $1 / (1 + \alpha t)$  or  $1 / (1 + \alpha t)^{-\gamma /\alpha}$
- Quasi-hyperbolic discount function:  $\beta \delta^t$ : 1,  $\beta \delta$ ,  $\beta \delta^2$ ,  $\beta \delta^3$ , etc.
Non-constant rate of discounting
- More impatient about short run than long run
Figure 1
Discount Functions
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/f4f8e217d0df0fd8ad91e11b7b0b4698d980d5f3b9903d49e68c4a83440be385.jpg)
Exponential:  $\delta^{\tau}$ , with  $\delta = 0.944$ ; hyperbolic:  $(1 + \alpha \tau)^{-\gamma/\alpha}$ , with  $\alpha = 4$  and  $\gamma = 1$ ; and quasi-hyperbolic:  $[1, \beta \delta, \beta \delta^2, \beta \delta^3, \ldots]$ , with  $\beta = 0.7$  and  $\delta = 0.957$ .
Source: Angeles et al. (2001)
# TIME-CONSISTENT PREFERENCES
- Suppose an agent makes a state-contingent plan at time 0 about optimal current and future actions
- But when the future arrives, the agent can reoptimize
- Will they want to change their plan?
- Suppose an agent makes a state-contingent plan at time 0 about optimal current and future actions
- But when the future arrives, the agent can reoptimize
- Will they want to change their plan?
- If the agent discounts future utility exponentially, then they will not change their choices even if able to reoptimize
Their preferences are time consistent (aka dynamically consistent)
- If an agent's discount function in not exponential, then they will want to change their plan when allowed to reoptimize at a later date
Their preferences are time inconsistent (aka dynamically inconsistent)
Hyperbolic and quasi-hyperbolic preferences are time inconsistent
- Consider following choice:
- Small reward  $S$  at time  $t_1$
- Bigger reward  $B$  at a later time  $t_2$
Suppose agent has hyperbolic preferences
- Plot present utility from each option as a function of time
Figure 2
Non-Exponential Discounting.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/20f43a73dcdcf1361bedf9e9db67b2b885af1b60ca0bbdc1d2452447de11e0d1.jpg)
Source: Ainslie (1975).
Source: Loewenstein and Thaler (1989).
Hyperbolic discounting can explain the following type of behavior:
On Monday: "I'll work hard tomorrow."
On Tuesday: "I'll work hard tomorrow."
Etc.
- People with hyperbolic preferences want instant gratification today but simultaneously want to make patient investments tomorrow
- Useful to think of a person as having different selves, one for each point in time.
- Earlier selves wish to force later selves to act patiently
- Later selves maximize their own preferences (which are different)
Household problem becomes a game between different selves
- Sophisticates: Understand that future selves will want to act differently
- Want to constrain actions of future selves
- Want access to commitment devices
- Naifs: Act under false belief that future selves will carry out current plan
Helps explain procrastication among other things (Akerlof, 1991; O'Donoghue and Rabin, 1999)
Key references:
- Angeles et al. (2001), Laibson, Repetto, Tobacman (2003), Laibson, Lee, Maxted, Repetto, Tobacman (2023, but originally ca. 2001)
- Build sophisticated life-cycle consumption savings model
- Compare model with exponential and hyperbolic discounting
- Ask whether hyperbolic discounting helps explain the data (Baseline case is naifs, but sophisticates give similar conclusions)
- Model very similar to Kaplan-Violante (2014) (liquid assets, illiquid assets, credit card borrowing)
Conclusions radically different
- Laibson et al. (2023) estimate:  $\beta = 0.50$  and  $\delta = 0.99$
- Kaplan-Violante (2014) calibrate  $\beta = 0.941$
- Main tension is how to explain simultaneous:
Credit card borrowing at high interest
- Accumulation of illiquid assets
- Main difference: Assumptions about interest on credit card debt
- Laibson et al. (2023):  $12\%$  real credit card interest rate (data)
- Kaplan-Violante (2014): 6\% real credit card interest rate (calibrated)
- Exponential model can explain facts if credit card interest rate is  $6\%$  (return on illiquid asset is similarly high inclusive of service flow) but not if credit card interest rate is  $12\%$ .
- Many households have revolving credit card debt and positive liquid assets.
Kaplan-Violante:
Target a fraction of credit card borrowers of  $26\%$
- Compromise between fraction with negative net liquid wealth and fraction actually borrowing on credit cards
Laibson et al.:
Target fraction of credit card borrowers of about  $75\%$  (higher for young, somewhat lower for old)
- Agents with hyperbolic discounting can simultaneously display highly patient and impatient behavior (accumulate illiquid wealth and borrow on credit cards)
Figure 2
Simulated Mean Income and Consumption
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/b156a4d8a5d5142b8ea61a3a6562513b20b53f532505fda6e3c2a7815099a790.jpg)
Source: Angeles et al. (2001).
Figure 4
Mean Illiquid Assets of Households with Exponential and Hyperbolic Discount Functions
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/e6d0153dd720cc502ef1084cd15f93eb7b201fda32d3b130f74ef77a8a6ba192.jpg)
Source: Angeles et al. (2001).
Figure 5
Mean Liquid Assets and Liabilities
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/5847897ce58e6ac94cc337fe209ebac165a4f646b07b486b22465b883ef1bf81.jpg)
Source: Angeles et al. (2001).
# Table 1
# Percentage of Households with Liquid Assets Greater than One Month of Income
<table><tr><td rowspan="2">Age Group</td><td colspan="2">Simulated Data</td><td colspan="3">Survey of Consumer Finances</td></tr><tr><td>Exponential</td><td>Hyperbolic</td><td>Definition 1</td><td>Definition 2</td><td>Definition 3</td></tr><tr><td>ALL AGES</td><td>0.73</td><td>0.40</td><td>0.37</td><td>0.43</td><td>0.52</td></tr><tr><td>20–29</td><td>0.52</td><td>0.34</td><td>0.18</td><td>0.19</td><td>0.26</td></tr><tr><td>30–39</td><td>0.72</td><td>0.39</td><td>0.21</td><td>0.24</td><td>0.36</td></tr><tr><td>40–49</td><td>0.72</td><td>0.38</td><td>0.26</td><td>0.31</td><td>0.42</td></tr><tr><td>50–59</td><td>0.76</td><td>0.43</td><td>0.35</td><td>0.41</td><td>0.50</td></tr><tr><td>60–69</td><td>0.91</td><td>0.42</td><td>0.58</td><td>0.68</td><td>0.76</td></tr><tr><td>70+</td><td>0.77</td><td>0.46</td><td>0.62</td><td>0.71</td><td>0.78</td></tr></table>
Sources: Authors' simulations and 1995 SCF.
Notes: The table reports the fraction of households who hold more than a month's income in liquid wealth. Definition 1 includes cash, checking and savings accounts. Definition 2 includes definition 1 plus money market accounts. Definition 3 includes definition 2 plus call accounts, CDs, bonds, stocks and mutual funds.
Source: Angeles et al. (2001).
Table 2 Share of Assets in Liquid Form
<table><tr><td rowspan="2">Age Group</td><td colspan="2">Simulated Data</td><td colspan="2">Survey of Consumer Finances</td><td rowspan="2">Definition 3</td></tr><tr><td>Exponential</td><td>Hyperbolic</td><td>Definition 1</td><td>Definition 2</td></tr><tr><td>ALL AGES</td><td>0.51</td><td>0.41</td><td>0.08</td><td>0.10</td><td>0.16</td></tr><tr><td>20–29</td><td>0.97</td><td>0.86</td><td>0.13</td><td>0.14</td><td>0.18</td></tr><tr><td>30–39</td><td>0.65</td><td>0.46</td><td>0.09</td><td>0.10</td><td>0.14</td></tr><tr><td>40–49</td><td>0.35</td><td>0.24</td><td>0.06</td><td>0.07</td><td>0.10</td></tr><tr><td>50–59</td><td>0.20</td><td>0.13</td><td>0.04</td><td>0.05</td><td>0.09</td></tr><tr><td>60–69</td><td>0.27</td><td>0.12</td><td>0.09</td><td>0.10</td><td>0.20</td></tr><tr><td>70+</td><td>0.57</td><td>0.56</td><td>0.09</td><td>0.12</td><td>0.24</td></tr></table>
Sources: 1995 SCF and authors' simulations.
Notes: Asset share is liquid assets divided by total assets—liquid assets plus illiquid assets. The three different definitions used for liquid assets are the same as in Table 1. Three complementary definitions are used for illiquid assets. Illiquid assets include money market accounts, call accounts, CDs, bonds, stocks, and mutual funds if these assets were not included in the relevant liquid asset definition. In addition, illiquid assets include IRAs, defined contribution plans, life insurance, trusts, annuities, vehicles, home equity (net of mortgage), real estate, business equity, jewelry, furniture, antiques, and home durables.
Source: Angeletos et al. (2001).
# CONSUMPTION-BASED ASSET PRICING
#  and Jon Steinsson
UC Berkeley
Fall 2023
Why is the return on the stock market so high?
(Relative to the "risk-free rate")
Why is the stock market so volatile?
- What does this tell us about the risk and risk aversion?
- Consumption-based asset pricing starts from the Consumption Euler equation:
$$
U ^ {\prime} \left(C _ {t}\right) = E _ {t} \left[ \beta U ^ {\prime} \left(C _ {t + 1}\right) R _ {i, t + 1} \right]
$$
Where does this equation come from?
- Consume 1 less today
- Invest in asset  $i$
- Use proceeds to consume $ Rit+1 tomorrow
- Two perspectives:
- Consumption Theory: Conditional on  $R_{it+1}$ , determine path for  $C_t$
- Asset Pricing: Conditional on path for  $C_t$ , determine  $R_{it+1}$
- Return is defined as payoff divided by price:
$$
R _ {i, t + 1} = \frac {X _ {i , t + 1}}{P _ {i , t}}
$$
# where
- $X_{i,t+1}$  is (state contingent) payoff from asset  $i$  in period  $t+1$ .
- $P_{i,t}$  is price of asset  $i$  at time  $t$
$$
U ^ {\prime} \left(C _ {t}\right) = \beta E _ {t} \left[ U ^ {\prime} \left(C _ {t + 1}\right) R _ {i, t + 1} \right]
$$
A little manipulation yields:
$$
1 = E _ {t} \left[ \frac {\beta U ^ {\prime} \left(C _ {t + 1}\right)}{U ^ {\prime} \left(C _ {t}\right)} R _ {i, t + 1} \right]
$$ and using  $R_{i,t + 1} = X_{i,t + 1} / P_{i,t}$
$$
P _ {i, t} = E _ {t} \left[ \beta \frac {U ^ {\prime} \left(C _ {t + 1}\right)}{U ^ {\prime} \left(C _ {t}\right)} X _ {i, t + 1} \right]
$$
- Fundamental equation of consumption-based asset pricing
$$
1 = E _ {t} \left[ \frac {\beta U ^ {\prime} (C _ {t + 1})}{U ^ {\prime} (C _ {t})} R _ {i, t + 1} \right] P _ {i, t} = E _ {t} \left[ \beta \frac {U ^ {\prime} (C _ {t + 1})}{U ^ {\prime} (C _ {t})} X _ {i, t + 1} \right]
$$
Stochastic discount factor:
$$
M _ {t + 1} = \beta \frac {U ^ {\prime} (C _ {t + 1})}{U ^ {\prime} (C _ {t})}
$$
Yields:
$$
1 = E _ {t} \left[ M _ {t + 1} R _ {i, t + 1} \right] \quad P _ {i, t} = E _ {t} \left[ M _ {t + 1} X _ {i, t + 1} \right]
$$
$$
P _ {i, t} = E _ {t} \left[ M _ {t + 1} X _ {i, t + 1} \right]
$$
- Stochastic discount factor generalizes standard notion of discount factor
- With no uncertainty, standard present value formula gives
$$
P _ {i, t} = \frac {1}{R _ {f , t}} X _ {i, t + 1}
$$
- Since gross interest rates are usually above one, the payoff sells "at a discount"
In this case,  $1 / R_{f,t}$  is the discount factor
- $M_{t + 1}$  is the appropriate discount factor when there is risk
$$
1 = E _ {t} \left[ M _ {t + 1} R _ {i, t + 1} \right] \quad P _ {i, t} = E _ {t} \left[ M _ {t + 1} X _ {i, t + 1} \right]
$$
- Stochastic discount factor prices all assets!!
- All risk compensation for any asset can be incorporated by defining a single (random) variable  $M_{t+1}$  to discount payoffs with
- This (conceptually) simple view holds under the rather strong assumption that there exists a complete set of competitive markets
(Sometimes also called: pricing kernel, marginal rate of substitution, change of measure, or state-price density)
- Assets can have payoffs in multiple periods:
$$
P _ {i, t} = E _ {t} \left[ M _ {t + 1} \left(D _ {i, t + 1} + P _ {i, t + 1}\right) \right]
$$ where  $D_{i,t + 1}$  is the dividend, and  $P_{i,t + 1}$  is (ex dividend) price
- Works for stocks, bonds, options, everything.
- Suppose  $P_{s,t,t+1}$  is the price at time  $t$  of the Arrow security that pays \$1 if state  $s$  occurs at time  $t + 1$  and zero otherwise
- Asset with payoffs  $X_{t+1}$  over states at time  $t + 1$  can be replicated with a bunch of Arrow securities
- $X_{1,t+1}$  units of the Arrow security that pays off in state 1
- $X_{2,t+1}$  units of the Arrow security that pays off in state 2
Etc.
- If asset markets are perfectly competitive, the price of asset with payoff  $X_{t+1}$  should be the same as the price of the collection of Arrow assets that yield the same payoff
- If not, then there would exist an arbitrage opportunity (i.e., opportunity for risk-less gain)
The price of any security can by written two ways:
$$
P _ {i, t} = \sum_ {s} P _ {s, t, t + 1} X _ {s, t + 1}, \quad P _ {i, t} = E _ {t} \left[ M _ {t + 1} X _ {t + 1} \right]
$$ which implies
$$
M _ {s, t + 1} = \frac {P _ {s , t , t + 1}}{\pi_ {s , t + 1}}
$$ where  $\pi_{s,t + 1}$  is the probability of state  $s$  in period  $t + 1$ .
- This is why you sometimes see  $E_{t}[M_{t + 1}X_{t + 1}]$  type terms in budget constraints
Suppose:
Markets are complete and perfectly competitive (no bankruptcy costs, no agency costs, etc.)
No taxes
Then:
Capital structure of a firm doesn't matter for its value!
- Dividend policy of a firm doesn't matter for its value!
- Whether a firm buys insurance (hedges a risk) doesn't matter!
Why does Modigliani-Miller theorem hold?
- Value of an asset is the sum of its parts:
$$
P _ {i, t} = \sum_ {s} P _ {s, t, t + 1} X _ {s, t + 1}
$$
Why? Arbitrage!
- Consequence: Doesn't matter how the asset is sliced up! (as long as the total payoff is not changed)
- For example, doesn't matter how payoff of a firm is divided between equity and debt
- Does hedging a risk raise the value of a firm?
- Let's adopt vector notation:
S state of the world in the future
- $X_{t+1}$  is an  $S \times 1$  vector of payoffs in these states
- $P_{t}$  is an  $S \times 1$  vector of state prices
Value of Firm A before hedging risk:
$$
P _ {t} ^ {A} = P _ {t} \cdot X _ {t + 1} ^ {A}
$$ where  $X_{t + 1}^{A}$  denotes the payoffs of firm A over future states
Consider some other cashflow  $X_{t + 1}^{B}$
Price of that cashflow:
$$
P _ {t} ^ {B} = P _ {t} \cdot X _ {t + 1} ^ {B}
$$
Suppose the firm were to purchase this cashflow
- At that point the firm's value would be the value of the combined cashflow minus the price of the cashflow:
$$
P _ {t} \cdot \left[ X _ {t + 1} ^ {A} + X _ {t + 1} ^ {B} \right] - P _ {t} ^ {B} = P _ {t} \cdot X _ {t + 1} ^ {A} + P _ {t} \cdot X _ {t + 1} ^ {B} - P _ {t} ^ {B} = P _ {t} ^ {A} + P _ {t} ^ {B} - P _ {t} ^ {B} = P _ {t} ^ {A}
$$
True of any cashflow!! (Hedge, Bond, Dividend, etc.)
- Flows from the linearity of the pricing: By arbitrage, assets are worth the sum of their parts
- Now suppose that
$$
U (C _ {t}) = \frac {C _ {t} ^ {1 - \gamma} - 1}{1 - \gamma}
$$
- This utility function is sometimes called CRRA utility for "constant relative risk aversion"
- Relative risk aversion:
$$
- \frac {U ^ {\prime \prime} (C) C}{U ^ {\prime} (C)} = \gamma
$$
- Why do we think that this utility function is reasonable?
- Consider agent with CRRA utility and wealth  $W$  facing portfolio choice between risky and risk-free asset. Fraction allocated to risky asset is independent of wealth.
(CARA utility: Dollar amount invested in risky asset is independent of wealth)
- This feature makes model consistent with stable interest rate and risk premia in the presence of long-run growth
- Consider the following gamble: I flip a coin and …
- If it comes up heads, I multiply your lifetime income by 1 million
- If it comes up tails, I reduce your lifetime income by XX\%
- Consider the following gamble: I flip a coin and …
- If it comes up heads, I multiply your lifetime income by 1 million
- If it comes up tails, I reduce your lifetime income by XX\%
- If  $10\%$  and you accept, your CRRA is less than 10
- Consider the following gamble: I flip a coin and …
- If it comes up heads, I multiply your lifetime income by 1 million
- If it comes up tails, I reduce your lifetime income by XX\%
- If  $10\%$  and you accept, your CRRA is less than 10
What about  $20\%$  reduction? If yes, CRRA  $< 5$
- Consider the following gamble: I flip a coin and …
- If it comes up heads, I multiply your lifetime income by 1 million
- If it comes up tails, I reduce your lifetime income by XX\%
- If  $10\%$  and you accept, your CRRA is less than 10
What about  $20\%$  reduction? If yes, CRRA  $< 5$
- What about  $30\%$  reduction? If yes, CRRA < 3
- Consider the following gamble: I flip a coin and …
- If it comes up heads, I multiply your lifetime income by 1 million
- If it comes up tails, I reduce your lifetime income by XX\%
- If  $10\%$  and you accept, your CRRA is less than 10
What about  $20\%$  reduction? If yes, CRRA  $< 5$
What about  $30\%$  reduction? If yes, CRRA  $< 3$
- What about  $50\%$  reduction? If yes, CRRA  $< 2$
- What fraction of your lifetime wealth would you be willing to pay to avoid a 50/50 risk of gaining or losing a share  $\alpha$  of your lifetime wealth
$\alpha = 0.10$
$\alpha = 0.30$
Table 2.1 Relative risk premium  $\hat{\pi}$  associated to the risk of gaining or losing (  $\alpha \%$  of wealth)
<table><tr><td>RRA</td><td>α = 10\%</td><td>α = 30\%</td></tr><tr><td>γ = 0.5</td><td>0.3</td><td>2.3</td></tr><tr><td>γ = 1</td><td>0.5</td><td>4.6</td></tr><tr><td>γ = 4</td><td>2.0</td><td>16.0</td></tr><tr><td>γ = 10</td><td>4.4</td><td>24.4</td></tr><tr><td>γ = 40</td><td>8.4</td><td>28.7</td></tr></table>
Source: Gollier (2001)
$$
U (C _ {t}) = \frac {C _ {t} ^ {1 - \gamma} - 1}{1 - \gamma}
$$
- With time separable power utility,  $\gamma$  is also the inverse of the intertemporal elasticity of substitution
$$
\frac {d \log \left(C _ {t + 1} / C _ {t}\right)}{d \log \left(P _ {t + 1} / P _ {t}\right)} = \frac {d \log \left(C _ {t + 1} / C _ {t}\right)}{d \log R _ {f t}} = \frac {1}{\gamma}
$$
- Only one parameter. So, it plays many roles.
(Also governs strength of wealth effect on labor supply)
$$
U (C _ {t}) = \frac {C _ {t} ^ {1 - \gamma} - 1}{1 - \gamma}
$$
$\bullet$  Implies:
$$
U ^ {\prime} \left(C _ {t}\right) = C _ {t} ^ {- \gamma}
$$
$$
M _ {t + 1} = \frac {\beta U ^ {\prime} (C _ {t + 1})}{U ^ {\prime} (C _ {t})} = \beta \left(\frac {C _ {t + 1}}{C _ {t}}\right) ^ {- \gamma}
$$
For risk-free bonds we have:
$$
1 = E _ {t} \left[ M _ {t + 1} R _ {f, t} \right] = > 1 = E _ {t} \left[ M _ {t + 1} \right] R _ {f, t} = > R _ {f, t} = \frac {1}{E _ {t} M _ {t + 1}}
$$
- Since risk free return is risk free, it is determined at time  $t$
- With power utility
$$
R _ {f, t} = 1 / E _ {t} \left[ \beta \left(\frac {C _ {t + 1}}{C _ {t}}\right) ^ {- \gamma} \right]
$$
- If  $X_{t+1}$  is log-normal, then
$$
\log E _ {t} X _ {t + 1} = E _ {t} \log X _ {t + 1} + \frac {1}{2} \operatorname {V a r} _ {t} \log X _ {t + 1}
$$
- If we assume consumption growth is log-normal, we get:
$$ r _ {f, t} = \delta + \gamma E _ {t} [ \Delta \log C _ {t + 1} ] - \frac {\gamma^ {2}}{2} \sigma_ {t} ^ {2} (\Delta \log C _ {t + 1})
$$ where  $\beta = e^{-\delta}$ ,  $r_{f,t} = \log R_{f,t}$
- Risk-free rate is determined by
Discount rate  $\delta$
Expected consumption growth
- Precautionary savings  $\left(\frac{\gamma^2}{2}\sigma_t^2\left(\Delta \log C_{t + 1}\right)\right)$
$$
P _ {i, t} = E _ {t} \left[ M _ {t + 1} X _ {i, t + 1} \right]
$$
The definition of covariance implies
$$
\operatorname {c o v} _ {t} \left(M _ {t + 1}, X _ {i, t + 1}\right) = E _ {t} \left[ M _ {t + 1} X _ {i, t + 1} \right] - E \left[ M _ {i, t + 1} \right] E \left[ X _ {i, t + 1} \right]
$$
Using this yields
$$
P _ {i, t} = E \left[ M _ {i, t + 1} \right] E \left[ X _ {i, t + 1} \right] + \operatorname {c o v} _ {t} \left(M _ {t + 1}, X _ {i, t + 1}\right)
$$
Using  $R_{f,t} = 1 / E_t[M_{t + 1}]$  yields
$$
P _ {i, t} = \frac {E \left[ X _ {i , t + 1} \right]}{R _ {f , t}} + \operatorname {c o v} _ {t} \left(M _ {t + 1}, X _ {i, t + 1}\right)
$$
$$
P _ {i, t} = \frac {E [ X _ {i , t + 1} ]}{R _ {f , t}} + \operatorname {c o v} _ {t} (M _ {t + 1}, X _ {i, t + 1})
$$
Second term is a risk adjustment
- Price of asset is higher if payoff covaries positively with SDF
In this case, asset is a hedge
- With power utility:
$$
P _ {i, t} = \frac {E \left[ X _ {i , t + 1} \right]}{R _ {f , t}} + \beta \frac {\operatorname {c o v} _ {t} \left(U ^ {\prime} \left(C _ {t + 1}\right) , X _ {i , t + 1}\right)}{U ^ {\prime} \left(C _ {t}\right)}
$$
- Asset is a hedge if:
Payoff covaries positively with marginal utility
Payoff covaries negatively with consumption
- Similar manipulations starting with  $1 = E_{t}[M_{t + 1}R_{i,t + 1}]$  yield:
$$
E _ {t} \left[ R _ {i, t + 1} \right] - R _ {f, t} = - R _ {f, t} \operatorname {c o v} _ {t} \left(M _ {t + 1}, R _ {i, t + 1}\right)
$$ and
$$
E _ {t} \left[ R _ {i, t + 1} \right] - R _ {f, t} = - \frac {\operatorname {c o v} _ {t} \left(U ^ {\prime} \left(C _ {t + 1}\right) , R _ {i , t + 1}\right)}{E _ {t} \left[ U ^ {\prime} \left(C _ {t + 1}\right) \right]}
$$
The return premium of asset  $i$  is higher if:
The return on asset  $i$  is negatively correlated with the  $M_{t + 1}$
The return on asset  $i$  is negatively correlated with the  $U^{\prime}(C_{t + 1})$
The return on asset  $i$  is positively correlated with the  $C_{t + 1}$
$$
1 = E _ {t} \left[ \beta \left(\frac {C _ {t + 1}}{C _ {t}}\right) ^ {- \gamma} R _ {i, t + 1} \right]
$$
- Taking logs and assuming log-normality:
$$
\begin{array}{l} E _ {t} r _ {i, t + 1} = \delta + \gamma E _ {t} [ \Delta \log C _ {t + 1} ] \\ - \frac {1}{2} \sigma_ {t} ^ {2} (\log R _ {i, t + 1}) - \frac {\gamma^ {2}}{2} \sigma_ {t} ^ {2} (\Delta \log C _ {t + 1}) + \gamma \operatorname {c o v} (\log R _ {i, t + 1}, \Delta \log C _ {t + 1}) \\ \end{array}
$$
Combining this with expression for risk-free rate yields
$$
E _ {t} r _ {i, t + 1} - r _ {f, t} + \frac {1}{2} \sigma_ {t} ^ {2} (\log R _ {i, t + 1}) = \gamma \operatorname {c o v} (\log R _ {i, t + 1}, \Delta \log C _ {t + 1})
$$
$$
E _ {t} r _ {i, t + 1} - r _ {f, t} + \frac {1}{2} \sigma_ {t} ^ {2} (\log R _ {i, t + 1}) = \gamma \operatorname {c o v} (\log R _ {i, t + 1}, \Delta \log C _ {t + 1})
$$
- Equity premium is risk aversion times covariance between consumption growth and return on equity
- But what is with this  $\frac{1}{2}\sigma_t^2 (\log R_{i,t + 1})$  term?
$$
E _ {t} r _ {i, t + 1} - r _ {f, t} + \frac {1}{2} \sigma_ {t} ^ {2} (\log R _ {i, t + 1}) = \gamma \operatorname {c o v} (\log R _ {i, t + 1}, \Delta \log C _ {t + 1})
$$
- Comes from difference between geometric and arithmetic returns:
$$
\log E _ {t} R _ {i, t + 1} - \log R _ {f, t} = E _ {t} r _ {i, t + 1} - r _ {f, t} + \frac {1}{2} \sigma_ {t} ^ {2} (\log R _ {i, t + 1})
$$
- Geometric mean:  $E_{t}r_{i,t + 1}$
- (Log of) Arithmetic mean: log  $E_{t}R_{i,t + 1}$
$$
\log E _ {t} R _ {i, t + 1} = E _ {t} r _ {i, t + 1} + \frac {1}{2} \sigma_ {t} ^ {2} (\log R _ {i, t + 1})
$$
Standard deviation annual real return on stocks is roughly  $18\%$
$$
\frac{1}{2}\operatorname{Var}_{t}\log R_{i,t + 1} = \frac{1}{2}\sigma_{i}^{2} = 1.5\%
$$
- Two ways to write equity premium equation:
$$
E _ {t} r _ {i, t + 1} - r _ {f, t} + \frac {1}{2} \sigma_ {t} ^ {2} (\log R _ {i, t + 1}) = \gamma \operatorname {c o v} (\log R _ {i, t + 1}, \Delta \log C _ {t + 1})
$$
$$
\log E _ {t} R _ {i, t + 1} - \log R _ {f, t} = \gamma \operatorname {c o v} \left(\log R _ {i, t + 1}, \Delta \log C _ {t + 1}\right)
$$
- Also recall that log of expected gross return is approximately equal to the expected net return:
$$
\log (1 + x) \approx x
$$ for small  $x$
Complete markets
- Representative agent with CRRA preferences:
$$
C _ {t} ^ {- \gamma} = E _ {t} [ \beta C _ {t + 1} ^ {- \gamma} R _ {i, t + 1} ]
$$
- Endowment economy ("Lucas tree"):
$$
\log C _ {t + 1} = \mu + \log C _ {t} + \epsilon_ {t + 1}
$$
$$
\epsilon_ {t + 1} \sim \mathsf {N} (0, \sigma^ {2})
$$
(Original consumption process is a little different from this.)
Equity modeled as a claim to the consumption process :
$$
R _ {i, t + 1} = R _ {C, t + 1}
$$
In this case, equity premium and risk-free rate:
$$
\log E _ {t} R _ {C, t + 1} - \log R _ {f, t} = \gamma \operatorname {v a r} _ {t} (\Delta \log C _ {t + 1})
$$
$$
\log R _ {t, t} = - \log \beta + \gamma E _ {t} [ \Delta \log C _ {t + 1} ] - \frac {\gamma^ {2}}{2} \operatorname {v a r} _ {t} (\Delta \log C _ {t + 1})
$$
- Does this model fit the data?
We need data on:
Average returns on stocks and risk-free asset
Mean and variance of consumption growth
We need a view as to what values are "reasonable" for  $\gamma$
- Mehra-Prescott: Values of  $\gamma < 10$  "admissible"
Table 1
<table><tr><td rowspan="2">Time periods</td><td colspan="2">\% growth rate of per capita real consumption</td><td colspan="2">\% real return on a relatively riskless security</td><td colspan="2">\% risk premium</td><td colspan="2">\% real return on S&amp;P 500</td></tr><tr><td>Mean</td><td>Standard deviation</td><td>Mean</td><td>Standard deviation</td><td>Mean</td><td>Standard deviation</td><td>Mean</td><td>Standard deviation</td></tr><tr><td>1889–1978</td><td>1.83 (Std error = 0.38)</td><td>3.57</td><td>0.80 (Std error = 0.60)</td><td>5.67</td><td>6.18 (Std error = 1.76)</td><td>16.67</td><td>6.98 (Std error = 1.74)</td><td>16.54</td></tr><tr><td>1889–1898</td><td>2.30</td><td>4.90</td><td>5.80</td><td>3.23</td><td>1.78</td><td>11.57</td><td>7.58</td><td>10.02</td></tr><tr><td>1899–1908</td><td>2.55</td><td>5.31</td><td>2.62</td><td>2.59</td><td>5.08</td><td>16.86</td><td>7.71</td><td>17.21</td></tr><tr><td>1909–1918</td><td>0.44</td><td>3.07</td><td>-1.63</td><td>9.02</td><td>1.49</td><td>9.18</td><td>-0.14</td><td>12.81</td></tr><tr><td>1919–1928</td><td>3.00</td><td>3.97</td><td>4.30</td><td>6.61</td><td>14.64</td><td>15.94</td><td>18.94</td><td>16.18</td></tr><tr><td>1929–1938</td><td>-0.25</td><td>5.28</td><td>2.39</td><td>6.50</td><td>0.18</td><td>31.63</td><td>2.56</td><td>27.90</td></tr><tr><td>1939–1948</td><td>2.19</td><td>2.52</td><td>-5.82</td><td>4.05</td><td>8.89</td><td>14.23</td><td>3.07</td><td>14.67</td></tr><tr><td>1949–1958</td><td>1.48</td><td>1.00</td><td>-0.81</td><td>1.89</td><td>18.30</td><td>13.20</td><td>17.49</td><td>13.08</td></tr><tr><td>1959–1968</td><td>2.37</td><td>1.00</td><td>1.07</td><td>0.64</td><td>4.50</td><td>10.17</td><td>5.58</td><td>10.59</td></tr><tr><td>1969–1978</td><td>2.41</td><td>1.40</td><td>-0.72</td><td>2.06</td><td>0.75</td><td>11.64</td><td>0.03</td><td>13.11</td></tr></table>
Source: Mehra and Prescott (1985)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/a60bcc8799eb7e6fdd3dd0305e29ab861fba520decf1bcc60d7532839de2cdee.jpg)
Fig. 4. Set of admissible average equity risk premia and real returns.
Source: Mehra and Prescott (1985). Values of equity premium and risk-free rate consistent with model given measured mean and variance of consumption growth and assuming  $0 \leq \gamma \leq 10$  and  $0 \leq \beta \leq 1$ .
- Mehra-Prescott 85 made "extra" assumptions:
Endowment economy
- Specific process for consumption growth
Equity is a consumption claim
- Equity premium equation can be evaluated independent of these assumptions:
$$
E _ {t} r _ {i, t + 1} - r _ {f, t} + \frac {1}{2} \sigma_ {t} ^ {2} (\log R _ {i, t + 1}) = \gamma \operatorname {c o v} (\log R _ {i, t + 1}, \Delta \log C _ {t + 1})
$$
Table 5 The equity premium puzzlea
<table><tr><td>Country</td><td>Sample period</td><td> \bar{a}{e}_{r} </td><td> \sigma \left( {e}_{r}\right) </td><td> \sigma \left( m\right) </td><td> \sigma \left( {\Delta c}\right) </td><td> \rho \left( {{e}_{r},\Delta c}\right) </td><td> \operatorname{Cov}\left( {{e}_{r},\Delta c}\right) </td><td>RRA(1)</td><td>RRA(2)</td></tr><tr><td>USA</td><td>1947.2-1996.3</td><td>7.852</td><td>15.218</td><td>51.597</td><td>1.084</td><td>0.193</td><td>3.185</td><td>246.556</td><td>47.600</td></tr><tr><td>AUL</td><td>1970.1-1996.2</td><td>3.531</td><td>23.194</td><td>15.221</td><td>2.142</td><td>0.156</td><td>7.725</td><td>45.704</td><td>7.107</td></tr><tr><td>CAN</td><td>1970.1-1996.2</td><td>3.040</td><td>16.673</td><td>18.233</td><td>2.034</td><td>0.159</td><td>5.387</td><td>56.434</td><td>8.965</td></tr><tr><td>FR</td><td>1973.2-1996.2</td><td>7.122</td><td>22.844</td><td>31.175</td><td>2.130</td><td>-0.047</td><td>-2.295</td><td>&lt; 0</td><td>14.634</td></tr><tr><td>GER</td><td>1978.4-1996.2</td><td>6.774</td><td>20.373</td><td>33.251</td><td>2.495</td><td>0.039</td><td>1.974</td><td>343.133</td><td>13.327</td></tr><tr><td>ITA</td><td>1971.2-1995.2</td><td>2.166</td><td>27.346</td><td>7.920</td><td>1.684</td><td>0.002</td><td>0.088</td><td>2465.323</td><td>4.703</td></tr><tr><td>JPN</td><td>1970.2-1996.2</td><td>6.831</td><td>21.603</td><td>31.621</td><td>2.353</td><td>0.100</td><td>5.093</td><td>134.118</td><td>13.440</td></tr><tr><td>NTH</td><td>1977.2-1996.1</td><td>9.943</td><td>15.632</td><td>63.607</td><td>2.654</td><td>0.023</td><td>0.946</td><td>1050.925</td><td>23.970</td></tr><tr><td>SWD</td><td>1970.1-1994.4</td><td>9.343</td><td>23.541</td><td>39.688</td><td>1.917</td><td>0.003</td><td>0.129</td><td>7215.176</td><td>20.705</td></tr><tr><td>SWT</td><td>1982.2-1996.2</td><td>12.393</td><td>20.466</td><td>60.553</td><td>2.261</td><td>-0.129</td><td>-5.978</td><td>&lt; 0</td><td>26.785</td></tr><tr><td>UK</td><td>1970.1-1996.2</td><td>8.306</td><td>21.589</td><td>38.473</td><td>2.589</td><td>0.095</td><td>5.314</td><td>156.308</td><td>14.858</td></tr><tr><td>USA</td><td>1970.1-1996.3</td><td>5.817</td><td>16.995</td><td>34.228</td><td>0.919</td><td>0.248</td><td>3.875</td><td>150.136</td><td>37.255</td></tr><tr><td colspan="10"></td></tr><tr><td>SWD</td><td>1920-1993</td><td>6.000</td><td>18.906</td><td>31.737</td><td>2.862</td><td>0.169</td><td>9.141</td><td>65.642</td><td>11.091</td></tr><tr><td>UK</td><td>1919-1993</td><td>8.677</td><td>21.706</td><td>39.974</td><td>2.820</td><td>0.355</td><td>21.738</td><td>39.914</td><td>14.174</td></tr><tr><td>USA</td><td>1891-1994</td><td>6.258</td><td>18.534</td><td>33.767</td><td>3.257</td><td>0.497</td><td>30.001</td><td>20.861</td><td>10.366</td></tr></table> a  $\overline{a e r_{e}}$  is the average excess log return on stock over a money market instrument, plus one half the variance of this excess return:  $\overline{a e r_{e}} = \overline{r_{e} - r_{f}} +\sigma^{2}(r_{e} - r_{f}) / 2.$  It is multiplied by 400 in quarterly data and 100 in annual data to express in annualized percentage points.  $\sigma (e r_e)$  and  $\sigma (\Delta c)$  are the standard deviations of the excess log return  $e r_{e} = r_{e} - r_{f}$  and consumption growth  $\Delta c$  , respectively, multiplied by 200 in quarterly data and 100 in annual data to express in annualized percentage points.  $\sigma (m) = 100\overline{a e r_{e}} /\sigma (e r_{e})$  is calculated from equation (12) as a lower bound on the standard deviation of the log stochastic discount factor, expressed in annualized percentage points.  $\rho (e r_e,\Delta c)$  is the correlation of  $e r_{e}$  and  $\Delta c$  . Cov(e  $r_{e},\Delta c)$  is the product  $\sigma (e r_{e})\sigma (\Delta c)\rho (e,r,\Delta c)$  . RRA(1) is  $100\overline{a e r_{e}} /\mathrm{Cov}(e r_{e},\Delta c)$  , a measure of risk aversion calculated from equation (16) using the empirical covariance of excess stock returns with consumption growth. RRA(2) is  $100\overline{a e r_{e}} /\sigma (e r_{e})\sigma (\Delta c)$  , a measure of risk aversion calculated using the empirical standard deviations of excess stock returns and consumption growth, but assuming perfect correlation between these series.
Abbreviations: AUL, Australia; CAN, Canada; FR, France; GER, Germany; ITA, Italy; JPN, Japan; NTH, Netherlands; SWD, Sweden; SWT, Switzerland; UK, United Kingdom; USA, United States of America.
<table><tr><td colspan="7">Table 5 Long-Period Averages of Rates of Return</td></tr><tr><td>Country</td><td>Start</td><td>Stocks</td><td>Bills</td><td>Start</td><td>Bonds</td><td>Bills</td></tr><tr><td colspan="7">Part 1: OECD countries</td></tr><tr><td>Australia</td><td>1876</td><td>0.1027 (0.1616)</td><td>0.0126 (0.0566)</td><td>1870</td><td>0.0352 (0.1157)</td><td>0.0125 (0.0569)</td></tr><tr><td>Belgium</td><td>--</td><td>--</td><td>--</td><td>1870</td><td>0.0291 (0.1584)**</td><td>0.0179 (0.1447)**</td></tr><tr><td>Canada</td><td>1916</td><td>0.0781 (0.1754)</td><td>--</td><td>1916</td><td>0.0392 (0.1199)</td><td>--</td></tr><tr><td>Denmark</td><td>1915</td><td>0.0750 (0.2300)</td><td>0.0265 (0.0652)</td><td>1870</td><td>0.0392 (0.1137)</td><td>0.0317 (0.0588)</td></tr><tr><td>Finland</td><td>1923</td><td>0.1268 (0.3155)</td><td>0.0128 (0.0935)</td><td>--</td><td>--</td><td>--</td></tr><tr><td>France</td><td>1870</td><td>0.0543 (0.2078)*</td><td>-0.0061 (0.0996)*</td><td>1870</td><td>0.0066 (0.1368)</td><td>-0.0079 (0.1000)</td></tr><tr><td>Germany</td><td>1870</td><td>0.0758 (0.2976)</td><td>-0.0153 (0.1788)</td><td>1924</td><td>0.0402 (0.1465)</td><td>0.0158 (0.1173)</td></tr><tr><td>Italy</td><td>1906</td><td>0.0510 (0.2760)</td><td>-0.0112 (0.1328)</td><td>1870</td><td>0.0173 (0.1879)</td><td>0.0046 (0.1191)</td></tr><tr><td>Japan</td><td>1894</td><td>0.0928 (0.3017)</td><td>-0.0052 (0.1370)</td><td>1883</td><td>0.0192 (0.1820)</td><td>0.0043 (0.1475)</td></tr><tr><td>Netherlands</td><td>1920</td><td>0.0901 (0.2116)**</td><td>0.0114 (0.0474)**</td><td>1881</td><td>0.0308 (0.1067)</td><td>0.0118 (0.0512)</td></tr><tr><td>New Zealand</td><td>1927</td><td>0.0762 (0.2226)</td><td>0.0234 (0.0529)</td><td>1926</td><td>0.0276 (0.1209)</td><td>0.0240 (0.0529)</td></tr><tr><td>Norway</td><td>1915</td><td>0.0716 (0.2842)</td><td>0.0098 (0.0782)</td><td>1877</td><td>0.0280 (0.1130)</td><td>0.0204 (0.0709)</td></tr><tr><td>Spain</td><td>1883</td><td>0.0610 (0.2075)†</td><td>0.0173 (0.0573)†</td><td>--</td><td>--</td><td>--</td></tr><tr><td>Sweden</td><td>1902</td><td>0.0923 (0.2347)</td><td>0.0180 (0.0719)</td><td>1922</td><td>0.0292 (0.0941)</td><td>0.0176 (0.0448)</td></tr><tr><td>Switzerland</td><td>1911</td><td>0.0726 (0.2107)††</td><td>0.0083 (0.0531)††</td><td>1916</td><td>0.0218 (0.0717)</td><td>0.0065 (0.0545)</td></tr><tr><td>U.K.</td><td>1870</td><td>0.0641 (0.1765)</td><td>0.0179 (0.0624)</td><td>1870</td><td>0.0280 (0.1049)</td><td>0.0179 (0.0624)</td></tr><tr><td>U.S.</td><td>1870</td><td>0.0827 (0.1866)</td><td>0.0199 (0.0482)</td><td>1870</td><td>0.0271 (0.0842)</td><td>0.0199 (0.0482)</td></tr><tr><td colspan="7">Part 2: Non-OECD countries</td></tr><tr><td>Chile</td><td>1895</td><td>0.1430 (0.4049)</td><td>-0.0094 (0.1776)</td><td>--</td><td>--</td><td>--</td></tr><tr><td>India</td><td>1921</td><td>0.0514 (0.2341)***</td><td>0.0133 (0.0835)***</td><td>1874</td><td>0.0191 (0.1147)</td><td>0.0240 (0.0785)</td></tr><tr><td>South Africa</td><td>1911</td><td>0.0890 (0.2006)</td><td>--</td><td>1911</td><td>0.0248 (0.1165)</td><td>--</td></tr><tr><td>Overall means†††</td><td>--</td><td>0.0814 (0.2449)</td><td>0.0085 (0.0880)</td><td>--</td><td>0.0266 (0.1234)</td><td>0.0147 (0.0805)</td></tr></table>
*missing 1940-41, **missing 1945-46, †missing 1936-40, ††missing 1914-16, ***missing 1926-27
Averages of means and standard deviations for 17 countries with stock and bill data and 15 countries with bond and bill data
Source: Barro and Ursua (2008)
- Volatility of consumption seems to be relatively modest
World seems to be a relatively safe place
People must be very risk averse to not want to bid up prices of stocks
High equity premium implies that stocks are cheap!!
Suppose we invest 1 in:
Equity with  $8\%$  real return
- Tbills with  $1 \%$ real return
<table><tr><td>Horizon</td><td>Equity</td><td>Tbills</td></tr><tr><td>1</td><td>1.08</td><td>1.01</td></tr><tr><td>5</td><td>1.50</td><td>1.05</td></tr><tr><td>10</td><td>2.15</td><td>1.10</td></tr><tr><td>25</td><td>6.85</td><td>1.28</td></tr><tr><td>50</td><td>46.90</td><td>1.64</td></tr><tr><td>100</td><td>2199.76</td><td>2.70</td></tr></table>
- Dutch (supposedly) bought Manhattan from natives for 24 in 1626
- Suppose natives invested this in the stock market:
$$
\$ 24 \times 1.08 ^ {(2 0 2 3 - 1 6 2 6)} = \$ 4. 4 6 \times 1 0 ^ {1 4} = \$ 4 4 6 \text {T r i l l o n}
$$
- Mean equity premium:  $\approx 6.5\%$
Standard deviation of equity premium:  $\approx 18\%$
Standard error on equity premium:  $\sigma / \sqrt{T} = 2.1\%$  (post-WWII)
$$
\sigma / \sqrt{T} = 1.5 \% (\text {post - } 1870)
$$
Using post-WWII standard error:
95\% confidence interval for equity premium: [2.3\%, 10.7\%]
- Perhaps last 100 years have been unusually good
- What is the price of a dividend stream that growth at rate  $g$  and is discounted at rate  $r$ ?
$$
\begin{array}{l} P _ {0} = \frac {D _ {1}}{1 + r} + \frac {D _ {1} (1 + g)}{(1 + r) ^ {2}} + \frac {D _ {1} (1 + g) ^ {2}}{(1 + r) ^ {3}} + \dots \\ = \frac {D _ {1}}{1 + r} \left[ 1 + \left(\frac {1 + g}{1 + r}\right) + \left(\frac {1 + g}{1 + r}\right) ^ {2} + \dots \right] \\ = \frac {D _ {1}}{1 + r} \left[ \frac {1}{1 - \frac {1 + g}{1 + r}} \right] \\ = \frac {D _ {1}}{1 + r} \frac {1 + r}{r - g} \\ \end{array}
$$
Rearranging yields
$$
\frac {P _ {0}}{D _ {1}} = \frac {1}{r - g}
$$
- Relative to prior history, 20th century was good for growth and stocks
Gordon growth formula:
$$
\frac {P}{D} = \frac {1}{r - g}
$$
- Maybe expectations about future growth have risen (i.e.,  $\uparrow g$ )
- Maybe equity premium has fallen (i.e.,  $\downarrow r$ )
- Would yield an unusually high return not to be repeated in the future
Price Earnings Ratio
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/673171c1a5ebbf26e307d758c547b390458cfefd4a6f1c7ec442e5e9b5464733.jpg)
Source: Robert Shiller's website. Last updated in 2021.
$$
E _ {t} r _ {i, t + 1} - r _ {f, t} + \frac {1}{2} \sigma_ {t} ^ {2} (\log R _ {i, t + 1}) = - \operatorname {c o v} (\log R _ {i, t + 1}, \Delta \log M _ {t + 1})
$$
- Let's adopt the notation:  $E_{t}r_{i,t + 1} - r_{f,t} + \frac{1}{2}\sigma_{i}^{2} = -\sigma_{im}$
- Definition of correlation coefficient:
$$
\rho_ {i m} = \frac {\sigma_ {i m}}{\sigma_ {i} \sigma_ {m}}
$$
$$
- 1 \leq \rho_ {i m}
$$
$$
\sigma_ {m} \geq \frac {- \sigma_ {i m}}{\sigma_ {i}}
$$
$$
\sigma_ {m} \geq \frac {E _ {t} r _ {i , t + 1} - r _ {f , t} + \frac {1}{2} \sigma_ {i} ^ {2}}{\sigma_ {i}}
$$
- Ratio on right-hand-side called "Sharpe ratio"
$$
\sigma_ {m} \geq \frac {E _ {t} r _ {i , t + 1} - r _ {f , t} + \frac {1}{2} \sigma_ {i} ^ {2}}{\sigma_ {i}}
$$
Sharp ratio for stocks: 0.4
Sharp ratio for other assets: >1
- Hansen-Jaganathan bound implies that volatility of stochastic discount factor is enormous
Seems implausible
$$
\log R _ {t, t} = \delta + \gamma E _ {t} [ \Delta \log C _ {t + 1} ] - \frac {\gamma^ {2}}{2} \operatorname {v a r} _ {t} (\Delta \log C _ {t + 1})
$$
$\mathsf{var}_t(\Delta \log C_{t + 1}) <   <   E_t[\Delta \log C_{t + 1}]$
High value of  $\gamma$  therefore implies high risk free rate
What is the intuition for this?
$$
\log R _ {t, t} = \delta + \gamma E _ {t} [ \Delta \log C _ {t + 1} ] - \frac {\gamma^ {2}}{2} \operatorname {v a r} _ {t} (\Delta \log C _ {t + 1})
$$
$\mathsf{var}_t(\Delta \log C_{t + 1}) <   <   E_t[\Delta \log C_{t + 1}]$
High value of  $\gamma$  therefore implies high risk free rate
What is the intuition for this?
- Consumers must be compensated a lot to allow their consumption profile to be upward sloping
- This is  $\gamma$  acting in its incarnation as 1/IES
$$
\log R _ {t, t} = \delta + \gamma E _ {t} [ \Delta \log C _ {t + 1} ] - \frac {\gamma^ {2}}{2} \operatorname {v a r} _ {t} (\Delta \log C _ {t + 1})
$$
$\mathsf{var}_t(\Delta \log C_{t + 1}) <   <   E_t[\Delta \log C_{t + 1}]$
High value of  $\gamma$  therefore implies high risk free rate
What is the intuition for this?
- Consumers must be compensated a lot to allow their consumption profile to be upward sloping
- This is  $\gamma$  acting in its incarnation as 1/IES
To get a low risk-free rate,  $\beta > 1$
Table 6 The riskfree rate puzzlea
<table><tr><td>Country</td><td>Sample period</td><td> \overline{r_f} </td><td> \overline{\Delta c} </td><td> \sigma(\Delta c) </td><td>RRA(1)</td><td>TPR(1)</td><td>RRA(2)</td><td>TPR(2)</td></tr><tr><td>USA</td><td>1947.2-1996.3</td><td>0.794</td><td>1.908</td><td>1.084</td><td>246.556</td><td>-112.474</td><td>47.600</td><td>-76.710</td></tr><tr><td>AUL</td><td>1970.1-1996.2</td><td>1.820</td><td>1.854</td><td>2.142</td><td>45.704</td><td>-34.995</td><td>7.107</td><td>-10.196</td></tr><tr><td>CAN</td><td>1970.1-1996.2</td><td>2.738</td><td>1.948</td><td>2.034</td><td>56.434</td><td>-41.346</td><td>8.965</td><td>-13.066</td></tr><tr><td>FR</td><td>1973.2-1996.2</td><td>2.736</td><td>1.581</td><td>2.130</td><td>&lt; 0</td><td>N/A</td><td>14.634</td><td>-15.536</td></tr><tr><td>GER</td><td>1978.4-1996.2</td><td>3.338</td><td>1.576</td><td>2.495</td><td>343.133</td><td>&gt;1000</td><td>13.327</td><td>-12.142</td></tr><tr><td>ITA</td><td>1971.2-1995.2</td><td>2.064</td><td>2.424</td><td>1.684</td><td>&gt;1000</td><td>&gt;1000</td><td>4.703</td><td>-9.021</td></tr><tr><td>JPN</td><td>1970.2-1996.2</td><td>1.538</td><td>3.416</td><td>2.353</td><td>134.118</td><td>41.222</td><td>13.440</td><td>-39.375</td></tr><tr><td>NTH</td><td>1977.2-1996.1</td><td>3.705</td><td>1.466</td><td>2.654</td><td>&gt;1000</td><td>&gt;1000</td><td>23.970</td><td>-11.201</td></tr><tr><td>SWD</td><td>1970.1-1994.4</td><td>1.520</td><td>0.750</td><td>1.917</td><td>&gt;1000</td><td>&gt;1000</td><td>20.705</td><td>-6.126</td></tr><tr><td>SWT</td><td>1982.2-1996.2</td><td>1.466</td><td>0.414</td><td>2.261</td><td>&lt; 0</td><td>N/A</td><td>26.785</td><td>8.698</td></tr><tr><td>UK</td><td>1970.1-1996.2</td><td>1.081</td><td>2.025</td><td>2.589</td><td>156.308</td><td>503.692</td><td>14.858</td><td>-21.600</td></tr><tr><td>USA</td><td>1970.1-1996.3</td><td>1.350</td><td>1.710</td><td>0.919</td><td>150.136</td><td>-160.275</td><td>37.255</td><td>-56.505</td></tr><tr><td>SWD</td><td>1920-1993</td><td>2.073</td><td>1.748</td><td>2.862</td><td>65.642</td><td>63.778</td><td>11.091</td><td>-12.274</td></tr><tr><td>UK</td><td>1919-1993</td><td>1.198</td><td>1.358</td><td>2.820</td><td>39.914</td><td>10.364</td><td>14.174</td><td>-10.057</td></tr><tr><td>USA</td><td>1891-1994</td><td>1.955</td><td>1.742</td><td>3.257</td><td>20.861</td><td>-11.305</td><td>10.366</td><td>-10.406</td></tr></table> a  $\overline{r_f}$  is the mean money market return from Table 2, in annualized percentage points.  $\overline{\Delta c}$  and  $\sigma (\Delta c)$  are the mean and standard deviation of consumption growth from Table 3, in annualized percentage points. RRA(1) and RRA(2) are the risk aversion coefficients from Table 5.  $TPR(1) = \overline{r_f} -RRA(1)\overline{\Delta c} +$ $RRA(1)^2\sigma^2 (\Delta c) / 200$  , and  $TPR(2) = \overline{r_f} -RRA(2)\overline{\Delta c} +RRA(2)^2\sigma^2 (\Delta c) / 200.$  From Equation (17), these time preference rates give the real interest rate, in annualized percentage points, that would prevail if consumption growth had zero mean and zero standard deviation and risk aversion were RRA(1) or RRA(2), respectively.
- Perhaps low return on short term bonds is a liquidity premium for "money-like" features
Campbell argues against this based on the term premium:
- Long-term bonds don't have this type of liquidity premium
Yet their returns are only slightly higher than those of short-term bonds
Table 7 International yield spreads and bond excess returnsa
<table><tr><td>Country</td><td>Sample period</td><td> \bar{s} </td><td> \sigma (s) </td><td> \rho (s) </td><td> {\overline{e r}}_{b}^{-} </td><td> \sigma \left( {e{r}_{b}}\right) </td><td> \rho \left( {e{r}_{b}}\right) </td></tr><tr><td>USA</td><td>1947.2-1996.4</td><td>1.199</td><td>0.999</td><td>0.783</td><td>0.011</td><td>8.923</td><td>0.070</td></tr><tr><td>AUL</td><td>1970.1-1996.3</td><td>0.938</td><td>1.669</td><td>0.750</td><td>0.156</td><td>8.602</td><td>0.162</td></tr><tr><td>CAN</td><td>1970.1-1996.3</td><td>1.057</td><td>1.651</td><td>0.819</td><td>0.950</td><td>9.334</td><td>-0.009</td></tr><tr><td>FR</td><td>1973.2-1996.3</td><td>0.917</td><td>1.547</td><td>0.733</td><td>1.440</td><td>8.158</td><td>0.298</td></tr><tr><td>GER</td><td>1978.4-1996.3</td><td>0.991</td><td>1.502</td><td>0.869</td><td>0.899</td><td>7.434</td><td>0.117</td></tr><tr><td>ITA</td><td>1971.2-1995.3</td><td>-0.200</td><td>2.025</td><td>0.759</td><td>-1.386</td><td>9.493</td><td>0.335</td></tr><tr><td>JPN</td><td>1970.2-1996.3</td><td>0.593</td><td>1.488</td><td>0.843</td><td>1.687</td><td>9.165</td><td>-0.058</td></tr><tr><td>NTH</td><td>1977.2-1996.2</td><td>1.212</td><td>1.789</td><td>0.574</td><td>1.549</td><td>7.996</td><td>0.032</td></tr><tr><td>SWD</td><td>1970.1-1995.1</td><td>0.930</td><td>2.046</td><td>0.724</td><td>-0.212</td><td>7.575</td><td>0.244</td></tr><tr><td>SWT</td><td>1982.2-1996.3</td><td>0.471</td><td>1.655</td><td>0.755</td><td>1.071</td><td>6.572</td><td>0.268</td></tr><tr><td>UK</td><td>1970.1-1996.3</td><td>1.202</td><td>2.106</td><td>0.893</td><td>0.959</td><td>11.611</td><td>-0.057</td></tr><tr><td>USA</td><td>1970.1-1996.4</td><td>1.562</td><td>1.190</td><td>0.737</td><td>1.504</td><td>10.703</td><td>0.033</td></tr><tr><td colspan="8"></td></tr><tr><td>SWD</td><td>1920-1994</td><td>0.284</td><td>1.140</td><td>0.280</td><td>-0.075</td><td>6.974</td><td>-0.185</td></tr><tr><td>UK</td><td>1919-1994</td><td>1.272</td><td>1.505</td><td>0.694</td><td>0.318</td><td>8.812</td><td>-0.098</td></tr><tr><td>USA</td><td>1891-1995</td><td>0.720</td><td>1.550</td><td>0.592</td><td>0.172</td><td>6.499</td><td>0.153</td></tr></table> a  $\vec{s}$  is the mean of the log yield spread, the difference between the log yield on long-term bonds and the log 3-month money market return, expressed in annualized percentage points.  $\sigma(s)$  is the standard deviation of the log yield spread and  $\rho(s)$  is its first-order autocorrelation.  $\bar{e}r_b$ ,  $\sigma(er_b)$ , and  $\rho(er_b)$  are defined in the same way for the excess 3-month return on long-term bonds over money market instruments, where the bond return is calculated from the bond yield using the par-bond approximation given in Campbell, Lo and MacKinlay (1997), Chapter 10, equation (10.1.19). Full details of this calculation are given in the Data Appendix.
Abbreviations: AUL, Australia; CAN, Canada; FR, France; GER, Germany; ITA, Italy; JPN, Japan; NTH, Netherlands; SWD, Sweden; SWT, Switzerland; UK, United Kingdom; USA, United States of America.
# Restatement of Problem:
- To fit equity premium evidence, need high risk aversion
- High risk aversion implies low IES (with CRRA utility)
- Low IES implies high risk-free interest rate
"Obvious" solution:
- Consider preferences where IES may differ from 1/CRRA
Make IES and CRRA high
- Epstein-Zin-Weil preferences deliver this
- Epstein-Zin (1989, 1991) and Weil (1989) propose:
$$
U _ {t} = \left\{\left(1 - \delta\right) C _ {t} ^ {\frac {1 - \gamma}{\theta}} + \delta \left(E _ {t} U _ {t + 1} ^ {1 - \gamma}\right) ^ {\frac {1}{\theta}} \right\} ^ {\frac {\theta}{1 - \gamma}}
$$
Parameters:
$$
\theta = \frac {1 - \gamma}{1 - 1 / \psi}
$$
$\gamma$  : Coefficient of relative risk aversion
$\psi$  : Intertemporal elasticity of substitution
- Falls outside expected utility framework
Large literature about "weird" properties
- Consumption Euler equation with Epstein-Zin-Weil preferences:
$$
1 = E _ {t} \left[ \beta^ {\theta} \left(\frac {C _ {t + 1}}{C _ {t}}\right) ^ {- \theta / \psi} (1 + R _ {W, t + 1}) ^ {- (1 - \theta)} (1 + R _ {i, t + 1}) \right]
$$
$R_{W,t + 1}$  return on wealth
- With power utility case, it is not clear whether  $\gamma$  appears in a particular equation because it is the CRRA or because it is 1/IES
This is clarified in EZW case:
$$
E _ {t} r _ {i, t + 1} - r _ {f, t} + \frac {1}{2} \sigma_ {i} ^ {2} = \theta \frac {\sigma_ {i c}}{\psi} + (1 - \theta) \sigma_ {i w}
$$
$$ r _ {f, t} = - \log \beta + \frac {1}{\psi} E _ {t} \Delta \log C _ {t + 1} + \frac {1}{2} (\theta - 1) \sigma_ {w} ^ {2} - \frac {1}{2} \frac {\theta}{\psi^ {2}} \sigma_ {c} ^ {2}
$$
- Since both  $\gamma$  and  $\psi$  can be big at the same time, EP and RF puzzles can be resolved
- But are large values of  $\gamma$  and  $\psi$  "reasonable"
# ESTIMATION OF THE
# INTERTEMPORAL ELASTICITY OF SUBSTITUTION
 and Jon Steinsson
UC Berkeley
Fall 2023
1. Traditional estimation strategies for IES in macro (e.g., Hall, 1988; Campbell and Mankiw, 1989)
- Very structural approach (although it doesn't look it)
Example of a common type of reasoning in empirical macro
2. Critique of traditional strategy
- Identification challenges are broader and more challenging than sometimes acknowledged
3. Example of different sort of structural approach (Best-Cloyne-Ilzetzki-Kleven 2019)
- Consumption Euler equation with power utility and log-normality:
$$
E _ {t} \Delta \log C _ {t + 1} = \psi E _ {t} r _ {i, t + 1} + \psi \log \beta + \frac {1}{2} [ \psi \sigma_ {i} ^ {2} + \psi^ {- 1} \sigma_ {c} ^ {2} - 2 \sigma_ {i c} ]
$$
- Can be rewritten as:
$$
\Delta \log C _ {t + 1} = \mu_ {i} + \psi r _ {i, t + 1} + \epsilon_ {i, t + 1}
$$ where
$$
\epsilon_ {i, t + 1} = \psi \left(E _ {t} r _ {i, t + 1} - r _ {i, t + 1}\right) - \left(E _ {t} \Delta \log C _ {t + 1} - \Delta \log C _ {t + 1}\right)
$$
$$
\Delta \log C _ {t + 1} = \mu_ {i} + \psi r _ {i, t + 1} + \epsilon_ {i, t + 1}
$$ where
$$
\epsilon_ {i, t + 1} = \psi \left(E _ {t} r _ {i, t + 1} - r _ {i, t + 1}\right) - \left(E _ {t} \Delta \log C _ {t + 1} - \Delta \log C _ {t + 1}\right)
$$
- Can we estimate this using OLS?
$$
\Delta \log C _ {t + 1} = \mu_ {i} + \psi r _ {i, t + 1} + \epsilon_ {i, t + 1}
$$ where
$$
\epsilon_ {i, t + 1} = \psi \left(E _ {t} r _ {i, t + 1} - r _ {i, t + 1}\right) - \left(E _ {t} \Delta \log C _ {t + 1} - \Delta \log C _ {t + 1}\right)
$$
- Can we estimate this using OLS?
- Suppose there is a "good shock" that leads to a high realization of  $r_{l,t+1}$
- This shock will be correlated with the error term (consumption (and return) will rise relative to expectation)
$$
\Delta \log C _ {t + 1} = \mu_ {i} + \psi r _ {i, t + 1} + \epsilon_ {i, t + 1}
$$ where
$$
\epsilon_ {i, t + 1} = \psi \left(E _ {t} r _ {i, t + 1} - r _ {i, t + 1}\right) - \left(E _ {t} \Delta \log C _ {t + 1} - \Delta \log C _ {t + 1}\right)
$$
- Can we think of instruments that will work in this case?
(Hint: Error term is an expectation error)
$$
\Delta \log C _ {t + 1} = \mu_ {i} + \psi r _ {i, t + 1} + \epsilon_ {i, t + 1}
$$ where
$$
\epsilon_ {i, t + 1} = \psi \left(E _ {t} r _ {i, t + 1} - r _ {i, t + 1}\right) - \left(E _ {t} \Delta \log C _ {t + 1} - \Delta \log C _ {t + 1}\right)
$$
- Can we think of instruments that will work in this case?
(Hint: Error term is an expectation error)
- Any variable know at time  $t$  works as an instrument
- Since  $\epsilon_{i,t+1}$  is an expectation error, it is orthogonal to all variables known at time  $t$  or earlier
- So, we can use lags of anything as instruments (Wow, lots of possible instruments)
- If  $r_{i,t+1}$  is the risk-free rate  $(r_{f,t})$  it is known at time  $t$
- Then we have:
$$
\Delta \log C _ {t + 1} = \mu_ {i} + \psi r _ {f, t} + \epsilon_ {i, t + 1}
$$ where
$$
\epsilon_ {i, t + 1} = \Delta \log C _ {t + 1} - E _ {t} \Delta \log C _ {t + 1}
$$
In this case, OLS would work!
- In practice, the real return on even Tbills is uncertain due to inflation
- Could estimate by OLS using TIPS (Treasury Inflation Protected Securities) although sample would be short (TIPS started trading in 1997)
Campbell and Mankiw (1989) estimate:
$$
\Delta \log C _ {t + 1} = \mu_ {i} + \psi r _ {i, t + 1} + \epsilon_ {i, t + 1}
$$ using lags of real rates, consumption growth, and nominal rates as instruments (see also Hall (1988))
- Complication:  $C_t$  is a time average over a quarter
- Even if  $C_t$  were a random walk, time averaging would imply serial correlation of changes (Working, 1960)
Campbell and Mankiw (1989) lag instruments by 2 periods to avoid this
$$
\Delta c _ {t} = \mu + \sigma r _ {t}
$$
Table 3 UNITED STATES,1953-1986
<table><tr><td rowspan="2">Row</td><td rowspan="2">Instruments</td><td colspan="2">First-stage regressions</td><td rowspan="2">σ estimate (s.e.)</td><td rowspan="2">Test of restrictions</td></tr><tr><td>Δc equation</td><td>r equation</td></tr><tr><td>1</td><td>None (OLS)</td><td>—</td><td>—</td><td>0.276 (0.079)</td><td>—</td></tr><tr><td>2</td><td>rt-2, …, rt-4</td><td>0.063 (0.009)</td><td>0.431 (0.000)</td><td>0.270 (0.118)</td><td>0.031 (0.029)</td></tr><tr><td>3</td><td>rt-2, …, rt-6</td><td>0.067 (0.014)</td><td>0.426 (0.000)</td><td>0.281 (0.118)</td><td>0.034 (0.050)</td></tr><tr><td>4</td><td>Δct-2, …, Δct-4</td><td>0.024 (0.101)</td><td>-0.021 (0.966)</td><td>-0.707 (2.586)</td><td>0.000 (0.215)</td></tr><tr><td>5</td><td>Δct-2, …, Δct-6</td><td>0.018 (0.007)</td><td>0.007 (0.316)</td><td>0.992 (0.478)</td><td>0.008 (0.189)</td></tr><tr><td>6</td><td>Δit-2, …, Δit-4</td><td>0.061 (0.010)</td><td>0.024 (0.105)</td><td>1.263 (0.545)</td><td>-0.021 (0.918)</td></tr><tr><td>7</td><td>Δit-2, …, Δit-6</td><td>0.102 (0.002)</td><td>0.028 (0.119)</td><td>1.213 (0.445)</td><td>-0.022 (0.700)</td></tr><tr><td>8</td><td>rt-2, …, rt-4, Δct-2, …, Δct+4,</td><td>0.062 (0.026)</td><td>0.455 (0.000)</td><td>0.204 (0.114)</td><td>0.047 (0.033)</td></tr><tr><td>9</td><td>rt-2, …, rt-4, Δct-2, …, Δct-4, Δit-2, …, Δit-4</td><td>0.103 (0.006)</td><td>0.476 (0.000)</td><td>0.150 (0.111)</td><td>0.100 (0.005)</td></tr></table>
Note: The columns labeled "First-stage regressions" report the adjusted  $R^2$  for the OLS regressions of the two variables on the instruments; in parentheses is the p-value for the null that all the coefficients except the constant are zero. The column labeled "λ estimate" reports the IV estimate of λ and, in parentheses, its standard error. The column labeled "Test of restrictions" reports the adjusted  $R^2$  of the OLS regression of the residual on the instruments; in parenthesis is the p-value for the null that all the coefficients are zero.
Source: Campbell and Mankiw (1989)
- Hall (1988) ran similar specifications. He favored estimates close to zero and interpreted them as estimates of the IES.
- Campbell and Mankiw (1989) worry about misspecification due to hand-to-mouth consumers
1. Consumption growth predictable. Should not be true if  $\psi = 0$
2. Over-identifying restrictions rejected
3. Estimates very unstable
4. Reverse regression not consistent with  $\psi = 0$
- Just as the consumption Euler equation implies that
$$
\Delta \log C _ {t + 1} = \mu_ {i} + \psi r _ {i, t + 1} + \epsilon_ {i, t + 1}
$$ it also implies that
$$ r _ {i, t + 1} = \alpha_ {i} + \frac {1}{\psi} \Delta \log C _ {t + 1} + \eta_ {i, t + 1}
$$
- If  $\psi = 0$ , this "reverse regression" should yield a large estimate for  $1 / \psi$
- Under the maintained assumptions above, this "reverse regression" can be estimated using IV with the same set of instruments
This is the specification used by Hansen and Singleton (1983)
Table 4 UNITED STATES,1953-1986
$r_t = \mu + 1 / \sigma \Delta c_t$
<table><tr><td rowspan="2">Row</td><td rowspan="2">Instruments</td><td colspan="2">First-stage regressions</td><td rowspan="2">1/σ estimate (s.e.)</td><td rowspan="2">Test of restrictions</td></tr><tr><td>Δc equation</td><td>r equation</td></tr><tr><td>1</td><td>None (OLS)</td><td>—</td><td>—</td><td>0.304 (0.087)</td><td>—</td></tr><tr><td>2</td><td>rt-2, …, rt-4</td><td>0.063 (0.009)</td><td>0.431 (0.000)</td><td>1.581 (0.486)</td><td>0.086 (0.001)</td></tr><tr><td>3</td><td>rt-2, …, rt-6</td><td>0.067 (0.014)</td><td>0.426 (0.000)</td><td>1.347 (0.390)</td><td>0.113 (0.001)</td></tr><tr><td>4</td><td>Δct-2, …, Δct-4</td><td>0.024 (0.101)</td><td>-0.021 (0.966)</td><td>-0.342 (0.428)</td><td>-0.021 (0.878)</td></tr><tr><td>5</td><td>Δct-2, …, Δct-6</td><td>0.018 (0.007)</td><td>0.007 (0.316)</td><td>0.419 (0.258)</td><td>-0.010 (0.440)</td></tr><tr><td>6</td><td>Δit-2, …, Δit-4</td><td>0.061 (0.010)</td><td>0.024 (0.105)</td><td>0.768 (0.334)</td><td>-0.021 (0.919)</td></tr><tr><td>7</td><td>Δit-2, …, Δit-6</td><td>0.102 (0.002)</td><td>0.028 (0.119)</td><td>0.638 (0.249)</td><td>-0.024 (0.747)</td></tr><tr><td>8</td><td>rt-2, …, rt-4, Δct-2, …, Δct-4</td><td>0.062 (0.026)</td><td>0.455 (0.000)</td><td>1.034 (0.333)</td><td>0.236 (0.000)</td></tr><tr><td>9</td><td>rt-2, …, rt-4, Δct-2, …, Δct-4, Δit-2, …, Δit-4</td><td>0.103 (0.006)</td><td>0.476 (0.000)</td><td>0.521 (0.220)</td><td>0.455 (0.000)</td></tr></table>
Note: The columns labeled "First-stage regressions" report the adjusted  $R^2$  for the OLS regressions of the two variables on the instruments; in parentheses is the p-value for the null that all the coefficients except the constant are zero. The column labeled "λ estimate" reports the IV estimate of λ and, in parentheses, its standard error. The column labeled "Test of restrictions" reports the adjusted  $R^2$  of the OLS regression of the residual on the instruments; in parenthesis is the p-value for the null that all the coefficients are zero.
Source: Campbell and Mankiw (1989)
What is going on!!
It can't both be true that:
$\bullet$ $\psi$  is close to zero
$1 / \psi$  is relatively small
What is going on!!
It can't both be true that:
$\bullet$ $\psi$  is close to zero
$1 / \psi$  is relatively small
- Yogo (2004): Puzzle due to weak instruments
- Consumption growth notoriously hard to predict!!
- Employs first-stage F-stat for weak instruments developed by Stock and Yogo (2003)
- Concludes that reverse regression is unreliable due to weak instruments, but regression with real Tbill rate as regressor is reliable
TABLE 1.—TEST FOR WEAK INSTRUMENTS
<table><tr><td rowspan="2">Country</td><td rowspan="2">Sample Period</td><td rowspan="2">Variable</td><td rowspan="2">F</td><td colspan="4">p-Value</td></tr><tr><td>TSLS Bias</td><td>TSLS Size</td><td>Fuller-k</td><td>LIML</td></tr><tr><td rowspan="3">USA</td><td rowspan="3">1947.3–1998.4</td><td>Δc</td><td>2.93</td><td>0.93</td><td>1.00</td><td>0.53</td><td>0.37</td></tr><tr><td>rf</td><td>15.53</td><td>0.00</td><td>0.66</td><td>0.00</td><td>0.00</td></tr><tr><td>re</td><td>2.88</td><td>0.93</td><td>1.00</td><td>0.54</td><td>0.39</td></tr><tr><td rowspan="3">AUL</td><td rowspan="3">1970.3–1998.4</td><td>Δc</td><td>1.79</td><td>0.99</td><td>1.00</td><td>0.81</td><td>0.69</td></tr><tr><td>rf</td><td>21.81</td><td>0.00</td><td>0.14</td><td>0.00</td><td>0.00</td></tr><tr><td>re</td><td>1.82</td><td>0.99</td><td>1.00</td><td>0.80</td><td>0.68</td></tr><tr><td rowspan="3">CAN</td><td rowspan="3">1970.3–1999.1</td><td>Δc</td><td>3.03</td><td>0.92</td><td>1.00</td><td>0.50</td><td>0.35</td></tr><tr><td>rf</td><td>15.37</td><td>0.00</td><td>0.67</td><td>0.00</td><td>0.00</td></tr><tr><td>re</td><td>2.51</td><td>0.96</td><td>1.00</td><td>0.64</td><td>0.48</td></tr><tr><td rowspan="3">FR</td><td rowspan="3">1970.3–1998.3</td><td>Δc</td><td>0.17</td><td>1.00</td><td>1.00</td><td>1.00</td><td>1.00</td></tr><tr><td>rf</td><td>38.43</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td></tr><tr><td>re</td><td>3.09</td><td>0.91</td><td>1.00</td><td>0.49</td><td>0.34</td></tr><tr><td rowspan="3">GER</td><td rowspan="3">1979.1–1998.3</td><td>Δc</td><td>0.83</td><td>1.00</td><td>1.00</td><td>0.97</td><td>0.93</td></tr><tr><td>rf</td><td>17.66</td><td>0.00</td><td>0.45</td><td>0.00</td><td>0.00</td></tr><tr><td>re</td><td>0.69</td><td>1.00</td><td>1.00</td><td>0.98</td><td>0.95</td></tr><tr><td rowspan="3">USA</td><td rowspan="3">1970.3–1998.4</td><td>Δc</td><td>3.53</td><td>0.86</td><td>1.00</td><td>0.39</td><td>0.25</td></tr><tr><td>rf</td><td>11.92</td><td>0.02</td><td>0.92</td><td>0.00</td><td>0.00</td></tr><tr><td>re</td><td>2.16</td><td>0.97</td><td>1.00</td><td>0.72</td><td>0.58</td></tr><tr><td rowspan="3">SWD</td><td rowspan="3">1921–1994</td><td>Δc</td><td>1.02</td><td>1.00</td><td>1.00</td><td>0.95</td><td>0.89</td></tr><tr><td>rf</td><td>5.50</td><td>0.55</td><td>1.00</td><td>0.10</td><td>0.05</td></tr><tr><td>re</td><td>1.67</td><td>0.99</td><td>1.00</td><td>0.84</td><td>0.72</td></tr><tr><td rowspan="3">UK</td><td rowspan="3">1921–1994</td><td>Δc</td><td>1.93</td><td>0.98</td><td>1.00</td><td>0.78</td><td>0.65</td></tr><tr><td>rf</td><td>4.87</td><td>0.66</td><td>1.00</td><td>0.16</td><td>0.08</td></tr><tr><td>re</td><td>4.18</td><td>0.77</td><td>1.00</td><td>0.26</td><td>0.15</td></tr><tr><td rowspan="3">USA</td><td rowspan="3">1891–1995</td><td>Δc</td><td>1.55</td><td>0.99</td><td>1.00</td><td>0.86</td><td>0.76</td></tr><tr><td>rf</td><td>2.87</td><td>0.93</td><td>1.00</td><td>0.54</td><td>0.39</td></tr><tr><td>re</td><td>1.00</td><td>1.00</td><td>1.00</td><td>0.95</td><td>0.90</td></tr></table>
The table reports the first-stage  $F$ -statistic from a regression of the endogenous variable onto the instruments. The endogenous variables are consumption growth ( $\Delta c$ ), real interest rate ( $r_{t}$ ), and real stock return (R). The  $F$ -test is used to compare the two groups of instruments. The  $F$ -test is computed as follows: (1) the TSL relative bias is greater than 10\%, (2) the size of the 5\% TSL  $t$ -test can be greater than 10\%, (3) the Fuller-  $k$  relative bias is greater than 10\%, (4) the size of 5\% LIML  $t$ -test can be greater than 10\%.
# Source: Yoga (2004)
TABLE 2.ESTIMATES OF THE EIS USING THE INTEREST RATE
<table><tr><td rowspan="2">Country</td><td rowspan="2">Sample Period</td><td colspan="3">1/ψ</td><td colspan="3">ψ</td></tr><tr><td>TSLS</td><td>Fuller-k</td><td>LIML</td><td>TSLS</td><td>Fuller-k</td><td>LIML</td></tr><tr><td>USA</td><td>1947.3–1998.4</td><td>0.68(0.48)</td><td>3.30(3.20)</td><td>34.11(112.50)</td><td>0.06(0.09)</td><td>0.03(0.10)</td><td>0.03(0.10)</td></tr><tr><td>AUL</td><td>1970.3–1998.4</td><td>0.50(0.48)</td><td>2.37(2.45)</td><td>30.03(107.71)</td><td>0.05(0.11)</td><td>0.04(0.12)</td><td>0.03(0.12)</td></tr><tr><td>CAN</td><td>1970.3–1999.1</td><td>-1.04(0.39)</td><td>-2.40(1.13)</td><td>-2.98(1.54)</td><td>-0.30(0.16)</td><td>-0.33(0.17)</td><td>-0.34(0.17)</td></tr><tr><td>FR</td><td>1970.3–1998.3</td><td>-3.12(3.75)</td><td>-1.83(1.72)</td><td>-12.38(29.61)</td><td>-0.08(0.19)</td><td>-0.08(0.19)</td><td>-0.08(0.19)</td></tr><tr><td>GER</td><td>1979.1–1998.3</td><td>-1.05(0.62)</td><td>-1.38(0.90)</td><td>-2.29(1.87)</td><td>-0.42(0.35)</td><td>-0.43(0.35)</td><td>-0.44(0.36)</td></tr><tr><td>ITA</td><td>1971.4–1998.1</td><td>-3.34(1.98)</td><td>-5.82(4.47)</td><td>-14.81(18.55)</td><td>-0.07(0.08)</td><td>-0.07(0.08)</td><td>-0.07(0.08)</td></tr><tr><td>JAP</td><td>1970.3–1998.4</td><td>-0.18(0.43)</td><td>-0.86(1.23)</td><td>-21.56(106.53)</td><td>-0.04(0.21)</td><td>-0.04(0.23)</td><td>-0.05(0.23)</td></tr><tr><td>NTH</td><td>1977.3–1998.4</td><td>-0.53(0.41)</td><td>-1.41(1.33)</td><td>-6.94(13.96)</td><td>-0.15(0.28)</td><td>-0.15(0.29)</td><td>-0.14(0.29)</td></tr><tr><td>SWD</td><td>1970.3–1999.2</td><td>-0.10(1.10)</td><td>-0.21(1.54)</td><td>-399.86(16075.06)</td><td>0.00(0.10)</td><td>0.00(0.10)</td><td>0.00(0.10)</td></tr><tr><td>SWT</td><td>1976.2–1998.4</td><td>-1.56(0.83)</td><td>-1.51(0.79)</td><td>-2.00(1.18)</td><td>-0.49(0.29)</td><td>-0.49(0.29)</td><td>-0.50(0.29)</td></tr><tr><td>UK</td><td>1970.3–1999.1</td><td>1.06(0.45)</td><td>3.76(2.42)</td><td>6.21(5.17)</td><td>0.17(0.13)</td><td>0.16(0.13)</td><td>0.16(0.13)</td></tr><tr><td>USA</td><td>1970.3–1998.4</td><td>0.53(0.50)</td><td>2.19(2.60)</td><td>47.66(249.47)</td><td>0.06(0.09)</td><td>0.02(0.11)</td><td>0.02(0.11)</td></tr><tr><td>SWD</td><td>1921–1994</td><td>1.17(1.13)</td><td>3.30(3.34)</td><td>17.77(38.67)</td><td>0.06(0.11)</td><td>0.06(0.12)</td><td>0.06(0.12)</td></tr><tr><td>UK</td><td>1921–1994</td><td>2.40(1.01)</td><td>2.99(1.33)</td><td>3.52(1.65)</td><td>0.26(0.12)</td><td>0.27(0.13)</td><td>0.28(0.13)</td></tr><tr><td>USA</td><td>1891–1995</td><td>-0.38(1.12)</td><td>-1.17(2.90)</td><td>-39.71(257.54)</td><td>-0.03(0.11)</td><td>-0.03(0.15)</td><td>-0.03(0.16)</td></tr></table>
The reciprocal of the EIS is estimated from  $\tau_{f,t + 1} = \mu_f + (1 / \psi)\Delta c_{t + 1} + \eta_{f,t + 1}$ , and the EIS is estimated from  $\Delta c_{t + 1} = \tau_f + \psi f_{f,t + 1} + \xi_{f,t + 1}$ . The instruments are the twice lagged nominal interest rate, inflation, consumption growth, and log dividend-price ratio. Standard errors in parentheses.
# Source: Yoga (2004)
- Weak instruments is not the only empirical challenge!
- Above approach relies heavily on
$$
\Delta \log C _ {t + 1} = \mu_ {i} + \psi r _ {i, t + 1} + \epsilon_ {i, t + 1} \tag {1}
$$ being a structural equation
In particular, heavy reliance on  $\epsilon_{i,t+1}$  being only an expectation error
- But what if equation (1) is misspecified?
- Suppose  $U^{\prime}(C_{t},\eta_{t})$  and  $\eta_t$  is persistent.
$\eta_t$  can be:
- Preference shocks (e.g., sentiment, preference for borrowing)
Labor supply (i.e., non-separable utility)
- If  $\eta_t$  is persistent, then  $\eta_{t - j}$  will affect both
Lagged variables being used as instruments
Current  $\eta_{t}$
This will lead IV with lagged variables to be biased
Suppose we are estimating
$$
\Delta \log C _ {t + 1} = \mu_ {i} + \psi r _ {i, t + 1} + \epsilon_ {i, t + 1}
$$ by OLS in the presence of preference shocks
- Increased desire to save drives down interest rates, and raises consumption growth
- Implies current interest rates negatively correlated with  $\epsilon_{i,t+1}$
- Downward bias in OLS estimate of  $\psi$
Suppose we are estimating
$$
\Delta \log C _ {t + 1} = \mu_ {i} + \psi r _ {i, t + 1} + \epsilon_ {i, t + 1}
$$ by IV with lagged instruments and persistent preference shocks
- Increase in desired savings in period  $t - j$  will affect instruments at time  $t - j$  and also increase desire to save in period  $t$
- Part of correlation between instruments and  $r_{i,t+1}$  due to lagged preference shock
- Lagged preference shock lowers  $r_{i,t+1}$  and raises  $\Delta \log C_{t+1}$  due to affect on current preference shock
Same downward bias as OLS
1. Hand-to-mouth consumers (more generally: liquidity constraints) (see Werning (2015))
2. Time-varying volatility:
$$
E _ {t} \Delta \log C _ {t + 1} = \psi E _ {t} r _ {i, t + 1} + \psi \log \beta + \frac {1}{2} [ \psi \sigma_ {i} ^ {2} + \psi^ {- 1} \sigma_ {c} ^ {2} - 2 \sigma_ {i c} ]
$$
- We have been assuming that all the  $\sigma$  terms are constant
What if they are not?
Bansal and Yaron (2004):  $\psi$  will be downward biased
- Persistent increase in  $\sigma_{c}$  lowers  $E_{t}r_{i,t+1}$  and is part of error term (see also Carrol, 1997; Blundell et al., 1994; Guvenen, 2000)
3. Consumption commitments (housing, cars) lead to more complicated consumption Euler equation (Chetty and Szeidl, 2016)
- This lagged instrument strategy has been common in macro
E.g., Phillips curve estimation
Stems from taking simple structural model extremely literally
Applied micro approach very different:
- Error term contains all sorts of things
- We don't know the true model
- Want conclusions to be robust to many structural stories
- Lagged instrument strategy becoming less common in macro
- Most work estimates IES using time-series variation, but hard to find exogenous variation in the time series
- Gruber (2013) exploits variation in rates of return in the cross-section to identify the IES
- After-tax rates of return are influenced by capital tax rates
Exploits exogenous variation in capital tax rates
- Most variation in tax rates potentially endogenous (e.g., due to variation in income)
- Constructs "simulated" tax rates based on predicted income from exogenous characteristics (e.g., education, age, and sex)
Controls flexibly for these characteristics
- Identification comes only from changes in the tax system over the sample period
- Specification:
$$
G C _ {i, t + 1} = \alpha + \beta A T R A T E _ {i t} + X _ {i t} \delta + \Delta Z _ {i t, t + 1} \eta + \epsilon
$$
GC: Non-durable consumption growth for household  $i$  (from CEX)
- ATRATE: Income specific after tax rate of return for household  $i$  (SCF portfolio shares and NBER TAXSIM tax rates)
X: vector of baseline demographic characteristics
$\bullet$ $\Delta Z$ : vector of demographic changes
- Includes time and state fixed effects
- IV: Instrument for ATRATE using tax rate based on predicted income for a given demographic group
Table 2. Base case estimates.
<table><tr><td></td><td>After-Tax T-Bill Rate</td><td>After-Tax Rate of Return</td></tr><tr><td>OLS, no year dummies</td><td>-0.551</td><td>0.105</td></tr><tr><td></td><td>(0.116)</td><td>(0.032)</td></tr><tr><td>Lag IV, no year dummies</td><td>2.616</td><td>0.328</td></tr><tr><td></td><td>(0.490)</td><td>(0.130)</td></tr><tr><td>Tax IV</td><td>2.032</td><td>2.239</td></tr><tr><td></td><td>(0.796)</td><td>(0.894)</td></tr><tr><td>Number Obs.</td><td>66,314</td><td>66,208</td></tr></table>
Notes: Estimates from models such as Eq. (1) in text. Each cell represents the estimated EIS from a separate model: first column uses after-tax T-bill rate, while second column uses weighted average after-tax rate of return. Standard errors in parentheses.
Source: Gruber (2013)
No consensus in the literature!!
- Macro people often use IES  $< 1$ , influenced by Hall (1988)
- Asset pricing people often use IES  $>1$  because values  $< 1$  yield counter-intuitive responses of asset prices to shocks
- With IES  $< 1$ , bad news about future growth increases stock prices because of strong desire to save
- Simplest form of inference:
- Run regression in which one of the coefficients may be interpreted as direct causal evidence of parameter in question (e.g., IES)
- Often what we can measure is not directly what we are interested in estimating
- What we can measure, however, often yield powerful inference about what we are interested in if viewed through the lens of a structural model (provide tell-tale signs about parameter of interest)
(See Nakamura-Steinsson (2018) for more discussion of this idea.)
- Use "mortgage notches" in the UK to shed light on IES
- Statistics they calculate do not provide direct estimates of IES
- But viewed through sensible structural models, they (arguably) provide powerful inference about IES
- How to make convincing inference through the lens of a structural model is a complicated art
- Which model to use?
- How robust are the conclusions?
- Best et al. paper is a good example of this
- UK mortgages have low fixed rates for 2, 3, or 5 years then much higher flexible rates
High penalty for refinancing early
Most people refinance at the time of interest rate reset
- Authors focus on refinancers so as to abstract from the effect of mortgage size on home size
FIGURE A.1: REFINANCING HAPPENS WHEN THE RESET RATE KICKS IN
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/4deb9b5d72efb689c072591676d4c875f6e2d9f4aac84a9af2ca45670289f750.jpg)
Notes: The figure shows the distribution of the time to refinance, excluding individuals where the date on which the reset rate kicks in is unobserved. The figure shows individuals individuals who refinance more than 6 months after their reset rate kicks in in black, individuals who refinance more than 2 months before their reset rate kicks in in white, and the remainder who refinance around their reset date in gray.
Source: Best-Cloyne-lletzki-Kleven (2019)
- Interest rate jumps by discrete amounts (features notches) at certain loan-to-value (LTV) thresholds
- Very salient: daily menu in newspapers, on bank websites, etc.
Estimate rate function:
$$ r _ {i} = f \left(L T V _ {i}\right) + \beta_ {1} \text {b a n k} _ {i} + \beta_ {2} \text {v a r i a b i l i t y} _ {i} \otimes \text {d u r a t i o n} _ {i} \otimes \text {m o n t h} _ {i} + \beta_ {3} \text {r e p a m e n t} _ {i} + \beta_ {4} \text {t e r m} _ {i} + \nu_ {i}
$$
- No individual characteristics because UK mortgage market is like a supermarket (no individual negotiation)
- But adding age, income and family status has no effect on results
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/c92cac5e867a3e9178abc88de126c96ee72abedfe3ed7a6bdccf8fc1039d35aa.jpg)
FIGURE 3
# Interest rate jumps at notches
Notes: This figure shows the conditional interest rate as a function of the LTV ratio from the non-parametric regression (2.1). In each LTV bin, we plot the coefficient on the LTV bin dummy plus a constant given by the mean predicted value  $E\left[r_i\right]$  from all the other covariates (i.e. omitting the contribution of the LTV bin dummies). The figure shows that the mortgage interest rate evolves as a step function with sharp notches at LTV ratios of 60\%, 70\%, 75\%, 80\%, and 85\%.
# Source: Best-Cloyne-Ilzetzki-Kleven (2019)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/19e9db2e685c3f0bbca4e6190552e1ed6bb2e0c123a5d3681476591b9bc496b2.jpg)
FIGURE 1
Observed LTV distribution among U.K. refinancers
Notes: This figure shows the observed distribution of LTV ratios among refinancers in the U.K. between 2008-14. There are interest rate notches at LTV ratios of  $60\%$ ,  $70\%$ ,  $75\%$ ,  $80\%$ ,  $85\%$ , and  $90\%$  (depicted by vertical lines).
Source: Best-Cloyne-Ilzetzki-Kleven (2019)
Large amount of bunching below interest rate notches
- Intuitively, this is informative about IES:
Households must cut consumption to get below notch
- How willing are households to cut consumption now to raise life-time consumption?
# Two Challenges:
1. Need to translate bunching into IES estimate
- What is counterfactual?
Is observed bunching a lot or a little?
2. Many other features of reality affect bunching
$\bullet$  Patience
- Demand for buffer stock savings (i.e., income risk and risk aversion)
- Frictions to household optimization (inattention, inertia, myopia)
- Authors write down a structural model
- Ask: For what parameter values model can match bunching in the data?
- Bunching highly sensitive to the IES
- Relatively insensitive to reasonable variation in other parameters
- This is a good example of the use of structural estimation
- The moments being used are shown to be highly informative about something specific in the model and are used to estimate that thing
- Often structural estimation is a big black box with lots of moments estimating lots of parameters without a clear sense of what identifies what
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/40ddf349a17ef99804c9404a674491e01101de54fc2f0df6fd6dd746643b9605.jpg)
FIGURE 4
Constructing the counterfactual LTV distribution.
Notes: This figure shows the two steps in the construction of the counterfactual LTV distribution among refinancers. Each panel shows the actual LTV distribution with dots (as in Figure 1). Panel A shows the distribution of passive LTVs with crosses, calculated based on the LTV of the previous mortgage, amortization, and the house value at the time of refinancing. Panel B shows the distribution of counterfactual LTVs with crosses, which adjusts passive LTVs for the average equity extraction of non-bunchers in the actual distribution.
Source: Best-Cloyne-Ilzetzki-Kleven (2019).
Based on "passive behavior", i.e., what would LTV have been if no refinancing.
- Two periods (0 and 1)
Households have decided to stay in current home
Face a refinancing decision
$\bullet$  Utility:
$$
\frac {\sigma}{\sigma - 1} \left(\boldsymbol {c} _ {0} ^ {(\sigma - 1) / \sigma} + \delta \boldsymbol {c} _ {1} ^ {(\sigma - 1) / \sigma}\right)
$$ where  $\delta$  is discount factor and  $\sigma$  is IES
Budget constraints:
$$ c _ {0} = y _ {0} + W _ {0} - (1 - \lambda) P _ {0} H
$$
$$ c _ {1} = y _ {1} - R \lambda P _ {0} H + (1 - d) P _ {1} H
$$ where  $\lambda$  is LTV on new mortgage,  $d$  is depreciation rate of houses, and  $R$  is mortgate interest rate
- Authors simulate model for different values of IES
- Distribution of  $W_{0}$  is calibrated to replicate counterfactual LTV distribution when  $R$  is constant
- Other parameters are calibrated to "reasonable" values:
$$
\delta = 0. 9 6
$$
$$ d = 0. 0 2 5
$$
$$
\frac {P _ {1}}{P _ {0}} = 1. 0 2 6
$$
$$ y _ {1} = y _ {0}
$$
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/9676ad11d9cf1546d8799e70cde4efcae502cd77a1c6837c9bcce10bf07ad670.jpg)
A
$\sigma = 0.06$
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/84f64ce6f3077ed5d78984161a96be8e43dc48cd2616e898b32d7ac012152f10.jpg)
B
$\sigma = 0.5$
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/649a187a8e4b55f15370b281093d292cc2e95dbf0f523c2488b7be3e0f46c915.jpg)
C
$\sigma = 1$
Source: Best-Cloyne-lletzki-Kleven (2019)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/7a1dfd7eb9e6658dbcd83420b83e5deab2146eb4f5e0dee251eaea60e97e1dc0.jpg)
D
$\sigma = 2$
- But could it be that other values of the other parameters could justify a large IES?
- Authors set  $IES = 1$  and then vary other parameters to maximize fit at notches
- Varying other parameters cannot give good fit with IES = 1 even allowing for very unreasonable values for other parameters
Panel B:  $\sigma = 1$ ; Calibrated  $\delta, y, P$
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/dea0aa7739a42d188fe0559a49c174874ddf4156dfa560500efd4de97323c9c7.jpg)
Source: Best-Cloyne-Ilzetzki-Kleven (2019). Parameter values:  $\delta = 0.24$ ,  $P_{1} / P_{0} = 0.88$ ,  $y_{1} = 0.58y_{0}$
- Adjustment to interest rate notches affected by demand for buffer stock savings
- Simple structural model doesn't capture this (no risk)
- But simple structural model provides an upper bound:
- Makes extreme assumption of no liquid wealth
- All adjustment borne by consumption
- Addition of liquid wealth and precautionary savings would add an adjustment margin
- Even lower IES needed to justify small amount of bunching
- Most important "treat to identification" is frictions to household optimization (inattention, inertia, myopia)
- Estimate fraction of non-optimizers as those in dominated region (right above notch) relative to counterfactual
Redoes model simulations assuming this fraction of non-optimizers
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/6d6d60b3a6d3a3fac7818483922fd01fe147f68598a28fee8e515e7009693ffc.jpg)
FIGURE 4
Constructing the counterfactual LTV distribution.
Notes: This figure shows the two steps in the construction of the counterfactual LTV distribution among refinancers. Each panel shows the actual LTV distribution with dots (as in Figure 1). Panel A shows the distribution of passive LTVs with crosses, calculated based on the LTV of the previous mortgage, amortization, and the house value at the time of refinancing. Panel B shows the distribution of counterfactual LTVs with crosses, which adjusts passive LTVs for the average equity extraction of non-bunchers in the actual distribution.
Source: Best-Cloyne-Ilzetzki-Kleven (2019)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/c071caa596ae1ae2a92466fc4004ec5e4b6539ee860ec178a289913a305ed264.jpg)
FIGURE A.7: OBSERVED VS SIMULATED LTV DISTRIBUTIONS WITH FRICTION ADJUSTMENT
Panel A:  $\sigma = 0.12$
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/895ede2b0aa6b0f020215bc62b8126ce8b8a4642f26d9d26395f0104fac0e0f2.jpg)
Panel B:  $\sigma = 0.5$
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/dd759259835eb876d99f5b888b842775c757fec5bf51757fbe567bbc4efbe7cb.jpg)
Panel C:  $\sigma = 1$
Source: Best-Cloyne-lletzki-Kleven (2019)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/dcdfe04467aa8cc54306d47685afc6e2a41b13256b933d07fa90d71a56287d25.jpg)
Panel D:  $\sigma = 2$
TABLE 3
Bounding optimization frictions and the EIS
<table><tr><td rowspan="2"></td><td colspan="5">Notch</td></tr><tr><td>70</td><td>75</td><td>80</td><td>85</td><td>Pooled</td></tr><tr><td colspan="6">Panel A: Adjustment factor a</td></tr><tr><td rowspan="2">(1) Notched banks only</td><td>0.11</td><td>0.15</td><td>0.15</td><td>0.03</td><td>0.12</td></tr><tr><td>(0.02)</td><td>(0.02)</td><td>(0.03)</td><td>(0.01)</td><td>(0.01)</td></tr><tr><td rowspan="2">(2) Dominated region</td><td>0.21</td><td>0.30</td><td>0.15</td><td>0.08</td><td>0.22</td></tr><tr><td>(0.02)</td><td>(0.03)</td><td>(0.02)</td><td>(0.03)</td><td>(0.01)</td></tr><tr><td rowspan="2">(3) Entire hole</td><td>0.67</td><td>0.60</td><td>0.57</td><td>0.40</td><td>0.61</td></tr><tr><td>(0.05)</td><td>(0.02)</td><td>(0.04)</td><td>(0.09)</td><td>(0.02)</td></tr><tr><td colspan="6">Panel B: Elasticity of intertemporal substitution σ</td></tr><tr><td rowspan="2">(4) Unadjusted</td><td>0.02</td><td>0.08</td><td>0.06</td><td>0.11</td><td>0.05</td></tr><tr><td>(0.00)</td><td>(0.01)</td><td>(0.01)</td><td>(0.04)</td><td>(0.01)</td></tr><tr><td rowspan="2">(5) Dominated region: notched banks only</td><td>0.02</td><td>0.11</td><td>0.08</td><td>0.11</td><td>0.07</td></tr><tr><td>(0.00)</td><td>(0.01)</td><td>(0.02)</td><td>(0.04)</td><td>(0.01)</td></tr><tr><td rowspan="2">(6) Dominated region: all banks</td><td>0.03</td><td>0.17</td><td>0.08</td><td>0.13</td><td>0.09</td></tr><tr><td>(0.00)</td><td>(0.02)</td><td>(0.02)</td><td>(0.05)</td><td>(0.01)</td></tr><tr><td rowspan="2">(7) All mass in the hole is friction</td><td>0.16</td><td>0.50</td><td>0.31</td><td>0.30</td><td>0.30</td></tr><tr><td>(0.05)</td><td>(0.07)</td><td>(0.08)</td><td>(8.53)</td><td>(0.03)</td></tr></table>
Notes: The table shows how the estimated EIS is affected by assumptions on optimization frictions. The top panel of the table shows the friction adjustment factor  $a$  estimated in three different cases. Row (1) shows the friction adjustment based on mass in the dominated region using only notched banks, row (2) shows the friction adjustment based on mass the dominated region using all banks (our baseline estimates), while row (3) shows the friction adjustment assuming that all mass in the hole is due to friction. The bottom panel of the table shows the estimated EIS when not adjusting for optimization friction (in row (4)), and when adjusting for friction using each of the three measures provided in the top panel (in rows (5)-(7)). As explained in the main text of the article, the EIS estimates provided in rows (4) or (5) are in general lower bounds, whereas the EIS estimate provided in row (7) is an upper bound. The upper bound is based on the extreme assumption that all density mass in the hole—not just the mass in the much narrower dominated region—can be explained by friction rather than by heterogeneity in true preferences (i.e. true preferences are assumed to be homogeneous in the population).
Source: Best-Cloyne-Ihzetzki-Kleven (2019)
# AGGREGATE RISK
#  and Jon Steinsson
UC Berkeley
Fall 2022
Stochastic Process: Sequence of random variables
- Stationary: Unconditional distribution not a function of time
Trend Stationary: Stationary after subtracting a trend
- Difference Stationary: Stationary after differencing (i.e.,  $y_{t} - y_{t - 1}$  is stationary)
- I.i.d sequence: Sequence of independent and identically distributed random variables
For more detail, see, e.g., Hayashi (2000, ch. 2.2)
- Autoregressive model of order 1 (i.e., AR(1)):
$$ y _ {t} = \mu + \rho y _ {t - 1} + \epsilon_ {t}
$$ where  $\epsilon_{t}$  is i.i.d.
- AR(1) is stationary if  $|\rho| < 1$
- Impulse response function: Response of  $y_{t}$  over time to a shock to  $\epsilon_0$
For AR(1), impulse response at time  $t$  is  $\rho^t\epsilon_0$
Trend Stationary AR(1):
$$
\mathcal {Y} _ {t} = \alpha + \mu t + \rho \mathcal {Y} _ {t - 1} + \epsilon_ {t}
$$
- Random Walk (with drift):
$$ y _ {t} = \mu + y _ {t - 1} + \epsilon_ {t}
$$
- A random walk is difference stationary (but not stationary in levels)
AR(p):
$$ y _ {t} = \mu + \rho_ {1} y _ {t - 1} + \dots + \rho_ {\rho} y _ {t - \rho} + \epsilon_ {t}
$$
- Moving Average of order q (i.e., MA(q)):
$$ y _ {t} = \mu + \epsilon_ {t} + \theta_ {1} \epsilon_ {t - 1} + \dots + \theta_ {q} \epsilon_ {t - q}
$$
- Impulse response of MA(q) is:
$$ y _ {0} = \epsilon_ {0}, \quad y _ {1} = \theta_ {1} \epsilon_ {0}, \quad \ldots \quad y _ {q} = \theta_ {q} \epsilon_ {0}, \quad y _ {q + 1} = 0
$$
ARMA(p,q):
$$ y _ {t} = \mu + \rho_ {1} y _ {t - 1} + \dots + \rho_ {p} y _ {t - p} + \epsilon_ {t} + \theta_ {1} \epsilon_ {t - 1} + \dots + \theta_ {q} \epsilon_ {t - q}
$$
Lucas (1987, 2003):
- Macroeconomists spend a lot of time thinking about policies to dampen business cycles (i.e., stabilization policies)
- But how important in terms of welfare are such policies
- Upper bound: Welfare gains from eliminating all economic fluctuations
- What are the welfare gains from eliminating all economic fluctuations?
- Assumes consumer's consumption stream is trend-stationary:
$$
\mathcal {C} _ {t} = A e ^ {\mu t} e ^ {- (1 / 2) \sigma^ {2}} \epsilon_ {t}
$$ with  $\log (\epsilon_t)\sim \mathsf{N}(0,\sigma^2)$
This implies:
$$
E (e ^ {- (1 / 2) \sigma^ {2}} \epsilon_ {t}) = 1
$$
$$
E \left(c _ {t}\right) = A e ^ {\mu t}
$$
Consumer's utility function
$$
E \left\{\sum_ {t = 0} ^ {\infty} \beta^ {t} \frac {c _ {t} ^ {1 - \gamma}}{1 - \gamma} \right\}
$$
- $\beta$  is subjective discount factor
$\gamma$  coefficient of risk aversion
- Thought experiment: How much would welfare increase if we could magically eliminate all consumption variation around trend (best case scenario for stabilization policy!)
- Represent this as a consumption equivalent gain  $\lambda$ :
$$
E \left\{\sum_ {t = 0} ^ {\infty} \beta^ {t} \frac {\left((1 + \lambda) c _ {t}\right) ^ {1 - \gamma}}{1 - \gamma} \right\} = \sum_ {t = 0} ^ {\infty} \beta^ {t} \frac {\left(A e ^ {\mu t}\right) ^ {1 - \gamma}}{1 - \gamma}
$$
- Answer:
$$
\lambda \simeq \frac {1}{2} \gamma \sigma^ {2}
$$
$$
\lambda \simeq \frac {1}{2} \gamma \sigma^ {2}
$$
- For 1947-2001, the standard deviation of the log of U.S. real, per capita consumption about a linear trend: 0.032.
- Reasonable values of  $\gamma$  between 1 and 4
$$
\lambda = \frac {1}{2} (0. 0 3 2) ^ {2} = 0. 0 0 0 5
$$
- Even including the Great Depression and Great Recession (1920-2009) and setting  $\gamma = 4$ :
$$
\lambda = \frac {1}{2} 4 (0. 0 6 3) ^ {2} = 0. 0 0 8
$$
Conclusion: Welfare gains from stabilization policy are trivial.
- Macroeconomics as originally conceived has succeeded.
Is this convincing?
Conclusion: Welfare gains from stabilization policy are trivial.
- Macroeconomics as originally conceived has succeeded.
Is this convincing?
- Model used to reach this conclusion may be wrong
- Output/Consumption may not be trend stationary
- Representative consumer view may understate seriousness of recessions
- Model Lucas uses does not fit the equity premium!!
Can it be taken seriously for thinking about the costs of risk??
In a simple endowment economy (Mehra-Prescott 85):
$$
\log E _ {t} R _ {C, t + 1} - \log R _ {f, t} = \gamma \operatorname {v a r} _ {t} (\log \Delta C _ {t + 1})
$$
Equity Premium Puzzle:
$$
\log E _ {t} R _ {e, t + 1} - \log R _ {f, t} \approx 0. 0 7
$$
$$
\operatorname {v a r} _ {t} \left(\log \Delta C _ {t + 1}\right) \approx 0. 0 3 ^ {2} = 0. 0 0 0 9
$$
(Arguably equity is a leveraged claim to consumption. See, e.g., Barro 06)
Different preferences: Habits (Campbell and Cochrane, 1999)
Incomplete markets / heterogeneous agents (Constantinides and Duffie, 1996; Constantinides and Ghosh, 2017)
Different consumption process
- Is trend-stationary consumption process assumed by Lucas or random-walk consumption process assumed in textbook equity premium calculations a good model of consumption growth?
- Do they accurately capture aggregate risks?
What is missing?
# How to Model Consumption Dynamics?
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/16b3a5648510a99a44cd052414b9fb13dc4e35a3a81fe43cca3cdbbe0d916739.jpg)
Figure: Log Consumption for France
# How to Model Consumption Dynamics?
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/311e7fb88ecd484d8b11eb3c4f87bddcb4021efb68b021c4f8731ae986c2cfda.jpg)
Figure: Log Consumption for France
# How to Model Consumption Dynamics?
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/db81f0b6aef4868d5bf85a4e64600df5fcdba8cdbd651bb95657e45028c893f7.jpg)
Figure: Log Consumption for France
# How to Model Consumption Dynamics?
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/42be33d81a939272c4f0f8a55a2fa02cbeb4b0cbf3c9348bb903a58d9f3694cc.jpg)
Figure: Log Consumption for France
# How to Model Consumption Dynamics?
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/5d4be0e23b1328da50e0abae3d9d78da16988c8f92dd827df8e1afb42edfb35b.jpg)
Figure: Log Consumption for France
# How to Model Consumption Dynamics?
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/9469d98113fff37c6c1295c1502da9d0963aabf1c3b2c7e1ef96c4813f0c8afc.jpg)
Figure: Log Consumption for France
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/24fb854f03ad968da218c322ebdf4c5d084b1fec2b319eb8468838c781573662.jpg)
FIGURE
Growth in U.S. per Capita Consumption
Source: Barro and Ursua (2008)
# Is GDP/CONSUMPTION A RANDOM WALK?
- Textbook asset pricing model:
$$
\log C _ {t + 1} = \mu + \log C _ {t} + \epsilon_ {t + 1}
$$
- What does this imply about  $\partial \log C_{t+j} / \partial \epsilon_{t+1}$  as  $j \to \infty$ ?
- Textbook asset pricing model:
$$
\log C _ {t + 1} = \mu + \log C _ {t} + \epsilon_ {t + 1}
$$
- What does this imply about  $\partial \log C_{t+j} / \partial \epsilon_{t+1}$  as  $j \to \infty$ ?
$\partial \log C_{t + j} / \partial \epsilon_{t + 1} = 1$  for all  $j?$
I.e., shocks have permanent effects on GDP
- Textbook asset pricing model:
$$
\log C _ {t + 1} = \mu + \log C _ {t} + \epsilon_ {t + 1}
$$
- What does this imply about  $\partial \log C_{t+j} / \partial \epsilon_{t+1}$  as  $j \to \infty$ ?
$\partial \log C_{t + j} / \partial \epsilon_{t + 1} = 1$  for all  $j?$
I.e., shocks have permanent effects on GDP
- What does it imply about  $\operatorname{var}_t(\log C_{t+j})$  as  $j \to \infty$ ?
- Textbook asset pricing model:
$$
\log C _ {t + 1} = \mu + \log C _ {t} + \epsilon_ {t + 1}
$$
- What does this imply about  $\partial \log C_{t+j} / \partial \epsilon_{t+1}$  as  $j \to \infty$ ?
$\partial \log C_{t + j} / \partial \epsilon_{t + 1} = 1$  for all  $j?$
I.e., shocks have permanent effects on GDP
- What does it imply about  $\operatorname{var}_t(\log C_{t+j})$  as  $j \to \infty$ ?
- Goes to infinity!!
- But does US GDP look like a random walk with drift?
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/5b1e455fc253dbae71f409817932d3f3a5c314de5bdb37388625c1f4efe45023.jpg)
FIG. 2.-Log real per capita GNP, 1869-1986
Source: Cochrane (1988)
- Traditional view in macro: GDP is trend stationary
$$ y _ {t} = b t + \sum_ {j = 0} ^ {\infty} a _ {j \epsilon_ {t - j}}
$$ where  $a_{j}$  approaches zero for large  $j$
$\bullet$  Implies:
- Long-run forecast invariant to  $\epsilon_t$  (i.e., business cycles are transient)
$\mathsf{var}_t(\log C_{t + j})\to \sum_{j = 0}^{\infty}a_j^2\sigma <  \infty$  as  $j\to \infty$
This view was challenged in the 1980s
(Nelson-Plosser 82; Watson 86; Clark 87; Campbell-Mankiw 87)
Estimate an ARMA(p,q) process for GNP growth:
$$
\phi (L) \Delta Y _ {t} = \theta (L) \epsilon_ {t}
$$
$\phi (L)$  and  $\theta (L)$  are polynomials in the lag operator  $(L\Delta Y_{t} = \Delta Y_{t - 1})$
Sample period: 1947:1 - 1985:4 (quarterly data)
Estimate by maximum likelihood
- Extensive discussion of model selection (i.e., selection of  $p$  and  $q$ )
- Main result:
$\partial \log Y_{t + j} / \partial \epsilon_{t + 1}\geq 1$  for relatively large  $j$
- Relatively robust to  $p$  and  $q$  choice
TABLE IV MODEL IMPULSE RESPONSES, IN REAL GNP
<table><tr><td>Model p,q</td><td>1</td><td>2</td><td>4</td><td>8</td><td>16</td><td>20</td><td>40</td><td>80</td></tr><tr><td>0,1</td><td>1.261</td><td>1.261</td><td>1.261</td><td>1.261</td><td>1.261</td><td>1.261</td><td>1.261</td><td>1.261</td></tr><tr><td></td><td>(0.072)</td><td>(0.072)</td><td>(0.072)</td><td>(0.072)</td><td>(0.072)</td><td>(0.072)</td><td>(0.072)</td><td>(0.072)</td></tr><tr><td>0,2</td><td>1.305</td><td>1.573</td><td>1.573</td><td>1.573</td><td>1.573</td><td>1.573</td><td>1.573</td><td>1.573</td></tr><tr><td></td><td>(0.073)</td><td>(0.123)</td><td>(0.123)</td><td>(0.123)</td><td>(0.123)</td><td>(0.123)</td><td>(0.123)</td><td>(0.123)</td></tr><tr><td>0,3</td><td>1.323</td><td>1.647</td><td>1.754</td><td>1.754</td><td>1.754</td><td>1.754</td><td>1.754</td><td>1.754</td></tr><tr><td></td><td>(0.077)</td><td>(0.128)</td><td>(0.170)</td><td>(0.170)</td><td>(0.170)</td><td>(0.170)</td><td>(0.170)</td><td>(0.170)</td></tr><tr><td>1,0</td><td>1.363</td><td>1.496</td><td>1.561</td><td>1.571</td><td>1.571</td><td>1.571</td><td>1.571</td><td>1.571</td></tr><tr><td></td><td>(0.070)</td><td>(0.120)</td><td>(0.161)</td><td>(0.171)</td><td>(0.172)</td><td>(0.172)</td><td>(0.172)</td><td>(0.172)</td></tr><tr><td>1,1</td><td>1.344</td><td>1.523</td><td>1.666</td><td>1.715</td><td>1.719</td><td>1.719</td><td>1.719</td><td>1.719</td></tr><tr><td></td><td>(0.077)</td><td>(0.119)</td><td>(0.202)</td><td>(0.268)</td><td>(0.278)</td><td>(0.279)</td><td>(0.279)</td><td>(0.279)</td></tr><tr><td>1,2</td><td>1.322</td><td>1.635</td><td>1.728</td><td>1.734</td><td>1.734</td><td>1.734</td><td>1.734</td><td>1.734</td></tr><tr><td></td><td>(0.075)</td><td>(0.130)</td><td>(0.206)</td><td>(0.222)</td><td>(0.222)</td><td>(0.222)</td><td>(0.222)</td><td>(0.222)</td></tr><tr><td>1,3</td><td>1.271</td><td>1.488</td><td>1.341</td><td>1.090</td><td>0.721</td><td>0.586</td><td>0.208</td><td>0.026</td></tr><tr><td></td><td>(0.119)</td><td>(0.269)</td><td>(0.572)</td><td>(1.110)</td><td>(1.895)</td><td>(2.177)</td><td>(2.958)</td><td>(3.338)</td></tr><tr><td>2,0</td><td>1.314</td><td>1.547</td><td>1.730</td><td>1.804</td><td>1.812</td><td>1.812</td><td>1.812</td><td>1.812</td></tr><tr><td></td><td>(0.073)</td><td>(0.116)</td><td>(0.201)</td><td>(0.264)</td><td>(0.276)</td><td>(0.276)</td><td>(0.276)</td><td>(0.276)</td></tr><tr><td>2,1</td><td>1.321</td><td>1.591</td><td>1.731</td><td>1.770</td><td>1.772</td><td>1.772</td><td>1.772</td><td>1.772</td></tr><tr><td></td><td>(0.071)</td><td>(0.122)</td><td>(0.198)</td><td>(0.242)</td><td>(0.248)</td><td>(0.248)</td><td>(0.248)</td><td>(0.248)</td></tr><tr><td>2,2</td><td>1.302</td><td>1.621</td><td>1.572</td><td>1.532</td><td>1.517</td><td>1.517</td><td>1.517</td><td>1.517</td></tr><tr><td></td><td>(0.078)</td><td>(0.128)</td><td>(0.193)</td><td>(0.142)</td><td>(0.162)</td><td>(0.160)</td><td>(0.161)</td><td>(0.161)</td></tr><tr><td>2,3</td><td>1.289</td><td>1.561</td><td>1.502</td><td>1.115</td><td>0.592</td><td>0.431</td><td>0.088</td><td>0.004</td></tr><tr><td></td><td>(0.119)</td><td>(0.268)</td><td>(0.596)</td><td>(1.178)</td><td>(1.921)</td><td>(2.140)</td><td>(2.599)</td><td>(2.720)</td></tr><tr><td>3,0</td><td>1.336</td><td>1.632</td><td>1.641</td><td>1.568</td><td>1.571</td><td>1.571</td><td>1.571</td><td>1.571</td></tr><tr><td></td><td>(0.076)</td><td>(0.132)</td><td>(0.207)</td><td>(0.230)</td><td>(0.223)</td><td>(0.222)</td><td>(0.222)</td><td>(0.222)</td></tr><tr><td>3,1</td><td>1.320</td><td>1.614</td><td>1.604</td><td>1.334</td><td>1.364</td><td>1.360</td><td>1.360</td><td>1.360</td></tr><tr><td></td><td>(0.077)</td><td>(0.131)</td><td>(0.206)</td><td>(0.327)</td><td>(0.288)</td><td>(0.297)</td><td>(0.297)</td><td>(0.297)</td></tr><tr><td>3,2</td><td>1.318</td><td>1.624</td><td>1.630</td><td>1.626</td><td>1.595</td><td>1.596</td><td>1.597</td><td>1.597</td></tr><tr><td></td><td>(0.078)</td><td>(0.127)</td><td>(0.210)</td><td>(0.196)</td><td>(0.206)</td><td>(0.203)</td><td>(0.203)</td><td>(0.203)</td></tr><tr><td>3,3</td><td>1.279</td><td>1.563</td><td>1.416</td><td>1.095</td><td>0.720</td><td>0.584</td><td>0.207</td><td>0.026</td></tr><tr><td></td><td>(0.122)</td><td>(0.267)</td><td>(0.602)</td><td>(1.141)</td><td>(1.929)</td><td>(2.213)</td><td>(3.001)</td><td>(3.389)</td></tr></table>
Standard errors are in parentheses.
GDP is driven by many shocks with vastly different dynamics:
- Monetary shocks (transitory?)
- Productivity shocks (permanent?)
Demographic shocks (build very slowly?)
- Makes it very hard to measure "permanent component" of GDP shocks since short-term dynamics not necessarily informative about long-run dynamics (see, e.g., Quah 1992)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/62f7cf15-ef01-4251-9f8e-90d77277177c/124a671f68ba237514ab578c1c0f33798ac22a336139a381c03aa509b4917975.jpg)
Source: FRED. Log GDP per Capita for the U.S.
Epop by Gender
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/8b5c94e8d472b1bb4c37eb1e4712d9419be1921f25b564404e2f7283c8045443.jpg)
Source: Fukui, Nakamura, and Steinsson (2019)
Cochrane (1988) advocated using variance ratios:
$$
\mathrm {V R} _ {i, k} = \frac {1}{k} \frac {\operatorname {v a r} \left(c _ {i , t} - c _ {i , t - k}\right)}{\operatorname {v a r} \left(c _ {i , t} - c _ {i , t - 1}\right)}
$$
Non-parametric approach
Cochrane (1988) advocated using variance ratios:
$$
\mathrm {V R} _ {i, k} = \frac {1}{k} \frac {\operatorname {v a r} \left(c _ {i , t} - c _ {i , t - k}\right)}{\operatorname {v a r} \left(c _ {i , t} - c _ {i , t - 1}\right)}
$$
Non-parametric approach
- Random walk:  $VR_{i,k} = 1$  for all  $k$
Trend stationary:  $VR_{i,k} \to 0$  as  $k \to \infty$
- Positively autocorrelated growth:  $V R_{i, k} > 1$  for large  $k$
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/da9521ac64db48d2142b0145a37d0a9264f392b22ef19480c66de79d6e003bac.jpg)
FIG. 1.  $-1 / k$  times the variance of  $k$ -differences of log real per capita GNP, 1869-1986, with asymptotic standard errors.
Source: Cochrane (1988)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/1f5c71eafad4f31ca64c8268fac34db7e8c559dd41189c6cafd2c0a0e86dd823.jpg)
FIG. 3.  $1 / k$  times the variance of  $k$ -differences of log real per capita GNP, 1947-86, with asymptotic standard errors.
Source: Cochrane (1988)
- Notice that variance ratio initially rises above one
GDP growth positively autocorrelated at short horizons
This is what drives Campbell-Mankiw 87 results
- Cochrane's results reflect slow negative correlation of growth rates at longer horizons which is hard to pick up using low-order ARMA models
- If consumption growth is largely trend stationary, then world is even less risky than textbook model assumes
Equity premium puzzle even worse (and Lucas' assumptions look good)
- Extends Cochrane's estimation approach to 9 OECD countries for 1871-1985
- Critiques small sample properties of Cochrane's asymptotic standard errors
- Presents two estimators for variance ratio:
- $\hat{V}^{\prime}$  based on frequency domain methods
$\hat{V}^k$  based on traditional method (i.e., Cochrane's estimator)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/da32f540c3b454b180f6e936a43b0a355dac329e64d45795225ccfff18010d2d.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/d478554fafc077cc0d5259eb74fb333bce2aaf496240709903431c7c16468d2f.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/ad3cd154c19ef4d6ac977b016ca4d7b7ca2b03a118e3b3ee09774274d9112689.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/203b3c74f2d771e842648a99368586e5e76b9a91413b8e5b4653e3e69ef3573e.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/09fac5305c78a27058ed109a3c63831bf441eafd972b90fc82442a2ad41edfb0.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/d9c8325bf78de6667417c2c1a2244d018bdb079a80e2a10df18da489e477f7a8.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/ce0ab94828d554019e38b1347914a83b7323da608c20c959ed0c81fc2613d4b9.jpg)
FIG.1.-Log real per capita GDP, 1871-1985
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/3bb6cc5c5cec253380d86515776d9818399c0d5d138008bb765851927409c6c9.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/c19d892b5f41e7299c5b021dfb0f7edfb5eb4813ee09ea53d11c5092cb54c547.jpg)
TABLE 2
ESTIMATES OF THE VARIANCE RATIO: PER CAPITA OUTPUT GROWTH, 1871-1985
<table><tr><td rowspan="2"></td><td colspan="2">Vf</td><td colspan="2">Vk</td></tr><tr><td>k=15</td><td>k=20</td><td>k=15</td><td>k=20</td></tr><tr><td>Australia</td><td>1.15(.63, 3.2)</td><td>1.21(.64, 4.1)</td><td>1.25</td><td>1.40</td></tr><tr><td>Canada</td><td>.64(.35, 1.8)</td><td>.64(.34, 2.2)</td><td>.72</td><td>.77</td></tr><tr><td>Denmark</td><td>.92(.51, 2.6)</td><td>.97(.51, 3.3)</td><td>1.00</td><td>1.09</td></tr><tr><td>France</td><td>1.57(.86, 4.4)</td><td>1.55(.82, 4.9)</td><td>1.78</td><td>1.84</td></tr><tr><td>Italy</td><td>1.60(.88, 4.5)</td><td>1.80(.96, 6.1)</td><td>1.75</td><td>2.02</td></tr><tr><td>Norway</td><td>1.21(.67, 3.4)</td><td>1.39(.74, 4.7)</td><td>1.24</td><td>1.39</td></tr><tr><td>Sweden</td><td>.90(.50, 2.5)</td><td>.89(.47, 3.0)</td><td>.99</td><td>.97</td></tr><tr><td>United Kingdom</td><td>.77(.43, 2.2)</td><td>.85(.45, 2.9)</td><td>.94</td><td>1.03</td></tr><tr><td colspan="5">United States:</td></tr><tr><td>GDP</td><td>.48(.27, 1.4)</td><td>.36(.19, 1.2)</td><td>.62</td><td>.51</td></tr><tr><td>GNP</td><td>.49(.27, 1.4)</td><td>.41(.22, 1.4)</td><td>.60</td><td>.53</td></tr></table>
NOTE.-Approximate 90 percent confidence intervals are shown in parentheses
Highly sensitive to the treatment of disasters
- Disasters generally involve substantial recoveries (Nakamura et al., 2010)
TABLE IV Variance Ratios in the Data and the Model  $(\mathrm{k} = 15)$
<table><tr><td></td><td colspan="4">Consumption Growth</td><td colspan="4">Realized Vol. of Cons. Growth</td></tr><tr><td></td><td colspan="2">Data</td><td colspan="2">Full Model</td><td colspan="2">Data</td><td colspan="2">Full Model</td></tr><tr><td></td><td>Incl.Dis.</td><td>Excl.Dis.</td><td>Med.</td><td>[5\%, 95\%]</td><td>Incl.Dis.</td><td>Excl.Dis.</td><td>Med.</td><td>[5\%, 95\%]</td></tr><tr><td>France</td><td>1.49</td><td>3.33</td><td>2.56</td><td>[1.00, 5.33]</td><td>4.60</td><td>2.26</td><td>2.40</td><td>[1.04, 4.39]</td></tr><tr><td>UK</td><td>1.56</td><td>2.87</td><td>3.84</td><td>[1.78, 7.32]</td><td>1.60</td><td>1.26</td><td>1.22</td><td>[0.55, 2.57]</td></tr><tr><td>US</td><td>1.08</td><td>1.29</td><td>1.69</td><td>[0.75, 3.65]</td><td>4.70</td><td>1.80</td><td>1.87</td><td>[0.76, 3.96]</td></tr><tr><td>Average</td><td>1.11</td><td>2.28</td><td>2.60</td><td>[1.06, 5.29]</td><td>3.48</td><td>2.17</td><td>1.82</td><td>[0.79, 3.56]</td></tr><tr><td>Median</td><td>0.87</td><td>1.62</td><td>2.69</td><td>[1.02, 5.47]</td><td>3.16</td><td>2.14</td><td>1.72</td><td>[0.66, 3.62]</td></tr></table>
Source: Outtakes from Nakamura, Steinsson, and Sergeyev (2017)
- How robust is the evidence that macroeconomic time series have a random walk?
- Perhaps one or two "structural breaks" account for apparent non-stationarity
- Perron argues that GDP is stationary once one accounts for:
- Great Crash of 1929: Negative level shift
Oil Price Shock of 1973: Negative trend shift
Data:
- Nelson-Plosser 82 annual data on 14 macro series ending in 1970
Quarterly real GDP 1947:1-1986:3
FIGURE 1.—Logarithm of “Nominal Wages.”
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/757a96617b24ff8af9185a890b176e7776ebddbd178421f07ad8686853cfa5c6.jpg)
Note: The broken straight line is a fitted trend (by OLS) of the form  $\tilde{y}_t = \tilde{\mu} +\tilde{\gamma} D U_t + \tilde{\beta} t$  where  $DU_{t} = 0$  if  $t\leqslant 1929$  and  $DU_{t} = 1$  if  $t > 1929$
Source: Perron (1989)
FIGURE 2.-Logarithm of "Postwar Quarterly Real GNP."
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/cfa053812ab28b59e207e4d91ad891f7a4397aa94c8682d0e693bbd558279c5c.jpg)
Note: The broken straight line is a fitted trend (by OLS) of the form:  $\tilde{y}_t = \tilde{\mu} +\tilde{\beta} t + \tilde{\gamma} DT_t^*$  where  $DT_{t}^{*} = 0$  if  $t\leqslant 1973:\mathrm{I}$  and  $DT_{t}^{*} = t - T_{B}$  if  $t > 1973:\mathbf{I} = T_B$
Source: Perron (1989)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/8b2d470f592fe97d1e744afcc7c17e2b9fbb8e6746298b5d90ff51db45ac5e31.jpg)
FIGURE 3.—Logarithm of “Common Stock Prices.”
Note: The broken straight line is a fitted trend (by OLS) of the form  $\tilde{y}_t = \tilde{\mu} +\tilde{\gamma}_1DU_t + \tilde{\beta} t + \tilde{\gamma}_2DT_t$  where  $DU_{t} = DT_{t} = 0$  if  $t\leqslant 1929$  and  $DU_{t} = 1$ $DT_{t} = t$  if  $t > 1929$
Source: Perron (1989)
TABLEI
REGRESSION ANALYSIS FOR THE WAGES, QUARTERLY GNP, AND COMMON STOCK PRICE SERIES
<table><tr><td colspan="9">Regression: yt=μ+βt+αyt-1+Σt-1kctΔyt-i+εt</td></tr><tr><td>Series/Period</td><td>k</td><td>μ</td><td>tμ</td><td>β</td><td>tβ</td><td>α</td><td>tα</td><td>S(ε)</td></tr><tr><td colspan="9">(a) Wages</td></tr><tr><td>1900-1970a</td><td>2</td><td>0.566</td><td>2.30</td><td>0.004</td><td>2.30</td><td>0.910</td><td>-2.09</td><td>0.060</td></tr><tr><td>1900-1929</td><td>7</td><td>4.299</td><td>2.84</td><td>0.037</td><td>2.73</td><td>0.304</td><td>-2.82</td><td>0.0803</td></tr><tr><td>1930-1970</td><td>8</td><td>1.632</td><td>3.60</td><td>0.012</td><td>2.64</td><td>0.735</td><td>-3.19</td><td>0.0269</td></tr><tr><td colspan="9">(b) Common stock prices</td></tr><tr><td>1871-1970a</td><td>2</td><td>0.481</td><td>2.02</td><td>0.003</td><td>2.37</td><td>0.913</td><td>-2.05</td><td>0.158</td></tr><tr><td>1871-1929</td><td>3</td><td>0.3468</td><td>2.13</td><td>0.0063</td><td>2.70</td><td>0.732</td><td>-2.29</td><td>0.1209</td></tr><tr><td>1930-1970</td><td>4</td><td>-0.5312</td><td>-1.64</td><td>0.0166</td><td>1.96</td><td>0.788</td><td>-1.89</td><td>0.1376</td></tr><tr><td colspan="9">(c) Quarterly real GNP</td></tr><tr><td>1947:I-1986:III</td><td>2</td><td>0.386</td><td>2.90</td><td>0.0004</td><td>2.71</td><td>0.946</td><td>-2.85</td><td>0.010</td></tr><tr><td>1947:I-1973:I</td><td>2</td><td>0.637</td><td>3.04</td><td>0.0008</td><td>2.99</td><td>0.910</td><td>-3.02</td><td>0.0099</td></tr><tr><td>1973:II-1986:III</td><td>1</td><td>0.883</td><td>2.23</td><td>0.0008</td><td>2.27</td><td>0.878</td><td>-2.23</td><td>0.0102</td></tr></table>
$^{\mathrm{a}}$ Results taken from Nelson and Plosser (1982, Table 5).
Source: Perron (1989). Dickey-Fuller  $2.5\%$  critical value for  $\mathsf{N} = 100$ , with constant and time trend is -3.7. Corresponding  $5\%$  critical value is -3.4.
- Perron simulates 10,000 replications of a series  $y_{t}$  of length 100
"Crash" hypothesis:
$$ y _ {t} = \mu_ {1} + \left(\mu_ {2} - \mu_ {1}\right) D U _ {t} + \beta t + e _ {t}
$$ where  $DU_{t} = 1$  if  $t > 50$ ,  $\mu_1 = 0$ ,  $\beta = 1$ ,  $e_t \sim \mathsf{N}(0,1)$
- "Changing Growth" hypothesis:
$$ y _ {t} = \mu + \beta_ {1} t + (\beta_ {2} - \beta_ {1}) D T _ {t} ^ {*} + e _ {t}
$$ where  $DT_{t}^{*} = t - 50$  if  $t > 50$ ,  $\mu = 0$ ,  $\beta_{1} = 1$ ,  $\mathbf{e}_{t}\sim \mathsf{N}(0,1)$
Estimates misspecified model:
$$
\mathcal {Y} _ {t} = \tilde {\mu} + \tilde {\beta} t + \tilde {\alpha} \mathcal {Y} _ {t - 1} + \tilde {\boldsymbol {e}} _ {t}
$$
- True  $\alpha = 0$ . But breaks look like a unit root.
# TABLE III
# MEAN AND VARIANCE OF  $\tilde{\alpha}$
<table><tr><td colspan="6">(a) Crash Simulations, μ1=0, β=1</td></tr><tr><td></td><td>μ2=0</td><td>μ2=-2</td><td>μ2=-5</td><td>μ2=-10</td><td>μ2=-25</td></tr><tr><td>Mean</td><td>-0.019</td><td>0.172</td><td>0.558</td><td>0.795</td><td>0.899</td></tr><tr><td>Variance</td><td>0.00986</td><td>0.01090</td><td>0.00471</td><td>0.00089</td><td>0.00009</td></tr><tr><td colspan="6">(b) Breaking Trend Simulations, β1=1, μ=0</td></tr><tr><td></td><td>β2=1.0</td><td>β2=0.9</td><td>β2=0.7</td><td>β2=0.4</td><td>β2=0.0</td></tr><tr><td>Mean</td><td>-0.019</td><td>0.334</td><td>0.825</td><td>0.949</td><td>0.981</td></tr><tr><td>Variance</td><td>0.00986</td><td>0.00938</td><td>0.00094</td><td>0.00009</td><td>0.00001</td></tr></table>
See notes to Figure 4 for case (a) and Figure 5 for case (b).
# TABLE VII
# TESTS FOR A UNIT ROOT
(a) Regression (12), Model A;  $y_{t} = \hat{\mu} + \hat{\beta} D U_{t} + \hat{\beta} t + \hat{d} D(TB)_{t} + \hat{\alpha} y_{t-1} + \sum_{t=1}^{k} \hat{c}_{t} \Delta y_{t-t} + \hat{e}_{t}$
<table><tr><td>TB=1929</td><td>T</td><td>λ</td><td>k</td><td>μ</td><td>t̂a</td><td>θ</td><td>tβ</td><td>β</td><td>tβ̂</td><td>d̂</td><td>t,d̂</td><td>α̂</td><td>tα̂</td><td>S(ˆ)</td></tr><tr><td>Real GNP</td><td>62</td><td>0.33</td><td>8</td><td>3.441</td><td>5.07</td><td>-0.189</td><td>-4.28</td><td>0.0267</td><td>5.05</td><td>-0.018</td><td>-0.30</td><td>0.282</td><td>-5.03a</td><td>0.0509</td></tr><tr><td>Nominal GNP</td><td>62</td><td>0.33</td><td>8</td><td>5.692</td><td>5.44</td><td>-0.360</td><td>-4.77</td><td>0.0359</td><td>5.44</td><td>0.100</td><td>1.09</td><td>0.471</td><td>-5.42a</td><td>0.0694</td></tr><tr><td>Real per capita GNP</td><td>62</td><td>0.33</td><td>7</td><td>3.325</td><td>4.11</td><td>-0.102</td><td>-2.76</td><td>0.0111</td><td>4.00</td><td>-0.070</td><td>-1.09</td><td>0.531</td><td>-4.09b</td><td>0.0555</td></tr><tr><td>Industrial production</td><td>111</td><td>0.63</td><td>8</td><td>0.120</td><td>4.37</td><td>-0.298</td><td>-4.58</td><td>0.0323</td><td>5.42</td><td>-0.095</td><td>-0.99</td><td>0.322</td><td>-5.47a</td><td>0.0875</td></tr><tr><td>Employment</td><td>81</td><td>0.49</td><td>7</td><td>3.402</td><td>4.54</td><td>-0.046</td><td>-2.65</td><td>0.0057</td><td>4.26</td><td>-0.025</td><td>-0.77</td><td>0.667</td><td>-4.51a</td><td>0.0295</td></tr><tr><td>GNP deflator</td><td>82</td><td>0.49</td><td>5</td><td>0.669</td><td>4.09</td><td>-0.098</td><td>-3.16</td><td>0.0070</td><td>4.01</td><td>0.026</td><td>0.53</td><td>0.776</td><td>-4.04b</td><td>0.0438</td></tr><tr><td>Consumer prices</td><td>111</td><td>0.63</td><td>2</td><td>0.065</td><td>1.12</td><td>-0.004</td><td>-0.21</td><td>0.0005</td><td>1.75</td><td>-0.036</td><td>-0.79</td><td>0.978</td><td>-1.28</td><td>0.0445</td></tr><tr><td>Wages</td><td>71</td><td>0.41</td><td>7</td><td>2.38</td><td>5.45</td><td>-0.190</td><td>-4.32</td><td>0.0197</td><td>5.37</td><td>0.085</td><td>1.36</td><td>0.619</td><td>-5.41a</td><td>0.0532</td></tr><tr><td>Money stock</td><td>82</td><td>0.49</td><td>6</td><td>0.301</td><td>4.72</td><td>-0.071</td><td>-2.59</td><td>0.0121</td><td>4.18</td><td>0.033</td><td>0.68</td><td>0.812</td><td>-4.29b</td><td>0.0440</td></tr><tr><td>Velocity</td><td>102</td><td>0.59</td><td>0</td><td>0.050</td><td>0.932</td><td>-0.005</td><td>-0.20</td><td>-0.0002</td><td>-0.35</td><td>-0.136</td><td>-2.01</td><td>0.941</td><td>-1.66</td><td>0.0663</td></tr><tr><td>Interest rate</td><td>71</td><td>0.41</td><td>2</td><td>-0.018</td><td>-0.088</td><td>-0.343</td><td>-2.06</td><td>0.0105</td><td>2.64</td><td>0.197</td><td>0.64</td><td>0.976</td><td>-0.45</td><td>0.2787</td></tr></table>
(b) Regression (14), Model C;  $y_{t} = \hat{\mu} + \hat{\theta} D U_{t} + \hat{\beta}_{t} + \hat{\gamma} D T_{t} + \hat{d} D(TB)_{t} + \hat{\alpha} y_{t-1} + \sum_{k=1}^{t} \hat{c}_{t} \Delta y_{t-t} + \hat{e}_{t}$
<table><tr><td> {T}_{B} = {1929} </td><td> T\lambda </td><td> k </td><td> \widehat{\mu } </td><td> {t}_{\widehat{\mu }} </td><td> \widehat{\theta } </td><td> {t}_{\theta } </td><td> \widehat{\beta } </td><td> {t}_{\beta } </td><td> \widehat{\gamma } </td><td> {t}_{\widehat{\gamma }} </td><td> \widehat{d} </td><td> {t}_{\widehat{d}} </td><td> \widehat{\alpha } </td><td> {t}_{\widehat{\alpha }} </td><td> S\left( \widehat{\varepsilon }\right) </td><td></td></tr><tr><td>Common stock prices</td><td>100</td><td>0.59</td><td>1</td><td>0.353</td><td>4.09</td><td>-1.051</td><td>-4.29</td><td>0.0070</td><td>4.43</td><td>0.0139</td><td>3.98</td><td>0.128</td><td>0.76</td><td>0.718</td><td> - {4.87}^{\mathrm{b}} </td><td>0.1402</td></tr><tr><td>Real wages</td><td>71</td><td>0.41</td><td>8</td><td>2.115</td><td>4.33</td><td>-0.190</td><td>-3.71</td><td>0.0107</td><td>3.79</td><td>0.0066</td><td>3.33</td><td>0.031</td><td>0.78</td><td>0.298</td><td> - {4.28}^{\mathrm{c}} </td><td>0.0330</td></tr></table>
(c) Regression (10), Model B;  $y_{t} = \tilde{\mu} + \tilde{\beta} t + \tilde{\gamma} DT_{t}^{*} + \tilde{y}_{t}; \tilde{y}_{t} = \tilde{\alpha}\tilde{y}_{t-1} + \sum_{t=1}^{k}\tilde{c}_{t}\Delta\tilde{y}_{t-t} + \tilde{e}_{t}$
<table><tr><td> {T}_{b} = {1973} : 1 </td><td> T </td><td> \lambda </td><td> k </td><td> \bar{\mu } </td><td> {t}_{\bar{\mu }} </td><td> \widetilde{\beta } </td><td> {t}_{\widetilde{\mu }} </td><td> \widetilde{\gamma } </td><td> {t}_{\widetilde{\gamma }} </td><td> \widetilde{\alpha } </td><td> {t}_{\widetilde{\alpha }} </td><td> S\left( \widetilde{e}\right) </td></tr><tr><td>Quarterly real GNP</td><td>159</td><td>0.66</td><td>10</td><td>6.977</td><td>1160.51</td><td>0.0087</td><td>97.73</td><td>-0.0031</td><td>-12.06</td><td>0.86</td><td> - {3.98}^{c} </td><td>0.0097</td></tr></table>
NOTE: a, b, and c denote statistical significance at the  $1\%$ ,  $2.5\%$ , and  $5\%$  level respectively.
- Perron argues that after allowing for Great Crash of 1929 and 1973 Growth Slowdown, many macro series are stationary (i.e., he rejects the null of a unit root)
- Perron argues that after allowing for Great Crash of 1929 and 1973 Growth Slowdown, many macro series are stationary (i.e., he rejects the null of a unit root)
- But he chooses the break dates ex post
- Perhaps it is normal for a unit root of that length to look like it has a break and is otherwise stationary
- Main lesson: Hard to distinguish trends from unit roots in the presence of breaks.
- What is a break? Infrequent unit root shock.
- Recent literature has moved beyond trend vs. difference stationary debate
- Three types of risks have been emphasized:
Rare disasters (Ritz, 1988; Barro, 2006)
Growth rate shocks (Bansal and Yaron, 2004)
Stochastic volatility (Bansal and Yaron, 2004)
- Same setup as Mehra-Prescott, except
$$
\log C _ {t + 1} = \mu + \log C _ {t} + u _ {t + 1} + v _ {t + 1}
$$
$\mathcal{U}_{t + 1}\sim \mathsf{N}(0,\sigma^2)$
$V_{t + 1}$  reflects disasters:
- Probability  $e^{-p}$ :  $v_{t+1} = 0$
- Probability  $1 - {e}^{-p} : {v}_{t + 1} = \log \left( {1 - b}\right)$
Key parameters:  $p$  and  $b$
Measure declines in per capita GDP (Data: Maddison, 2003)
- Disaster: Cumulative drop of  $15\%$  or greater
$p$  frequency of such drops:  $1.7\%$
$b$  peak-to-trough decline (e.g. WWII 1939-1945)
E  $(\mathbf{b}) = 0.29$  (mean size of disasters)
- Huge amount of heterogeneity in disaster size
Panel A: Contractions in Table I
FIGURE I
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/70a34c96a683cb92daf6bb0a8d0f27487acbbfe5ac90321dc0b50e9a7c611500.jpg)
Panel B: Contractions in Table I adjusted for trend growth
Frequency Distribution of Economic Disasters
- What is the impact of heterogeneity in disaster size?
Why focus on disasters and ignore bonanzas?
- Representative consumer
Power utility
Assets to price:
Unlevered consumption claim
One period, bond (occasional default during disasters)
Empirical moments:
Equity Premium: Stocks: 7.1\%, Bills: -0.1\%
- Leverage ratio for equity of 1.5
Target for unlevered equity:  $7.2\% / 1.5 = 4.8\%$
TABLE V
CALIBRATED MODEL FOR RATES OF RETURN
<table><tr><td rowspan="2"></td><td rowspan="2">(1) No disasters</td><td rowspan="2">(2) Baseline</td><td colspan="2">(3) Parameters</td><td rowspan="2">(5) Low q</td><td rowspan="2">(6) Low γ</td><td rowspan="2">(7) Low ρ</td></tr><tr><td>Low θ</td><td>High p</td></tr><tr><td>θ (coeff. of relative risk aversion)</td><td>4</td><td>4</td><td>3</td><td>4</td><td>4</td><td>4</td><td>4</td></tr><tr><td>σ (s.d. of growth rate, no disasters)</td><td>0.02</td><td>0.02</td><td>0.02</td><td>0.02</td><td>0.02</td><td>0.02</td><td>0.02</td></tr><tr><td>ρ (rate of time preference)</td><td>0.03</td><td>0.03</td><td>0.03</td><td>0.03</td><td>0.03</td><td>0.03</td><td>0.02</td></tr><tr><td>γ (growth rate, deterministic part)</td><td>0.025</td><td>0.025</td><td>0.025</td><td>0.025</td><td>0.025</td><td>0.020</td><td>0.025</td></tr><tr><td>p (disaster probability)</td><td>0</td><td>0.017</td><td>0.017</td><td>0.025</td><td>0.017</td><td>0.017</td><td>0.017</td></tr><tr><td>q (bill default probability in disaster)</td><td>0</td><td>0.4</td><td>0.4</td><td>0.4</td><td>0.3</td><td>0.4</td><td>0.4</td></tr><tr><td></td><td></td><td></td><td colspan="2">Variables</td><td></td><td></td><td></td></tr><tr><td>Expected equity rate</td><td>0.128</td><td>0.071</td><td>0.076</td><td>0.044</td><td>0.071</td><td>0.051</td><td>0.061</td></tr><tr><td>Expected bill rate</td><td>0.127</td><td>0.035</td><td>0.061</td><td>-0.007</td><td>0.029</td><td>0.015</td><td>0.025</td></tr><tr><td>Equity premium</td><td>0.0016</td><td>0.036</td><td>0.016</td><td>0.052</td><td>0.042</td><td>0.036</td><td>0.036</td></tr></table>
Source: Barro (2006)
- Barro (2006): Simple disaster model can match
A high equity premium
A low risk-free rate
- Barro (2009): What does this same model imply about:
- Welfare costs of business cycles?
- Welfare costs of disasters?
TABLE 3-EFFECTS OF PREFERENCE PARAMETERS ON RATES OF RETURN AND WELFARE COSTS
<table><tr><td rowspan="2">γ</td><td rowspan="2">θ</td><td rowspan="2">ρ</td><td rowspan="2">ρ*</td><td rowspan="2">r^e</td><td rowspan="2">rf</td><td rowspan="2">V</td><td colspan="2">Welfare effects (percent)</td></tr><tr><td>σ = 0</td><td>p = 0</td></tr><tr><td>4</td><td>0.25</td><td>0.054</td><td>0.027</td><td>0.069</td><td>0.010</td><td>20.7</td><td>1.65</td><td>24.7</td></tr><tr><td>4</td><td>0.50</td><td>0.052</td><td>0.027</td><td>0.069</td><td>0.010</td><td>20.7</td><td>1.65</td><td>24.0</td></tr><tr><td>4</td><td>1</td><td>0.048</td><td>0.027</td><td>0.069</td><td>0.010</td><td>20.7</td><td>1.64</td><td>22.6</td></tr><tr><td>4</td><td>4</td><td>0.027</td><td>0.027</td><td>0.069</td><td>0.010</td><td>20.7</td><td>1.60</td><td>17.3</td></tr><tr><td>3.5</td><td>0.25</td><td>0.062</td><td>0.027</td><td>0.074</td><td>0.035</td><td>18.7</td><td>1.31</td><td>16.5</td></tr><tr><td>3.5</td><td>0.50</td><td>0.059</td><td>0.027</td><td>0.074</td><td>0.035</td><td>18.7</td><td>1.30</td><td>16.1</td></tr><tr><td>3.5</td><td>1</td><td>0.054</td><td>0.027</td><td>0.074</td><td>0.035</td><td>18.7</td><td>1.30</td><td>15.5</td></tr><tr><td>3.5</td><td>4</td><td>0.022</td><td>0.027</td><td>0.074</td><td>0.035</td><td>18.7</td><td>1.27</td><td>12.7</td></tr><tr><td>3</td><td>0.25</td><td>0.063</td><td>0.027</td><td>0.074</td><td>0.048</td><td>18.7</td><td>1.12</td><td>12.0</td></tr><tr><td>3</td><td>0.50</td><td>0.060</td><td>0.027</td><td>0.074</td><td>0.048</td><td>18.7</td><td>1.12</td><td>11.8</td></tr><tr><td>3</td><td>1</td><td>0.053</td><td>0.027</td><td>0.074</td><td>0.048</td><td>18.7</td><td>1.12</td><td>11.5</td></tr><tr><td>3</td><td>4</td><td>0.014</td><td>0.027</td><td>0.074</td><td>0.048</td><td>18.7</td><td>1.10</td><td>9.9</td></tr><tr><td>1</td><td>0.25</td><td>0.041</td><td>0.027</td><td>0.047</td><td>0.044</td><td>37.1</td><td>0.74</td><td>4.7</td></tr><tr><td>1</td><td>0.50</td><td>0.036</td><td>0.027</td><td>0.047</td><td>0.044</td><td>37.1</td><td>0.74</td><td>4.6</td></tr><tr><td>1</td><td>1</td><td>0.027</td><td>0.027</td><td>0.047</td><td>0.044</td><td>37.1</td><td>0.74</td><td>4.6</td></tr><tr><td>1</td><td>4</td><td>-0.030</td><td>0.027</td><td>0.047</td><td>0.044</td><td>37.1</td><td>0.73</td><td>4.3</td></tr></table>
Notes: The baseline results are in bold,  $\gamma$  is the coefficient of relative risk aversion,  $\theta$  is the reciprocal of the IES in the formula for utility in equation (9),  $\rho$  is the rate of time preference, and  $\rho^{*}$  is the effective rate of time preference, given in equation (12);  $(\rho = \rho^{*})$  holds when  $\gamma = \theta$ . The formulas for the expected rate of return on equity,  $r^e$ , the risk-free rate,  $r^f$ , and the price-dividend ratio,  $V_{\gamma}$  are given in equations (6), (7), and (5), respectively, after replacing  $\rho$  by  $\rho^{*}$ . The value of  $\rho^{*}$  is set at 0.027 to generate  $r^f = 0.010$  with the baseline parameters. The value for  $\rho$  (0.052 in the baseline specification) is then varied in each case to maintain  $\rho^{*} = 0.027$  (in equation (12)). Since  $\rho^{*}$  is held constant, the values for  $r^e$ ,  $r^f$ , and  $V$  depend on  $\gamma$  but not on  $\theta$ . Each welfare effect gives the percentage reduction in initial output,  $1 - (Y_t)^* / Y_t$ , that maintains attained utility while setting to zero either the standard deviation,  $\sigma$ , of normal economic fluctuations or the disaster probability,  $p$ . The effects are for a given expected growth rate,  $g^{*}$ , given in equation (2). The values for  $1 - (Y_t)^* / Y_t$  come from equation (23).
Source: Barro (2009)
Barro's model:
$$
\log C _ {t + 1} = \mu + \log C _ {t} + u _ {t + 1} + v _ {t + 1}
$$
$u_{t + 1}\sim \mathsf{N}(0,\sigma^2)$
$V_{t + 1}$
- Probability  $e^{-p}$ :  $v_{t+1} = 0$
- Probability  $1 - e^{-p}$ :  $v_{t+1} = \log(1 - b)$
Is this a realistic model of disasters?
- All disasters are completely permanent
Disasters occur instantaneously
- Timing of disasters uncorrelated across countries
- Informal estimation procedure
Consumption:
$$
\mathcal {C} _ {i, t} = x _ {i, t} + z _ {i, t} + \epsilon_ {i, t}
$$
Potential Consumption:
$$
\Delta x _ {i, t} = \mu_ {i, t} + \eta_ {i, t} + I _ {i, t} \theta_ {i, t}
$$
The Disaster Gap
$$ z _ {i, t} = \rho_ {z} z _ {i, t - 1} - I _ {i, t} \theta_ {i, t} + I _ {i, t} \phi_ {i, t} + \nu_ {i, t}
$$
$$
\begin{array}{l} \epsilon_ {i, t} \sim \mathsf {N} (0, \sigma_ {\epsilon , i} ^ {2}) \quad \eta_ {i, t} \sim \mathsf {N} (0, \sigma_ {\eta , i} ^ {2}) \quad \nu_ {i, t} \sim \mathsf {N} (0, \sigma_ {\nu , i} ^ {2}) \\ \theta_ {i, t} \sim \mathsf {N} (\theta , \sigma_ {\theta} ^ {2}) \quad \phi_ {i, t} \sim \operatorname {t r u n c} \mathsf {N} (\phi , \sigma_ {\phi} ^ {2}, [ - \infty , 0 ]) \\ \end{array}
$$
# Two disaster shocks:
1. $\phi_{i,t}$ : Short run effect but no long run effect
2. $\theta_{i,t}$ : Long run effect but no short run effect
# Examples:
- Transitory effects  $(\phi_{i,t})$
- Destruction of capital, military spending crowds out consumption, financial stress
- Permanent effects  $(\theta_{i,t})$
- Loss of time spent on R&D, change in institutions
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/8187ab4867c8e13f7e74f7ba5e414766e87e92175696d7dc247e3e1c9177984a.jpg)
$\theta = 0, \phi = -0.1$
$$
\theta = - 0. 1, \phi = - 0. 1
$$
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/3d65a7eba64e89011b469dee957a46be8bbb738de4fbad365392fb6dc865a3dd.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/610988881ba0ee1c5269cd71ea243defe23ca8bfcf6211ae9fa956161ec6d380.jpg)
$\theta = -0.1, \phi = -0.2$
Our model is difficult to estimate by ML
- Many unobserved state variables
- Relatively simple to estimate by Bayesian MCMC estimation
- Allow for breaks in:
$\sigma_{\eta ,i},\sigma_{\epsilon ,i}$  in 1946. (change in data quality)
$\mu_{i}$  in 1946 and 1973. (captures high post-WWII growth)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/4fd4e56e930ae8abe929d1c63b98f5765e4fb501779941ba6b45d6955f32c0a0.jpg)
Response of log C
Source: Nakamura, Steinsson, Barro, and Ursua (2013)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/fca0504e232b2ff11478bac607a6cd5aa53a7fcd6723680e4618179e62ee8fdd.jpg)
Response of log C
Source: Nakamura, Steinsson, Barro, and Ursua (2013)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/1c6ac0b3c7e7faec665bf413b6bb8aa5ea41f559322ae74b347c7edd3fd379f5.jpg)
World Disaster Probability
Source: Nakamura, Steinsson, Barro, and Ursua (2013)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/00f6d8fab2399cfaa6c4d21c69f536ff96a48e8afabf07f4dd8965b6956bc120.jpg)
France
Korea
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/84000103fc4c108393520dc04a4aad77bfc433a64f0899ef3fd53943ca07b168.jpg)
Source: Nakamura, Steinsson, Barro, and Ursua (2013)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/656db4157d240947c00c0dc8e27eb4b224b3980b92b009ac3aab448d76354ee0.jpg)
Chile
United States
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/58b3fc086edd251042c3ffaee1cf7d43c9f1a292d05dd238c1e43ec414631556.jpg)
Source: Nakamura, Steinsson, Barro, and Ursua (2013)
TABLE Asset Prices in Baseline Model with EZW Preferences
<table><tr><td>CRRA</td><td>4.5</td><td>6.5</td><td>8.5</td></tr><tr><td>IES</td><td>2.0</td><td>2.0</td><td>2.0</td></tr><tr><td>Log Expected Return</td><td></td><td></td><td></td></tr><tr><td>Equity</td><td>0.050</td><td>0.058</td><td>0.066</td></tr><tr><td>Bond</td><td>0.032</td><td>0.009</td><td>-0.023</td></tr><tr><td>Equity Premium</td><td>0.018</td><td>0.048</td><td>0.088</td></tr><tr><td>Log Expected Return (Cond. on No Disasters)</td><td></td><td></td><td></td></tr><tr><td>Equity</td><td>0.051</td><td>0.058</td><td>0.066</td></tr><tr><td>Bond</td><td>0.034</td><td>0.010</td><td>-0.025</td></tr><tr><td>Equity Premium</td><td>0.017</td><td>0.048</td><td>0.091</td></tr></table>
Source: Nakamura, Steinsson, Barro, and Ursua (2013). Equity is unleveraged.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/c367a25e2d96876305ab25808c78f75c331f7b33e9443756f981e1053e183bd6.jpg)
Source: Nakamura, Steinsson, Barro, and Ursua (2013)
TABLE
Asset Prices with CRRA=4 and IES=1/4
<table><tr><td></td><td>Baseline</td><td>Barro (2006)</td></tr><tr><td colspan="3">Log Expected Return</td></tr><tr><td>Equity</td><td>0.112</td><td>0.071</td></tr><tr><td>Bond</td><td>0.103</td><td>0.035</td></tr><tr><td>Equity Premium</td><td>0.009</td><td>0.036</td></tr><tr><td colspan="3">Log Expected Return (Cond. on No Disasters)</td></tr><tr><td>Equity</td><td>0.097</td><td>0.076</td></tr><tr><td>Bond</td><td>0.106</td><td>0.037</td></tr><tr><td>Equity Premium</td><td>-0.009</td><td>0.039</td></tr></table>
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/66dc05850b8ec5082da6bc2352b9ff69f08b02a35c7aa7a4de5df29ec70582ec.jpg)
Source: Nakamura, Steinsson, Barro, and Ursua (2013)
EZW utility: Stock market crash at onset of disaster
Assuming IES>1
Power utility: Stock market boom!
Why?
EZW utility: Stock market crash at onset of disaster
Assuming IES>1
Power utility: Stock market boom!
Why?
- At onset of disaster, expected growth is negative, uncertainty increases
- Leads to high savings in a model with low IES (Power Utility)
- Contrast vs. Barro (2006) with permanent shocks
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/0dbe37dc475c089a0039c5cd199dd5c17f887663dbf6286a910970b2812fc03c.jpg)
Source: Nakamura, Steinsson, Barro, and Ursua (2013)
# How to Model Consumption Dynamics?
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/8f5ee06fce7c8d3a1c4a21d53d2691ffac3411373d46a3fe4be85fc2bbde372f.jpg)
Figure: Log Consumption for France
$$
\begin{array}{l} \Delta c _ {t + 1} = \mu + x _ {t} + \chi \sigma_ {t} \eta_ {t + 1}, \\ x _ {t + 1} = \rho x _ {t} + \sigma_ {t} \epsilon_ {t + 1}, \\ \sigma_ {t + 1} ^ {2} = \sigma^ {2} + \gamma (\sigma_ {t} ^ {2} - \sigma^ {2}) + \sigma_ {\omega} \omega_ {t + 1}, \\ \end{array}
$$
Idea:
$x_{t}$  and  $\sigma_t^2$  small but persistent
- Small enough that they are hard to observe (can't be rejected)
Main Result:
- Even small "long run risks" makes a big difference for asset pricing
- Seems intuitive that long-run risks to growth and uncertainty would raise equity premium
- But does this work in benchmark model?
I.e.: Are long run risks priced?
$$
\begin{array}{l} \Delta c _ {t + 1} = \mu + x _ {t} + \chi \sigma_ {t} \eta_ {t + 1}, \\ \chi_ {t + 1} = \rho \chi_ {t} + \sigma_ {t} \epsilon_ {t + 1}, \\ \sigma_ {t + 1} ^ {2} = \sigma^ {2} + \gamma (\sigma_ {t} ^ {2} - \sigma^ {2}) + \sigma_ {\omega} \omega_ {t + 1}, \\ \end{array}
$$
- Notice that  $\epsilon_{t+1}$  and  $\omega_{t+1}$  affect:
$R_{e,t + 1}$
$\Delta c_{t + j}$  for  $j > 1$
- But not  $\Delta c_{t+1}$
- With power utility, long run risks:
- Don't create correlation between returns and stochastic discount factor
- Have no effect on asset prices
- Timing issue implies that EZW preferences are crucial in LRR model
EZW preferences with:
CRRA:  $\gamma = 10$
IES:  $\psi = 1.5$
Two assets:
One period, risk-free bond
Equity" with dividend growth rate:
$$
\Delta d _ {t + 1} = \mu + \phi x _ {t} + \varphi_ {d} \sigma_ {t} u _ {t}
$$
Leverage:  $\phi = 3$
Dividend volatility:  $\varphi_{d} = 4.5$
$$
\begin{array}{l} \Delta c _ {t + 1} = \mu + x _ {t} + \chi \sigma_ {t} \eta_ {t + 1}, \\ x _ {t + 1} = \rho x _ {t} + \sigma_ {t} \epsilon_ {t + 1}, \\ \sigma_ {t + 1} ^ {2} = \sigma^ {2} + \gamma (\sigma_ {t} ^ {2} - \sigma^ {2}) + \sigma_ {\omega} \omega_ {t + 1}, \\ \end{array}
$$
- Calibrate long-run risks parameters:
$$
\mu = 0. 0 0 1 5, \quad \rho = 0. 9 7 9, \quad \sigma = 0. 0 7 8, \quad \varphi_ {e} = 0. 0 4 4
$$
No formal macro calibration targets
- Parameters largely viewed a free parameters
- Chosen largely to fit asset prices
$$
\begin{array}{l} {\Delta c _ {t + 1}} = {\mu + x _ {t} + \chi \sigma_ {t} \eta_ {t + 1},} \\ x _ {t + 1} = \rho x _ {t} + \sigma_ {t} \epsilon_ {t + 1}, \\ \sigma_ {t + 1} ^ {2} = \sigma^ {2} + \gamma (\sigma_ {t} ^ {2} - \sigma^ {2}) + \sigma_ {\omega} \omega_ {t + 1}, \\ \end{array}
$$
- Calibrate long-run risks parameters:
$$
\mu = 0. 0 0 1 5, \quad \rho = 0. 9 7 9, \quad \sigma = 0. 0 7 8, \quad \varphi_ {e} = 0. 0 4 4
$$
No formal macro calibration targets
- Parameters largely viewed a free parameters
- Chosen largely to fit asset prices
Why is this viable?
- Long-run risks small enough they don't seriously affect model's fit to data on macro aggregates
<table><tr><td rowspan="2">Variable</td><td colspan="2">Data</td><td colspan="5">Model</td></tr><tr><td>Estimate</td><td>SE</td><td>Mean</td><td>95\%</td><td>5\%</td><td>p-Val</td><td>Pop</td></tr><tr><td>σ(g)</td><td>2.93</td><td>(0.69)</td><td>2.72</td><td>3.80</td><td>2.01</td><td>0.37</td><td>2.88</td></tr><tr><td>AC(1)</td><td>0.49</td><td>(0.14)</td><td>0.48</td><td>0.65</td><td>0.21</td><td>0.53</td><td>0.53</td></tr><tr><td>AC(2)</td><td>0.15</td><td>(0.22)</td><td>0.23</td><td>0.50</td><td>-0.17</td><td>0.70</td><td>0.27</td></tr><tr><td>AC(5)</td><td>-0.08</td><td>(0.10)</td><td>0.13</td><td>0.46</td><td>-0.13</td><td>0.93</td><td>0.09</td></tr><tr><td>AC(10)</td><td>0.05</td><td>(0.09)</td><td>0.01</td><td>0.32</td><td>-0.24</td><td>0.80</td><td>0.01</td></tr><tr><td>VR(2)</td><td>1.61</td><td>(0.34)</td><td>1.47</td><td>1.69</td><td>1.22</td><td>0.17</td><td>1.53</td></tr><tr><td>VR(5)</td><td>2.01</td><td>(1.23)</td><td>2.26</td><td>3.78</td><td>0.79</td><td>0.63</td><td>2.36</td></tr><tr><td>VR(10)</td><td>1.57</td><td>(2.07)</td><td>3.00</td><td>6.51</td><td>0.76</td><td>0.77</td><td>2.96</td></tr><tr><td>σ(gd)</td><td>11.49</td><td>(1.98)</td><td>10.96</td><td>15.47</td><td>7.79</td><td>0.43</td><td>11.27</td></tr><tr><td>AC(1)</td><td>0.21</td><td>(0.13)</td><td>0.33</td><td>0.57</td><td>0.09</td><td>0.53</td><td>0.39</td></tr><tr><td>corr(g,gd)</td><td>0.55</td><td>(0.34)</td><td>0.31</td><td>0.60</td><td>-0.03</td><td>0.07</td><td>0.35</td></tr></table>
Source: Bansal and Yaron (2004)
<table><tr><td rowspan="2">Variable</td><td colspan="2">Data</td><td colspan="2">Model</td></tr><tr><td>Estimate</td><td>SE</td><td>γ = 7.5</td><td>γ = 10</td></tr><tr><td colspan="5">Returns</td></tr><tr><td>E(rm - rf)</td><td>6.33</td><td>(2.15)</td><td>4.01</td><td>6.84</td></tr><tr><td>ERf)</td><td>0.86</td><td>(0.42)</td><td>1.44</td><td>0.93</td></tr><tr><td>σ(rm)</td><td>19.42</td><td>(3.07)</td><td>17.81</td><td>18.65</td></tr><tr><td>σ(Rf)</td><td>0.97</td><td>(0.28)</td><td>0.44</td><td>0.57</td></tr><tr><td colspan="5">Price Dividend</td></tr><tr><td>E(exp(p - d))</td><td>26.56</td><td>(2.53)</td><td>25.02</td><td>19.98</td></tr><tr><td>σ(p - d)</td><td>0.29</td><td>(0.04)</td><td>0.18</td><td>0.21</td></tr><tr><td>AC1(p - d)</td><td>0.81</td><td>(0.09)</td><td>0.80</td><td>0.82</td></tr><tr><td>AC2(p - d)</td><td>0.64</td><td>(0.15)</td><td>0.65</td><td>0.67</td></tr></table>
Source: Bansal and Yaron (2004)
- Stochastic discount factor with Epstein-Zin-Weil preferences:
$$
\log M _ {t + 1} = \theta \log \beta - \frac {\theta}{\psi} \Delta c _ {t + 1} + (\theta - 1) R _ {c, t + 1}
$$
- Current marginal utility depends on news about future consumption growth (through  $R_{c,t+1}$ )
- Stochastic discount factor with Epstein-Zin-Weil preferences:
$$
\log M _ {t + 1} = \theta \log \beta - \frac {\theta}{\psi} \Delta c _ {t + 1} + (\theta - 1) R _ {c, t + 1}
$$
- Current marginal utility depends on news about future consumption growth (through  $R_{c,t+1}$ )
- Decrease in future expected growth raise current marginal utility (If IES > 1 and CRRA > 1/IES)
- Stochastic discount factor with Epstein-Zin-Weil preferences:
$$
\log M _ {t + 1} = \theta \log \beta - \frac {\theta}{\psi} \Delta c _ {t + 1} + (\theta - 1) R _ {c, t + 1}
$$
- Current marginal utility depends on news about future consumption growth (through  $R_{c,t+1}$ )
- Decrease in future expected growth raise current marginal utility (If IES > 1 and CRRA > 1/IES)
- Increase in future uncertainty raises current marginal utility (If CRRA > 1 and IES > 1)
- Stochastic discount factor with Epstein-Zin-Weil preferences:
$$
\log M _ {t + 1} = \theta \log \beta - \frac {\theta}{\psi} \Delta c _ {t + 1} + (\theta - 1) R _ {c, t + 1}
$$
- Current marginal utility depends on news about future consumption growth (through  $R_{c,t+1}$ )
Decrease in future expected growth raise current marginal utility (If IES > 1 and CRRA > 1/IES)
- Increase in future uncertainty raises current marginal utility (If CRRA > 1 and IES > 1)
- IES > 1 crucial for LRRs to increase equity premium
Large literature argues stock returns are predictable (Campbell-Shiller, 1988; Fama-French, 1988, Cochrane, 2008, van Binsbergen-Koijen, 2010)
- Idea: High P/D ratio predicts low returns
<table><tr><td rowspan="2">Variable</td><td colspan="3">Panel A: Excess Returns</td></tr><tr><td>Data</td><td>SE</td><td>Model</td></tr><tr><td>B(1)</td><td>-0.08</td><td>(0.07)</td><td>-0.18</td></tr><tr><td>B(3)</td><td>-0.37</td><td>(0.16)</td><td>-0.47</td></tr><tr><td>B(5)</td><td>-0.66</td><td>(0.21)</td><td>-0.66</td></tr><tr><td>R2(1)</td><td>0.02</td><td>(0.04)</td><td>0.05</td></tr><tr><td>R2(3)</td><td>0.19</td><td>(0.13)</td><td>0.10</td></tr><tr><td>R2(5)</td><td>0.37</td><td>(0.15)</td><td>0.16</td></tr></table>
Source: Bansal and Yaron (2004)
P/D ratio is stationary
A decrease in P/D therefore implies:
High returns going forward, or …
Low Dividend growth going forward, or …
Both
Uncertainty shock in LRR model implies:
Stock prices fall (if CRRA > 1 and IES > 1)
No effect on expected dividends
So, expected returns must rise
What about growth rate shocks?
- In LLR model, high growth rate shocks raise P/D and predict future consumption growth
Not in the data
<table><tr><td rowspan="2"></td><td rowspan="2">β data</td><td rowspan="2">t
data</td><td rowspan="2">R² data</td><td colspan="2">R²(50\%)</td><td colspan="2">\%(R²)</td></tr><tr><td>BY</td><td>BKY</td><td>BY</td><td>BKY</td></tr><tr><td colspan="8">∑j=1J(rm,t+j−rf,t+j)=α+β(pt−dt)+εt+j</td></tr><tr><td>1 Y</td><td>-0.093</td><td>-1.803</td><td>0.044</td><td>0.007</td><td>0.011</td><td>0.918</td><td>0.841</td></tr><tr><td>3 Y</td><td>-0.264</td><td>-3.231</td><td>0.170</td><td>0.017</td><td>0.028</td><td>0.980</td><td>0.940</td></tr><tr><td>5 Y</td><td>-0.413</td><td>-3.781</td><td>0.269</td><td>0.025</td><td>0.043</td><td>0.990</td><td>0.956</td></tr><tr><td>4 Q</td><td>-0.119</td><td>-2.625</td><td>0.090</td><td>0.008</td><td>0.012</td><td>0.980</td><td>0.952</td></tr><tr><td>12 Q</td><td>-0.274</td><td>-3.191</td><td>0.187</td><td>0.022</td><td>0.033</td><td>0.970</td><td>0.933</td></tr><tr><td>20 Q</td><td>-0.424</td><td>-3.365</td><td>0.257</td><td>0.033</td><td>0.050</td><td>0.969</td><td>0.926</td></tr><tr><td colspan="8">∑j=1J(Δct+j)=α+β(pt−dt)+εt+j</td></tr><tr><td>1 Y</td><td>0.011</td><td>1.586</td><td>0.060</td><td>0.324</td><td>0.145</td><td>0.006</td><td>0.202</td></tr><tr><td>3 Y</td><td>0.010</td><td>0.588</td><td>0.013</td><td>0.350</td><td>0.109</td><td>0.002</td><td>0.132</td></tr><tr><td>5 Y</td><td>-0.001</td><td>-0.060</td><td>0.000</td><td>0.285</td><td>0.085</td><td>0.001</td><td>0.015</td></tr><tr><td>4 Q</td><td>0.000</td><td>0.140</td><td>0.000</td><td>0.237</td><td>0.063</td><td>0.000</td><td>0.023</td></tr><tr><td>12 Q</td><td>-0.002</td><td>-0.296</td><td>0.001</td><td>0.269</td><td>0.068</td><td>0.003</td><td>0.069</td></tr><tr><td>20 Q</td><td>-0.003</td><td>-0.296</td><td>0.002</td><td>0.213</td><td>0.060</td><td>0.014</td><td>0.089</td></tr></table>
Source: Beeler and Campbell (2012)
Key LRR parameters are macro parameters
- How important are changes in trend growth rates (e.g., productivity slowdown)
- How important are fluctuations in macro volatility? (e.g. Great Moderation)
- However, in LRR literature, key parameters are calibrated or estimated to fit asset pricing data
- Since model has no other way to fit asset pricing data, it concludes that LRR are there
- But are these features really "there" in macro data?
Estimate long-run risks model using only macro data
- Use data on aggregate consumption from 16 countries over 120 years
- Pool data across countries to better estimate key parameters
- Advantage of using macroeconomic data alone:
- Results not driven by need to explain asset prices
- Results provide direct evidence for the mechanism
$$ c _ {i, t + 1} = \tilde {c} _ {i, t + 1} + \sigma_ {i, \nu} \nu_ {i, t + 1} + I _ {i, t + 1} ^ {d} \sigma_ {i, \psi} \psi_ {i, t + 1} ^ {d}
$$
$$
\Delta \tilde {G} _ {i, t + 1} = \mu_ {i} + x _ {i, t} + \xi_ {i} x _ {W, t} + \chi_ {i} \eta_ {i, t + 1},
$$
$$ x _ {i, t + 1} = \rho x _ {i, t} + \epsilon_ {i, t + 1},
$$
$$
\sigma_ {i, t + 1} ^ {2} = \sigma_ {i} ^ {2} + \gamma \left(\sigma_ {i, t} ^ {2} - \sigma_ {i} ^ {2}\right) + \omega_ {i, t + 1},
$$
$$ x _ {W, t + 1} = \rho_ {W} x _ {W, t} + \epsilon_ {W, t + 1},
$$
$$
\sigma_ {W, t + 1} ^ {2} = \sigma_ {W} ^ {2} + \gamma \left(\sigma_ {W, t} ^ {2} - \sigma_ {W} ^ {2}\right) + \omega_ {W, t + 1},
$$
- Volatility of  $\epsilon_{W,t+1}$  is  $\sigma_{W,t}^2$
Volatility of  $\epsilon_{i,t + 1}$  and  $\eta_{i,t + 1}$  is  $\sigma_{i,t}^2 +\sigma_{W,t}^2$
$\mathbf{Corr}(\epsilon_{W,t + 1},\omega_{W,t + 1}) = \lambda_W,\mathbf{Corr}(\epsilon_{i,t + 1},\omega_{i,t + 1}) = \lambda$
- Pooled parameters:  $\rho_W, \rho, \gamma, \sigma_W^2, \sigma_{\omega, W}^2, \sigma_\omega^2, \lambda_W, \lambda$
Country-specific parameters:  $\mu_{i},\xi_{i},\chi_{i},\sigma_{i}^{2}$
Consumer expenditure data from Barro and Ursua (2008)
Focus on 16 developed countries:
Australia, Belgium, Canada, Denmark, Finland, France, Germany, Italy, Netherlands, Norway, Portugal, Spain, Sweden, Switzerland, United Kingdom, United States
Sample period: 1890 - 2009
Unbalanced panel
All countries start before 1914
- Asset prices: Global Financial Data
Total returns on equity and government bills
- Price-dividend ratios on equity
Large and persistent world growth-rate process,
Less persistent country-specific growth-rate process
High volatility correlated with low growth
- Match equity premium with CRRA = 6.5
- Also consistent with high volatility of stock returns, low and stable risk free rate, predictability of stock returns based on P/D, volatility of P/D
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/cd0902c6da5dc45589e417620c2d244ba4df0b2f444b2ace1ae674efdaf9fa96.jpg)
FIGURE II
# The World Growth-Rate Process
The figure plots the posterior mean value of  $\mathbf{x}_{\mathrm{w,t}}$  for each year in our sample.
Source: Nakamura, Sergeyev, Steinsson (2017)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/e005d6395790234602302117b097e936f50262800caca43d2d0a4fb672514f6e.jpg)
FIGURE III
# World Stochastic Volatility
The figure plots the posterior mean value of  $\sigma_{\mathrm{w,t}}$  for each year in our sample.
Source: Nakamura, Sergeyev, Steinsson (2017)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/3d7751e399665e2882c268bd56c0600c6b736c0c53ac3eb6c0b38005754a9948.jpg)
FIGURE IV
Stochastic Volatility for the United States, the United Kingdom and Canada
Source: Nakamura, Sergeyev, Steinsson (2017)
Correlations between Growth-Rate and Uncertainty Shocks
<table><tr><td></td><td>Baseline</td></tr><tr><td rowspan="2">Country-Specific (λ)</td><td>-0.47</td></tr><tr><td>(0.17)</td></tr><tr><td rowspan="2">World (λw)</td><td>-0.42</td></tr><tr><td>(0.24)</td></tr></table>
Source: Nakamura, Sergeyev, Steinsson (2017)
Properties of Consumption Growth
<table><tr><td></td><td colspan="3">Median Country</td></tr><tr><td></td><td>Data</td><td colspan="2">Model</td></tr><tr><td></td><td></td><td>Median</td><td>[2.5\%, 97.5\%]</td></tr><tr><td>AC(1)</td><td>0.13</td><td>-0.01</td><td>[0.17,0.17]</td></tr><tr><td>AC(2)</td><td>0.14</td><td>0.13</td><td>[0.03,0.27]</td></tr><tr><td>AC(3)</td><td>0.04</td><td>0.10</td><td>[0.01,0.25]</td></tr><tr><td>AC(4)</td><td>0.07</td><td>0.07</td><td>[-0.01,0.22]</td></tr><tr><td>AC(5)</td><td>0.00</td><td>0.06</td><td>[-0.02,0.20]</td></tr><tr><td>AC(10)</td><td>0.12</td><td>0.02</td><td>[-0.05,0.13]</td></tr></table>
Source: Nakamura, Sergeyev, Steinsson (2017)
TABLEV Asset Pricing Summary Statistics
<table><tr><td></td><td colspan="2">Data</td><td colspan="2">Model</td></tr><tr><td></td><td>Median</td><td>U.S.</td><td>Median</td><td>U.S.</td></tr><tr><td>E(Rm-Rf)</td><td>6.87</td><td>7.10</td><td>6.60</td><td>6.90</td></tr><tr><td>σ(Rm-Rf)</td><td>21.82</td><td>17.37</td><td>13.85</td><td>13.91</td></tr><tr><td>E(Rm-Rf)/σ(Rm-Rf)</td><td>0.32</td><td>0.41</td><td>0.48</td><td>0.50</td></tr><tr><td>E(Rm)</td><td>9.10</td><td>8.23</td><td>7.74</td><td>8.03</td></tr><tr><td>σ(Rm)</td><td>21.99</td><td>17.89</td><td>13.84</td><td>13.88</td></tr><tr><td>E(Rf)</td><td>1.43</td><td>1.13</td><td>0.92</td><td>1.13</td></tr><tr><td>σ(Rf)</td><td>4.57</td><td>3.33</td><td>1.55</td><td>1.55</td></tr><tr><td>E(p-d)</td><td>3.30</td><td>3.30</td><td>2.94</td><td>2.92</td></tr><tr><td>σ(p-d)</td><td>0.41</td><td>0.40</td><td>0.27</td><td>0.27</td></tr><tr><td>AC1(p-d)</td><td>0.85</td><td>0.90</td><td>0.90</td><td>0.90</td></tr></table>
Source: Nakamura, Sergeyev, Steinsson (2017)
# NEOCLASSICAL LABOR SUPPLY

UC Berkeley

April 2019

Consumption-Savings Decision

Labor-Leisure Decision

Capital Accumulation

Factor Demand

Price and Wage Setting (Phillips Curve)

Etc.

Plausible (likely) that "frictions" are important in the labor market:

- Jobs and workers are very heterogeneous, suggesting that search frictions may be important
- Monopsony power may be important
- Monopoly power may be important (unions)
Unemployment (the market doesn't clear)
Nevertheless, useful to understand neoclassical labor market theory
(i.e., perfectly competitive labor market) as one benchmark
- Neoclassical labor market theory may make sense for "big" questions
Labor Demand:
$$
W _ {t} = F _ {L} \left(L _ {t}, \cdot\right)
$$
- Ignores hiring and firing costs
- Views labor market as a spot market
Labor Demand:
$$
W _ {t} = F _ {L} \left(L _ {t}, \cdot\right)
$$
- Ignores hiring and firing costs
- Views labor market as a spot market
Labor Supply:
Household's intratemporal labor-leisure choice
$$
\max  U \left(C _ {t}, L _ {t}\right)
$$
$$
\text {s u b j e c t} \colon C _ {t} = W _ {t} L _ {t}
$$
- First order condition:
$$
\frac {U _ {L t}}{U _ {C t}} = W _ {t}
$$
- Ignores participation margin for simplicity
- Let's assume for simplicity that
$$
U (C _ {t}, L _ {t}) = U (C _ {t}) - V (L _ {t})
$$
- What properties should  $U$  and  $V$  have?
- Let's assume for simplicity that
$$
U \left(C _ {t}, L _ {t}\right) = U \left(C _ {t}\right) - V \left(L _ {t}\right)
$$
- What properties should  $U$  and  $V$  have?
U should be upward sloping and concave
V should be upward sloping and convex
- $V$  sometimes formulated in terms of leisure:  $V(1 - L_{t})$
Labor supply becomes
$$
\frac {V ^ {\prime} \left(L _ {t}\right)}{U ^ {\prime} \left(C _ {t}\right)} = W _ {t}
$$
$$
\frac {V ^ {\prime} (L _ {t})}{U ^ {\prime} (C _ {t})} = W _ {t}
$$
- How does an increase in the wage affect labor supply?
$$
\frac {V ^ {\prime} \left(L _ {t}\right)}{U ^ {\prime} \left(C _ {t}\right)} = W _ {t}
$$
- How does an increase in the wage affect labor supply?
Two effects!!
Substitution effect:
- Higher wage makes working more attractive. Increases labor supply.
- Holding  $C_t$  fixed, if  $W_t$  goes up on RHS,  $L_t$  has to go up on LHS
Income effect:
- But increase in  $W_{t}$  affects  $C_{t}$  since  $C_{t} = W_{t}L_{t}$  (one period model for simplicity)
- Holding RHS fixed, increase in  $C_t$  reduces  $U'$ , so  $L_t$  must get down to leave LHS fixed.
# How Strong Are Income Effects?
- Are income effects something we need to take seriously from a quantitative perspective?
Keynes thought so!
Economic Possibilities for Our Grandchildren (1930)
- "Suppose that a hundred years hence we are all of us, on the average, eight times better off in the economic sense than we are to-day." (i.e.,  $2\%$  annual growth)
"Absolute needs … satisfied."
- "Prefer to devote our further energies to non-economic purposes."
- Main worry "general 'nervous breakdown"
- "need to do some work … to be contented"
- "Three hour shifts of fifteen hour week."
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/1e64f20a0b45efcb1b21b1f87c1bc332bd68bc7bd378d06a29255d0ec77f7b3e.jpg)
Source: Clark (2005, 2010)
Figure 2: U.S. average annual hours per capita aged 15-64, 1950-2013
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/a2f1f50565abcf40bfddc6f42269ef353c554cf5e4de6b9c40a21867240ee933.jpg)
Notes: Source: GGDC Total Economy Database for total hours worked and OECD for the data on population aged 15-64. The figure is comparable to the ones in Rogerson (2006). Regressing the logarithm of hours worked on time gives an insignificant slope coefficient.
Source: Boppart and Krusell (2016)
Figure 1: Hours worked per worker
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/52c323dc48711794f06ec540e0f8ceefe2546969505da543b4d369e1a464ebc5.jpg)
Notes: The figure shows data for the following countries: Belgium, Denmark, France, Germany, Ireland, Italy, Netherlands, Spain, Sweden, Switzerland, the U.K., Australia, Canada, and the U.S. The scale is logarithmic which suggests that hours fall at roughly 0.57 percent per year. Source: Huberman and Minns (2007). Maddison (2001) shows a similar systematic decline in hours per capita.
Source: Boppart and Krusell (2018)
Figure 3: Selected countries average annual hours per capita aged 15-64, 1950-2015
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/d6daed35b220e52feb554e84474dba6155c92af70a26abb1fc30436dc2eccfcf.jpg)
Notes: Source: GGDC Total Economy Database for total hours worked and OECD for the data on population aged 15-64. The figure is comparable to the ones in Rogerson (2006). Regressing the logarithm of hours worked on time gives a slope coefficient of -0.00393.
Source: Boppart and Krusell (2018)
- Long-run trends on real wages and hours suggest that income effects are (a little bit) stronger than substitution effects
- More traditional view: Labor supply constant as wages rise
"Balanced growth preferences" (King, Plosser, and Rebelo, 1988):
$$
U (C _ {t}, L _ {t}) = \left\{ \begin{array}{l l} \frac {(C _ {t} v (L _ {t})) ^ {1 - \sigma} - 1}{1 - \sigma} & \text {i f} \sigma \neq 1 \\ \log (C _ {t}) + \log v (L _ {t}) & \text {i f} \sigma = 1 \end{array} \right.
$$

Imply that income and substitution effects exactly cancel out in response to permanent increase in wage

Common choice for preferences:

$$
\log (C _ {t}) - \psi \frac {L _ {t} ^ {1 + 1 / \nu}}{1 + 1 / \nu}
$$
- Falls into balanced growth preference set with  $\nu(L_t) = \exp(-\psi \frac{L_t^{1 + 1/\nu}}{1 + 1/\nu})$
- Implied labor supply:
$$
\psi L _ {t} ^ {1 / \nu} C _ {t} = W _ {t}
$$
- Suppose constant (gross) growth rates for:
- Consumption:  $g_{C}$
Labor:  $g_{L}$
Wages:  $g_{W}$
Labor supply curve  $\psi L_{t}^{1 / \nu}C_{t} = W_{t}$  implies  $g_{L}^{1 / \nu}g_{C} = g_{W}$
- Resource constraint  $W_{t}L_{t} = C_{t}$  implies  $g_{L}g_{W} = g_{C}$
- Solving this system yields:
$$ g _ {C} = g _ {W} \quad \text {a n d} \quad g _ {L} = 1
$$

MaCurdy (1981) assumed

$$
\frac {C _ {t} ^ {1 - \sigma} - 1}{1 - \sigma} - \psi \frac {L _ {t} ^ {1 + 1 / \nu}}{1 + 1 / \nu}
$$
- Consumption term generalization of  $\log C_t$
- When  $\sigma \neq 1$ , growth not balanced
Labor supply becomes
$$
\psi L _ {t} ^ {1 / \nu} C _ {t} ^ {\sigma} = W _ {t}
$$

In growth rates we have:

$$ g _ {L} ^ {1 / \nu} g _ {C} ^ {\sigma} = g _ {W} \quad \text {a n d} \quad g _ {L} g _ {W} = g _ {C}
$$
- Which implies:
$$ g _ {L} = g _ {W} ^ {\frac {\nu (1 - \sigma)}{1 + \nu \sigma}} \quad \text {a n d} \quad g _ {C} = g _ {W} ^ {\frac {1 + \nu}{1 + \nu \sigma}}
$$

So  $g_{L} < 1$  (i.e., falling hours) if  $\sigma > 1$

$\sigma$  governs strength of the income effect

In other contexts,  $\sigma$  is:

Coefficient of relative risk aversion

- Reciprocal of elasticity of intertemporal substitution
- Generalized "balanced growth" preferences:
$$
U (C _ {t}, L _ {t}) = \left\{ \begin{array}{l l} \frac {\left(C _ {t} v \left(L _ {t} C _ {t} ^ {\frac {\theta}{1 - \theta}}\right)\right) ^ {1 - \sigma} - 1}{1 - \sigma} & \text {i f} \sigma \neq 1 \\ \log (C _ {t}) + \log v \left(L _ {t} C _ {t} ^ {\frac {\theta}{1 - \theta}}\right) & \text {i f} \sigma = 1 \end{array} \right.
$$
- Yield balanced growth with trending hours
Balanced growth:
- Output, consumption, hours, investment, and capital grow at a constant rate in response to constant growth in productivity
# Why Do Americans Work So Much More Than Europeans?

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/4a7e4ee428661b33be2c7154152a9184fed5e71c01ff6d5563c35b55448c2edd.jpg)

FIG. 1.-Aggregate hours in the United States and Europe

Source: Rogerson (JPE 2008). "Europe": Belgium, France, Germany, Italy, and the Netherlands.

# Output, Labor Supply, and Productivity

In Selected Countries in 1993-96 and 1970-74

Table 1

<table><tr><td rowspan="2">Period</td><td rowspan="2">Country</td><td colspan="3">Relative to United States (U.S. = 100)</td></tr><tr><td>Output per Person*</td><td>Hours Worked per Person*</td><td>Output per Hour Worked</td></tr><tr><td rowspan="7">1993–96</td><td>Germany</td><td>74</td><td>75</td><td>99</td></tr><tr><td>France</td><td>74</td><td>68</td><td>110</td></tr><tr><td>Italy</td><td>57</td><td>64</td><td>90</td></tr><tr><td>Canada</td><td>79</td><td>88</td><td>89</td></tr><tr><td>United Kingdom</td><td>67</td><td>88</td><td>76</td></tr><tr><td>Japan</td><td>78</td><td>104</td><td>74</td></tr><tr><td>United States</td><td>100</td><td>100</td><td>100</td></tr><tr><td rowspan="7">1970–74</td><td>Germany</td><td>75</td><td>105</td><td>72</td></tr><tr><td>France</td><td>77</td><td>105</td><td>74</td></tr><tr><td>Italy</td><td>53</td><td>82</td><td>65</td></tr><tr><td>Canada</td><td>86</td><td>94</td><td>91</td></tr><tr><td>United Kingdom</td><td>68</td><td>110</td><td>62</td></tr><tr><td>Japan</td><td>62</td><td>127</td><td>49</td></tr><tr><td>United States</td><td>100</td><td>100</td><td>100</td></tr></table>
*These data are for persons aged 15–64.
Source: Prescott (2004).
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/b51ada6d7f00d186fc2e893e9344bb1877c1a974d482849127cc89247023675c.jpg)
Fig. 13. Hours gap explained by unemployment: France.
Source: Rogerson (RED 2006).
(percentage)
Table 2
A Decomposition of the Change in Hours Worked Per Capita in France and the United States from 1970 to 2000
<table><tr><td rowspan="2"></td><td colspan="5">Percentage change in:</td></tr><tr><td>HN/P</td><td>H</td><td>N/L</td><td>L/P_A</td><td>P_A/P</td></tr><tr><td>France</td><td>-21</td><td>-21</td><td>-7</td><td>3</td><td>4</td></tr><tr><td>United States</td><td>21</td><td>-4</td><td>1</td><td>10</td><td>14</td></tr><tr><td>Difference</td><td>-42</td><td>-17</td><td>-8</td><td>-7</td><td>-10</td></tr></table>
Source: OECD Economic Outlook database.
To address these questions, it is useful to decompose the change in hours worked per capita into its different components:
$$
\Delta (H N / P) = \Delta \ln H + \Delta \ln (N / L) + \Delta \ln (L / P _ {A}) + \Delta \ln (P _ {A} / P).
$$
The change in hours worked per capita,  $HN / P$ , can be written as the change in hours worked per worker,  $H$ , plus the change in the employment rate—the ratio of employment,  $N$ , to the labor force,  $L$ —plus the change in the participation rate—the ratio of the labor force  $L$  to the population of working age,  $P_A$ , plus the change in the ratio of the population of working age to total population,  $P$ . The decomposition of the change in hours worked into these components is given in Table 2 for France and the United States, for the period 1970 to 2000.
Source: Blanchard (JEP 2004).
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/b608903d9e225d751854db9ff323d1942c0666281f14506fb351b5aeafcfa73d.jpg)
Fig. 37. Employment relative to the US by age.
Source: Rogerson (RED 2006).
# POSSIBLE EXPLANATIONS
Differences in preferences/culture
Differences in social norms (coordination problem/unions)
- More generous social safety net
Higher minimum wage
Hiring and firing costs
Higher taxes
- Representative household maximizes:
$$
E \left\{\sum_ {t = 0} ^ {\infty} \beta^ {t} \left(\log c _ {t} + \alpha \log \left(1 - h _ {t}\right)\right) \right\}
$$
Household owns capital and rents to firms
$\bullet$  Law of motion for capital:
$$ k _ {t + 1} = (1 - \delta) k _ {t} + x _ {t}
$$
- Representative firm produces using Cobb-Douglas technology:
$$ y _ {t} = c _ {t} + x _ {t} + g _ {t} \leq A _ {t} k _ {t} ^ {\theta} h _ {t} ^ {1 - \theta}
$$
Household budget constraint:
$$
\left(1 + \tau_ {c}\right) c _ {t} + \left(1 + \tau_ {x}\right) x _ {t} = \left(1 - \tau_ {h}\right) w _ {t} h _ {t} + \left(1 - \tau_ {k}\right) \left(r _ {t} - \delta\right) k _ {t} + \delta k _ {t} + T _ {t}
$$
Labor supply:
$$
\frac {\alpha / (1 - h)}{1 / c} = (1 - \tau) w
$$ where
$$
(1 - \tau) = \left(1 - \frac {\tau_ {h} + \tau_ {c}}{1 + \tau_ {c}}\right) = \frac {1 - \tau_ {h}}{1 + \tau_ {c}}
$$
Labor demand:
$$
(1 - \theta) \frac {y}{h} = w
$$
Combining labor supply and labor demand yields:
$$ h _ {i t} = \frac {1 - \theta}{1 - \theta + \frac {c _ {i t}}{y _ {i t}} \frac {\alpha}{1 - \tau_ {i t}}}
$$
Hours worked governed by: consumption-output ratio  $(c_{it} / y_{it})$
taxes  $(\tau_{it})$
- Tax revenue rebated lump sum to households (no income effect)
- Without this, effect of taxes on hours would be zero since Prescott uses KPR preferences
Calibrates:
$\theta = 0.3224$  to match capital cost share
$\alpha = 1.54$  to roughly match hours worked
Estimates tax rates based on national accounts data (I didn't understand all the details of this part)
# Actual and Predicted Labor Supply
In Selected Countries in 1993-96 and 1970-74
Table 2
<table><tr><td rowspan="2">Period</td><td rowspan="2">Country</td><td colspan="2">Labor Supply*</td><td rowspan="2">Differences(PredictedLess Actual)</td><td colspan="2">Prediction Factors</td></tr><tr><td>Actual</td><td>Predicted</td><td>Tax Rate T</td><td>Consumption/Output (c/y)</td></tr><tr><td rowspan="7">1993–96</td><td>Germany</td><td>19.3</td><td>19.5</td><td>.2</td><td>.59</td><td>.74</td></tr><tr><td>France</td><td>17.5</td><td>19.5</td><td>2.0</td><td>.59</td><td>.74</td></tr><tr><td>Italy</td><td>16.5</td><td>18.8</td><td>2.3</td><td>.64</td><td>.69</td></tr><tr><td>Canada</td><td>22.9</td><td>21.3</td><td>-1.6</td><td>.52</td><td>.77</td></tr><tr><td>United Kingdom</td><td>22.8</td><td>22.8</td><td>0</td><td>.44</td><td>.83</td></tr><tr><td>Japan</td><td>27.0</td><td>29.0</td><td>2.0</td><td>.37</td><td>.68</td></tr><tr><td>United States</td><td>25.9</td><td>24.6</td><td>-1.3</td><td>.40</td><td>.81</td></tr><tr><td rowspan="7">1970–74</td><td>Germany</td><td>24.6</td><td>24.6</td><td>0</td><td>.52</td><td>.66</td></tr><tr><td>France</td><td>24.4</td><td>25.4</td><td>1.0</td><td>.49</td><td>.66</td></tr><tr><td>Italy</td><td>19.2</td><td>28.3</td><td>9.1</td><td>.41</td><td>.66</td></tr><tr><td>Canada</td><td>22.2</td><td>25.6</td><td>3.4</td><td>.44</td><td>.72</td></tr><tr><td>United Kingdom</td><td>25.9</td><td>24.0</td><td>-1.9</td><td>.45</td><td>.77</td></tr><tr><td>Japan</td><td>29.8</td><td>35.8</td><td>6.0</td><td>.25</td><td>.60</td></tr><tr><td>United States</td><td>23.5</td><td>26.4</td><td>2.9</td><td>.40</td><td>.74</td></tr></table>
\*Labor supply is measured in hours worked per person aged 15-64 per week.
TABLE 4-CURRENT INTRATEMPORAL TAX WEDGE FOR FRANCE, THE UNITED KINGDOM, AND THE UNITED STATES
<table><tr><td></td><td>France</td><td>United Kingdom</td><td>United States</td></tr><tr><td>τc</td><td>0.33</td><td>0.26</td><td>0.13</td></tr><tr><td>τh</td><td>0.49</td><td>0.31</td><td>0.32</td></tr><tr><td>Social-security tax</td><td>0.33</td><td>0.10</td><td>0.12</td></tr><tr><td>Marginal income tax</td><td>0.15</td><td>0.21</td><td>0.20</td></tr><tr><td>Intratemporal tax wedge</td><td>2.60</td><td>1.82</td><td>1.66</td></tr><tr><td>Hours, h</td><td>0.183</td><td>0.235</td><td>0.268</td></tr><tr><td>Predicted h</td><td>0.189</td><td>0.250</td><td>0.268</td></tr></table>
Source: United Nations (2000).
Source: Prescott (2002). Intratemporal tax wedge:  $(1 + \tau_{c}) / (1 - \tau_{h})$
Main Conclusion:
"The important observation is that the low labor supplies in Germany, France, and Italy are due to high tax rates."
Household preferences:
$$
\frac {C _ {t} ^ {1 - \sigma} - 1}{1 - \sigma} - \psi \frac {L _ {t} ^ {1 + 1 / \nu}}{1 + 1 / \nu}
$$
No capital
Production function:
$$
Y _ {t} = A _ {t} L _ {t}
$$
Resource constraint:
$$
Y _ {t} = C _ {t}
$$
Household budget constraint:
$$
\left(1 + \tau_ {c}\right) C _ {t} = \left(1 - \tau_ {L}\right) W _ {t} L _ {t} + T _ {t}
$$
Labor Supply:
$$
\psi L _ {t} ^ {1 / \nu} C _ {t} ^ {\sigma} = \frac {1 - \tau_ {L}}{1 + \tau_ {C}} W _ {t}
$$
Labor Demand:
$$
W _ {t} = A _ {t} = \frac {Y _ {t}}{L _ {t}}
$$
Combining these yields:
$$
\psi L _ {t} ^ {\sigma + 1 / \nu} = (1 - \tau) A ^ {1 - \sigma}
$$
- Taking logs and differences yields:
$$
\log L _ {i t} - \log L _ {j t} = \frac {\nu}{1 + \sigma \nu} (\log (1 - \tau_ {i t}) - \log (1 - \tau_ {j t}))
$$
- With balanced growth preferences  $\sigma = 1$ :
$$
\log L _ {i t} - \log L _ {j t} = \frac {\nu}{1 + \nu} (\log (1 - \tau_ {i t}) - \log (1 - \tau_ {j t}))
$$
- Two key assumptions regarding effect of taxes on labor supply:
1. Parameter  $\nu$
2. Absence of income effects
Labor supply in logs:
$$
\log L _ {t} = \nu \log W _ {t} + \nu \log (1 - \tau) - \nu \log C _ {t} - \log \psi
$$
- From this we see that  $\nu$  is the "Frisch" elasticity of labor supply
- Frisch elasticity: elasticity of labor supply with respect to the wage holding marginal utility (i.e., consumption) constant
Prescott assumed:
$$
\log c _ {t} + \alpha \log \left(1 - h _ {t}\right)
$$
- What does this imply about Frisch elasticity?
- If  $V(L_{t}) = \alpha \log (1 - L_{t})$  then Frisch elasticity is
$$
\frac {1}{\nu} = \frac {V ^ {\prime \prime} (L) L}{V ^ {\prime} (L)}
$$
$$
\nu = \frac {1 - L}{L}
$$
- If we assume that steady state labor is  $1/4$  of available time (this is ballpark what Prescott assumed)
$$
\nu = \frac {3 / 4}{1 / 4} = 3
$$
$$
\log L _ {i t} - \log L _ {j t} = \frac {\nu}{\nu + 1} (\log (1 - \tau_ {i t}) - \log (1 - \tau_ {j t}))
$$
- With  $\nu = 3$ , we have that  $\nu / (\nu + 1) = 3/4$  and
$$
\frac {\nu}{\nu + 1} \left(\log \left(1 - \tau_ {F R}\right) - \log \left(1 - \tau_ {U S}\right)\right) = \frac {3}{4} \left(\log (1 - 0. 5 9) - \log (1 - 0. 4)\right) = - 0. 2 9
$$
- With  $\nu = 0.5$ , we have that  $\nu / (\nu + 1) = 1/3$  and
$$
\frac {\nu}{\nu + 1} \left(\log \left(1 - \tau_ {F R}\right) - \log \left(1 - \tau_ {U S}\right)\right) = \frac {1}{3} \left(\log (1 - 0. 5 9) - \log (1 - 0. 4)\right) = - 0. 1 3
$$
- With  $\nu = 0.1$ , we have that  $\nu / (\nu + 1) = 1 / 11$  and
$$
\frac {\nu}{\nu + 1} \left(\log \left(1 - \tau_ {F R}\right) - \log \left(1 - \tau_ {U S}\right)\right) = \frac {1}{1 1} \left(\log (1 - 0. 5 9) - \log (1 - 0. 4)\right) = - 0. 0 3
$$
# The Many Elasticities of Labor Supply
Marshallian:
Total or "uncompensated" elasticity
- Holds non-labor income constant
- Includes both income and substitutions effects
Hicksian:
Compensated
- Holds utility constant
No income effect
Frisch:
- Holds marginal utility of consumption constant (i.e., holds consumption constant)
- Also no income effect (but slightly different from Hicksian)
- Intertemporal elasticity of labor supply
Marshallian:
$$
\nu_ {M} = \frac {1 - \sigma S}{1 / \nu + \sigma S}
$$
Hicksian:
$$
\nu_ {H} = \frac {1}{1 / \nu + \sigma \mathsf {S}}
$$
Frisch:
V
Where  $S$  is the labor income as a fraction of total income
See Keane (JEL 2011) for derivations
$$
\frac {1 - \sigma S}{1 / \nu + \sigma S} \leq \frac {1}{1 / \nu + \sigma S} \leq \nu
$$
$$
\nu_ {M} \leq \nu_ {H} \leq \nu
$$
- With quasi-linear preference (i.e., linear in consumption  $(\sigma = 0)$ ):
$$
\nu_ {M} = \nu_ {H} = \nu
$$
Common assumption in applied micro
- For long-run general equilibrium analysis, this assumption is suspect
- For  $\sigma = 1$  and  $S = 1$ ,  $\nu_{M} = 0$ . For  $\sigma > 1$  and  $S = 1$ ,  $\nu_{M} < 0$ .
- Consider change in a flat tax with revenue rebated back lump sum
We calculated this before:
$$
\begin{array}{l} \log L _ {i t} - \log L _ {j t} = \frac {\nu}{1 + \sigma \nu} \left(\log \left(1 - \tau_ {i t}\right) - \log \left(1 - \tau_ {j t}\right)\right) \\ = \frac {1}{1 / \nu + \sigma} (\log (1 - \tau_ {i t}) - \log (1 - \tau_ {j t})) \\ \end{array}
$$
- Relevant elasticity is the Hicksian elasticity (with  $S = 1$ )
The fact that revenue is rebated kills the income effect
- Change in a flat tax with revenue used for  $G_{t}$  that enter utility separately (e.g., military spending, infrastructure, or wasteful spending)
Labor Supply:
$$
\psi L _ {t} ^ {1 / \nu} C _ {t} ^ {\sigma} = (1 - \tau) W _ {t}
$$
Labor Demand:
$$
W _ {t} = A _ {t}
$$
- Consumption:
$$
C _ {t} = Y _ {t} - \tau Y _ {t} = (1 - \tau) A _ {t} L _ {t}
$$
Combining these yields:
$$
\psi L _ {t} ^ {\sigma + 1 / \nu} = (1 - \tau) ^ {1 - \sigma} A ^ {1 - \sigma}
$$
$$
\psi L _ {t} ^ {\sigma + 1 / \nu} = (1 - \tau) ^ {1 - \sigma} A ^ {1 - \sigma}
$$
- Taking log yields:
$$
\log \psi + \left(\sigma + \frac {1}{\nu}\right) \log L = (1 - \sigma) \log (1 - \tau) + (1 - \sigma) \log A
$$
- Taking differences yields:
$$
\log L _ {t} - \log L _ {s} = \left(\frac {1 - \sigma}{1 / \nu + \sigma}\right) \left(\log \left(1 - \tau_ {t}\right) - \log \left(1 - \tau_ {s}\right)\right)
$$
- Marshallian elasticity (with  $S = 1$ ) governs effects of this tax change
- Potentially much smaller than with rebate due to income effect
- With balanced growth preferences  $(\sigma = 1)$  effect is zero
- Arguably the relevant result for fighting a war
- Consider a temporary tax change in a dynamic setting
Take log of labor supply
$$
\log \psi + \frac {1}{\nu} \log L _ {t} + \sigma \log C _ {t} = \log (1 - \tau) + \log W _ {t}
$$
Take differences:
$$
\Delta \log L _ {t} = \nu \Delta \log (1 - \tau) + \nu \Delta \log W _ {t} - \nu \Delta \sigma \log C _ {t}
$$
- If tax change has no effect on wages and consumption, Frisch elasticity governs effect
In general equilibrium, wages and consumption may change
- All our derivations have been done in general equilibrium
- Most empirical analysis makes use of diff-in-diff strategies which difference out general equilibrium
- Empirical analysis therefore estimates partial equilibrium effects
- Important to keep in mind when going from empirical estimates to policy advice
# CAPITAL ACCUMULATION AND GROWTH:
# THE SOLOW MODEL

University of California, Berkeley

Fall 2025

# STEADY GROWTH AT THE FRONTIER FOR 150 YEARS

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/a475b3035b1084ae171b66d73e1b33e19b771c40423cf4b389ab7b61037dd9af.jpg)

Log scale, chained 2009 dollars

Fig. 1 GDP per person in the United States. Source: Data for 1929-2014 are from the U.S. Bureau of Economic Analysis, NIPA table 7.1. Data before 1929 are spliced from Maddison, A. 2008. Statistics on world population, GDP and per capita GDP, 1-2006 AD. Downloaded on December 4, 2008 from http://www.ggdc.net/maddison/.

Source: Jones (2016)

# UNEVEN GROWTH ACROSS THE WORLD

GDP per person

(ratio scale, 2017 dollars)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/7a42c5e325fcdcbd8bc1c5297f84e3d3eddae7ec39541cf7517cccd0b6f34151.jpg)

Source: The Maddison-Project, www.ggdc.net/maddison/. Observations are presented every decade after 1950 and less frequently before that as a way of smoothing the series.

Copyright © 2021 W.W. Norton & Company

Source: Jones (2021)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/8154ff16f0cc6238abd24cc21cee8ec299cb2064ed71a30113962205ef429920.jpg)

GDP per person  $(\mathrm{US} = 100)$

Fig. 22 The spread of economic growth since 1870. Source: Bolt, J., van Zanden, J.L. 2014. The Maddison Project: collaborative research on historical national accounts. Econ. Hist. Rev. 67 (3), 627-651.

Source: Jones (2016)

# GROWTH IS A RECENT PHENOMENON!

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/074e6f8ab7dbe616a0a11d72ec6b1c3bd332eaf857fcb13603f133af062ca4b3.jpg)

Source: Clark (2010)

- Figures like these often plotted on linear scale to make them more dramatic (hockey stick)
This is misleading.
- Fluctuations before 1800 were large!
(Also Maddison data back thousands of years are "guestimates")
What sustains growth at the frontier?
(Will it continue in the future?)
Why are some countries so far behind the frontier?
(What might help them close the gap?)
Why did growth begin?
Why was there no growth before Industrial Revolution?
We will focus on first two questions. (210A in the spring covers later two.)
- Steinsson, J. (2021): "Malthus and Pre-Industrial Stagnation," draft textbook chapter.
https://eml.berkeley.edu/~jsteinsson/teaching/malthus.pdf
- Steinsson, J. (2021): "How Did Growth Begin? The Industrial Revolution and Its Antecedents," draft textbook chapter.
https://eml.berkeley.edu/~jsteinsson/teaching/originofgrowth.pdf
- Romer, D. (2019): Advanced Macroeconomics, McGraw Hill, New York, NY.
- Acemoglu, D. (2009): Introduction to Modern Economic Growth, Princeton University Press, Princeton, NJ.
- Barro, R.J. and X. Sala-i-Martin (2004): Economic Growth, MIT Press, Cambridge, MA.
# The Solow Model

Seems plausible!

- Conventional wisdom in 1950s: Yes!
See discussion in Easterly (2002)
- Solow (1956) tackled this question
$$
Y (t) = F [ K (t), A (t) L (t) ]
$$
- $Y(t)$ : Output at time  $t$
- $K(t)$ : Capital stock at time  $t$
- $L(t)$ : Labor supply at time  $t$
- $A(t)$ : "effectiveness of labor" at time  $t$  (aka "productivity")
$$
Y (t) = F [ K (t), A (t) L (t) ]
$$

The model is dynamic

Time is continuous

- Time only enters production function through inputs
- Productivity is "labor augmenting" (Harrod neutral)
- This last point has traditionally been viewed as important for getting "balanced growth"
Kaldor (1963): As per capita income has risen
The capital-output ratio has been roughly constant
Real interest rates have no trend
- The labor and capital share of production have been roughly constant
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/bdc1de8f1956c6990469f161f5582b4ca174d48a1781a9d75bb0ff141bf73cc1.jpg)
Fig. 3 The ratio of physical capital to GDP. Source: Bureau of Economic Analysis Fixed Assets tables 1.1 and 1.2. The numerator in each case is a different measure of the real stock of physical capital, while the denominator is real GDP.
Source: Jones (2016)
# EX POST REAL INTEREST RATE

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/9ca539a244626722a32ead866016dc508b9a5cd5899210be93b5f3648b691ba4.jpg)

Source: FRED. 3 month T-bill rate minus 12-month CPI inflation.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/cf2232877917b4768d4e895e214a26eb0c613e611d0c424980f2ebb90c1d53df.jpg)

Fig. 6 Capital and labor shares of factor payments, United States. Source: The series starting in 1975 are from Karabarbounis, L., Neiman, B. 2014. The global decline of the labor share. Q. J. Econ. 129 (1), 61-103. http://ideas.repec.org/a/oup/qjecon/v129y2014i1p61-103.html and measure the factor shares for the corporate sector, which the authors argue is helpful in eliminating issues related to self-employment. The series starting in 1948 is from the Bureau of Labor Statistics Multifactor Productivity Trends, August 21, 2014, for the private business sector. The factor shares add to  $100\%$ .

Source: Jones (2016)

Hicks Neutral:

$$
A (t) F [ K (t), L (t) ]
$$

(Ratio of marginal products remains constant for a given  $K / L$  ratio)

Harrod Neutral / Labor-Augmenting:

$$
F [ K (t), A (t) L (t) ]
$$

(Ratio of input shares  $(F_{K}K / F_{L}L)$  remain constant for a given  $K / Y$  ratio)

- Solow Neutral / Capital-Augmenting:
$$
F [ A (t) K (t), L (t) ]
$$

(Ratio of input shares  $(F_K K / F_L L)$  remain constant for a given  $L / Y$  ratio)

- Some combination of all three also possible
The Cobb-Douglas production function satisfies all three properties
Hicks Neutral:
$$
A (t) K (t) ^ {\alpha} L (t) ^ {1 - \alpha}
$$

Harrod Neutral:

$$
K (t) ^ {\alpha} [ \tilde {A} (t) L (t) ] ^ {1 - \alpha} \text {w h e r e} \tilde {A} (t) = A (t) ^ {1 / (1 - \alpha)}
$$
- Solow Neutral:
$$
[ \check {A} (t) K (t) ] ^ {\alpha} L (t) ^ {1 - \alpha} \text {w h e r e} \check {A} (t) = A (t) ^ {1 / \alpha}
$$

Cobb-Douglas:

$$
Y (t) = A (t) K (t) ^ {\alpha} L (t) ^ {1 - \alpha}
$$

$\alpha$  "weight" on capital (and capital share)

- Elasticity of substitution between capital and labor is 1
- Constant elasticity of substitution (CES):
$$
Y (t) = \left[ \alpha \left(A _ {K} (t) K (t)\right) ^ {\frac {\sigma - 1}{\sigma}} + (1 - \alpha) \left(A _ {L} (t) L (t)\right) ^ {\frac {\sigma - 1}{\sigma}} \right] ^ {\frac {\sigma}{\sigma - 1}}
$$
- Elasticity of substitution between capital and labor is  $\sigma$
# Roughly speaking:
- Balanced growth in the long run is only possible if all technical progress is labor augmenting
(See Acemoglu (2009, sec. 2.7) and Barro-Sala-I-Martin (2004, sec. 1.2.12) for details)
# Why balanced growth:
- Empirically: We see a stable  $K / Y$  ratio and relatively stable factor shares
- Theoretically: Very convenient because model will have a steady state when technical progress is constant
Acemoglu (2009, p. 59):
This result is very surprising and troubling, since there are no compelling reasons for why technological progress should take this form. [i.e., be labor augmenting]
- Textiles: spinning jenny, water frame, mule, mechanized weaving
Power: windmill, water wheel, steam engine, electric motor
- Transportation: trains, cars, trucks, airplanes
- Agriculture: tractors, combine harvester, fertilizer
- Computing: abacus, transistor, microprocessor
Why would such technical progress leave labor share unchanged?
$$
Y (t) = F [ K (t), A (t) L (t) ]
$$
- Traditional production function a black box
Lacks descriptive realism - especially for technical change
Few technologies increase the productivity of a factor in all tasks
- More common: Machine takes over one task and makes labor more productive at another task
- Computer: Replaces human computers, makes those using computations more productive
- Power loom: Replaces master weaver, creates new tasks for labor to design, build, and operate machines
- Production accomplished by performing a set of tasks (Zeira 98, Acemoglu-Restrepo 18)
$$
Y = \left[ \int_ {N - 1} ^ {N} y (z) ^ {\frac {\sigma - 1}{\sigma}} d z \right] ^ {\frac {\sigma}{\sigma - 1}}
$$

Each task either technologically automated or not:

$$ y (z) = \left\{ \begin{array}{l l} A ^ {L} \psi^ {L} (z) L (z) + A ^ {K} \psi^ {K} (z) K (z) & \text {i f} z \in [ N - 1, I ] \\ A ^ {L} \psi^ {L} (z) L (z) & \text {i f} z \in (I, N ] \end{array} \right.
$$

$\bullet$ $\psi^L (z)$  and  $\psi^K (z)$  task-specific productivity of factors

- Let's order tasks by comparative advantage of labor:  $\psi^L(z) / \psi^K(z)$  (More general production function for each task possible (realistic).)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/68da6413caf17f11bdedbfc0174f4a070a48f2c911f5c7b53ee81baf4e6a9126.jpg)
Tasks performed by capital Labor-intensive tasks placed tasks
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/426f1eaaa3dfa7b7dc32562e55cb58365442594164f0cf5047e2bf84084f20e0.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/99706732a19bd4ad675cabfe3b7b8464d3596f662dd4412d5281252bf4754ad1.jpg)
Source: Acemoglu and Restrepo (2019)
Cost of production
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/88e24b49b980b38a072913a0f4386e96f5d90a64fa7dee05f79099b30c4faf9e.jpg)
Source: Acemoglu, Economic Growth Lecture 10, 2023 ( $\gamma$ 's are supposed to be  $\psi$ 's)
Cost of production
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/04951595f760d616c901898708420b5656f9c73b135735cfb7963b3298ef4a32.jpg)
Source: Acemoglu, Economic Growth Lecture 10, 2023 ( $\gamma$ 's are supposed to be  $\psi$ 's)
Cost of production
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/a45b3b5f19db9c7300d90eb74877b1b5bf536a13b6d6a894cfabe5eb108d46c6.jpg)
Source: Acemoglu, Economic Growth Lecture 10, 2023 ( $\gamma$ 's are supposed to be  $\psi$ 's)
Cost of production
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/43797970f1698fa89b9059c57055ec3a9369607d4a928f00299675a7826024f2.jpg)
Source: Acemoglu, Economic Growth Lecture 10, 2023 ( $\gamma$ 's are supposed to be  $\psi$ 's)
Cost of production
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/a0dd3df2851d99fec1b46a4ef9dddc44af0aca71d8166ddd727c284558e7bcf5.jpg)
Source: Acemoglu, Economic Growth Lecture 10, 2023 ( $\gamma$ 's are supposed to be  $\psi$ 's)
- Output can be represented by CES production function:
$$
Y = \Pi (I, N) \left[ \Gamma (I, N) (A _ {L} (t) L (t)) ^ {\frac {\sigma - 1}{\sigma}} + (1 - \Gamma (I, N)) (A _ {K} (t) K (t)) ^ {\frac {\sigma - 1}{\sigma}} \right] ^ {\frac {\sigma}{\sigma - 1}}
$$

Labor content of production:

$$
\Gamma (I, N) = \frac {\int_ {I} ^ {N} \psi^ {L} (z) ^ {\sigma - 1} d z}{\int_ {N - I} ^ {I} \psi^ {K} (z) ^ {\sigma - 1} d z + \int_ {I} ^ {N} \psi^ {L} (z) ^ {\sigma - 1} d z}
$$

Total factor productivity:

$$
\Pi (I, N) = \left[ \int_ {N - 1} ^ {I} \psi^ {K} (z) ^ {\sigma - 1} d z + \int_ {I} ^ {N} \psi^ {L} (z) ^ {\sigma - 1} \right] ^ {\frac {1}{\sigma - 1}}
$$
- Technical change affects both  $\Gamma(I, N)$  and  $\Pi(I, N)$
- Displacement effect: Technical change can displace workers
- Productivity effect: Technical change raises productivity which increases demand for remaining workers
- Reinstatement effect: Technical change creates new tasks for which labor has a comparative advantage
- Automation displaces workers from certain tasks
Effects on labor demand:
- Displacement effect
Productivity effect
- Reduces labor demand (and wages) if displacement effect is stronger than productivity effect
- With traditional production function, technical progress increases labor demand
Present a model where all technology is
- Purely capital-embodied at the micro level
- Purely labor-augmenting at the macro level
- Task-based production function (Zeira 98, Acemoglu-Restrepo 18)
- Two kinds of innovation:
- More tasks performed by capital (increases capital share)
- Innovation on already automated tasks (decreases capital share)
- Innovation reduced price of that task
- If tasks are complements, this reduces spending on that task
Combination of the two can yield stable capital share
Definition: A function  $f$  is homogeneous of degree  $m$  in  $x$  and  $y$  if
$$ f (\lambda x, \lambda y, z) = \lambda^ {m} f (x, y, z)
$$
- $m < 1$ : decreasing returns to scale
- $m = 1$ : constant returns to scale
- $m > 1$ : increasing returns to scale
Euler's Theorem: If  $f$  is homogeneous of degree  $m$  in  $x$  and  $y$ :
$$ m f (x, y, z) = \frac {\partial}{\partial x} f (x, y, z) x + \frac {\partial}{\partial y} f (x, y, z) y
$$

(See Acemoglu (2009, p. 29) for a more careful statement of this theorem.)

- We assume that the production function is constant returns to scale:
$$
F (c K, c A L) = c F (k, A L)
$$

Why?

- We assume that the production function is constant returns to scale:
$$
F (c K, c A L) = c F (k, A L)
$$

Why?

- Economy large enough that each establishment has reached efficient size (micro returns to scale and gains from specialization exhausted)
Fixed factors (e.g., land) unimportant
Positive and negative externalities between establishments unimportant
- $A(t)$  non-rival (can be used many times)
- Replication argument: Can build a second identical establishment with double the inputs
Since
$$
F (c K, c A L) = c F (K, A L)
$$ we can write production function in intensive form:
$$

\frac {Y}{A L} = \frac {1}{A L} F (K, A L) = F \left(\frac {K}{A L}, 1\right)

$$
- Define:
$k = K / AL$  : Capital per effective worker
$y = Y / AL$  Output per effective worker
- Also define:  $f(k) = F(k, 1)$
- Then we have:
$$ y = f (k)
$$

(Why do this? … Will become clear in a few slides.)

What do we want to assume about returns to capital?

What do we want to assume about returns to capital?

Returns to capital are …

Positive:  $f'(k) > 0$

- Diminishing:  $f''(k) < 0$
Also …
$\mathsf{f}(0) = 0$
Inada conditions:
$$
\lim  _ {k \rightarrow 0} f ^ {\prime} (k) = \infty \quad \text {a n d} \quad \lim  _ {k \rightarrow \infty} f ^ {\prime} (k) = 0
$$
# NEOCLASSICAL PRODUCTION FUNCTION

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/b03b722c5bcd536225d90d455b28bf5ed22d53aae0e4ffded0ed9e1b4618df19.jpg)

FIGURE 1.1 An example of a production function

Source: Romer (2019)

- If the production function is Cobb-Douglas, we have
$$ y = \frac {Y}{A L} = \frac {1}{A L} K ^ {\alpha} (A L) ^ {1 - \alpha} = \left(\frac {K}{A L}\right) ^ {\alpha} = k ^ {\alpha}.
$$

So, we have:

$$ y = k ^ {\alpha}
$$
- This function satisfies all the conditions we have specified on previous slides
- Early post-WWII debate between (mostly) British and (mostly) US economists
- Does it make sense to talk about aggregate capital?
- Do lower interest rates lead to higher capital/labor ratios?
Outcome:
- Various pathologies possible
Similar to Giffen goods in consumption theory
- Not clear any of this is practically important
# Cambridge, U.K.:
- Harcourt, G.C. (1969): "Some Cambridge Controversies in the Theory of Capital," Journal of Economic Literature, 7(2), 369-405.
- Cohen, A.J. and G.C. Harcourt (2003): "Whatever Happened to the Cambridge Capital Theory Controversies?" Journal of Economic Perspectives, 17(1), 199-214.
# Cambridge, U.S.:
- Samuelson, P.A. (1966): "A Summing Up," Quarterly Journal of Economics, 80(4), 568-583.
Stiglitz, J.E. (1974): "The Cambridge-Cambridge Controversy in the Theory of Capital: A View from New Haven," Journal of Political Economy, 82(4), 893-903.
- Output is divided between consumption and investment:
$$
Y (t) = C (t) + I (t)
$$
- How much is invested?
- Simplifying assumption: Constant savings rate
$$
I (t) = s Y (t)
$$

(We will introduce optimizing households in Ramsey model)

$$
\begin{array}{l} \dot {K} (t) = I (t) - \delta K (t) \\ = s Y (t) - \delta K (t) \\ \end{array}
$$
$$
(\dot {K} (t) = d K (t) / d t)
$$

Each instant:

New investment adds to capital stock

- Existing capital depreciates by some fraction (per unit time)
- Change in capital stock is the difference between these two
Labor and productivity grow at constant rates:
$$
\dot {L} (t) = n L (t)
$$
$$
\dot {A} (t) = g A (t)
$$
- Notice that
$$
\frac {d \log X (t)}{d t} = \frac {d \log X (t)}{d X (t)} \frac {d X (t)}{d t} = \frac {\dot {X} (t)}{X (t)}
$$ where log denotes the natural log
$$

\frac {d \log L (t)}{d t} = \frac {\dot {L} (t)}{L (t)} = n

$$
$$

\log L (t) = \log L (0) + n t

$$
$$

L (t) = L (0) e ^ {n t}

$$ and similarly for  $A(t)$

$$
Y (t) = F [ K (t), A (t) L (t) ]
$$
$$
Y (t) = C (t) + I (t)
$$
$$
I (t) = s Y (t)
$$
$$
\dot {K} (t) = I (t) - \delta K (t)
$$
$$
\dot {L} (t) = n L (t)
$$
$$
\dot {A} (t) = g A (t)
$$
- Initial Conditions:  $K(0)$ ,  $A(0)$ ,  $L(0)$  given
- Goal: Solve for evolution of  $K(t)$ ,  $Y(t)$ ,  $C(t)$ ,  $I(t)$ ,  $L(t)$ ,  $A(t)$
- Solow model is a gross simplification
- Not necessarily a defect
Real world is fully realistic, but too complicated to understand
- Simple models can provide insight about specific issues
- But may cause "theory-induced blindness"
- Kahneman: "Once you have accepted a theory, it is extraordinarily difficult to notice its flaws."
- Fully realistic model not insightful but would allow for calculation of counterfactuals and the analysis of policy experiments
# Two uses of models:
- Provide insight about mechanisms
Such models must be (relatively) simple
- Unlikely to be good guides to real-world counterfactuals
- Provide a basis for policy evaluation
Such models need not be insightful
- But they must be "realistic"
Important to keep this distinction clear
- When solving a dynamic system of equations, often useful to find a steady state
- A stable steady state is a point the system stays at if unperturbed and returns to if perturbed by a small amount
- Since  $L\left( t\right)$  and  $A\left( t\right)$  are growing,no steady state in the original variables
Key to finding a steady state to work with transformed variables:
$$ y (t) = \frac {Y (t)}{A (t) L (t)} \quad k (t) = \frac {K (t)}{A (t) L (t)}
$$

Using the chain rule we have that

$$
\begin{array}{l} \dot {k} (t) = \frac {\dot {K} (t)}{A (t) L (t)} - \frac {K (t)}{[ A (t) L (t) ] ^ {2}} [ \dot {A} (t) L (t) + A (t) \dot {L} (t) ] \\ = \frac {\dot {K} (t)}{A (t) L (t)} - \frac {K (t)}{A (t) L (t)} \frac {\dot {L} (t)}{L (t)} - \frac {K (t)}{A (t) L (t)} \frac {\dot {A} (t)}{A (t)} \\ \end{array}
$$

Using  $\dot{L} / L = n$ ,  $\dot{A} / A = g$ , and  $\dot{K} = sY - \delta K$  we have that

$$
\dot {k} (t) = \frac {s Y (t) - \delta K (t)}{A (t) L (t)} - n k (t) - g k (t)
$$

Using  $y = f(k)$  we have that

$$
\dot {k} (t) = s f (k (t)) - (n + g + \delta) k (t)
$$
$$
\dot {k} (t) = s f (k (t)) - (n + g + \delta) k (t)
$$
- Rate of change of  $k(t)$  difference between:
- Actual investment:  $sf(k(t))$
- Break-even investment:  $(n + g + \delta)k(t)$
- Notice that break-even investment determined by:
Population growth:  $n$
- Productivity growth:  $g$
Depreciation:  $\delta$
- Intuition: capital per effective worker must keep up with amount of effective labor (which is growing due to  $n$  and  $g$ )
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/f31936b242011a59801bce603bfc88f1ceeaaf7cd1834d517a1cea06936dc9a7.jpg)
FIGURE 1.2 Actual and break-even investment
Source: Romer (2019)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/1862601e031a7eedd2acf7f1e47b41f07f28e4dd4683485c723c8a53789d0abb.jpg)
FIGURE 1.3 The phase diagram for  $k$  in the Solow model
Source: Romer (2019)
- Inada conditions and  $f''(k) < 0$  imply that actual investment and break-even investment lines cross once (with actual investment crossing from above)
This point is denoted  $k^{*}$
$k^{*}$  is a steady state for  $k(t)$
Economy converges to  $k^{*}$  globally (i.e., from any (positive) starting point)
- At steady state  $k(t)$  is constant
- This implies that  $K = ALk$  grows at a rate  $n + g$ .
- Since both  $K$  and  $AL$  grow at  $n + g$ ,  $Y$  also grows at rate  $n + g$ .
- Furthermore,  $K / L$  and  $Y / L$  grow at rate  $g$
Economy converges to a balanced growth path
These conclusion flow from fact that the growth rate of the product of two variables is the sum of their growth rates. See, Problem 1.1 in Romer (2019).
- Capital accumulation cannot serve as a source of long-run growth in living standards
- If  $g = 0$ , growth in  $Y / L$  is zero
Why?
- Capital accumulation cannot serve as a source of long-run growth in living standards
If  $g = 0$ , growth in  $Y / L$  is zero
Why? Because of diminishing returns to capital.
- Diminishing returns mean actual investment eventually cannot keep up with break-even investment
This gives rise to a steady state with property listed above
- Long-run growth must come from  $A\left( t\right)$
One can use the Solow model to think about changes in:
The savings rate s
The population growth rate  $n$
The growth rate of technology  $g$
The depreciation rate  $\delta$
Such exercises are "other things equal" type exercises
- Let's consider a permanent increase in the savings rate
- How does this affect actual and break-even investment curves?
FIGURE 1.4 The effects of an increase in the saving rate on investment
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/5452eb74d3f33646d51ce0ea60ee2734b20182446adc9214621353c0657e21a0.jpg)
Source: Romer (2019)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/b1b7fe145ce1a68c876fa2c4cdcc4146da7b7b21b99bf35ec148fa92f1081170.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/fd5c5411854fcaad885ebac602e443e2e038ab5eb0293207df5a253816e8344c.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/1b77f793ccb2fd4d234672ebae454af30810228188b5004b1c4d642781e20447.jpg)
Source: Romer (2019)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/7a1d6fc47f53630d94d08e64f1263395e5ad5513314e0e7190b7110268f7d3df.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/b53086f55c37a56a1630780acf9dccc1603ec1bc40d470d5fa962b726b1ccc84.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/619c3b7a859cf22bb14bf31efc48e3094a7658e28d1109c69c1eb20641c34020.jpg)
FIGURE 1.5 The effects of an increase in the saving rate
Source: Romer (2019)
- Increase in savings rate has a "level effect" on per capita output
- It does not have a "growth effect"
Suppose half the capital stock of a country is destroyed
- What does Solow model predict about output
In the short run?
In the long run?
- Suppose half the capital stock of a country is destroyed
- What does Solow model predict about output
In the short run?
In the long run?
- When has this happened in the real world?
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/d424b0467651a0ae5c51bf4b8cd008a02a09d9e60ff4ab3555000955a306e0b1.jpg)
Log GDP per Person for Germany
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/f57c818271586ee5f2e2d30e6b601a3e5a63b7a9b5453821c416a20b1ad9a9e6.jpg)
Log GDP per Person for Germany
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/319baab9511fe65fa782666486f10aff310f6d50588205bf099f9e49705bb191.jpg)
Log GDP per Person in Japan
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/2fc7bcd52f4e0a2d64cff1b54c1d45cc65f80af9c70d511f153c16eded7f0db2.jpg)
Log GDP per Person in the U.S.
# Transition Dynamics

Our focus has been on long run effects

- Solow model also has interesting implications about "short run"
Start with
$$
\dot {k} (t) = s f (k (t)) - (n + g + \delta) k (t)
$$
- Divide by  $k(t)$ :
$$
\frac {\dot {k} (t)}{k (t)} = \frac {s f (k (t))}{k (t)} - (n + g + \delta)
$$
- Left-hand-side is growth rate of capital
- $(n + g + \delta)$  is constant as a function of  $k(t)$
While
$$
\lim  _ {k \rightarrow 0} \frac {s f (k (t))}{k (t)} = \infty \quad \lim  _ {k \rightarrow \infty} \frac {s f (k (t))}{k (t)} = 0
$$
$$
\frac {d}{d k} \frac {s f (k)}{k} = - s \frac {f (k) / k - f ^ {\prime} (k)}{k} <   0
$$

(numerator is average product of capital minus marginal product of capital)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/1166d71656721acceaeeb43d5a1f117512342b3ce15cd10e4d5cb2faf60e95c6.jpg)

Source: Barro and Sala-I-Martin (2004). Figure is for  $g = 0$ . Adding  $g > 0$  would just shift up horizontal line.

- Differentiate  $y(t) = f(k(t))$  with respect to  $t$
$$
\dot {y} (t) = f ^ {\prime} (k (t)) \dot {k} (t)
$$
- Divide through by  $y(t)$ :
$$
\frac {\dot {y} (t)}{y (t)} = \frac {f ^ {\prime} (k (t)) k (t)}{f (k (t))} \frac {\dot {k} (t)}{k (t)}
$$
- Let  $g_{x}$  denote the growth rate of  $x_{t}$  and  $\alpha_{K}(k(t)) = f'(k(t)) k(t) / f(k(t))$ .
$$
\mathbf {g} _ {y} = \alpha_ {K} (k (t)) \mathbf {g} _ {k}
$$

$(\alpha_{K}(k(t))$  is the elasticity of output with respect to capital.)

Growth rate of output is proportional to growth rate of capital

- Countries that are below their steady state level of capital/output should grow faster than countries that are above their steady state.
- If countries share same fundamentals, Solow model predicts absolute convergence
- More generally, Solow model predicts conditional convergence
- Analyzed data for 16 industrialized countries for which long historical data were available
Estimated:
$$
\log \tilde {y} _ {i, 1 9 7 9} - \log \tilde {y} _ {i, 1 8 7 0} = a + b \log \tilde {y} _ {i, 1 8 7 0} + \epsilon_ {i}
$$ where  $\tilde{y}_{i,t}$  denotes output per person in country  $i$  at time  $t$
- Negative  $b$  indicates convergence (initial poor grow faster)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/bdfb3ff861382ba896b84326010dd6da097e6e6b11f95d1130e6ae44ceb77a22.jpg)
FIGURE 1.7 Initial income and subsequent growth in Baumol's sample (from DeLong, 1988; used with permission)
Source: Romer (2019)
- De Long (1988) presented two important critiques of Baumol (1986)
Sample selection:
- Baumol chose countries that were ex post rich
- Any difference in initial conditions will yield convergence
Data more likely to be available for ex post successful countries
De Long selects countries based on initial GDP per capita
Measurement error:
- Initial income shows up both on LHS and RHS
- Measurement error in initial income creates bias toward convergence
FIGURE 1.8 Initial income and subsequent growth in the expanded sample (from DeLong, 1988; used with permission)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/8eaac656a04caf1bdf906b85604480a496a7b24e10acaaec607faaa4be0d2d1f.jpg)
Source: Romer (2019)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/475b314225382f9762f7b15969b7d0a206163d9ad98df9bd7a1d732c3a2a1186.jpg)
Growth rate, 1960-2011
Fig. 25 Convergence in the OECD. Source: The Penn World Tables 8.0. Countries in the OECD as of 1970 are shown.
Source: Jones (2016)
Figure 1. Convergence of Personal Income across U.S. States: 1880 Income and Income Growth from 1880 to 1988
Annual growth rate, 1880-1988 (percent)
Log of 1880 per capita personal income
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/db223ead42791b282322ad7025b41a316c93f39b82928ca469ab057eb5ad6bba.jpg)
Sources: Bureau of Economic Analysis (1984), Easternin (1960a, 1960b), and Survey of Current Business, various issues. The postal abbreviation for each state is used to plot the figure. Oklahoma, Alaska, and Hawaii are excluded from the analysis.
Growth rate, 1960-2011
Fig. 26 The lack of convergence worldwide. Source: The Penn World Tables 8.0.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/2b7134cfaaa62a7e119ff7f7d964b75798ca976562b8d663746ac622c788a402.jpg)
GDP per person  $(\mathrm{US} = 1)$  in 1960
Source: Jones (2016)
- Solow model implies:
$$

\dot {k} (t) = s f (k (t)) - (n + g + \delta) k (t)

$$
- If  $f(k(t)) = k(t)^{\alpha}$ , steady state:
$$ k ^ {*} = \left(\frac {s}{n + g + \delta}\right) ^ {1 / (1 - \alpha)}
$$
- But  $k = K / AL$  is not observable (A is not observable)
- Let's rewrite the steady state in terms of  $K / L$
$$
\left(\frac {K}{L}\right) ^ {*} = A \left(\frac {s}{n + g + \delta}\right) ^ {1 / (1 - \alpha)}
$$
- Model implies convergence conditional on:  $A, s, n, g, \delta$
TABLE III TESTS FOR UNCONDITIONAL CONVERGENCE
<table><tr><td colspan="4">Dependent variable: log difference GDP per working-age person 1960–1985</td></tr><tr><td>Sample:</td><td>Non-oil</td><td>Intermediate</td><td>OECD</td></tr><tr><td>Observations:</td><td>98</td><td>75</td><td>22</td></tr><tr><td rowspan="2">CONSTANT</td><td>-0.266</td><td>0.587</td><td>3.69</td></tr><tr><td>(0.380)</td><td>(0.433)</td><td>(0.68)</td></tr><tr><td rowspan="2">ln(Y60)</td><td>0.0943</td><td>-0.00423</td><td>-0.341</td></tr><tr><td>(0.0496)</td><td>(0.05484)</td><td>(0.079)</td></tr><tr><td>R²</td><td>0.03</td><td>-0.01</td><td>0.46</td></tr><tr><td>s.e.e.</td><td>0.44</td><td>0.41</td><td>0.18</td></tr><tr><td rowspan="2">Implied λ</td><td>-0.00360</td><td>0.00017</td><td>0.0167</td></tr><tr><td>(0.00219)</td><td>(0.00218)</td><td>(0.0023)</td></tr></table>
Note. Standard errors are in parentheses. Y60 is GDP per working-age person in 1960.
Source: Mankiw, Romer, Weil (1992)
TABLE IV TESTS FOR CONDITIONAL CONVERGENCE
<table><tr><td colspan="4">Dependent variable: log difference GDP per working-age person 1960–1985</td></tr><tr><td>Sample:</td><td>Non-oil</td><td>Intermediate</td><td>OECD</td></tr><tr><td>Observations:</td><td>98</td><td>75</td><td>22</td></tr><tr><td rowspan="2">CONSTANT</td><td>1.93</td><td>2.23</td><td>2.19</td></tr><tr><td>(0.83)</td><td>(0.86)</td><td>(1.17)</td></tr><tr><td rowspan="2">ln(Y60)</td><td>-0.141</td><td>-0.228</td><td>-0.351</td></tr><tr><td>(0.052)</td><td>(0.057)</td><td>(0.066)</td></tr><tr><td rowspan="2">ln(I/GDP)</td><td>0.647</td><td>0.644</td><td>0.392</td></tr><tr><td>(0.087)</td><td>(0.104)</td><td>(0.176)</td></tr><tr><td rowspan="2">ln(n + g + δ)</td><td>-0.299</td><td>-0.464</td><td>-0.753</td></tr><tr><td>(0.304)</td><td>(0.307)</td><td>(0.341)</td></tr><tr><td>R²</td><td>0.38</td><td>0.35</td><td>0.62</td></tr><tr><td>s.e.e.</td><td>0.35</td><td>0.33</td><td>0.15</td></tr><tr><td rowspan="2">Implied λ</td><td>0.00606</td><td>0.0104</td><td>0.0173</td></tr><tr><td>(0.00182)</td><td>(0.0019)</td><td>(0.0019)</td></tr></table>
Note. Standard errors are in parentheses. Y60 is GDP per working-age person in 1960. The investment and population growth rates are averages for the period 1960-1985.  $(g + \delta)$  is assumed to be 0.05.
Source: Mankiw, Romer, Weil (1992)
TABLEV TESTS FOR CONDITIONAL CONVERGENCE
<table><tr><td colspan="4">Dependent variable: log difference GDP per working-age person 1960–1985</td></tr><tr><td>Sample:</td><td>Non-oil</td><td>Intermediate</td><td>OECD</td></tr><tr><td>Observations:</td><td>98</td><td>75</td><td>22</td></tr><tr><td rowspan="2">CONSTANT</td><td>3.04</td><td>3.69</td><td>2.81</td></tr><tr><td>(0.83)</td><td>(0.91)</td><td>(1.19)</td></tr><tr><td rowspan="2">ln(Y60)</td><td>-0.289</td><td>-0.366</td><td>-0.398</td></tr><tr><td>(0.062)</td><td>(0.067)</td><td>(0.070)</td></tr><tr><td rowspan="2">ln(I/GDP)</td><td>0.524</td><td>0.538</td><td>0.335</td></tr><tr><td>(0.087)</td><td>(0.102)</td><td>(0.174)</td></tr><tr><td rowspan="2">ln(n + g + δ)</td><td>-0.505</td><td>-0.551</td><td>-0.844</td></tr><tr><td>(0.288)</td><td>(0.288)</td><td>(0.334)</td></tr><tr><td rowspan="2">ln(SCHOOL)</td><td>0.233</td><td>0.271</td><td>0.223</td></tr><tr><td>(0.060)</td><td>(0.081)</td><td>(0.144)</td></tr><tr><td>R²</td><td>0.46</td><td>0.43</td><td>0.65</td></tr><tr><td>s.e.e.</td><td>0.33</td><td>0.30</td><td>0.15</td></tr><tr><td rowspan="2">Implied λ</td><td>0.0137</td><td>0.0182</td><td>0.0203</td></tr><tr><td>(0.0019)</td><td>(0.0020)</td><td>(0.0020)</td></tr></table>
Note. Standard errors are in parentheses. Y60 is GDP per working-age person in 1960. The investment and population growth rates are averages for the period 1960-1985.  $(g + \delta)$  is assumed to be 0.05. SCHOOL is the average percentage of the working-age population in secondary school for the period 1960-1985.
Source: Mankiw, Romer, Weil (1992)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/1905a6ea33c4b472ccf54624cf59e32073e88869c079bae61892b819dddcc619.jpg)
Source: Mankiw, Romer, Weil (1992)
C. Conditional on saving, population growth and human capital
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/58629b4ea9e12cf3788bf303946b378c06652cafc71005610a514e0ff4901f78.jpg)
Source: Mankiw, Romer, Weil (1992)
$$
\left(\frac {K}{L}\right) ^ {*} = A \left(\frac {s}{n + g + \delta}\right) ^ {1 / (1 - \alpha)}
$$
- Mankiw-Romer-Weil 92 condition on  $s, n$ , schooling
- But what about  $A$ ?
- Perhaps differences in  $A$  are not needed to explain cross-country growth
- We will come back to this when we consider development accounting in a few lectures
Unconditional convergence:
- Within OECD countries
- Within US states, Japanese prefectures, etc.
Conditional convergence across all countries
Is convergence the dominant fact about growth?
- Zooming out in time there has clearly been huge divergence
Before 1500, most countries relatively equally poor
- Then some countries became rich and others didn't
Pritchett (1997): Divergence, Big Time
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/7d1bdb08f773a9cb6f0ed29296e27ae2d5338ed396f8e6804254b3aa04309dd9.jpg)
FIGURE 1A. WESTERN EUROPE, EASTERN EUROPE, AND ASIA: URBANIZATION RATES, WEIGHTED BY POPULATION, 1300-1850
Source: Acemoglu, Johnson, and Robinson (2005)
- Lack of reliable data for less developed countries in 19th century is a problem for divergence calculations
- But we can put a conservative lower bound on per capita GDP
- Argues that 250 PPP is conservative (1985 dollars)
Lower than lowest sustained measurements on record
Less than enough to buy 2000 calories a day
- Backcasts current GDP per capita subject to lower bound
(showing only selected countries)
Figure 1
Simulation of Divergence of Per Capita GDP, 1870-1985
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/e7abfc3d5c88f41f50e38a7656f2db0aeeaa60e5b056be81160273f32cfe3b95.jpg)
Source: Pritchett (1997)
Table 2 Estimates of the Divergence of Per Capita Incomes Since 1870
<table><tr><td></td><td>1870</td><td>1960</td><td>1990</td></tr><tr><td>USA (P$)</td><td>2063</td><td>9895</td><td>18054</td></tr><tr><td>Poorest (P$)</td><td>250</td><td>257</td><td>399</td></tr><tr><td></td><td>(assumption)</td><td>(Ethiopia)</td><td>(Chad)</td></tr><tr><td>Ratio of GDP per capita of richest to poorest country</td><td>8.7</td><td>38.5</td><td>45.2</td></tr><tr><td>Average of seventeen "advanced capitalist" countries from Maddison (1995)</td><td>1757</td><td>6689</td><td>14845</td></tr><tr><td>Average LDCs from PWT5.6 for 1960, 1990 (imputed for 1870)</td><td>740</td><td>1579</td><td>3296</td></tr><tr><td>Average "advanced capitalist" to average of all other countries</td><td>2.4</td><td>4.2</td><td>4.5</td></tr><tr><td>Standard deviation of natural log of per capita incomes</td><td>.51</td><td>.88</td><td>1.06</td></tr><tr><td>Standard deviation of per capita incomes</td><td>P$459</td><td>P$2,112</td><td>P\$3,988</td></tr><tr><td>Average absolute income deficit from the leader</td><td>P$1286</td><td>P$7650</td><td>P\$12,662</td></tr></table>
Notes: The estimates in the columns for 1870 are based on backcasting GDP per capita for each country using the methods described in the text assuming a minimum of  $P\$  250 $. If instead of that method, incomes in 1870 are backcast with truncation at$ \pmb{P}\ $250\$ , the 1870 standard deviation is .64 (as reported in Figure 1).
Source: Pritchett (1997). 1870 estimates for LDC calculated by "smushing" distribution between lower bound and US.
- Most work on convergence focuses on countries
- But for welfare calculations we should focus on people
- Two complications:
Countries are of vastly different sizes
(e.g., China more populous than all of Africa ( $\approx$ 50 countries))
There is a distribution of income within countries
- Attempts to calculate World Distribution of Income from 1970-2000
Mean income level from NIPA data for each country
Uses micro-surveys to construct distribution within country
- Subtitle of paper: "Falling Poverty, and … Convergence, Period"
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/53257335035cd20578ede33fd61b5b5824760e7db9e4042152c4de1384eb0236.jpg)
FIGURE Ia Growth Versus Initial Income (Unweighted)
Source: Sala-i-Martin (2006). Growth 1970-2000 on level in 1970.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/4658034f71f460a1fbf3c18eae132f9193d4d6fc506ae958468fa344ce488402.jpg)
FIGURE Ib
Growth Versus Initial Income (Population-Weighted)
Source: Sala-i-Martin (2006). Growth 1970-2000 on level in 1970.
FIGURE IIa Distribution of Income in China
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/2b144e398e4d85ec9e54523ccba92e83b38978c04e9dc93e8a72973eefc8fc29.jpg)
Source: Sala-i-Martin (2006)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/a7cc4956a0c8bf2b080e170bb320ce47830c89d478bf5538ac7ee28deb7d77fd.jpg)
FIGURE IIb Distribution of Income in India
Source: Sala-i-Martin (2006)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/2dd896e4a3c57b27af66f71062cc99250f463c3fa41adcfd96a50c89432c47b5.jpg)
FIGURE Iie Distribution of Income in Brazil
Source: Sala-i-Martin (2006)
FIGURE IIIa
The WDI and Individual Country Distributions in 1970
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/17d2c6bff23b4de53214c1d366bcac78ab8b8d6b6d7e21c920e0fa17b6f75778.jpg)
Source: Sala-i-Martin (2006)
FIGURE IIIb
The WDI and Individual Country Distributions in 2000
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/ac872ad54531aec62fa9e56b07f6f1e80f655d27007e0d2b990a9c32f0803167.jpg)
Source: Sala-i-Martin (2006)
FIGURE VI
Poverty Rates
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/768b944b8e876b4a6dfd9762a5631e37f900837c879933e03b8a57e1b0587825.jpg)
Source: Sala-i-Martin (2006)
TABLEI POVERTY RATES AND HEADCOUNTS FOR VARIOUS POVERTY LINES
<table><tr><td rowspan="2">Poverty line</td><td rowspan="2">Definition</td><td colspan="7">Poverty rates</td><td rowspan="2">Change 1970-2000</td></tr><tr><td>1970</td><td>1975</td><td>1980</td><td>1985</td><td>1990</td><td>1995</td><td>2000</td></tr><tr><td>\$495</td><td>WB Poverty Line ($1/Day)</td><td>15.4\%</td><td>14.0\%</td><td>11.9\%</td><td>8.8\%</td><td>7.3\%</td><td>6.2\%</td><td>5.7\%</td><td>-0.097</td></tr><tr><td>$570</td><td>$1.5/Day</td><td>20.2\%</td><td>18.5\%</td><td>15.9\%</td><td>12.1\%</td><td>10.0\%</td><td>8.0\%</td><td>7.0\%</td><td>-0.131</td></tr><tr><td>$730</td><td>$2/Day</td><td>29.6\%</td><td>27.5\%</td><td>24.2\%</td><td>19.3\%</td><td>16.2\%</td><td>12.6\%</td><td>10.6\%</td><td>-0.190</td></tr><tr><td>$1,140</td><td>\$3/Day</td><td>46.6\%</td><td>44.2\%</td><td>40.3\%</td><td>34.7\%</td><td>30.7\%</td><td>25.0\%</td><td>21.1\%</td><td>-0.254</td></tr><tr><td rowspan="2"></td><td rowspan="2"></td><td colspan="7">Poverty head counts (thousands)</td><td rowspan="2">Change 1970-2000</td></tr><tr><td>1970</td><td>1975</td><td>1980</td><td>1985</td><td>1990</td><td>1995</td><td>2000</td></tr><tr><td>Population</td><td></td><td>3,472,485</td><td>3,830,514</td><td>4,175,420</td><td>4,539,477</td><td>4,938,177</td><td>5,305,563</td><td>5,660,342</td><td>2,187,858</td></tr><tr><td>Poverty line</td><td>Definition</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td>WB Poverty Line ($1/Day)</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>$495</td><td></td><td>533,861</td><td>536,379</td><td>498,032</td><td>399,527</td><td>362,902</td><td>327,943</td><td>321,518</td><td>-212,343</td></tr><tr><td>$570</td><td>$1.5/Day</td><td>699,896</td><td>708,825</td><td>665,781</td><td>548,533</td><td>495,221</td><td>424,626</td><td>398,403</td><td>-301,493</td></tr><tr><td>$730</td><td>$2/Day</td><td>1,028,532</td><td>1,052,761</td><td>1,008,789</td><td>874,115</td><td>798,945</td><td>671,069</td><td>600,275</td><td>-428,257</td></tr><tr><td>$1,140</td><td>$3/Day</td><td>1,616,772</td><td>1,691,184</td><td>1,681,712</td><td>1,575,415</td><td>1,517,778</td><td>1,327,635</td><td>1,197,080</td><td>-419,691</td></tr></table>
Poverty Rates are the percentages of citizens with incomes below the corresponding poverty line. Poverty head counts are constructed as the total number of people with incomes lower than the corresponding poverty line. The first poverty line (called WB poverty or 1\$/Day) line is the poverty line originally used by the World Bank and corresponds to 1.05/Day in 1986 prices. This corresponds to 490 per year in 1996 prices. The second poverty line is the one used by Bhalla [2002], which increases the WB by 15 percent to adjust for the distribution. This corresponds to 570 per year or, roughly, 1.5/day. The third and fourth lines correspond to 2/Day and \$3/Day in 1996 prices (\$730 and \$1140 per year, respectively).
Source: Sala-i-Martin (2006)
TABLE II POVERTY BY REGION (ORIGINAL WB POVERTY LINE, \$1.5/DAY OR \$570/YEAR)
<table><tr><td>Poverty Rates</td><td>2000 population</td><td>1970</td><td>1975</td><td>1980</td><td>1985</td><td>1990</td><td>1995</td><td>2000</td><td>Change 1970-2000</td><td>Change 1970s</td><td>Change 1980s</td><td>Change 1990s</td></tr><tr><td>World</td><td>5,660,040</td><td>0.202</td><td>0.185</td><td>0.159</td><td>0.121</td><td>0.100</td><td>0.080</td><td>0.070</td><td>-0.132</td><td>-0.043</td><td>-0.059</td><td>-0.030</td></tr><tr><td>East Asia</td><td>1,704,242</td><td>0.327</td><td>0.278</td><td>0.217</td><td>0.130</td><td>0.102</td><td>0.038</td><td>0.024</td><td>-0.303</td><td>-0.110</td><td>-0.115</td><td>-0.078</td></tr><tr><td>South Asia</td><td>1,327,455</td><td>0.303</td><td>0.297</td><td>0.267</td><td>0.178</td><td>0.103</td><td>0.057</td><td>0.025</td><td>-0.277</td><td>-0.036</td><td>-0.164</td><td>-0.078</td></tr><tr><td>Africa</td><td>608,221</td><td>0.351</td><td>0.360</td><td>0.372</td><td>0.426</td><td>0.437</td><td>0.505</td><td>0.488</td><td>0.137</td><td>0.020</td><td>0.065</td><td>0.051</td></tr><tr><td>Latin America</td><td>499,716</td><td>0.103</td><td>0.056</td><td>0.030</td><td>0.036</td><td>0.041</td><td>0.038</td><td>0.042</td><td>-0.061</td><td>-0.074</td><td>0.012</td><td>0.001</td></tr><tr><td>Eastern Europe</td><td>436,373</td><td>0.013</td><td>0.005</td><td>0.004</td><td>0.001</td><td>0.004</td><td>0.010</td><td>0.010</td><td>-0.003</td><td>-0.009</td><td>0.001</td><td>0.006</td></tr><tr><td>MENA</td><td>220,026</td><td>0.107</td><td>0.092</td><td>0.036</td><td>0.016</td><td>0.012</td><td>0.007</td><td>0.006</td><td>-0.102</td><td>-0.071</td><td>-0.025</td><td>-0.006</td></tr><tr><td>Poverty Headcounts</td><td>2000 population</td><td>1970</td><td>1975</td><td>1980</td><td>1985</td><td>1990</td><td>1995</td><td>2000</td><td>Change 1970-2000</td><td>Change 1970s</td><td>Change 1980s</td><td>Change 1990s</td></tr><tr><td>World</td><td>5,660,040</td><td>699,896</td><td>708,825</td><td>665,781</td><td>548,533</td><td>495,221</td><td>424,626</td><td>398,403</td><td>-301,493</td><td>-34,115</td><td>-170,560</td><td>-96,818</td></tr><tr><td>East Asia</td><td>1,704,242</td><td>350,263</td><td>334,266</td><td>281,914</td><td>182,205</td><td>154,973</td><td>61,625</td><td>41,071</td><td>-309,192</td><td>-68,349</td><td>-126,941</td><td>-113,902</td></tr><tr><td>South Asia</td><td>1,327,455</td><td>211,364</td><td>234,070</td><td>236,366</td><td>176,536</td><td>113,661</td><td>69,582</td><td>33,438</td><td>-177,926</td><td>25,002</td><td>-122,705</td><td>-80,223</td></tr><tr><td>Africa</td><td>608,221</td><td>93,528</td><td>109,491</td><td>129,890</td><td>172,175</td><td>204,364</td><td>269,733</td><td>296,733</td><td>203,205</td><td>36,361</td><td>74,474</td><td>92,369</td></tr><tr><td>Latin America</td><td>499,716</td><td>27,897</td><td>17,014</td><td>10,195</td><td>13,836</td><td>17,406</td><td>17,379</td><td>21,012</td><td>-6,885</td><td>-17,702</td><td>7,211</td><td>3,607</td></tr><tr><td>Eastern Europe</td><td>436,373</td><td>4,590</td><td>1,991</td><td>1,418</td><td>369</td><td>1,906</td><td>4,238</td><td>4,402</td><td>-188</td><td>-3,172</td><td>488</td><td>2,496</td></tr><tr><td>MENA</td><td>220,026</td><td>11,250</td><td>10,954</td><td>4,991</td><td>2,507</td><td>2,101</td><td>1,466</td><td>1,264</td><td>-9,986</td><td>-6,259</td><td>-2,890</td><td>-837</td></tr></table>
Source: Sala-i-Martin (2006)
FIGURE VII
Regional Poverty Rates (1.5 a Day Line)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/cb6661dbb786c363a788802b5664d93a59a65100a51b6bf6a931385d0e388798.jpg)
Source: Sala-i-Martin (2006)
Figure 1 Median Real GDP Per Capita Growth Rates in Sub-Saharan Africa, 1980-2019
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/41626d10197ee25ad6ac530cc5822d46b341a038a9c66ac1798efffd0f0883bb.jpg)
Source: Archibong, Coulibaly, Okonjo-Iweala (2021)
FIGURE VIII
World Income Inequality: Gini
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/0d2342ad261853893bcba9205d26f8898bcec9a776cb6f9826bd793e2ba8899e.jpg)
Source: Sala-i-Martin (2006)
- New wave of research on income inequality since 2000
- Combines data from: national accounts, tax data, household surveys, inheritance records, etc.
- Tax data crucial to capture income shares at the top of the distribution
Key researchers include: Piketty, Saez, and Zucman
- Have developed World Inequality Database
FIGURE 1. Global income inequality, 1820-2020. Interpretation. The share of global income going to top  $10\%$  highest incomes at the world level has fluctuated around  $50 - 60\%$  between 1820 and 2020 (50\% in 1820, 60\% in 1910, 56\% in 1980, 61\% in 2000, 55\% in 2020), while the share going to the bottom  $50\%$  lowest incomes has generally been around or below  $10\%$  (14\% in 1820, 7\% in 1910, 5\% in 1980, 6\% in 2000, 7\% in 2020). Global inequality has always been very large. It rose between 1820 and 1910 and shows little long-run trend between 1910 and 2020.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/30d83dc9ea2780781699f74ad81b5aae51598aa51985401834f8ce3251ac3cbf.jpg)
Sources and series: Chancel and Piketty (2021). See wid.world/longrun.
Source: Chancel and Piketty (2021)
FIGURE 2. Global income inequality, 1820-2020: ratio T10/B50. Interpretation. Global inequality, as measured by the ratio T10/B50 between the average income of the top  $10\%$  and the average income of the bottom  $50\%$ , more than doubled between between 1820 and 1910, from less than 20 to about 40, and stabilized around 40 between 1910 and 2020. It is too early to say whether the decline in global inequality observed since 2008 will continue.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/ce046bf435ca0d0c07d08185e9963c983a7b8f5671739fbb9aae0c90c2298f6a.jpg)
Sources and series: Chancel and Piketty (2021). See wid.world/longrun.
Source: Chancel and Piketty (2021)
FIGURE 3. Global income inequality, 1820-2020: Gini index. Interpretation. Global inequality, as measured by the global Gini coefficient, rose from about 0.6 in 1820 to about 0.7 in 1910, and then stabilized around 0.7 between 1910 and 2020. It is too early to say whether the decline in the global Gini coefficient observed since 2000 will continue.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/7ce2c652645e7d21e37af645430cec97446d134241d5f87d72eefdfa05731583.jpg)
Sources and series: Chancel and Piketty (2021). See wid.world/longrun.
Source: Chancel and Piketty (2021)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/135ab7f131bae0d3fbb2bc1244ec75b54ccd4bf472a96e01e0ca15f03229a343.jpg)
FIGURE 4. Global income inequality, 1820-2020: between-countries versus within-countries inequality (ratio T10/B50). Interpretation. Between-country inequality, as measured by the ratio T10/B50 between the average incomes of the top  $10\%$  and the bottom  $50\%$  (assuming everybody within a country as the same income), rose between 1820 and 1980 and strongly declined since then. Within-country inequality, as measured also by the ratio T10/B50 between the average incomes of the top  $10\%$  and the bottom  $50\%$  (assuming all countries have the same average income), rose slightly between 1820 and 1910, declined between 1910 and 1980, and rose since 1980.
Sources and series: Chancel and Piketty (2021). See wid.world/longrun.
Source: Chancel and Piketty (2021)
World Inequality Database adds tax data
Tax data great for rich countries
Essentially no tax data for Africa
- $0.5\%$  of tax units in China,  $2\%$  of tax units in India
Household surveys suffer from underreporting
- Earlier work adjusts mean … but may affect distribution
- Pinkovskiy et al. (2024) use regional data to assess effect on distribution
- Growing importance of underreporting of the poor
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/6a91dfe741a3cf6c2979831f5e2ef54c0ad84ed4dbe0312f91618df57a0d4392.jpg)
Figure 8
Source: Pinkovskiy et al. (2024). Blue lines are their preferred estimates. Green lines are WID.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/b83b972f3d5a1fe64dc69dd04cf6813c7099d8074d6541b1a12be01d7737c06e.jpg)
Figure 9
Source: Pinkovskiy et al. (2024). Blue lines are their preferred estimates. Green lines are WID.
- What does Solow model imply about speed of convergence?
- If speed of convergence is fast:
- Most countries will be close to steady state (already mostly converged)
We can focus on steady state analysis
- Also interesting as a possible test of the model
- Start with:
$$
\dot {k} (t) = s f (k (t)) - (n + g + \delta) k (t)
$$
So  $\dot{k} (t)$  is a function of  $k(t)$
- Let's write this as  $\dot{k}(k)$  (dropping dependence on  $t$  for notational simplicity)
A first-order Taylor series approximation of  $\dot{k}(k)$  around  $k^*$  is:
$$
\dot {k} \simeq \left[ \left. \frac {\partial \dot {k} (k)}{\partial k} \right| _ {k = k ^ {*}} \right] (k - k ^ {*})
$$
$(\dot{k}$  is zero at  $k^{*})$
- Let's denote  $\lambda = -\partial \dot{k}(k) / \partial k|_{k=k^*}$  which means we have
$$
\dot {k} (t) \simeq - \lambda (k (t) - k ^ {*})
$$
- Linear first-order differential equation:
$$
\dot {k} (t) \simeq - \lambda (k (t) - k ^ {*})
$$
Solution:
$$ k (t) - k ^ {*} \simeq e ^ {- \lambda t} [ k (0) - k ^ {*} ]
$$
So,  $\lambda$  is rate of convergence
Half-life:
$$
0. 5 = e ^ {- \lambda t}
$$
$$ t = - \log (0. 5) / \lambda \simeq 0. 6 9 / \lambda
$$
Using:
$$
\dot {k} (k) = s f (k) - (n + g + \delta) k
$$ we get that
$$
\begin{array}{l} \lambda = - \left[ \frac {\partial \dot {k} (k)}{\partial k} \right| _ {k = k ^ {*}} \Bigg ] = - [ s f ^ {\prime} (k ^ {*}) - (n + g + \delta) ] \\ = (n + g + \delta) - \frac {(n + g + \delta) k ^ {*} f ^ {\prime} (k ^ {*})}{f (k ^ {*})} \\ = [ 1 - \alpha_ {K} (k ^ {*}) ] (n + g + \delta) \\ \end{array}
$$
- Speed of convergence of output is the same as capital
- Solow model implies that speed of convergence is
$$
\lambda = [ 1 - \alpha_ {K} (k ^ {*}) ] (n + g + \delta)
$$
Rough calibration:
- Technological growth:  $g = 0.02$
Population growth:  $n = 0.01$
Depreciation:  $\delta = 0.05$
Capital share:  $\alpha_{K}(k^{*}) = 1 / 3$
$$
\lambda = \frac {2}{3} (0. 0 1 + 0. 0 2 + 0. 0 5) = 0. 0 5 3
$$
This implies a half-life of 13 years
- Very fast convergence!!
- To measure speed of convergence in the data, must run convergence regressions in terms of annual growth rates
- Barro and Sala-I-Martin (1991, 1992) consider:
$$
\frac {1}{T} \log \left(\frac {y _ {i , t}}{y _ {i , t - T}}\right) = a - (1 - e ^ {- \beta T}) \frac {1}{T} \log y _ {i, t - T} + o t h e r v a r i a b l e s
$$
In this case,  $\beta$  is the annual rate of convergence
Table 1. Regressions for Personal Income across U.S. States, 1880-1988
<table><tr><td rowspan="2">Period</td><td colspan="2">Basic equation</td><td colspan="2">Equation with regional dummies</td><td colspan="2">Equation with regional dummies and sectoral variablesa</td></tr><tr><td>β</td><td>R2[ˆ]</td><td>β</td><td>R2[ˆ]</td><td>β</td><td>R2[ˆ]</td></tr><tr><td rowspan="2">1880–1900</td><td>0.0101</td><td>0.36</td><td>0.0224</td><td>0.62</td><td>0.0268</td><td>0.65</td></tr><tr><td>(0.0022)</td><td>[0.0068]</td><td>(0.0040)</td><td>[0.0054]</td><td>(0.0048)</td><td>[0.0053]</td></tr><tr><td rowspan="2">1900–20</td><td>0.0218</td><td>0.62</td><td>0.0209</td><td>0.67</td><td>0.0269</td><td>0.71</td></tr><tr><td>(0.0032)</td><td>[0.0065]</td><td>(0.0063)</td><td>[0.0062]</td><td>(0.0075)</td><td>[0.0060]</td></tr><tr><td rowspan="2">1920–30</td><td>-0.0149</td><td>0.14</td><td>-0.0122</td><td>0.43</td><td>0.0218</td><td>0.64</td></tr><tr><td>(0.0051)</td><td>[0.0132]</td><td>(0.0074)</td><td>[0.0111]</td><td>(0.0112)</td><td>[0.0089]</td></tr><tr><td rowspan="2">1930–40</td><td>0.0141</td><td>0.35</td><td>0.0127</td><td>0.36</td><td>0.0119</td><td>0.46</td></tr><tr><td>(0.0030)</td><td>[0.0073]</td><td>(0.0051)</td><td>[0.0075]</td><td>(0.0072)</td><td>[0.0071]</td></tr><tr><td rowspan="2">1940–50</td><td>0.0431</td><td>0.72</td><td>0.0373</td><td>0.86</td><td>0.0236</td><td>0.89</td></tr><tr><td>(0.0048)</td><td>[0.0078]</td><td>(0.0053)</td><td>[0.0057]</td><td>(0.0060)</td><td>[0.0053]</td></tr><tr><td rowspan="2">1950–60</td><td>0.0190</td><td>0.42</td><td>0.0202</td><td>0.49</td><td>0.0305</td><td>0.66</td></tr><tr><td>(0.0035)</td><td>[0.0050]</td><td>(0.0052)</td><td>[0.0048]</td><td>(0.0054)</td><td>[0.0041]</td></tr><tr><td rowspan="2">1960–70</td><td>0.0246</td><td>0.51</td><td>0.0135</td><td>0.68</td><td>0.0173</td><td>0.72</td></tr><tr><td>(0.0039)</td><td>[0.0045]</td><td>(0.0043)</td><td>[0.0037]</td><td>(0.0053)</td><td>[0.0036]</td></tr><tr><td rowspan="2">1970–80</td><td>0.0198</td><td>0.21</td><td>0.0119</td><td>0.36</td><td>0.0042</td><td>0.46</td></tr><tr><td>(0.0062)</td><td>[0.0060]</td><td>(0.0069)</td><td>[0.0056]</td><td>(0.0070)</td><td>[0.0052]</td></tr><tr><td rowspan="2">1980–88</td><td>-0.0060</td><td>0.00</td><td>-0.0005</td><td>0.51</td><td>0.0146</td><td>0.76</td></tr><tr><td>(0.0130)</td><td>[0.0142]</td><td>(0.0114)</td><td>[0.0103]</td><td>(0.0099)</td><td>[0.0075]</td></tr><tr><td colspan="7">Nine periods combinedb</td></tr><tr><td rowspan="2">β restricted</td><td>0.0175</td><td>…</td><td>0.0189</td><td>…</td><td>0.0224</td><td>…</td></tr><tr><td>(0.0013)</td><td></td><td>(0.0019)</td><td></td><td>(0.0022)</td><td></td></tr><tr><td>Likelihood-ratio statisticc</td><td>65.6</td><td>…</td><td>32.1</td><td>…</td><td>12.4</td><td>…</td></tr><tr><td>P-value</td><td>0.000</td><td></td><td>0.000</td><td></td><td>0.134</td><td></td></tr></table>
Source: Barro and Sala-I-Martin (1991)
TABLE 3
COMPARISON OF REGRESSIONS ACROSS COUNTRIES AND U.S. STATES
<table><tr><td>Sample</td><td>β</td><td>Additional Variables</td><td>R²</td><td>σ</td></tr><tr><td rowspan="2">1. 98 countries, 1960–85</td><td>-.0037</td><td>no</td><td>.04</td><td>.0183</td></tr><tr><td>(.0018)</td><td></td><td></td><td></td></tr><tr><td rowspan="2">2. 98 countries, 1960–85</td><td>.0184</td><td>yes</td><td>.52</td><td>.0133</td></tr><tr><td>(.0045)</td><td></td><td></td><td></td></tr><tr><td rowspan="2">3. 20 OECD countries, 1960–85</td><td>.0095</td><td>no</td><td>.45</td><td>.0051</td></tr><tr><td>(.0028)</td><td></td><td></td><td></td></tr><tr><td rowspan="2">4. 20 OECD countries, 1960–85</td><td>.0203</td><td>yes</td><td>.69</td><td>.0046</td></tr><tr><td>(.0068)</td><td></td><td></td><td></td></tr><tr><td rowspan="2">5. 48 U.S. states, 1963–86</td><td>.0218</td><td>no</td><td>.38</td><td>.0040</td></tr><tr><td>(.0053)</td><td></td><td></td><td></td></tr><tr><td rowspan="2">6. 48 U.S. states, 1963–86</td><td>.0236</td><td>yes</td><td>.61</td><td>.0033</td></tr><tr><td>(.0013)</td><td></td><td></td><td></td></tr></table>
Source: Barro and Sala-I-Martin (1992)
Barro's "iron law of convergence":  $2\%$  per year
This implies a half-life of 35 years
- Takes 115 years for  $90\%$  of convergence to occur
- Convergence is very slow in practice!!
- Convergence in basic Solow model way too fast:
$$
\lambda = [ 1 - \alpha_ {K} (k ^ {*}) ] (n + g + \delta)
$$
One way to reconcile model and data is to raise the value of  $\alpha_{K}(k^{*})$
- if  $\alpha_{K}(k^{*}) \simeq 0.75$  then convergence will be close to  $2\%$  per year
- $\alpha_{K}(k^{*})$  is the capital share (if markets are competitive)
- High  $\alpha_{K}(k^{*})$  may make sense if one includes human capital
- Revisit convergence after 25 years
$\bullet$  Absolute convergence since 2000
- Why? Proximate answer: Fundamentals have converged (i.e.,  $A, s, n$ , etc.)
Leaves deeper question of why fundamentals have converged
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/0964db12f9babadf84391bb580fdf80be63d3edf80fbc64f839e98c46d46373f.jpg)
Source: Kremer, Willis, You (2021)
Beta convergence
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/6b64fbae10f687b15ef9dcffba76d3ab6e81615ba89d9adca3cc01783915889e.jpg)
Source: Kremer, Willis, You (2021)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/a9daaa8d25a210f5f73393c1f76708ded634b691b2105cbf40f2a7b45aae46e3.jpg)
Source: Kremer, Willis, You (2021)
<table><tr><td>1st quartile</td><td>2nd quartile</td></tr><tr><td>3rd quartile</td><td>4th quartile</td></tr></table>
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/a748af3712c32e9297714fef5bc4dfb4e8052307df261417e026109ba015071e.jpg)
Figure 4: Convergence in growth correlates: level in 1985 versus change 1985-2015
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/8349819cea1a940ba3b97879026d813dbb94d3485a4081b3cc2aafe9feed5b04.jpg)
B: Investment
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/8d34065069536190b6320a5bc4961eea9da02e68c6a5c612269d5ef9e5dbc502.jpg)
A: Population Growth
D: Polity 2
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/82f1f116703e111b1622f261cf595d000c25ea0e1e056ecdc0188778ed80952c.jpg)
Notes: This figure plots  $\beta$ -convergence for growth six representative correlates (potential determinants of steady-state income) from 1985 (or the earliest available year) to 2015 against the baseline correlate level in 1985. We include six of the correlates which are comparable over time, for illustration: Population growth rate (\%), Investment rate (\% of GDP), Barro-Lee average years of education among 20-60-year-olds, Polity 2 score, government spending (\% of GDP), credit by the financial sector. The sample for each figure is the complete set of countries for which the relevant data is available in 1985 and 2015.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/eaf9be0aabaeafa299cdd97f81d76601b6eb2a232e3553049f853cf200ec5192.jpg)
E: Government Spending
C: Barro-Lee Years of Education
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/4c9e8d73d7670777e8bb190aa4d0224536bc1319d3be0f363f293515990fa06d.jpg)
F: Credit
Source: Kremer, Willis, You (2021)
# Appendix
# BEWARE THE LINEAR SCALE!
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/1d12d264c2e98be68f27d1232ba20d1f60a2b3e7ccb8dc82c69c20ea3f095dc7.jpg)
Source: Clark (2010)
Back
# THE NEOCLASSICAL GROWTH MODEL: AKA RAMSEY-CASS-KOOPMANS MODEL
#
University of California, Berkeley
Fall 2025
- Solow model makes many simplifying assumptions
- Now we relax exogenous savings rate assumption
Households maximize utility / firms maximize profits
Households and firms interact in competitive market
- Ramsey-Cass-Koopmans Model (or Ramsy model for short)
The same as in the Solow model
Production function:
$$
Y = F (K, A L)
$$
- A grows exogenously at rate  $g$
- $L$  grows exogenously at rate  $n$
Evolution of capital stock:
$$
\dot {K} (t) = Y (t) - C (t) L (t)
$$
No depreciation of capital (for simplicity)
- $C(t)$  denotes per capita consumption (but  $Y(t)$  is total output)
It is useful to rewrite
$$
\dot {K} (t) = Y (t) - C (t) L (t)
$$ in terms of capital, output, and consumption per effective unit of labor
A few lines of algebra yield
$$
\dot {k} (t) = f (k (t)) - c (t) - (n + g) k (t)
$$
Details
Large number of identical firms seek to maximize profits
- Hire workers and capital in competitive factor markets
- Can use  $A$  for free
Profit maximization implies that firms hire labor and capital to the point where their marginal product is equal to their price
- First order condition for capital:
$$
\frac {\partial F (K , A L)}{\partial K} = r (t)
$$ which implies
$$ f ^ {\prime} (k (t)) = r (t)
$$
Details
- First order condition for labor:
$$
\frac {\partial F (K , A L)}{\partial L} = W (t)
$$
- We can rewrite this as
$$ f (k (t)) - k (t) f ^ {\prime} (k (t)) = w (t)
$$ where  $w(t) = W(t) / A(t)$  (wage per effective unit of labor)
Details
One "representative" firm same as many small firms if
Common production function
- Constant returns to scale
Common factor prices
- Easy to derive for Cobb-Douglas case:
$$
Y = A K ^ {\alpha} L ^ {1 - \alpha}
$$
Maximizing behavior implies Details
$$
Y = A \left(\frac {\alpha}{1 - \alpha}\right) ^ {\alpha} \left(\frac {W}{r}\right) ^ {\alpha} L
$$
Since production is linear in  $L$ , firm has no optimal size
- Might as well be one large firm!
Large number  $H$  of households
Size of each household grows at rate  $n$
Each member supplies one unit of labor
- Initial capital holdings  $K(0) / H$
Household rents capital to firms
Key household choice:
- How to divide income between consumption and savings
Households maximize utility
$$
U = \int_ {t = 0} ^ {\infty} e ^ {- \rho t} u (C (t)) \frac {L (t)}{H} d t
$$ where
$$ u (C (t)) = \frac {C (t) ^ {1 - \theta}}{1 - \theta}
$$
$\rho$  is discount rate
- $u(\cdot)$  gives each member's utility
- $L\left( t\right) /H$  is the number of household members
- $1 / \theta$  is elasticity of intertemporal substitution
Household's intertemporal budget constraint:
Present value of consumption less than or equal to present value of income plus initial wealth
Mathematically:
$$
\int_ {t = 0} ^ {\infty} e ^ {- R (t)} C (t) \frac {L (t)}{H} d t \leq \frac {K (0)}{H} + \int_ {t = 0} ^ {\infty} e ^ {- R (t)} W (t) \frac {L (t)}{H} d t
$$
Discounting with time-varying interest rate:
$$
R (t) = \int_ {\tau = 0} ^ {t} r (\tau) d \tau
$$
Why is this the budget constraint?
- This condition rules out Ponzi-schemes:
- Borrow today and consume
- Borrow more tomorrow to pay back principle and interest
- Do this forever
- Intertemporal budget constraint implies that
$$
\lim  _ {s \rightarrow \infty} e ^ {- R (s)} \frac {K (s)}{H} \geq 0
$$
(See Romer (2019, p. 54) for derivation)
- Ponzi schemes violate this condition
- Let's write household objective function in terms of consumption and labor per effective worker
$$
\begin{array}{l} \frac {C (t) ^ {1 - \theta}}{1 - \theta} = \frac {[ A (t) c (t) ] ^ {1 - \theta}}{1 - \theta} \\ = \frac {[ A (0) e ^ {g t} ] ^ {1 - \theta} c (t) ^ {1 - \theta}}{1 - \theta} \\ = A (0) ^ {1 - \theta} e ^ {(1 - \theta) g t} \frac {c (t) ^ {1 - \theta}}{1 - \theta} \\ \end{array}
$$
- Overall utility function becomes:
$$
\begin{array}{l} U = \int_ {t = 0} ^ {\infty} e ^ {- \rho t} \frac {C (t) ^ {1 - \theta}}{1 - \theta} \frac {L (t)}{H} d t \\ = \int_ {t = 0} ^ {\infty} e ^ {- \rho t} \left[ A (0) ^ {1 - \theta} e ^ {(1 - \theta) g t} \frac {c (t) ^ {1 - \theta}}{1 - \theta} \right] \frac {L (0) e ^ {n t}}{H} d t \\ = B \int_ {t = 0} ^ {\infty} e ^ {- \beta t} \frac {c (t) ^ {1 - \theta}}{1 - \theta} d t \\ \end{array}
$$ where
$$
B = A (0) ^ {1 - \theta} \frac {L (0)}{H} \quad \beta = \rho - n - (1 - \theta) g
$$
A similar change of variables for the budget constraint yields:
$$
\int_ {t = 0} ^ {\infty} e ^ {- R (t)} c (t) e ^ {(n + g) t} d t \leq k (0) + \int_ {t = 0} ^ {\infty} e ^ {- R (t)} w (t) e ^ {(n + g) t} d t
$$
- Maximize:
$$
U = B \int_ {t = 0} ^ {\infty} e ^ {- \beta t} \frac {c (t) ^ {1 - \theta}}{1 - \theta} d t
$$
- Subject to:
$$
\int_ {t = 0} ^ {\infty} e ^ {- R (t)} c (t) e ^ {(n + g) t} d t \leq k (0) + \int_ {t = 0} ^ {\infty} e ^ {- R (t)} w (t) e ^ {(n + g) t} d t
$$
Household's choice variable is the path for  $c(t)$
We form a Lagrangian:
$$
\begin{array}{l} \mathcal {L} = B \int_ {t = 0} ^ {\infty} e ^ {- \beta t} \frac {c (t) ^ {1 - \theta}}{1 - \theta} d t \\ + \lambda \left[ k (0) + \int_ {t = 0} ^ {\infty} e ^ {- R (t)} w (t) e ^ {(n + g) t} d t - \int_ {t = 0} ^ {\infty} e ^ {- R (t)} c (t) e ^ {(n + g) t} d t \right] \\ \end{array}
$$
- Differentiate this with respect to  $c(t)$ :
$$
B e ^ {- \beta t} c (t) ^ {- \theta} = \lambda e ^ {- R (t)} e ^ {(n + g) t}
$$
$$
B e ^ {- \beta t} c (t) ^ {- \theta} = \lambda e ^ {- R (t)} e ^ {(n + g) t}
$$
- Let's take logs:
$$
\log B - \beta t - \theta \log c (t) = \log \lambda - \int_ {\tau = 0} ^ {t} r (\tau) d \tau + (n + g) t
$$
- Differentiate both sides with respect to time
$$
- \beta - \theta \frac {\dot {c} (t)}{c (t)} = - r (t) + (n + g)
$$
- Rearrange and use definition of  $\beta$ :
$$
\frac {\dot {c} (t)}{c (t)} = \frac {r (t) - \rho - \theta g}{\theta}
$$
$$
\frac {\dot {c} (t)}{c (t)} = \frac {r (t) - \rho - \theta g}{\theta}
$$
- And for per capita consumption:
$$
\begin{array}{l} \frac {\dot {C} (t)}{C (t)} = \frac {\dot {A} (t)}{A (t)} + \frac {\dot {c} (t)}{c (t)} \\ = g + \frac {r (t) - \rho - \theta g}{\theta} \\ = \frac {r (t) - \rho}{\theta} \\ \end{array}
$$
- Consumption growth depends on  $r(t) - \rho$  and nothing else
$$
\frac {\dot {C} (t)}{C (t)} = \frac {r (t) - \rho}{\theta}
$$
- Consumption growth depends on  $r(t) - \rho$  and nothing else.
Why?
Why nothing else?
Why higher growth with higher  $r(t)$ ?
$$
\frac {\dot {C} (t)}{C (t)} = \frac {r (t) - \rho}{\theta}
$$
- Consumption growth depends on  $r(t) - \rho$  and nothing else.
Why?
Why nothing else?
Why higher growth with higher  $r(t)$ ?
- Embodies desire to smooth consumption (due to diminishing marginal utility)
Our derivation was somewhat heuristic
- More rigorous to use Hamiltonians / Maximum Principle
- Barro R.J. and X. Sala-I-Martin (2004): Economic Growth (Appendix A.3)
- Obstfeld, M. (1992): "Dynamic Optimization in Continuous-Time Economic Models (A Guide for the Perplexed)
- Acemoglu, D. (2009): Introduction to Modern Economic Growth (Chapter 7)
Household takes  $r(t)$  as given:
$$
\frac {\dot {c} (t)}{c (t)} = \frac {r (t) - \rho - \theta g}{\theta}
$$
- But in general equilibrium:
$$ r (t) = f ^ {\prime} (k (t))
$$
So we have that
$$
\frac {\dot {c} (t)}{c (t)} = \frac {f ^ {\prime} (k (t)) - \rho - \theta g}{\theta}
$$
- Two endogenous variables  $c\left( t\right) ,k\left( t\right)$
- Two dynamic equations:
$$
\frac {\dot {c} (t)}{c (t)} = \frac {f ^ {\prime} (k (t)) - \rho - \theta g}{\theta}
$$
$$
\dot {k} (t) = f (k (t)) - c (t) - (n + g) k (t)
$$
- Two boundary conditions:
- k(0) given (initial condition)
- Intertemporal budget constraint with equality (terminal condition)
- It is the fact that dynamic system has a terminal condition (rather than full set of initial conditions) that makes the system "forward looking".
$$
\frac {\dot {c} (t)}{c (t)} = \frac {f ^ {\prime} (k (t)) - \rho - \theta g}{\theta}
$$
$\dot{c} (t) = 0$  if  $f^{\prime}(k(t)) = \rho +\theta g$
- Recall that  $f^{\prime}(k)$  is decreasing in  $k$
- Let  $k^*$  denote  $k$  for which  $f'(k) = \rho + \theta g$ .
- Then  $\dot{c}(t) = 0$  if  $k(t) = k^*$ .
- $\dot{c}(t) > 0$  if  $f'(k(t)) > \rho + \theta g$  or equivalently  $k(t) < k^*$ .
- $\dot{c}(t) < 0$  if  $f'(k(t)) < \rho + \theta g$  or equivalently  $k(t) > k^*$ .
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/d63298a50ba0a15c214cc1fc395fcc4c8c980ca042f62e5e10fa436eb54b251b.jpg)
FIGURE 2.1 The dynamics of c
Source: Romer (2019)
$$
\dot {k} (t) = \underbrace {f (k (t)) - c (t)} _ {\text {I n v e s t m e n t}} - \underbrace {(n + g) k (t)} _ {\text {b r e a k e v e n i n v e s t m e n t}}
$$
- $\dot{k}(t) = 0$  if investment is equal to breakeven investment
Rearranging, we get that  $\dot{k} (t) = 0$  when
$$ c = f (k) - (n + g) k
$$
- Let's think about this as a function of  $k$
$f(0) = 0$  and  $(n + g)0 = 0$
$f^{\prime}(k)$  is very high for small  $k$
$f(k)$  is concave (slope goes to  $-(n + g)$  when  $k\to \infty$
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/e0e62791ee24262b6367aa61a9c5945dbaa3cf9aa74642f6cf4bf2ef36c060ff.jpg)
FIGURE 2.2 The dynamics of  $k$
Source: Romer (2019)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/5048430cff10bec9a724c092b8962af7f7925b669f8e63167b2b0fc7916c6054.jpg)
FIGURE 2.3 The dynamics of  $c$  and  $k$
Source: Romer (2019)
- Steady state  $k \colon f'(k^*) = \rho + \theta g$
- Golden Rule  $k \colon  {f}^{\prime }\left( {k}_{GR}\right)  = n + g$
- Since  $f''(k) < 0$ ,  $k^* < k_{GR}$  if
$$
\rho + \theta g > n + g
$$
$$
\rho - n - (1 - \theta) g > 0
$$
$$
\beta > 0
$$
- We assume  $\beta > 0$  since otherwise household utility is infinite
# WHICH PATH WILL ECONOMY TAKE?
- Phase diagram has many paths
- All of them satisfy the two dynamic equations
- Which one of these paths will the economy take?
# WHICH PATH WILL ECONOMY TAKE?
- Phase diagram has many paths
- All of them satisfy the two dynamic equations
- Which one of these paths will the economy take?
- Answer determined by boundary conditions
- Boundary condition #1: Initial condition for  $k$
- But there is no initial condition for  $c!$
$c(0)$  is a choice of the household
# WHICH PATH WILL ECONOMY TAKE?
- Phase diagram has many paths
- All of them satisfy the two dynamic equations
- Which one of these paths will the economy take?
- Answer determined by boundary conditions
- Boundary condition #1: Initial condition for  $k$
- But there is no initial condition for  $c!!$
$c(0)$  is a choice of the household
So, how do we determine  $c(0)$ ?
# WHICH PATH WILL ECONOMY TAKE?
- Phase diagram has many paths
- All of them satisfy the two dynamic equations
- Which one of these paths will the economy take?
- Answer determined by boundary conditions
- Boundary condition #1: Initial condition for  $k$
- But there is no initial condition for  $c!!$
$c(0)$  is a choice of the household
So, how do we determine  $c(0)$ ?
- Boundary condition #2: Intertemporal budget constraint holds with equality
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/61379623ae5f2c4406348f85e1b8b43ed8f4902ce23a120fe105628a788ddbc3.jpg)
FIGURE 2.4 The behavior of  $c$  and  $k$  for various initial values of  $c$ .
Source: Romer (2019)
- Paths starting at A, B, and C eventually hit  $k = 0$ . For consumption Euler equation to continue to hold,  $k$  must keep falling, which it can't.
- Path starting at D, eventually rises above Golden Rule level of consumption. At this point  $f'(k) < n + g$ , so  $e^{-R(s)}e^{(n + g)s}$  is rising in  $s$  and  $k(s)$  is rising in  $s$ . So:
$$
\lim  _ {s \rightarrow \infty} e ^ {- R (s)} e ^ {(n + g) s} k (s) = \infty
$$
In other words, net present value of future wealth is exploding, which means household should consumer more. (Violates intertemporal budget constraint.)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/005bcca6a999ca4e5da171d77188b80cd1e01e39a3a18f77680125f3c490f091.jpg)
FIGURE 2.5 The saddle path
Source: Romer (2019)
In the long run,  $k^{*}, y^{*}, c^{*}$  are constant
- Level variables grow at rate  $n + g$
Per capita variables grow at rate  $g$
- Long-run growth rate independent of many model parameters.
E.g., Production function parameters, preference parameters  $(\rho$  and  $\theta)$
Dynamic equations:
$$
\frac {\dot {c} (t)}{c (t)} = \frac {f ^ {\prime} (k (t)) - \rho - \theta g}{\theta}
$$
$$
\dot {k} (t) = f (k (t)) - c (t) - (n + g) k (t)
$$
- To calculate steady state, we set  $\dot{c}(t) = 0$  and  $\dot{k}(t) = 0$ :
$$ f ^ {\prime} \left(k ^ {*}\right) = \rho + \theta g
$$
$$ c ^ {*} = f \left(k ^ {*}\right) - (n + g) k ^ {*}
$$
- Level of steady state is a function of  $\rho, \theta$ , and production function
- Consider an unanticipated fall in the discount rate  $\rho$
- Conceptually similar to an increase in the savings rate in the Solow model
- Long-run effect depends on shift in steady state:
$$ f ^ {\prime} \left(k ^ {*}\right) = \rho + \theta g
$$
$$ c ^ {*} = f \left(k ^ {*}\right) - (n + g) k ^ {*}
$$
- Shift in  $\rho$  only affects first of these equations
Since  $f''(k) < 0$ ,  $k_{\mathrm{NEW}}^* > k_{\mathrm{OLD}}^*$ .
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/df9cec39f0a45e174a373fd753089d95a403ad58dfe475a5f88e22064fa0f653.jpg)
FIGURE 2.6 The effects of a fall in the discount rate
Source: Romer (2019)
- The saddle path gives  $c(k)$  (called the policy function)
What is the shape of this path?
- Consider different values of  $\theta$
- Recall that  $1 / \theta$  is the intertemporal elasticity of substitution
- High  $\theta$  (low  $1 / \theta$ ) implies strong desire to smooth consumption
Household will try to shift consumption from the future
Saddle path will be close to  $\dot{k}(t) = 0$  locus
Figure 2.2
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/7b2ee8b5e0d288addf3134cf3f378370c8b8d0f50926c73ec28d552855cb7918.jpg)
Source: Barro and Sala-I-Martin (2004)
- Savings rate constant in Solow model. What about Ramsey model?
In general it is complicated
Intuitively two forces:
- Substitution effect: As  $k$  rises,  ${f}^{\prime }\left( k\right)$  falls,and  $r$  falls. Incentive to save fall.
- Income effect: When households are below steady state, their income is below future income. They would like to smooth consumption by consuming a lot relative to income. As income rises, this force weakens and savings rise.
- Which force wins depends on parameters.
Cobb-Douglas case  $(y = k^{\alpha})$ : savings rate is monotonic
- If  $\alpha(g + n) = (\rho + \theta g) / \theta$ , savings rate is constant
- If  $\alpha (g + n) > (\rho +\theta g) / \theta$  , savings rate is increasing (e.g., small value of  $1 / \theta$  - weak substitution effect)
- If  $\alpha(g + n) < (\rho + \theta g) / \theta$ , savings rate is decreasing (e.g., large value of  $1 / \theta$  - strong substitution effect)
See Barro and Sala-I-Martin (2004, sec. 2.6.4) for details
- They argue that  $\alpha(g + n) \approx (\rho + \theta g) / \theta$  is not unreasonable.
- Empirically they argue savings rate rise a slight bit with development
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/6fb0d6ce88d08407cba71c5ac6f68ac32aab9cb6d43650d0ede712e564b23fb5.jpg)
(a)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/397e97e615aeabd9098a64de6b2cd9217b23c106bccf9eea8c8eb95b2f0b8e63.jpg)
(b)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/0fd605b85eaa14f77d18e4da884f48ed165044187808d9cc26cce5fc91b65559.jpg)
(c)
Figure 2.3 Phase diagram for the behavior of the saving rate (in the Cobb-Douglas case). In the Cobb-Douglas case, the savings rate behaves monotonically. Panel  $a$  shows the phase diagram for  $\hat{\varepsilon} / \hat{y}$  and  $\hat{k}$  when the parameters are such that  $(\delta + \rho + \theta x) / \theta > \alpha \cdot (x + n + \delta)$ . Since the stable arm is upward sloping, the consumption ratio increases as the economy grows toward the steady state. Hence, in this case, the saving rate (one minus the consumption rate) declines monotonically during the transition. Panel  $b$  considers the case in which  $(\delta + \rho + \theta x) / \theta < \alpha \cdot (x + n + \delta)$ . The stable arm is now downward sloping and, therefore, the saving rate increases monotonically during the transition. Panel  $c$  considers the case  $(\delta + \rho + \theta x) / \theta + \alpha \cdot (x + n + \delta)$ . The stable arm is now horizontal, which means that the saving rate is constant during the transition.
Source: Barro and Sala-I-Martin (2004)
Is the market outcome in the Ramsey model a "good" outcome?
- First Welfare Theorem holds in the Ramsay model:
Markets are competitive and complete
Households are rational and optimize
- Property rights exist over all objects of value
This means decentralized outcome is Pareto efficient
(Actually there are some technicalities which we will come back to in OLG lecture)
- Easy to verify by solving the "planner's problem"
- Basic message of Solow model carries over to Ramsey model
Balanced growth in steady state
Savings rate  $(y - c) / y$  constant in steady state
- Level variables grow at rate  $n + g$
Per capita growth due to exogenous growth in  $A$
Growth higher below steady state, lower above steady state
Differences in Ramsey:
- Savings rate not necessarily constant (but constant not unreasonable)
- $n$  does not affect  ${k}^{ * }.\left( {{f}^{\prime }\left( {k}^{ * }\right)  = \rho  - {\theta g}}\right)$
- Sensitive to having  $L(t) / H$  term in utility function
- Without this term  $f^{\prime}(k^{*}) = \rho + n - \theta g$
Depends on nature of altruism toward offspring
# Appendix
Notice that:
$$
\begin{array}{l} \dot {k} (t) = \frac {d}{d t} \left(\frac {K (t)}{A (t) L (t)}\right) = \frac {\dot {K} (t)}{A (t) L (t)} - \frac {K (t)}{\left[ A (t) L (t) \right] ^ {2}} [ A (t) \dot {L} (t) + \dot {A} (t) L (t) ] \\ \dot {k} (t) = \frac {\dot {K} (t)}{A (t) L (t)} - (n + g) k \\ \end{array}
$$
Dividing capital accumulation equation by  $A(t)L(t)$  we get
$$
\frac {\dot {K} (t)}{A (t) L (t)} = \frac {Y (t)}{A (t) L (t)} - \frac {C (t) L (t)}{A (t) L (t)}
$$
$$
\dot {k} (t) + (n + g) k = y (t) - c (t)
$$
$$
\dot {k} (t) = f (k (t)) - c (t) - (n + g) k (t)
$$
Back
- Recall that  $f(k) \equiv F(k, 1)$ .
- $F(\cdot, \cdot)$  is homogeneous of degree one
- This implies that  $F_{1}(\cdot, \cdot)$  is homogeneous of degree zero (where the subscript denotes a derivative with respect to the first argument).
$$ f ^ {\prime} (k) = F _ {1} (k, 1) = F _ {1} (K / A L, 1) = F _ {1} (K, A L) = F _ {K} (K, A L)
$$
Back
- Notice that
$$
\frac {\partial F (K , A L)}{\partial L} = A \frac {\partial F (K , A L)}{\partial A L} = A F _ {2} (K, A L)
$$
- Since  $F(K, AL)$  is homogeneous of degree 1 we have that
$$
F (K, A L) = F _ {1} (K, A L) K + F _ {2} (K, A L) A L
$$
$$
A L F (k, 1) = F _ {1} (K, A L) K + F _ {2} (K, A L) A L
$$
$$ f (k) = f ^ {\prime} (k) k + F _ {2} (K, A L)
$$
$$
F _ {2} (K, A L) = f (k) - f ^ {\prime} (k) k
$$
Back
Labor demand:
$$
W = (1 - \alpha) A K ^ {\alpha} L ^ {- \alpha}
$$
Capital demand:
$$ r = \alpha A K ^ {\alpha - 1} L ^ {1 - \alpha}
$$
- Divide one by the other
$$
\frac {K}{L} = \frac {\alpha}{1 - \alpha} \frac {W}{r}
$$
- Plug this into production function for K:
$$
Y = A K ^ {\alpha} L ^ {1 - \alpha} = A \left(\frac {\alpha}{1 - \alpha}\right) ^ {\alpha} \left(\frac {W}{r}\right) ^ {\alpha} L ^ {\alpha} L ^ {1 - \alpha}
$$
Back
# GROWTH ACCOUNTING
#
University of California, Berkeley
Fall 2025
$$
Y = F (K, A L)
$$
- How much of growth is "due to":
Growth in inputs (capital, labor, etc.)
Growth in technology (A)
- First step in understanding determinants of growth since it does not attempt to explain growth in inputs
Exercise that goes back to Abramovitz (1956) and Solow (1957)
Starting point:
$$
Y (t) = F [ K (t), A (t) L (t) ]
$$
Differentiate with respect to time
$$
\dot {Y} (t) = \frac {\partial Y (t)}{\partial K (t)} \dot {K} (t) + \frac {\partial Y (t)}{\partial L (t)} \dot {L} (t) + \frac {\partial Y (t)}{\partial A (t)} \dot {A} (t)
$$ where  $\frac{\partial Y}{\partial L}$  denotes  $\frac{\partial Y}{\partial AL} A$  and  $\frac{\partial Y}{\partial A} A$  denotes  $\frac{\partial Y}{\partial AL} L$
- Divide both sides by  $Y(t)$ :
$$
\frac {\dot {Y} (t)}{Y (t)} = \frac {K (t)}{Y (t)} \frac {\partial Y (t)}{\partial K (t)} \frac {\dot {K} (t)}{K (t)} + \frac {L (t)}{Y (t)} \frac {\partial Y (t)}{\partial L (t)} \frac {\dot {L} (t)}{L (t)} + \frac {A (t)}{Y (t)} \frac {\partial Y (t)}{\partial A (t)} \frac {\dot {A} (t)}{A (t)}
$$
$$
\frac {\dot {Y} (t)}{Y (t)} = \frac {K (t)}{Y (t)} \frac {\partial Y (t)}{\partial K (t)} \frac {\dot {K} (t)}{K (t)} + \frac {L (t)}{Y (t)} \frac {\partial Y (t)}{\partial L (t)} \frac {\dot {L} (t)}{L (t)} + \frac {A (t)}{Y (t)} \frac {\partial Y (t)}{\partial A (t)} \frac {\dot {A} (t)}{A (t)}
$$
- Elasticity of output with respect to capital and labor
$$
\alpha_ {K} (t) = \frac {K (t)}{Y (t)} \frac {\partial Y (t)}{\partial K (t)} \quad \alpha_ {L} (t) = \frac {L (t)}{Y (t)} \frac {\partial Y (t)}{\partial L (t)}
$$
We get:
$$
\frac {\dot {Y} (t)}{Y (t)} = \alpha_ {K} (t) \frac {\dot {K} (t)}{K (t)} + \alpha_ {L} (t) \frac {\dot {L} (t)}{L (t)} + R (t)
$$ where
$$
R (t) = \frac {A (t)}{Y (t)} \frac {\partial Y (t)}{\partial A (t)} \frac {\dot {A} (t)}{A (t)}
$$ is referred to as the Solow Residual
$$
\frac {\dot {Y} (t)}{Y (t)} = \alpha_ {K} (t) \frac {\dot {K} (t)}{K (t)} + \alpha_ {L} (t) \frac {\dot {L} (t)}{L (t)} + R (t)
$$
In principle measurable:
Growth in output:  $\dot{Y} (t) / Y(t)$
Growth in capital:  $\dot{K} (t) / K(t)$
Growth in labor:  $\dot{L} (t) / L(t)$
- Elasticity of output with respect to capital:  $\alpha_{K}(t)$
- Elasticity of output with respect to labor:  $\alpha_{L}(t)$
Yields  $R(t)$  as a residual (hence "Solow residual" name)
One perspective: Measure of our ignorance
- Ideally we could measure flow of services from capital
In practice: Measure stock and assume flow is proportional to stock
Perpetual inventory method:
$$
K (t + 1) = K (t) + I (t) - \delta K (t)
$$
- Start with some  $K(0)$
Measure  $I(t)$  from National Income and Product Accounts
Use estimates of  $\delta$
- Simple measure of labor input: hours worked
- But workers differ, e.g., in education and health
- Increase in output may be due to increases in labor quality
- Jorgenson and Griliches (1967):
- Disaggregate inputs by schooling, etc.
Weight each category by average wage
Growth in overall labor input weighted average of categories
- Can also be done for capital
$$
\alpha_ {K} (t) = \frac {K (t)}{Y (t)} \frac {\partial Y (t)}{\partial K (t)} \quad \alpha_ {L} (t) = \frac {L (t)}{Y (t)} \frac {\partial Y (t)}{\partial L (t)}
$$
- If labor and capital earn their marginal product:
$$ r (t) = \frac {\partial Y (t)}{\partial K (t)} \quad w (t) = \frac {\partial Y (t)}{\partial L (t)}
$$
- In this case output elasticities become factor shares:
$$
\alpha_ {K} (t) = \frac {r (t) K (t)}{Y (t)} = s _ {K} (t) \quad \alpha_ {L} (t) = \frac {w (t) L (t)}{Y (t)} = s _ {L} (t)
$$
Data on factor shares usually used to estimate  $\alpha_{K}(t)$  and  $\alpha_{L}(t)$ .
- But this is only valid under idealized assumptions (i.e., perfect competition)
$$
\frac {\dot {Y} (t)}{Y (t)} = \alpha_ {K} (t) \frac {\dot {K} (t)}{K (t)} + \alpha_ {L} (t) \frac {\dot {L} (t)}{L (t)} + R (t)
$$
- Alternative approach: Estimate this equation using data on  $\dot{Y}(t) / Y(t)$ ,  $\dot{K}(t) / K(t)$ ,  $\dot{L}(t) / L(t)$
- Recover  $\alpha_{K}$  and  $\alpha_{L}$  as parameters
- Recover  $R(t)$  as a residual
Why not do this instead?
$$
\frac {\dot {Y} (t)}{Y (t)} = \alpha_ {K} (t) \frac {\dot {K} (t)}{K (t)} + \alpha_ {L} (t) \frac {\dot {L} (t)}{L (t)} + R (t)
$$
- Alternative approach: Estimate this equation using data on  $\dot{Y}(t) / Y(t)$ ,  $\dot{K}(t) / K(t)$ ,  $\dot{L}(t) / L(t)$
- Recover  $\alpha_{K}$  and  $\alpha_{L}$  as parameters
- Recover  $R(t)$  as a residual
Why not do this instead?
- Would be hard since productivity affects inputs (i.e., labor and capital are endogenous)
Table 10.1
Growth Accounting for a Sample of Countries
<table><tr><td>Country</td><td>(1) Growth Rate of GDP</td><td>(2) Contribution from Capital</td><td>(3) Contribution from Labor</td><td>(4) TFP Growth Rate</td></tr><tr><td colspan="5">Panel A: OECD Countries, 1947-73</td></tr><tr><td>Canada</td><td>0.0517</td><td>0.0254</td><td>0.0088</td><td>0.0175</td></tr><tr><td>(α = 0.44)</td><td></td><td>(49\%)</td><td>(17\%)</td><td>(34\%)</td></tr><tr><td>Francea</td><td>0.0542</td><td>0.0225</td><td>0.0021</td><td>0.0296</td></tr><tr><td>(α = 0.40)</td><td></td><td>(42\%)</td><td>(4\%)</td><td>(54\%)</td></tr><tr><td>Germanyb</td><td>0.0661</td><td>0.0269</td><td>0.0018</td><td>0.0374</td></tr><tr><td>(α = 0.39)</td><td></td><td>(41\%)</td><td>(3\%)</td><td>(56\%)</td></tr><tr><td>Italya</td><td>0.0527</td><td>0.0180</td><td>0.0011</td><td>0.0337</td></tr><tr><td>(α = 0.39)</td><td></td><td>(34\%)</td><td>(2\%)</td><td>(64\%)</td></tr><tr><td>Japanb</td><td>0.0951</td><td>0.0328</td><td>0.0221</td><td>0.0402</td></tr><tr><td>(α = 0.39)</td><td></td><td>(35\%)</td><td>(23\%)</td><td>(42\%)</td></tr><tr><td>Netherlandsc</td><td>0.0536</td><td>0.0247</td><td>0.0042</td><td>0.0248</td></tr><tr><td>(α = 0.45)</td><td></td><td>(46\%)</td><td>(8\%)</td><td>(46\%)</td></tr><tr><td>U.K.d</td><td>0.0373</td><td>0.0176</td><td>0.0003</td><td>0.0193</td></tr><tr><td>(α = 0.38)</td><td></td><td>(47\%)</td><td>(1\%)</td><td>(52\%)</td></tr><tr><td>U.S.</td><td>0.0402</td><td>0.0171</td><td>0.0095</td><td>0.0135</td></tr><tr><td>(α = 0.40)</td><td></td><td>(43\%)</td><td>(24\%)</td><td>(34\%)</td></tr><tr><td colspan="5">Panel B: OECD Countries, 1960-95</td></tr><tr><td>Canada</td><td>0.0369</td><td>0.0186</td><td>0.0123</td><td>0.0057</td></tr><tr><td>(α = 0.42)</td><td></td><td>(51\%)</td><td>(33\%)</td><td>(16\%)</td></tr><tr><td>France</td><td>0.0358</td><td>0.0180</td><td>0.0033</td><td>0.0130</td></tr><tr><td>(α = 0.41)</td><td></td><td>(53\%)</td><td>(10\%)</td><td>(38\%)</td></tr><tr><td>Germany</td><td>0.0312</td><td>0.0177</td><td>0.0014</td><td>0.0132</td></tr><tr><td>(α = 0.39)</td><td></td><td>(56\%)</td><td>(4\%)</td><td>(42\%)</td></tr><tr><td>Italy</td><td>0.0357</td><td>0.0182</td><td>0.0035</td><td>0.0153</td></tr><tr><td>(α = 0.34)</td><td></td><td>(51\%)</td><td>(9\%)</td><td>(42\%)</td></tr><tr><td>Japan</td><td>0.0566</td><td>0.0178</td><td>0.0125</td><td>0.0265</td></tr><tr><td>(α = 0.43)</td><td></td><td>(31\%)</td><td>(22\%)</td><td>(47\%)</td></tr><tr><td>U.K.</td><td>0.0221</td><td>0.0124</td><td>0.0017</td><td>0.0080</td></tr><tr><td>(α = 0.37)</td><td></td><td>(56\%)</td><td>(8\%)</td><td>(36\%)</td></tr><tr><td>U.S.</td><td>0.0318</td><td>0.0117</td><td>0.0127</td><td>0.0076</td></tr><tr><td>(α = 0.39)</td><td></td><td>(37\%)</td><td>(40\%)</td><td>(24\%)</td></tr></table>
Table continued
Source: Barro and Sala-I-Martin (2004) who report results from Christensen, Cummings, Jorgenson (1980) in panel A and Jorgenson and Yip (2001) in panel B. Not per capita.
Table 10.1 (Continued)
<table><tr><td>Country</td><td>(1) Growth Rate of GDP</td><td>(2) Contribution from Capital</td><td>(3) Contribution from Labor</td><td>(4) TFP Growth Rate</td></tr><tr><td colspan="5">Panel C: Latin American Countries, 1940-90</td></tr><tr><td>Argentina \left( {\alpha = {0.54}}\right) </td><td>0.0279</td><td>0.0128(46\%)</td><td>0.0097(35\%)</td><td>0.0054(19\%)</td></tr><tr><td>Brazil \left( {\alpha = {0.45}}\right) </td><td>0.0558</td><td>0.0294(53\%)</td><td>0.0150(27\%)</td><td>0.0114(20\%)</td></tr><tr><td>Chile \left( {\alpha = {0.52}}\right) </td><td>0.0362</td><td>0.0120(33\%)</td><td>0.0103(28\%)</td><td>0.0138(38\%)</td></tr><tr><td>Colombia \left( {\alpha = {0.63}}\right) </td><td>0.0454</td><td>0.0219(48\%)</td><td>0.0152(33\%)</td><td>0.0084(19\%)</td></tr><tr><td>Mexico \left( {\alpha = {0.69}}\right) </td><td>0.0522</td><td>0.0259(50\%)</td><td>0.0150(29\%)</td><td>0.0113(22\%)</td></tr><tr><td>Peru \left( {\alpha = {0.66}}\right) </td><td>0.0323</td><td>0.0252(78\%)</td><td>0.0134(41\%)</td><td>-0.0062(-19\%)</td></tr><tr><td>Venezuela \left( {\alpha = {0.55}}\right) </td><td>0.0443</td><td>0.0254(57\%)</td><td>0.0179(40\%)</td><td>0.0011(2\%)</td></tr><tr><td colspan="5">Panel D: East Asian Countries, 1966-90</td></tr><tr><td>Hong Kong \left( {\alpha = {0.37}}\right) </td><td>0.073</td><td>0.030(41\%)</td><td>0.020(28\%)</td><td>0.023(32\%)</td></tr><tr><td>Singapore \left( {\alpha = {0.49}}\right) </td><td>0.087</td><td>0.056(65\%)</td><td>0.029(33\%)</td><td>0.002(2\%)</td></tr><tr><td>South Korea \left( {\alpha = {0.30}}\right) </td><td>0.103</td><td>0.041(40\%)</td><td>0.045(44\%)</td><td>0.017(16\%)</td></tr><tr><td>Taiwan \left( {\alpha = {0.26}}\right) </td><td>0.094</td><td>0.032(34\%)</td><td>0.036(39\%)</td><td>0.026(28\%)</td></tr></table>
Source: Barro and Sala-I-Martin (2004) who report results from Elias (1990) in panel C and Young (1995) in panel D.
- Young's (1995) results were surprising to many
- Could it really be that high growth rates were not associated with large changes in TFP?
- Some considered them less miraculous due to this. (But why?)
Hsieh (2002) took a different approach
We start with the accounting identity:
$$
Y = r K + w L
$$
- Take logarithms and differentiate with respect to time:
$$
\frac {\dot {Y}}{Y} = s _ {K} \left(\frac {\dot {r}}{r} + \frac {\dot {K}}{K}\right) + s _ {L} \left(\frac {\dot {w}}{w} + \frac {\dot {L}}{L}\right)
$$
Rearrange
$$
\frac {\dot {Y}}{Y} - s _ {K} \frac {\dot {K}}{K} - s _ {L} \frac {\dot {L}}{L} = s _ {K} \frac {\dot {r}}{r} + s _ {L} \frac {\dot {w}}{w}
$$
LHS: "primal" measure of Solow residual (what we had before)
RHS: "dual" measure of Solow residual
$$
\frac {\dot {Y}}{Y} - s _ {K} \frac {\dot {K}}{K} - s _ {L} \frac {\dot {L}}{L} = s _ {K} \frac {\dot {r}}{r} + s _ {L} \frac {\dot {w}}{w}
$$
- Primal and dual approach should yield the same answer
- If one is (in)valid, the other is (in)valid
Hsieh (2002) applied dual approach to East Asian "Tigers"
Table 10.2 Primal and Dual Estimates of TFP Growth Rates
<table><tr><td>Country</td><td>Primal Estimate</td><td>Dual Estimate</td></tr><tr><td>Hong Kong, 1966–91</td><td>0.023</td><td>0.027</td></tr><tr><td>Singapore, 1972–90</td><td>-0.007</td><td>0.022</td></tr><tr><td>South Korea, 1966–90</td><td>0.017</td><td>0.015</td></tr><tr><td>Taiwan, 1966–90</td><td>0.021</td><td>0.037</td></tr></table>
Notes: These estimates are from Hsieh (2002, table 1). The primal estimates are computed from data on growth rates of quantities of factor inputs, using factor income shares as weights. The dual estimates are computed from data on growth rates of prices of factor inputs, using the same factor income shares as weights. The lack of coincidence for the primal and dual estimates of TFP growth rates reflects the use of different data, as described in the text.
Source: Barro and Sala-I-Martin (2004)
# Hsieh (2002) argues:
- NIPA data implies that capital/output ratio rose sharply
- Since factor shares are roughly constant, this implies that rate of return on capital should have fallen sharply
True for Korea but not for Singapore
Singapore's NIPA overstate investment
FIGURE 1. RETURN TO CAPITAL IN KOREA
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/d52e3ce1cf1bffa019c2ea9097a38d01e406caa5cee00ac3b836d7f5ab0ac2eb.jpg)
Source: Hsieh (2002)
FIGURE 2. RETURN TO CAPITAL IN SINGAPORE
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/3e5af333cfe2ebf554e9c6bf17f44c8c63ecef242f3fd29ea9ce362ecf3f0926.jpg)
Source: Hsieh (2002)
Subsequent research has tended to favor Young
Fernald and Nieman (2011):
Economy with two sectors: favored and unfavored
Distortions mean both primal and dual measures of TFP differ from true productivity growth
Bottom-up measurement for Singapore indicates low growth in aggregate technology
- Hsieh's user cost estimates are from unfavored sector
- Falling pure profits also missed by Hsieh's approach
Growth accounting is just accounting, not causal analysis
Example:
$$
Y = A K ^ {\alpha} \left(L e ^ {x t}\right) ^ {1 - \alpha}
$$
Suppose  $A$  and  $L$  are constant
- $x$  is labor-augmented growth in technology
- Take logarithms and differentiate with respect to time:
$$
\frac {\dot {Y}}{Y} = \alpha \frac {\dot {K}}{K} + (1 - \alpha) x
$$
$$
\frac {\dot {Y}}{Y} = \alpha \frac {\dot {K}}{K} + (1 - \alpha) x
$$
- In Solow and Ramsey models: capital-output ratio will be constant along a balanced growth path
$$
\frac {\dot {Y}}{Y} = \frac {\dot {K}}{K} = x
$$
$\alpha x$  of growth attributed to growth of capital
TFP growth measured to be  $\hat{g} = (1 - \alpha)x$
- But growth in capital stock is a consequence of growth in technology
- To attribute to technology both direct and indirect effects on GDP we need to divide measured TFP growth by  $(1 - \alpha)$
Table 10.3
TFP Growth Adjusted for Endogenous Responses of Capital
<table><tr><td>Country</td><td>(1) GDP Growth Rate</td><td>(2) TFP Growth Rate</td><td>(3) TFP Growth Adjusted for Physical Capital</td><td>(4) TFP Growth Adjusted for Broad Capital</td></tr><tr><td rowspan="2">Hong Kong</td><td rowspan="2">0.073</td><td>0.027</td><td>0.043</td><td>0.090</td></tr><tr><td>(37\%)</td><td>(59\%)</td><td>(123\%)</td></tr><tr><td rowspan="2">Singapore</td><td rowspan="2">0.087</td><td>0.022</td><td>0.043</td><td>0.073</td></tr><tr><td>(25\%)</td><td>(49\%)</td><td>(84\%)</td></tr><tr><td rowspan="2">South Korea</td><td rowspan="2">0.103</td><td>0.015</td><td>0.021</td><td>0.050</td></tr><tr><td>(14\%)</td><td>(20\%)</td><td>(49\%)</td></tr><tr><td rowspan="2">Taiwan</td><td rowspan="2">0.094</td><td>0.037</td><td>0.050</td><td>0.123</td></tr><tr><td>(39\%)</td><td>(53\%)</td><td>(131\%)</td></tr></table>
Notes: Column 1 shows the growth rate of GDP as given in table 10.1, panel D. Column 2 shows the TFP growth rate indicated for the dual column in table 10.2. Column 3 adjusts for responses of physical capital by multiplying the TFP growth rate by  $1 / (1 - \alpha)$ , where  $\alpha$  is the capital share shown in table 10.1, panel D. Column 4 adjusts for responses of physical and human capital by multiplying the TFP growth rate by  $1 / 0.3$ , that is, by assuming a broad capital share of  $\alpha = 0.7$ . The numbers in parentheses show the percentages of the growth rate of GDP accounted for by each measure of TFP growth.
Source: Barro and Sala-I-Martin (2004)
A small positive number for  $\hat{g}$  is, in principle, consistent with a situation in which technological progress is ultimately responsible for a small part of GDP growth, but it is also consistent with a situation in which it is ultimately responsible for all of GDP growth.
Barro and Sala-I-Martin (2004, p. 460)
- Start with a Cobb-Douglas production function:
$$
Y _ {t} = A _ {t} K _ {t} ^ {\alpha} H _ {t} ^ {1 - \alpha}
$$
Here  $H_{t}$  denotes human capital
- Divide both sides by  $Y_{t}^{\alpha}$  and raise to power  $1 / (1 - \alpha)$ :
$$
Y _ {t} = \left(\frac {K _ {t}}{Y _ {t}}\right) ^ {\frac {\alpha}{1 - \alpha}} H _ {t} Z _ {t}
$$
$$
\text {w h e r e} Z _ {t} = A _ {t} ^ {\frac {1}{1 - \alpha}}
$$
Divide through by  $L_{t}$
$$
\frac {Y _ {t}}{L _ {t}} = \left(\frac {K _ {t}}{Y _ {t}}\right) ^ {\frac {\alpha}{1 - \alpha}} \frac {H _ {t}}{L _ {t}} Z _ {t}
$$
$$
\frac {Y _ {t}}{L _ {t}} = \left(\frac {K _ {t}}{Y _ {t}}\right) ^ {\frac {\alpha}{1 - \alpha}} \frac {H _ {t}}{L _ {t}} Z _ {t}
$$
- Decomposes per capita (or per hour) growth into:
Capital deepening:  $K_{t} / Y_{t}$
Growth in human capital per hour:  $H_{t} / L_{t}$
Total factor productivity:  $Z_{t}$
- Importantly Solow and Ramsey model imply that  $K_{t} / Y_{t}$  is constant along a balanced growth path
- Take logarithms and differentiate with respect to time to get a growth accounting equation
- This approach popularized by Klenow and Rodriguez-Clare (1997) (Goes back at least to David (1977))
Table 3 Growth accounting for the United States
Contributions from
<table><tr><td>Period</td><td>Output per hour</td><td>K/Y</td><td>Labor composition</td><td>Labor-Aug. TFP</td></tr><tr><td>1948–2013</td><td>2.5</td><td>0.1</td><td>0.3</td><td>2.0</td></tr><tr><td>1948–1973</td><td>3.3</td><td>-0.2</td><td>0.3</td><td>3.2</td></tr><tr><td>1973–1990</td><td>1.6</td><td>0.5</td><td>0.3</td><td>0.8</td></tr><tr><td>1990–1995</td><td>1.6</td><td>0.2</td><td>0.7</td><td>0.7</td></tr><tr><td>1995–2000</td><td>3.0</td><td>0.3</td><td>0.3</td><td>2.3</td></tr><tr><td>2000–2007</td><td>2.7</td><td>0.2</td><td>0.3</td><td>2.2</td></tr><tr><td>2007–2013</td><td>1.7</td><td>0.1</td><td>0.5</td><td>1.1</td></tr></table>
Note: Average annual growth rates (in percent) for output per hour and its components for the private business sector, following Eq. (3).
Source: Authors calculations using Bureau of Labor Statistics, Multifactor Productivity Trends, August 21, 2014.
Source: Jones (2016)
- Very new paper! No peer review, back-and-forth, etc.
Central claim:
- We usually assume growth is exponential:
$$
A _ {t + \tau} = A _ {t} (1 + g) ^ {\tau}
$$
In fact, growth is linear:
$$
A _ {t + \tau} = A _ {t} + b \tau
$$
Data:
U.S. TFP 1947-2019 from Fernald (2012)
TFP in 23 countries 1890-2019 from Bergeaud, Cette, Lecat (2016)
Exponential growth:
$$
\begin{array}{l} A _ {t + \tau} = A _ {t} (1 + g) ^ {\tau} = > \log A _ {t + \tau} = \log A _ {t} + \tau \log (1 + g) \\ = > \log A _ {t + \tau} \approx \log A _ {t} + g \tau \\ \end{array}
$$
- Linear growth
$$
A _ {t + \tau} = A _ {t} + b \tau
$$
- Consider the U.S. post-WWII sample
- Use the first half of sample to predict  $A\left( t\right)$  for the second half
Compare prediction of:
- Person who believes in exponential growth (Model G)
- Person who believes in linear growth (Model A)
(a) BCL Data
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/01f007c6597b085c76a36699db25118fd121b9916ca3db2b8aaf24943b4fe32a.jpg)
Source: Philippon (2023)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/e7049c5bd2190e794eca6b2678348d5ff5f616f539629948fd23444cd67bd982.jpg)
Figure 1: Out-of-Sample TFP Forecasts
(b) Fernald Data
Growth cannot have been linear forever
- If so,  $A(t)$  would be negative at some point in the past
- Philippon proposes that "General Purpose Technologies" cause breaks
- Enlightenment / Glorious Revolution?
- Steam Engine / Industrial Revolution
- Electrification / Second Industrial Revolution
# OCCASIONAL BREAKS OVER LONGER SAMPLE
Figure 10: Linear US TFP with One Break
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/877b14960c4785db27aeddc8341265eabedd7ddcd684e2c8b47f22df50e7d1b4.jpg)
Source: Philippon (2023)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/5fbcd4e82f660616913ed6be74535101f423e143e264257f800a60d7ed9a2c32.jpg)
1500-1915
Source: Philippon (2023). U.K. Pseudo-TFP (GDP per capita to the power 2/3).
# DEVELOPMENT ACCOUNTING
#
University of California, Berkeley
Fall 2025
- How much of cross-country income differences are "due to":
Factor inputs (capital, education)
Efficiency
- First step in understanding cross-country income differences Doesn't attempt to explain why inputs differ
- Levels analog to growth accounting (sometimes called levels accounting)
- Goes back to Denison (1967), Christensen, Cummings, and Jorgenson (1981). Modern literature starts with King and Levine (1994) and particularly Klenow and Rodriguez-Claire (1997) and Hall and Jones (1999)
Research on income differences can arguably be classified into one or more arrows in the following chain of causality:
Geography, Climate, Luck  $\Rightarrow$  Human Capital, Physical Capital, TFP  $\Rightarrow$  Income
↓
Institutions, Culture  $\Rightarrow$  Human Capital, Physical Capital, TFP  $\Rightarrow$  Income
↓
Policies, Rule of Law, Corruption  $\Rightarrow$  Human Capital, Physical Capital, TFP  $\Rightarrow$  Income
- Development accounting is about right-most arrows
Source: Hsieh and Klenow (2010)
Following Hall and Jones (1999):
$$
Y _ {i} = K _ {i} ^ {\alpha} \left(A _ {i} H _ {i}\right) ^ {1 - \alpha}
$$ where
$$
H _ {i} = e ^ {\phi (E _ {i})} L _ {i}
$$
$H_{i}$  denotes human capital (quality-adjusted labor)
- $L_{i}$  denotes "raw" labor
- $E_{i}$  denotes education (years of schooling)
- Main data source: Penn World Tables
(Modern incarnation of Summers and Heston (1991) dataset)
- Output: GDP per worker at PPP
- Penn World Tables:
- Basic idea: Correct GDP for difference in prices across space (analogous to adjusting for inflation over time)
- Done using International Comparisons Program (ICP) price data
- Has undergone substantial methodological changes over time (Major change between V7 and V8)
- Many older results in literature not robust to these changes
See Feenstra, Inklaar, Timmer (2015) for description of "modern" version
- Early versions: Capital constructed from investment:
$$
K _ {i t} = I _ {i t} + (1 - \delta) K _ {i, t - 1}
$$
With an initial capital stock of:
$$
K _ {i, 0} = \frac {I _ {i , 0}}{g + \delta}
$$ where
$g$  is the average growth rate of investment before 1970
$\delta = 0.06$
- More recent versions of PWT include capital series
(which is constructed "more carefully" using perpetual inventory method)
$$
\boldsymbol {H} _ {i} = \boldsymbol {e} ^ {\phi (E _ {i})}
$$
- Use average years of schooling as a proxy for  $E_{i}$
Data on average years of schooling from Barro and Lee (2013)
- With competitive factor markets, workers are paid their marginal product
- Use wages to inform  $\phi(E_i)$  (Mincerian wage regressions)
- Assume  $\phi(E_i)$  is piecewise linear with slopes:
0.134 for  $s \leq 4$
0.101 for  $4 < s \leq 8$
0.068 for  $8 <   s$ where  $s$  is average years of schooling
- Based on Psacharopoulos's (1994) survey of returns-to-schooling estimates
Typical to assume  $\alpha = 1 / 3$  for all countries
Gollin (2002) suggests this is reasonable (but Feenstra, Inklaar, Timmer (2015) disagree)
- Caselli (2005) shows results are quite sensitive to this choice
In contrast, Caselli argues that results are not very sensitive to:
Depreciation rate
Initial capital stock
- Reasonable variation in returns to schooling
- Mismeasurement of years of schooling
- Variation in hours worked per person
- Hall and Jones (1999) / Jones (2016):
$$
\log \left(\frac {Y _ {i}}{L _ {i}}\right) = \frac {\alpha}{1 - \alpha} \log \left(\frac {K _ {i}}{Y _ {i}}\right) + \log \left(\frac {H _ {i}}{L _ {i}}\right) + \log A _ {i}
$$
$\bullet$  Caselli (2005):
$$
\log \left(\frac {Y _ {i}}{L _ {i}}\right) = \alpha \log \left(\frac {K _ {i}}{L _ {i}}\right) + (1 - \alpha) \log \left(\frac {H _ {i}}{L _ {i}}\right) + \log A _ {i}
$$
$$
\log \left(\frac {Y _ {i}}{L _ {i}}\right) = \log \left(\frac {Y _ {i}}{L _ {i}}\right) _ {K H} + \log A _ {i}
$$
$$
\log y _ {i} = \log y _ {i, K H} + \log A _ {i}
$$
(Notice in Hall-Jones flavor it is  $K / Y$  that shows up rather than  $K / L$ . See Growth Accounting lecture for details. Caselli starts with  $Y_{i} = A_{i}K_{i}^{\alpha}H_{i}^{1 - \alpha}$ .)  $L$  is workers.
TABLEI PRODUCTIVITY CALCULATIONS: RATIOS TO U. S. VALUES
<table><tr><td rowspan="2">Country</td><td rowspan="2">Y/L</td><td colspan="3">Contribution from</td></tr><tr><td>(K/Y)α/(1-α)</td><td>H/L</td><td>A</td></tr><tr><td>United States</td><td>1.000</td><td>1.000</td><td>1.000</td><td>1.000</td></tr><tr><td>Canada</td><td>0.941</td><td>1.002</td><td>0.908</td><td>1.034</td></tr><tr><td>Italy</td><td>0.834</td><td>1.063</td><td>0.650</td><td>1.207</td></tr><tr><td>West Germany</td><td>0.818</td><td>1.118</td><td>0.802</td><td>0.912</td></tr><tr><td>France</td><td>0.818</td><td>1.091</td><td>0.666</td><td>1.126</td></tr><tr><td>United Kingdom</td><td>0.727</td><td>0.891</td><td>0.808</td><td>1.011</td></tr><tr><td>Hong Kong</td><td>0.608</td><td>0.741</td><td>0.735</td><td>1.115</td></tr><tr><td>Singapore</td><td>0.606</td><td>1.031</td><td>0.545</td><td>1.078</td></tr><tr><td>Japan</td><td>0.587</td><td>1.119</td><td>0.797</td><td>0.658</td></tr><tr><td>Mexico</td><td>0.433</td><td>0.868</td><td>0.538</td><td>0.926</td></tr><tr><td>Argentina</td><td>0.418</td><td>0.953</td><td>0.676</td><td>0.648</td></tr><tr><td>U.S.S.R.</td><td>0.417</td><td>1.231</td><td>0.724</td><td>0.468</td></tr><tr><td>India</td><td>0.086</td><td>0.709</td><td>0.454</td><td>0.267</td></tr><tr><td>China</td><td>0.060</td><td>0.891</td><td>0.632</td><td>0.106</td></tr><tr><td>Kenya</td><td>0.056</td><td>0.747</td><td>0.457</td><td>0.165</td></tr><tr><td>Zaire</td><td>0.033</td><td>0.499</td><td>0.408</td><td>0.160</td></tr><tr><td>Average, 127 countries:</td><td>0.296</td><td>0.853</td><td>0.565</td><td>0.516</td></tr><tr><td>Standard deviation:</td><td>0.268</td><td>0.234</td><td>0.168</td><td>0.325</td></tr><tr><td>Correlation with Y/L (logs)</td><td>1.000</td><td>0.624</td><td>0.798</td><td>0.889</td></tr><tr><td>Correlation with A (logs)</td><td>0.889</td><td>0.248</td><td>0.522</td><td>1.000</td></tr></table>
Source: Hall and Jones (1999). Comparison year: 1988
Comparing richest 5 and poorest 5:
- Difference in output per worker: factor of 31.7
- Difference in capital intensity: factor of 1.8
- Difference in human capital per worker: factor of 2.2
- Difference in productivity: factor of 8.3
- Productivity explains the bulk of cross-country income differences
Table 6 Basic development accounting, 2010
<table><tr><td></td><td>GDP per worker, y</td><td>Capital/GDP (K/Y) ^{\alpha(1-\alpha)} </td><td>Human capital, h</td><td>TFP</td><td>Share due to TFP</td></tr><tr><td>United States</td><td>1.000</td><td>1.000</td><td>1.000</td><td>1.000</td><td>-</td></tr><tr><td>Hong Kong</td><td>0.854</td><td>1.086</td><td>0.833</td><td>0.944</td><td>48.9\%</td></tr><tr><td>Singapore</td><td>0.845</td><td>1.105</td><td>0.764</td><td>1.001</td><td>45.8\%</td></tr><tr><td>France</td><td>0.790</td><td>1.184</td><td>0.840</td><td>0.795</td><td>55.6\%</td></tr><tr><td>Germany</td><td>0.740</td><td>1.078</td><td>0.918</td><td>0.748</td><td>57.0\%</td></tr><tr><td>United Kingdom</td><td>0.733</td><td>1.015</td><td>0.780</td><td>0.925</td><td>46.1\%</td></tr><tr><td>Japan</td><td>0.683</td><td>1.218</td><td>0.903</td><td>0.620</td><td>63.9\%</td></tr><tr><td>South Korea</td><td>0.598</td><td>1.146</td><td>0.925</td><td>0.564</td><td>65.3\%</td></tr><tr><td>Argentina</td><td>0.376</td><td>1.109</td><td>0.779</td><td>0.435</td><td>66.5\%</td></tr><tr><td>Mexico</td><td>0.338</td><td>0.931</td><td>0.760</td><td>0.477</td><td>59.7\%</td></tr><tr><td>Botswana</td><td>0.236</td><td>1.034</td><td>0.786</td><td>0.291</td><td>73.7\%</td></tr><tr><td>South Africa</td><td>0.225</td><td>0.877</td><td>0.731</td><td>0.351</td><td>64.6\%</td></tr><tr><td>Brazil</td><td>0.183</td><td>1.084</td><td>0.676</td><td>0.250</td><td>74.5\%</td></tr><tr><td>Thailand</td><td>0.154</td><td>1.125</td><td>0.667</td><td>0.206</td><td>78.5\%</td></tr><tr><td>China</td><td>0.136</td><td>1.137</td><td>0.713</td><td>0.168</td><td>82.9\%</td></tr><tr><td>Indonesia</td><td>0.096</td><td>1.014</td><td>0.575</td><td>0.165</td><td>77.9\%</td></tr><tr><td>India</td><td>0.096</td><td>0.827</td><td>0.533</td><td>0.217</td><td>67.0\%</td></tr><tr><td>Kenya</td><td>0.037</td><td>0.819</td><td>0.618</td><td>0.073</td><td>87.3\%</td></tr><tr><td>Malawi</td><td>0.021</td><td>1.107</td><td>0.507</td><td>0.038</td><td>93.6\%</td></tr><tr><td>Average</td><td>0.212</td><td>0.979</td><td>0.705</td><td>0.307</td><td>63.8\%</td></tr><tr><td>1/Average</td><td>4.720</td><td>1.021</td><td>1.418</td><td>3.260</td><td>69.2\%</td></tr></table>
Source: Jones (2016)
Output per worker in Mexico is  $33.8\%$  of U.S.
- Capital-output ratio of Mexico is  $87\%$  of U.S.
$$
0. 8 7 ^ {\alpha / (1 - \alpha)} = 0. 8 7 ^ {1 / 2} = 0. 9 3 1
$$
Schooling: 8.8 year in Mexico vs. 13.2 years in U.S.
Difference: 4.6 years
$0.068\times 4.6 = 0.32$
0.76 = 1/1.32
TFP is  $0.338 / (0.931 \times 0.760) = 0.477$  of U.S. level
- Inputs explain a factor of
$$
\frac {1}{0 . 9 3 1} \times \frac {1}{0 . 7 6 0} = 1. 4
$$
- TFP explains the rest
$$
\frac {1}{0 . 3 3 8} \times \frac {1}{1 . 4} = 2. 1
$$
- Fraction explained by TFP:
$$
\frac {2 . 1}{1 . 4 + 2 . 1} = 0. 5 9 7
$$
(Not sure this makes sense. Think of factors explaining 1.0.)
# Alternative Decomposition:
- Total difference  $1 / 0.338 = 2.96$ . In logs: 1.08
- Log difference explained by capital:  $\log (1 / 0.931) = 0.07$
- Log difference explained by schooling:  $\log (1 / 0.760) = 0.27$
- Log difference explained by TFP:  $\log (1 / 0.477) = 0.74$
- Fraction explained by TFP:  $0.74 / 1.08 = 0.68$
In Hall and Jones (1999)  $K / Y$  explains factor of 2
- In Jones (2016)  $K / Y$  explains essentially nothing
- Not totally clear why the difference
- One possibility: Jones (2016) uses PWT capital series which is constructed "more carefully" than Hall-Jones capital series
- Capital price series lower in poor countries than investment price series (used by Hall and Jones) because structures are more important in capital than in investment (because they depreciate slower) and structures are cheap in poor countries (see Feenstra, Inklaar, Timmer (2015, p. 3178)
Lower capital prices in poor countries implies more capital [I think]
- Question: What would cross-country income distribution look like if all countries had the same TFP?
Consider:
$$
\operatorname {v a r} \left[ \log y _ {i} \right] = \operatorname {v a r} \left[ \log y _ {i, K H} \right] + \operatorname {v a r} \left[ \log A _ {i} \right] + 2 \operatorname {c o v} \left[ \log y _ {i, K H}, \log A _ {i} \right]
$$
- If  $A_{i}$  the same in all countries:
$$
\operatorname {v a r} \left[ \log A _ {i} \right] + 2 \operatorname {c o v} \left[ \log y _ {i, K H}, \log A _ {i} \right] = 0
$$
Motivates using
$$
\operatorname {s u c c e s s} _ {1} = \frac {\operatorname {v a r} [ \log y _ {i , K H} ]}{\operatorname {v a r} [ \log y _ {i} ]}
$$ to measure role of factors
Table 1 Baseline success of the factor-only model
<table><tr><td>var[log(y)]</td><td>1.297</td><td>y90/y10</td><td>21</td></tr><tr><td>var[log(yKH)]</td><td>0.500</td><td>y90/KH/y10KH</td><td>7</td></tr><tr><td>success1</td><td>0.39</td><td>success2</td><td>0.34</td></tr></table>
Source: Caselli (2005)
Table 2 Success in sub-samples
<table><tr><td>Sub-sample</td><td>Obs.</td><td>var[log(y)]</td><td>var[log(yKH)]</td><td>success1</td></tr><tr><td>Above the median</td><td>47</td><td>0.172</td><td>0.107</td><td>0.620</td></tr><tr><td>Below the median</td><td>47</td><td>0.624</td><td>0.254</td><td>0.407</td></tr><tr><td>OECD</td><td>24</td><td>0.083</td><td>0.050</td><td>0.606</td></tr><tr><td>Non-OECD</td><td>70</td><td>1.047</td><td>0.373</td><td>0.356</td></tr><tr><td>Africa</td><td>27</td><td>0.937</td><td>0.286</td><td>0.305</td></tr><tr><td>Americas</td><td>25</td><td>0.383</td><td>0.179</td><td>0.468</td></tr><tr><td>Asia and Oceania</td><td>25</td><td>0.673</td><td>0.292</td><td>0.434</td></tr><tr><td>Europe</td><td>17</td><td>0.136</td><td>0.032</td><td>0.233</td></tr><tr><td>All</td><td>94</td><td>1.297</td><td>0.500</td><td>0.385</td></tr></table>
Source: Caselli (2005)
Capital-Output ratio explains very little
Depends on version of analysis (up to factor 2 (i.e.,  $20\%$ ) in older versions)
Years of schooling explains a substantial amount
Perhaps about 1/3 across rich vs. poor countries
TFP explains at least half
- Helps point to type of "friction" that plagues poor countries
- If  $K / Y$  is low: problems associated with capital accumulation?
- Taxes on capital (implicit or explicit)
Financial repression
- Restrictions of international capital flows
- If education is low: problem in education sector?
Insufficient supply of education (by government?)
Low quality of education
- Low demand for education (culture/beliefs/high prices?)
1. Is MPK larger for poor countries?
(Lucas 90, Caselli-Feyrer 07, Hsieh-Klenow 07,
Gerding-Henriksen-Simonovska 23)
2. Quality of schooling
(Hendricks 02, Schoellman 12, Hendricks-Schoellman 18, 21,
Lagakos et al. 18)
3. Agricultural productivity gap
(Caselli 05, Restuccia-Yang-Zhu 08, Gollin-Lagakos-Waugh 14,
Boppart-Kiernan-Krusell-Malmberg 23)
4. Misallocation
(Restuccia-Rogerson 08, Hsieh-Klenow 09, Moll 12, Midrigan-Xu 14)
Lucas (1990):
- Two countries with same Cobb-Douglas production function:
$$ y = A k ^ {\alpha}
$$ where  $y$  is output per person and  $k$  is capital per person
- Marginal product of capital is:
$$ r = \alpha A k ^ {\alpha - 1}
$$
- Using production function to plug in for  $k$
$$ r = \alpha A ^ {1 / \alpha} y ^ {(\alpha - 1) / \alpha}
$$
- Taking a ratio of this equation for India vs. US:
$$
\frac {r ^ {\text {I n d i a}}}{r ^ {\text {U S}}} = \left(\frac {y ^ {\text {I n d i a}}}{y ^ {\text {U S}}}\right) ^ {(\alpha - 1) / \alpha}
$$
Suppose
$$
\alpha = 0. 4 \quad \text {a n d} \quad \frac {y ^ {\text {I n d i a}}}{y ^ {\text {U S}}} = \frac {1}{1 5}
$$
- Then we have that
$$
\frac {r ^ {\text {I n d i a}}}{r ^ {\text {U S}}} = 1 5 ^ {1. 5} = 5 8
$$
- Marginal product of capital in India is 58 times higher than in the U.S.
- If the MPK is 58 times higher in India than U.S., why doesn't more capital flow to poor countries?
- Maybe because MPK is not 58 times higher in India (and since Lucas' paper was published, India has grown a lot)
- Calculation assumes India and U.S. have same productivity
- Development accounting suggests this is not the case
- Let's combine
$$ r = \alpha A k ^ {\alpha - 1} \quad \text {a n d} \quad y = A k ^ {\alpha}
$$ to eliminate  $A$ :
$$ r = \alpha \left(\frac {k}{y}\right) ^ {- 1}
$$
- Hall-Jones 99 results have India's  $k/y$  at  $50\%$  of U.S. level
- Implies MPK is twice as high in India
(Jones 16 results don't imply this. But let's ignore that for now.)
- Significant focus of literature in 1990s (see, e.g., Mankiw 95)
# NAIVE MARGINAL PRODUCT OF CAPITAL
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/dda70c888f708a431377c5398a66b4b8c626781cf6fea444b01e16491133f3fe.jpg)
Source: Hsieh and Klenow (2010) using data from Caselli and Feyrer (2007)
Make two adjustments to naive MPK calculation:
1. Adjust for non-reproducible capital (land and natural resources)
2. Adjust for high price of capital relative to consumption in poor countries
- Naive marginal product of capital:
$$
\mathsf {M P K} = \alpha \frac {\mathsf {Y}}{K}
$$ where  $\alpha$  is capital share of income
- Usual way to measure capital share of income:
One minus labor share of income
- But that includes income to non-reproducible capital (land and natural resources)
- While  $K$  is only reproducible capital (constructed from perpetual inventory method)
So naive:
$$
\mathsf {M P K} = \alpha \frac {\mathsf {Y}}{K}
$$ yields an estimate of MPK that is too high
- This bias is bigger for poor countries since non-reproducible capital is a larger share of capital in poor countries
- Makes MPK look higher for poor countries
- Counterpoint: Existence of land and natural resources my raise MPK if these resources are under-exploited.
TABLEI
PROPORTION OF DIFFERENT TYPES OF WEALTH IN TOTAL WEALTH IN 2000
<table><tr><td>Variable</td><td>Mean</td><td>St dev</td><td>Median</td><td>Weighted mean*</td><td>Corr w/ log(GDP)**</td></tr><tr><td>Subsoil resources</td><td>10.5</td><td>16.4</td><td>1.5</td><td>7.0</td><td>-0.13</td></tr><tr><td>Timber</td><td>1.7</td><td>2.6</td><td>0.8</td><td>0.9</td><td>-0.34</td></tr><tr><td>Other forest</td><td>2.2</td><td>5.4</td><td>1.1</td><td>0.3</td><td>-0.49</td></tr><tr><td>Cropland</td><td>11.4</td><td>15.2</td><td>5.1</td><td>3.2</td><td>-0.73</td></tr><tr><td>Pasture</td><td>4.5</td><td>5.4</td><td>2.7</td><td>1.9</td><td>-0.00</td></tr><tr><td>Protected areas</td><td>1.9</td><td>2.5</td><td>0.3</td><td>1.4</td><td>0.01</td></tr><tr><td>Urban land</td><td>13.1</td><td>4.6</td><td>13.5</td><td>16.5</td><td>0.70</td></tr><tr><td>Reproducible capital</td><td>54.8</td><td>19.2</td><td>56.3</td><td>68.6</td><td>0.70</td></tr></table>
* Weighted by the total value of the capital stock.
** GDP is per worker.
Source: Authors calculations using data from World Bank [2006].
Source: Caselli and Feyrer (2007)
- In "one-good" model, price of capital is the same as the price output
In reality, this is not necessarily the case
- Recognizing this, return to capital is
$$
\frac {P _ {y} (t) M P K (t) + P _ {k} (t + 1) (1 - \delta)}{P _ {k} (t)}
$$
- Ignoring capital gains, frictionless international capital markets imply
$$
\frac {P _ {y} M P K}{P _ {k}} = R ^ {*} - (1 - \delta)
$$
This is what should be equal across countries
- Earlier estimate:
$$
M P K = \alpha \frac {Y}{K}
$$
- Adjusted estimate:
$$
\frac {P _ {y} M P K}{P _ {k}} = \alpha \frac {P _ {y} Y}{P _ {k} K}
$$
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/dd8a22a22c4a222a09fc910316610b127d2475179f4127e68d020507ff2e9a5a.jpg)
Source: Penn World Tables 6.1.
Source: Caselli and Feyrer (2007)
# EQUIPMENT PRICES ACROSS COUNTRIES
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/6ca4230704251673256f58afc2be9ee6643c3dc3e6ee0c2544fa23055ff20f09.jpg)
FIGURE 5. EQUIPMENT PRICES VERSUS INCOME LEVELS
Source: Hsieh and Klenow (2010)
# CONSUMPTION PRICES ACROSS COUNTRIES
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/f88d01094fd13aca2aa01ca09eaa63ec4c2d4f81d7cc0b74ec2c99ad86b65fdf.jpg)
FIGURE 6. CONSUMPTION PRICES VERSUS INCOME LEVELS
Source: Hsieh and Klenow (2010)
# ADJUSTED MARGINAL PRODUCT OF CAPITAL
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/d1864f03da982e6ce4ba97b2287149e8e264e099be854640a7bfedd3d7826107.jpg)
Source: Hsieh and Klenow (2010) using data from Caselli and Feyrer (2007)
# Conclusion:
- “There is no prima facie support for the view that international credit frictions play a major role in preventing capital flows from rich to poor countries”
- Low  $K / L$  in poor countries due to:
- low endowments of complementary factors to capital low efficiency (TFP)
Capital may be misallocated within country. Misallocation literature following Hsieh and Klenow (2009)
- Caselli-Feyrer results special to 1996
- Analyze average over 70 years (1950-2019)
Find MPK is higher in poor countries
Benchmark Measure, US Prices
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/c698fc30ad609732ba68d98d5003a29af864f0d08edee87d0a56448dae1a41da.jpg)
Source: Gerding, Henriksen, Simonovska (2023). Adjusts for relative price of output but not for non-reproducible capital.
Table 13: Income and Returns to Capital, Various Measures
<table><tr><td></td><td>(1) r</td><td>(2)  r_{P_j} </td><td>(3)  r_{\alpha_j} </td><td>(4)  r_b   _{\alpha_j} </td><td>(5)  r_{\alpha_j,P_j} </td><td>(6)  r_{\alpha_jr} </td><td>(7)  r_b   _{\alpha_jr} </td><td>(8)  r_{\alpha_jr,P_j} </td></tr><tr><td>ln y</td><td>-1.782***(0.4)</td><td>-0.806**(0.24)</td><td>-1.443*(0.62)</td><td>-1.37***(0.42)</td><td>-0.932*(0.56)</td><td>-1.856***(0.51)</td><td>-1.234***(0.45)</td><td>-0.617*(0.38)</td></tr><tr><td>con</td><td>26.72***(4)</td><td>14.73***(2.41)</td><td>26.87***(6.21)</td><td>21.03***(4.23)</td><td>20.04***(5.61)</td><td>30.05***(5.18)</td><td>20.28***(4.48)</td><td>14.75***(3.85)</td></tr><tr><td>r2</td><td>0.122</td><td>0.072</td><td>0.055</td><td>0.101</td><td>0.026</td><td>0.115</td><td>0.07</td><td>0.0245</td></tr><tr><td>N</td><td>143</td><td>143</td><td>95</td><td>95</td><td>107</td><td>105</td><td>105</td><td>107</td></tr></table>
Notes: Table reports the results of linear regressions of alternative measures of returns to capital on income per worker.  $r$  is the benchmark measure of returns under the assumption of price equalization of investment goods and uses the U.S. price of investment for all countries.  $r_{P_j}$  uses country-specific prices of investment, consumption and output.  $r_{\alpha_j}$  uses country-specific labor shares.  $r_{\alpha_j,P_j}$  makes both of the last two adjustments.  $r_{\alpha_{j_r}}$  adjusts labor shares for the share of natural resources.  $r_{\alpha_{j_r,P_j}}$  makes both natural resource and price adjustment. Data is truncated at the 10th and 90th percentile, and all observations of returns above 25\% are dropped. Data Source: PWT, 1950-2019. Natural resource data source: WDI, 1970-2019. standard errors statistics in parentheses.  $^* p < 0.10$ ,  $^{**} p < 0.05$ ,  $^{***} p < 0.01$
Source: Gerding, Henriksen, Simonovska (2023).
Table 14: Income and Returns to Capital, Year 1996
<table><tr><td></td><td>(1)PUS</td><td>(2)Pj</td><td>(3)αj</td><td>(4)αj,Pj</td><td>(5)αjr</td><td>(6)αjr,Pj</td></tr><tr><td>ln_y</td><td>-1.601***(0.32)</td><td>1.050***(0.40)</td><td>-1.495**(0.58)</td><td>2.022***(0.56)</td><td>-1.424***(0.50)</td><td>2.485***(0.54)</td></tr><tr><td>_cons</td><td>20.83***(3.19)</td><td>-6.999*(3.97)</td><td>24.47***(5.87)</td><td>-13.07**(5.65)</td><td>21.82***(5.04)</td><td>-19.09***(5.42)</td></tr><tr><td>r2</td><td>0.151</td><td>0.0471</td><td>0.0587</td><td>0.109</td><td>0.0746</td><td>0.173</td></tr><tr><td>N</td><td>142</td><td>142</td><td>108</td><td>108</td><td>104</td><td>104</td></tr></table>
Notes: Table reports the results of linear regressions of alternative measures of returns to capital on income per capita for the set of countries data is available in the year 1996. Data is truncated at the 10th and 90th percentile, and all observations of returns above  $25\%$  are dropped. Data Source: PWT. standard errors statistics in parentheses.  $^{*}p < 0.10$ ,  $^{**}p < 0.05$ ,  $^{***}p < 0.01$
Source: Gerding, Henriksen, Simonovska (2023).  $P_{j}$  denotes country-specific price of investment.  $\alpha_{jr}$  denotes adjustment for non-reproducible capital.
Measure of human capital in standard development accounting very crude (average years of schooling from Barro-Lee 13 times estimate of returns to schooling)
How can we do better?
Measure of human capital in standard development accounting very crude (average years of schooling from Barro-Lee 13 times estimate of returns to schooling)
How can we do better?
- How about looking at wage gains of migrants?
- Migrant wage gains a measure of country component of income differences
Residual due to human capital
Production function in per worker terms:
$$ y _ {c} = \left(\frac {K _ {c}}{Y _ {c}}\right) ^ {\frac {\alpha}{1 - \alpha}} A _ {c} h _ {c}
$$
Country component:
$$ z _ {c} = \left(\frac {K _ {c}}{Y _ {c}}\right) ^ {\frac {\alpha}{1 - \alpha}} A _ {c}
$$
Take logs:
$$
\log y _ {c} = \log z _ {c} + \log h _ {c}
$$
- Subtract one country from another and divide by income difference:
$$
1 = \frac {\log z _ {c} - \log z _ {c ^ {\prime}}}{\log y _ {c} - \log y _ {c ^ {\prime}}} + \frac {\log h _ {c} - \log h _ {c ^ {\prime}}}{\log y _ {c} - \log y _ {c ^ {\prime}}} = \text {s h a r e} _ {\text {c o u n t r y}} + \text {s h a r e} _ {\text {h u m a n c a p i t a l}}
$$
- Two problems with evidence on migrants:
Migrants are highly selected
Human capital transfers imperfectly across countries
Data on preand post-migration wages of migrants addresses selection
- Trickier to address transferability of human capital (e.g., accreditation, licensure, discrimination)
- Suppose labor is homogeneous and labor markets are competitive
- Then firms solve
$$
\max  _ {H _ {c}} K _ {c} ^ {\alpha} \left(A _ {c} H _ {c}\right) ^ {1 - \alpha} - \omega_ {c} H _ {c}
$$ where  $\omega_{c}$  is the wage per unit of human capital
- This yields  $\omega_{c} = (1 - \alpha)z_{c}$  and
$$
\log w _ {i, c} = \log [ (1 - \alpha) z _ {c} ] + \log h _ {i}
$$ where  $w_{i,c}$  is the wage of a worker with human capital level  $h_i$
- For migrants (assuming  $h_i$  is transferable) we have
$$
\frac {\log w _ {i , U S} - \log w _ {i , c}}{\log y _ {U S} - \log y _ {c}} = \frac {\log z _ {U S} - \log z _ {c}}{\log y _ {U S} - \log y _ {c}} = \text {s h a r e} _ {\text {c o u n t r y}}
$$
TABLEI
MOST SAMPLED COUNTRIES BY SAMPLE AND SUBSAMPLE
<table><tr><td>Country group</td><td>Most sampled countries</td><td>N</td></tr><tr><td colspan="3">Panel A: NIS sample by GDP per worker category (relative to United States)</td></tr><tr><td>&lt; 1/16</td><td>Ethiopia, Nigeria, Vietnam</td><td>281</td></tr><tr><td>1/16 - 1/8</td><td>India, Philippines, China</td><td>617</td></tr><tr><td>1/8 - 1/4</td><td>Dominican Rep., Ukraine, El Salvador</td><td>436</td></tr><tr><td>1/4 - 1/2</td><td>Mexico, Poland, Russia</td><td>263</td></tr><tr><td>1/2 - 1</td><td>Canada, United Kingdom, Korea</td><td>409</td></tr><tr><td colspan="3">Panel B: MP sample by subsample</td></tr><tr><td>Mexican MP</td><td>Mexico</td><td>1,910</td></tr><tr><td>Latin American MP</td><td>Dominican Rep., El Salvador, Nicaragua</td><td>224</td></tr></table>
Note. Lists the three most common birth countries and sample size for immigrants from the respective subgroup of the NIS or MP samples.
Source: Hendricks and Schoellman (2018). NIS is New Immigrant Survey (green card holders) MP are Mexican and Latin American Migration Projects. NIS is early 2000s.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/47f4d8868c90ad6fe3df8157730c787cb957cffd64af9438eeeeaebb6ee75343.jpg)
(A) NIS: PREAND POST-MIGRATION WAGES
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/c3c453b9edd53de607d40c16b2f5bdcc9cf4724844a1996e0209745a08f0a56f.jpg)
(B) NIS: WAGE GAINS AT MIGRATION
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/43eb717f2629cb0ca54c442a563ca7954556a88907d6b26ef0412aaddc5dbb42.jpg)
(C) MP: PREAND POST-MIGRATION WAGES
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/621c8d1a6248fb4cedc10f969072b770053d6e66392c99f29b0f2d5c39599bef.jpg)
(D) MP: WAGE GAINS AT MIGRATION
Source: Hendricks and Schoellman (2018).
TABLE II
IMPLIED HUMAN CAPITAL SHARE IN DEVELOPMENT ACCOUNTING
<table><tr><td rowspan="2">Group</td><td colspan="2">Hourly wage</td><td colspan="4">Development accounting</td></tr><tr><td>Premig.</td><td>Postmig.</td><td>Wage gain</td><td>GDP gap</td><td>h share</td><td>95\% C.I.</td></tr><tr><td colspan="7">Panel A: NIS sample by GDP per worker category</td></tr><tr><td>&lt; 1/16</td><td>$2.82</td><td>$8.91</td><td>3.2</td><td>31.8</td><td>0.66</td><td>(0.60, 0.73)</td></tr><tr><td>1/16 - 1/8</td><td>$4.19</td><td>$11.83</td><td>2.8</td><td>11.9</td><td>0.58</td><td>(0.54, 0.62)</td></tr><tr><td>1/8 - 1/4</td><td>$4.95</td><td>$9.48</td><td>1.9</td><td>5.6</td><td>0.63</td><td>(0.55, 0.71)</td></tr><tr><td>1/4 - 1/2</td><td>$5.05</td><td>$9.11</td><td>1.8</td><td>3.0</td><td>0.48</td><td>(0.34, 0.62)</td></tr><tr><td>1/2 - 1</td><td>$12.64</td><td>$15.18</td><td>1.2</td><td>1.3</td><td>0.48</td><td>(-0.23, 1.19)</td></tr><tr><td colspan="7">Panel B: MP sample by subsample</td></tr><tr><td>Latin American MP</td><td>$4.84</td><td>$7.05</td><td>1.5</td><td>7.0</td><td>0.79</td><td>(0.71, 0.87)</td></tr><tr><td>Mexican MP</td><td>$2.96</td><td>$6.04</td><td>2.0</td><td>2.9</td><td>0.33</td><td>(0.29, 0.37)</td></tr></table>
Notes. Each row shows results for immigrants from the respective subgroup of the NIS or MP samples. Columns show the categories; the mean hourly preand postmigration wages, reported in 2003 U.S. dollars; the wage gain at migration; the average gap in GDP per worker, relative to United States; the implied human capital share; and the corresponding  $95\%$  confidence interval.
Source: Hendricks and Schoellman (2018).
TABLE VII
OCCUPATIONAL CHANGES AT MIGRATION
<table><tr><td rowspan="2">GDP category</td><td colspan="3">Occupational switch (\%)</td><td rowspan="2">Mean change (\%)</td></tr><tr><td>Lower-paying</td><td>Same occupation</td><td>Higher-paying</td></tr><tr><td>&lt; 1/16</td><td>68</td><td>9</td><td>23</td><td>-17</td></tr><tr><td>1/16 - 1/8</td><td>61</td><td>16</td><td>22</td><td>-15</td></tr><tr><td>1/8 - 1/4</td><td>67</td><td>6</td><td>26</td><td>-16</td></tr><tr><td>1/4 - 1/2</td><td>60</td><td>10</td><td>30</td><td>-13</td></tr><tr><td>&gt; 1/2</td><td>49</td><td>25</td><td>26</td><td>0</td></tr></table>
Notes. Columns show the fraction of immigrants who switched to a lower-paying job, stayed at the same job, or switched to a higher-paying job at migration, as well as the average change in job pay at migration, where average pay is measured using the mean wage of natives. Rows show those results for different PPP GDP per worker groups. All results constructed from the NIS sample.
Source: Hendricks and Schoellman (2018).
TABLE VIII
DEVELOPMENT ACCOUNTING AND SKILL TRANSFER
<table><tr><td>Robustness check</td><td>Human capital share</td><td>95\% C.I.</td></tr><tr><td>Baseline</td><td>0.62</td><td>(0.58, 0.65)</td></tr><tr><td>Employment visa</td><td>0.56</td><td>(0.50, 0.62)</td></tr><tr><td>Job offer before migrating</td><td>0.45</td><td>(0.36, 0.55)</td></tr><tr><td>Same narrow occupation</td><td>0.56</td><td>(0.48, 0.64)</td></tr><tr><td>English at work</td><td>0.59</td><td>(0.54, 0.63)</td></tr><tr><td>Skill transfer: mean wage</td><td>0.55</td><td>(0.52, 0.59)</td></tr></table>
Notes. Each column shows the implied human capital share in development accounting (1 minus the wage gain at migration relative to the GDP per worker gap) and the  $95\%$  confidence interval. Each row shows the result from constructing these statistics for a different sample or using different measures of postmigration wages. All results constructed from the NIS sample.
Source: Hendricks and Schoellman (2018). NIS sample from countries with  $< 1/4$  US GDP per capita.
- A classic view is that development is about reallocation out of agriculture into "modern" sectors
(Rosenstein-Rodin 43, Nurkse 53, Lewis 55, Rostow 60)
Most people work in agriculture in poor countries
- Productivity is low in agriculture, especially in poor countries (Lewis 55, Kuznets 71) employment share of agriculture
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/129f845ba1aaac9b48bf485b85c603477ca7764a34532d001878b65e3c269de3.jpg)
Figure 15. The importance of agriculture.
Source: Caselli (2005)
1. Unproductive urban sector is the problem
- Urban sector can't absorb labor
Unproductive or can't grow fast enough
People in country-side are "army of surplus labor
This is - I think - the more common view
2. Unproductive agricultural sector is the problem
Labor needed to produce food ("food problem")
- Agricultural sector can't shed labor
- Timmer (1988), Gollin, Parente, Rogerson (2002, 2007)
Not clear which of these stories is more important
- Perfect labor mobility across sectors
Competitive labor markets
Production functions:
$$
Y _ {a} = A _ {a} L _ {a} ^ {\theta} K _ {a} ^ {1 - \theta} \quad Y _ {n} = A _ {n} L _ {n} ^ {\theta} K _ {n} ^ {1 - \theta}
$$
- Price of non-ag good is numeraire
Price of ag good is  $p_a$
(See Gollin, Lagakos, and Waugh (2014) for more details)
Labor mobility implies common wage  $w$
Labor demand in each sector:
$$ p _ {a} \theta \frac {Y _ {a}}{L _ {a}} = w \quad \theta \frac {Y _ {n}}{L _ {n}} = w
$$
Combining these implies
$$
\frac {p _ {a} Y _ {a} / L _ {a}}{Y _ {n} / L _ {n}} = \frac {V A _ {a} / L _ {a}}{V A _ {n} / L _ {n}} = 1
$$
- Value added per worker should be the same in both sectors
$$
\frac {V A _ {a}}{L _ {a}} = \frac {V A _ {n}}{L _ {n}}
$$
True whether growth bottleneck is low  $A_{a}$  or low  $A_{n}$
# AGRICULTURAL PRODUCTIVITY GAP
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/0867bee0b5ced4c0fe3d51197dcb4e392d79c3deeb0d5bb238447c9073cba880.jpg)
Source: David Lagakos
- Employment share in agriculture is larger than value added share
Particularly so in poor countries
- Agricultural productivity gap:
$$
A P G = \frac {V A _ {n} / L _ {n}}{V A _ {a} / L _ {a}}
$$
Frictionless model implies  $APG = 1$
# TABLEI
# RAW AGRICULTURAL PRODUCTIVITY GAPS
<table><tr><td rowspan="2"></td><td colspan="5">Quartile of income distribution</td></tr><tr><td>All countries</td><td>Q1</td><td>Q2</td><td>Q3</td><td>Q4</td></tr><tr><td>10th percentile</td><td>1.3</td><td>1.0</td><td>1.3</td><td>1.0</td><td>1.2</td></tr><tr><td>Median</td><td>2.6</td><td>1.7</td><td>2.7</td><td>2.8</td><td>4.3</td></tr><tr><td>Mean</td><td>3.5</td><td>2.0</td><td>3.2</td><td>3.4</td><td>5.6</td></tr><tr><td>90th percentile</td><td>6.8</td><td>4.0</td><td>6.6</td><td>7.1</td><td>12.5</td></tr><tr><td>Number of countries</td><td>151</td><td>38</td><td>38</td><td>38</td><td>37</td></tr></table>
Note: Income quartiles are determined using 2005 PPP GDP per capita. Q1 is the richest quartile and Q4 is the poorest quartile. The raw agricultural productivity gaps are defined as the ratio of value added per worker in the nonagricultural sector to value added per worker in the agricultural sector, without any adjustments to the underlying value added or employment data.
Source:Gollin,Lagakos, Waugh (2014)
Frictionless model implies  $APG = 1$
In practice,  $APG = 3.5$  and even larger in poor countries
Suggests large misallocation of labor across sectors
- Agricultural workers may work fewer hours (lean season)
- Rural people may be misclassified as agricultural workers
- Agricultural output may be undermeasured due to home production
- Agricultural workers may have less human capital
- Gather database of population censuses and household surveys to better measure agricultural productivity gap
Sector level data on:
Average hours worked
Average years of schooling
Findings:
Non-ag workers work modestly more hours than ag workers
Average schooling higher in non-ag
- Can explain about 1/3 of agricultural productivity gap
# SECTORAL HUMAN CAPITAL DIFFERENCE
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/3f0ac1c25d912760d963086c03bfbf76567da35ec11eec78ac690248b39daf21.jpg)
Source:Gollin,Lagakos,Waugh (2014)
TABLE III
AGRICULTURAL PRODUCTIVITY GAPS AND ALL ADJUSTMENTS
<table><tr><td rowspan="2">Measure</td><td rowspan="2">Raw APG</td><td rowspan="2">All adjustments</td><td colspan="4">All adjustments by quartile</td></tr><tr><td>Q1</td><td>Q2</td><td>Q3</td><td>Q4</td></tr><tr><td>10th Percentile</td><td>1.3</td><td>1.0</td><td>0.8</td><td>1.2</td><td>0.7</td><td>1.3</td></tr><tr><td>Median</td><td>3.1</td><td>1.9</td><td>1.4</td><td>2.0</td><td>2.1</td><td>2.3</td></tr><tr><td>Mean</td><td>3.5</td><td>2.2</td><td>1.7</td><td>2.1</td><td>1.9</td><td>3.0</td></tr><tr><td>90th percentile</td><td>6.4</td><td>4.3</td><td>3.3</td><td>2.8</td><td>4.3</td><td>5.6</td></tr><tr><td>Number of countries</td><td>72</td><td>72</td><td>18</td><td>16</td><td>18</td><td>20</td></tr></table>
Note: Income quartiles are determined using 2005 PPP GDP per capita. Q1 is the richest quartile and Q4 is the poorest quartile. The raw APG is defined as the ratio of value added per worker in the nonagricultural sector to value added per worker in the agricultural sector, without any adjustments to the underlying value added or employment data. The adjusted APG is defined as the the ratio of value added per worker in the nonagricultural sector to value added per worker in the agricultural sector after adjusting for average hours worked per worker and average human capital per worker.
Source:Gollin,Lagakos,Waugh (2014)
- Construct alternative measures of value added by sector using household surveys for 10 developing countries
- Measures output whether sold or consumed at home
- Result: Sectoral differences similar to NIPA data
- Mismeasurement of value added not likely to explain APG
TABLE IV
MICRO AND MACRO DATA AND AGRICULTURAL PRODUCTIVITY GAPS
<table><tr><td rowspan="3"></td><td colspan="3">Agriculture share of</td><td rowspan="2" colspan="2">APG</td></tr><tr><td>Employment</td><td colspan="2">Value added</td></tr><tr><td>Micro</td><td>Macro</td><td>Micro</td><td>Macro</td><td>Micro</td></tr><tr><td>Armenia (1996)</td><td>34.2</td><td>36.8</td><td>32.8</td><td>0.9</td><td>1.1</td></tr><tr><td>Bulgaria (2003)</td><td>14.1</td><td>11.7</td><td>18.4</td><td>1.2</td><td>0.7</td></tr><tr><td>Cote d&#x27;Ivoire (1988)</td><td>74.3</td><td>32.0</td><td>42.1</td><td>4.7</td><td>4.0</td></tr><tr><td>Ghana (1998)</td><td>53.9</td><td>36.0</td><td>33.3</td><td>2.2</td><td>2.3</td></tr><tr><td>Guatemala (2000)</td><td>40.2</td><td>15.1</td><td>18.7</td><td>3.8</td><td>2.9</td></tr><tr><td>Kyrgyz Republic (1998)</td><td>56.9</td><td>39.5</td><td>39.3</td><td>2.0</td><td>2.0</td></tr><tr><td>Pakistan (2001)</td><td>46.9</td><td>25.8</td><td>22.6</td><td>2.5</td><td>3.0</td></tr><tr><td>Panama (2003)</td><td>27.0</td><td>7.8</td><td>11.8</td><td>4.4</td><td>2.7</td></tr><tr><td>South Africa (1993)</td><td>11.0</td><td>5.0</td><td>7.0</td><td>2.3</td><td>1.7</td></tr><tr><td>Tajikistan (2009)</td><td>41.0</td><td>24.7</td><td>30.1</td><td>2.1</td><td>1.6</td></tr><tr><td>Average</td><td>40.0</td><td>23.4</td><td>25.6</td><td>2.6</td><td>2.2</td></tr></table>
Note: "Micro" means calculated using LMSMS household survey data. "Macro" means calculated using national accounts data. APGs are calculated using the shares of value added from micro and macro data, and the shares of employment from micro data.
Source:Gollin,Lagakos,Waugh (2014)
- Poor countries employ most of their workers in a sector in which they are particularly unproductive (it seems)
Why this apparent deviation from comparative advantage?
- Poor countries employ most of their workers in a sector in which they are particularly unproductive (it seems)
Why this apparent deviation from comparative advantage?
- Young (2013) and Hamory-Kleemans-Li-Miguel (2021) argue difference is due to selective migration of high skill workers
- Munshi and Rosenzweig (2016) argue for trade-off between higher earnings in the city and access to caste-based insurance in the village in India
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/5d1c325cfe81c7692e676f321a0ab889234434ea92a90617676ce577155790cc.jpg)
A. Agriculture/Non-Agriculture, Indonesia
C. Rural/Urban, Indonesia
B. Agriculture/Non-Agriculture, Kenya
D. Rural/Urban, Kenya
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/fbbe0eea9b30781f908dc32a90e22dbb12d9c69917afbe39e0cded35787bcb85.jpg)
Source: Hamory, Kleemans, Li, and Miguel (2021). FE denotes worker fixed effects.
- If agriculture is the bottleneck, why not import food?
Poor countries import very little food
- Modest tariffs, but huge tariff equivalent costs in time delay to import
Cost of import delays (Hummels and Schaur, 2013):
3.1\% per day for agricultural goods
2\% for other consumer and capital goods
To import food, need to export something else!
# LITTLE AGRICULTURAL TRADE
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/f9d2489dc2412106baf167fde11871ba1c9ffb4678b7ca9dc406e73f8e9424c7.jpg)
Source: Tombe (2015).
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/a68f2c276771413ddf2f6258ea606e2f8c09776ec92b50ab710e964e4b950c54.jpg)
Source: Tombe (2015).
# AGRICULTURAL TARIFFS
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/97bdc4b730cbdb2be2c31b3b8e879e030385f3cea0249225de395e1b0079311f.jpg)
Source: Tombe (2015).
# MANUFACTURING TARIFFS
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/3b19f690507da1f8dc8efe6d7085afe1c5372ed63fc12007989b6f518196a4ff.jpg)
Source: Tombe (2015).
Agriculture
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/930eea2d2f5f8e8157532ed64a43694d196e99894eb869b6800c8ecf7dcbe903.jpg)
Source: Tombe (2015).
# DELAY COSTS: MANUFACTURING
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/26b5b2c7912d1620ccd87f709822b3ab6552539e27d545a3d36bf07e01857eea.jpg)
Source: Tombe (2015).
- Agriculture becomes productive by using modern inputs (tractors, fertilizer, better seeds, etc.)
- Barriers to input use can result in low productivity agriculture
Production function in agriculture:
$$
Y _ {a} = X ^ {\alpha} \left(Z ^ {1 - \sigma} \left(\kappa A L _ {a}\right) ^ {\sigma}\right) ^ {1 - \alpha}
$$
$Z$  is land (fixed),  $X$  is intermediate inputs,  $\kappa$  relative prod. of agriculture
Production function in non-agriculture:
$$
Y _ {n} = A L _ {n}
$$
- Price of non-agricultural goods is numeraire
- Price of intermediate inputs:  $\pi > 1$  (direct barriers)
Wages in non-agriculture:  $w_{n} = A$
Wages in agriculture:  $w_{a} = (1 - \theta)w_{n}$  (indirect barriers)
- Demand for intermediate goods:
$$
\frac {X}{Y _ {a}} = \alpha \frac {p _ {a}}{\pi}
$$
- Low  ${w}_{a}$  will push down  ${p}_{a}$  and therefore intermediate input use
Stone-Geary preferences for food:
$$
U = a \log (c _ {a} - \bar {a}) + (1 - a) \log (c _ {n})
$$
- Goods demand:
$$ c _ {a} = \bar {a} + a p _ {a} ^ {- 1} (y - p _ {a} \bar {a})
$$
$$ c _ {n} = (1 - a) (y - p _ {a} \bar {a})
$$
# Features:
Two sectors
- Diminishing returns in agriculture due to land
- Intermediate input use in agriculture
- Subsistence demand for agricultural goods
- Direct  $(\pi > 1)$  and indirect  $(w_{a} = (1 - \theta)w_{n})$  barriers to input use in agriculture
Can these features explain cross-country differences in:
$$
L _ {a} / N \quad Y _ {a} / L _ {a} \quad Y / N
$$
- Messy to solve analytically
- With  $a = 0$  (only subsistence demand for agriculture) less messy
Intermediate input use:
$$
\frac {X}{Y _ {a}} = \left[ \left(\frac {1 - \theta}{\pi \kappa} \frac {\alpha}{(1 - \alpha) \sigma}\right) ^ {\sigma} \left(\frac {\bar {a}}{(Z / N)}\right) ^ {1 - \sigma} \right] ^ {(1 - \alpha) / (\alpha + \sigma (1 - \alpha))}
$$
- Fraction of labor in agriculture:
$$
\frac {L _ {a}}{N} = \frac {1}{\kappa A} \left(\frac {\bar {a}}{(Z / n) ^ {1 - \sigma} (X / Y _ {a}) ^ {\alpha / (1 - \alpha)}}\right) ^ {1 / \sigma}
$$
Labor productivity in agriculture:
$$
\frac {Y _ {a}}{L _ {a}} = \kappa A \left(\frac {(Z / N) ^ {1 - \sigma} (X / Y _ {a}) ^ {\alpha / (1 - \alpha)}}{\bar {a} ^ {1 - \sigma}}\right) ^ {1 / \sigma}
$$
# Calibration:
- Hold many parameters fixed across countries:  $a, \bar{a}, \alpha, \sigma, \kappa$
- Allow to vary across countries:  $A, \pi, 1 - \theta, Z / N$
A: labor productivity in non-agriculture
$\bullet$ $\pi$ : Price of ag. inputs relative to non-ag goods
- 1 -  $\theta$ : price of ag. goods times average product of labor in agriculture over average product of labor in non-agriculture (don't have sectoral wages)
$Z / N$  : arable land per person
This is all taken as exogenous. Not explained!
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/1bf38b9dcdd32e0016901f653756863d7bdd447049eebc92b0645b08d0adaa2f.jpg)
Panel A: Direct Barriers  $(\pi)$
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/147a4d2b3644e4ffa07bb85d076e7ddb3e7246fd5d65ef74723c812fb1cf5154.jpg)
Panel B: Indirect Barriers (1/(1-θ))
GDP per Worker relative to the U.S.
Source: Restuccia, Yang, Zhu (2008).
Table 2 Effects of barriers and economy-wide productivity on equilibrium outcome variables
<table><tr><td></td><td>La/N Rich/poor</td><td>X/Ya Ratio of rich to poor countries</td><td>Ya/La Ratio of rich to poor countries</td><td>Y/N Ratio of rich to poor countries</td></tr><tr><td>Data</td><td>0.04/0.86</td><td>3.1</td><td>109.1</td><td>34.3</td></tr><tr><td>(7) Baseline model</td><td>0.04/0.68</td><td>2.7</td><td>23.4</td><td>10.8</td></tr><tr><td colspan="5">Decomposing the contribution of individual factors</td></tr><tr><td>(6) Add direct barriers π only</td><td>0.04/0.39</td><td>1.5</td><td>10.2</td><td>6.2</td></tr><tr><td>(5) Add indirect barriers θ only</td><td>0.03/0.38</td><td>1.5</td><td>13.8</td><td>7.0</td></tr><tr><td>(4) Two-sector with {La,Z,X}</td><td>0.04/0.20</td><td>0.9</td><td>6.3</td><td>5.5</td></tr><tr><td>(3) Two-sector with {La,Z}</td><td>0.04/0.24</td><td>-</td><td>8.2</td><td>5.4</td></tr><tr><td>(2) Linear two-sector with {La}</td><td>0.04/0.17</td><td>-</td><td>5.0</td><td>5.0</td></tr><tr><td>(1) One-sector</td><td>-</td><td>-</td><td>-</td><td>5.0</td></tr><tr><td>Unexplained \% or factor</td><td>0.00/0.18</td><td>1.1</td><td>4.7</td><td>3.2</td></tr></table>
Source: Restuccia, Yang, Zhu (2008).
- Production function in agriculture differs from non-agriculture
- Perhaps this can help explain low labor productivity in agriculture in poor countries
Labor is particularly cheap in poor countries
- Perhaps this leads to very labor intensive agriculture (more so than in non-agriculture)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/74c73e371a5967c680afcb5920d487fc0587c32c0b1ae985c9c687f9134efc5a.jpg)
Capital/labor
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/87aaf1e551cb2f48165893853e38457792f11e343bbb765c0f8bab3949d11b64.jpg)
Intermediates/labor
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/45d3cd6311ac9fbcad3edfd25273432c669c0d7ed482ee25c0d927750daecf00.jpg)
Land/labor
Capital/land
Figure 2: Agricultural inputs: quantity and price ratios
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/d26022f8d8f583f356fa266e310521fa2e68b1ca00de63dd193d04ddb6172eb2.jpg)
Note: Relative prices (dashed black lines) are reported on the left axis. Relative quantities (data clouds and solid blue lines) are reported on the right axis. Relative prices and quantities are normalized such that the fitted value of the relative price is one for the richest country and the fitted value of the relative quantity is one for the poorest country.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/37d4e7b8d9161df06b82cb6f9d1b7acd01d60879edd8a1dc70b2b7066ffdcb2e.jpg)
Intermediates/land
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/00598e5d67df2956704c5f8563229d25794714346c9df05ae36124ce7d2f5d8b.jpg)
Capital/intermediates
GDP less natural resource rents per worker, 2005
Source: Boppart, Kiernan, Krusell, Malmberg (2023).
- Slopes of relative quantities and prices do not sum to zero
- This implies that input share are not constant along the development spectrum
$$
\Delta \log S (y) = \Delta \log Q (y) + \Delta \log P (y)
$$
Labor share in agriculture falls sharply as countries develop
- Relative price of labor rises
- Relative quantity of labor fall much more rapidly
- Notation: Instead of everything being a function of time  $t$ , they assume everything is a function of "level of development"  $y$
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/672dccb0cf7f3da736ae52e1c7d86acada52f94bf8bae797de5d09441395408a.jpg)
Value added shares
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/71af99f50c262f594dccf8fa2c60fa773725dd867141753b4e1f76ddc27309ba.jpg)
Gross output shares
Figure 4: Input shares—gross output and value added
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/64d2147b59ee26c71883a6e3f4e94dd25640fb15f435b50c59b00b2f8799ad02.jpg)
GDP less natural resource rents per worker, 2005
Source: Boppart, Kiernan, Krusell, Malmberg (2023).
- Since labor share in agriculture falls with development, labor productivity rises more than TFP
$$ w _ {y} = \left(1 - \alpha_ {y}\right) \frac {Y _ {y}}{L _ {y}} \quad \rightarrow \quad \frac {Y _ {y}}{L _ {y}} = \frac {w _ {y}}{1 - \alpha_ {y}}
$$
- Use development accounting approach to back out TFP differences in agriculture (and non-agriculture)
Production function for agriculture:
$$
\frac {y _ {a}}{h _ {a}} (y) = F \left(\frac {k _ {a}}{h _ {a}} (y), 1, \frac {x _ {a}}{h _ {a}} (y), \frac {I}{h _ {a}} (y), y\right)
$$
- Differentiate with respect to  $y$  (level of development):
$$
\frac {\partial \log F (\cdot ; y)}{\partial y} = \frac {\partial \log \left(y _ {a} / h _ {a}\right) (y)}{\partial y} - \epsilon_ {F, k} (y) \frac {\partial \log \left(k _ {a} / h _ {a}\right) (y)}{\partial y} - \epsilon_ {F, x} (y) \frac {\partial \log \left(x _ {a} / h _ {a}\right) (y)}{\partial y} - \epsilon_ {F, l} \frac {\partial \log (l / h _ {a}) (y)}{\partial y}
$$ where  $\epsilon_{F,k}(y)$  is the elasticity of output with respect to  $k$
- Use factor shares estimated above as measures of output elasticities
- They assume three types of non-agricultural production:
- Consumption goods
- Investment goods (capital goods)
Intermediate inputs
- They assume production has the same shape for these three (same isoquants) but allow for differing Hicks neutral productivity:
$$ y _ {n} (y) = A _ {n} (y) g \left(k _ {n} (y), h _ {n} (y)\right)
$$
$$ y _ {k} (y) = A _ {k} (y) A _ {n} (y) g \left(k _ {k} (y), h _ {k} (y)\right)
$$
$$ y _ {x} (y) = A _ {x} (y) A _ {n} (y) g \left(k _ {x} (y), h _ {x} (y)\right)
$$
- Differentiate these with respect to  $y$  to construct TFP as a function of  $y$  just as in agriculture
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/e28139ae5d6fc73c47ddd6e0512e5b114dc365199783e77f8215fc89bb2afe35.jpg)
Figure 8: TFPs by sector
Source: Boppart, Kiernan, Krusell, Malmberg (2023).
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/7a98be8022b704c018cb8e60ce0f3c276f4aecac6bb65fbec4b3c78230f4ae19.jpg)
Figure 9: Labor productivity vs. TFP in agriculture
Source: Boppart, Kiernan, Krusell, Malmberg (2023).
- Go on to estimate production functions
- Estimate high elasticities of substitution in agriculture more so that in non-agriculture
- Low price of labor in poor countries leads to very labor intensive agriculture and thus low labor productivity in agriculture
- Development leads to "intensification" of agriculture (more capital and intermediates)
- Need to assume low human capital in agriculture and some frictions to fit the data.
- Rural incomes are lower than urban incomes in poor countries
Why don't people move to cities?
- Two classes of explanations:
Selection: People in rural areas are less productive
- Frictions: Something prevents them from moving
- Quite a few quasi-experimental studies support substantial frictions
# QUASI-EXPERIMENTAL EVIDENCE ON MOBILITY
- Bryan, Chowdhury, Mobarak (2014): Randomly giving workers in rural Bangladesh a bus ticket (\$8.50) led to large increase in consumption
- Sarvimäki, Uusitalo, Jäntti (2022): Forced migration in Finland after WWII led to large increases in income for people that started off in agriculture
- Chetty, Hendren, Katz (2016): Giving families in high poverty areas vouchers to move to lower-poverty areas raises long-term outcomes of young children
- Nakamura, Sigurdsson, Steinsson (2021): People induced to move from high income village due to volcanic eruption saw large increase in income (how could this work?)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/c8ae3e1fe8da9afc4c380197e61b2ef9429ea537ddab807c34574d360207dc88.jpg)
Comparative advantage in non-fishing  $(q)$
Figure 8: Sorting by Comparative Advantage
Source: Nakamura, Sigurdsson, Steinsson (2021)
- Absolute advantage: Someone is better at everything
- Fixed effects regressions control for absolute advantage
- Abowd, Kramarz, Margolis (1999)
- Comparative advantage:
Some people are good at fishing
- Others are good at rabbit hunting
- "Roy model" means model with comparative advantage (Roy, 1951) (as does Ricardian model)
# FUNDAMENTAL CAUSES OF GROWTH
#
University of California, Berkeley
Fall 2025
Research on income differences can arguably be classified into one or more arrows in the following chain of causality:
Geography, Climate, Luck  $\Rightarrow$  Human Capital, Physical Capital, TFP  $\Rightarrow$  Income
$\Downarrow$
Institutions, Culture  $\Rightarrow$  Human Capital, Physical Capital, TFP  $\Rightarrow$  Income
$\Downarrow$
Policies, Rule of Law, Corruption  $\Rightarrow$  Human Capital, Physical Capital, TFP  $\Rightarrow$  Income
- Development accounting is about right-most arrows
- In this lecture, we discuss research on the arrows to the left
Source: Hsieh and Klenow (2010)
1990s saw a flourishing of research on correlates of growth
- Prominent studies by Barro (1991), Sala-i-Martin (1997)
Some people interpreted these correlations as causal
- This gave "cross-country growth regressions" a bad name
Regressions for per capita growth rate
<table><tr><td>Independent variable</td><td>(1)</td><td>(2)</td></tr><tr><td>Log(GDP)</td><td>-.0254(.0031)</td><td>-.0225(.0032)</td></tr><tr><td>Male secondary and higher schooling</td><td>.0118(.0025)</td><td>.0098(.0025)</td></tr><tr><td>Log(life expectancy)</td><td>.0423(.0137)</td><td>.0418(.0139)</td></tr><tr><td>Log(GDP) * male schooling</td><td>-.0062(.0017)</td><td>-.0052(.0017)</td></tr><tr><td>Log(fertility rate)</td><td>-.0161(.0053)</td><td>-.0135(.0053)</td></tr><tr><td>Government consumption ratio</td><td>-.136(.026)</td><td>-.115(.027)</td></tr><tr><td>Rule of law index</td><td>.0293(.0054)</td><td>.0262(.0055)</td></tr><tr><td>Terms of trade change</td><td>.137(.030)</td><td>.127(.030)</td></tr><tr><td>Democracy index</td><td>.090a(.027)</td><td>.094(.027)</td></tr><tr><td>Democracy index squared</td><td>-.088(.024)</td><td>-.091(.024)</td></tr><tr><td>Inflation rate</td><td>-.043(.008)</td><td>-.039(.008)</td></tr><tr><td>Sub-Saharan Africa dummy</td><td></td><td>-.0042b(.0043)</td></tr><tr><td>Latin America dummy</td><td></td><td>-.0054(.0032)</td></tr><tr><td>East Asia dummy</td><td></td><td>.0050(.0041)</td></tr><tr><td>R2</td><td>.58, .52, .42</td><td>.60, .52, .47</td></tr><tr><td>Number of observations</td><td>80, 87, 84</td><td>80, 87, 84</td></tr></table>
Source: Barro (1998)
Cross-country growth regressions hard to interpret
- Reverse causation: Growth may cause other things like democracy / rule of law / government spending
This is called "modernization theory"
- Omitted variables bias: Both growth and variables of interest may be caused by a third factor
- Theory suggests that many factors have level effects as opposed to growth effects (but transition dynamics are slow)
- Many candidate causes:
- Geography, trade, institutions
- Luck (e.g., leaders), culture, religion, etc.
- To provide convincing evidence on fundamental causes of growth, we need exogenous variation in candidate causes
- Subsequent literature includes many creative approaches to this challenging task
Here we will sample a bit from this (large) literature
- Long-standing literature arguing that good institutions cause high levels of income
- Secure property rights, rule of law, constraints on the executive, etc.
- Important work along these lines: North and Thomas (1973), Jones (1981), North and Weingast (1989), North (1990), Engerman and Sokoloff (1997)
- Literature mostly qualitative before late 1990s
- Where can we find exogenous variation in institutions?
A few examples: North vs. South Korea, East vs. West Germany
- But something more systematic?
- Acemoglu, Johnson, Robinson (2001) proposed a theory of institutional differences among countries colonized by Europeans
- Conditions in the colonies led colonizers to create different institutions in different colonies
- Where colonizers settled, they set up "good" institutions (secure property rights, rule of law, constrains on the executive)
- Where they didn't settle, they set up "extractive" institutions
These institutions have persisted and have affected growth in these countries
# INCREDIBLY CONTROVERSIAL PAPER
- Some: Colonial Origins paper shouldn't get A in an undergrad class
Others: Nobel Prize!
Case against:
- Ideas not original / Data low quality / Identifying restriction implausible / Questionable manipulation of data / Standard errors are wrong
Case for:
- Formal analysis using data and statistical methods constitute huge improvement in discipline imposed on analysis
- Traditional historical analysis vague, undisciplined (pick and choose anecdotes to fit the story) and hard to replicate
- Fact that it is easy to critique is a consequence of clarity of methods
- Pioneered causal historical analysis, which as been very influential
- To test their theory, AJR propose using settler mortality as an instrument for current institutions
Basic idea:
Colonizers didn't settle where settler mortality was high
- Settler mortality was determined by disease environment (mostly malaria and yellow fever)
- Places with malaria and yellow fever got worse institutions
(potential) settler  $\Rightarrow$  settlements mortality early current institutions
$\Rightarrow$  current performance.
Source: Acemoglu, Johnson, Robinson (2001)
Second stage regression:
$$
\log y _ {i} = \mu + \alpha R _ {i} + \mathbf {X} _ {i} ^ {\prime} \gamma + \epsilon_ {i}
$$
- First state regression:
$$
R _ {i} = \zeta + \beta \log M _ {i} + \mathbf {X} _ {i} ^ {\prime} \delta + v _ {i}
$$
- log  $y_{i}$  is log GDP per capita in 1995 PPP adjusted
- $R_{i}$  is protection against expropriation from Political Risk Services (Is this institutions or policy? Glaeser, et al. (2004))
- log  $M_{t}$  is log settler mortality
- For settler mortality to be a valid instrument, we must have:
- Relevance: It must strongly predict current institutions
- Exclusion: It must not affect current output through any other channel than current institutions (conditional on controls)
- What might be an important threat to the exclusion restriction?
- For settler mortality to be a valid instrument, we must have:
- Relevance: It must strongly predict current institutions
- Exclusion: It must not affect current output through any other channel than current institutions (conditional on controls)
- What might be an important threat to the exclusion restriction?
- Settler mortality likely correlates with current disease environment which may have a direct effect on GDP per capita today (Bloom and Sachs 98, Gallup and Sachs 98, Gallup et al. 98, Sachs and Malaney 02, Alsan 15)
- AJR argue that native population had developed immunity to malaria and yellow fever
- Settlers died but natives didn't (after early childhood)
- Yellow fever has been largely eradicated since
- AJR argue: “these diseases are therefore unlikely to be the reason why many countries in Africa and Asia are very poor today”
- Counterargument: Even if mortality is not high, morbidity is substantial (also TseTse fly)
- Another threat: Settlers brought themselves and their human capital
- Hard to distinguish human capital and institutions stories
Glaeser et al. (2004) argue for human capital story
Largely from work of Philip Curtin (Curtin 89, 98)
Not actually mortality of settlers
Mostly mortality of soldiers
- For Latin American mortality of bishops from Gutierrez (1986) rescaled for comparability with soldiers
- More on this in a few slides
- "Reduced form" regression:
$$
\log y _ {i} = \mu + \lambda \log M _ {i} + \mathbf {X} _ {i} ^ {\prime} \gamma + \epsilon_ {i}
$$
- First state regression:
$$
R _ {i} = \zeta + \beta \log M _ {i} + \mathbf {X} _ {i} ^ {\prime} \delta + v _ {i}
$$
- IV estimate is the ratio of  $\lambda$  and  $\beta$
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/7088886dd67158620540ef229e9d1ee7343698aece115078021d2a6e1cb39205.jpg)
FIGURE 3. FIRST-STAGE RELATIONSHIP BETWEEN SETTILER MORTALITY AND EXPREPIRATION RISK
Source: Acemoglu, Johnson, Robinson (2001)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/b8057c82eda22e359ecab552e1ce94c2a20b5fce067760872ce9d7277b8735a5.jpg)
FIGURE 1. REDUCED-FORM RELATIONSHIP BETWEEN INCOME AND SETTLER MORTALITY
Source: Acemoglu, Johnson, Robinson (2001)
TABLE 4-IV REGRESSIONS OF LOG GDP PER CAPITA
<table><tr><td></td><td>Base sample (1)</td><td>Base sample (2)</td><td>Base sample without Neo-Europes (3)</td><td>Base sample without Neo-Europes (4)</td><td>Base sample without Africa (5)</td><td>Base sample without Africa (6)</td><td>Base sample with continent dummies (7)</td><td>Base sample with continent dummies (8)</td><td>Base sample, dependent variable is log output per worker (9)</td></tr><tr><td colspan="10">Panel A: Two-Stage Least Squares</td></tr><tr><td rowspan="2">Average protection against expropriation risk 1985–1995</td><td>0.94</td><td>1.00</td><td>1.28</td><td>1.21</td><td>0.58</td><td>0.58</td><td>0.98</td><td>1.10</td><td>0.98</td></tr><tr><td>(0.16)</td><td>(0.22)</td><td>(0.36)</td><td>(0.35)</td><td>(0.10)</td><td>(0.12)</td><td>(0.30)</td><td>(0.46)</td><td>(0.17)</td></tr><tr><td rowspan="2">Latitude</td><td></td><td>-0.65</td><td></td><td>0.94</td><td></td><td>0.04</td><td></td><td>-1.20</td><td></td></tr><tr><td></td><td>(1.34)</td><td></td><td>(1.46)</td><td></td><td>(0.84)</td><td></td><td>(1.8)</td><td></td></tr><tr><td rowspan="2">Asia dummy</td><td></td><td></td><td></td><td></td><td></td><td></td><td>-0.92</td><td>-1.10</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td>(0.40)</td><td>(0.52)</td><td></td></tr><tr><td rowspan="2">Africa dummy</td><td></td><td></td><td></td><td></td><td></td><td></td><td>-0.46</td><td>-0.44</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td>(0.36)</td><td>(0.42)</td><td></td></tr><tr><td rowspan="2">“Other” continent dummy</td><td></td><td></td><td></td><td></td><td></td><td></td><td>-0.94</td><td>-0.99</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td>(0.85)</td><td>(1.0)</td><td></td></tr><tr><td colspan="10">Panel B: First Stage for Average Protection Against Expropriation Risk in 1985–1995</td></tr><tr><td rowspan="2">Log European settler mortality</td><td>-0.61</td><td>-0.51</td><td>-0.39</td><td>-0.39</td><td>-1.20</td><td>-1.10</td><td>-0.43</td><td>-0.34</td><td>-0.63</td></tr><tr><td>(0.13)</td><td>(0.14)</td><td>(0.13)</td><td>(0.14)</td><td>(0.22)</td><td>(0.24)</td><td>(0.17)</td><td>(0.18)</td><td>(0.13)</td></tr><tr><td rowspan="2">Latitude</td><td></td><td>2.00</td><td></td><td>-0.11</td><td></td><td>0.99</td><td></td><td>2.00</td><td></td></tr><tr><td></td><td>(1.34)</td><td></td><td>(1.50)</td><td></td><td>(1.43)</td><td></td><td>(1.40)</td><td></td></tr><tr><td rowspan="2">Asia dummy</td><td></td><td></td><td></td><td></td><td></td><td></td><td>0.33</td><td>0.47</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td>(0.49)</td><td>(0.50)</td><td></td></tr><tr><td rowspan="2">Africa dummy</td><td></td><td></td><td></td><td></td><td></td><td></td><td>-0.27</td><td>-0.26</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td>(0.41)</td><td>(0.41)</td><td></td></tr><tr><td rowspan="2">“Other” continent dummy</td><td></td><td></td><td></td><td></td><td></td><td></td><td>1.24</td><td>1.1</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td>(0.84)</td><td>(0.84)</td><td></td></tr><tr><td>R2</td><td>0.27</td><td>0.30</td><td>0.13</td><td>0.13</td><td>0.47</td><td>0.47</td><td>0.30</td><td>0.33</td><td>0.28</td></tr><tr><td colspan="10">Panel C: Ordinary Least Squares</td></tr><tr><td rowspan="2">Average protection against expropriation risk 1985–1995</td><td>0.52</td><td>0.47</td><td>0.49</td><td>0.47</td><td>0.48</td><td>0.47</td><td>0.42</td><td>0.40</td><td>0.46</td></tr><tr><td>(0.06)</td><td>(0.06)</td><td>(0.08)</td><td>(0.07)</td><td>(0.07)</td><td>(0.07)</td><td>(0.06)</td><td>(0.06)</td><td>(0.06)</td></tr><tr><td>Number of observations</td><td>64</td><td>64</td><td>60</td><td>60</td><td>37</td><td>37</td><td>64</td><td>64</td><td>61</td></tr></table>
Source: Acemoglu, Johnson, Robinson (2001)
- Consider two "typical countries": Nigeria and Chile (typical in that they are virtually on the regression line)
Differ by 2.24 in expropriation risk
- Fitted difference in  ${0.94} \times  {2.24} = {2.06}$  in logs or 7-fold in levels
- Actual difference: 11-fold in levels
TABLE 5-IV REGRESSIONS OF LOG GDP PER CAPITA WITH ADDITIONAL CONTROLS
<table><tr><td></td><td>Base sample (1)</td><td>Base sample (2)</td><td>British colonies only (3)</td><td>British colonies only (4)</td><td>Base sample (5)</td><td>Base sample (6)</td><td>Base sample (7)</td><td>Base sample (8)</td><td>Base sample (9)</td></tr><tr><td colspan="10">Panel A: Two-Stage Least Squares</td></tr><tr><td rowspan="2">Average protection against expropriation risk, 1985–1995</td><td>1.10</td><td>1.16</td><td>1.07</td><td>1.00</td><td>1.10</td><td>1.20</td><td>0.92</td><td>1.00</td><td>1.10</td></tr><tr><td>(0.22)</td><td>(0.34)</td><td>(0.24)</td><td>(0.22)</td><td>(0.19)</td><td>(0.29)</td><td>(0.15)</td><td>(0.25)</td><td>(0.29)</td></tr><tr><td rowspan="2">Latitude</td><td></td><td>-0.75</td><td></td><td></td><td></td><td>-1.10</td><td></td><td>-0.94</td><td>-1.70</td></tr><tr><td></td><td>(1.70)</td><td></td><td></td><td></td><td>(1.56)</td><td></td><td>(1.50)</td><td>(1.6)</td></tr><tr><td rowspan="2">British colonial dummy</td><td>-0.78</td><td>-0.80</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>(0.35)</td><td>(0.39)</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td rowspan="2">French colonial dummy</td><td>-0.12</td><td>-0.06</td><td></td><td></td><td></td><td></td><td></td><td></td><td>0.02</td></tr><tr><td>(0.35)</td><td>(0.42)</td><td></td><td></td><td></td><td></td><td></td><td></td><td>(0.69)</td></tr><tr><td rowspan="2">French legal origin dummy</td><td></td><td></td><td></td><td></td><td>0.89</td><td>0.96</td><td></td><td></td><td>0.51</td></tr><tr><td></td><td></td><td></td><td></td><td>(0.32)</td><td>(0.39)</td><td></td><td></td><td>(0.69)</td></tr><tr><td>p-value for religion variables</td><td></td><td></td><td></td><td></td><td></td><td></td><td>[0.001]</td><td>[0.004]</td><td>[0.42]</td></tr><tr><td colspan="10">Panel B: First Stage for Average Protection Against Expropriation Risk in 1985–1995</td></tr><tr><td rowspan="2">Log European settler mortality</td><td>-0.53</td><td>-0.43</td><td>-0.59</td><td>-0.51</td><td>-0.54</td><td>-0.44</td><td>-0.58</td><td>-0.44</td><td>-0.48</td></tr><tr><td>(0.14)</td><td>(0.16)</td><td>(0.19)</td><td>(0.14)</td><td>(0.13)</td><td>(0.14)</td><td>(0.13)</td><td>(0.15)</td><td>(0.18)</td></tr><tr><td rowspan="2">Latitude</td><td></td><td>1.97</td><td></td><td></td><td></td><td>2.10</td><td></td><td>2.50</td><td>2.30</td></tr><tr><td></td><td>(1.40)</td><td></td><td></td><td></td><td>(1.30)</td><td></td><td>(1.50)</td><td>(1.60)</td></tr><tr><td rowspan="2">British colonial dummy</td><td>0.63</td><td>0.55</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>(0.37)</td><td>(0.37)</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td rowspan="2">French colonial dummy</td><td>0.05</td><td>-0.12</td><td></td><td></td><td></td><td></td><td></td><td></td><td>-0.25</td></tr><tr><td>(0.43)</td><td>(0.44)</td><td></td><td></td><td></td><td></td><td></td><td></td><td>(0.89)</td></tr><tr><td rowspan="2">French legal origin</td><td></td><td></td><td></td><td></td><td>-0.67</td><td>-0.7</td><td></td><td></td><td>-0.05</td></tr><tr><td></td><td></td><td></td><td></td><td>(0.33)</td><td>(0.32)</td><td></td><td></td><td>(0.91)</td></tr><tr><td>R2</td><td>0.31</td><td>0.33</td><td>0.30</td><td>0.30</td><td>0.32</td><td>0.35</td><td>0.32</td><td>0.35</td><td>0.45</td></tr><tr><td colspan="10">Panel C: Ordinary Least Squares</td></tr><tr><td rowspan="2">Average protection against expropriation risk, 1985–1995</td><td>0.53</td><td>0.47</td><td>0.61</td><td>0.47</td><td>0.56</td><td>0.56</td><td>0.53</td><td>0.47</td><td>0.47</td></tr><tr><td>(0.19)</td><td>(0.07)</td><td>(0.09)</td><td>(0.06)</td><td>(0.06)</td><td>(0.06)</td><td>(0.06)</td><td>(0.06)</td><td>(0.06)</td></tr><tr><td>Number of observations</td><td>64</td><td>64</td><td>25</td><td>25</td><td>64</td><td>64</td><td>64</td><td>64</td><td>64</td></tr></table>
Source: Acemoglu, Johnson, Robinson (2001)
- Mortality rates for only 28 out of 64 countries from within country
Lots of choices as to which neighboring country to use
- Seven countries (all over Africa) get (different) rates from campaigns that occurred in Mali
- Bishop rates for 16 Latin American countries based on 4, 5, and 10 deaths out of at-risk populations of 24, 28.5, and 30.5 bishops in three regions
- Rates for three regions not statistically significantly different from each other or different from similar rates in Europe
- Multiplied by 4.25 to benchmark with mortality of French soldiers in Mexico in 1862-3
- Use campaign rates rather than barracks rates in some cases
# CAMPAIGN RATES VS. BARRACKS RATES
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/12a7ef4893a3049f27b3998148329c19d8fc866a0db85a583cadea84ce9b059a.jpg)
Logarithm of settler mortality
FIGURE 2B. INCOME PER CAPITA AND SETTLER MORTALITY ACCORDING TO MORTALITY RATE CHARACTERISTICS
<table><tr><td>From country:</td><td>● Barracks</td><td>■ Campaign</td><td>▲ Laborer</td></tr><tr><td>Conjectured:</td><td>○ Barracks</td><td>□ Campaign</td><td>▲ Laborer</td></tr></table>
Source: Albouy (2012)
- Results robust to lots of variation in choices made
- Can cap all mortality rates at 250
- Results robust to various ways of benchmarking bishop data
Albouy's preferred results largely driven by Gambia
- Little difference between activities of soldiers on campaign and in barracks
- Various theoretical reasons why trade may cause growth
Trade is correlated with growth
- But reverse causality and omitted variable bias plausible
- Frankel and Romer (1999): Propose to use geographical characteristics to instrument for trade
- Identifying assumption: Geographical characteristics in question do not have important effects on income except through their impact on trade
- Just as trade with foreigners may affect income, within-country trade may affect income
- Larger countries trade more within-country and less internationally (e.g., Germany vs. Belgium)
- If within-country trade is correlated with international trade (perhaps negatively) and affects income it will bias estimates of effect of international trade unless controlled for
- Frankel and Romer propose to control for country size as a proxy for within-country trade
- Simple "gravity" model of trade between countries  $i$  and  $j$ :
$$
\log \left(\frac {\tau_ {i j}}{Y _ {i}}\right) = a _ {0} + a _ {1} \log D _ {i j} + a _ {2} \log S _ {i} + a _ {3} \log S _ {j} + e _ {i j}
$$
# where
- $\tau_{ij}$  is trade between  $i$  and  $j$  (e.g., exports plus imports)
- $Y_{i}$  is GDP per person in  $i$
$D_{ij}$  is distance between  $i$  and  $j$
$S_{i}$  is size of  $i$
- Often includes other variables (e.g., colonial relation, language, etc.)
- Frankel and Romer only want geographical variables
(6)  $\ln (\tau_{ij} / \mathrm{GDP}_i)$
$$
\begin{array}{l} = a _ {0} + a _ {1} \ln D _ {i j} + a _ {2} \ln N _ {i} + a _ {3} \ln A _ {i} \\ + a _ {4} \ln N _ {j} + a _ {5} \ln A _ {j} + a _ {6} \left(L _ {i} + L _ {j}\right) \\ + a _ {7} B _ {i j} + a _ {8} B _ {i j} \ln D _ {i j} + a _ {9} B _ {i j} \ln N _ {i} \\ + a _ {1 0} B _ {i j} \ln A _ {i} + a _ {1 1} B _ {i j} \ln N _ {j} \\ + a _ {1 2} B _ {i j} \ln A _ {j} + a _ {1 3} B _ {i j} \left(L _ {i} + L _ {j}\right) + e _ {i j}, \\ \end{array}
$$ where  $N$  is population,  $A$  is area,  $L$  is a dummy for landlocked countries, and  $B$  is a dummy for a common border between two countries.
Source: Frankel and Romer (1999)
TABLE 1THE BILATERAL TRADE EQUATION
<table><tr><td></td><td>Variable</td><td>Interaction</td></tr><tr><td>Constant</td><td>-6.38(0.42)</td><td>5.10(1.78)</td></tr><tr><td>Ln distance</td><td>-0.85(0.04)</td><td>0.15(0.30)</td></tr><tr><td>Ln population (country i)</td><td>-0.24(0.03)</td><td>-0.29(0.18)</td></tr><tr><td>Ln area (country i)</td><td>-0.12(0.02)</td><td>-0.06(0.15)</td></tr><tr><td>Ln population (country j)</td><td>0.61(0.03)</td><td>-0.14(0.18)</td></tr><tr><td>Ln area (country j)</td><td>-0.19(0.02)</td><td>-0.07(0.15)</td></tr><tr><td>Landlocked</td><td>-0.36(0.08)</td><td>0.33(0.33)</td></tr><tr><td>Sample size</td><td></td><td>3220</td></tr><tr><td> R^2 </td><td></td><td>0.36</td></tr><tr><td>SE of regression</td><td></td><td>1.64</td></tr></table>
Notes: The dependent variable is  $\ln (\tau_{ij} / \mathrm{GDP}_i)$ . The first column reports the coefficient on the variable listed, and the second column reports the coefficient on the variable's interaction with the common-border dummy. Standard errors are in parentheses.
Source: Frankel and Romer (1999)
- Frankel and Romer aggregate this bilateral gravity relationship to the country level
- Let's rewrite gravity equation as
$$
\log \left(\frac {\tau_ {i j}}{Y _ {i}}\right) = \mathbf {a} ^ {\prime} \mathbf {X} _ {i j} + \mathbf {e} _ {i j}
$$
- Geographic component of overall trade for country  $i$ :
$$
\hat {T} _ {i} = \sum_ {j \neq i} e ^ {\hat {\mathbf {a}} ^ {\prime} \mathbf {X} _ {i j}}
$$
- $\hat{T}_i$  is the instrument Frankel and Romer use
TABLE 2THE RELATION BETWEEN ACTUAL AND CONSTRUCTED OVERALL TRADE
<table><tr><td></td><td>(1)</td><td>(2)</td><td>(3)</td></tr><tr><td>Constant</td><td>46.41</td><td>218.58</td><td>166.97</td></tr><tr><td></td><td>(4.10)</td><td>(12.89)</td><td>(18.88)</td></tr><tr><td>Constructed trade share</td><td>0.99</td><td></td><td>0.45</td></tr><tr><td></td><td>(0.10)</td><td></td><td>(0.12)</td></tr><tr><td>Ln population</td><td></td><td>-6.36</td><td>-4.72</td></tr><tr><td></td><td></td><td>(2.09)</td><td>(2.06)</td></tr><tr><td>Ln area</td><td></td><td>-8.93</td><td>-6.45</td></tr><tr><td></td><td></td><td>(1.70)</td><td>(1.77)</td></tr><tr><td>Sample size</td><td>150</td><td>150</td><td>150</td></tr><tr><td>R2</td><td>0.38</td><td>0.48</td><td>0.52</td></tr><tr><td>SE of regression</td><td>36.33</td><td>33.49</td><td>32.19</td></tr></table>
Notes: The dependent variable is the actual trade share. Standard errors are in parentheses.
Source: Frankel and Romer (1999)
$$
\log Y _ {i} = a + b T _ {i} + c _ {1} \log N _ {i} + c _ {2} \log A _ {i} + u _ {i}
$$
- $Y_{i}$  is GDP per person,  $T_{i}$  is exports plus imports over GDP,  $N_{i}$  is population,  $A_{i}$  is area
- IV regression with gravity instrument  $(\hat{T}_i)$  instrumenting for  $T_i$
Data from 1985
TABLE 3-TRADE AND INCOME
<table><tr><td></td><td>(1)</td><td>(2)</td><td>(3)</td><td>(4)</td></tr><tr><td>Estimation</td><td>OLS</td><td>IV</td><td>OLS</td><td>IV</td></tr><tr><td>Constant</td><td>7.40</td><td>4.96</td><td>6.95</td><td>1.62</td></tr><tr><td></td><td>(0.66)</td><td>(2.20)</td><td>(1.12)</td><td>(3.85)</td></tr><tr><td>Trade share</td><td>0.85</td><td>1.97</td><td>0.82</td><td>2.96</td></tr><tr><td></td><td>(0.25)</td><td>(0.99)</td><td>(0.32)</td><td>(1.49)</td></tr><tr><td>Ln population</td><td>0.12</td><td>0.19</td><td>0.21</td><td>0.35</td></tr><tr><td></td><td>(0.06)</td><td>(0.09)</td><td>(0.10)</td><td>(0.15)</td></tr><tr><td>Ln area</td><td>-0.01</td><td>0.09</td><td>-0.05</td><td>0.20</td></tr><tr><td></td><td>(0.06)</td><td>(0.10)</td><td>(0.08)</td><td>(0.19)</td></tr><tr><td>Sample size</td><td>150</td><td>150</td><td>98</td><td>98</td></tr><tr><td>R2</td><td>0.09</td><td>0.09</td><td>0.11</td><td>0.09</td></tr><tr><td>SE of regression</td><td>1.00</td><td>1.06</td><td>1.04</td><td>1.27</td></tr><tr><td>First-stage F on excluded instrument</td><td></td><td>13.13</td><td></td><td>8.45</td></tr></table>
Notes: The dependent variable is log income per person in 1985. The 150-country sample includes all countries for which the data are available; the 98-country sample includes only the countries considered by Mankiw et al. (1992). Standard errors are in parentheses.
Source: Frankel and Romer (1999)
- Three potential "deep" determinants of growth:
Geography
Trade
Institutions
- Geography clearly exogenous
(but may affect income through trade or institutions)
- Main instruments for trade and institutions based on geography
Seems tricky to tell these apart!
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/5bd8cd2778952561fff4a999d190d2c6afb853c13a521b795890f941027d59f1.jpg)
Figure 1. The "deep" determinants of income.
Source: Rodrik, Subramanian, Trebbi (2004)
- Rodrik, Subramanian, Trebbi (2004):
- AJR 01 control for geography but not trade
- FR 99 control for geography but not institutions
They consider all three together
- Conclude that institutions trump other deep determinants
$$
\log y _ {i} = \mu + \alpha \mathrm {I N S} _ {i} + \beta \mathrm {I N T} _ {i} + \gamma \mathrm {G E O} _ {i} + \epsilon_ {i}
$$
- log  $y_{i}$  is GDP per capita on PPP basis
- $\mathsf{INS}_i$  is rule of law measure from Kaufman, Kraay, Zoido-Lobaton 02 (different from expropriation risk measure used by AJR 01)
$\bullet$  INT is ratio of trade to GDP
$\bullet$ $\mathsf{GEO}_i$  is distance to the equator
- all regressors are standardized (unit standard deviation)
- Use settler mortality and gravity instrument for  $\mathrm{INS}_i$  and  $\mathrm{INT}_i$
Table 3. Determinants of development: Core specifications, instrumental variables estimates.
<table><tr><td rowspan="2"></td><td colspan="3">Acemoglu et al. Sample</td><td colspan="3">Extended Acemoglu et al. Sample</td><td colspan="3">Large Sample</td></tr><tr><td>(1)</td><td>(2)</td><td>(3)</td><td>(4)</td><td>(5)</td><td>(6)</td><td>(7)</td><td>(8)</td><td>(9)</td></tr><tr><td colspan="10">Panel A. Second-stage: Dependent variable = Log GDP per capita</td></tr><tr><td rowspan="2">Geography (DISTEQ)</td><td>0.74</td><td>-0.42</td><td>-0.56</td><td>0.80</td><td>-0.45</td><td>-0.72</td><td>0.76</td><td>-0.06</td><td>-0.14</td></tr><tr><td>(4.48)*</td><td>(-1.19)</td><td>(-1.23)</td><td>(5.22)*</td><td>(-1.26)</td><td>(-1.38)</td><td>(10.62)*</td><td>(-0.5)</td><td>(-0.93)</td></tr><tr><td rowspan="2">Institutions (RULE)</td><td></td><td>1.68</td><td>1.78</td><td></td><td>1.75</td><td>1.98</td><td></td><td>1.19</td><td>1.30</td></tr><tr><td></td><td>(4.29)*</td><td>(3.78)*</td><td></td><td>(4.42)*</td><td>(3.56)*</td><td></td><td>(8.02)*</td><td>(7.09)*</td></tr><tr><td rowspan="2">Integration (LCOPEN)</td><td></td><td></td><td>-0.18</td><td></td><td></td><td>-0.31</td><td></td><td></td><td>-0.15</td></tr><tr><td></td><td></td><td>(-0.71)</td><td></td><td></td><td>(-1.10)</td><td></td><td></td><td>(-1.09)</td></tr><tr><td>No. of observations</td><td>64</td><td>64</td><td>64</td><td>79</td><td>79</td><td>79</td><td>137</td><td>137</td><td>137</td></tr><tr><td>R-square</td><td>0.25</td><td>0.54</td><td>0.56</td><td>0.26</td><td>0.51</td><td>0.52</td><td>0.417</td><td>0.51</td><td>0.56</td></tr><tr><td colspan="8">Test for over-identifying restrictions (p-value)</td><td>(0.0089)</td><td>(0.0354)</td></tr><tr><td colspan="10">Panel B: First Stage for Endogenous Variables (Institutions (RULE) and Integration (LCOPEN))</td></tr><tr><td>Dependent variable</td><td>RULE</td><td>RULE</td><td>LCOPEN</td><td>RULE</td><td>RULE</td><td>LCOPEN</td><td>RULE</td><td>RULE</td><td>LCOPEN</td></tr><tr><td rowspan="2">Geography (DISTEQ)</td><td>0.41</td><td>0.47</td><td>-0.25</td><td>0.47</td><td>0.54</td><td>-0.18</td><td>0.67</td><td>0.66</td><td>-0.05</td></tr><tr><td>(2.8)*</td><td>(3.21)*</td><td>(-2.00)**</td><td>(3.34)*</td><td>(3.87)*</td><td>(-1.37)</td><td>(10.81)*</td><td>(11.23)*</td><td>(-0.84)</td></tr><tr><td>Settler mortality</td><td>-0.39</td><td>-0.40</td><td>-0.30</td><td>-0.34</td><td>-0.34</td><td>-0.27</td><td></td><td></td><td></td></tr><tr><td>(LOGEM4)</td><td>(-3.87)*</td><td>(-4.1)*</td><td>(-3.51)*</td><td>(-3.69)*</td><td>(-3.82)*</td><td>(-3.22)*</td><td></td><td></td><td></td></tr><tr><td>Population speaking</td><td></td><td></td><td></td><td></td><td></td><td></td><td>0.19</td><td>0.18</td><td>0.17</td></tr><tr><td>English (ENGFRAC)</td><td></td><td></td><td></td><td></td><td></td><td></td><td>(2.69)*</td><td>(2.69)*</td><td>(2.65)*</td></tr><tr><td>Population speaking</td><td></td><td></td><td></td><td></td><td></td><td></td><td>0.14</td><td>0.17</td><td>-0.11</td></tr><tr><td>other European languages (EURFRAC)</td><td></td><td></td><td></td><td></td><td></td><td></td><td>(1.94)**</td><td>(2.55)**</td><td>(-1.67)**</td></tr><tr><td rowspan="2">Constructed openness (LOGFRANKROM)</td><td>na</td><td>0.20</td><td>0.90</td><td>na</td><td>0.19</td><td>0.80</td><td>na</td><td>0.23</td><td>0.70</td></tr><tr><td></td><td>(1.95)**</td><td>(10.32)*</td><td></td><td>(2.16)**</td><td>(9.67)*</td><td></td><td>(3.99)*</td><td>(12.33)*</td></tr><tr><td>F-statistic</td><td>22.9</td><td>17.2</td><td>41.7</td><td>24</td><td>18.5</td><td>36.9</td><td>50.09</td><td>45.79</td><td>41.39</td></tr><tr><td>R-square</td><td>0.41</td><td>0.44</td><td>0.66</td><td>0.37</td><td>0.40</td><td>0.58</td><td>0.52</td><td>0.57</td><td>0.54</td></tr><tr><td>Partial R-square</td><td></td><td>0.16</td><td>0.58</td><td></td><td>0.12</td><td>0.51</td><td></td><td>0.18</td><td>0.52</td></tr><tr><td>corr(RULEFIT, LOPENFIT)</td><td></td><td>0.14</td><td></td><td></td><td>0.21</td><td></td><td></td><td>0.27</td><td></td></tr></table>
Source: Rodrik, Subramanian, Trebbi (2004). T-stats in parentheses.
OLS
Market Size Controls
- Since instruments for  $\mathrm{INS}_i$  and  $\mathrm{INT}_i$  are based on geography, it is tricky to tell the effects of these variables apart from direct effects of geography
- This depends crucially on the  $\mathbf{GEO}_i$  variable (distance to the equator) being different from settler mortality (in the case of  $\mathsf{INS}_t$ ).
- But both are imperfect proxies and not clear that current effects of geography flow through a very different variable than settler mortality (both plausibly about malaria)
Table 6. Determinants of development: Robustness to "influential" observations, neoeuropes, legal systems, origin of colonizer, a
<table><tr><td></td><td>Baseline 1</td><td>(1)*</td><td>(1)**</td><td>(1)***</td><td>(1)****</td><td>Baseline 2</td><td>(2)*</td><td>(2)**</td><td>(2)***</td></tr><tr><td colspan="10">Two-stage Least Squares: Dependent Variable is log GDP per Capita in 1995</td></tr><tr><td>Geography (DISTEQ)</td><td>-0.72(-1.38)</td><td>-1.37(-1.71)***</td><td>-0.71(-1.42)</td><td>-0.92(-1.18)</td><td>-0.62(-0.82)</td><td>-0.14(-0.93)</td><td>-0.14(-0.94)</td><td>0.02(0.20)</td><td>-0.34(-1.48)</td></tr><tr><td>Institutions (RULE)</td><td>1.98(3.56)*</td><td>2.66(3.06)*</td><td>1.86(3.26)*</td><td>2.77(2.45)**</td><td>1.99(1.64)</td><td>1.30(7.09)*</td><td>1.30(7.14)*</td><td>0.90(8.54)*</td><td>1.64(5.15)*</td></tr><tr><td>Integration (LCOPEN)</td><td>-0.31(-1.10)</td><td>-0.45(-1.12)</td><td>-0.33(-1.26)</td><td>-0.74(-1.31)</td><td>-0.44(-0.80)</td><td>-0.15(-1.09)</td><td>-0.15(-1.02)</td><td>0.02(0.18)</td><td>-0.31(-1.92)**</td></tr><tr><td>Regional Dummies</td><td></td><td></td><td>0.42(1.18)</td><td></td><td>0.15(0.28)</td><td></td><td></td><td>0.25(1.65)***</td><td></td></tr><tr><td>Latin America (LAAM)</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Sub-Saharan Africa(SAFRICA)</td><td></td><td></td><td>-0.17(-0.43)</td><td></td><td>-0.41(-1.05)</td><td></td><td></td><td>-0.62(-3.70)*</td><td></td></tr><tr><td>East Asia (ASIAE)</td><td></td><td></td><td>0.22(0.50)</td><td></td><td>0.05(0.10)</td><td></td><td></td><td>0.13(0.65)</td><td></td></tr><tr><td colspan="10">Legal originIdentity of colonizerReligion</td></tr><tr><td>R-square</td><td>0.52</td><td>0.56</td><td>0.65</td><td>0.44</td><td>0.63</td><td>0.56</td><td>0.59</td><td>0.68</td><td>0.55</td></tr><tr><td>No. of observations</td><td>79</td><td>77</td><td>78</td><td>75</td><td>75</td><td>137</td><td>136</td><td>134</td><td>133</td></tr><tr><td>Omitted observations</td><td>None</td><td>SingaporeEthiopia</td><td>Ethiopia</td><td>AustraliaCanadaNewZealandUSA</td><td>AustraliaCanadaNewZealandUSA</td><td>None</td><td>Singapore</td><td>CubacZech Rep.Germany</td><td>AustraliaCanadaNewZealandUSA</td></tr></table>
Source: Rodrik, Subramanian, Trebbi (2004). T-stats in parentheses.
Table 1 Income regressions with institutions and trade
<table><tr><td colspan="12">Dependent variable: Ln(per capita GDP at PPP) in 1995</td></tr><tr><td></td><td>(1)OLS</td><td>(2)IV</td><td>(3)OLS</td><td>(4)IV</td><td>(5)OLS</td><td>(6)IV</td><td>(7)IV</td><td>(8)OLS</td><td>(9)IV</td><td>(10)IV</td><td>(11)IV</td></tr><tr><td>Rule of law</td><td>1.01(24.61)</td><td>1.30(9.57)</td><td></td><td></td><td>0.79(10.40)</td><td>1.26(3.65)</td><td>3.52(1.18)</td><td>0.66(7.98)</td><td>1.03(2.87)</td><td>2.64(1.23)</td><td>1.53(8.42)</td></tr><tr><td>Ln(trade/GDP)</td><td></td><td></td><td>1.09(12.40)</td><td>1.67(4.41)</td><td>0.41(3.91)</td><td>0.18(0.31)</td><td>-3.40(0.71)</td><td>0.39(3.73)</td><td>0.79(1.05)</td><td>-1.67(0.47)</td><td>-1.37(0.23)</td></tr><tr><td>Landlock</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>-0.45(4.30)</td><td>-0.19(1.09)</td><td>0.14(0.25)</td><td></td></tr><tr><td>Distance from equator</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>0.0082(2.34)</td><td>-0.01(1.47)</td><td>-0.01(0.58)</td><td></td></tr><tr><td>Ln(population)</td><td></td><td></td><td>0.23(5.84)</td><td>0.35(4.04)</td><td>0.16(4.61)</td><td>0.13(1.09)</td><td>-0.53(0.56)</td><td>0.12(3.51)</td><td>0.26(1.53)</td><td>-0.18(0.26)</td><td>-0.25(0.17)</td></tr><tr><td> R^2 </td><td>0.69</td><td></td><td>0.48</td><td></td><td>0.73</td><td></td><td></td><td>0.76</td><td></td><td></td><td></td></tr><tr><td>No. of observations</td><td>154</td><td>153</td><td>144</td><td>144</td><td>134</td><td>134</td><td>130</td><td>134</td><td>134</td><td>130</td><td>68</td></tr><tr><td colspan="12">Instruments</td></tr><tr><td>Engfrac</td><td></td><td>X</td><td></td><td></td><td></td><td>X</td><td>X</td><td></td><td>X</td><td>X</td><td></td></tr><tr><td>Eurfrac</td><td></td><td>X</td><td></td><td></td><td></td><td>X</td><td>X</td><td></td><td>X</td><td>X</td><td></td></tr><tr><td>Predicted trade</td><td></td><td></td><td></td><td>X</td><td></td><td>X</td><td>X</td><td></td><td>X</td><td>X</td><td></td></tr><tr><td>Settler mortality</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>X</td></tr><tr><td>Omitted observations</td><td></td><td></td><td></td><td></td><td></td><td></td><td>USA</td><td></td><td></td><td>USA</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>CAN</td><td></td><td></td><td>CAN</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>AUS</td><td></td><td></td><td>AUS</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>NZL</td><td></td><td></td><td>NZL</td><td></td></tr></table>
Note: All regressions include a constant (not reported). Absolute value of  $t$ -statistics calculated with White-corrected standard errors is in parentheses.
Dollar and Kraay (2003) make institutions statistically insignificant by:
Using the large sample
- Dropping USA, CAN, AUS, NZL
- Adding controls for landlocked and population
Using "real openness"
(i.e., defining openness somewhat differently from Frankel-Romer)
Pascali (AER 2017):
Uses introduction of steam ships as asymmetric shock to trade (wind patterns less important after introduction of steam)
Feyrer (AEJ: Applied 2019):
- Improvement in air travel is time-varying / asymmetric shock to trade
Feyrer (JDE 2021):
Exploits closing of the Suez canal between 1967 and 1975
- Much work on institutions and growth
- Prominent example: South Korea vs. North Korea
How convincing is this?
- Might this be luck?
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/0aaf767448803b995e54ce7c3ada4cdccc6be08b88b39662f036c31c2c40c7ef.jpg)
South Korea -North Korea
Source: Daron Acemoglu.
# SOUTH KOREA VS. NORTH KOREA
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/703d4c2a284f8a7d1c755934562b1afcc0c1f747f2821734ebcd86e6211c14d1.jpg)
Source: National Geographic
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/09a7f8f4d77df8d839f045cbe230b1522745f04b7b4d49f1c5de4e20f195c0fb.jpg)
Figure 1. Executive constraints 1948-2001 North versus South Korea.
Source: Glaeser, La Porta, Lopez-de-Silanes, Shleifer (2004)
- Gleaser et al. (2004) argue that institutions view doesn't work for Korea
- South Korea grew rapidly under one-party dictatorship
- Only improved institutions (constraints on executive) after long period of high growth
- Alternative: South Korea was lucky to have a "good" leader
Growth took off under leadership of Park Chung-hee (1961-1979)
He was not constrained by "good institutions"
- Perhaps which countries develop and which don't comes down to luck regarding leaders
- Views differ sharply! Tolstoy: Historical figures mere ex post justifications for events out of any individual's influence
- Marxists: "Materialist dialectic" holds that social and economic forces trump individuals
- John Keegan: The political history of the twentieth century can be found in the biographies of six men: Lenin, Stalin, Hitler, Mao, Roosevelt and Churchill.
- Claim: National leaders cause changes in growth
- Simple minded evidence: Look at changes in growth when leaders change
- Claim: National leaders cause changes in growth
- Simple minded evidence: Look at changes in growth when leaders change
- But leadership transitions are non-random
Bad shocks may cause leaders to lose power
Good shocks may shield leaders
- Look at leadership transition due to leaders dying in office
- Consider cases when leaders die of natural causes or due to accidents (not assassinations)
- Timing of transition is random
TABLEI HOW LEADERS LEAVE POWER
<table><tr><td colspan="9">130 Countries
All Leaders from 1945 or National Independence Date through 2000
Number of Observations, by Type</td></tr><tr><td>Lost election
310</td><td></td><td>Term limits
178</td><td>Voluntary retirement
131</td><td>Deposed
222</td><td></td><td>Deatha
105</td><td>Other
225</td><td>Total
1184b</td></tr><tr><td>Assassination
28</td><td></td><td></td><td>Natural
65</td><td></td><td></td><td></td><td>Accidental
12</td><td></td></tr><tr><td>Heart disease
29</td><td>Cancer
12</td><td>Stroke
6</td><td>Other disease
6</td><td>Surgical complications
3</td><td>Other
9</td><td></td><td>Air crash
8</td><td>Other
4</td></tr></table> a. There are 21 further cases (not included here) where leaders are killed during a coup.
b. There are 1294 distinct terms in which leaders are in power in the data set, but only 1184 counted in this table, as we do not witness the exit of leaders who are still in power at the end of the year 2000.
c. There are 77 cases of leaders who die in office by natural causes or accidents, but only 57 who die during periods where there are available growth data before and after the leader's death.
Source: Jones and Olken (2005)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/f9a9afd95b5623018ba385e23ee2a3529ab9e8c01d485be86ad2a3103dfa6d02.jpg)
FIGURE I Growth and Leader Deaths
Source: Jones and Olken (2005). China: Mao. Mozambique: Samora Machel (nationalized private land).
Guinea: Sekou Toure (totalitarianism/violent purges). Iran: Ayatollah Khomeini (Iran-Iraq war).
- Timing of death is random, but timing of accession to power is not
- Can't use growth during leader's reign
- Calculate growth in  $T$  years before and after random transition
$$ g _ {i t} = \alpha_ {z} \mathrm {P R E} _ {z} + \beta_ {z} \mathrm {P O S T} _ {z} + v _ {i} + v _ {t} + \epsilon_ {i t}
$$
- $z$  denotes particular leader death
- $\mathrm{PRE}_z$ : dummy for  $T$  years prior to death
- POST $_z$ : dummy for  $T$  years after death (they exclude year of death)
- $v_{i}$ ,  $v_{t}$ : country and year fixed effects
$\bullet$ $\epsilon_{it}$ : Other influences on growth
Wald test:
$$
J = \frac {1}{Z} \sum_ {z = 1} ^ {Z} \frac {\widehat {\left(\text {P O S T - P R E} _ {z}\right) ^ {2}}}{2 \hat {\sigma} _ {\epsilon z} ^ {2} / T}
$$
- Compares change in growth pre and post leader death to usual variation in growth
Under null of no effect,  $Z \times J$  will be distributed  $\chi^2(Z)$
- POST-PRE $_z = \alpha_z - \beta_z$  from regression on previous page
- Rank test:
$$
K = \frac {\sum (y _ {z} - 1 / 4)}{\sqrt {Z / 4 8}}
$$
$y_{z} = |r_{z} - 1 / 2|$  where  $r_z$  is rank of  $\widehat{POST - PRE}_z$  among all POST-PREit
- $r_z$  is  $U[0,1]$  under null that leaders don't matter.
So,  $E[y_{z}] = 1 / 4$  and  $\text{var}[y_{z}] = 1 / 48$
TABLE III DO LEADERS MATTER?
<table><tr><td rowspan="2"></td><td colspan="3">All leaders</td><td colspan="3">Leaders with tenure ≥ 2 years</td></tr><tr><td>J-statistic</td><td>Wald P-value</td><td>Rank P-value</td><td>J-statistic</td><td>Wald P-value</td><td>Rank P-value</td></tr><tr><td colspan="7">Treatment timings</td></tr><tr><td>t</td><td>1.312</td><td>.0573*</td><td>0.017**</td><td>1.392</td><td>.0390**</td><td>0.004***</td></tr><tr><td>t + 1</td><td>1.272</td><td>.0845*</td><td>0.075*</td><td>1.361</td><td>.0537*</td><td>0.052*</td></tr><tr><td>t + 2</td><td>1.308</td><td>.0669*</td><td>0.172</td><td>1.443</td><td>.0314**</td><td>0.121</td></tr><tr><td colspan="7">Control timings</td></tr><tr><td>t - 5</td><td>0.841</td><td>.7953</td><td>0.446</td><td>0.918</td><td>.6269</td><td>0.357</td></tr><tr><td>t - 6</td><td>0.986</td><td>.5026</td><td>0.806</td><td>0.962</td><td>.5409</td><td>0.905</td></tr><tr><td>Number of leaders (t)</td><td>57</td><td>57</td><td>57</td><td>47</td><td>47</td><td>47</td></tr><tr><td>Number of observations (t)</td><td>5567</td><td>5567</td><td>5567</td><td>5567</td><td>5567</td><td>5567</td></tr></table>
Source: Jones and Olken (2005).
- POST-PRE is 31 percent higher around leader deaths
- A few more assumptions imply that a one standard deviation increase in leader quality increases growth by 1.47 percentage points per year
Huge effect!!
- POST-PRE is 31 percent higher around leader deaths
- A few more assumptions imply that a one standard deviation increase in leader quality increases growth by 1.47 percentage points per year
Huge effect!!
- For autocracies, effect is 2.1 percentage points per year
- For democracies, effect is zero
TABLE V INTERACTIONS WITH TYPE OF POLITICAL REGIME IN YEAR PRIOR TO DEATH
<table><tr><td></td><td>Jstatistic</td><td>Wald P-value</td><td>Rank P-value</td><td>Jstatistic</td><td>Wald P-value</td><td>Rank P-value</td></tr><tr><td></td><td colspan="3">Autocrats (Polity IV)</td><td colspan="3">Democrats (Polity IV)</td></tr><tr><td>Treatment timings</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>t</td><td>1.621</td><td>0.019**</td><td>0.040**</td><td>1.000</td><td>0.460</td><td>0.106</td></tr><tr><td>t + 1</td><td>1.672</td><td>0.016**</td><td>0.017**</td><td>0.932</td><td>0.552</td><td>0.712</td></tr><tr><td>t + 2</td><td>1.592</td><td>0.028**</td><td>0.051*</td><td>1.021</td><td>0.432</td><td>0.636</td></tr><tr><td>Control timings</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>t - 5</td><td>0.849</td><td>0.698</td><td>0.837</td><td>0.866</td><td>0.632</td><td>0.075*</td></tr><tr><td>t - 6</td><td>1.094</td><td>0.334</td><td>0.977</td><td>0.647</td><td>0.873</td><td>0.191</td></tr><tr><td>Number of leaders (t)</td><td>29</td><td>29</td><td>29</td><td>22</td><td>22</td><td>22</td></tr></table>
Source: Jones and Olken (2005). One standard deviation increase in autocratic leader quality increases growth by 2.1 percentage points per year.
- Very little consensus on how to achieve growth
One view: "Washington Consensus" (Williamson, 1990)
Table 2
Rules of good behavior for promoting economic growth
<table><tr><td>Original Washington Consensus:</td><td>“Augmented” Washington Consensus: … the previous 10 items, plus:</td></tr><tr><td>1. Fiscal discipline</td><td>11. Corporate governance</td></tr><tr><td>2. Reorientation of public expenditures</td><td>12. Anti-corruption</td></tr><tr><td>3. Tax reform</td><td>13. Flexible labor markets</td></tr><tr><td>4. Interest rate liberalization</td><td>14. Adherence to WTO disciplines</td></tr><tr><td>5. Unified and competitive exchange rates</td><td>15. Adherence to international financial codes and standards</td></tr><tr><td>6. Trade liberalization</td><td>16. “Prudent” capital-account opening</td></tr><tr><td>7. Openness to DFI</td><td>17. Non-intermediate exchange rate regimes</td></tr><tr><td>8. Privatization</td><td>18. Independent central banks/inflation targeting</td></tr><tr><td>9. Deregulation</td><td>19. Social safety nets</td></tr><tr><td>10. Secure property rights</td><td>20. Targeted poverty reduction</td></tr></table>
Source: Rodrik (2005).
# ONE ECONOMICS, MANY RECIPES
- West didn't follow Washington Consensus when it developed
Asian Tiger's deviated substantially from Washington Consensus
Highly state directed development
- Directed credit, trade protections, export subsidies
- Closed capital accounts until 1980s
- Rodrik (2005): "There is no unique correspondence between the function that good institutions perform and the form that such institutions take."
- China's liberalization of agriculture only at the margin (Lau, Qian, Roland, 2000)
- China's township and village enterprises (municipal rather than private property rights)
- Local political economy crucial. One recipe does not fit all.
# Appendix
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/ba2a79452163bae1d91f98a7ce18a9e84c95707f216d6fbcf44f579dbaa16530.jpg)
FIGURE 1. ASSIGNMENT OF MORTALITY RATES FROM MALI
Table 2. Determinants of development: Core specifications, ordinary least squares estimates.
<table><tr><td rowspan="3">Dependent Variable</td><td colspan="9">Log GDP per capita</td></tr><tr><td colspan="3">Acemoglu et al. Sample</td><td colspan="3">Extended Acemoglu et al. Sample</td><td colspan="3">Large Sample</td></tr><tr><td>(1)</td><td>(2)</td><td>(3)</td><td>(4)</td><td>(5)</td><td>(6)</td><td>(7)</td><td>(8)</td><td>(9)</td></tr><tr><td>Geography (DISTEQ)</td><td>0.74 (4.48)*</td><td>0.20 (1.34)</td><td>0.32 (1.85)**</td><td>0.80 (5.22)*</td><td>0.22 (1.63)</td><td>0.33 (2.11)**</td><td>0.76 (10.62)*</td><td>0.20 (2.48)**</td><td>0.23 (2.63)*</td></tr><tr><td>Institutions (RULE)</td><td></td><td>0.78 (7.56)*</td><td>0.69 (6.07)*</td><td></td><td>0.81 (9.35)*</td><td>0.72 (6.98)*</td><td></td><td>0.81 (12.12)*</td><td>0.78 (10.49)*</td></tr><tr><td>Integration (LCOPEN)</td><td></td><td></td><td>0.16 (1.48)</td><td></td><td></td><td>0.15 (1.53)</td><td></td><td></td><td>0.08 (1.24)</td></tr><tr><td>Observations</td><td>64</td><td>64</td><td>64</td><td>79</td><td>79</td><td>79</td><td>137</td><td>137</td><td>137</td></tr><tr><td>R-square</td><td>0.25</td><td>0.57</td><td>0.59</td><td>0.26</td><td>0.61</td><td>0.62</td><td>0.42</td><td>0.71</td><td>0.71</td></tr></table>
Notes: The dependent variable is per capita GDP in 1995, PPP basis. There are three samples for which the core regressions are run: (i) the first three columns correspond to the sample of 64 countries in Acemoglu et al. (2001); (ii) columns (4)-(6) use a sample of 79 countries for which data on settler mortality (LOGEM4) have been compiled by Acemoglu et al.; and (iii) columns (7)-(9) use a larger sample of 137 countries. The regressors are: (i) DISTEQ, the variable for geography, which is measured as the absolute value of latitude of a country; (ii) Rule of law (RULE), which is the measure for institutions; and (iii) LCOPEN, the variable for integration, which is measured as the ratio of nominal trade to nominal GDP. All regressors are scaled in the sense that they represent deviations from the mean divided by the standard deviation. All regressors, except DISTEQ and RULE, in the three panels are in logs. See the Appendix for more detailed variable definitions and sources.  $t$ -statistics are reported under coefficient estimates. Significance at the 1, 5, and 10 percent levels are denoted respectively by *, ***, and ***
Source: Rodrik, Subramanian, Trebbi (2004). T-stats in parentheses.
Back
Table 8. Determinants of development: Robustness to alternative measures and instruments for integration.
<table><tr><td></td><td>Baseline</td><td>(1)</td><td>(2)</td><td>(3)</td><td>(4)</td><td>(5)</td><td>(6)</td><td>(7)</td></tr><tr><td colspan="9">Two-Stage Least Squares: Dependent Variable is log GDP per Capita in 1995</td></tr><tr><td rowspan="2">Geography (DISTEQ))</td><td>-0.72</td><td>-0.56</td><td>-0.63</td><td>0.13</td><td>0.12</td><td>-1.16</td><td>-1.24</td><td>-0.86</td></tr><tr><td>(-1.38)</td><td>(-0.83)</td><td>(-0.88)</td><td>(0.38)</td><td>(0.35)</td><td>(-1.25)</td><td>(-1.14)</td><td>(-1.17)</td></tr><tr><td rowspan="2">Institutions (RULE)</td><td>1.98</td><td>1.83</td><td>1.90</td><td>0.97</td><td>0.99</td><td>2.70</td><td>2.84</td><td>2.55</td></tr><tr><td>(3.56)*</td><td>(2.64)**</td><td>(2.58)**</td><td>(2.39)**</td><td>(2.46)**</td><td>(2.14)**</td><td>(1.82)**</td><td>(2.11)**</td></tr><tr><td rowspan="2">Integration (LCOPEN)</td><td>-0.31</td><td>0.12</td><td>-0.01</td><td>-0.87</td><td>-0.85</td><td></td><td></td><td></td></tr><tr><td>(-1.38)</td><td>(0.10)</td><td>(-0.01)</td><td>(-0.90)</td><td>(-0.94)</td><td></td><td></td><td></td></tr><tr><td rowspan="2">Land area (AREA)</td><td></td><td>0.27</td><td>0.24</td><td>-0.40</td><td>-0.39</td><td></td><td></td><td></td></tr><tr><td></td><td>(0.77)</td><td>(0.67)</td><td>(-0.97)</td><td>(-0.99)</td><td></td><td></td><td></td></tr><tr><td rowspan="2">Population (POP)</td><td></td><td>0.11</td><td>0.39</td><td>-0.43</td><td>-0.42</td><td></td><td></td><td></td></tr><tr><td></td><td>(0.16)</td><td>(0.05)</td><td>(-0.63)</td><td>(-0.65)</td><td></td><td></td><td></td></tr><tr><td>&quot;Real openness&quot;</td><td></td><td></td><td></td><td></td><td></td><td>-0.77</td><td>-0.94</td><td></td></tr><tr><td>(LNOPEN)</td><td></td><td></td><td></td><td></td><td></td><td>(-0.83)</td><td>(-0.70)</td><td></td></tr><tr><td>&quot;Policy openness&quot;</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>-2.04</td></tr><tr><td>(SW)</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>(-1.07)</td></tr><tr><td>R-square</td><td>0.52</td><td>0.61</td><td>0.61</td><td>0.60</td><td>0.60</td><td>0.55</td><td>0.55</td><td>0.61</td></tr><tr><td>No. of observations</td><td>79</td><td>79</td><td>79</td><td>136</td><td>136</td><td>71</td><td>71</td><td>69</td></tr></table>
Notes: The dependent variable is per capita GDP in 1995, PPP basis. All regressors, except DISTEQ, RULE, and SW, are expressed in logs. Baseline corresponds to the specification in column (6) of Table 3. In columns (1), (3) and (5) the instrument for openness (LOGFRANKROM) is from Frankel and Romer (1999). In columns (2), (4) and (6), the instrument for openness (LOGFRANKROMR) is derived by re-estimating the gravity equation in Frankel and Romer (1999) with the left-hand side variable defined as nominal bilateral trade to nominal GDP. In Frankel and Romer, the left hand side variable was defined as nominal trade divided by PPP GDP. Standard errors are corrected, using the procedure described in Frankel and Romer (1999), to take into account the fact that the openness instrument is estimated.  $t$ -statistics are reported under coefficient estimates. Significance at the 1, 5, and 10 percent levels are denoted respectively by *, ***, and ***. All regressors are scaled as described in the notes to Tables 2-4.
Source: Rodrik, Subramanian, Trebbi (2004). T-stats in parentheses.
Back
# IDEAS AND ECONOMIC GROWTH
#
University of California, Berkeley
Fall 2025
What sustains growth at the frontier?
(Will it continue in the future?)
Why are some countries so far behind the frontier?
(What might help them close the gap?)
This lecture focuses on the first of these questions
- Solow model: Capital accumulation not a source of long-run growth
- Reason: Diminishing returns
What about knowledge?
- If knowledge succeeds where capital fails, there must be something fundamentally different about knowledge than capital
- To drive home the importance of diminishing returns, let's consider a model without diminishing returns
Suppose
$$
Y (t) = A K (t)
$$ and
$$
\dot {K} (t) = s Y (t) - \delta K (t)
$$ where
$s$  is the exogenous savings rate (as in Solow model)
- Labor is assumed constant and normalized to one (which implies that  $Y(t)$  is output per person)
Combining these two equations yields
$$
\dot {Y} (t) = s A Y (t) - \delta Y (t)
$$
$$ g _ {Y} = \frac {\dot {Y} _ {t}}{Y _ {t}} = s A - \delta
$$
- We get long-run growth from capital accumulation
- The long-run growth rate of output (per person) is governed by  $s$ ,  $A$ , and  $\delta$
- Long-run growth is endogenous to the extent that  $s, A,$  and  $\delta$  can be influenced by policy / behavior
- But why might we think  $Y = AK$  makes sense?
- One "micro-foundation" is learning-by-doing externalities
- Productivity gains coming from investment and production
- Empirical evidence from airframe manufacturing, shipbuilding, etc. (Wright 36, Searle 46, Asher 56, Rapping 65)
- Several early endogenous growth models followed this path (e.g., Frankel 62, Griliches 79, Romer 86, Lucas 88)
- We consider Romer (1986) version here (see Romer 19, p. 119-121; Barro and Sala-i-Martin 04, sec. 4.3; Acemoglu 09, sec. 11.4)
- Suppose there is a continuum of firms with production function
$$
Y _ {i} (t) = F \left(K _ {i} (t), A _ {i} (t) L _ {i} (t)\right)
$$
- Two assumptions:
Strong learning-by-doing (investing):
Knowledge grows proportionally with firm's capital stock
Knowledge spillovers are perfect across firms
(all firms benefit from each firm's learning)
These assumptions imply:
$$
A _ {i} (t) = B K (t)
$$
Combining prior two equations:
$$
Y _ {i} (t) = F \left(K _ {i} (t), B K (t) L _ {i} (t)\right)
$$
- Suppose further that all firms are identical:
$$
Y (t) = F (K (t), B K (t) L (t))
$$
- If  $F$  is homogeneous of degree one, we have
$$
Y (t) = F (1, B L (t)) K (t)
$$
- This model therefore yields a production function of the  $Y = AK$  form
- Romer (1986) model yields endogenous growth
- But arguably makes unrealistic assumptions:
- Assumes very large amounts of learning-by-doing
- Doesn't work if knowledge grows less than proportionally with  $K$
- Lucas (1988) builds similar model with human capital externalities.
- Arguably also makes unrealistic assumptions (see Jones 22, section 2.2)
- Doesn't seem to capture what is "special" about knowledge
Knowledge is non-rival
This is the fundamental difference versus capital
- Implies that knowledge can be a source of long-run growth
- Ideas: a design, a blueprint, or a set of instructions
- How to make fire using sticks, calculus, the design of the incandescent light bulb, oral rehydration therapy, Beethoven's 3th symphony, etc.
- Objects: Goods, capital, labor, land, highways, barrels of oil, etc.
A particular incandescent light bulb, a particular oral rehydration pill, etc.
- Objects are rival:
- If I use a particular lawn mower, you can't use that same lawn mower at the same time
- Ideas are non-rival:
- My use of calculus, does not negatively affect your ability to use calculus at the same time
- Once invented, calculus can be used by any number of people simultaneously (ideas are "infinitely usable")
- Consider production function
$$
Y = F (A, X)
$$
- $A$  is index of the stock of knowledge
- $X$  is all rival inputs (vector)
- Replication implies constant returns to objects:
$$
\lambda Y = F (A, \lambda X)
$$
This argument implicitly uses non-rivalry of ideas
- We can use same A to build second factory as first factory.
- Implies that if we increase  $A$  as well we get increasing returns:
$$
F (\lambda A, \lambda X) > F (A, \lambda X) = \lambda Y
$$
- Since ideas are non-rival, per capita output depends on the overall stock of knowledge, NOT knowledge per capita
$$
Y (t) = A (t) ^ {\sigma} K (t) ^ {\alpha} L (t) ^ {1 - \alpha}
$$
$$ y (t) = A (t) ^ {\sigma} k (t) ^ {\alpha}
$$
- Output per person depends on:
Total stock of knowledge  $(A(t)^{\sigma})$
Capital per capita  $(k(t)^{\alpha})$
- Solow model: Capital per capita can't grow forever (if  $A$  is constant)
- If stock of knowledge can grow forever,  $y\left( t\right)$  can growth forever
- Romer (1990) is the paper that crystallized these ideas
- See Jones (2019) for role of this paper in relation to earlier and subsequent literature
- But Romer (1990) made some extreme assumptions that we will want to move away from
Key new feature: Knowledge is produced
- Workers do one of two things:
- Produce goods and services
- Produce knowledge (R&D)
Key choice: How are workers allocated between these activities?
- Simplifying assumption: A fraction  $s$  of workers work on R&D
Similar to Solow assumption about savings rate
- Workers choose optimally in Romer (1990)
- We will consider a model where workers choose optimally later on
For now:
$$
L _ {A} (t) = s L (t) \quad L _ {Y} (t) = (1 - s) L (t)
$$
- Knowledge production function in Romer (1990):
$$
\dot {A} (t) = \theta L _ {A} (t) A (t)
$$
- Knowledge production depends on two inputs:
Research effort:  $L_{A}(t)$  denotes labor devoted to research
- Existing knowledge:  $A\left( t\right)$
- Importantly, exponent on  $A(t)$  is one
$\bullet$  Implies that
$$ g _ {A} (t) = \frac {\dot {A} (t)}{A (t)} = \theta L _ {A} (t)
$$
- Suppose for simplicity that  $L_{A}(t) = L_{A}$  (i.e., a constant)
- Then growth rate of knowledge is constant
$$ g _ {A} = \frac {\dot {A} (t)}{A (t)} = \theta L _ {A}
$$
- Suppose for simplicity that goods production function is
$$
Y (t) = A (t) ^ {\sigma} L _ {Y} \quad = > \quad y (t) = A (t) ^ {\sigma} (1 - s)
$$ where  $1 - s$  is (constant) share of pop. working on goods production,  $\sigma$  is importance of ideas for production (degree of increasing returns)
This implies
$$
\mathbf {g} _ {y} = \sigma \mathbf {g} _ {A} = \sigma \theta L _ {A}
$$
- But why would knowledge production be linear in  $A(t)$  and  $L(t)$ ?
More generally:
$$
\dot {A} (t) = \theta L _ {A} (t) ^ {\lambda} A (t) ^ {\phi}
$$
- Not necessarily constant returns to objects  $(\lambda = 1)$ :
- Twice as much research effort may not generate twice as much knowledge
- There may be congestion / duplication / diminishing returns
This would yield  $\lambda < 1$
We assume however that  $\lambda >0$
$$
\dot {A} (t) = \theta L _ {A} (t) ^ {\lambda} A (t) ^ {\phi}
$$
- Not necessarily constant returns to existing knowledge ( $\phi = 1$ )
$\phi > 0$ : Standing on the shoulders of giants
Having more knowledge lets a researcher create knowledge faster
E.g., printed books, internet, computers, microscopes, etc.
$\phi < 0$  : No more low hanging fruit
Suppose you are fishing in a pond with 100 fish
- As you catch more, harder to catch the rest
- Nothing particularly natural about  $\phi = 1$
1. Goods production:  $Y(t) = A(t)^{\sigma}L_{Y}(t)$
2. Ideas production:  $\dot{A} (t) = \theta L_{A}(t)^{\lambda}A(t)^{\phi}$
3. Allocation:  $L_{A}(t) = sL(t)$
4. Resource constraint:  $L(t) = L_A(t) + L_Y(t)$
5. Population growth:  $L(t) = L(0)e^{nt}$
# Notable features:
- Constant fraction of labor force  $s$  conducts research
Simple short cut
Similar to constant savings rate in Solow model
- We will endogenize later
- Constant population growth at rate  $n$
- $\sigma$  captures degree to which increase in knowledge increases productivity in production of goods and services
- How much does  $1 \%$ increase in knowledge increase productivity?
- But what is a  $1\%$  increase in knowledge? How is this measured?
Combining (1), (3) and (4) and dividing by  $L(t)$  we get:
$$ y (t) = A (t) ^ {\sigma} (1 - s)
$$
- Taking logs and time derivatives yields
$$ g _ {Y} (t) = \sigma g _ {A} (t)
$$
- Suppose there is a balanced growth path with constant growth:
$$ g _ {y} (t) = g _ {y} \quad \text {a n d} \quad g _ {A} (t) = g _ {A}
$$
- Then we have
$$ g _ {y} = \sigma g _ {A}
$$
Combining (2) and (3) and dividing by  $A(t)$ :
$$ g _ {A} (t) = \theta s ^ {\lambda} L (t) ^ {\lambda} A (t) ^ {\phi - 1}
$$
- Taking logs and time derivatives yields
$$
0 = \lambda g _ {L} + (\phi - 1) g _ {A}
$$ where we use  $g_A(t) = g_A$  on BGP
Rearranging and using  $g_{L} = n$  we get
$$
\boldsymbol {g} _ {y} = \sigma \boldsymbol {g} _ {A} = \frac {\sigma \lambda}{1 - \phi} n
$$
$$
\boldsymbol {g} _ {y} = \sigma \boldsymbol {g} _ {A} = \frac {\sigma \lambda}{1 - \phi} n
$$
- Long-run growth proportional to population growth rate
- If  $L_A(t)$  were constant at  $L_A$  (which implies  $n = 0$ ):
$$
\frac {\dot {A} (t)}{A (t)} = \theta L _ {A} ^ {\lambda} A (t) ^ {\phi - 1} = \frac {\theta L _ {A} ^ {\lambda}}{A (t) ^ {1 - \phi}}
$$
- If  $1 - \phi > 0$ , or equivalently  $\phi < 1$ :
$$ g _ {A} (t) = \frac {\dot {A} (t)}{A (t)} \rightarrow 0
$$
Growth can't keep up with the level and thus goes to zero
$$ g _ {y} = \sigma g _ {A} = \frac {\sigma \lambda}{1 - \phi} n
$$
- With  $\phi < 1$ , research effort must grow exponentially for knowledge to grow exponentially
- Exponential population growth and constant share of labor force working on research (s) does the trick
Three ways to get sustained growth:
1. AK Model: Capital accumulation linear differential eq.
$$
\dot {K} (t) = s A K (t) - \delta K (t) \quad = > \quad \dot {K} (t) = (s A - \delta) K (t)
$$
2. Romer (1990)  $\phi = 1$ : Knowledge prod. linear differential eq.
$$
\dot {A} (t) = \theta L _ {A} (t) A (t)
$$
- "Fully-endogenous" growth model
- Also true of Aghion-Howitt 92, Grossman-Helpman 91
3. Jones (1995)  $\phi < 1$ : Pop. growth linear differential eq.
$$
\dot {A} (t) = \theta L _ {A} (t) A (t) ^ {\phi} \quad \dot {L} (t) = n L (t)
$$
" semi-endogenous" growth model
Growth of knowledge is generally (even outside BGP):
$$ g _ {A} (t) = \theta s ^ {\lambda} L (t) ^ {\lambda} A (t) ^ {\phi - 1}
$$
- Taking logs and differentiating by time yields
$$
\frac {\dot {g} _ {A} (t)}{g _ {A} (t)} = \lambda n - (1 - \phi) g _ {A} (t)
$$
- Multiplying through by  $g_{A}(t)$  yields
$$
\dot {g} _ {A} (t) = \lambda n g _ {A} (t) - (1 - \phi) g _ {A} (t) ^ {2}
$$
$$ g _ {A} (t) = \theta s ^ {\lambda} L (t) ^ {\lambda} A (t) ^ {\phi - 1} \tag {1}
$$
$$
\dot {g} _ {A} (t) = \lambda n g _ {A} (t) - (1 - \phi) g _ {A} (t) ^ {2} \tag {2}
$$
- Equation (1) determines initial level of  $g_{A}(t)$
Depends, e.g., on  $s$  (and therefore innovation policy)
- Equation (2) determines subsequent evolution of  $g_{A}(t)$
- Independent of  $s$
- With  $\phi < 1$  a change in  $s$  only has a "level effect", not a "growth effect"
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/a0cb850c1f4245b860912cdb2037672712aa331910ab79d8b88cd97959480e90.jpg)
FIGURE 3.1 The dynamics of the growth rate of knowledge when  $\theta < 1$
Source: Romer (2019). In Romer's notation  $\theta < 1$  is what I have called  $\phi < 1$ .
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/be9a3a6bcbbd97b38ec607b28337fb165a36a2fce65567976f4c485a5dafaab1.jpg)
FIGURE 3.2 The effects of an increase in  $a_{L}$  when  $\theta < 1$
Source: Romer (2019). In Romer's notation  $\theta < 1$  is what I have called  $\phi < 1$  and  $a_{L}$  is what I have called  $s$
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/cb0a2ecb0d4d0d415674e03b0f0b9296a426db8b7e5f62ee35f108ce5c237a91.jpg)
FIGURE 3.3 The impact of an increase in  $a_{L}$  on the path of  $A$  when  $\theta < 1$ .
Source: Romer (2019). In Romer's notation  $\theta < 1$  is what I have called  $\phi < 1$  and  $a_{L}$  is what I have called  $s$
$$ g _ {A} (t) = \frac {\dot {A} (t)}{A (t)} = \theta L _ {A} ^ {\lambda} A (t) ^ {\phi - 1} = \frac {\theta s ^ {\lambda} L (t) ^ {\lambda}}{A (t) ^ {1 - \phi}}
$$
Models with  $\phi = 1$ : s affects long run growth rate
$$ g _ {A} (t) = \frac {\dot {A} (t)}{A (t)} = \theta s ^ {\lambda} L (t) ^ {\lambda}
$$
Models with  $\phi < 1$ : s does not affect long run growth rate
$$
\mathbf {g} _ {y} = \sigma \mathbf {g} _ {A} = \frac {\sigma \lambda}{1 - \phi} n
$$
- Models with  $\phi = 1$  have "strong" scale effects
Growth rate is increasing in level of population:
$$ g _ {A} (t) = \frac {\dot {A} (t)}{A (t)} = \theta s ^ {\lambda} L (t) ^ {\lambda}
$$
Models with  $\phi < 1$  have "weak" scale effects
Growth rate is increasing in growth rate of population:
$$ g _ {y} = \sigma g _ {A} = \frac {\sigma \lambda}{1 - \phi} n
$$
These are interesting testable implications of these model classes
- One reading of scale effects is that large countries or countries with fast population growth should have high TFP growth
- Obviously counterfactual (Luxembourg, Iceland, Singapore)
- But ideas flow between countries
- Scale effects likely to operate largely at the world level (although flow of ideas is not perfect or instantaneous)
- There is arguably very strong evidence against strong scale effects:
- Frontier growth has been quite stable for a long time
Research effort has increased very substantially
- With strong scale effects, increased research effort should increase TFP growth at frontier
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/d62c2189ce41293adb78d3e8ea928cc04907e80cb8df2439f82a7143f3685075.jpg)
FIGURE I
Per Capita GDP in the United States, 1880-1987 (Natural logarithm)
Source. The data are from Maddison [1982, 1989] as compiled by Bernard [1991]. The solid trend line represents the time trend calculated using data only from 1880 to 1929. The dashed line is the trend for the entire sample.
Source: Jones (1995).
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/e2fe0ce0690fb22e812d20ad7987a317890cc3a4b6ddffd6a13b177e0b24c781.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/4ef1c6014f6b727c34039f6e02e0badbf5ea4eb98c2bb9ff756b3e3794dd32f9.jpg)
FIGURE IV
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/a2b703c5eb7dc5d91b8b534f624bd00534a32a2602aa19860a2698767f09c18a.jpg)
Source. NSF Science and Engineering Indicators 1989 and Bureau of the Census (various).
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/b8933d8b1cb0b529070036e4ef2d9b61ec64f64d2524c83ccdd094aba371ca33.jpg)
Scientists and Engineers Engaged in R&D (1000s)
Source: Jones (1995).
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/9a5d602daee865e1e1a472cf2f742ab7df072663b7c97564234a743c2d0ea897.jpg)
Japan
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/e5a29072de65ef9bf862b805c1a4cc4abd6293071f74b6aaa3788304ca4dbe2e.jpg)
U.S.
FIGURE V
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/b49e31aa0a715fb5aa52cef7e73273992b179e59f4dc2e983c6904afde17853d.jpg)
Source. OECD Department of Economics and Statistics Analytic Database. Data provided by Steven Englander.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/d51ae29e673f1e764bcce7a86205fac2b15c6a6cc6471654092442050789d444.jpg)
Aggregate Total Factor Productivity Growth
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/144554318b17a5f8b2b83c04c48a19f87cc0041238e7f29b1508f07c4cdb0559.jpg)
Figure 2. Researchers and employment in the G-5 countries (index). Note. From calculations in Jones (2002b). Data on researchers before 1950 in countries other than the United States is backcasted using the 1965 research share of employment. The G-5 countries are France, Germany, Japan, the United Kingdom and the United States.
Source: Jones (2005).
$$ g _ {A} (t) = \frac {\dot {A} (t)}{A (t)} = \theta s L (t)
$$
Research effort has risen by a factor of 8
- Models with  $\phi = 1$  imply that growth should have increased by a factor of 8
Clearly way off!
This evidence suggests that ideas are harder to find
- By ideas, we mean "proportional increases in productivity"
- Research productivity is falling. It takes more research effort to produce the same growth rate
- This means  $\phi < 1$  ( $\beta > 0$  using Jones (2022) notation)
- But by how much?
- If  $\phi = 0.95$  growth effects of change in  $s$  on transition path would last for a long time
Estimate extent to which ideas are getting harder to find at both macro and micro level
- Ideas production function
$$
\frac {\dot {A} (t)}{A (t)} = \alpha A (t) ^ {- \beta} S (t)
$$
- $S(t)$  denotes "scientists" (i.e., research effort in units of people)
- Notice that  $\beta = 1 - \phi$
- If  $g_A$  is constant:
$$
\beta = \frac {g _ {S}}{g _ {A}}
$$
- Define:
$$
\text {R e s e a r c h P r o d u c t i v i t y} = \frac {\dot {A} (t) / A (t)}{S (t)}
$$
- Consider the "lab equipment" model of research
$$
\dot {A} _ {t} = \alpha R _ {t}
$$
- $R_{t}$  denotes research expenditures (labor and capital/equipment)
- Divide through by  $A_t$  and multiply-divide by  $w_t$  (wage):
$$
\frac {\dot {A} _ {t}}{A _ {t}} = \underbrace {\frac {\alpha W _ {t}}{A _ {t}}} _ {\text {R e s e a r c h P r o d .}} \times \underbrace {\frac {R _ {t}}{w _ {t}}} _ {\text {S c i e n t i s t s}}
$$
- In Romer-type model  $R_{t} / w_{t}$  and  $w_{t} / A_{t}$  are constant
Measure research effort (in units of "scientists") by  $R_{t} / w_{t}$
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/0c24952f29e605e934a220f1033cfb7ab025198b3c41ad6cd651d9b2c254a3cd.jpg)
FIGURE 1. AGGREGATE DATA ON GROWTH AND RESEARCH EFFORT
Source: Bloom, Jones, Van Reenen, Webb (2020).
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/a7626504eea733b14cfe21ae0519a2341c24b43830fbfd57dc1df23e51976a07.jpg)
FIGURE 3. THE STEADY EXPONENTIAL GROWTH OF MOORE'S LAW
Source: Bloom, Jones, Van Reenen, Webb (2020).
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/1a2930a41baa50c76efc1f0140759ccd32354bf49b8aa39e74ed9027c0bfe98c.jpg)
FIGURE 4. DATA ON MOORE'S LAW
Source: Bloom, Jones, Van Reenen, Webb (2020). Research expenditure for several dozen specific firms.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/25be89c9b3f22c812d86f7d3084657e4283d7587e4e17c7a60e7db1b5af2c014.jpg)
Panel A. Corn
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/db45a3759e53d0ebbfd72ff1fdecbd86c23eff40e22e1c7643350fee223b10f1.jpg)
Panel B. Soybeans
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/a5adb7716294303d7b92da6a85bf5ef479ae0f0b9cee4a859aebfd00aad267f0.jpg)
Panel C. Cotton
FIGURE 6. YIELD GROWTH AND RESEARCH EFFORT BY CROP
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/7a8bf6ce61a20ba0ed925c006e2d80d6fa15fa32e1e7a40beb0090033629307a.jpg)
Panel D. Wheat
Source: Bloom, Jones, Van Reenen, Webb (2020). Productivity is yield per acre.
TABLE 7-SUMMARY OF THE EVIDENCE ON RESEARCH PRODUCTIVITY
<table><tr><td>Scope</td><td>Time period</td><td>Average annual growth rate (\%)</td><td>Half-life (years)</td><td>Dynamic diminishing returns, β</td></tr><tr><td>Aggregate economy</td><td>1930–2015</td><td>-5.1</td><td>14</td><td>3.1</td></tr><tr><td>Moore&#x27;s Law</td><td>1971–2014</td><td>-6.8</td><td>10</td><td>0.2</td></tr><tr><td>Semiconductor TFP growth</td><td>1975–2011</td><td>-5.6</td><td>12</td><td>0.4</td></tr><tr><td>Agriculture, US R&amp;D</td><td>1970–2007</td><td>-3.7</td><td>19</td><td>2.2</td></tr><tr><td>Agriculture, global R&amp;D</td><td>1980–2010</td><td>-5.5</td><td>13</td><td>3.3</td></tr><tr><td>Corn, version 1</td><td>1969–2009</td><td>-9.9</td><td>7</td><td>7.2</td></tr><tr><td>Corn, version 2</td><td>1969–2009</td><td>-6.2</td><td>11</td><td>4.5</td></tr><tr><td>Soybeans, version 1</td><td>1969–2009</td><td>-7.3</td><td>9</td><td>6.3</td></tr><tr><td>Soybeans, version 2</td><td>1969–2009</td><td>-4.4</td><td>16</td><td>3.8</td></tr><tr><td>Cotton, version 1</td><td>1969–2009</td><td>-3.4</td><td>21</td><td>2.5</td></tr><tr><td>Cotton, version 2</td><td>1969–2009</td><td>+1.3</td><td>-55</td><td>-0.9</td></tr><tr><td>Wheat, version 1</td><td>1969–2009</td><td>-6.1</td><td>11</td><td>6.8</td></tr><tr><td>Wheat, version 2</td><td>1969–2009</td><td>-3.3</td><td>21</td><td>3.7</td></tr><tr><td>New molecular entities</td><td>1970–2015</td><td>-3.5</td><td>20</td><td>…</td></tr><tr><td>Cancer (all), publications</td><td>1975–2006</td><td>-0.6</td><td>116</td><td>…</td></tr><tr><td>Cancer (all), trials</td><td>1975–2006</td><td>-5.7</td><td>12</td><td>…</td></tr><tr><td>Breast cancer, publications</td><td>1975–2006</td><td>-6.1</td><td>11</td><td>…</td></tr><tr><td>Breast cancer, trials</td><td>1975–2006</td><td>-10.1</td><td>7</td><td>…</td></tr><tr><td>Heart disease, publications</td><td>1968–2011</td><td>-3.7</td><td>19</td><td>…</td></tr><tr><td>Heart disease, trials</td><td>1968–2011</td><td>-7.2</td><td>10</td><td>…</td></tr><tr><td>Compustat, sales</td><td>3 decades</td><td>-11.1</td><td>6</td><td>1.1</td></tr><tr><td>Compustat, market cap</td><td>3 decades</td><td>-9.2</td><td>8</td><td>0.9</td></tr><tr><td>Compustat, employment</td><td>3 decades</td><td>-14.5</td><td>5</td><td>1.8</td></tr><tr><td>Compustat, sales/employment</td><td>3 decades</td><td>-4.5</td><td>15</td><td>1.1</td></tr><tr><td>Census of Manufacturing</td><td>1992–2012</td><td>-7.8</td><td>9</td><td>…</td></tr></table>
Source: Bloom, Jones, Van Reenen, Webb (2020).
Large literature that uses numbers of patents to measure innovation
- But most patents are not very innovative
Refinements:
- Patent citations
Market value of patents
- Kelly, Papanikolaou, Seru, Taddy (2021):
- Use text similarity of patents
- Important patents are different from previous patents (novel) and similar to subsequent patents (impactful)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/f2fd7bc26b0274718a64a9caf38f81891fe22adb58e9ed9125f13148a8f257cf.jpg)
Panel A
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/a5439b9d7c11b88a7d6aadb75f0f5dec9040ec39e2cabe53814ee5439110c73a.jpg)
Panel B
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/eff0a97f889cde33f26151caa60f0d92d37b4b474dd8b92ea5ad6b93ede5bb42.jpg)
Panel C
Panel D
FIGURE 2. EXAMPLES OF SIMILARITY NETWORKS
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/73a798198118f3dd7fdf5c24a2ee6a91acfc0919182eba60e022b2ec4c8ccf0e.jpg)
Notes: Figure displays the similarity networks for four patents: the patent for the first sewing machine (panel A), one of the earlier patents for moving pictures (panel B), one of the early patents that led to the telephone (panel C), and a randomly chosen patent from the 1800s (panel D). In plotting the similarity links, we restrict attention to patient pairs led at most five years apart and with a cosine similarity greater than 50 percent.
Source: Kelly, Papanikolaou, Seru, Taddy (2022).
# Panel A. Breakthrough patents
(top 10 percent in terms of significance) per capita
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/50422e9da8207c8987203b1bc3dbd714c2169e4c78a3d623d88d8ef6606ee2b9.jpg)
Source: Kelly, Papanikolaou, Seru, Taddy (2022).
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/73cd40f4573aa636ac284410906f7d3a1b960ecba86cd46ea565dc28ee8d96a2.jpg)
Source: Kelly, Papanikolaou, Seru, Taddy (2022).
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/f93b5554bc650b7f69aeb9ebddb41409aeff33871b3b980e837c1c1af126e491.jpg)
- Semi-endogenous growth model imply that long-run growth is governed by population growth
- Many other factors have "level effects" (e.g., increases in education, R&D share, misallocation)
- But level effects can be large
- How much of recent growth is due to such level effects?
- What does this suggest about the future of growth?
- Goods production:
$$
Y _ {t} = K _ {t} ^ {\alpha} \left(Z _ {t} h _ {t} L _ {y t}\right) ^ {1 - \alpha}
$$
$h_t$  is human capital per person
Productivity:
$$
Z _ {t} = A _ {t} M _ {t}
$$
$A_{t}$  is knowledge
- $M_{t}$  is misallocation
- Some manipulation:
$$ y _ {t} = \left(\frac {K _ {t}}{Y _ {t}}\right) ^ {\alpha / (1 - \alpha)} A _ {t} M _ {t} h _ {t} I _ {t} (1 - s _ {t})
$$
- Ideas Production function:
$$
\dot {A} (t) = \theta L _ {A} (t) ^ {\lambda} A (t) ^ {\phi}
$$
$$
\frac {\dot {A} (t)}{A (t)} = \theta s (t) ^ {\lambda} L (t) ^ {\lambda} A (t) ^ {\phi - 1}
$$
- With constant growth of  $A(t)$ :
$$
0 = \lambda g _ {s} + \lambda g _ {L} - (1 - \phi) g _ {A}
$$
$$ g _ {A} = \frac {\lambda}{1 - \phi} \left(g _ {s} + g _ {L}\right)
$$
- Jones (2022) assumes  $\lambda/(1 - \phi) = \lambda/\beta = \gamma = 1/3$
(Results that follow are sensitive to this!)
$$
\begin{array}{l} \underbrace {d \log y _ {t}} _ {\text {G D P p e r p e r s o n}} = \underbrace {\frac {\alpha}{1 - \alpha} d \log \frac {K _ {t}}{Y _ {t}}} _ {\text {C a p i t a l - O u t p u t r a t i o}} + \underbrace {d \log h _ {t}} _ {\text {E d u c a t i o n a l a t t .}} + \underbrace {d \log \ell_ {t}} _ {\text {E m p - P o p r a t i o}} + \underbrace {d \log (1 - s _ {t})} _ {\text {G o o d s i n t e n s i t y}} \\ + \underbrace {d \log M _ {t} + d \log A _ {t}} _ {\text {T F P g r o w t h}} \tag {15} \\ \end{array}
$$ where
$$
\text {T F P} \quad \text {g r o w t h} \equiv \underbrace {d \log M _ {t}} _ {\text {M i s a l l o c a t i o n}} + \underbrace {d \log A _ {t}} _ {\text {I d e a s}} = \underbrace {d \log M _ {t}} _ {\text {M i s a l l o c a t i o n}} + \underbrace {\gamma d \log s _ {t}} _ {\text {R e s e a r c h i n t e n s i t y}} + \underbrace {\gamma d \log L _ {t}} _ {\text {L F g r o w t h}} \tag {16}
$$
Source: Jones (2022).
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/38fd733bfe72b2d5ffe2645b38560c526868a12832b48df87ebf5642a4ba4dd6.jpg)
Components of  $2\%$  Growth in GDP per Person
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/b3aabda2436ce286b911b15c33f735141246704ccb6f474c873dce94f71d8e74.jpg)
Figure 2: Historical Growth Accounting
Components of  $1.3\%$  TFP Growth
Note: The figure shows a growth accounting exercise for the United States since the 1950s using equations (15) and (16). See the main text for details.
Source: Jones (2022).
In the long run:
- All terms are zero except population growth
100\% of growth due to population growth
Historically:
80\% of growth due to other factors
- Only  $20\%$  of growth due to population growth (Sensitive to assumption on  $\gamma$ .)
- Many sources of growth are temporary:
- Increased education
Higher Emp-Pop ratio
- Falling misallocation
Rising research intensity
- But some of these might continue for a very long time (e.g., increased research intensity)
- Population growth is slowing (Population likely to start shrinking soon!)
Figure 4: Population Growth around the World
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/e73374d354a7ac8ef120b4fa1bf5732d68be89cbb56b18b25a6c3d30f3254295.jpg)
Note: Average annual rates of population growth for countries classified according to their 2018 World Bank income grouping. Each data point corresponds to a five-year period. Source: United Nations (2019).
Source: Jones (2022).
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/96fe377a7fa7f1497b93c36b6f0edf6a3a13e70bfbdbcf09b0b4170e82b79f22.jpg)
Figure 5: The Total Fertility Rate around the World
Note: The total fertility rate is the average number of live births a hypothetical cohort of women would have over their reproductive life if they were subject during their whole lives to the fertility rates of a given period and if they were not subject to mortality. Each data point corresponds to the five-year period 2015-2020. Source: United Nations (2019).
Source: Jones (2022).
Finding Einstein
- Traditionally most people not able to reach their potential as producers of ideas/knowledge
Extreme poverty, cast/class restrictions, discrimination
How many Einstein and Doudnas have we missed
- Automation and Artificial Intelligence
- Interesting discussion in Jones (2022, sec. 6)
- Automation of ideas production could even imply a "singularity" (explosive growth driven by AGI)
# THE EXPANDING VARIETY MODEL
#
University of California, Berkeley
Fall 2025
- Last lecture, we assumed
$$
L _ {A} (t) = s L (t)
$$
This was a short cut
- Similar to constant savings rate in Solow model
- Now we will study the allocation of resources to innovation
- Last lecture, we emphasized non-rival nature of knowledge
- While knowledge is non-rival, much knowledge is excludable
- Excludability: Ability to prevent someone from using something
Sources of excludability:
Patents (but not all knowledge is patentable)
Trade secrets (reverse-engineering can limit secrecy)
- Difficulty (some things are hard learn)
- The exclusudability of knowledge implies that knowledge can be produced for profit
- Perfect competition unlikely to yield efficient level of innovation
- With perfect competition, the price of an item is equal to its marginal cost
The marginal cost of using an existing idea is zero
- Rental price of existing knowledge should thus be zero
Think of the licensing fee for a drug formula
- But if price of existing knowledge is zero, there is no incentive to create knowledge
- For efficient use, price of existing knowledge should be zero
This creates too little incentive to innovate
- For innovation to occur, price of existing knowledge needs to be positive (i.e., above marginal cost)
- This yields too little use of existing knowledge (i.e., too few people can afford a drug)
- Laissez faire economic policy doesn't work well for innovation
# ROADBLOCK FOR ECONOMIC THEORY
- Inadequacy of perfect competition for the economics of innovation was a major roadblock for economic theory
- In 1960s, economists were good at building perfectly competitive models, but not good at building models with imperfect competition
Major step forward: Monopolistic competition framework of Dixit and Stiglitz (1977)
- Has become a basic building block of:
Economic growth models (e.g., Romer 90)
- International trade models (e.g., Krugman 79)
- New Keynesian models (e.g., Blanchard-Kiyotaki 87)
- Continuum of firms  $i$  of measure  $N$
Each firm is the monopoly supplier of a differentiated product
These products enter household utility through the consumption index
$$
C = \left[ \int_ {0} ^ {N} c _ {i} ^ {\frac {\phi - 1}{\phi}} d i \right] ^ {\frac {\phi}{\phi - 1}}
$$
Household utility is then  $U(C, L, \ldots)$  where  $C$  is the index above
$\phi$  is the elasticity of substitution between the different  $c_{i}$
Suppose the price of the good  $i$  is  $p_i$
Household would like to maximize the amount of  $C$  it can purchase for a given amount of spending  $Z$
It therefore solves:
$$
\max _ {c _ {i}} \left[ \int_ {0} ^ {N} c _ {i} ^ {\frac {\phi - 1}{\phi}} d i \right] ^ {\frac {\phi}{\phi - 1}} \quad \text {s u b j e c t t o} \quad \int_ {0} ^ {N} p _ {i} c _ {i} d i = Z
$$
We can form a Lagrangian:
$$
L = \left[ \int_ {0} ^ {N} c _ {i} ^ {\frac {\phi - 1}{\phi}} d i \right] ^ {\frac {\phi}{\phi - 1}} - \lambda \left[ \int_ {0} ^ {N} p _ {i} c _ {i} d i - Z \right]
$$
Differentiating with respect to  $c_{i}$  yields:
$$
\left(\frac {C}{c _ {i}}\right) ^ {\frac {1}{\phi}} = \lambda p _ {i}
$$
- This is true for each  $i$ . Divide the one for  $i$  by the one for  $i'$ :
$$
\left(\frac {c _ {i} ^ {\prime}}{c _ {i}}\right) ^ {\frac {1}{\phi}} = \frac {p _ {i}}{p _ {i} ^ {\prime}}
$$
Rearranging yields:
$$
\boldsymbol {c} _ {i} = \boldsymbol {c} _ {i} ^ {\prime} \left(\frac {\boldsymbol {p} _ {i}}{\boldsymbol {p} _ {i} ^ {\prime}}\right) ^ {- \phi}
$$
- Shows that price elasticity of demand is  $\phi$
- Let's define the ideal price index  $P$  as the minimum expenditure needed to purchase 1 unit of the consumption index
- Some additional algebra then yields see steps
$$
P = \left[ \int_ {0} ^ {N} p _ {i} ^ {1 - \phi} d i \right] ^ {\frac {1}{1 - \phi}}
$$
Using the fact that  $\lambda = 1 / P$  yields
$$ c _ {i} = C \left(\frac {p _ {i}}{P}\right) ^ {- \phi}
$$ which is just another way to express the demand curve for  $c_{i}$
Household preferences display "love of variety"
- Suppose the price of all the goods is equal to  $p$ .
- Price index is then
$$
P = \left[ \int_ {0} ^ {N} p ^ {1 - \phi} d i \right] ^ {\frac {1}{1 - \phi}} = p \left[ \int_ {0} ^ {N} 1 d i \right] ^ {\frac {1}{1 - \phi}} = p N ^ {- \frac {1}{\phi - 1}}
$$
- If  $\phi > 1$ ,  $P$  is falling in  $N$
Households get more  $C$  per unit spending as  $N$  increases
- Let's now return to the firms
- Suppose their marginal cost of production is  $\psi$
Firm profits are then given by  $\Pi_{i} = p_{i}c_{i} - \psi c_{i}$
Firms set prices to maximize profits given demand for their product
$$
\max  _ {p _ {i}} C \left(\frac {p _ {i}}{P}\right) ^ {- \phi} (p _ {j} - \psi)
$$
Profit maximization yields
$$
\pmb {p} _ {i} = \frac {\phi}{\phi - 1} \psi
$$
- Firm's set prices equal to a markup over marginal cost
- For markup to be finite,  $\phi$  must be larger than 1
- Tractable general equilibrium framework where firms have market power and can set prices
- Can also be applied to factor markets
Production function:
$$
Y = \left[ \int_ {0} ^ {N} y _ {i} ^ {\frac {\phi - 1}{\phi}} d i \right] ^ {\frac {\phi}{\phi - 1}}
$$ where  $y_{i}$  are intermediate inputs
- In this case producer of intermediate input is a monopolist with market power
- Let's now consider the expanding variety model of growth
Original version due to Romer (1990)
Model has three classes of agents:
Households
- Final-goods producing firms
Intermediate-goods producing / R&D firms
- We consider these in turn
- Constant population of households that consume and supply labor
Households supply an aggregate quantity  $L$  of labor inelastically
Households own all firms in equal proportions
Household utility
$$
U = \int_ {0} ^ {\infty} \exp (- \rho t) \frac {C (t) ^ {1 - \theta}}{1 - \theta} d t
$$
As in Ramsey model, household optimization yields:
$$
\frac {\dot {C} (t)}{C (t)} = \frac {1}{\theta} (r (t) - \rho)
$$
- Final goods are produced in a perfectly competitive market with the production function
$$
Y (t) = \frac {1}{1 - \beta} L _ {Y} (t) ^ {\beta} \int_ {0} ^ {N (t)} x (i, t) ^ {1 - \beta} d i
$$
- Inputs to final goods production:
Labor:  $L_{Y}(t)$
- $N(t)$  distinct intermediate inputs:  $x(i,t)$
- Notice that final goods production is constant returns to scale in physical inputs
- Notice that production function can also be written
$$
Y (t) = \frac {1}{1 - \beta} L _ {Y} (t) ^ {\beta} \mathbf {X} (t) ^ {1 - \beta}
$$ where
$$
\mathbf {X} (t) = \left[ \int_ {0} ^ {N (t)} x (i, t) ^ {\frac {\phi - 1}{\phi}} d i \right] ^ {\frac {\phi}{\phi - 1}}
$$ and  $\phi = 1 / \beta$
- So, intermediate input part of production function takes Dixit-Stiglitz form
$$
Y (t) = \frac {1}{1 - \beta} L _ {Y} (t) ^ {\beta} \int_ {0} ^ {N (t)} x (i, t) ^ {1 - \beta} d i
$$
- Production is additively separable in different  $x(i, t)$ s
- Marginal product of each  $x(i, t)$  independent of the others
- New products don't make older products obsolete (strong contrast with "quality ladder model")
- Final goods firms maximize profits
$$
\Pi = \frac {1}{1 - \beta} L _ {Y} (t) ^ {\beta} \int_ {0} ^ {N (t)} x (i, t) ^ {1 - \beta} d i - \int_ {0} ^ {N (t)} p (i, t) x (i, t) d i - w (t) L _ {Y} (t)
$$ where  $p(i,t)$  is the price of intermediate input  $x(i,t)$
Intermediate input demand:
$$
L _ {\mathcal {Y}} (t) ^ {\beta} x (i, t) ^ {- \beta} - p (i, t) = 0
$$ and rearranging:
$$ x (i, t) = p (i, t) ^ {- 1 / \beta} L _ {Y} (t)
$$
Labor demand:
$$
\beta \frac {Y (t)}{L _ {Y} (t)} = w (t)
$$
This is the real heart of the model!
- There is free entry into development of new intermediate inputs
- Once a firm develops a new intermediate input, it gains a perpetual monopoly over this product (either through a patent or secrecy)
- Firm then sells the product at a markup over marginal cost forever, earning a profit that allows it to recoup development cost
- Let's start by considering the pricing decision and profits of the firm once it has developed the product
Suppose intermediate  $i$  is produced simply using  $\psi$  units of final good
- Let's make the final good the numeraire (i.e., price of final good is 1)
- This means marginal cost of producing intermediate  $i$  is  $\psi$
- Flow profit:
$$
\Pi (i, t) = p (i, t) x (i, t) - \psi x (i, t)
$$
- Plugging demand into profits we get
$$
\Pi (i, t) = p (i, t) ^ {- 1 / \beta} L _ {\gamma} (t) [ p (i, t) - \psi ]
$$
Differentiating to find profit maximizing price:
$$
\left(- \frac {1}{\beta} + 1\right) p (i, t) ^ {- \frac {1}{\beta}} + \frac {1}{\beta} p (i, t) ^ {- \frac {1}{\beta} - 1} \psi = 0
$$
Rearranging yields
$$
\boldsymbol {p} (i, t) = \frac {1}{1 - \beta} \psi
$$
- Let's normalize  $\psi = (1 - \beta)$
- Implies that
$$ p (i, t) = 1
$$
This means that
$$ x (i, t) = p (i, t) ^ {- 1 / \beta} L _ {Y} (t) = L _ {Y} (t)
$$
- Final good output then becomes
$$
\begin{array}{l} Y (t) = \frac {1}{1 - \beta} L _ {Y} (t) ^ {\beta} \int_ {0} ^ {N (t)} x (i, t) ^ {1 - \beta} d i \\ = \frac {1}{1 - \beta} L _ {Y} (t) ^ {\beta} \int_ {0} ^ {N (t)} L _ {Y} (t) ^ {1 - \beta} d i \\ = \frac {1}{1 - \beta} N (t) L _ {Y} (t) \\ \end{array}
$$
$$
Y (t) = \frac {1}{1 - \beta} N (t) L _ {Y} (t)
$$
- $N(t)$  (# of intermediate goods invented) acts like "productivity"
- Product innovation raises aggregate output
Different flavors of the model:
- Could be consumer products, rather than intermediate inputs
- Could be "machines" or processes (process innovation)
In this model, innovation is profit driven
- Since there is free entry, people will innovate to the point where marginal cost is equal to marginal profit
- Flow profit associated with successful innovation:
$$
\begin{array}{l} \left. \Pi (i, t) = p (i, t) x (i, t) - \psi x (i, t) \right. \\ = L _ {Y} (t) - (1 - \beta) L _ {Y} (t) \\ = \beta L _ {\gamma} (t) \\ \end{array}
$$
The total value of owning the right to sell intermediate  $i$  is
$$
V (i, t) = \int_ {t} ^ {\infty} \exp \left(- \int_ {t} ^ {s} r (s ^ {\prime}) d s ^ {\prime}\right) \Pi (i, s) d s
$$
- If  $r(t) = r$  – which turns out to be the case – and using expression for profits on last slide, this simplifies to
$$
V (t) = \int_ {t} ^ {\infty} \exp (- r (s - t)) \beta L _ {Y} (t) d s
$$
This is just the discounted value of the profits
R&D production function:
$$
\dot {N} (t) = \eta N (t) L _ {R} (t)
$$
- This is the  $\phi = 1$  case from last lecture as in Romer (1990)
- Alternative cases:
- Semi-endogenous growth model:
$$
\dot {N} (t) = \eta N (t) ^ {\phi} L _ {R} (t) \quad \text {w i t h} \quad \phi <   1
$$
"Lab equipment" model
$$
\dot {N} (t) = \eta Z (t)
$$ where  $Z(t)$  are final goods (this is a  $\phi = 1$  model.)
- Hiring one R&D worker yields  $\eta N(t)$  new products
- Marginal benefit of hiring R&D workers:  $\eta N(t)V(i,t)$
- Marginal cost of hiring R&D workers:  $w\left( t\right)$
Free entry therefore implies
$$
\eta N (t) V (i, t) = w (t)
$$
- We look for an equilibrium with a constant growth rate  $g$  for consumption and output
- In such an equilibrium, the interest rate must be constant:
$$ g = \frac {\dot {C} (t)}{C (t)} = \frac {1}{\theta} (r - \rho)
$$
- We conjecture that  $L_{R}(t) = L_{R}$  and  $L_{Y}(t) = L_{Y}$ .
This implies
$$
V = \int_ {t} ^ {\infty} \exp (- r (s - t)) \beta L _ {Y} (t) d s = \frac {\beta L _ {Y}}{r}
$$
- Recall that labor supply is given by
$$
\beta \frac {Y (t)}{L _ {\gamma} (t)} = w (t)
$$
The value of the intermediate firm is
$$
V = \frac {\beta L _ {Y}}{r}
$$
- Plugging these in for  $V(i, t)$  and  $w(t)$  in the free entry condition yields
$$
\eta N (t) V (i, t) = w (t) \quad = > \quad \eta N (t) \frac {\beta L _ {Y}}{r} = \beta \frac {Y (t)}{L _ {Y}}
$$
- Recall that output of final goods is
$$
Y (t) = \frac {1}{1 - \beta} N (t) L _ {Y}
$$
- Plugging this in yields
$$
\eta N (t) \frac {\beta L _ {Y}}{r} = \beta \frac {Y (t)}{L _ {Y}} \quad = > \quad \eta N (t) \frac {\beta L _ {Y}}{r} = \frac {\beta}{1 - \beta} N (t)
$$
- We can further simplify this expression to
$$ r = (1 - \beta) \eta L _ {Y}
$$
- We see from this that free entry into innovation yields a condition that links the interest rate (ultimately household patience) and the allocation of labor to production versus research
- Goods market clearing implies:
$$
C (t) + X (t) = Y (t)
$$ where
$$
X (t) = \int_ {0} ^ {N (t)} \psi x (i, t) d i
$$
Labor market clearing implies:
$$
L _ {Y} + L _ {R} = L
$$
- Consider again output of final goods
$$
Y (t) = \frac {1}{1 - \beta} N (t) L _ {Y}
$$
Since  $L_{Y}$  is constant, the growth rate of  $N(t)$  must be the same as the growth rate of output
- Next consider
$$
\dot {N} (t) = \eta N (t) L _ {R} (t)
$$
Rearranging this equation yields:
$$ g = \frac {\dot {N} (t)}{N (t)} = \eta L _ {R}
$$
- We now have four equations in four unknown variables:
$$ g = \frac {1}{\theta} (r - \rho) \quad r = (1 - \beta) \eta L _ {Y}
$$
$$
L _ {Y} + L _ {R} = L \quad g = \eta L _ {R}
$$
- Solving these for  $g$  yields:
$$ g = \frac {(1 - \beta) \eta L - \rho}{(1 - \beta) + \theta}
$$
To summarize:
$$ g = \frac {(1 - \beta) \eta L - \rho}{(1 - \beta) + \theta}
$$
- Intuitively: Growth is increasing in
- Productivity of R&D (i.e.,  $\eta$ )
- Patience (i.e., falling in  $\rho$ )
Size of the population (i.e.,  $L$ )
- The last of these is the scale effect we talked about last lecture
# IS THE ECONOMY PARETO OPTIMAL?
Two sources of market failure:
- Monopolistic competition: Prices are set at a markup over marginal cost and level of output is therefore too low
- Inefficient amount of innovation: Leads growth to be too low
We next solve for the optimal allocation
- Solution to the social planner problem of maximizing utility subject only to technological constraints
Useful to do this in two steps:
1. Optimal use of  $x(i, t)$
2. Optimal path for  $C(t)$ ,  $N(t)$ ,  $L_{Y}(t)$
- Goods market clearing can be written:
$$
\begin{array}{l} C (t) = Y (t) - X (t) \\ = \frac {1}{1 - \beta} L _ {Y} (t) ^ {\beta} \int_ {0} ^ {N (t)} x (i, t) ^ {1 - \beta} d i - \int_ {0} ^ {N (t)} \psi x (i, t) d i \\ \end{array}
$$
- The right-hand-side is "net output"
- The static optimum involves maximizing net output
- Differentiating net output with respect to  $x(i, t)$  and setting the resulting expression equal to zero yields:
$$ x ^ {S} (i, t) = (1 - \beta) ^ {- 1 / \beta} L _ {\gamma} ^ {S} (t)
$$ where superscript  $S$  denotes "social planner solution"
Market solution:
$$ x (i, t) = L _ {Y} (t)
$$
- Social planner solution:
$$ x ^ {\mathcal {S}} (i, t) = (1 - \beta) ^ {- 1 / \beta} L _ {Y} ^ {\mathcal {S}} (t)
$$
- $x^{S}(i,t) > x(i,t)$  because social planner eliminates monopoly markup
- Plugging  $x^{S}(i,t)$  into production function for final output yields
$$
Y ^ {S} (t) = (1 - \beta) ^ {- 1 / \beta} N ^ {S} (t) L _ {Y} ^ {S} (t)
$$
- And net output becomes
$$
\begin{array}{l} C ^ {S} (t) = (1 - \beta) ^ {- 1 / \beta} N ^ {S} (t) L _ {Y} ^ {S} (t) - \int_ {0} ^ {N (t)} \psi x ^ {S} (i, t) d i \\ = (1 - \beta) ^ {- 1 / \beta} N ^ {S} (t) L _ {Y} ^ {S} (t) - (1 - \beta) ^ {- (1 - \beta) / \beta} N ^ {S} (t) L _ {Y} ^ {S} (t) \\ = (1 - \beta) ^ {- 1 / \beta} \beta N ^ {S} (t) L _ {\gamma} ^ {S} (t) \\ \end{array}
$$
- The social planner problem then becomes
$$
\max  \int_ {0} ^ {\infty} \exp (- \rho t) \frac {C (t) ^ {1 - \theta}}{1 - \theta} d t
$$ subject to
$$
C (t) = (1 - \beta) ^ {- 1 / \beta} \beta N (t) L _ {Y} (t)
$$
$$
\dot {N} (t) = \eta N (t) L _ {R} (t)
$$
$$
L _ {R} (t) + L _ {Y} (t) = L
$$
We can simplify this to:
$$
\max  \int_ {0} ^ {\infty} \exp (- \rho t) \frac {C (t) ^ {1 - \theta}}{1 - \theta} d t
$$ subject to
$$
\dot {N} (t) = \eta [ N (t) L - (1 - \beta) ^ {1 / \beta} \beta^ {- 1} C (t) ]
$$
- We can now set up a current value Hamiltonian
$$
\mathcal {H} (t) = \frac {C (t) ^ {1 - \theta}}{1 - \theta} + \mu (t) [ \eta N (t) L - \eta (1 - \beta) ^ {1 / \beta} \beta^ {- 1} C (t) ]
$$
$$
\mathcal {H} (t) = \frac {\mathcal {C} (t) ^ {1 - \theta}}{1 - \theta} + \mu (t) [ \eta N (t) L - \eta (1 - \beta) ^ {1 / \beta} \beta^ {- 1} \mathcal {C} (t) ]
$$
Differentiating  $\mathcal{H}(t)$  with respect to  $C(t)$  and  $N(t)$  yields:
$$
\mathcal {H} _ {\mathcal {C}} (t) = \mathcal {C} (t) ^ {- \theta} - \eta (1 - \beta) ^ {1 / \beta} \beta^ {- 1} \mu (t) = 0
$$
$$
\mathcal {H} _ {N} (t) = \eta L \mu (t) = \rho \mu (t) - \dot {\mu} (t)
$$
- Manipulation of these equations yields:
$$
\mu (t) = \eta^ {- 1} (1 - \beta) ^ {- 1 / \beta} \beta C (t) ^ {- \theta}
$$
$$
\frac {\dot {\mu} (t)}{\mu (t)} = - [ \eta L - \rho ]
$$
Combining these yields:
$$
\frac {\dot {C} ^ {S} (t)}{C ^ {S} (t)} = \frac {1}{\theta} [ \eta L - \rho ]
$$
The growth rate chosen by the social planner is
$$ g ^ {S} = \frac {1}{\theta} [ \eta L - \rho ]
$$
The growth rate of the market economy with patents:
$$ g = \frac {1}{\theta} ((1 - \beta) \eta L _ {Y} - \rho)
$$
Since  $L > (1 - \beta)L_{Y}$  we have the
$$ g ^ {s} > g
$$
The market economy with patents yield suboptimally low growth
- Appropriability: Monopolist cannot appropriate full social value of its invention. Therefore innovates too little
- R&D Externality: Inventor doesn't take into account that new knowledge (higher  $N(t)$ ) raises the productivity of future invention. Therefore innovates too little
- In addition, level of output is too low due to intermediate good monopolists setting prices above marginal cost
- Model already incorporates permanent (perfectly enforceable) patents
Real world has temporary, imperfectly enforceable patents
- Subsidies for research (e.g., NIH, NSF, NASA, DoD, DoE, etc.)
- Challenges: How to direct funds. How to raise funds.
- Prizes and social recognition for innovators / researchers
- Subsidies for production of patented products:
- Challenges: How large? What is price elasticity of demand?
- Welfare and growth are not the same
- A policy that reduces monopoly distortions today (e.g., allows a new drug class to be sold more cheaply) will raise current well-being but lower growth (if future inventors expect the same)
- Whether this is good on net depends on:
- How patient society is (how it trades off well-being of current versus future generations)
- How important recent discoveries are for well being (think HIV/AIDS drugs / a cure for cancer / etc.)
# Appendix
- Notice that
$$
\left(\frac {C}{c _ {i}}\right) ^ {\frac {1}{\phi}} = \lambda p _ {i} \quad \rightarrow \quad c _ {i} = C (\lambda p _ {i}) ^ {- \phi}
$$
- Plug this into the budget constraint to get
$$
Z = \int_ {0} ^ {N} p _ {i} C (\lambda p _ {i}) ^ {- \phi} d i
$$
- Using the fact that  $Z = PC$  (follows from definition of  $P$ ) and rearranging yields:
$$
P = \lambda^ {- \phi} \int_ {0} ^ {N} p _ {i} ^ {1 - \phi} d i
$$
- Notice that  $\lambda = P^{-1}$  and rearrange to get
$$
P = \left[ \int_ {0} ^ {N} p _ {i} ^ {1 - \phi} d i \right] ^ {\frac {1}{1 - \phi}}
$$
# CREATE DESTRUCTION:
# THE QUALITY LADDER MODEL
#
University of California, Berkeley
Fall 2025
- Expanding variety model generates growth from new goods
- Much innovation improves existing goods
- Improved products often replace older products
- Schumpeter (1934) labeled this "creative destruction"
- Quality ladder model captures this
- Original version due to Aghion and Howitt (1992)
Basic structure the same as expanding variety model
Model has three classes of agents:
Households
- Final-goods producing firms
Intermediate-goods producing / R&D firms
- For simplicity, we do the "lab-equipment" version of knowledge production function (Acemoglu, 2009, ch. 14.1)
- Constant population of households that consume and supply labor
Households supply an aggregate quantity  $L$  of labor inelastically
Households own all firms in equal proportions
Household utility
$$
U = \int_ {0} ^ {\infty} \exp (- \rho t) \frac {C (t) ^ {1 - \theta}}{1 - \theta} d t
$$
As in Ramsey model, household optimization yields:
$$
\frac {\dot {C} (t)}{C (t)} = \frac {1}{\theta} (r (t) - \rho)
$$
- Final goods are produced in a perfectly competitive market with the production function
$$
Y (t) = \frac {1}{1 - \beta} L ^ {\beta} \int_ {0} ^ {1} q (i, t) x (i, t) ^ {1 - \beta} d i
$$
Differences versus expanding variety model:
Measure 1 of intermediate inputs as opposed to  $N(t)$
- All labor  $L$  used for final goods (knowledge produced with final goods)
Each intermediate input has a quality level  $q(i, t)$  (More on functional form assumption later)
- Quality of good  $i$  evolves according to:
$$ q (i, t) = \lambda^ {n (i, t)} q (i, 0)
$$
- $n(i, t)$  is number of improvements of product  $i$  between time 0 and time  $t$
- $\lambda > 1$  is the size of each quality improvement
There is a "quality ladder"
Each improvement raises quality by "one rung" on the ladder
Growth is the result of these quality improvements
- Different versions of same good are perfect substitutes
- In equilibrium, only leading-edge version will be used (more on this later / this was implicitly assumed in our notation)
- Higher quality versions replace ("destroy") previous vintages
- Timing of quality improvements in each product line is random (but influenced by resources devoted to innovation)
- $n(i, t)$  is therefore a random variable
$q(i,t)$  is a also a random variable
- This randomness of innovation in each product line washes out in the aggregate due to the law of large numbers
- Aggregate output will thus not be stochastic
- Notice that production function can also be written
$$
Y (t) = \frac {1}{1 - \beta} L ^ {\beta} \mathbf {X} (t) ^ {1 - \beta}
$$ where
$$
\mathbf {X} (t) = \left[ \int_ {0} ^ {1} q (i, t) x (i, t) ^ {\frac {\phi - 1}{\phi}} d i \right] ^ {\frac {\phi}{\phi - 1}}
$$ and  $\phi = 1 / \beta$
- So, intermediate input part of production function takes Dixit-Stiglitz form (with a quality twist)
- Final goods firms maximize profits
$$
\Pi = \frac {1}{1 - \beta} L ^ {\beta} \int_ {0} ^ {1} q (i, t) x (i, t) ^ {1 - \beta} d i - \int_ {0} ^ {1} p (i, t) x (i, t) d i - w (t) L
$$ where  $p(i, t)$  is the price of intermediate input  $x(i, t)$
(the highest quality version)
Intermediate input demand:
$$
L ^ {\beta} q (i, t) x (i, t) ^ {- \beta} - p (i, t) = 0
$$ and rearranging:
$$ x (i, t) = \left(\frac {q (i , t)}{p (i , t)}\right) ^ {1 / \beta} L
$$
Labor demand:
$$
\beta \frac {Y (t)}{L} = w (t)
$$
Free entry into developing improved version of each product line
- Both incumbent firm and new firms can innovate (more on this later)
- Once a firm develops a new version, it has a monopoly on producing that version, but must potentially compete with older (and eventually newer) versions
- Marginal cost of producing version of quality  $q(i, t)$  is  $\psi q(i, t)$
- Let's start by considering the pricing decision of leading-edge version
# Two cases:
Large innovation:
- Leading-edge firm can set monopoly price without facing competition from lower quality competitors
Modest innovation:
- Leading-edge firm must take account of potential competition from second highest quality firm
- Leading-edge firm will "limit price": Set highest price that is still too low for second highest quality firm to produce profitably
- Let's start by calculating the monopoly price
- Flow profits
$$
\Gamma (i, t) = p (i, t) x (i, t) - q (i, t) \psi x (i, t)
$$
- Let's plug in the demand curve: (and drop the  $(i, t)$ 's)
$$
\Pi = p \left(\frac {q}{p}\right) ^ {1 / \beta} L - q \psi \left(\frac {q}{p}\right) ^ {1 / \beta} L
$$
Differentiating and setting to zero:
$$
\left(1 - \frac {1}{\beta}\right) p ^ {- 1 / \beta} + \frac {1}{\beta} q \psi p ^ {- 1 / \beta - 1} = 0
$$
Rearranging:
$$ p = (1 - \beta) ^ {- 1} \psi q
$$
- What matters for buyer (final goods firm) is not price but price per unit quality
- We need to know both price and "marginal product" of each version
- This is a bit tricky given the way Acemoglu sets up the model (We are following ch. 14.1 of Acemoglu (2009))
- How do we compare marginal product of different versions of good  $i$  that have different levels of quality?
Production Function:
$$
Y (t) = \frac {1}{1 - \beta} L ^ {\beta} \int_ {0} ^ {1} q (i, t) x (i, t) ^ {1 - \beta} d i
$$
Since they are perfect substitutes, they should enter linearly
- Let's rewrite the production function:
$$
Y (t) = \frac {1}{1 - \beta} L ^ {\beta} \int_ {0} ^ {1} \left(q (i, t) ^ {\frac {1}{1 - \beta}} x (i, t)\right) ^ {1 - \beta} d i
$$
Written this way, the different versions enter linearly
- If leading-edge version has quality  $q$ , then second-best version has quality  $\lambda^{-1} q$  (one rung lower)
- If both are being produced they enter production function as:
$$
\lambda^ {\frac {- 1}{1 - \beta}} q ^ {\frac {1}{1 - \beta}} x _ {2} + q ^ {\frac {1}{1 - \beta}} x _ {1}
$$ where  $x_{2}$  is quantity of second-best version and  $x_{1}$  is quantity of leading-edge version
- The marginal product of the second best firm is lower by a factor  $\lambda^{\frac{-1}{1 - \beta}}$
# CAN LEADING-EDGE FIRM SET MONOPOLY PRICE?
- Lowest price second-best firm can offer is its marginal cost  $\lambda^{-1}q\psi$
- Leading-edge firm can set monopoly price if ratio of its monopoly price to its marginal product is lower than ratio of marginal cost to marginal product for second best firm:
$$
(1 - \beta) ^ {- 1} q \psi <   \frac {\lambda^ {- 1} q \psi}{\lambda^ {\frac {- 1}{1 - \beta}}}
$$ denominator on RHS is difference in marginal product
- Simplifying then yields:
$$
\lambda > \left(\frac {1}{1 - \beta}\right) ^ {\frac {1 - \beta}{\beta}}
$$
# Summary:
- Leading-edge firm can set monopoly price if
$$
\lambda > \left(\frac {1}{1 - \beta}\right) ^ {\frac {1 - \beta}{\beta}}
$$
In this case, quality difference is big enough that second-best firm can't compete even when leading-edge firm sets monopoly price
- Otherwise leading-edge firm must set a lower price (low enough to drive second-best firm out of the market)
- Both current leading-edge firms and others can undertake R&D to invent higher quality products
- They however face different incentives to do so
- Incumbent will "cannibalize" prior profits
- Change in profits for incumbent is new profit level less old profit level
- Change in profits for new leader is entire new profit level
- If both have same cost of innovating, incumbents will not innovate
In reality, incumbents do a lot of innovation
- Incumbents may have a cost advantage (i.e., it may be easier to incumbents to improve products)
- Perhaps incumbents can act as Stackelberg leaders
- Commit to a certain amount of innovation
- Thereby discourage innovation by others
See Barro and Sala-i-Martin (2004, ch. 7.1)
See also models in Acemoglu (2009, ch. 14.3-14.4)
- Two maintained assumptions:
- Leading-edge firm sets monopoly price (rung size large enough)
All innovation by new firms
- Normalize  $\psi = 1 - \beta$
- Monopoly price then becomes
$$ p (i, t) = (1 - \beta) ^ {- 1} \psi q (i, t) = q (i, t)
$$
Output for good  $i$  becomes
$$ x (i, t) = \left(\frac {q (i , t)}{p (i , t)}\right) ^ {1 / \beta} L = L
$$
- Aggregate output becomes
$$
Y (t) = \frac {1}{1 - \beta} L ^ {\beta} \int_ {0} ^ {1} q (i, t) x (i, t) ^ {1 - \beta} d i
$$ which simplifies to
$$
Y (t) = \frac {1}{1 - \beta} Q (t) L
$$ where
$$
Q (t) = \int_ {0} ^ {1} q (i, t) d i
$$
Economic growth comes from growth in quality of intermediate inputs
- $Q(t)$  plays the same role here as  $N(t)$  in expanding variety model
# HOW MANY INNOVATION IS THERE?
We must compare:
Cost of making an innovation
Value of an innovation once made
We use the fact that on a balanced growth path:
- Interest rate  $r$  will be constant
- Rate of innovations in each product line  $z^{*}$  is constant
- If firm spends  $Z(i, t)$  on R&D it generates innovations at a flow rate:
$$
\frac {\eta Z (i , t)}{q (i , t)}
$$
- Implicitly uses existing know-how (researches an improvement)
- Innovating gets more costly the larger is  $q(i, t)$
(but each rung is larger since they are proportional)
Cost is final output not labor ("lab-equipment model")
- Flow profits:
$$
\begin{array}{l} \left. \Pi (i, t) = p (i, t) x (i, t) - q (i, t) \psi x (i, t) \right. \\ = q (i, t) L - q (i, t) (1 - \beta) L \\ = \beta q (i, t) L \\ \end{array}
$$
Present value of profits:
$$
V (i, t) = \frac {\beta q (i , t) L}{r + z ^ {*}}
$$
- "Effective discount rate" of profits  $r + z^{*}$
- Free entry into innovation implies that marginal value of innovation must equal marginal cost
- Consider spending one more unit of final good on innovation
Marginal cost: 1
- Marginal value:  $\eta V / (\lambda^{-1}q)$
If successful:  $V$
- Flow rate of success per unit spent:  $\eta / (\lambda^{-1} q)$
- Setting marginal value equal to marginal cost:
$$
V (i, t) \frac {\eta}{\lambda^ {- 1} q (i , t)} = 1
$$
(I am not quite sure about the  $\lambda^{-1}$  factor. But I am following Acemoglu on this point.)
Present value of profits:
$$
V (i, t) = \frac {\beta q (i , t) L}{r + z ^ {*}}
$$
Free entry implies:
$$
V (i, t) \frac {\eta}{\lambda^ {- 1} q (i , t)} = 1
$$
Combining these yields:
$$ r + z ^ {*} = \lambda \eta \beta L
$$
- Consumption Euler equation:
$$
\frac {\dot {C} (t)}{C (t)} = \frac {1}{\theta} (r (t) - \rho)
$$
- Interest rate is constant on BGP
- Consumption growth must equal output growth on BGP
- Consumption Euler equation thus implies:
$$ g = \frac {1}{\theta} (r - \rho)
$$
We need equation relating  $g$  to  $z^{*}$
$$
Y (t) = \frac {1}{1 - \beta} Q (t) L \quad \text {i m p l i e s} \quad \frac {\dot {Y} (t)}{Y (t)} = \frac {\dot {Q} (t)}{Q (t)}
$$
- $z^{*}$  is rate of innovation on each product line
Over interval  $\Delta t$  a fraction  $z^{*}\Delta t$  of sectors experience innovation
This implies (up to first order):
$$
Q (t + \Delta t) = \lambda Q (t) z ^ {*} \Delta t + Q (t) \left(1 - z ^ {*} \Delta t\right)
$$
(probability weighted average of  $\lambda Q(t)$  and  $Q(t)$ )
$$
Q (t + \Delta t) = \lambda Q (t) z ^ {*} \Delta t + Q (t) (1 - z ^ {*} \Delta t)
$$
- Subtracting  $Q(t)$  from both sides, dividing by  $\Delta t$ , and taking limit  $\Delta t \gets 0$  yields
$$
\dot {Q} (t) = (\lambda - 1) z ^ {*} Q (t)
$$ which in turn implies that
$$ g = (\lambda - 1) z ^ {*}
$$
So we have:
$$ r + z ^ {*} = \lambda \eta \beta L
$$
$$
\mathbf {g} = \frac {1}{\theta} (r - \rho)
$$
$$ g = (\lambda - 1) z ^ {*}
$$
Combining these equations yields
$$ g = \frac {\lambda \eta \beta L - \rho}{\theta + (\lambda - 1) ^ {- 1}}
$$
Qualitatively similar to expanding variety model (i.e., model has strong scale effects)
No!
- Appropriability: Monopolist cannot appropriate full social value of its invention. Therefore innovates too little
- R&D Externality: Inventor doesn't take into account that new knowledge (higher  $N(t)$ ) raises the productivity of future invention. Therefore innovates too little
- Business Stealing: Part of profits from innovation are "stolen" from exiting incumbent. Private value of innovation larger than social value
- Growth rate can be either too low or too high (See Acemoglu (2009, ch 14.1.4 for derivations)
- Consider a tax on R&D
- The tax will reduce R&D and thus reduce innovation and growth
- The tax will therefore benefit incumbents! (Longer until they loose their leadership position and profit flow)
- Incumbents have an incentive to lobby for growth-retarding policy
# THE OVERLAPPING GENERATIONS MODEL
#
University of California, Berkeley
Fall 2024
Neoclassical growth model has a representative agent
- No way to discuss implications of heterogeneity
- Life-cycle / generations are important examples of heterogeneity
- OLG model allows discussion these issues
- More generally, allows discussion of issues that arise with
Heterogeneity
- Infinite number of agents
- Seminal papers: Samuelson (1958), Diamond (1965)
Specific issues we will discuss:
Dynamic efficiency (i.e., over-accumulation of capital)
- Social Security (i.e., old age pension systems)
Public debt
Money / Bubbles
- Two generations: Young and Old
Each lives for two periods (discrete time)
- Young work, consume, save
Old consume and dissave (do not work)
Common extensions:
Many generations
Perpetual youth model (Blanchard, 1985)
- Two generation version particularly simple because it precludes intertemporal trade (no one meets twice)
- $L_{t}$  individuals are born at time  $t$
Exogenous population growth at rate  $n$ :
$$
L _ {t + 1} = (1 + n) L _ {t}
$$
Each young agent supplies 1 unit of labor
- "Youth" need not be due to birth. Could be immigration or the binding of a borrowing constraint.
Production function:
$$
Y _ {t} = F \left(K _ {t}, A _ {t} L _ {t}\right)
$$
Exogenous productivity growth:
$$
A _ {t + 1} = (1 + g) A _ {t}
$$
- Perfect competition in factor markets yields:
$$ r _ {t} = f ^ {\prime} \left(k _ {t}\right) \quad w _ {t} = f \left(k _ {t}\right) - k _ {t} f ^ {\prime} \left(k _ {t}\right)
$$
(See Ramsey model lecture for details)
- $r_t$  is the return on savings held from period  $t - 1$  to  $t$
$w_{t}$  is the wage per effective unit of labor
- Preferences of households born at  $t$  :
$$
U _ {t} = \frac {C _ {1 t} ^ {1 - \theta}}{1 - \theta} + \frac {1}{1 + \rho} \frac {C _ {2 t + 1} ^ {1 - \theta}}{1 - \theta}
$$
Budget constraints:
$$
C _ {1 t} + s _ {t} = w _ {t} A _ {t}
$$
$$
C _ {2 t + 1} = \left(1 + r _ {t + 1}\right) s _ {t}
$$
$s_t$  is savings of young at time  $t$
Old consume both interest and principle
- We are assuming no depreciation of capital (for simplicity)
- We can plug budget constraints into  $U_{t}$  to get
$$
U _ {t} = \frac {\left(w _ {t} A _ {t} - s _ {t}\right) ^ {1 - \theta}}{1 - \theta} + \frac {1}{1 + \rho} \frac {\left(\left(1 + r _ {t + 1}\right) s _ {t}\right) ^ {1 - \theta}}{1 - \theta}
$$
Differentiating with respect to  $s_t$  yields:
$$
- \left(w _ {t} A _ {t} - s _ {t}\right) ^ {- \theta} + \frac {1 + r _ {t + 1}}{1 + \rho} \left(\left(1 + r _ {t + 1}\right) s _ {t}\right) ^ {- \theta} = 0
$$
Rearranging and using budget constraints again:
$$
C _ {1 t} ^ {- \theta} = \frac {1 + r _ {t + 1}}{1 + \rho} C _ {2 t + 1} ^ {- \theta}
$$
- This is the consumption Euler equation (same as Ramsey model)
Combining the budget constraints:
$$
C _ {1 t} + \frac {1}{1 + r _ {t + 1}} C _ {2 t + 1} = A _ {t} w _ {t}
$$ this is called the intertemporal budget constraint
Rearranging Euler equation:
$$
C _ {2 t + 1} = \left(\frac {1 + r _ {t + 1}}{1 + \rho}\right) ^ {1 / \theta} C _ {1 t}
$$
Combining these two:
$$
C _ {1 t} + \frac {\left(1 + r _ {t + 1}\right) ^ {(1 - \theta) / \theta}}{(1 + \rho) ^ {1 / \theta}} C _ {1 t} = A _ {t} w _ {t}
$$
- Solving for  $C_{1t}$  yields:
$$
C _ {1 t} = \frac {(1 + \rho) ^ {1 / \theta}}{(1 + \rho) ^ {1 / \theta} + (1 + r _ {t + 1}) ^ {(1 - \theta) \theta}} A _ {t} w _ {t}
$$
- Young spend some fraction of labor income on time 1 consumption
Savings:
$$
\boldsymbol {s} _ {t} = \boldsymbol {A} _ {t} \boldsymbol {w} _ {t} - \boldsymbol {C} _ {1 t} = \frac {(1 + r _ {t + 1}) ^ {(1 - \theta) / \theta}}{(1 + \rho) ^ {1 / \theta} + (1 + r _ {t + 1}) ^ {(1 - \theta) \theta}} \boldsymbol {A} _ {t} \boldsymbol {w} _ {t}
$$
- Young save a complementary fraction of their labor income
$$
\mathbf {s} _ {t} = \frac {\left(1 + r _ {t + 1}\right) ^ {(1 - \theta) / \theta}}{\left(1 + \rho\right) ^ {1 / \theta} + \left(1 + r _ {t + 1}\right) ^ {(1 - \theta) / \theta}} \mathbf {A} _ {t} w _ {t}
$$
- Savings unambiguously increase in wage income (Both  $C_{1t}$  and  $C_{2t+1}$  are normal goods)
- Effect of a change in  $r_{t+1}$  is ambiguous
- Change in  $r_{t+1}$  both and income effect and a substitution effect
- Increase in  $r_{t+1}$  decreases price of  $C_{2t+1}$  (which increases savings)
- Increase in  $r_{t+1}$  increases feasible consumption set (which decreases savings)
$$
\boldsymbol {s} _ {t} = \frac {\left(1 + r _ {t + 1}\right) ^ {(1 - \theta) / \theta}}{\left(1 + \rho\right) ^ {1 / \theta} + \left(1 + r _ {t + 1}\right) ^ {(1 - \theta) / \theta}} \boldsymbol {A} _ {t} \boldsymbol {w} _ {t}
$$
- Savings increase in  $r_{t+1}$  if  $(1 + r_{t+1})^{(1 - \theta) / \theta}$  is increasing in  $r_{t+1}$
$$
\frac {d}{d r} (1 + r) ^ {(1 - \theta) / \theta} = \frac {1 - \theta}{\theta} (1 + r) ^ {(1 - \theta) / \theta}
$$
- Savings increase in  $r_{t+1}$  if  $\theta < 1$ , i.e., if IES > 1
- If IES > 1, substitution effect is strong and overwhelms income effect
- If IES = 1 (log utility) saving is unaffected by  $r_{t+1}$
- Savings of young at time  $t$  become capital stock at time  $t + 1$ :
$$
K _ {t + 1} = s _ {t} L _ {t}
$$
Using notation from Romer (2019):  $s_t = s(r_{t+1}) A_t w_t$
$$
K _ {t + 1} = s \left(r _ {t + 1}\right) A _ {t} w _ {t} L _ {t}
$$
- Dividing through by  $A_{t+1}L_{t+1}$  yields:
$$ k _ {t + 1} = \frac {s \left(r _ {t + 1}\right) w _ {t}}{(1 + n) (1 + g)}
$$
$$ w h e r e k _ {t} = K _ {t} / \left(A _ {t} L _ {t}\right)
$$
- Plugging in for  $w_{t}$  and  $r_{t + 1}$ :
$$ k _ {t + 1} = \frac {s \left(f ^ {\prime} \left(k _ {t + 1}\right)\right) \left[ f \left(k _ {t}\right) - k _ {t} f ^ {\prime} \left(k _ {t}\right) \right]}{(1 + n) (1 + g)}
$$
- Implicitly defines  $k_{t+1}$  as a function of  $k_t$
- Let's call this function the "savings locus"
Steady state when  $k_{t + 1} = k_{t}$
$$ k _ {t + 1} = \frac {s \left(f ^ {\prime} \left(k _ {t + 1}\right)\right) \left[ f \left(k _ {t}\right) - k _ {t} f ^ {\prime} \left(k _ {t}\right) \right]}{\left(1 + n\right) \left(1 + g\right)}
$$
- Let's start by considering special case:
- Logarithmic utility (i.e.,  $\theta = 1$ )
Cobb-Douglas production function  $(y = k^{\alpha})$
In this case:
$$ s \left(r _ {t + 1}\right) = \frac {1}{2 + \rho} \quad \text {a n d} \quad f (k) - k f ^ {\prime} (k) = k ^ {\alpha} - \alpha k ^ {\alpha} = (1 - \alpha) k ^ {\alpha}
$$
So, we have:
$$ k _ {t + 1} = \frac {(1 - \alpha)}{(1 + n) (1 + g) (2 + \rho)} k _ {t} ^ {\alpha}
$$
# EVOLUTION OF CAPITAL IN SPECIAL CASE
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/1fb0e6dbe231cf0c6d1dc9dc3c3dced77e43d1b11fc92fa4cea8c02f9fc265db.jpg)
Source: Blanchard and Fischer (1989)
In this special case:
There is a single steady state (with positive capital)
- The steady state is locally stable
- What is it that makes the steady state locally stable?
$$
\left. \frac {d k _ {t + 1}}{d k _ {t}} \right| _ {s s} <   1
$$
$$ k _ {t + 1} = \frac {s \left(f ^ {\prime} \left(k _ {t + 1}\right)\right) \left[ f \left(k _ {t}\right) - k _ {t} f ^ {\prime} \left(k _ {t}\right) \right]}{(1 + n) (1 + g)}
$$
- More generally, the savings locus can take many different shapes
- This can lead to various types of pathologies
No steady state with positive capital
- Multiple steady states with positive capital
Multiple equilibria
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/8a1838569e559e0efbb03838d9558d0c13ddd654fe37024450bc34d55c9dc132.jpg)
Source: Blanchard and Fischer (1989)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/dd7d9dac0392255dff8a1d9911854d4d08b1a95d091ac3b061543db5b077aac8.jpg)
(a)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/9791867cd5c0f6c3ce05005a932e3e9417beb445b827cb54cb65b090415f4528.jpg)
(b)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/a30439d36136fee4f66418a15ed235c53a82b6826c1194678f85270ceb54b5e5.jpg)
(c)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/38b99eb4eacb33d4f7e23994a8747b1f8999703e5139dcb4b97b305cd8215fc6.jpg)
(d)
FIGURE 2.12 Various possibilities for the relationship between  $k_{t}$  and  $k_{t + 1}$
Source: Romer (2019)
$$ k _ {t + 1} = \frac {s \left(f ^ {\prime} \left(k _ {t + 1}\right)\right) \left[ f \left(k _ {t}\right) - k _ {t} f ^ {\prime} \left(k _ {t}\right) \right]}{(1 + n) (1 + g)}
$$
- We can rewrite this as follows:
$$ k _ {t + 1} = \frac {1}{(1 + n) (1 + g)} \underbrace {s (r _ {t + 1})} _ {\text {s a v i n g s r a t e}} \underbrace {\frac {f (k _ {t}) - k _ {t} f ^ {\prime} (k _ {t})}{f (k _ {t})}} _ {\text {l a b o r s h a r e}} \underbrace {f (k _ {t})} _ {\text {o u t p u t p e r p e r s o n}}
$$
$f(k)$  concave (diminishing returns)
- With log utility  $s(r)$  constant, with Cobb-Douglas labor share constant
- Multiple steady states: need sharply rising savings rate or labor share
Common in macro to compare market outcome to outcome from "planner's problem"
- Conceptually simple in a model with a representative agent (planner will maximize that agent's welfare)
- Not as simple in model with heterogeneous agents such as OLG model
- How should planner weight the welfare of different generations?
- However, Pareto optimality is still unambiguous
Is market outcome Pareto optimal in OLG model?
Turns out this is not necessarily the case
Economy may accumulate "too much" capital
- If so, it is possible to make everyone better off.
- Let's consider log-utility, Cobb-Douglas production case
- Let's also assume  $g = 0$  for simplicity and focus on steady state
Golden Rule capital stock:
- Capital stock that yields the highest steady state consumption per effective unit of labor
- Never makes sense to have more capital than Golden Rule capital
- In this case, less capital would give more consumption
- "the economy staggers under the weight of the need to maintain the per capita capital stock constant." (Blanchard and Fischer, 1989)
Economy's resource constraint:
$$
K _ {t} + F \left(K _ {t}, A _ {t} L _ {t}\right) = K _ {t + 1} + C _ {1 t} L _ {t} + C _ {2 t} L _ {t - 1}
$$
Divide through by  $A_{t}L_{t}$
$$ k _ {t} + f \left(k _ {t}\right) = (1 + n) k _ {t + 1} + A _ {t} ^ {- 1} c _ {t}
$$ where  $c_{t} = C_{1t} + (1 + n)^{-1}C_{2t}$  (weighted average of young and old consumption)
In steady state with  $g = 0$ :
$$
A ^ {- 1} c = f (k) - n k
$$
In steady state with  $g = 0$
$$
A ^ {- 1} c = f (k) - n k
$$
$c$  is maximized when
$$ f ^ {\prime} (k _ {G K}) = n
$$ which implicitly gives the Golden Rule capital stock
- OLG savings locus:
$$ k _ {t + 1} = \frac {(1 - \alpha)}{(1 + n) (1 + g) (2 + \rho)} k _ {t + 1} ^ {\alpha}
$$
- With  $g = 0$  and in steady state:
$$ k ^ {*} = \frac {(1 - \alpha)}{(1 + n) (2 + \rho)} k ^ {* \alpha}
$$ which simplifies to
$$ k ^ {*} = \left[ \frac {(1 - \alpha)}{(1 + n) (2 + \rho)} \right] ^ {1 / (1 - \alpha)}
$$
If
$$ k ^ {*} = \left[ \frac {(1 - \alpha)}{(1 + n) (2 + \rho)} \right] ^ {1 / (1 - \alpha)}
$$ then
$$ f ^ {\prime} (k ^ {*}) = \alpha k ^ {* \alpha - 1} = \frac {\alpha}{1 - \alpha} (1 + n) (2 + \rho)
$$
- We have ignored depreciation. If  $f(k) = k^{\alpha} - \delta k$ :
$$ f ^ {\prime} (k ^ {*}) = \frac {\alpha}{1 - \alpha} (1 + n) (2 + \rho) - \delta
$$
- Recall that  $r = f'(k)$ . So, we have
$$ r ^ {*} = \frac {\alpha}{1 - \alpha} (1 + n) (2 + \rho) - \delta
$$
If
$$ r ^ {*} <   n
$$ economy has more capital than Golden Rule capital
This outcome is Pareto inefficient
Economy is said to be dynamically inefficient
- Suppose in some period  $t_0$ , social planner cuts capital to  $k_{GK}$
- In period  $t_0$ : More resources available for consumption due to cut
- In periods  $t > t_0$ : More resources available for consumption because  $nk$  falls more than  $f(k)$
This policy change can thus make everyone better off
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/1186841714bceb3ba65510847d7782f5dba40613317c3d6147d23351265bbb19.jpg)
X maintaining  $k$  at  $k^{*} > k_{GR}$
$\odot$  reducing  $k$  to  $k_{GR}$  in period  $t_0$
Source: Romer (2019)
- Only technology available to households to transfer resources from when they are young to when they are old is capital accumulation
- At the margin, the return on this technology is
$$ r = f ^ {\prime} (k)
$$
- If households are patient enough, they will accumulate capital to the point where
$$ r <   n
$$
- They have no private reason to pay any attention to  $n$
- Society (the government) has another technology for transferring resources from the young to the old
The government can simply:
Take  $d$  units from each young
- Give  $(1 + n)d$  units to each old
- Notice that the "return" on this technology is  $n$  (because the old generation is less populous than the young)
- Must be repeated forever to be a Pareto improvement
- If  $r < n$ , this "government technology" is better than what is available to people "in the market" (i.e., through saving or bilateral trade)
- With growth in output per person ( $g \neq 0$ ) we get
Economy is dynamically efficient if
$$ r ^ {*} > g + n
$$
Economy is dynamically inefficient if
$$ r ^ {*} <   g + n
$$
This suggests a way to test dynamic efficiency
- Complication: Which interest rate to use?
(More on this later.)
It may seem puzzling that the market equilibrium in inefficient
- What is the failure of the First Welfare Theorem?
All markets are competitive
All agents are rational
- Property rights are well defined and costlessly enforced
- Isn't this enough?
- Things can get complicated when there are an infinite number of agents
- Consider "government technology" discussed above:
Take 1 from each young and give  $1 + n$  to each old (Recall that the young generation is more populous)
- Do this again next period, and so on
- If return to saving is less than  $n$ , this makes everyone better off
- This scheme only works if there are infinite number of generations
- FWT holds with infinite agents if present value of endowments is finite (which does not hold if economy is dynamically inefficient)
- When  $r < n$ , government can issue debt at no cost
Suppose government borrows  $B$  from each young person
- Next period it owes  $(1 + r)B$  to each old.
- Suppose it again borrows  $B$  from each young
- Since there are  $(1 + n)$  young for each old, it borrows  $(1 + n)B$  for each  $(1 + r)B$  that it owes
- System is self-financing as long as  $r < n!$
- With growth, relevant issue is perhaps debt-to-GDP ratio. Relevant condition is then  $r < g$
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/43b0c3e2c4902db21e0e03d8eb80425193dbb826366cd9feab7dad0700071194.jpg)
FIGURE 1. NOMINAL GDP GROWTH RATE AND 1-YEAR T-BILL RATE, 1950-2018
Source: Blanchard (2019)
# SHOULD WE ISSUE MORE PUBLIC DEBT?
- Looks like  $r < g$  much of the time
- So, looks like public debt is a "free lunch"
- Does this mean we should issue more?
Well, public debt "crowds out" private capital
- But with  $r < g$ , isn't there overaccumulation of capital?
- Not so fast! Relevant  $r$  for dynamic efficiency is not necessarily the same as for debt sustainability
# Blanchard (2019):
- Two types of welfare effects of more debt:
Lower capital accumulation
- Induced changes in returns to labor and capital
- Relevant interest rate for first of these:
- Safe rate because safe rate is the "risk adjusted" rate of return on capital
- Relevant interest rate for second of these:
Average (risky) marginal return on capital
- Welfare effects of more debt ambiguous
Consider the following simpler setting:
- Two generation OLG model: young and old
- Population growth:  $L_{t} = (1 + n)^{t}$
No production / No capital
Each young individual endowed with 1 unit of consumption good
Old receive no endowment
- Consumption good is perishable
- Individuals have standard utility function  $U(C_{1t}, C_{2t+1})$
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/4ef474cb9ef643ec296b1c58100df7bb1d6e27e11d67711df580e5851dda63d4.jpg)
Figure 4.1
Society's consumption possibilities in period  $t$
Source: Blanchard and Fischer (1989)
# INDIVIDUAL'S LIFETIME C POSSIBILITIES
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/848c2b4ed746b5877257e6910f6a1ce241044f3f5f3de4e537c685408466b5fa.jpg)
Figure 4.2 Lifetime consumption possibilities for an individual
Source: Blanchard and Fischer (1989)
- Given this set of possibilities, individual would choose an "interior" point (e.g., C on last slide)
- However, this is not attainable through bilateral trade
- Initial old have nothing to offer
- Initial young would like to exchange goods today for goods next period, but next period's young not yet born
No trade possible!!
- "Market outcome" is A on last slide, which is highly Pareto inefficient
- Intertemporal trade not possible. So no actual interest rate
- But we can define a "shadow interest rate"
I.e., interest rate that would make young happy not to trade
- For "normal preferences", this interest rate would be  $-100\%$  (i.e., if  $U'(C) \to \infty$  as  $C \to 0$ )
- So, this simple case is clearly a case of
$$ r <   n + g
$$
- Suppose the government transferred an amount  $d < 1$  from young to old from period  $t$  onward
- Initial old obviously much better off
- Young and all future generations also better off
No longer destitute in old age.
- For moderate  $d$ , an increase in  $d$  is a Pareto improvement
- Marginal cost:  $U'(1 - d)$
Marginal benefit  $(1 + n)U^{\prime}((1 + n)d)(1 + \rho)^{-1}$
- Increase in  $d$  is a Pareto improvement as long as
$$
(1 + n) \frac {U ^ {\prime} ((1 + n) d)}{(1 + \rho)} > U ^ {\prime} (1 - d) \quad = > 1 + n > 1 + r
$$
(Recall that  $(1 + r)^{-1} = U^{\prime}(C_{t + 1}) / (U^{\prime}(C_{t})(1 + \rho)))$
# 1. Fully Funded
Government forces young to save (buy capital)
- No effect on capital accumulation if people are fully rational (and forced saving is not too large)
Increases capital accumulation if people are myopic
# 2. Pay-as-You-Go
Government taxes young and gives proceeds to current old
- Reduces capital accumulation if people are fully rational
- Welfare improving even with rational agents if economy is dynamically inefficient ( $r < n + g$ )
(See Blanchard and Fischer (1989, ch. 3.2))
We have ignored risk up until now
- Risk introduces another source of inefficiency in OLG models
- Efficient intergenerational risk sharing is not possible
Suppose there is a shock at time  $t$ :
Efficient to smooth the shock over infinite future
- This will not happen in an OLG model
- Gov. pension system can help bring about efficient risk sharing
Ball and Mankiw (2007) take a "first stab" at this
- Consider again the simple barter economy
- Suppose at  $t = 0$  government gives old  $H$  units of (completely divisible) inherently useless green pieces of paper
- Let's call these pieces of paper money
- Suppose the old and every future generation believe they will be able to exchange goods for money at price  $P_{t}$  in period  $t$
- $P_{t}$  is the price level in this economy
- If this is an equilibrium, individuals can trade:
Buy money for goods when young
- Sell money for goods when old
- Maximize
$$
U _ {t} = \frac {C _ {1 t} ^ {1 - \theta}}{1 - \theta} + \frac {1}{1 + \rho} \frac {C _ {2 t + 1} ^ {1 - \theta}}{1 - \theta}
$$ subject to
$$
P _ {t} \left(1 - C _ {1 t}\right) = M _ {t} ^ {d}
$$
$$
P _ {t + 1} C _ {2 t + 1} = M _ {t} ^ {d}
$$
- Plugging constraints into objective, differentiating, setting result to zero, and rearranging yields:
$$
\frac {M _ {t} ^ {d}}{P _ {t}} = \frac {1}{1 + (1 + \rho) ^ {1 / \theta} \Pi_ {t + 1} ^ {(\theta - 1) / \theta}} \quad \text {w h e r e} \quad \Pi_ {t + 1} = \frac {P _ {t + 1}}{P _ {t}}
$$
- This is the money demand function, also the savings function
$$
\frac {M _ {t} ^ {d}}{P _ {t}} = \frac {1}{1 + (1 + \rho) ^ {1 / \theta} \Pi_ {t + 1} ^ {(\theta - 1) / \theta}}
$$
- $\Pi_{t+1}$  is the (inverse of the) rate of return on money
Effect of an increase in  $\Pi_{t + 1}$  on money demand ambiguous
- If  $\theta > 1$ , higher  $\Pi_{t+1}$  leads to lower money demand (substitution effect dominates)
- If  $\theta < 1$ , higher  $\Pi_{t+1}$  leads to higher money demand (income effect dominates)
- Let's denote money demand function:
$$
\frac {M _ {t} ^ {d}}{P _ {t}} = L \left(\Pi_ {t + 1}\right)
$$
- Money demand equal to money supply:
$$
(1 + n) ^ {t} M _ {t} ^ {d} = H
$$
- Also true in period  $t + 1$
$$
(1 + n) ^ {t} M _ {t} ^ {d} = (1 + n) ^ {t + 1} M _ {t + 1} ^ {d}
$$
- Dividing by  $P_{t}$  on both sides:
$$
\frac {M _ {t} ^ {d}}{P _ {t}} = (1 + n) \frac {P _ {t + 1}}{P _ {t}} \frac {M _ {t + 1} ^ {d}}{P _ {t + 1}}
$$
- Plugging in for money demand:
$$
L \left(\Pi_ {t + 1}\right) = (1 + n) \Pi_ {t + 1} L \left(\Pi_ {t + 2}\right)
$$
$$
L \left(\Pi_ {t}\right) = (1 + n) \Pi_ {t} L \left(\Pi_ {t + 1}\right)
$$
Consider a steady state where
$$
\Gamma_ {t} = \Pi_ {t + 1} = \bar {\Pi}
$$
- Then we have that
$$
L (\bar {\Pi}) = (1 + n) \bar {\Pi} L (\bar {\Pi})
$$
This simplifies to
$$
\bar {\Pi} = (1 + n) ^ {- 1}
$$
- This means that there is an equilibrium of the model with a constant inflation rate equal to  $(1 + n)^{-1}$
- Return on holding money is  $\Pi^{-1}$
- In equilibrium with constant inflation rate, return on holding money is
$$
\bar {\Pi} ^ {- 1} = (1 + n)
$$
This is the "golden rule" return on assets in this economy
- Money allows economy to reach efficient equilibrium
# CONSUMPTION POSSIBILITIES WITH MONEY
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/236562c2475f9e84ca12d3fe8116a75fcbe75f03a35949a59c395ee1fd105917.jpg)
Figure 4.1
Society's consumption possibilities in period  $t$
Source: Blanchard and Fischer (1989)
Money is intrinsically worthless in this model
- Yet, it is valued in equilibrium
- Valued because everyone believes it will continue to be valued
- Not just valued, it allows economy to reach Pareto efficient outcome!
# FIAT MONEY AND TIME HORIZON
For money to be valued, economy must go on forever
- If world ends at time  $T$ , money will not be valued in period  $T$
- If money not valued in period  $T$ , also not valued in period  $T - 1$
- Many other equilibria including one were money is not valued
- If people don't believe money will be valued tomorrow, it will not be valued today
Lots of equilibria in between
In simple economy  $r <   n$
- In economy with assets with  $r > n$ , there is no monetary equilibrium (Blanchard and Fischer, 1989, ch. 4.1)
- Monetary equilibrium only exists when economy is dynamically inefficient
Money plays the same role as government pension system
- In OLG model, money is only valued if it is not dominated in rate of return
In reality, money is dominated in rate of return
- In OLG model, money is a store of value
- In reality, money is a unit of account (and medium of exchange)
- OLG model doesn't capture some crucial features of money
- In OLG model, money can be valued even though it pays no dividends
Example of a "rational bubble"
- Bubble: Asset that has a higher price than discounted value of future dividends
Bubbles cannot arise in Ramsey model
- Bubbles can arise in OLG model (Tirole, 1985; Blanchard and Fischer, 1989, ch. 5)
- Bubbles can arise in some other settings as well (Santos and Woodford, 1997)
# EXCHANGE RATE REGIMES

Columbia

February 2018

- Theoretical arguments for floating versus pegging
What do countries do?
(Ilzetzki-Reinhart-Rogoff 17, Reinhart-Rogoff 04)
- Does it matter? What can be learned from it?
(Baxter-Stockman 89, Broda 04, Krugman 89, Mussa 86)
# Exchange Rate Regimes

A Very Short History

- The dominant monetary arrangement in the 18th and 19th centuries was a spicie standard (e.g. gold or silver standard)
- A specie standard is essentially a fixed exchange rate regime
- Exchange rate pegged to specie rather than some other currency
- Also typically involves lower legal limit on reserves
Gold standard therefore vulnerable to speculative attacks
- Credibility of commitment to gold standard important
- Countries would suspend convertability during major wars
- All countries (except US) went off gold in WWI
- International gold standard resurrected in 1920's
- But much weaker than before
- Rise of left wing politics had eroded political support and international cooperation was lacking (Eichengreen 92)
- Inter-war gold standard collapsed in the Great Depression
- Great Depression may have been caused by France hoarding gold i.e., not playing by the "rules of the game"
- Countries that left gold standard earlier suffered less in depression (Eichengreen and Sachs 85)
After WWII new system of fixed exchange rates
US Dollar pegged to gold
- Other currencies pegged to US dollar
Not really a gold standard
- Severe restrictions on gold trade by citizens
Why the emphasis on fixed exchange rates?
See Nurks 44, 45 for thinking of the time
- Friedman 53: famous case for flexible exchange rates
Bretton Woods system collapses in early 1970s
- Since then free float among major currencies
(e.g., USD, GBP, DEM/EUR, JPY, SWF)
- Smaller countries have frequently pegged to bigger countries
European Exchange Rate Mechanism
Asian countries pegged to US dollar
- Currency crises have been common
# The Theoretical Cases for Floating and Fixing
# CLASSIC CASE FOR FIXED EXCHANGE RATES

MUNDELL (1968), POOLE (1970)

- Suppose economy is hit by increase in money demand
# CLASSIC CASE FOR FIXED EXCHANGE RATES

MUNDELL (1968), POOLE (1970)

- Suppose economy is hit by increase in money demand
- Flexible rates:
- Shock leads to appreciation which reduces output
Fixed rate:
Central bank must sell money for FX to prevent appreciation
This insulates economy from shock
# CLASSIC CASE FOR FIXED EXCHANGE RATES

MUNDELL (1968), POOLE (1970)

- Suppose economy is hit by increase in money demand
- Flexible rates:
- Shock leads to appreciation which reduces output
Fixed rate:
Central bank must sell money for FX to prevent appreciation
This insulates economy from shock
Presumes floating monetary policy fixes money supply
- Interest rate rule takes care of this
# CLASSIC CASE FOR FLEXIBLE EXCHANGE RATES

FRIEDMAN (1953)

Real country specific shocks call for relative price changes

- How to achieve these?
- All prices in the economy can change
The exchange rate can adjust
- With sticky prices, exchange rate adjustment is much easier
At least in the modern world, internal prices are highly inflexible … an incipient deficit that is countered by a policy of permitting or forcing prices to decline is likely to produce unemployment … unemployment produces steady downward pressure on prices and wages, and the adjustment will not have been completed until the deflation has run its sorry course.
The argument for a flexible exchange rate is…very nearly identical with the argument for daylight savings time. Isn't it absurd to change the clock in summer when exactly the same result could be achieved by having each individual change his habits? All that is required is that everyone decide to come to his office an hour earlier, have lunch an hour earlier, etc. But obviously it is much simpler to change the clock…. The situation is exactly the same in the exchange market.
- Friedman's argument relies on exchange rate changes affecting relative prices across countries
- But empirically exchange rate pass-through is limited (Campa-Goldberg 05, Gopinath-Itskhoki-Rigobon 10, Nakamura-Steinsson 12)
- Friedman's argument relies on exchange rate changes affecting relative prices across countries
- But empirically exchange rate pass-through is limited (Campa-Goldberg 05, Gopinath-Itskhoki-Rigobon 10, Nakamura-Steinsson 12)
- Limits expenditure switching benefits of exchange rate flexibility
- In this case exchange rate flexibility leads to inefficient deviations from law or one price
See: Devereux-Engel 03, Corsetti-Dedola-Leduc 11
- Keynes, Nurkse argued in 1940s that flexible exchange rates would yield instability
- Friedman argued that speculators would stabilize exchange rates
- Profitable to buy low and sell high
- Keynes, Nurksie argued in 1940s that flexible exchange rates would yield instability
- Friedman argued that speculators would stabilize exchange rates
Profitable to buy low and sell high
- Exchange rate instability of post-Bretton Woods era, arguably, vindicated Keynes and Nurkse on this point
- A credible fixed exchange rate can replace bad domestic monetary policy with good foreign monetary policy
- But fixed exchange rates are typically imperfectly credible
- Subject to runs and crises
These crises are costly
# Exchange Rate Arrangements What Do Countries Do?
# Goal of the Paper:
- Document exchange rate arrangements for 194 countries over period 1946-2016
- Follow up on Reinhart and Rogoff (2004):
- Improves on choice of anchor country
- Adds more countries and longer sample period
- Document capital account restrictions
# HISTORY OF FX REGIME CLASSIFICATION
- IMF used to classify exchange rate regimes according to official government statements (de jure classification)
- Many supposedly fixed rates often adjusted
- Some supposedly flexible rates heavily managed
- IMF used to classify exchange rate regimes according to official government statements (de jure classification)
- Many supposedly fixed rates often adjusted
- Some supposedly flexible rates heavily managed
- De facto classifications:
Shambaugh (2004): Based on exchange rate variability
Levy Yayati and Sturzenegger (2005): Based on exchange rate variability and behavior of reserves
- Reinhart and Rogoff (2004): Based on exchange rate variability incorporating parallel FX markets and country chronologies
- IMF used to classify exchange rate regimes according to official government statements (de jure classification)
- Many supposedly fixed rates often adjusted
- Some supposedly flexible rates heavily managed
- De facto classifications:
Shambaugh (2004): Based on exchange rate variability
Levy Yayati and Sturzenegger (2005): Based on exchange rate variability and behavior of reserves
- Reinhart and Rogoff (2004): Based on exchange rate variability incorporating parallel FX markets and country chronologies
- IMF has since moved to de facto classification
TABLE1 COHERENCE OF METHODOLOGIES TO CODE EXCHANGE RATE REGIMES
<table><tr><td></td><td>IMF</td><td>Levy-Yeyati &amp; Sturzenegger</td><td>Reinhart &amp; Rogoff</td><td>Shambaugh</td></tr><tr><td>IMF</td><td>100\%</td><td></td><td></td><td></td></tr><tr><td>Levy-Yeyati and Sturzenegger</td><td>59\%</td><td>100\%</td><td></td><td></td></tr><tr><td>Reinhart and Rogoff</td><td>59\%</td><td>55\%</td><td>100\%</td><td></td></tr><tr><td>Shambaugh</td><td>68\%</td><td>65\%</td><td>65\%</td><td>100\%</td></tr></table>
Notes: Taken from table 3.3 of Klein and Shambaugh (2010). Entries are percentages of observations where different methodologies agree. All classifications are collapsed to three categories: pegged, intermediate, and floating.
Source: Rose (2011)
# IMPORTANCE OF PARALLEL FX MARKETS
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/08dee0799d85632dc5c6dd920ed3c2faadcca7c2bc8d2b0abd97ebd81d5620f4.jpg)
FIGURE I
The Incidence of Dual or Multiple Exchange Rate Arrangements, 1950-2001: Simplified IMF Classification
Sources: International Monetary Fund, Annual Report on Exchange Arrangements and Exchange Restrictions and International Financial Statistics; Pick and Sédillot [1971]; International Currency Analysis, World Currency Yearbook, various issues.
Exchange rate arrangements classified as "Other" include the IMF's categories of limited flexibility, managed floating, and independently floating.
Source: Reinhart and Rogoff (2004)
# IMPORTANCE OF PARALLEL FX MARKETS
- Parallel FX markets the norm in Europe in the 40's and 50's
- Restoration of convertibility occurred in Europe in 1958
- Parallel FX market common in less developed countries
- Parallel FX markets the norm in Europe in the 40's and 50's
- Restoration of convertibility occurred in Europe in 1958
- Parallel FX market common in less developed countries
- Parallel FX market better barometer of monetary policy
- When monetary policy is too loose to maintain peg, parallel rate will start depreciating
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/3391f8dea02bac95f41c228069593c3562a1e951e7afa296429196a6162067e3.jpg)
Bolivia: Log of Official and Market-Determined Exchange Rates January 1946-December 1972
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/830825eb966a991a30b585c20ba4819e0b7a517e452d37a4ada4b554333e3c88.jpg)
Indonesia: Log of Official and Market-Determined Exchange Rates January 1946-December 1972
Source: Reinhart and Rogoff (2004)
# TABLE II INFLATION, OFFICIAL AND MARKET-DETERMINED EXCHANGE RATES: COUNTRY-BY-COUNTRY PAIRWISE CORRELATIONS
<table><tr><td colspan="2">Percent of countries for which the correlations of:</td></tr><tr><td>The market-determined exchange rate and inflation are higher than the correlations of the official rate and inflation</td><td>73.7</td></tr><tr><td>The market-determined exchange rate and inflation are lower than the correlations of the official rate and inflation</td><td>26.3</td></tr></table>
Sources: International Monetary Fund, International Financial Statistics, Pick's Currency Yearbook, World Currency Report, Pick's Black Market Yearbook, and the authors' calculations.
The correlations reported are those of the twelve-month percent change in the consumer price index with the twelve-month percent change in the relevant bilateral exchange rate lagged six months.
Source: Reinhart and Rogoff (2004)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/483d12a88f994726af30d10e836a6247cf6128f2391cc4dac0c31b4647dd8b3a.jpg)
Figure 1: Anchor Currency Selection Process
Source: Ilzetzki, Reinhart, and Rogoff (2017)
Table 1: Classifying the Unclassified Anchors with Supplementary Indicators
<table><tr><td>Country(anchor)</td><td>Years</td><td>Fine ERAClassification</td><td>Indicators</td></tr><tr><td>Brazil (USD)</td><td>2001-</td><td>12</td><td>94\% of exports and 84\% of imports in USD. 90\% of PPG debt in USD. Anchored to USD before the 2000s.</td></tr><tr><td>Canada (USD)</td><td>2001-</td><td>12</td><td>70\% of exports and 75\% of imports in USD. Debt in domestic currency. Most recently anchored to USD.</td></tr><tr><td>Chile (USD)</td><td>2008-</td><td>12</td><td>No data available on invoicing, but given the large share of copper in exports and the denomination of international copper prices in USD, the lion share of exports are likely denominated in USD. Algorithm anchors the CLP to the USD as recently as 2008.</td></tr><tr><td>Colombia(USD)</td><td>2008-</td><td>12</td><td>Close to 100\% of invoicing in USD and close to 100\% of public debt in USD. Algorithm classifies a dollar anchor as recently as 2008.</td></tr><tr><td>Iceland (USD)</td><td>2001-</td><td>10</td><td>Very diversified invoicing between USD, GBP and EUR, but with USD the largest share. Central bank FX reserves diversified with USD the largest close to 50\%.</td></tr><tr><td>India (USD)</td><td>2012-</td><td>10</td><td>86\% of exports and 80\% of imports in USD. 80\% PPG debt in USD.</td></tr><tr><td>Israel (USD)</td><td>2005-</td><td>10</td><td>Approximately 70\% of exports and imports denominated in USD. Over 60\% of Bank of Israel reserves in USD. Most recently anchored to the USD.</td></tr><tr><td>Korea (USD)</td><td>1999-</td><td>12</td><td>Anchored to the USD in the 1990s. Other data unavailable.</td></tr><tr><td>Latvia (EUR)</td><td>1998-2001</td><td>10</td><td>Diversified invoicing, with EUR the majority at approximately 50\% of imports and exports. The country was in transition to joining the Eurozone.</td></tr><tr><td>Turkey (USD)</td><td>1998-</td><td>10 (until 2000)and 12(from 2003)</td><td>Diversified invoicing with the majority in USD. Foreign currency public debt is 60\% in USD and 40\% in EUR.</td></tr><tr><td>Uruguay (USD)</td><td>2009-</td><td>10</td><td>Anchored to the USD until the late 2000s. Other data unavailable.</td></tr></table>
Source: Ilzetzki, Reinhart, and Rogoff (2017)
# ANCHOR CURRENCY CLASSIFICATION
- Classification of anchor and exchange rate regimes somewhat intertwined
- Freely floating: No anchor
- Relatively fixed: Based on FX volatility
- Managed float:
- Calculate one-year moving average of monthly absolute change in exchange rate with respect to all candidate anchors (USD, EUR, JPY, GBP, AUD, CNY)
- Smallest movements with respect to single anchor more than  $50\%$  of time linked to that anchor
- If not, treated separately
Figure 3. The Geography of Anchor Currencies, 1950 and 2015
1950
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/972afe03784f70620ac221036e0259b7c68a096a0c2749a156512ab1b9ae32fc.jpg)
Source: Ilzetzki, Reinhart, and Rogoff (2017)
Source: Ilzetzki, Reinhart, and Rogoff (2017)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/6b17ef7b2c9fff9543a0f7bc2f5357a5a073a1b05d420b38d7bb35e32c5d23f7.jpg)
USD
EUR
GBP
Other
Freely_falling
No data
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/fa32e3f9cc2566b699bce9d83ba115d0ec3e15ecddbe2e251b6058507b459e33.jpg)
# EVOLUTION OF ANCHOR CURRENCIES
Large shift towards USD as anchor
Emergence of DEM/EUR as anchor
Several waves:
- Dismantling of the GBP zone
- Breakdown of Bretton Woods leads to emergence of DEM/EUR
- Collapse of the Soviet Union
Number of countries weighted by their share in world GDP, 1950-2015, excludes freely falling cases
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/47743533465472915f06eefb4815a895777b9fd7c280c8f65e7baf5a55e627f2.jpg)
Sources: The Conference Board Total Economy Database, International Monetary Fund International Financial Statistics, Reinhart and Rogoff (2004) sources cited therein, and authors' calculations Note: The Country Chronologies that supplement this paper show the evolution of the anchor currency on a countryby-country basis.
Source: Ilzetzki, Reinhart, and Rogoff (2017)
- Two classifications:
- Fine: 15 categories
- Course: 6 categories
# The fine classification codes are:
1 No separate legal tender or currency union
2 - Pre announced peg or currency board arrangement
3 - Pre announced horizontal band that is narrower than or equal to  $+/-2\%$
4 De facto peg
5 - Pre announced crawling peg; de facto moving band narrower than or equal to +/-1\%
6 - Pre announced crawling band that is narrower than or equal to  $+/-2\%$  or de facto horizontal band that is narrower than or equal to  $+/-2\%$
7 De facto crawling peg
8 De facto crawling band that is narrower than or equal to  $+/-2\%$
9 - Pre announced crawling band that is wider than or equal to  $+/-2\%$
10 - De facto crawling band that is narrower than or equal to  $+ / - 5\%$
11 - Moving band that is narrower than or equal to  $+ / - 2\%$  (i.e., allows for both appreciation and depreciation over time)
12 De facto moving band  $+ / - 5\%$  Managed floating
13 Freely floating
14 Freely falling
15. Dual market in which parallel market data is missing.
Source: Ilzetzki, Reinhart, and Rogoff (2017)
# The coarse classification codes are:
1 No separate legal tender
1 - Pre announced peg or currency board arrangement
1 - Pre announced horizontal band that is narrower than or equal to  $+/-2\%$
1 De facto peg
2 Pre announced crawling peg
2 - Pre announced crawling band that is narrower than or equal to  $+ / - 2\%$
2 De factor crawling peg
2 - De facto crawling band that is narrower than or equal to  $+ / - 2\%$
3 - Pre announced crawling band that is wider than or equal to  $+/-2\%$
3 De facto crawling band that is narrower than or equal to  $+ / - 5\%$
3 - Moving band that is narrower than or equal to  $+/-2\%$  (i.e., allows for both appreciation and depreciation over time)
3 Managed floating
4 Freely floating
5 Freely falling
6. Dual market in which parallel market data is missing.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/469ebc2eb2949db73dcbe946891e0f1d1f38877c5efb0299f4cf459d01273d0d.jpg)
Source: Iletzki, Reinhart, and Rogoff (2017).
Exchange rate behavior examined to verify official announcements.
# Statistical tests
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/c353f1ddf14178299588a87b25658d81c1aaea5c99fc1b043bb4cb8adf1fded9.jpg)
Source: Ilzetzki, Reinhart, and Rogoff (2017)
- Among country-year pairs that are not pegs, bands, or freely falling, IRR want to distinguish between free float and managed float
- Among country-year pairs that are not pegs, bands, or freely falling, IRR want to distinguish between free float and managed float
- Create index:  $E[\epsilon_{n,t}] / P(\epsilon_{n,t} < 0.01)$  where  $\epsilon_{n,t} = |\Delta s_{n,t}|$
- Calculate distribution of index for anchor countries (i.e., for most obviously freely floating exchange rates)
- Among country-year pairs that are not pegs, bands, or freely falling, IRR want to distinguish between free float and managed float
- Create index:  $E[\epsilon_{n,t}] / P(\epsilon_{n,t} < 0.01)$  where  $\epsilon_{n,t} = |\Delta s_{n,t}|$
- Calculate distribution of index for anchor countries (i.e., for most obviously freely floating exchange rates)
- If index is withing  $99\%$  CI, then freely floating
- Otherwise managed floating
Much fuller description in Reinhart-Rogoff 04
# EURO ZONE AND OTHER CURRENCY UNIONS
- Euro floats. But Euro Zone not single sovereign entity
IMF categorizes Euro Zone countries as freely floating
- Euro floats. But Euro Zone not single sovereign entity
- IMF categorizes Euro Zone countries as freely floating
- IRR place currency unions at the bottom of flexibility spectrum
- Define exchange rate arrangements at country not currency level
Even large countries have small vote share
- Introduction of Euro should reduce FX flexibility not increase it
- Euro floats. But Euro Zone not single sovereign entity
IMF categorizes Euro Zone countries as freely floating
- IRR place currency unions at the bottom of flexibility spectrum
- Define exchange rate arrangements at country not currency level
Even large countries have small vote share
- Introduction of Euro should reduce FX flexibility not increase it
- Other currency unions simpler since they usually peg to EUR or USD
1950
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/502f5075a1f08de7e2b7a105b93e4dcc9ba249bd094e0b06464d6194de3aa37b.jpg)
Figure 5. The Geography of Exchange Rate Arrangements, 1950 and 2015
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/b6cd0f67102d22366c1852cbf6d3101b235c2cb196f70b57b14e7b925f02cfc1.jpg)
Fixed
Crawling peg
Managed float
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/d2e763060a566e187b6133c6f82b10c8ca82ebcdecebda16a2c9f862f523b3c2.jpg)
Freely floating
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/ec6e598412f5dd17c1ed12406f93d1fc93c41449fdd642f8abc021db3b062c98.jpg)
Freely falling
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/4656aea9a2ab9e03c86b12eb326c15645bac262d42231f89fb6938781d4f72cd.jpg)
Missing data
Source: Ilzetzki, Reinhart, and Rogoff (2017)
2015
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/cc13d461f5b0851f461dabf2cf5a6388700ab3e9348b0ec3332289e8265d2a7e.jpg)
Source: Ilzetzki, Reinhart, and Rogoff (2017)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/f7a464b287bcc1cc83f8066cf12768f3fe1548363c96881ba16730951e2e01fe.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/1ba0e208d643caade5c77f6f124e03e413d2b5daa1d19ad6519853b5ebb53d1b.jpg)
Figure 7. De Facto Exchange Rate Arrangements, Coarse Classification, 1946-2016: Arrangement Categories as Shares of World GDP
Groups 1 and 2: Less flexibility, primarily nominal exchange rate anchors
Source: Ilzetzki, Reinhart, and Rogoff (2017)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/26cb81baeb5304c69d0e898164c7b48c4142f7d2c0a0899584018eb9b6888b1c.jpg)
Groups 3 and 4: Flexibility, primarily interest rate, money and most (not all) inflation targets
Source: Ilzetzki, Reinhart, and Rogoff (2017)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/ffc4fb3c6c618eb4ff70cb670345af3394e31ae5fe682507f5aca699b37271e0.jpg)
Groups 5 and 6: Flexibly unstable: Anchorsless
Source: Ilzetzki, Reinhart, and Rogoff (2017)
- Theoretical arguments for floating versus pegging
What do countries do?
(Ilzetzki-Reinhart-Rogoff 17, Reinhart-Rogoff 04)
- Does it matter? What can be learned from it?
(Baxter-Stockman 89, Broda 04, Krugman 89, Mussa 86)
# Exchange Rate Arrangements Does It Matter?
- Conventional wisdom: No it doesn't!
Typical citation: Baxter-Stockman 89
Goal of the Paper:
- Are business cycles different under fixed vs. flexible exchange rate regimes?
- Compare pre-1973 to 1973-1986 for set of countries
# Goal of the Paper:
- Are business cycles different under fixed vs. flexible exchange rate regimes?
- Compare pre-1973 to 1973-1986 for set of countries
- Stated conclusion:
Aside from greater variability of real exchange rates under flexible than pegged nominal exchange-rate systems, we find little evidence of systematic differences in the behavior of macroeconomic aggregates or international trade flows under alternative exchange-rate systems.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/08b22d33bdc798309d04159ef736e0aa1012d54148f8abbcac48c9c73c11ceb6.jpg)
FLEXIBLE RATE PERIOD: 1973.1-1985.4
Fig. 1. Standard deviation of industrial production  $(\%)$ ; linear trend filter.
# COUNTRY NAME
<table><tr><td>USA</td><td>U</td></tr><tr><td>FRANCE</td><td>F</td></tr><tr><td>CANADA</td><td>C</td></tr><tr><td>ITALY</td><td>I</td></tr><tr><td>NETHERLANDS</td><td>N</td></tr><tr><td>IRELAND</td><td>R</td></tr><tr><td>LUXEMBOURG</td><td>L</td></tr><tr><td>YUGOSLAVIA</td><td>Y</td></tr><tr><td>FINLAND</td><td>D</td></tr><tr><td>GREECE</td><td>G</td></tr><tr><td>JAPAN</td><td>J</td></tr><tr><td>SPAIN</td><td>S</td></tr><tr><td>GREAT BRITAIN</td><td>K</td></tr><tr><td>SWEDEN</td><td>V</td></tr></table>
Source: Baxter and Stockman (1989)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/463dd7541cbcac7ac796be6eaecad82cc8156c0f20fb3d4a9fab926655b64e6f.jpg)
FLEXIBLE RATE PERIOD: 1973:1-1985:4
Fig. 2. Standard deviation of industrial production  $(\%)$ ; first difference filter.
Source: Baxter and Stockman (1989)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/227785d8de647c690802bfa7605403261c50f38d5c6407c4135e27b6de4dcba4.jpg)
Fig. 3. Correlation of industrial production with U.S.; linear trend filter.
Source: Baxter and Stockman (1989)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/23966de6354880a7b52568105942f8f08ff9d987ed4b24ad53d46e5ef459cbc4.jpg)
FLEXIBLE RATE PERIOD: 19/3:1-1985:4
Fig. 4. Correlation of industrial production with U.S.; first difference filter.
<table><tr><td>COUNTRY NAME</td><td>SYMBOL</td></tr><tr><td>USA</td><td>U</td></tr><tr><td>FRANCE</td><td>F</td></tr><tr><td>CANADA</td><td>C</td></tr><tr><td>ITALY</td><td>I</td></tr><tr><td>NETHERLANDS</td><td>N</td></tr><tr><td>IRELAND</td><td>R</td></tr><tr><td>LUXEMBOURG</td><td>L</td></tr><tr><td>YUGOSLAVIA</td><td>Y</td></tr><tr><td>FINLAND</td><td>D</td></tr><tr><td>GREECE</td><td>G</td></tr><tr><td>JAPAN</td><td>J</td></tr><tr><td>SPAIN</td><td>S</td></tr><tr><td>GREAT BRITAIN</td><td>K</td></tr><tr><td>SWEDEN</td><td>V</td></tr></table>
Source: Baxter and Stockman (1989)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/305f1cbe4cdf6db821c28f70ec5e7a3bf18fa6ac7e5eeabb712177cd113681fc.jpg)
Fig. 5. Average growth rate of industrial production  $(\%)$ .
Source: Baxter and Stockman (1989)
- Volatility higher for most countries in flex period
Correlation of growth with US much lower in flex period
Average growth much lower in flex period
- Volatility higher for most countries in flex period
Correlation of growth with US much lower in flex period
Average growth much lower in flex period
- Hard to square with stated conclusion!
- But of course this proves nothing about causal effect of money since other things are going on.
# Goal of the Paper:
- Do countries with flexible exchange rates react differently to terms of trade shocks from countries countries with fixed exchange rate
# Goal of the Paper:
- Do countries with flexible exchange rates react differently to terms of trade shocks from countries countries with fixed exchange rate
- Traditional theory suggests that flexible exchange rates helps countries react to terms of trade shock
- Devalue in response to adverse terms of trade shock
- This increases demand and makes up for adverse consequences of terms of trade shock
# Goal of the Paper:
- Do countries with flexible exchange rates react differently to terms of trade shocks from countries countries with fixed exchange rate
- Traditional theory suggests that flexible exchange rates helps countries react to terms of trade shock
- Devalue in response to adverse terms of trade shock
- This increases demand and makes up for adverse consequences of terms of trade shock
- Definition of terms of trade:  $tt_{it} = P_{it}^{ex} / P_{it}^{im}$  (in home currency)
- Divides countries into fixed, flexible, intermediate regimes  $(R_{it})$
- Runs panel VAR with coefficient different for each regime
$$
A _ {0} Y _ {i t} = A (L) Y _ {i t} + B (L) X _ {i t} + u _ {i t}
$$
$$
Y _ {i t} = \left[ \Delta \log t t _ {i t}, \Delta \log y _ {i t}, \Delta \log r e r _ {i t}, \Delta \log p _ {i t} \right]
$$
- Divides countries into fixed, flexible, intermediate regimes  $(R_{it})$
- Runs panel VAR with coefficient different for each regime
$$
A _ {0} Y _ {i t} = A (L) Y _ {i t} + B (L) X _ {i t} + u _ {i t}
$$
$$
Y _ {i t} = \left[ \Delta \log t t _ {i t}, \Delta \log y _ {i t}, \Delta \log r e r _ {i t}, \Delta \log p _ {i t} \right]
$$
- Assumes that terms of trade is exogenous (ordered first in Cholesky decomposition)
- Controls: openness, financial development, change in current account, change in real gov expenditures as share of GDP.
Annual data, four lags, sample period 1973-1996
75 developing countries
- Requires  $R_{it} = R_{it - 1} = R_{it - 2}$ .
I.e., drops regime switch years and few years after
- Estimated using seemingly unrelated regressions
# EXCHANGE RATE CLASSIFICATION
- de jure IMF classification doesn't reflect reality
- Why not base a classification purely on volatility of the exchange rate?
- Stability may mean fix or may mean absence of shocks
- de jure IMF classification doesn't reflect reality
- Why not base a classification purely on volatility of the exchange rate?
- Stability may mean fix or may mean absence of shocks
- Makes use of Ghosh-Gulde-Ostry-Wolf 97 classification
- Starts with de jure
- Divides fixers into frequent and infrequent adjusters
- Distinguish heavily managed floats from other floats
- Three way classification with intermediate regimes being: pegged frequent adjusters, cooperative arrangements, floats in pre-determined range, heavily managed floaters
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/df5f4d41389a340d4d4b69dad3183e198ce65b91722c1d06f5dc634a058e4c9e.jpg)
- Fixed Regime - Intermediate Regime - Flexible Regime
Notes: The Exchange Rate Regime Classification is based on Ghosh et al (1997).
Source: Broda (2004)
- Idea: small countries are price takers in international markets
- Idea: small countries are price takers in international markets
Three worries:
- Countries may be large in a particular export (e.g., Chile for copper, Brazil for coffee, Malaysia for rubber, etc.)
- May have pricing power over highly differentiated products
- Home demand shocks would affect terms of trade (through prices or exchange rates)
Table 2
Goods with  $15\%$  or more world export share
<table><tr><td>SITC</td><td>Good</td><td>Country</td><td>Good&#x27;s X-share in country&#x27;s total X</td><td>Good&#x27;s X-share in world&#x27;s total X</td></tr><tr><td>71</td><td>Coffee and Substitutes</td><td>Brazil</td><td>5.6</td><td>17.71</td></tr><tr><td>281</td><td>Iron ore concentrates</td><td>Brazil</td><td>5.38</td><td>29.28</td></tr><tr><td>652</td><td>Cotton fabrics, woven</td><td>China</td><td>2.29</td><td>16.41</td></tr><tr><td>658</td><td>Textile articles nes</td><td>China</td><td>1.76</td><td>20.51</td></tr><tr><td>831</td><td>Travel goods, handbags</td><td>China</td><td>1.94</td><td>27.13</td></tr><tr><td>842</td><td>Mens outerwear nonknit</td><td>China</td><td>3.94</td><td>20.3</td></tr><tr><td>843</td><td>Womens outerwear nonknit</td><td>China</td><td>4.79</td><td>17.65</td></tr><tr><td>844</td><td>Undergarments nonknit</td><td>China</td><td>1.66</td><td>18.34</td></tr><tr><td>848</td><td>Headgear, nontxtl clothing</td><td>China</td><td>1.96</td><td>23.52</td></tr><tr><td>851</td><td>Footwear</td><td>China</td><td>4.44</td><td>18.41</td></tr><tr><td>894</td><td>Toys, sporting goods, etc</td><td>China</td><td>4.06</td><td>19.15</td></tr><tr><td>899</td><td>Other manufactured goods</td><td>China</td><td>1.91</td><td>16.38</td></tr><tr><td>72</td><td>Cocoa</td><td>Cote d&#x27;Ivoire</td><td>39.92</td><td>24.27</td></tr><tr><td>653</td><td>Woven man-made fib fabric</td><td>Korea</td><td>5.58</td><td>20.12</td></tr><tr><td>233</td><td>Natural rubber, gums</td><td>Malaysia</td><td>2.06</td><td>21.73</td></tr><tr><td>424</td><td>Fixed veg oil nonsoft</td><td>Malaysia</td><td>5.23</td><td>47.54</td></tr><tr><td>762</td><td>Radio broadcast receivers</td><td>Malaysia</td><td>4.77</td><td>18.74</td></tr><tr><td>271</td><td>Fertilizers, crude</td><td>Morocco</td><td>6.47</td><td>22.01</td></tr><tr><td>752</td><td>Automatic data proc equip</td><td>Singapore</td><td>15.9</td><td>15.12</td></tr><tr><td>74</td><td>Tea and Mate</td><td>Sri Lanka</td><td>13.06</td><td>18.67</td></tr><tr><td>36</td><td>Rice</td><td>Thailand</td><td>3.46</td><td>26.54</td></tr><tr><td>37</td><td>Fish etc prepd, prsvd nes</td><td>Thailand</td><td>3.03</td><td>18.43</td></tr><tr><td>232</td><td>Natural rubber, gums</td><td>Thailand</td><td>4.06</td><td>32.77</td></tr><tr><td>Total</td><td>22 Goods</td><td>9 Countries</td><td>6.23</td><td>22.21</td></tr></table>
Notes: By changing the cutoff line to 5 and  $10\%$ , 50 and 39 goods were selected. Source: Handbook of International Trade and Development Statistics (1996-1997), United Nations.
# Source: Broda (2004)
# Responses to a  $10\%$  (PV) Permanent Fall in TT
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/21b7ee84bdc07cae4b3a923b51637942efbccb354d5da01393d503432903909a.jpg)
Under Fixed Regimes
Figure 3: Real GDP Response
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/6b585d9cd00cd6277e7da7938f2791fdeaa926a70d0bb42396ee5cd287d764a2.jpg)
Under Flexible Regimes
Figure 6: Real GDP Response
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/bca18e8b3c4cd5e9b0613e7ac6835c697745d1ee09e6e2ed62f96e51bcb7482d.jpg)
Figure 4: RER Response
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/5407abfde94582f95e7ad11b4198ae631707bf4a593c7177d621eba8e837ee0e.jpg)
Figure 7: RER Response
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/43744b62930f0cfd442901807b8490902eb98ce97e01a4c3392a8fcf1658585e.jpg)
Figure 5: CPI Response
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/53ecad01c5dce2bb3b922476a3aa7631ef4879bbf6417dc0b357e762ba1eb6e1.jpg)
Figure 8: CPI Response
Source: Broda (2004)
Output losses larger for fixers
- RER response larger for floaters
Fixers see deflation, while floaters see inflation
Are these results different for positive relative to negative shocks?
- Allows for asymmetric responses to positive and negative shocks
- Does this separately for floaters and fixers
# Results:
No asymmetry for fixers
- Asymmetry for floaters
# Responses to a  $10\%$  (PV) Permanent Positive (dotted line) and Negative (solid line) change in TT under Fixed Regimes
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/4d900d40ec8d9b53f69ddc300bf293fd851118472d227fbab25b05791f0126d5.jpg)
Figure 9: Real GDP Response
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/1790f51c4dbae7854f5e7efe0e8459923d720b56885a476da118f50233030602.jpg)
Figure 10: RER Response
Source: Broda (2004)
# Responses to a  $10\%$  (PV) Permanent Positive (dotted line) and Negative (solid line) change in TT under Flexible Regimes
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/7f5441635191e900cfc6ddecfc18d361ad7ad3ee954e33abab4a689fb531daa7.jpg)
Figure 11: Real GDP Response
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/a8cac8228a60243188c079a57f046c806d2924970757cd9018376dfee58cc052.jpg)
Figure 12: RER Response
Source: Broda (2004)
- Hard to interpret results due to possible endogeneity of terms of trade
Possible instruments:
- Bartik instrument or sensitivity instrument
E.g., Global oil prices times country sensitivity of terms of trade
Time fixed effects
Inclusion would eliminate time series variation
- Broda focuses on difference, which is similar
- Can we infer anything about price rigidity from the behavior of exchange rates?
- Can we infer anything about price rigidity from the behavior of exchange rates?
Well, nominal and real exchange rates are highly correlated
# NOMINAL VS. REAL EXCHANGE RATE
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/fd0fded659647ff8682041664dd2e9328ac62e897231eabb4a1b419d4d115671.jpg)
Figure 1.3
Nominal versus real exchange rate.  $\square$  : exchange rate;  $+$  : relative price.
Source: Krugman (1989)
This seems straightforward enough. I would leave the subject here and go on to policy issues, except that the state of debate in contemporary economics doesn't let me. To me, the prima facie case that prices are sticky is overwhelming…For many of my colleagues, however, continuous market clearing and the absence of any money illusion are fundamental tenets, and this obliges them to explain away the appearance of price inflexibility as some kind of optical illusion….
Source: Krugman (1989)
In particular, one now often hears the argument that the kind of evidence I have presented …has got the causation backwards—that what really happens is that real exchange rates are moving around for real reasons, and the attempt of monetary authorities to stabilize domestic price levels creates the correlation between real and nominal rates.
Source: Krugman (1989)
- Do movements in nominal exchange rates (or lack thereof) "cause" movements in the real exchange rate?
Or vice versa?
- Mussa: Look at discontinuity in the volatility of the real exchange rate at the time of changes in the exchange rate regime
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/77391a3694e37dcc08103d3cdc11369ae19bcb65f4d9c8c45489075574699efe.jpg)
Source: Nakamura and Steinsson (2018). Change in U.S. - German real exchange rate.
- Floating exchange rates extremely volatile
- Exchange rate movements seem disconnected from movements of other macro variables
- But evidence on this point is poorly developed
- Floating exchange rates extremely volatile
- Exchange rate movements seem disconnected from movements of other macro variables
- But evidence on this point is poorly developed
- Krugman: Exchange rates can move so much precisely because they seem to matter so little!
- Floating exchange rates extremely volatile
- Exchange rate movements seem disconnected from movements of other macro variables
- But evidence on this point is poorly developed
- Krugman: Exchange rates can move so much precisely because they seem to matter so little!
- We don't have a good theoretical or empirical handle on this issue!!
Interesting recent paper: Itskhoki and Mukhin (2017)
# EXCHANGE RATE MODELS AND
# SPURIOUS REGRESSIONS
 and
UC Berkeley
April 2019
"One of the most remarkable facts about G3 exchange rates is that they are so seemingly immune to systematic empirical explanation."
- Kenneth Rogoff
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/a3d502b3cfefe9368553efd7e6bbd441413acf119d3ee7a4518851a8f15c3b9a.jpg)
DEM/USD Exchange Rate
# 1970'S MONETARY MODEL OF EXCHANGE RATES
- Purchasing Power Parity
$$ e _ {t} = p _ {t} - p _ {t} ^ {*}
$$
- Purchasing Power Parity
$$ e _ {t} = p _ {t} - p _ {t} ^ {*}
$$
Money demand
$$ m _ {t} - p _ {t} = \phi_ {y} y _ {t} - \phi_ {i} i _ {t}
$$
$$ m _ {t} ^ {*} - p _ {t} ^ {*} = \phi_ {y} y _ {t} ^ {*} - \phi_ {i} i _ {t} ^ {*}
$$
- Purchasing Power Parity
$$ e _ {t} = p _ {t} - p _ {t} ^ {*}
$$
Money demand
$$ m _ {t} - p _ {t} = \phi_ {y} y _ {t} - \phi_ {i} i _ {t}
$$
$$ m _ {t} ^ {*} - p _ {t} ^ {*} = \phi_ {y} y _ {t} ^ {*} - \phi_ {i} i _ {t} ^ {*}
$$
Combining money demand
$$ p _ {t} - p _ {t} ^ {*} = \left(m _ {t} - m _ {t} ^ {*}\right) - \phi_ {y} \left(y _ {t} - y _ {t} ^ {*}\right) + \phi_ {i} \left(i _ {t} - i _ {t} ^ {*}\right)
$$
- Purchasing Power Parity
$$ e _ {t} = p _ {t} - p _ {t} ^ {*}
$$
Money demand
$$ m _ {t} - p _ {t} = \phi_ {y} y _ {t} - \phi_ {i} i _ {t}
$$
$$ m _ {t} ^ {*} - p _ {t} ^ {*} = \phi_ {y} y _ {t} ^ {*} - \phi_ {i} i _ {t} ^ {*}
$$
Combining money demand
$$ p _ {t} - p _ {t} ^ {*} = \left(m _ {t} - m _ {t} ^ {*}\right) - \phi_ {y} \left(y _ {t} - y _ {t} ^ {*}\right) + \phi_ {i} \left(i _ {t} - i _ {t} ^ {*}\right)
$$
Exchange rate and "fundamentals":
$$
\boldsymbol {e} _ {t} = \left(m _ {t} - m _ {t} ^ {*}\right) - \phi_ {y} \left(y _ {t} - y _ {t} ^ {*}\right) + \phi_ {i} \left(i _ {t} - i _ {t} ^ {*}\right)
$$
Sample: German Mark, February 1920 - November 1923.
Hyperinflation: Ignore a bunch of terms.
$$ e _ {t} = \left(m _ {t} - m _ {t} ^ {*}\right) - \phi_ {Y} \left(y _ {t} - y _ {t} ^ {*}\right) + \phi_ {i} \left(i _ {t} - i _ {t} ^ {*}\right)
$$
$$
\boldsymbol {e} _ {t} = m _ {t} - \phi_ {i} \left(i _ {t} - i _ {t} ^ {*}\right)
$$
$$
\begin{array}{l} \log S = - 5. 1 3 5 + 0. 9 7 5 \log M + 0. 5 9 1 \log \pi \\ (0. 7 3 1) (0. 0 5 0) \tag {0.073} \\ \end{array}
$$
$$
R ^ {2} = 0. 9 9 4; \mathrm {s . e .} = 0. 2 4 1; \mathrm {D . W .} = 1. 9 1.
$$
Source: Frenkel (1976).
Fig. 1.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/cc26d2ac93280fd683cee9fb0451cfdfc14465529556bd19db33e5dd382f0399.jpg)
Source: Frenkel (1976).
Sample: DEM/USD, July 1974 - February 1978.
$$
\begin{array}{l} \mathbf {e} _ {t} = \phi_ {0} + \phi_ {m} (m _ {t} - m _ {t} ^ {*}) - \phi_ {y} (y _ {t} - y _ {t} ^ {*}) \\ + \phi_ {i} \left(i _ {t} - i _ {t} ^ {*}\right) + \phi_ {\pi} \left(\pi_ {t} ^ {e} - \pi_ {t} ^ {e *}\right) + \epsilon_ {t} \\ \end{array}
$$
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/83be947bb7270ece5c9c61517335abcf0494d8e282fd2b3a56a301744e51bf01.jpg)
FIGURE 1. PLOT OF (log OF) MARK/DOLLAR RATE, OLS REGRESSION FROM TABLE 1
Source: Frankel (1979).
TABLE I-TEST OF REAL INTEREST DIFFERENTIAL HYPOTHESIS
(Sample: July 1974-February 1978)
<table><tr><td>Technique</td><td>Constant</td><td>m-m1*</td><td>y-y*</td><td>r-r*</td><td>π-π*</td><td>R2</td><td>D.W.</td><td>ρ</td><td>Number of Observations</td></tr><tr><td rowspan="2">OLS</td><td>1.33</td><td>.87</td><td>-.72</td><td>-1.55</td><td>28.65</td><td>.80</td><td>.76</td><td></td><td>44</td></tr><tr><td>(.10)</td><td>(.17)</td><td>(.22)</td><td>(1.94)</td><td>(2.70)</td><td></td><td></td><td></td><td></td></tr><tr><td rowspan="2">CORC</td><td>.80</td><td>.31</td><td>-.33</td><td>-.259</td><td>7.72</td><td>.91</td><td></td><td>.98</td><td>43</td></tr><tr><td>(.19)</td><td>(.25)</td><td>(.20)</td><td>(1.96)</td><td>(4.47)</td><td></td><td></td><td></td><td></td></tr><tr><td rowspan="2">INST</td><td>1.39</td><td>.96</td><td>-.54</td><td>-4.75</td><td>27.42</td><td></td><td>1.00</td><td></td><td>42</td></tr><tr><td>(.08)</td><td>(.14)</td><td>(.18)</td><td>(1.69)</td><td>(2.26)</td><td></td><td></td><td></td><td></td></tr><tr><td rowspan="2">FAIR</td><td>1.39</td><td>.97</td><td>-.52</td><td>-5.40</td><td>29.40</td><td></td><td></td><td>.46</td><td>41</td></tr><tr><td>(.12)</td><td>(.21)</td><td>(.22)</td><td>(2.04)</td><td>(3.33)</td><td></td><td></td><td></td><td></td></tr></table>
Note: Standard errors are shown in parentheses.
Definitions: Dependent Variable (log of) Mark/Dollar Rate.
CORC  $=$  Iterated Cochrane-Orcutt.
INST = Instrumental variables for expected inflation differential are Consumer Price Index (CPI) inflation differential (average for past year), industrial Wholesale Price Index (WPI) inflation differential (average for past year), and long-term commercial bond rate differential.
FAIR = Instrumental variables are industrial WPI inflation differential and lagged values of the following: exchange rate, relative industrial production, short-term interest differential, and expected inflation differential. The method of including among the instruments lagged values of all endogenous and included exogenous variables, in order to insure consistency while correcting for first-order serial correlation, is attributed to Ray Fair.
$$ m - m ^ {*} = \log \text {o f} M _ {1} / U. S. M _ {1}
$$
$$ y - y ^ {*} = \log \text {o f} U. S.
$$
$$ r - r ^ {*} = \text {S h o r t - t e r m G e r m a n - U . S . i n t e r e s t d i f f e r e n t i a l}
$$
$$
\begin{array}{l} \left(r - r ^ {*}\right) _ {- 1} = \text {S h o r t - t e r m G e r m a n - U . S . i n t e r e s t d i f f e r e n t i a l g a g g e d} \\ \pi - \pi^ {*} = \text {E x p e c t e d G e r m a n - U . S . i n f l a t i o n d i f f e r e n t i a l , p r o x i e d b y l o n g - t e r m g o v e n m e n t b o n d d i f f e r e n t i a l}. \\ \end{array}
$$
Source: Frankel (1979).
- Do the monetary models of exchange rates fit out of sample?
- Do the monetary models of exchange rates fit out of sample?
- Generalized monetary model:
$$
\begin{array}{l} e _ {t} = \phi_ {0} + \phi_ {m} \left(m _ {t} - m _ {t} ^ {*}\right) + \phi_ {y} \left(y _ {t} - y _ {t} ^ {*}\right) + \phi_ {i} \left(i _ {t} - i _ {t} ^ {*}\right) \\ + \phi_ {\pi} \left(\pi_ {t} ^ {e} - \pi_ {t} ^ {e *}\right) + \phi_ {T B} T B _ {t} + \phi_ {T B ^ {*}} T B _ {t} ^ {*} + \epsilon_ {t} \\ \end{array}
$$
- Auto-regressive model
$$
\pmb {\varepsilon} _ {t} = \phi_ {0} + \sum_ {j = 1} ^ {J} \phi_ {j} \pmb {\varepsilon} _ {t - j} + \epsilon_ {t}
$$
- Auto-regressive model
$$
\pmb {e} _ {t} = \phi_ {0} + \sum_ {j = 1} ^ {J} \phi_ {j} \pmb {e} _ {t - j} + \epsilon_ {t}
$$
- Vector auto-regressive model
$$
\pmb {e} _ {t} = \phi_ {0} + \sum_ {j = 1} ^ {J} \phi_ {j} \pmb {e} _ {t - j} + \sum_ {j = 1} ^ {J} \Phi_ {j} X _ {t - j} + \epsilon_ {t}
$$
- Auto-regressive model
$$
\pmb {e} _ {t} = \phi_ {0} + \sum_ {j = 1} ^ {J} \phi_ {j} \pmb {e} _ {t - j} + \epsilon_ {t}
$$
- Vector auto-regressive model
$$
\pmb {e} _ {t} = \phi_ {0} + \sum_ {j = 1} ^ {J} \phi_ {j} \pmb {e} _ {t - j} + \sum_ {j = 1} ^ {J} \Phi_ {j} X _ {t - j} + \epsilon_ {t}
$$
- Random Walk model
$$
E _ {t} e _ {t + j} = e _ {t}
$$
Sample period: March 1973 - June 1981
- Forecasts based on rolling regression starting November 1976
Forecast horizons: 1, 6 and 12 months
Sample period: March 1973 - June 1981
- Forecasts based on rolling regression starting November 1976
Forecast horizons: 1, 6 and 12 months
Measure of out-of-sample accuracy: RMSE
$$
\left\{\sum_ {s = 0} ^ {N _ {k} - 1} \left[ F (t + s + k) - A (t + s + k) \right] ^ {2} / N _ {k} \right\} ^ {1 / 2}
$$
In structural models:
- Use actual realized future values of explanatory variables (as opposed to also forecasting explanatory variables)
In structural models:
- Use actual realized future values of explanatory variables (as opposed to also forecasting explanatory variables)
Two possible stories:
- Hard to predict exchange rate because it is hard to predict variables that it depends on
In structural models:
- Use actual realized future values of explanatory variables (as opposed to also forecasting explanatory variables)
Two possible stories:
- Hard to predict exchange rate because it is hard to predict variables that it depends on
- Hard to find any systematic relationship between exchange rates and other variables
Table I
Root mean square forecast errors.
<table><tr><td></td><td>Model:</td><td>Random walk</td><td>Forward rate</td><td>Univariate autoregression</td><td>Vector autoregression</td><td>Frenkel-Bilsonb</td><td>Dornbusch-Frankelb</td><td>Hooper-Mortonb</td></tr><tr><td>Exchange rate</td><td>Horizon</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td rowspan="3">$/mark</td><td>1 month</td><td>3.72</td><td>3.20</td><td>3.51</td><td>5.40</td><td>3.17</td><td>3.65</td><td>3.50</td></tr><tr><td>6 months</td><td>8.71</td><td>9.03</td><td>12.40</td><td>11.83</td><td>9.64</td><td>12.03</td><td>9.95</td></tr><tr><td>12 months</td><td>12.98</td><td>12.60</td><td>22.53</td><td>15.06</td><td>16.12</td><td>18.87</td><td>15.69</td></tr><tr><td rowspan="3">$/yen</td><td>1 month</td><td>3.68</td><td>3.72</td><td>4.46</td><td>7.76</td><td>4.11</td><td>4.40</td><td>4.20</td></tr><tr><td>6 months</td><td>11.58</td><td>11.93</td><td>22.04</td><td>18.90</td><td>13.38</td><td>13.94</td><td>11.94</td></tr><tr><td>12 months</td><td>18.31</td><td>18.95</td><td>52.18</td><td>22.98</td><td>18.55</td><td>20.41</td><td>19.20</td></tr><tr><td rowspan="3">$/pound</td><td>1 month</td><td>2.56</td><td>2.67</td><td>2.79</td><td>5.56</td><td>2.82</td><td>2.90</td><td>3.03</td></tr><tr><td>6 months</td><td>6.45</td><td>7.23</td><td>7.27</td><td>12.97</td><td>8.90</td><td>8.88</td><td>9.08</td></tr><tr><td>12 months</td><td>9.96</td><td>11.62</td><td>13.35</td><td>21.28</td><td>14.62</td><td>13.66</td><td>14.57</td></tr><tr><td rowspan="3">Trade-weighted dollar</td><td>1 month</td><td>1.99</td><td>N.A.</td><td>2.72</td><td>4.10</td><td>2.40</td><td>2.50</td><td>2.74</td></tr><tr><td>6 months</td><td>6.09</td><td>N.A.</td><td>6.82</td><td>8.91</td><td>7.07</td><td>6.49</td><td>7.11</td></tr><tr><td>12 months</td><td>8.65</td><td>14.24</td><td>11.14</td><td>10.96</td><td>11.40</td><td>9.80</td><td>10.35</td></tr></table>
$^\mathrm{a}$ Approximately in percentage terms.
bThe three structural models are estimated using Fair's instrumental variable technique to correct for first-order serial correlation.
($/Mark 1-month number should be 3.17 not 3.72, see Table 3)
Source: Meese and Rogoff (1983).
- Nothing beats random walk out of sample
- Nothing beats random walk out of sample
- Stronger than just lack of predictability (since they use realized future values of explanatory variables)
Nothing even explains exchange rates!!!
# Rogoff (2001) recounts:
For a long time, no one did believe us. The editor of the American Economic Review (Robert Clower) sent our manuscript back in return mail with a scathing letter saying that the results are obviously garbage and if we wish to remain in the economics profession, we had better develop a more positive attitude…. One then young and now pre-eminent MIT macroeconomist, when told the findings, forcefully commented (with a French accent) "You just cannot possibly have done it right."
# Rogoff (2001) recounts:
For a long time, no one did believe us. The editor of the American Economic Review (Robert Clower) sent our manuscript back in return mail with a scathing letter saying that the results are obviously garbage and if we wish to remain in the economics profession, we had better develop a more positive attitude…. One then young and now pre-eminent MIT macroeconomist, when told the findings, forcefully commented (with a French accent) "You just cannot possibly have done it right."
As of April 2019: 4776 Google scholar citations
# 1. Economics lesson:
- Exchange rate dominated by unpredictable shocks (unpredictable capital flows?)
Exchange rate very forward looking variable
1. Economics lesson:
- Exchange rate dominated by unpredictable shocks (unpredictable capital flows?)
Exchange rate very forward looking variable
2. Econometric lesson:
- Beware regressing very persistent variable on another very persistent variable
- Uncovered interest rate parity:
$$ i _ {t} = i _ {t} ^ {*} + E _ {t} e _ {t + 1} - e _ {t}
$$
- Returns should be equalized across countries
- If interest rate is higher abroad, exchange rate should fall enough on average to equalize returns ( $e_t$  is domestic currency price of foreign currency)
Rearranging and solving forward:
$$ i _ {t} = i _ {t} ^ {*} + E _ {t} e _ {t + 1} - e _ {t}
$$
$$
\boldsymbol {e} _ {t} = \left(i _ {t} ^ {*} - i _ {t}\right) + E _ {t} \boldsymbol {e} _ {t + 1}
$$
$$
\boldsymbol {e} _ {t} = \left(i _ {t} ^ {*} - i _ {t}\right) + \sum_ {j = 1} ^ {\infty} E _ {t} \left(i _ {t + j} ^ {*} - i _ {t + j}\right) + \lim  _ {j \rightarrow \infty} E _ {t} \boldsymbol {e} _ {t + j}
$$
What determines the change in the exchange rate:
$$
\boldsymbol {e} _ {t + 1} - \boldsymbol {e} _ {t} = - \left(i _ {t} ^ {*} - i _ {t}\right) + \sum_ {j = 1} ^ {\infty} \Delta E _ {t + 1} \left(i _ {t + j} ^ {*} - i _ {t + j}\right) + \lim  _ {j \rightarrow \infty} \Delta E _ {t + 1} \boldsymbol {e} _ {t + j}
$$ where  $\Delta E_{t + 1}x_{t + j} = E_{t + 1}x_{t + j} - E_t x_{t + j}$  (time  $t + 1$  news about  $x_{t + j}$ )
What determines the change in the exchange rate:
$$
\boldsymbol {e} _ {t + 1} - \boldsymbol {e} _ {t} = - \left(i _ {t} ^ {*} - i _ {t}\right) + \sum_ {j = 1} ^ {\infty} \Delta E _ {t + 1} \left(i _ {t + j} ^ {*} - i _ {t + j}\right) + \lim  _ {j \rightarrow \infty} \Delta E _ {t + 1} \boldsymbol {e} _ {t + j}
$$ where  $\Delta E_{t + 1}x_{t + j} = E_{t + 1}x_{t + j} - E_t x_{t + j}$  (time  $t + 1$  news about  $x_{t + j}$ )
- Two components:
Current interest rate differential
- News about all future interest rate differentials
What determines the change in the exchange rate:
$$
\boldsymbol {e} _ {t + 1} - \boldsymbol {e} _ {t} = - \left(i _ {t} ^ {*} - i _ {t}\right) + \sum_ {j = 1} ^ {\infty} \Delta E _ {t + 1} \left(i _ {t + j} ^ {*} - i _ {t + j}\right) + \lim  _ {j \rightarrow \infty} \Delta E _ {t + 1} \boldsymbol {e} _ {t + j}
$$ where  $\Delta E_{t + 1}x_{t + j} = E_{t + 1}x_{t + j} - E_t x_{t + j}$  (time  $t + 1$  news about  $x_{t + j}$ )
- Two components:
Current interest rate differential
- News about all future interest rate differentials
- Not so implausible that the variance of the latter is huge compared to the former
$$
\boldsymbol {e} _ {t + 1} - \boldsymbol {e} _ {t} = - \left(i _ {t} ^ {*} - i _ {t}\right) + \sum_ {j = 1} ^ {\infty} \Delta E _ {t + 1} \left(i _ {t + j} ^ {*} - i _ {t + j}\right) + \lim  _ {j \rightarrow \infty} \Delta E _ {t + 1} \boldsymbol {e} _ {t + j}
$$
- But  $(i_t^* - i_t)$  not only thing observed
$$
\pmb {e} _ {t + 1} - \pmb {e} _ {t} = - (i _ {t} ^ {*} - i _ {t}) + \sum_ {j = 1} ^ {\infty} \Delta E _ {t + 1} (i _ {t + j} ^ {*} - i _ {t + j}) + \lim _ {j \to \infty} \Delta E _ {t + 1} \pmb {e} _ {t + j}
$$
- But  $(i_t^* - i_t)$  not only thing observed
- Movements in longer-term bonds allow one to back out estimates of
$$
\sum_ {j = 1} ^ {\infty} \Delta E _ {t + 1} (i _ {t + j} ^ {*} - i _ {t + j})
$$ at least up to  $j = 40$  quarters (and assuming EHTS)
$$
\boldsymbol {e} _ {t + 1} - \boldsymbol {e} _ {t} = - \left(i _ {t} ^ {*} - i _ {t}\right) + \sum_ {j = 1} ^ {\infty} \Delta E _ {t + 1} \left(i _ {t + j} ^ {*} - i _ {t + j}\right) + \lim  _ {j \rightarrow \infty} \Delta E _ {t + 1} \boldsymbol {e} _ {t + j}
$$
- But  $(i_t^* - i_t)$  not only thing observed
- Movements in longer-term bonds allow one to back out estimates of
$$
\sum_ {j = 1} ^ {\infty} \Delta E _ {t + 1} (i _ {t + j} ^ {*} - i _ {t + j})
$$ at least up to  $j = 40$  quarters (and assuming EHTS)
$\bullet$ $\lim_{j\to \infty}\Delta E_{t + 1}e_{t + j}$  still a potential problem
- But in real terms PPP should hold in the very long run (Clarida-Luo 14; Engel 15)
- Why was Frankel's in-sample inference so much stronger than Meese-Rogoff's out-of-sample inference?
- Why was Frankel's in-sample inference so much stronger than Meese-Rogoff's out-of-sample inference?
- Suggests that something is wrong with in-sample inference (This is a general concern)
- Monetary model of exchange rate:
$$
\boldsymbol {e} _ {t} = \phi_ {0} + \phi_ {f} \boldsymbol {f} _ {t} + \epsilon_ {t}
$$
- Both  $e_t$  and  $f_t$  have a unit-root.
Granger and Newbold (1974):
- Usual methods massively understate standard errors
As a preliminary, we looked at the regression
$$
Y _ {t} = \beta_ {0} + \beta_ {1} X _ {t},
$$ where  $Y_{t}$  and  $X_{t}$  were, in fact, generated as independent random walks each of length 50. Table 1 shows values of
$$
S = \frac {| \hat {\beta} _ {1} |}{\widehat {S . E .} (\hat {\beta} _ {1})},
$$ the customary statistic for testing the significance of  $\beta_{1}$ , for 100 simulations.
Table 1 Regressing two independent random walks.
<table><tr><td rowspan="2">S: Frequency:</td><td>0-1</td><td>1-2</td><td>2-3</td><td>3-4</td><td>4-5</td><td>5-6</td><td>6-7</td><td>7-8</td></tr><tr><td>13</td><td>10</td><td>11</td><td>13</td><td>18</td><td>8</td><td>8</td><td>5</td></tr><tr><td rowspan="2">S: Frequency:</td><td>8-9</td><td>9-10</td><td>10-11</td><td>11-12</td><td>12-13</td><td>13-14</td><td>14-15</td><td>15-16</td></tr><tr><td>3</td><td>3</td><td>1</td><td>5</td><td>0</td><td>1</td><td>0</td><td>1</td></tr></table>
Source: Granger and Newbold (1974).
# Table 2
Regressions of a series on  $m$  independent 'explanatory' series.
Series either all random walks or all A.R.I.M.A. (0, 1, 1) series, or changes in these.  $Y_{0} = 100$ ,  $Y_{t} = Y_{t - 1} + a_{t}$ ,  $Y_{t}^{\prime} = Y_{t} + kb_{t}$ ;  $X_{j,t,0} = 100$ ,  $X_{j,t,1} = X_{j,t - 1} + a_{j,t}$ ,  $X_{j,t}^{\prime} = X_{j,t} + kb_{j,t}$ ;  $a_{t}, a_{t}, b_{t}, b_{t}b_{t}$  sets of independent  $N(0,1)$  white noises.  $k = 0$  gives random walks,  $k = 1$  gives A.R.I.M.A. (0, 1, 1) series.  $H_{0} = \text{no relationship}$ , is true. Series length is 50, number of simulations is 100,  $R^{2} = \text{corrected } R^{2}$ .
<table><tr><td colspan="2"></td><td>Per cent times  H_0  rejecteda</td><td>Average Durbin-Watson d</td><td>Average  R^2 </td><td>Per cent  R^2 &gt; 0.7 </td></tr><tr><td colspan="6">Random walks</td></tr><tr><td rowspan="5">Levels</td><td>m = 1</td><td>76</td><td>0.32</td><td>0.26</td><td>5</td></tr><tr><td>m = 2</td><td>78</td><td>0.46</td><td>0.34</td><td>8</td></tr><tr><td>m = 3</td><td>93</td><td>0.55</td><td>0.46</td><td>25</td></tr><tr><td>m = 4</td><td>95</td><td>0.74</td><td>0.55</td><td>34</td></tr><tr><td>m = 5</td><td>96</td><td>0.88</td><td>0.59</td><td>37</td></tr><tr><td rowspan="5">Changes</td><td>m = 1</td><td>8</td><td>2.00</td><td>0.004</td><td>0</td></tr><tr><td>m = 2</td><td>4</td><td>1.99</td><td>0.001</td><td>0</td></tr><tr><td>m = 3</td><td>2</td><td>1.91</td><td>-0.007</td><td>0</td></tr><tr><td>m = 4</td><td>10</td><td>2.01</td><td>0.006</td><td>0</td></tr><tr><td>m = 5</td><td>6</td><td>1.99</td><td>0.012</td><td>0</td></tr><tr><td colspan="6">A.R.I.M.A. (0, I, I)</td></tr><tr><td rowspan="5">Levels</td><td>m = 1</td><td>64</td><td>0.73</td><td>0.20</td><td>3</td></tr><tr><td>m = 2</td><td>81</td><td>0.96</td><td>0.30</td><td>7</td></tr><tr><td>m = 3</td><td>82</td><td>1.09</td><td>0.37</td><td>11</td></tr><tr><td>m = 4</td><td>90</td><td>1.14</td><td>0.44</td><td>9</td></tr><tr><td>m = 5</td><td>90</td><td>1.26</td><td>0.45</td><td>19</td></tr><tr><td rowspan="5">Changes</td><td>m = 1</td><td>8</td><td>2.58</td><td>0.003</td><td>0</td></tr><tr><td>m = 2</td><td>12</td><td>2.57</td><td>0.01</td><td>0</td></tr><tr><td>m = 3</td><td>7</td><td>2.53</td><td>0.005</td><td>0</td></tr><tr><td>m = 4</td><td>9</td><td>2.53</td><td>0.025</td><td>0</td></tr><tr><td>m = 5</td><td>13</td><td>2.54</td><td>0.027</td><td>0</td></tr></table>
*Test at 5\% level, using an overall test on  $\mathbf{R}^2$ .
Source: Granger and Newbold (1974).
- Two common responses:
Use HAC standard errors (e.g., Newey-West, 1987)
- Series are persistent but don't have a unit root.
- Two common responses:
- Use HAC standard errors (e.g., Newey-West, 1987)
- Series are persistent but don't have a unit root.
- Granger, Hyung, and Jeon (2001)
$$
X _ {t} = \alpha + \beta Y _ {t} + u _ {t}
$$
$$
X _ {t} = \theta_ {x} X _ {t - 1} + \epsilon_ {x, t}
$$
$$
Y _ {t} = \theta_ {y} Y _ {t - 1} + \epsilon_ {y, t}
$$
Table 1. Regressing between two independent AR series  $\left( {\theta  = {\theta }_{x} = {\theta }_{y}}\right)$  ,percentage of  $\left| t\right|  > {1.96}$
<table><tr><td>Method</td><td>NOBS</td><td>θ = 0</td><td>θ = 0.25</td><td>θ = 0.5</td><td>θ = 0.75</td><td>θ = 0.9</td><td>θ = 1.0</td></tr><tr><td rowspan="5">OLS</td><td>100</td><td>5.3</td><td>7.6</td><td>13.3</td><td>29.1</td><td>51.5</td><td>77.0</td></tr><tr><td>500</td><td>5.8</td><td>7.5</td><td>16.3</td><td>31.5</td><td>51.6</td><td>90.0</td></tr><tr><td>2000</td><td>5.8</td><td>7.1</td><td>13.5</td><td>29.4</td><td>52.5</td><td>94.5</td></tr><tr><td>10000</td><td>4.3</td><td>6.6</td><td>12.2</td><td>30.6</td><td>52.3</td><td>97.6</td></tr><tr><td>∞</td><td>5.0</td><td>7.0</td><td>13.0</td><td>30.0</td><td>53.0</td><td>100.0</td></tr><tr><td rowspan="5">BART</td><td>100</td><td>7.6</td><td>7.7</td><td>9.9</td><td>16.5</td><td>30.6</td><td>62.0</td></tr><tr><td>500</td><td>6.4</td><td>6.8</td><td>9.0</td><td>14.1</td><td>23.9</td><td>79.6</td></tr><tr><td>2000</td><td>6.0</td><td>5.9</td><td>6.1</td><td>10.3</td><td>16.3</td><td>86.4</td></tr><tr><td>10000</td><td>4.6</td><td>5.2</td><td>5.5</td><td>7.7</td><td>12.8</td><td>92.5</td></tr><tr><td>∞</td><td>5.0</td><td>5.0</td><td>5.0</td><td>5.0</td><td>5.0</td><td>100.0</td></tr></table>
Notes: 1. The number of iteration  $= 1000$
2. \% of rejection, i.e., absolute value of  $t$ -value  $> 1.96$ .
3. $\infty$  means asymptotic case.
4. To avoid the problem of fixing  $X_0$  and  $Y_0$ , 100 pre-samples are generated and let  $X_{-100} = Y_{-100} = 0$ .
5. The number of rejections (BART) depends on the number of lags  $(l)$  used to calculate  $\hat{v}$ .  $l = \text{integer} \left[ \frac{4(T / 100)^{1/4}}{} \right]$  is set.
Source: Granger, Hyung, and Jeon (2001).
- Big problem even if series are stationary if they are pretty persistent and sample is small
Newey-West standard errors have very bad small sample properties
- Big problem even if series are stationary if they are pretty persistent and sample is small
Newey-West standard errors have very bad small sample properties
- Accurate standard errors require more sophisticated methods
Lazarus-Lewis-Stock 18 suggest improvements
- Even this not so good. No really satisfactory methods exist
Why does this problem occur, intuitively?
Why does this problem occur, intuitively?
- Observations are not independent!!
- Observations that are close in time are very correlated
Why does this problem occur, intuitively?
- Observations are not independent!!
- Observations that are close in time are very correlated
- Intuitively, the key question is:
- How many independent observations do I have? (With unit root, all observations are correlated)
Why does this problem occur, intuitively?
- Observations are not independent!!
- Observations that are close in time are very correlated
- Intuitively, the key question is:
- How many independent observations do I have? (With unit root, all observations are correlated)
Is higher frequency data useful?
Why does this problem occur, intuitively?
- Observations are not independent!!
- Observations that are close in time are very correlated
- Intuitively, the key question is:
- How many independent observations do I have? (With unit root, all observations are correlated)
Is higher frequency data useful?
- It does increase the number of data points
- But the correlation between data points goes up
- Intuitively: No new information about low frequency stuff
- Whether a sample is "small" or "large" is not so simple a question
Depends on how correlated observations are
- You can have hundreds of thousands of observations but a "small sample" problem if correlation between observations is very high
- Cross-sections correlation can also be a problem (hence importance of "clustering" in constructing standard errors)
1. "Revolution of identification"
- More serious attention to credible identification of causal effects
2. Accurate standard errors
- Clustering
Accounting for persistence
# HAS MEESE-ROGOFF 83 STOOD THE TEST OF TIME?
Mostly yes!
Rossi 13 provides comprehensive survey
- Mark 95 long-run predictability results most serious challenge
See also more recent work on Taylor rule fundamentals (Molodtsova-Papell JIE 09)
- Simple monetary model:
$$
\boldsymbol {e} _ {t} = \boldsymbol {f} _ {t} + \boldsymbol {c}
$$
$$ f _ {t} = \left(m _ {t} - m _ {t} ^ {*}\right) - \lambda \left(y _ {t} - y _ {t} ^ {*}\right)
$$
- Even if monetary model doesn't work in the short run, it may work in the long run
Estimates partial adjustment model:
$$
\boldsymbol {e} _ {t + k} - \boldsymbol {e} _ {t} = \alpha_ {k} + \beta_ {k} (\boldsymbol {f} _ {t} - \boldsymbol {e} _ {t}) + \nu_ {t + k, t}
$$
$$
\boldsymbol {e} _ {t + k} - \boldsymbol {e} _ {t} = \alpha_ {k} + \beta_ {k} \left(\boldsymbol {f} _ {t} - \boldsymbol {e} _ {t}\right) + \nu_ {t + k, t}
$$
Sample period: 1973:2 - 1991:4
- Pseudo-out-of-sample period: 1981:4 - 1991:4
Currencies: Canada, Germany, Switzerland, Japan
$\bullet$  Horizons:  $k = 1,4,8,12,16$  (quarters)
$$
\boldsymbol {e} _ {t + k} - \boldsymbol {e} _ {t} = \alpha_ {k} + \beta_ {k} (\boldsymbol {f} _ {t} - \boldsymbol {e} _ {t}) + \nu_ {t + k, t}
$$
- Multiperiod forecasts induce correlation in error terms
$$
\boldsymbol {e} _ {t + k} - \boldsymbol {e} _ {t} = \alpha_ {k} + \beta_ {k} (\boldsymbol {f} _ {t} - \boldsymbol {e} _ {t}) + \nu_ {t + k, t}
$$
- Multiperiod forecasts induce correlation in error terms
Stambaugh 86/99 bias
- $f_{t} - e_{t}$  predetermined but not strictly exogenous
- Past values of  $e_{t+k} - e_t$  correlated with  $f_t - e_t$
Causes finite sample bias in  $\beta_{k}$
$$
\boldsymbol {e} _ {t + k} - \boldsymbol {e} _ {t} = \alpha_ {k} + \beta_ {k} (\boldsymbol {f} _ {t} - \boldsymbol {e} _ {t}) + \nu_ {t + k, t}
$$
- Multiperiod forecasts induce correlation in error terms
Stambaugh 86/99 bias
- $f_{t} - e_{t}$  predetermined but not strictly exogenous
- Past values of  $e_{t+k} - e_t$  correlated with  $f_t - e_t$
Causes finite sample bias in  $\beta_{k}$
- Standard errors produced using bootstrap that assumes  $f_{t} - e_{t}$  follows AR(p)
- But  $e_t$  and  $f_t$  may not be cointegrated
- Small sample bias in estimating AR(p)
Why not use UK pound?
Why not use UK pound?
- Mark calibrates  $\lambda = 1$ :
$$ f _ {t} = \left(m _ {t} - m _ {t} ^ {*}\right) - \left(y _ {t} - y _ {t} ^ {*}\right)
$$ also no interest rate term. Why not estimate?
Why not use UK pound?
- Mark calibrates  $\lambda = 1$ :
$$ f _ {t} = \left(m _ {t} - m _ {t} ^ {*}\right) - \left(y _ {t} - y _ {t} ^ {*}\right)
$$ also no interest rate term. Why not estimate?
- GNP for US, GDP for all other countries. Why?
M3 for Canada, M1 for all other countries. Why?
TABLE 2-REGRESSION ESTIMATES AND BOOTSTRAP DISTRIBUTIONS
<table><tr><td>(i) k</td><td>(ii) βk</td><td>(iii) Adj-p</td><td>(iv) Adj-n</td><td>(v) R2</td><td>(vi) Adj-p</td><td>(vii) Adj-n</td><td>(viii) t_k(20)</td><td>(ix) MSL-p</td><td>(x) MSL-n</td><td>(xi) t_k(A)</td><td>(xii) A</td><td>(xiii) MSL-p</td><td>(xiv) MSL-n</td></tr><tr><td colspan="14">Canadian dollar:</td></tr><tr><td>1</td><td>0.040</td><td>0.027</td><td>0.028</td><td>0.059</td><td>0.050</td><td>0.051</td><td>3.051</td><td>0.076</td><td>0.077</td><td>2.172</td><td>1</td><td>0.065</td><td>0.066</td></tr><tr><td>4</td><td>0.155</td><td>0.109</td><td>0.114</td><td>0.179</td><td>0.144</td><td>0.146</td><td>2.389</td><td>0.186</td><td>0.195</td><td>2.168</td><td>12</td><td>0.172</td><td>0.175</td></tr><tr><td>8</td><td>0.349</td><td>0.264</td><td>0.264</td><td>0.351</td><td>0.287</td><td>0.285</td><td>2.539</td><td>0.222</td><td>0.230</td><td>2.527</td><td>19</td><td>0.201</td><td>0.216</td></tr><tr><td>12</td><td>0.438</td><td>0.320</td><td>0.315</td><td>0.336</td><td>0.251</td><td>0.235</td><td>1.961</td><td>0.317</td><td>0.343</td><td>1.936</td><td>29</td><td>0.323</td><td>0.343</td></tr><tr><td>16</td><td>0.450</td><td>0.295</td><td>0.287</td><td>0.254</td><td>0.146</td><td>0.121</td><td>1.542</td><td>0.420</td><td>0.447</td><td>1.512</td><td>33</td><td>0.436</td><td>0.456</td></tr><tr><td colspan="14">Deutsche mark:</td></tr><tr><td>1</td><td>0.035</td><td>0.012</td><td>0.016</td><td>0.015</td><td>0.005</td><td>0.006</td><td>1.836</td><td>0.280</td><td>0.252</td><td>0.929</td><td>2</td><td>0.408</td><td>0.391</td></tr><tr><td>4</td><td>0.205</td><td>0.114</td><td>0.126</td><td>0.104</td><td>0.065</td><td>0.068</td><td>2.902</td><td>0.169</td><td>0.157</td><td>2.290</td><td>15</td><td>0.206</td><td>0.193</td></tr><tr><td>8</td><td>0.554</td><td>0.380</td><td>0.410</td><td>0.265</td><td>0.196</td><td>0.190</td><td>3.487</td><td>0.174</td><td>0.159</td><td>3.558</td><td>26</td><td>0.147</td><td>0.143</td></tr><tr><td>12</td><td>0.966</td><td>0.733</td><td>0.759</td><td>0.527</td><td>0.432</td><td>0.410</td><td>6.329</td><td>0.059</td><td>0.057</td><td>6.510</td><td>29</td><td>0.047</td><td>0.048</td></tr><tr><td>16</td><td>1.324</td><td>1.015</td><td>1.046</td><td>0.762</td><td>0.638</td><td>0.603</td><td>9.256</td><td>0.027</td><td>0.033</td><td>9.124</td><td>23</td><td>0.024</td><td>0.025</td></tr><tr><td colspan="14">Swiss franc:</td></tr><tr><td>1</td><td>0.074</td><td>0.046</td><td>0.046</td><td>0.051</td><td>0.042</td><td>0.042</td><td>2.681</td><td>0.109</td><td>0.119</td><td>2.073</td><td>2</td><td>0.084</td><td>0.086</td></tr><tr><td>4</td><td>0.285</td><td>0.171</td><td>0.171</td><td>0.180</td><td>0.147</td><td>0.145</td><td>3.248</td><td>0.121</td><td>0.126</td><td>3.196</td><td>14</td><td>0.096</td><td>0.102</td></tr><tr><td>8</td><td>0.568</td><td>0.356</td><td>0.350</td><td>0.336</td><td>0.278</td><td>0.276</td><td>4.770</td><td>0.080</td><td>0.085</td><td>4.696</td><td>21</td><td>0.078</td><td>0.073</td></tr><tr><td>12</td><td>0.837</td><td>0.527</td><td>0.519</td><td>0.538</td><td>0.458</td><td>0.452</td><td>8.013</td><td>0.026</td><td>0.024</td><td>8.013</td><td>20</td><td>0.026</td><td>0.021</td></tr><tr><td>16</td><td>1.086</td><td>0.706</td><td>0.671</td><td>0.771</td><td>0.673</td><td>0.655</td><td>17.406</td><td>0.001</td><td>0.002</td><td>12.665</td><td>14</td><td>0.005</td><td>0.006</td></tr><tr><td colspan="14">Yen:</td></tr><tr><td>1</td><td>0.047</td><td>0.014</td><td>0.016</td><td>0.020</td><td>0.010</td><td>0.011</td><td>1.396</td><td>0.388</td><td>0.365</td><td>1.331</td><td>3</td><td>0.285</td><td>0.259</td></tr><tr><td>4</td><td>0.263</td><td>0.136</td><td>0.138</td><td>0.125</td><td>0.088</td><td>0.090</td><td>2.254</td><td>0.271</td><td>0.262</td><td>2.153</td><td>14</td><td>0.247</td><td>0.231</td></tr><tr><td>8</td><td>0.575</td><td>0.328</td><td>0.329</td><td>0.301</td><td>0.233</td><td>0.232</td><td>3.516</td><td>0.199</td><td>0.189</td><td>3.496</td><td>19</td><td>0.188</td><td>0.177</td></tr><tr><td>12</td><td>0.945</td><td>0.592</td><td>0.579</td><td>0.532</td><td>0.432</td><td>0.427</td><td>4.889</td><td>0.129</td><td>0.143</td><td>4.735</td><td>17</td><td>0.153</td><td>0.156</td></tr><tr><td>16</td><td>1.273</td><td>0.819</td><td>0.802</td><td>0.694</td><td>0.565</td><td>0.548</td><td>4.919</td><td>0.154</td><td>0.156</td><td>4.901</td><td>16</td><td>0.174</td><td>0.177</td></tr></table>
Notes: The table presents OLS estimates of the regression  $e_{t+k} - e_t = \alpha_k + \beta_k (f_t - e_t) + \nu_{t+k,k}$ , where  $f_t \equiv (m_t - m_t^*) - (y_t - y_t^*)$ . The (Gaussian) parametric and nonparametric bootstrap distributions are generated under the null hypothesis that the regressor follows an AR(4) for the Canadian dollar, the Swiss franc, and the yen, and an AR(5) for the deutsche mark. Exchange rates are dollars per unit of foreign currency. Adj-p and Adj-n are bias-adjusted values obtained by subtracting median values generated by the parametric and nonparametric bootstrap distributions, respectively, from the estimates. MSL-p and MSL-n are, respectively, the parametric and nonparametric bootstrap marginal significance levels for a one-tail test.  $A$  is the truncation lag determined by Andrews's (1991) univariate AR(1) rule used for constructing the  $t$  ratios with the data.
Source: Mark (1995). Note: Big  $\beta$ , big  $R^2$ , large  $t_k(20)$  for DM, CHF, JPY
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/508b72cb09036bc2488d79d7b78c0ff54aef0bc9c2fcb0360d5472890c5644b2.jpg)
FIGURE 1. ONE-QUARTER CHANGES IN THE LOG DOLLAR/DEUTSCHES-MARK EXCHANGE RATE
Source: Mark (1995)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/04c14762c09c3378ce513bc2efd83da416d00dae7aae8d7ea9924202d11c0d24.jpg)
FIGURE 5. SIXTEEN-QUARTER CHANGES IN THE LOG DOLLAR/DEUTSCHHE-MARK EXCHANGE RATE
Source: Mark (1995)
TABLE 4-OUT-OF-SAMPLE FORECAST EVALUATION
<table><tr><td>(i) k</td><td>(ii) IN/RW</td><td>(iii) OUT/IN</td><td>(iv) OUT/RW</td><td>(v) MSL-p</td><td>(vi) MSL-n</td><td>(vii) DM(20)</td><td>(viii) MSL-p</td><td>(ix) MSL-n</td><td>(x) DM(A)</td><td>(xi) A</td><td>(xii) MSL-p</td><td>(xiii) MSL-n</td></tr><tr><td colspan="13">Canadian dollar:</td></tr><tr><td>1</td><td>0.960</td><td>1.040</td><td>0.998</td><td>0.209</td><td>0.194</td><td>0.061</td><td>0.215</td><td>0.202</td><td>0.036</td><td>1</td><td>0.218</td><td>0.201</td></tr><tr><td>4</td><td>0.889</td><td>1.258</td><td>1.119</td><td>0.571</td><td>0.538</td><td>-1.270</td><td>0.526</td><td>0.487</td><td>-0.925</td><td>8</td><td>0.494</td><td>0.468</td></tr><tr><td>8</td><td>0.675</td><td>1.695</td><td>1.145</td><td>0.447</td><td>0.397</td><td>-1.036</td><td>0.427</td><td>0.377</td><td>-0.890</td><td>17</td><td>0.420</td><td>0.390</td></tr><tr><td>12</td><td>0.654</td><td>2.197</td><td>1.436</td><td>0.613</td><td>0.578</td><td>-1.916</td><td>0.574</td><td>0.556</td><td>-1.661</td><td>18</td><td>0.587</td><td>0.579</td></tr><tr><td>16</td><td>0.799</td><td>2.128</td><td>1.699</td><td>0.654</td><td>0.636</td><td>-2.596</td><td>0.578</td><td>0.542</td><td>-1.857</td><td>15</td><td>0.567</td><td>0.555</td></tr><tr><td colspan="13">Deutsche mark:</td></tr><tr><td>1</td><td>0.988</td><td>1.027</td><td>1.015</td><td>0.397</td><td>0.339</td><td>-0.932</td><td>0.458</td><td>0.393</td><td>-0.846</td><td>4</td><td>0.536</td><td>0.493</td></tr><tr><td>4</td><td>0.927</td><td>1.120</td><td>1.037</td><td>0.345</td><td>0.288</td><td>-1.345</td><td>0.563</td><td>0.511</td><td>-0.852</td><td>9</td><td>0.478</td><td>0.427</td></tr><tr><td>8</td><td>0.833</td><td>1.203</td><td>1.002</td><td>0.268</td><td>0.217</td><td>-0.027</td><td>0.270</td><td>0.220</td><td>-0.020</td><td>18</td><td>0.270</td><td>0.221</td></tr><tr><td>12</td><td>0.670</td><td>1.188</td><td>0.796</td><td>0.127</td><td>0.092</td><td>4.246</td><td>0.068</td><td>0.059</td><td>0.094</td><td>16</td><td>0.151</td><td>0.136</td></tr><tr><td>16</td><td>0.431</td><td>1.216</td><td>0.524</td><td>0.040</td><td>0.025</td><td> 8.719^a </td><td>0.061</td><td>0.047</td><td>8.719</td><td>18</td><td>0.021</td><td>0.011</td></tr><tr><td colspan="13">Swiss franc:</td></tr><tr><td>1</td><td>0.972</td><td>1.026</td><td>0.997</td><td>0.305</td><td>0.266</td><td>0.066</td><td>0.320</td><td>0.278</td><td>0.064</td><td>3</td><td>0.315</td><td>0.271</td></tr><tr><td>4</td><td>0.886</td><td>1.108</td><td>0.981</td><td>0.291</td><td>0.263</td><td>0.218</td><td>0.304</td><td>0.272</td><td>0.162</td><td>12</td><td>0.298</td><td>0.274</td></tr><tr><td>8</td><td>0.780</td><td>1.176</td><td>0.917</td><td>0.256</td><td>0.219</td><td>0.703</td><td>0.260</td><td>0.236</td><td>0.560</td><td>17</td><td>0.253</td><td>0.227</td></tr><tr><td>12</td><td>0.625</td><td>1.181</td><td>0.738</td><td>0.152</td><td>0.132</td><td>2.933</td><td>0.161</td><td>0.137</td><td>0.938</td><td>13</td><td>0.255</td><td>0.211</td></tr><tr><td>16</td><td>0.335</td><td>1.229</td><td>0.411</td><td>0.033</td><td>0.023</td><td> 9.650^b </td><td>0.080</td><td>0.058</td><td>1.996</td><td>8</td><td>0.192</td><td>0.159</td></tr><tr><td colspan="13">Yen:</td></tr><tr><td>1</td><td>0.962</td><td>1.027</td><td>0.988</td><td>0.304</td><td>0.257</td><td>1.571</td><td>0.168</td><td>0.132</td><td>0.836</td><td>3</td><td>0.177</td><td>0.134</td></tr><tr><td>4</td><td>0.822</td><td>1.129</td><td>0.928</td><td>0.257</td><td>0.207</td><td>2.302</td><td>0.151</td><td>0.118</td><td>1.487</td><td>10</td><td>0.134</td><td>0.105</td></tr><tr><td>8</td><td>0.688</td><td>1.191</td><td>0.819</td><td>0.214</td><td>0.162</td><td>3.096</td><td>0.142</td><td>0.117</td><td>1.803</td><td>13</td><td>0.152</td><td>0.117</td></tr><tr><td>12</td><td>0.536</td><td>1.329</td><td>0.712</td><td>0.196</td><td>0.148</td><td>3.319</td><td>0.174</td><td>0.148</td><td>1.147</td><td>17</td><td>0.164</td><td>0.135</td></tr><tr><td>16</td><td>0.363</td><td>1.579</td><td>0.574</td><td>0.152</td><td>0.119</td><td>5.126</td><td>0.178</td><td>0.160</td><td>3.096</td><td>16</td><td>0.151</td><td>0.131</td></tr></table>
Notes: The table presents ratios of root-mean-squared errors for the regression's out-of-sample forecasts (OUT), the driftless random walk (RW), and the in-sample regression residual during the forecast period (IN). The first forecast is made on 1981.4. DM(20) and DMA are the Diebold-Mariano statistics constructed using the method of Newey and West (1987) with the truncation lag of the Bartlett window set to 20 and set by Andrews's (1991) AR(1) rule, respectively. In instances where the estimated spectral density at frequency zero of the squared error differential is nonpositive (see footnote 8), the Bartlett-window truncation lag is decreased by 1. MSL-p and MSL-n are marginal significance levels, generated by the parametric and nonparametric bootstrap distributions, respectively, for one-tail tests.
Source: Mark (1995). Note: OUT/RW much smaller than 1.
- Jon wrote a class paper on this for Jim Stock's Time Series class in 2003
True out-of-sample period: 1992:1-2000:4
- Jon wrote a class paper on this for Jim Stock's Time Series class in 2003
True out-of-sample period: 1992:1-2000:4
Used slightly different data:
M2 as opposed to M3 for Canada
GDP as opposed to GNP for US
- Results sensitive to this (not comforting)
- Main results do not survive in 1990s
Table 1 -- Replication, Extensions and Out of Sample Performance
<table><tr><td rowspan="2"></td><td colspan="2">Mark&#x27;s published results</td><td colspan="2">Mark&#x27;s data -- My replication</td><td colspan="2">Current Data -- Mark&#x27;s sample period</td><td rowspan="2">Mark&#x27;s RMSE results OUT/RW (viii)</td><td rowspan="2">RMSE ratios for 1990&#x27;s OUT/RW (ix)</td></tr><tr><td>beta (ii)</td><td>R2 (iii)</td><td>beta (iv)</td><td>R2 (v)</td><td>beta (vi)</td><td>R2 (vii)</td></tr><tr><td colspan="9">Canadian dollar vs. U.S. dollar</td></tr><tr><td>1</td><td>0.040</td><td>0.059</td><td>0.041</td><td>0.061</td><td>-0.005</td><td>0.002</td><td>0.998</td><td>0.963</td></tr><tr><td>4</td><td>0.155</td><td>0.179</td><td>0.157</td><td>0.182</td><td>-0.041</td><td>0.022</td><td>1.119</td><td>0.933</td></tr><tr><td>8</td><td>0.349</td><td>0.351</td><td>0.350</td><td>0.354</td><td>-0.073</td><td>0.020</td><td>1.145</td><td>0.932</td></tr><tr><td>12</td><td>0.438</td><td>0.336</td><td>0.442</td><td>0.342</td><td>-0.187</td><td>0.061</td><td>1.436</td><td>1.037</td></tr><tr><td>16</td><td>0.450</td><td>0.254</td><td>0.456</td><td>0.262</td><td>-0.305</td><td>0.107</td><td>1.699</td><td>1.208</td></tr><tr><td colspan="9">Deutsche mark vs. U.S. dollar</td></tr><tr><td>1</td><td>0.035</td><td>0.015</td><td>0.037</td><td>0.016</td><td>0.036</td><td>0.016</td><td>1.015</td><td>1.029</td></tr><tr><td>4</td><td>0.205</td><td>0.104</td><td>0.204</td><td>0.104</td><td>0.181</td><td>0.087</td><td>1.037</td><td>0.987</td></tr><tr><td>8</td><td>0.554</td><td>0.265</td><td>0.552</td><td>0.264</td><td>0.503</td><td>0.231</td><td>1.002</td><td>0.992</td></tr><tr><td>12</td><td>0.966</td><td>0.527</td><td>0.961</td><td>0.524</td><td>0.911</td><td>0.485</td><td>0.796</td><td>1.511</td></tr><tr><td>16</td><td>1.324</td><td>0.762</td><td>1.318</td><td>0.758</td><td>1.274</td><td>0.715</td><td>0.524</td><td>1.957</td></tr><tr><td colspan="9">Swiss franc vs. U.S. dollar</td></tr><tr><td>1</td><td>0.074</td><td>0.051</td><td>0.073</td><td>0.050</td><td>0.087</td><td>0.073</td><td>0.997</td><td>0.984</td></tr><tr><td>4</td><td>0.285</td><td>0.180</td><td>0.284</td><td>0.178</td><td>0.314</td><td>0.227</td><td>0.981</td><td>0.937</td></tr><tr><td>8</td><td>0.568</td><td>0.336</td><td>0.566</td><td>0.335</td><td>0.571</td><td>0.351</td><td>0.917</td><td>0.786</td></tr><tr><td>12</td><td>0.837</td><td>0.538</td><td>0.834</td><td>0.536</td><td>0.804</td><td>0.511</td><td>0.738</td><td>0.763</td></tr><tr><td>16</td><td>1.086</td><td>0.771</td><td>1.085</td><td>0.770</td><td>1.064</td><td>0.751</td><td>0.411</td><td>0.980</td></tr><tr><td colspan="9">Japanese Yen vs. U.S. dollar</td></tr><tr><td>1</td><td>0.047</td><td>0.020</td><td>0.047</td><td>0.020</td><td>0.030</td><td>0.011</td><td>0.988</td><td>1.014</td></tr><tr><td>4</td><td>0.263</td><td>0.125</td><td>0.264</td><td>0.126</td><td>0.195</td><td>0.085</td><td>0.928</td><td>1.117</td></tr><tr><td>8</td><td>0.575</td><td>0.301</td><td>0.576</td><td>0.302</td><td>0.452</td><td>0.227</td><td>0.819</td><td>1.177</td></tr><tr><td>12</td><td>0.945</td><td>0.532</td><td>0.948</td><td>0.534</td><td>0.769</td><td>0.421</td><td>0.712</td><td>1.139</td></tr><tr><td>16</td><td>1.273</td><td>0.694</td><td>1.274</td><td>0.696</td><td>1.063</td><td>0.557</td><td>0.574</td><td>1.185</td></tr></table>
Source: Steinsson (2003)
- Killian 99 makes same point as I did. Also critiques bootstrap.
- Faust-Rogers-Wright 03: Doesn't work with other vintages of data
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/f05711ad5a79f7084b6c8a979ae77349405d228fb887df4bca56cf7ac95e1deb.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/22ddebb409881b3687758137905c39056a1466465a08c3ef9b3996b1afc93675.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/d763d487e7e103ca0cc3bcd1a5e43d8d99e164cd2b7bd2c176c112a2eee3670b.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/c8ca43a0202b77370aafc6c3c85fc00056c17ba17120b91269b3836849d6689d.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/0e3bc234987a1abdd11d1c8183caa7e347ecd6c72f1145d0e796b4adbbcac426.jpg)
Fig. 6. Out-of-sample relative RMSE using different data vintages (Mark's sample period).
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/2e16fd1a2371970476443d1ae691280219a300d516c99e42cdf84ec97b108c17.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/1d72fe744b53ad1ad065cb9f5dbb42a3261d0cbc759e9380fee564234f1b972d.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/309ad16f610714161498b9684d0e171a900f074dc24ec57fdb6208501b5c0971.jpg)
Source: Faust-Rogers-Wright (2003)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/06cdad32a5c46c117c9f8517bb39c63325706922645e3955ad8d53daf046d8f7.jpg)
Canada,  $k = 12$
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/1afcbe87094e5504eb9430b4bc4f48cceab42aaf50659b8faf686005cdd8ba54.jpg)
Germany,  $k = 12$
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/2a7511d772b137d885188f4f3feb2026d1edb2ea351648ae5f2c9b6d4dbcfb32.jpg)
Japan,  $k = 12$
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/ca87b3abc0ffdb383076d183ee7ceb11f4c232c9a520a106d9f13104ab67e505.jpg)
Switzerland,  $k = 12$
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/336ade0bd0be7de4e6a31c770cbb3bb00c2a7933c489e25cac8716a22acf3123.jpg)
Canada, k=16
Fig. 7. Bootstrap  $P$ -values for out-of-sample relative RMSE using different data vintages (Mark's sample period).
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/451c83b66c04e700dccbf0ab584338927acd17dc6591e89823c70f8078b65269.jpg)
Germany,  $k = 16$
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/552af3830ca04af0da688f8712b827dcce44bf7d5c0a64a3637aa4c7d9154230.jpg)
Japan,  $k = 16$
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/63f7a2041408cb0bd50974e2132dd254757041dcfa308df841d454ad30727a91.jpg)
Switzerland,  $k = 16$
Source: Faust-Rogers-Wright (2003)
- Killian 99 makes same point as I did. Also critiques bootstrap.
- Faust-Rogers-Wright 03: Doesn't work with other vintages of data
Berkowitz-Giorgianni 01:
- Mark's bootstrap assumes  $e_t$  and  $f_t$  are cointegrated (It assume AR(p) for  $z_t = f_t - e_t$ )
- Standard errors much larger under null of no-cointegration (also standard diagnostic test stats fail in this case)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/553097c3cc95da8b653819290d6d3c80444c33de520004323bea2e7f26aaa828.jpg)
FIGURE 1.—MONTE CARLO DISTRIBUTIONS OF NEWEY-WEST  $T$ -STATISTICS UNDER  $\mathbf{H}_0$ : INDEPENDENCE
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/67f1dfbc113d876db17bddac4ae4319f86dd571021c6f8c18ceab0e33cee28c7.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/85d3a2241a5b051e3bf97e5c1d73bf1a84289c89a63f2f6b6630173af9566ebc.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/0649b8a0058cd711deb127382cd72d42548cdf57d83a8cef714d7e10ff3e3a37.jpg)
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/b3b706e60115633173a79eb7b7e881986f5b5f8a818eedd1401131178e9e87fc.jpg)
For each horizon of interest,  $k = 1, 4, 8, 12$ , and 16, we plot the histogram of the Newey-West  $t$ -statistic with a bandwidth of 20. The solid line corresponds to the density of a  $t$ -distributed random variable with degrees of freedom equal to  $85 - (k + 1)$ .
Source: Berkowitz-Giorgianni (2001)
TABLE 1.—LONG-HORIZON MONTE CARLO ESTIMATES NULL HYPOTHESIS: INDEPENDENCE (SPOT RATES FOLLOW A RANDOM WALK AND FUNDAMENTALS AN AR(2) PROCESS)
<table><tr><td>k</td><td>\%-ile</td><td>βk</td><td>t(LS)</td><td>t(20)</td><td>t(A)</td><td>R2</td><td>OUT/RW</td><td>DM(20)</td><td>DM(A)</td></tr><tr><td colspan="10">Panel A: sample size = 85</td></tr><tr><td rowspan="3">1</td><td>50</td><td>0.046</td><td>1.479</td><td>2.028</td><td>1.525</td><td>0.026</td><td>1.008</td><td>-0.377</td><td>-0.300</td></tr><tr><td>90</td><td>0.112</td><td>2.517</td><td>3.941</td><td>2.740</td><td>0.072</td><td>0.969</td><td>2.222</td><td>1.341</td></tr><tr><td>95</td><td>0.143</td><td>2.827</td><td>4.502</td><td>3.132</td><td>0.088</td><td>0.957</td><td>3.197</td><td>1.758</td></tr><tr><td rowspan="3">4</td><td>50</td><td>0.183</td><td>2.982</td><td>2.359</td><td>2.092</td><td>0.101</td><td>1.032</td><td>-0.441</td><td>-0.372</td></tr><tr><td>90</td><td>0.403</td><td>5.220</td><td>4.823</td><td>4.180</td><td>0.256</td><td>0.881</td><td>2.458</td><td>1.816</td></tr><tr><td>95</td><td>0.495</td><td>6.012</td><td>5.666</td><td>4.947</td><td>0.314</td><td>0.840</td><td>3.430</td><td>2.400</td></tr><tr><td rowspan="3">8</td><td>50</td><td>0.354</td><td>4.270</td><td>2.769</td><td>2.635</td><td>0.195</td><td>1.050</td><td>-0.420</td><td>-0.366</td></tr><tr><td>90</td><td>0.711</td><td>7.741</td><td>6.079</td><td>5.689</td><td>0.444</td><td>0.768</td><td>2.752</td><td>2.230</td></tr><tr><td>95</td><td>0.839</td><td>9.004</td><td>7.442</td><td>6.813</td><td>0.519</td><td>0.699</td><td>4.058</td><td>3.015</td></tr><tr><td rowspan="3">12</td><td>50</td><td>0.507</td><td>5.333</td><td>3.200</td><td>3.203</td><td>0.286</td><td>1.045</td><td>-0.320</td><td>-0.301</td></tr><tr><td>90</td><td>0.958</td><td>9.798</td><td>7.173</td><td>6.839</td><td>0.574</td><td>0.678</td><td>3.108</td><td>2.574</td></tr><tr><td>95</td><td>1.067</td><td>11.267</td><td>8.928</td><td>8.112</td><td>0.641</td><td>0.605</td><td>4.552</td><td>3.524</td></tr><tr><td rowspan="3">16</td><td>50</td><td>0.635</td><td>6.132</td><td>3.465</td><td>3.585</td><td>0.359</td><td>1.029</td><td>-0.223</td><td>-0.194</td></tr><tr><td>90</td><td>1.122</td><td>11.505</td><td>8.292</td><td>7.976</td><td>0.663</td><td>0.601</td><td>3.796</td><td>2.956</td></tr><tr><td>95</td><td>1.244</td><td>13.360</td><td>9.790</td><td>9.488</td><td>0.727</td><td>0.516</td><td>5.089</td><td>4.122</td></tr><tr><td colspan="10">Panel B: sample size = 1085</td></tr><tr><td rowspan="3">1</td><td>50</td><td>0.004</td><td>1.559</td><td>1.593</td><td>1.572</td><td>0.002</td><td>0.999</td><td>0.198</td><td>0.134</td></tr><tr><td>90</td><td>0.011</td><td>2.565</td><td>2.734</td><td>2.595</td><td>0.006</td><td>0.991</td><td>2.495</td><td>1.559</td></tr><tr><td>95</td><td>0.013</td><td>2.834</td><td>2.991</td><td>2.854</td><td>0.007</td><td>0.987</td><td>3.107</td><td>1.943</td></tr><tr><td rowspan="3">4</td><td>50</td><td>0.016</td><td>3.102</td><td>1.651</td><td>1.646</td><td>0.009</td><td>0.997</td><td>0.212</td><td>0.150</td></tr><tr><td>90</td><td>0.041</td><td>5.145</td><td>2.805</td><td>2.853</td><td>0.024</td><td>0.962</td><td>2.562</td><td>2.014</td></tr><tr><td>95</td><td>0.050</td><td>5.683</td><td>3.142</td><td>3.160</td><td>0.029</td><td>0.946</td><td>3.423</td><td>2.571</td></tr><tr><td rowspan="3">8</td><td>50</td><td>0.031</td><td>4.433</td><td>1.728</td><td>1.723</td><td>0.017</td><td>0.995</td><td>0.181</td><td>0.164</td></tr><tr><td>90</td><td>0.082</td><td>7.385</td><td>2.976</td><td>3.053</td><td>0.048</td><td>0.920</td><td>2.908</td><td>2.452</td></tr><tr><td>95</td><td>0.100</td><td>8.088</td><td>3.321</td><td>3.391</td><td>0.057</td><td>0.890</td><td>3.915</td><td>3.157</td></tr><tr><td rowspan="3">12</td><td>50</td><td>0.046</td><td>5.449</td><td>1.815</td><td>1.791</td><td>0.026</td><td>0.992</td><td>0.208</td><td>0.189</td></tr><tr><td>90</td><td>0.121</td><td>9.098</td><td>3.146</td><td>3.191</td><td>0.072</td><td>0.874</td><td>3.509</td><td>3.007</td></tr><tr><td>95</td><td>0.149</td><td>9.982</td><td>3.520</td><td>3.614</td><td>0.085</td><td>0.831</td><td>4.884</td><td>3.951</td></tr><tr><td rowspan="3">16</td><td>50</td><td>0.062</td><td>6.260</td><td>1.911</td><td>1.835</td><td>0.035</td><td>0.992</td><td>0.173</td><td>0.149</td></tr><tr><td>90</td><td>0.158</td><td>10.505</td><td>3.292</td><td>3.374</td><td>0.093</td><td>0.826</td><td>4.433</td><td>3.807</td></tr><tr><td>95</td><td>0.198</td><td>11.504</td><td>3.715</td><td>3.815</td><td>0.110</td><td>0.773</td><td>6.308</td><td>5.278</td></tr></table>
The table presents estimated slope coefficients,  $\hat{\beta}_{\mathrm{r}}$  for equation (2) with the LST-statistics, heteroskedasticity, and autocorrelation-corrected  $t$ -statistics using a Bartlett kernel and a truncation lag of 20 and 30. The data are from the 1985-2004 period. The dashed line indicates that the random-walk, mean-squared, out-of-sample forecast error. DM(20) and DM(A) denote the Diebold-Mariano statistics with a Bartlett kernel and truncation lags of 20 and via Andrews' (1991) rule, respectively.
# Source: Berkowitz-Giorgianni (2001)
TABLE 4.—LONG-HORIZON REGRESSION ESTIMATES NULL HYPOTHESIS: NO COINTEGRATION (1973:2-1991:4)
<table><tr><td></td><td>k</td><td>βk</td><td>t(20)</td><td>p-val</td><td>t(A)</td><td>p-val</td><td>R2</td><td>OUT/RW</td><td>p-val</td><td>DM(20)</td><td>p-val</td><td>DM(A)</td><td>p-val</td></tr><tr><td rowspan="5">Canadian Dollar</td><td>1</td><td>0.040</td><td>3.051</td><td>0.095</td><td>2.172</td><td>0.086</td><td>0.059</td><td>0.998</td><td>0.405</td><td>0.061</td><td>0.441</td><td>0.036</td><td>0.443</td></tr><tr><td>4</td><td>0.155</td><td>2.398</td><td>0.217</td><td>2.168</td><td>0.190</td><td>0.179</td><td>1.119</td><td>0.412</td><td>-1.270</td><td>0.849</td><td>-0.925</td><td>0.975</td></tr><tr><td>8</td><td>0.349</td><td>2.539</td><td>0.225</td><td>2.527</td><td>0.212</td><td>0.351</td><td>1.145</td><td>0.712</td><td>-1.036</td><td>0.958</td><td>-0.890</td><td>0.901</td></tr><tr><td>12</td><td>0.438</td><td>1.961</td><td>0.352</td><td>1.936</td><td>0.350</td><td>0.336</td><td>1.436</td><td>0.317</td><td>-1.916</td><td>0.592</td><td>-1.661</td><td>0.695</td></tr><tr><td>16</td><td>0.450</td><td>1.542</td><td>0.458</td><td>1.512</td><td>0.465</td><td>0.254</td><td>1.699</td><td>0.196</td><td>-2.596</td><td>0.466</td><td>-1.857</td><td>0.620</td></tr><tr><td rowspan="5">German Mark</td><td>1</td><td>0.035</td><td>1.836</td><td>0.510</td><td>0.929</td><td>0.668</td><td>0.015</td><td>1.015</td><td>0.969</td><td>-0.932</td><td>0.724</td><td>-0.846</td><td>0.669</td></tr><tr><td>4</td><td>0.205</td><td>2.902</td><td>0.354</td><td>2.290</td><td>0.406</td><td>0.104</td><td>1.037</td><td>0.914</td><td>-1.345</td><td>0.522</td><td>-0.852</td><td>0.780</td></tr><tr><td>8</td><td>0.554</td><td>3.487</td><td>0.354</td><td>3.558</td><td>0.313</td><td>0.265</td><td>1.002</td><td>0.809</td><td>-0.027</td><td>0.814</td><td>-0.020</td><td>0.814</td></tr><tr><td>12</td><td>0.966</td><td>6.329</td><td>*0.165</td><td>6.510</td><td>*0.135</td><td>0.527</td><td>0.796</td><td>*0.406</td><td>4.246</td><td>0.093</td><td>0.094</td><td>0.563</td></tr><tr><td>16</td><td>1.324</td><td>9.256</td><td>0.096</td><td>9.124</td><td>0.082</td><td>0.762</td><td>0.524</td><td>*0.113</td><td>8.719</td><td>0.030</td><td>8.719</td><td>0.016</td></tr><tr><td rowspan="5">Japanese Yen</td><td>1</td><td>0.047</td><td>1.396</td><td>0.516</td><td>1.331</td><td>0.423</td><td>0.020</td><td>0.988</td><td>0.477</td><td>1.571</td><td>0.286</td><td>0.836</td><td>0.322</td></tr><tr><td>4</td><td>0.263</td><td>2.254</td><td>0.353</td><td>2.153</td><td>0.341</td><td>0.125</td><td>0.928</td><td>0.396</td><td>2.302</td><td>0.215</td><td>1.487</td><td>0.310</td></tr><tr><td>8</td><td>0.575</td><td>3.516</td><td>0.228</td><td>3.496</td><td>0.227</td><td>0.301</td><td>0.819</td><td>0.304</td><td>3.096</td><td>0.172</td><td>1.803</td><td>0.309</td></tr><tr><td>12</td><td>0.945</td><td>4.889</td><td>0.166</td><td>4.735</td><td>0.190</td><td>0.532</td><td>0.712</td><td>0.233</td><td>3.319</td><td>0.173</td><td>1.147</td><td>0.276</td></tr><tr><td>16</td><td>1.273</td><td>4.919</td><td>0.216</td><td>4.901</td><td>0.199</td><td>0.694</td><td>0.574</td><td>0.142</td><td>5.126</td><td>0.109</td><td>3.096</td><td>0.241</td></tr><tr><td rowspan="5">Swiss Franc</td><td>1</td><td>0.074</td><td>2.681</td><td>0.210</td><td>2.073</td><td>*0.166</td><td>0.051</td><td>0.997</td><td>0.642</td><td>0.066</td><td>0.704</td><td>0.064</td><td>0.693</td></tr><tr><td>4</td><td>0.285</td><td>3.248</td><td>0.181</td><td>3.196</td><td>*0.131</td><td>0.180</td><td>0.981</td><td>0.596</td><td>0.218</td><td>0.676</td><td>0.162</td><td>0.686</td></tr><tr><td>8</td><td>0.568</td><td>4.770</td><td>0.095</td><td>4.696</td><td>0.081</td><td>0.336</td><td>0.917</td><td>0.458</td><td>0.703</td><td>0.621</td><td>0.560</td><td>0.635</td></tr><tr><td>12</td><td>0.837</td><td>8.013</td><td>0.032</td><td>8.013</td><td>0.023</td><td>0.538</td><td>0.738</td><td>0.214</td><td>2.933</td><td>0.203</td><td>0.938</td><td>0.624</td></tr><tr><td>16</td><td>1.086</td><td>17.41</td><td>0.006</td><td>12.66</td><td>0.010</td><td>0.771</td><td>0.411</td><td>0.026</td><td>9.650</td><td>#0.019</td><td>1.996</td><td>0.411</td></tr><tr><td></td><td></td><td></td><td></td><td>p1</td><td></td><td>p2</td><td></td><td>p3</td><td></td><td>p4</td><td></td><td>σ2</td><td></td></tr><tr><td>Canadian Dollar</td><td></td><td></td><td></td><td>1.227</td><td></td><td>0.028</td><td></td><td>-0.045</td><td></td><td>-0.233</td><td></td><td>0.011</td><td></td></tr><tr><td>German Mark</td><td></td><td></td><td></td><td>1.253</td><td></td><td>-0.305</td><td></td><td></td><td></td><td></td><td></td><td>0.016</td><td></td></tr><tr><td>Japanese Yen</td><td></td><td></td><td></td><td>1.267</td><td></td><td>-0.062</td><td></td><td>-0.204</td><td></td><td></td><td></td><td>0.013</td><td></td></tr><tr><td>Swiss Franc</td><td></td><td></td><td></td><td>1.916</td><td></td><td>-1.154</td><td></td><td>0.236</td><td></td><td></td><td></td><td>0.014</td><td></td></tr></table>
Data were kindly supplied by Nelson Mark (originally taken from the OECD Main Economic Indicators). For detailed descriptions of the statistics, see the notes to table 1.
* indicates p-values that are no longer significant at a 90\% level, but were under the null of cointegration.
indicates the reverse.
The table presents least-squares estimates of equation (2) over horizons of  $k = 1, 4, 8, 12,$  and 16 quarters and Monte Carlo  $p$ -values, tabulated under the null hypothesis that  $s_i$  is a random walk, independent of  $f_i$ . The  $f_i$  are generated using the following AR models with lag order selected by the BIC criterion.
Source: Berkowitz-Giorgianni (2001)