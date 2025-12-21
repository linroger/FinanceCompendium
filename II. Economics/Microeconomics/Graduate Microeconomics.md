---
title: IDENTIFICATION IN MACROECONOMICS
primary_tags:
  - macroeconomic identification
  - monetary policy effects
  - natural experiments economics
  - structural vector autoregression
  - fiscal policy multipliers
secondary_tags:
  - instrumental variables macro
  - difference in differences
  - regression discontinuity design
  - vector autoregression models
  - macroeconomic policy evaluation
  - causal inference economics
  - time series econometrics
  - macroeconomic modeling techniques
cssclasses: academia
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
## Two challenges:
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
3. Policy response depends on state of the economy
Degree of slack in the economy
How open the economy is
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
## In other cases:
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
•  Approach:
- Use cross-sectional responses as moments in estimation of structural models
- Use favored structural model to answer aggregate questions
Example: Fiscal stimulus …
- Barro-Redlick 11 use evidence from wars:
Government purchases multiplier of 0.6-0.7
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
### Examples:
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
\begin{array}{l} \Delta c_{t + 1} = \mu + x_{t} + \chi \sigma_{t} \eta_{t + 1}, \\ x_{t + 1} = \rho x_{t} + \sigma_{t} \epsilon_{t + 1}, \\ \sigma_{t + 1}^{2} = \sigma^{2} + \gamma (\sigma_{t}^{2} - \sigma^{2}) + \sigma_{\omega} \omega_{t + 1}, \\ \end{array}
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
\begin{array}{l} \Delta c_{t + 1} = \mu + x_{t} + \chi \sigma_{t} \eta_{t + 1}, \\ \chi_{t + 1} = \rho \chi_{t} + \sigma_{t} \epsilon_{t + 1}, \\ \sigma_{t + 1}^{2} = \sigma^{2} + \gamma (\sigma_{t}^{2} - \sigma^{2}) + \sigma_{\omega} \omega_{t + 1}, \\ \end{array}
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
\Delta d_{t + 1} = \mu + \phi x_{t} + \varphi_{d} \sigma_{t} u_{t}
$$
Leverage:  $\phi = 3$
Dividend volatility:  $\varphi_{d} = 4.5$
$$
\begin{array}{l} \Delta c_{t + 1} = \mu + x_{t} + \chi \sigma_{t} \eta_{t + 1}, \\ x_{t + 1} = \rho x_{t} + \sigma_{t} \epsilon_{t + 1}, \\ \sigma_{t + 1}^{2} = \sigma^{2} + \gamma (\sigma_{t}^{2} - \sigma^{2}) + \sigma_{\omega} \omega_{t + 1}, \\ \end{array}
$$
- Calibrate long-run risks parameters:
$$
\mu = 0. 0 0 1 5, \quad \rho = 0. 9 7 9, \quad \sigma = 0. 0 7 8, \quad \varphi_{e} = 0. 0 4 4
$$
No formal macro calibration targets
- Parameters largely viewed a free parameters
- Chosen largely to fit asset prices
$$
\begin{array}{l} {\Delta c_{t + 1}} = {\mu + x_{t} + \chi \sigma_{t} \eta_{t + 1},} \\ x_{t + 1} = \rho x_{t} + \sigma_{t} \epsilon_{t + 1}, \\ \sigma_{t + 1}^{2} = \sigma^{2} + \gamma (\sigma_{t}^{2} - \sigma^{2}) + \sigma_{\omega} \omega_{t + 1}, \\ \end{array}
$$
- Calibrate long-run risks parameters:
$$
\mu = 0. 0 0 1 5, \quad \rho = 0. 9 7 9, \quad \sigma = 0. 0 7 8, \quad \varphi_{e} = 0. 0 4 4
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
\log M_{t + 1} = \theta \log \beta - \frac{\theta}{\psi} \Delta c_{t + 1} + (\theta - 1) R_{c, t + 1}
$$
- Current marginal utility depends on news about future consumption growth (through  $R_{c,t+1}$ )
- Stochastic discount factor with Epstein-Zin-Weil preferences:
$$
\log M_{t + 1} = \theta \log \beta - \frac{\theta}{\psi} \Delta c_{t + 1} + (\theta - 1) R_{c, t + 1}
$$
- Current marginal utility depends on news about future consumption growth (through  $R_{c,t+1}$ )
- Decrease in future expected growth raise current marginal utility (If IES > 1 and CRRA > 1/IES)
- Stochastic discount factor with Epstein-Zin-Weil preferences:
$$
\log M_{t + 1} = \theta \log \beta - \frac{\theta}{\psi} \Delta c_{t + 1} + (\theta - 1) R_{c, t + 1}
$$
- Current marginal utility depends on news about future consumption growth (through  $R_{c,t+1}$ )
- Decrease in future expected growth raise current marginal utility (If IES > 1 and CRRA > 1/IES)
- Increase in future uncertainty raises current marginal utility (If CRRA > 1 and IES > 1)
- Stochastic discount factor with Epstein-Zin-Weil preferences:
$$
\log M_{t + 1} = \theta \log \beta - \frac{\theta}{\psi} \Delta c_{t + 1} + (\theta - 1) R_{c, t + 1}
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
$$ c_{i, t + 1} = \tilde {c}_{i, t + 1} + \sigma_{i, \nu} \nu_{i, t + 1} + I_{i, t + 1}^{d} \sigma_{i, \psi} \psi_{i, t + 1}^{d}
$$
$$
\Delta \tilde {G}_{i, t + 1} = \mu_{i} + x_{i, t} + \xi_{i} x_{W, t} + \chi_{i} \eta_{i, t + 1},
$$
$$ x_{i, t + 1} = \rho x_{i, t} + \epsilon_{i, t + 1},
$$
$$
\sigma_{i, t + 1}^{2} = \sigma_{i}^{2} + \gamma \left(\sigma_{i, t}^{2} - \sigma_{i}^{2}\right) + \omega_{i, t + 1},
$$
$$ x_{W, t + 1} = \rho_{W} x_{W, t} + \epsilon_{W, t + 1},
$$
$$
\sigma_{W, t + 1}^{2} = \sigma_{W}^{2} + \gamma \left(\sigma_{W, t}^{2} - \sigma_{W}^{2}\right) + \omega_{W, t + 1},
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
W_{t} = F_{L} \left(L_{t}, \cdot\right)
$$
- Ignores hiring and firing costs
- Views labor market as a spot market
Labor Demand:
$$
W_{t} = F_{L} \left(L_{t}, \cdot\right)
$$
- Ignores hiring and firing costs
- Views labor market as a spot market
Labor Supply:
Household's intratemporal labor-leisure choice
$$
\max  U \left(C_{t}, L_{t}\right)
$$
$$
\text{su bj ec t} \colon C_{t} = W_{t} L_{t}
$$
- First order condition:
$$
\frac{U_{L t}}{U_{C t}} = W_{t}
$$
- Ignores participation margin for simplicity
- Let's assume for simplicity that
$$
U (C_{t}, L_{t}) = U (C_{t}) - V (L_{t})
$$
- What properties should  $U$  and  $V$  have?
- Let's assume for simplicity that
$$
U \left(C_{t}, L_{t}\right) = U \left(C_{t}\right) - V \left(L_{t}\right)
$$
- What properties should  $U$  and  $V$  have?
U should be upward sloping and concave
V should be upward sloping and convex
- $V$  sometimes formulated in terms of leisure:  $V(1 - L_{t})$
Labor supply becomes
$$
\frac{V^{\prime} \left(L_{t}\right)}{U^{\prime} \left(C_{t}\right)} = W_{t}
$$
$$
\frac{V^{\prime} (L_{t})}{U^{\prime} (C_{t})} = W_{t}
$$
- How does an increase in the wage affect labor supply?
$$
\frac{V^{\prime} \left(L_{t}\right)}{U^{\prime} \left(C_{t}\right)} = W_{t}
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
U (C_{t}, L_{t}) = \left\{ \begin{array}{l l} \frac{(C_{t} v (L_{t}))^{1 - \sigma} - 1}{1 - \sigma} & \text{if } \sigma \neq 1 \\ \log (C_{t}) + \log v (L_{t}) & \text{if } \sigma = 1 \end{array} \right.
$$

Imply that income and substitution effects exactly cancel out in response to permanent increase in wage

Common choice for preferences:

$$
\log (C_{t}) - \psi \frac{L_{t}^{1 + 1 / \nu}}{1 + 1 / \nu}
$$
- Falls into balanced growth preference set with  $\nu(L_t) = \exp(-\psi \frac{L_t^{1 + 1/\nu}}{1 + 1/\nu})$
- Implied labor supply:
$$
\psi L_{t}^{1 / \nu} C_{t} = W_{t}
$$
- Suppose constant (gross) growth rates for:
- Consumption:  $g_{C}$
Labor:  $g_{L}$
Wages:  $g_{W}$
Labor supply curve  $\psi L_{t}^{1 / \nu}C_{t} = W_{t}$  implies  $g_{L}^{1 / \nu}g_{C} = g_{W}$
- Resource constraint  $W_{t}L_{t} = C_{t}$  implies  $g_{L}g_{W} = g_{C}$
- Solving this system yields:
$$ g_{C} = g_{W} \quad \text{an d} \quad g_{L} = 1
$$

MaCurdy (1981) assumed

$$
\frac{C_{t}^{1 - \sigma} - 1}{1 - \sigma} - \psi \frac{L_{t}^{1 + 1 / \nu}}{1 + 1 / \nu}
$$
- Consumption term generalization of  $\log C_t$
- When  $\sigma \neq 1$ , growth not balanced
Labor supply becomes
$$
\psi L_{t}^{1 / \nu} C_{t}^{\sigma} = W_{t}
$$

In growth rates we have:

$$ g_{L}^{1 / \nu} g_{C}^{\sigma} = g_{W} \quad \text{an d} \quad g_{L} g_{W} = g_{C}
$$
- Which implies:
$$ g_{L} = g_{W}^{\frac{\nu (1 - \sigma)}{1 + \nu \sigma}} \quad \text{an d} \quad g_{C} = g_{W}^{\frac{1 + \nu}{1 + \nu \sigma}}
$$

So  $g_{L} < 1$  (i.e., falling hours) if  $\sigma > 1$

$\sigma$  governs strength of the income effect

In other contexts,  $\sigma$  is:

Coefficient of relative risk aversion

- Reciprocal of elasticity of intertemporal substitution
- Generalized "balanced growth" preferences:
$$
U (C_{t}, L_{t}) = \left\{ \begin{array}{l l} \frac{\left(C_{t} v \left(L_{t} C_{t}^{\frac{\theta}{1 - \theta}}\right)\right)^{1 - \sigma} - 1}{1 - \sigma} & \text{if } \sigma \neq 1 \\ \log (C_{t}) + \log v \left(L_{t} C_{t}^{\frac{\theta}{1 - \theta}}\right) & \text{if } \sigma = 1 \end{array} \right.
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
\Delta (H N / P) = \Delta \ln H + \Delta \ln (N / L) + \Delta \ln (L / P_{A}) + \Delta \ln (P_{A} / P).
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
E \left\{\sum_{t = 0}^{\infty} \beta^{t} \left(\log c_{t} + \alpha \log \left(1 - h_{t}\right)\right) \right\}
$$
Household owns capital and rents to firms
$\bullet$  Law of motion for capital:
$$ k_{t + 1} = (1 - \delta) k_{t} + x_{t}
$$
- Representative firm produces using Cobb-Douglas technology:
$$ y_{t} = c_{t} + x_{t} + g_{t} \leq A_{t} k_{t}^{\theta} h_{t}^{1 - \theta}
$$
Household budget constraint:
$$
\left(1 + \tau_{c}\right) c_{t} + \left(1 + \tau_{x}\right) x_{t} = \left(1 - \tau_{h}\right) w_{t} h_{t} + \left(1 - \tau_{k}\right) \left(r_{t} - \delta\right) k_{t} + \delta k_{t} + T_{t}
$$
Labor supply:
$$
\frac{\alpha / (1 - h)}{1 / c} = (1 - \tau) w
$$ where
$$
(1 - \tau) = \left(1 - \frac{\tau_{h} + \tau_{c}}{1 + \tau_{c}}\right) = \frac{1 - \tau_{h}}{1 + \tau_{c}}
$$
Labor demand:
$$
(1 - \theta) \frac{y}{h} = w
$$
Combining labor supply and labor demand yields:
$$ h_{i t} = \frac{1 - \theta}{1 - \theta + \frac{c_{i t}}{y_{i t}} \frac{\alpha}{1 - \tau_{i t}}}
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
\frac{C_{t}^{1 - \sigma} - 1}{1 - \sigma} - \psi \frac{L_{t}^{1 + 1 / \nu}}{1 + 1 / \nu}
$$
No capital
Production function:
$$
Y_{t} = A_{t} L_{t}
$$
Resource constraint:
$$
Y_{t} = C_{t}
$$
Household budget constraint:
$$
\left(1 + \tau_{c}\right) C_{t} = \left(1 - \tau_{L}\right) W_{t} L_{t} + T_{t}
$$
Labor Supply:
$$
\psi L_{t}^{1 / \nu} C_{t}^{\sigma} = \frac{1 - \tau_{L}}{1 + \tau_{C}} W_{t}
$$
Labor Demand:
$$
W_{t} = A_{t} = \frac{Y_{t}}{L_{t}}
$$
Combining these yields:
$$
\psi L_{t}^{\sigma + 1 / \nu} = (1 - \tau) A^{1 - \sigma}
$$
- Taking logs and differences yields:
$$
\log L_{i t} - \log L_{j t} = \frac{\nu}{1 + \sigma \nu} (\log (1 - \tau_{i t}) - \log (1 - \tau_{j t}))
$$
- With balanced growth preferences  $\sigma = 1$ :
$$
\log L_{i t} - \log L_{j t} = \frac{\nu}{1 + \nu} (\log (1 - \tau_{i t}) - \log (1 - \tau_{j t}))
$$
- Two key assumptions regarding effect of taxes on labor supply:
1. Parameter  $\nu$
2. Absence of income effects
Labor supply in logs:
$$
\log L_{t} = \nu \log W_{t} + \nu \log (1 - \tau) - \nu \log C_{t} - \log \psi
$$
- From this we see that  $\nu$  is the "Frisch" elasticity of labor supply
- Frisch elasticity: elasticity of labor supply with respect to the wage holding marginal utility (i.e., consumption) constant
Prescott assumed:
$$
\log c_{t} + \alpha \log \left(1 - h_{t}\right)
$$
- What does this imply about Frisch elasticity?
- If  $V(L_{t}) = \alpha \log (1 - L_{t})$  then Frisch elasticity is
$$
\frac{1}{\nu} = \frac{V^{\prime \prime} (L) L}{V^{\prime} (L)}
$$
$$
\nu = \frac{1 - L}{L}
$$
- If we assume that steady state labor is  $1/4$  of available time (this is ballpark what Prescott assumed)
$$
\nu = \frac{3 / 4}{1 / 4} = 3
$$
$$
\log L_{i t} - \log L_{j t} = \frac{\nu}{\nu + 1} (\log (1 - \tau_{i t}) - \log (1 - \tau_{j t}))
$$
- With  $\nu = 3$ , we have that  $\nu / (\nu + 1) = 3/4$  and
$$
\frac{\nu}{\nu + 1} \left(\log \left(1 - \tau_{F R}\right) - \log \left(1 - \tau_{U S}\right)\right) = \frac{3}{4} \left(\log (1 - 0. 5 9) - \log (1 - 0. 4)\right) = - 0. 2 9
$$
- With  $\nu = 0.5$ , we have that  $\nu / (\nu + 1) = 1/3$  and
$$
\frac{\nu}{\nu + 1} \left(\log \left(1 - \tau_{F R}\right) - \log \left(1 - \tau_{U S}\right)\right) = \frac{1}{3} \left(\log (1 - 0. 5 9) - \log (1 - 0. 4)\right) = - 0. 1 3
$$
- With  $\nu = 0.1$ , we have that  $\nu / (\nu + 1) = 1 / 11$  and
$$
\frac{\nu}{\nu + 1} \left(\log \left(1 - \tau_{F R}\right) - \log \left(1 - \tau_{U S}\right)\right) = \frac{1}{1 1} \left(\log (1 - 0. 5 9) - \log (1 - 0. 4)\right) = - 0. 0 3
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
\nu_{M} = \frac{1 - \sigma S}{1 / \nu + \sigma S}
$$
Hicksian:
$$
\nu_{H} = \frac{1}{1 / \nu + \sigma \mathsf {S}}
$$
Frisch:
V
Where  $S$  is the labor income as a fraction of total income
See Keane (JEL 2011) for derivations
$$
\frac{1 - \sigma S}{1 / \nu + \sigma S} \leq \frac{1}{1 / \nu + \sigma S} \leq \nu
$$
$$
\nu_{M} \leq \nu_{H} \leq \nu
$$
- With quasi-linear preference (i.e., linear in consumption  $(\sigma = 0)$ ):
$$
\nu_{M} = \nu_{H} = \nu
$$
Common assumption in applied micro
- For long-run general equilibrium analysis, this assumption is suspect
- For  $\sigma = 1$  and  $S = 1$ ,  $\nu_{M} = 0$ . For  $\sigma > 1$  and  $S = 1$ ,  $\nu_{M} < 0$ .
- Consider change in a flat tax with revenue rebated back lump sum
We calculated this before:
$$
\begin{array}{l} \log L_{i t} - \log L_{j t} = \frac{\nu}{1 + \sigma \nu} \left(\log \left(1 - \tau_{i t}\right) - \log \left(1 - \tau_{j t}\right)\right) \\ = \frac{1}{1 / \nu + \sigma} (\log (1 - \tau_{i t}) - \log (1 - \tau_{j t})) \\ \end{array}
$$
- Relevant elasticity is the Hicksian elasticity (with  $S = 1$ )
The fact that revenue is rebated kills the income effect
- Change in a flat tax with revenue used for  $G_{t}$  that enter utility separately (e.g., military spending, infrastructure, or wasteful spending)
Labor Supply:
$$
\psi L_{t}^{1 / \nu} C_{t}^{\sigma} = (1 - \tau) W_{t}
$$
Labor Demand:
$$
W_{t} = A_{t}
$$
- Consumption:
$$
C_{t} = Y_{t} - \tau Y_{t} = (1 - \tau) A_{t} L_{t}
$$
Combining these yields:
$$
\psi L_{t}^{\sigma + 1 / \nu} = (1 - \tau)^{1 - \sigma} A^{1 - \sigma}
$$
$$
\psi L_{t}^{\sigma + 1 / \nu} = (1 - \tau)^{1 - \sigma} A^{1 - \sigma}
$$
- Taking log yields:
$$
\log \psi + \left(\sigma + \frac{1}{\nu}\right) \log L = (1 - \sigma) \log (1 - \tau) + (1 - \sigma) \log A
$$
- Taking differences yields:
$$
\log L_{t} - \log L_{s} = \left(\frac{1 - \sigma}{1 / \nu + \sigma}\right) \left(\log \left(1 - \tau_{t}\right) - \log \left(1 - \tau_{s}\right)\right)
$$
- Marshallian elasticity (with  $S = 1$ ) governs effects of this tax change
- Potentially much smaller than with rebate due to income effect
- With balanced growth preferences  $(\sigma = 1)$  effect is zero
- Arguably the relevant result for fighting a war
- Consider a temporary tax change in a dynamic setting
Take log of labor supply
$$
\log \psi + \frac{1}{\nu} \log L_{t} + \sigma \log C_{t} = \log (1 - \tau) + \log W_{t}
$$
Take differences:
$$
\Delta \log L_{t} = \nu \Delta \log (1 - \tau) + \nu \Delta \log W_{t} - \nu \Delta \sigma \log C_{t}
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
A (t) K (t)^{\alpha} L (t)^{1 - \alpha}
$$

Harrod Neutral:

$$
K (t)^{\alpha} [ \tilde {A} (t) L (t) ]^{1 - \alpha} \text{wh er e} \tilde {A} (t) = A (t)^{1 / (1 - \alpha)}
$$
- Solow Neutral:
$$
[ \check {A} (t) K (t) ]^{\alpha} L (t)^{1 - \alpha} \text{wh er e} \check {A} (t) = A (t)^{1 / \alpha}
$$

Cobb-Douglas:

$$
Y (t) = A (t) K (t)^{\alpha} L (t)^{1 - \alpha}
$$

$\alpha$  "weight" on capital (and capital share)

- Elasticity of substitution between capital and labor is 1
- Constant elasticity of substitution (CES):
$$
Y (t) = \left[ \alpha \left(A_{K} (t) K (t)\right)^{\frac{\sigma - 1}{\sigma}} + (1 - \alpha) \left(A_{L} (t) L (t)\right)^{\frac{\sigma - 1}{\sigma}} \right]^{\frac{\sigma}{\sigma - 1}}
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
Y = \left[ \int_{N - 1}^{N} y (z)^{\frac{\sigma - 1}{\sigma}} d z \right]^{\frac{\sigma}{\sigma - 1}}
$$

Each task either technologically automated or not:

$$ y (z) = \left\{ \begin{array}{l l} A^{L} \psi^{L} (z) L (z) + A^{K} \psi^{K} (z) K (z) & \text{if } z \in [ N - 1, I ] \\ A^{L} \psi^{L} (z) L (z) & \text{if } z \in (I, N ] \end{array} \right.
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
Y = \Pi (I, N) \left[ \Gamma (I, N) (A_{L} (t) L (t))^{\frac{\sigma - 1}{\sigma}} + (1 - \Gamma (I, N)) (A_{K} (t) K (t))^{\frac{\sigma - 1}{\sigma}} \right]^{\frac{\sigma}{\sigma - 1}}
$$

Labor content of production:

$$
\Gamma (I, N) = \frac{\int_{I}^{N} \psi^{L} (z)^{\sigma - 1} d z}{\int_{N - I}^{I} \psi^{K} (z)^{\sigma - 1} d z + \int_{I}^{N} \psi^{L} (z)^{\sigma - 1} d z}
$$

Total factor productivity:

$$
\Pi (I, N) = \left[ \int_{N - 1}^{I} \psi^{K} (z)^{\sigma - 1} d z + \int_{I}^{N} \psi^{L} (z)^{\sigma - 1} \right]^{\frac{1}{\sigma - 1}}
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
$$ f (\lambda x, \lambda y, z) = \lambda^{m} f (x, y, z)
$$
- $m < 1$ : decreasing returns to scale
- $m = 1$ : constant returns to scale
- $m > 1$ : increasing returns to scale
Euler's Theorem: If  $f$  is homogeneous of degree  $m$  in  $x$  and  $y$ :
$$ m f (x, y, z) = \frac{\partial}{\partial x} f (x, y, z) x + \frac{\partial}{\partial y} f (x, y, z) y
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

\frac{Y}{A L} = \frac{1}{A L} F (K, A L) = F \left(\frac{K}{A L}, 1\right)

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
\lim_{k \rightarrow 0} f^{\prime} (k) = \infty \quad \text{an d} \quad \lim_{k \rightarrow \infty} f^{\prime} (k) = 0
$$
# NEOCLASSICAL PRODUCTION FUNCTION

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/b03b722c5bcd536225d90d455b28bf5ed22d53aae0e4ffded0ed9e1b4618df19.jpg)

FIGURE 1.1 An example of a production function

Source: Romer (2019)

- If the production function is Cobb-Douglas, we have
$$ y = \frac{Y}{A L} = \frac{1}{A L} K^{\alpha} (A L)^{1 - \alpha} = \left(\frac{K}{A L}\right)^{\alpha} = k^{\alpha}.
$$

So, we have:

$$ y = k^{\alpha}
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
\frac{d \log X (t)}{d t} = \frac{d \log X (t)}{d X (t)} \frac{d X (t)}{d t} = \frac{\dot {X} (t)}{X (t)}
$$ where log denotes the natural log
$$

\frac{d \log L (t)}{d t} = \frac{\dot {L} (t)}{L (t)} = n

$$
$$

\log L (t) = \log L (0) + n t

$$
$$

L (t) = L (0) e^{n t}

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
$$ y (t) = \frac{Y (t)}{A (t) L (t)} \quad k (t) = \frac{K (t)}{A (t) L (t)}
$$

Using the chain rule we have that

$$
\begin{array}{l} \dot {k} (t) = \frac{\dot {K} (t)}{A (t) L (t)} - \frac{K (t)}{[ A (t) L (t) ]^{2}} [ \dot {A} (t) L (t) + A (t) \dot {L} (t) ] \\ = \frac{\dot {K} (t)}{A (t) L (t)} - \frac{K (t)}{A (t) L (t)} \frac{\dot {L} (t)}{L (t)} - \frac{K (t)}{A (t) L (t)} \frac{\dot {A} (t)}{A (t)} \\ \end{array}
$$

Using  $\dot{L} / L = n$ ,  $\dot{A} / A = g$ , and  $\dot{K} = sY - \delta K$  we have that

$$
\dot {k} (t) = \frac{s Y (t) - \delta K (t)}{A (t) L (t)} - n k (t) - g k (t)
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
\frac{\dot {k} (t)}{k (t)} = \frac{s f (k (t))}{k (t)} - (n + g + \delta)
$$
- Left-hand-side is growth rate of capital
- $(n + g + \delta)$  is constant as a function of  $k(t)$
While
$$
\lim_{k \rightarrow 0} \frac{s f (k (t))}{k (t)} = \infty \quad \lim_{k \rightarrow \infty} \frac{s f (k (t))}{k (t)} = 0
$$
$$
\frac{d}{d k} \frac{s f (k)}{k} = - s \frac{f (k) / k - f^{\prime} (k)}{k} <   0
$$

(numerator is average product of capital minus marginal product of capital)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/1166d71656721acceaeeb43d5a1f117512342b3ce15cd10e4d5cb2faf60e95c6.jpg)

Source: Barro and Sala-I-Martin (2004). Figure is for  $g = 0$ . Adding  $g > 0$  would just shift up horizontal line.

- Differentiate  $y(t) = f(k(t))$  with respect to  $t$
$$
\dot {y} (t) = f^{\prime} (k (t)) \dot {k} (t)
$$
- Divide through by  $y(t)$ :
$$
\frac{\dot {y} (t)}{y (t)} = \frac{f^{\prime} (k (t)) k (t)}{f (k (t))} \frac{\dot {k} (t)}{k (t)}
$$
- Let  $g_{x}$  denote the growth rate of  $x_{t}$  and  $\alpha_{K}(k(t)) = f'(k(t)) k(t) / f(k(t))$ .
$$
\mathbf {g}_{y} = \alpha_{K} (k (t)) \mathbf {g}_{k}
$$

$(\alpha_{K}(k(t))$  is the elasticity of output with respect to capital.)

Growth rate of output is proportional to growth rate of capital

- Countries that are below their steady state level of capital/output should grow faster than countries that are above their steady state.
- If countries share same fundamentals, Solow model predicts absolute convergence
- More generally, Solow model predicts conditional convergence
- Analyzed data for 16 industrialized countries for which long historical data were available
Estimated:
$$
\log \tilde {y}_{i, 1 9 7 9} - \log \tilde {y}_{i, 1 8 7 0} = a + b \log \tilde {y}_{i, 1 8 7 0} + \epsilon_{i}
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
$$ k^{*} = \left(\frac{s}{n + g + \delta}\right)^{1 / (1 - \alpha)}
$$
- But  $k = K / AL$  is not observable (A is not observable)
- Let's rewrite the steady state in terms of  $K / L$
$$
\left(\frac{K}{L}\right)^{*} = A \left(\frac{s}{n + g + \delta}\right)^{1 / (1 - \alpha)}
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
\left(\frac{K}{L}\right)^{*} = A \left(\frac{s}{n + g + \delta}\right)^{1 / (1 - \alpha)}
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
\dot {k} \simeq \left[ \left. \frac{\partial \dot {k} (k)}{\partial k} \right|_{k = k^{*}} \right] (k - k^{*})
$$
$(\dot{k}$  is zero at  $k^{*})$
- Let's denote  $\lambda = -\partial \dot{k}(k) / \partial k|_{k=k^*}$  which means we have
$$
\dot {k} (t) \simeq - \lambda (k (t) - k^{*})
$$
- Linear first-order differential equation:
$$
\dot {k} (t) \simeq - \lambda (k (t) - k^{*})
$$
Solution:
$$ k (t) - k^{*} \simeq e^{- \lambda t} [ k (0) - k^{*} ]
$$
So,  $\lambda$  is rate of convergence
Half-life:
$$
0. 5 = e^{- \lambda t}
$$
$$ t = - \log (0. 5) / \lambda \simeq 0. 6 9 / \lambda
$$
Using:
$$
\dot {k} (k) = s f (k) - (n + g + \delta) k
$$ we get that
$$
\begin{array}{l} \lambda = - \left[ \frac{\partial \dot {k} (k)}{\partial k} \right|_{k = k^{*}} \Bigg ] = - [ s f^{\prime} (k^{*}) - (n + g + \delta) ] \\ = (n + g + \delta) - \frac{(n + g + \delta) k^{*} f^{\prime} (k^{*})}{f (k^{*})} \\ = [ 1 - \alpha_{K} (k^{*}) ] (n + g + \delta) \\ \end{array}
$$
- Speed of convergence of output is the same as capital
- Solow model implies that speed of convergence is
$$
\lambda = [ 1 - \alpha_{K} (k^{*}) ] (n + g + \delta)
$$
Rough calibration:
- Technological growth:  $g = 0.02$
Population growth:  $n = 0.01$
Depreciation:  $\delta = 0.05$
Capital share:  $\alpha_{K}(k^{*}) = 1 / 3$
$$
\lambda = \frac{2}{3} (0. 0 1 + 0. 0 2 + 0. 0 5) = 0. 0 5 3
$$
This implies a half-life of 13 years
- Very fast convergence!!
- To measure speed of convergence in the data, must run convergence regressions in terms of annual growth rates
- Barro and Sala-I-Martin (1991, 1992) consider:
$$
\frac{1}{T} \log \left(\frac{y_{i , t}}{y_{i , t - T}}\right) = a - (1 - e^{- \beta T}) \frac{1}{T} \log y_{i, t - T} + o t h e r v a r i a b l e s
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
\lambda = [ 1 - \alpha_{K} (k^{*}) ] (n + g + \delta)
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
\frac{\partial F (K , A L)}{\partial K} = r (t)
$$ which implies
$$ f^{\prime} (k (t)) = r (t)
$$
Details
- First order condition for labor:
$$
\frac{\partial F (K , A L)}{\partial L} = W (t)
$$
- We can rewrite this as
$$ f (k (t)) - k (t) f^{\prime} (k (t)) = w (t)
$$ where  $w(t) = W(t) / A(t)$  (wage per effective unit of labor)
Details
One "representative" firm same as many small firms if
Common production function
- Constant returns to scale
Common factor prices
- Easy to derive for Cobb-Douglas case:
$$
Y = A K^{\alpha} L^{1 - \alpha}
$$
Maximizing behavior implies Details
$$
Y = A \left(\frac{\alpha}{1 - \alpha}\right)^{\alpha} \left(\frac{W}{r}\right)^{\alpha} L
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
U = \int_{t = 0}^{\infty} e^{- \rho t} u (C (t)) \frac{L (t)}{H} d t
$$ where
$$ u (C (t)) = \frac{C (t)^{1 - \theta}}{1 - \theta}
$$
$\rho$  is discount rate
- $u(\cdot)$  gives each member's utility
- $L\left( t\right) /H$  is the number of household members
- $1 / \theta$  is elasticity of intertemporal substitution
Household's intertemporal budget constraint:
Present value of consumption less than or equal to present value of income plus initial wealth
Mathematically:
$$
\int_{t = 0}^{\infty} e^{- R (t)} C (t) \frac{L (t)}{H} d t \leq \frac{K (0)}{H} + \int_{t = 0}^{\infty} e^{- R (t)} W (t) \frac{L (t)}{H} d t
$$
Discounting with time-varying interest rate:
$$
R (t) = \int_{\tau = 0}^{t} r (\tau) d \tau
$$
Why is this the budget constraint?
- This condition rules out Ponzi-schemes:
- Borrow today and consume
- Borrow more tomorrow to pay back principle and interest
- Do this forever
- Intertemporal budget constraint implies that
$$
\lim_{s \rightarrow \infty} e^{- R (s)} \frac{K (s)}{H} \geq 0
$$
(See Romer (2019, p. 54) for derivation)
- Ponzi schemes violate this condition
- Let's write household objective function in terms of consumption and labor per effective worker
$$
\begin{array}{l} \frac{C (t)^{1 - \theta}}{1 - \theta} = \frac{[ A (t) c (t) ]^{1 - \theta}}{1 - \theta} \\ = \frac{[ A (0) e^{g t} ]^{1 - \theta} c (t)^{1 - \theta}}{1 - \theta} \\ = A (0)^{1 - \theta} e^{(1 - \theta) g t} \frac{c (t)^{1 - \theta}}{1 - \theta} \\ \end{array}
$$
- Overall utility function becomes:
$$
\begin{array}{l} U = \int_{t = 0}^{\infty} e^{- \rho t} \frac{C (t)^{1 - \theta}}{1 - \theta} \frac{L (t)}{H} d t \\ = \int_{t = 0}^{\infty} e^{- \rho t} \left[ A (0)^{1 - \theta} e^{(1 - \theta) g t} \frac{c (t)^{1 - \theta}}{1 - \theta} \right] \frac{L (0) e^{n t}}{H} d t \\ = B \int_{t = 0}^{\infty} e^{- \beta t} \frac{c (t)^{1 - \theta}}{1 - \theta} d t \\ \end{array}
$$ where
$$
B = A (0)^{1 - \theta} \frac{L (0)}{H} \quad \beta = \rho - n - (1 - \theta) g
$$
A similar change of variables for the budget constraint yields:
$$
\int_{t = 0}^{\infty} e^{- R (t)} c (t) e^{(n + g) t} d t \leq k (0) + \int_{t = 0}^{\infty} e^{- R (t)} w (t) e^{(n + g) t} d t
$$
- Maximize:
$$
U = B \int_{t = 0}^{\infty} e^{- \beta t} \frac{c (t)^{1 - \theta}}{1 - \theta} d t
$$
- Subject to:
$$
\int_{t = 0}^{\infty} e^{- R (t)} c (t) e^{(n + g) t} d t \leq k (0) + \int_{t = 0}^{\infty} e^{- R (t)} w (t) e^{(n + g) t} d t
$$
Household's choice variable is the path for  $c(t)$
We form a Lagrangian:
$$
\begin{array}{l} \mathcal {L} = B \int_{t = 0}^{\infty} e^{- \beta t} \frac{c (t)^{1 - \theta}}{1 - \theta} d t \\ + \lambda \left[ k (0) + \int_{t = 0}^{\infty} e^{- R (t)} w (t) e^{(n + g) t} d t - \int_{t = 0}^{\infty} e^{- R (t)} c (t) e^{(n + g) t} d t \right] \\ \end{array}
$$
- Differentiate this with respect to  $c(t)$ :
$$
B e^{- \beta t} c (t)^{- \theta} = \lambda e^{- R (t)} e^{(n + g) t}
$$
$$
B e^{- \beta t} c (t)^{- \theta} = \lambda e^{- R (t)} e^{(n + g) t}
$$
- Let's take logs:
$$
\log B - \beta t - \theta \log c (t) = \log \lambda - \int_{\tau = 0}^{t} r (\tau) d \tau + (n + g) t
$$
- Differentiate both sides with respect to time
$$
- \beta - \theta \frac{\dot {c} (t)}{c (t)} = - r (t) + (n + g)
$$
- Rearrange and use definition of  $\beta$ :
$$
\frac{\dot {c} (t)}{c (t)} = \frac{r (t) - \rho - \theta g}{\theta}
$$
$$
\frac{\dot {c} (t)}{c (t)} = \frac{r (t) - \rho - \theta g}{\theta}
$$
- And for per capita consumption:
$$
\begin{array}{l} \frac{\dot {C} (t)}{C (t)} = \frac{\dot {A} (t)}{A (t)} + \frac{\dot {c} (t)}{c (t)} \\ = g + \frac{r (t) - \rho - \theta g}{\theta} \\ = \frac{r (t) - \rho}{\theta} \\ \end{array}
$$
- Consumption growth depends on  $r(t) - \rho$  and nothing else
$$
\frac{\dot {C} (t)}{C (t)} = \frac{r (t) - \rho}{\theta}
$$
- Consumption growth depends on  $r(t) - \rho$  and nothing else.
Why?
Why nothing else?
Why higher growth with higher  $r(t)$ ?
$$
\frac{\dot {C} (t)}{C (t)} = \frac{r (t) - \rho}{\theta}
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
\frac{\dot {c} (t)}{c (t)} = \frac{r (t) - \rho - \theta g}{\theta}
$$
- But in general equilibrium:
$$ r (t) = f^{\prime} (k (t))
$$
So we have that
$$
\frac{\dot {c} (t)}{c (t)} = \frac{f^{\prime} (k (t)) - \rho - \theta g}{\theta}
$$
- Two endogenous variables  $c\left( t\right) ,k\left( t\right)$
- Two dynamic equations:
$$
\frac{\dot {c} (t)}{c (t)} = \frac{f^{\prime} (k (t)) - \rho - \theta g}{\theta}
$$
$$
\dot {k} (t) = f (k (t)) - c (t) - (n + g) k (t)
$$
- Two boundary conditions:
- k(0) given (initial condition)
- Intertemporal budget constraint with equality (terminal condition)
- It is the fact that dynamic system has a terminal condition (rather than full set of initial conditions) that makes the system "forward looking".
$$
\frac{\dot {c} (t)}{c (t)} = \frac{f^{\prime} (k (t)) - \rho - \theta g}{\theta}
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
\dot {k} (t) = \underbrace {f (k (t)) - c (t)}_{\text{In ve st me nt}} - \underbrace {(n + g) k (t)}_{\text{br ea ke ve ni nv es tm en t}}
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
\lim_{s \rightarrow \infty} e^{- R (s)} e^{(n + g) s} k (s) = \infty
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
\frac{\dot {c} (t)}{c (t)} = \frac{f^{\prime} (k (t)) - \rho - \theta g}{\theta}
$$
$$
\dot {k} (t) = f (k (t)) - c (t) - (n + g) k (t)
$$
- To calculate steady state, we set  $\dot{c}(t) = 0$  and  $\dot{k}(t) = 0$ :
$$ f^{\prime} \left(k^{*}\right) = \rho + \theta g
$$
$$ c^{*} = f \left(k^{*}\right) - (n + g) k^{*}
$$
- Level of steady state is a function of  $\rho, \theta$ , and production function
- Consider an unanticipated fall in the discount rate  $\rho$
- Conceptually similar to an increase in the savings rate in the Solow model
- Long-run effect depends on shift in steady state:
$$ f^{\prime} \left(k^{*}\right) = \rho + \theta g
$$
$$ c^{*} = f \left(k^{*}\right) - (n + g) k^{*}
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
\begin{array}{l} \dot {k} (t) = \frac{d}{d t} \left(\frac{K (t)}{A (t) L (t)}\right) = \frac{\dot {K} (t)}{A (t) L (t)} - \frac{K (t)}{\left[ A (t) L (t) \right]^{2}} [ A (t) \dot {L} (t) + \dot {A} (t) L (t) ] \\ \dot {k} (t) = \frac{\dot {K} (t)}{A (t) L (t)} - (n + g) k \\ \end{array}
$$
Dividing capital accumulation equation by  $A(t)L(t)$  we get
$$
\frac{\dot {K} (t)}{A (t) L (t)} = \frac{Y (t)}{A (t) L (t)} - \frac{C (t) L (t)}{A (t) L (t)}
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
$$ f^{\prime} (k) = F_{1} (k, 1) = F_{1} (K / A L, 1) = F_{1} (K, A L) = F_{K} (K, A L)
$$
Back
- Notice that
$$
\frac{\partial F (K , A L)}{\partial L} = A \frac{\partial F (K , A L)}{\partial A L} = A F_{2} (K, A L)
$$
- Since  $F(K, AL)$  is homogeneous of degree 1 we have that
$$
F (K, A L) = F_{1} (K, A L) K + F_{2} (K, A L) A L
$$
$$
A L F (k, 1) = F_{1} (K, A L) K + F_{2} (K, A L) A L
$$
$$ f (k) = f^{\prime} (k) k + F_{2} (K, A L)
$$
$$
F_{2} (K, A L) = f (k) - f^{\prime} (k) k
$$
Back
Labor demand:
$$
W = (1 - \alpha) A K^{\alpha} L^{- \alpha}
$$
Capital demand:
$$ r = \alpha A K^{\alpha - 1} L^{1 - \alpha}
$$
- Divide one by the other
$$
\frac{K}{L} = \frac{\alpha}{1 - \alpha} \frac{W}{r}
$$
- Plug this into production function for K:
$$
Y = A K^{\alpha} L^{1 - \alpha} = A \left(\frac{\alpha}{1 - \alpha}\right)^{\alpha} \left(\frac{W}{r}\right)^{\alpha} L^{\alpha} L^{1 - \alpha}
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
\dot {Y} (t) = \frac{\partial Y (t)}{\partial K (t)} \dot {K} (t) + \frac{\partial Y (t)}{\partial L (t)} \dot {L} (t) + \frac{\partial Y (t)}{\partial A (t)} \dot {A} (t)
$$ where  $\frac{\partial Y}{\partial L}$  denotes  $\frac{\partial Y}{\partial AL} A$  and  $\frac{\partial Y}{\partial A} A$  denotes  $\frac{\partial Y}{\partial AL} L$
- Divide both sides by  $Y(t)$ :
$$
\frac{\dot {Y} (t)}{Y (t)} = \frac{K (t)}{Y (t)} \frac{\partial Y (t)}{\partial K (t)} \frac{\dot {K} (t)}{K (t)} + \frac{L (t)}{Y (t)} \frac{\partial Y (t)}{\partial L (t)} \frac{\dot {L} (t)}{L (t)} + \frac{A (t)}{Y (t)} \frac{\partial Y (t)}{\partial A (t)} \frac{\dot {A} (t)}{A (t)}
$$
$$
\frac{\dot {Y} (t)}{Y (t)} = \frac{K (t)}{Y (t)} \frac{\partial Y (t)}{\partial K (t)} \frac{\dot {K} (t)}{K (t)} + \frac{L (t)}{Y (t)} \frac{\partial Y (t)}{\partial L (t)} \frac{\dot {L} (t)}{L (t)} + \frac{A (t)}{Y (t)} \frac{\partial Y (t)}{\partial A (t)} \frac{\dot {A} (t)}{A (t)}
$$
- Elasticity of output with respect to capital and labor
$$
\alpha_{K} (t) = \frac{K (t)}{Y (t)} \frac{\partial Y (t)}{\partial K (t)} \quad \alpha_{L} (t) = \frac{L (t)}{Y (t)} \frac{\partial Y (t)}{\partial L (t)}
$$
We get:
$$
\frac{\dot {Y} (t)}{Y (t)} = \alpha_{K} (t) \frac{\dot {K} (t)}{K (t)} + \alpha_{L} (t) \frac{\dot {L} (t)}{L (t)} + R (t)
$$ where
$$
R (t) = \frac{A (t)}{Y (t)} \frac{\partial Y (t)}{\partial A (t)} \frac{\dot {A} (t)}{A (t)}
$$ is referred to as the Solow Residual
$$
\frac{\dot {Y} (t)}{Y (t)} = \alpha_{K} (t) \frac{\dot {K} (t)}{K (t)} + \alpha_{L} (t) \frac{\dot {L} (t)}{L (t)} + R (t)
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
\alpha_{K} (t) = \frac{K (t)}{Y (t)} \frac{\partial Y (t)}{\partial K (t)} \quad \alpha_{L} (t) = \frac{L (t)}{Y (t)} \frac{\partial Y (t)}{\partial L (t)}
$$
- If labor and capital earn their marginal product:
$$ r (t) = \frac{\partial Y (t)}{\partial K (t)} \quad w (t) = \frac{\partial Y (t)}{\partial L (t)}
$$
- In this case output elasticities become factor shares:
$$
\alpha_{K} (t) = \frac{r (t) K (t)}{Y (t)} = s_{K} (t) \quad \alpha_{L} (t) = \frac{w (t) L (t)}{Y (t)} = s_{L} (t)
$$
Data on factor shares usually used to estimate  $\alpha_{K}(t)$  and  $\alpha_{L}(t)$ .
- But this is only valid under idealized assumptions (i.e., perfect competition)
$$
\frac{\dot {Y} (t)}{Y (t)} = \alpha_{K} (t) \frac{\dot {K} (t)}{K (t)} + \alpha_{L} (t) \frac{\dot {L} (t)}{L (t)} + R (t)
$$
- Alternative approach: Estimate this equation using data on  $\dot{Y}(t) / Y(t)$ ,  $\dot{K}(t) / K(t)$ ,  $\dot{L}(t) / L(t)$
- Recover  $\alpha_{K}$  and  $\alpha_{L}$  as parameters
- Recover  $R(t)$  as a residual
Why not do this instead?
$$
\frac{\dot {Y} (t)}{Y (t)} = \alpha_{K} (t) \frac{\dot {K} (t)}{K (t)} + \alpha_{L} (t) \frac{\dot {L} (t)}{L (t)} + R (t)
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
\frac{\dot {Y}}{Y} = s_{K} \left(\frac{\dot {r}}{r} + \frac{\dot {K}}{K}\right) + s_{L} \left(\frac{\dot {w}}{w} + \frac{\dot {L}}{L}\right)
$$
Rearrange
$$
\frac{\dot {Y}}{Y} - s_{K} \frac{\dot {K}}{K} - s_{L} \frac{\dot {L}}{L} = s_{K} \frac{\dot {r}}{r} + s_{L} \frac{\dot {w}}{w}
$$
LHS: "primal" measure of Solow residual (what we had before)
RHS: "dual" measure of Solow residual
$$
\frac{\dot {Y}}{Y} - s_{K} \frac{\dot {K}}{K} - s_{L} \frac{\dot {L}}{L} = s_{K} \frac{\dot {r}}{r} + s_{L} \frac{\dot {w}}{w}
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
Y = A K^{\alpha} \left(L e^{x t}\right)^{1 - \alpha}
$$
Suppose  $A$  and  $L$  are constant
- $x$  is labor-augmented growth in technology
- Take logarithms and differentiate with respect to time:
$$
\frac{\dot {Y}}{Y} = \alpha \frac{\dot {K}}{K} + (1 - \alpha) x
$$
$$
\frac{\dot {Y}}{Y} = \alpha \frac{\dot {K}}{K} + (1 - \alpha) x
$$
- In Solow and Ramsey models: capital-output ratio will be constant along a balanced growth path
$$
\frac{\dot {Y}}{Y} = \frac{\dot {K}}{K} = x
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
Y_{t} = A_{t} K_{t}^{\alpha} H_{t}^{1 - \alpha}
$$
Here  $H_{t}$  denotes human capital
- Divide both sides by  $Y_{t}^{\alpha}$  and raise to power  $1 / (1 - \alpha)$ :
$$
Y_{t} = \left(\frac{K_{t}}{Y_{t}}\right)^{\frac{\alpha}{1 - \alpha}} H_{t} Z_{t}
$$
$$
\text{wh er e} Z_{t} = A_{t}^{\frac{1}{1 - \alpha}}
$$
Divide through by  $L_{t}$
$$
\frac{Y_{t}}{L_{t}} = \left(\frac{K_{t}}{Y_{t}}\right)^{\frac{\alpha}{1 - \alpha}} \frac{H_{t}}{L_{t}} Z_{t}
$$
$$
\frac{Y_{t}}{L_{t}} = \left(\frac{K_{t}}{Y_{t}}\right)^{\frac{\alpha}{1 - \alpha}} \frac{H_{t}}{L_{t}} Z_{t}
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
A_{t + \tau} = A_{t} (1 + g)^{\tau}
$$
In fact, growth is linear:
$$
A_{t + \tau} = A_{t} + b \tau
$$
Data:
U.S. TFP 1947-2019 from Fernald (2012)
TFP in 23 countries 1890-2019 from Bergeaud, Cette, Lecat (2016)
Exponential growth:
$$
\begin{array}{l} A_{t + \tau} = A_{t} (1 + g)^{\tau} = > \log A_{t + \tau} = \log A_{t} + \tau \log (1 + g) \\ = > \log A_{t + \tau} \approx \log A_{t} + g \tau \\ \end{array}
$$
- Linear growth
$$
A_{t + \tau} = A_{t} + b \tau
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
Y_{i} = K_{i}^{\alpha} \left(A_{i} H_{i}\right)^{1 - \alpha}
$$ where
$$
H_{i} = e^{\phi (E_{i})} L_{i}
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
K_{i t} = I_{i t} + (1 - \delta) K_{i, t - 1}
$$
With an initial capital stock of:
$$
K_{i, 0} = \frac{I_{i , 0}}{g + \delta}
$$ where
$g$  is the average growth rate of investment before 1970
$\delta = 0.06$
- More recent versions of PWT include capital series
(which is constructed "more carefully" using perpetual inventory method)
$$
\boldsymbol {H}_{i} = \boldsymbol {e}^{\phi (E_{i})}
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
\log \left(\frac{Y_{i}}{L_{i}}\right) = \frac{\alpha}{1 - \alpha} \log \left(\frac{K_{i}}{Y_{i}}\right) + \log \left(\frac{H_{i}}{L_{i}}\right) + \log A_{i}
$$
$\bullet$  Caselli (2005):
$$
\log \left(\frac{Y_{i}}{L_{i}}\right) = \alpha \log \left(\frac{K_{i}}{L_{i}}\right) + (1 - \alpha) \log \left(\frac{H_{i}}{L_{i}}\right) + \log A_{i}
$$
$$
\log \left(\frac{Y_{i}}{L_{i}}\right) = \log \left(\frac{Y_{i}}{L_{i}}\right)_{K H} + \log A_{i}
$$
$$
\log y_{i} = \log y_{i, K H} + \log A_{i}
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
0. 8 7^{\alpha / (1 - \alpha)} = 0. 8 7^{1 / 2} = 0. 9 3 1
$$
Schooling: 8.8 year in Mexico vs. 13.2 years in U.S.
Difference: 4.6 years
$0.068\times 4.6 = 0.32$
0.76 = 1/1.32
TFP is  $0.338 / (0.931 \times 0.760) = 0.477$  of U.S. level
- Inputs explain a factor of
$$
\frac{1}{0 . 9 3 1} \times \frac{1}{0 . 7 6 0} = 1. 4
$$
- TFP explains the rest
$$
\frac{1}{0 . 3 3 8} \times \frac{1}{1 . 4} = 2. 1
$$
- Fraction explained by TFP:
$$
\frac{2 . 1}{1 . 4 + 2 . 1} = 0. 5 9 7
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
\operatorname{va r} \left[ \log y_{i} \right] = \operatorname{va r} \left[ \log y_{i, K H} \right] + \operatorname{va r} \left[ \log A_{i} \right] + 2 \operatorname{co v} \left[ \log y_{i, K H}, \log A_{i} \right]
$$
- If  $A_{i}$  the same in all countries:
$$
\operatorname{va r} \left[ \log A_{i} \right] + 2 \operatorname{co v} \left[ \log y_{i, K H}, \log A_{i} \right] = 0
$$
Motivates using
$$
\operatorname{su cc es s}_{1} = \frac{\operatorname{va r} [ \log y_{i , K H} ]}{\operatorname{va r} [ \log y_{i} ]}
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
$$ y = A k^{\alpha}
$$ where  $y$  is output per person and  $k$  is capital per person
- Marginal product of capital is:
$$ r = \alpha A k^{\alpha - 1}
$$
- Using production function to plug in for  $k$
$$ r = \alpha A^{1 / \alpha} y^{(\alpha - 1) / \alpha}
$$
- Taking a ratio of this equation for India vs. US:
$$
\frac{r^{\text{In di a}}}{r^{\text{US}}} = \left(\frac{y^{\text{In di a}}}{y^{\text{US}}}\right)^{(\alpha - 1) / \alpha}
$$
Suppose
$$
\alpha = 0. 4 \quad \text{an d} \quad \frac{y^{\text{In di a}}}{y^{\text{US}}} = \frac{1}{1 5}
$$
- Then we have that
$$
\frac{r^{\text{In di a}}}{r^{\text{US}}} = 1 5^{1. 5} = 5 8
$$
- Marginal product of capital in India is 58 times higher than in the U.S.
- If the MPK is 58 times higher in India than U.S., why doesn't more capital flow to poor countries?
- Maybe because MPK is not 58 times higher in India (and since Lucas' paper was published, India has grown a lot)
- Calculation assumes India and U.S. have same productivity
- Development accounting suggests this is not the case
- Let's combine
$$ r = \alpha A k^{\alpha - 1} \quad \text{an d} \quad y = A k^{\alpha}
$$ to eliminate  $A$ :
$$ r = \alpha \left(\frac{k}{y}\right)^{- 1}
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
\mathsf {M P K} = \alpha \frac{\mathsf {Y}}{K}
$$ where  $\alpha$  is capital share of income
- Usual way to measure capital share of income:
One minus labor share of income
- But that includes income to non-reproducible capital (land and natural resources)
- While  $K$  is only reproducible capital (constructed from perpetual inventory method)
So naive:
$$
\mathsf {M P K} = \alpha \frac{\mathsf {Y}}{K}
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
\frac{P_{y} (t) M P K (t) + P_{k} (t + 1) (1 - \delta)}{P_{k} (t)}
$$
- Ignoring capital gains, frictionless international capital markets imply
$$
\frac{P_{y} M P K}{P_{k}} = R^{*} - (1 - \delta)
$$
This is what should be equal across countries
- Earlier estimate:
$$
M P K = \alpha \frac{Y}{K}
$$
- Adjusted estimate:
$$
\frac{P_{y} M P K}{P_{k}} = \alpha \frac{P_{y} Y}{P_{k} K}
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
$$ y_{c} = \left(\frac{K_{c}}{Y_{c}}\right)^{\frac{\alpha}{1 - \alpha}} A_{c} h_{c}
$$
Country component:
$$ z_{c} = \left(\frac{K_{c}}{Y_{c}}\right)^{\frac{\alpha}{1 - \alpha}} A_{c}
$$
Take logs:
$$
\log y_{c} = \log z_{c} + \log h_{c}
$$
- Subtract one country from another and divide by income difference:
$$
1 = \frac{\log z_{c} - \log z_{c^{\prime}}}{\log y_{c} - \log y_{c^{\prime}}} + \frac{\log h_{c} - \log h_{c^{\prime}}}{\log y_{c} - \log y_{c^{\prime}}} = \text{sh ar e}_{\text{co un tr y}} + \text{sh ar e}_{\text{hu ma nc ap it al}}
$$
- Two problems with evidence on migrants:
Migrants are highly selected
Human capital transfers imperfectly across countries
Data on preand post-migration wages of migrants addresses selection
- Trickier to address transferability of human capital (e.g., accreditation, licensure, discrimination)
- Suppose labor is homogeneous and labor markets are competitive
- Then firms solve
$$
\max_{H_{c}} K_{c}^{\alpha} \left(A_{c} H_{c}\right)^{1 - \alpha} - \omega_{c} H_{c}
$$ where  $\omega_{c}$  is the wage per unit of human capital
- This yields  $\omega_{c} = (1 - \alpha)z_{c}$  and
$$
\log w_{i, c} = \log [ (1 - \alpha) z_{c} ] + \log h_{i}
$$ where  $w_{i,c}$  is the wage of a worker with human capital level  $h_i$
- For migrants (assuming  $h_i$  is transferable) we have
$$
\frac{\log w_{i , U S} - \log w_{i , c}}{\log y_{U S} - \log y_{c}} = \frac{\log z_{U S} - \log z_{c}}{\log y_{U S} - \log y_{c}} = \text{sh ar e}_{\text{co un tr y}}
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
Y_{a} = A_{a} L_{a}^{\theta} K_{a}^{1 - \theta} \quad Y_{n} = A_{n} L_{n}^{\theta} K_{n}^{1 - \theta}
$$
- Price of non-ag good is numeraire
Price of ag good is  $p_a$
(See Gollin, Lagakos, and Waugh (2014) for more details)
Labor mobility implies common wage  $w$
Labor demand in each sector:
$$ p_{a} \theta \frac{Y_{a}}{L_{a}} = w \quad \theta \frac{Y_{n}}{L_{n}} = w
$$
Combining these implies
$$
\frac{p_{a} Y_{a} / L_{a}}{Y_{n} / L_{n}} = \frac{V A_{a} / L_{a}}{V A_{n} / L_{n}} = 1
$$
- Value added per worker should be the same in both sectors
$$
\frac{V A_{a}}{L_{a}} = \frac{V A_{n}}{L_{n}}
$$
True whether growth bottleneck is low  $A_{a}$  or low  $A_{n}$
# AGRICULTURAL PRODUCTIVITY GAP
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/8e351b8b-cf07-4dae-a951-4158ebdb952a/0867bee0b5ced4c0fe3d51197dcb4e392d79c3deeb0d5bb238447c9073cba880.jpg)
Source: David Lagakos
- Employment share in agriculture is larger than value added share
Particularly so in poor countries
- Agricultural productivity gap:
$$
A P G = \frac{V A_{n} / L_{n}}{V A_{a} / L_{a}}
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
Y_{a} = X^{\alpha} \left(Z^{1 - \sigma} \left(\kappa A L_{a}\right)^{\sigma}\right)^{1 - \alpha}
$$
$Z$  is land (fixed),  $X$  is intermediate inputs,  $\kappa$  relative prod. of agriculture
Production function in non-agriculture:
$$
Y_{n} = A L_{n}
$$
- Price of non-agricultural goods is numeraire
- Price of intermediate inputs:  $\pi > 1$  (direct barriers)
Wages in non-agriculture:  $w_{n} = A$
Wages in agriculture:  $w_{a} = (1 - \theta)w_{n}$  (indirect barriers)
- Demand for intermediate goods:
$$
\frac{X}{Y_{a}} = \alpha \frac{p_{a}}{\pi}
$$
- Low  ${w}_{a}$  will push down  ${p}_{a}$  and therefore intermediate input use
Stone-Geary preferences for food:
$$
U = a \log (c_{a} - \bar {a}) + (1 - a) \log (c_{n})
$$
- Goods demand:
$$ c_{a} = \bar {a} + a p_{a}^{- 1} (y - p_{a} \bar {a})
$$
$$ c_{n} = (1 - a) (y - p_{a} \bar {a})
$$
# Features:
Two sectors
- Diminishing returns in agriculture due to land
- Intermediate input use in agriculture
- Subsistence demand for agricultural goods
- Direct  $(\pi > 1)$  and indirect  $(w_{a} = (1 - \theta)w_{n})$  barriers to input use in agriculture
Can these features explain cross-country differences in:
$$
L_{a} / N \quad Y_{a} / L_{a} \quad Y / N
$$
- Messy to solve analytically
- With  $a = 0$  (only subsistence demand for agriculture) less messy
Intermediate input use:
$$
\frac{X}{Y_{a}} = \left[ \left(\frac{1 - \theta}{\pi \kappa} \frac{\alpha}{(1 - \alpha) \sigma}\right)^{\sigma} \left(\frac{\bar {a}}{(Z / N)}\right)^{1 - \sigma} \right]^{(1 - \alpha) / (\alpha + \sigma (1 - \alpha))}
$$
- Fraction of labor in agriculture:
$$
\frac{L_{a}}{N} = \frac{1}{\kappa A} \left(\frac{\bar {a}}{(Z / n)^{1 - \sigma} (X / Y_{a})^{\alpha / (1 - \alpha)}}\right)^{1 / \sigma}
$$
Labor productivity in agriculture:
$$
\frac{Y_{a}}{L_{a}} = \kappa A \left(\frac{(Z / N)^{1 - \sigma} (X / Y_{a})^{\alpha / (1 - \alpha)}}{\bar {a}^{1 - \sigma}}\right)^{1 / \sigma}
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
$$ w_{y} = \left(1 - \alpha_{y}\right) \frac{Y_{y}}{L_{y}} \quad \rightarrow \quad \frac{Y_{y}}{L_{y}} = \frac{w_{y}}{1 - \alpha_{y}}
$$
- Use development accounting approach to back out TFP differences in agriculture (and non-agriculture)
Production function for agriculture:
$$
\frac{y_{a}}{h_{a}} (y) = F \left(\frac{k_{a}}{h_{a}} (y), 1, \frac{x_{a}}{h_{a}} (y), \frac{I}{h_{a}} (y), y\right)
$$
- Differentiate with respect to  $y$  (level of development):
$$
\frac{\partial \log F (\cdot ; y)}{\partial y} = \frac{\partial \log \left(y_{a} / h_{a}\right) (y)}{\partial y} - \epsilon_{F, k} (y) \frac{\partial \log \left(k_{a} / h_{a}\right) (y)}{\partial y} - \epsilon_{F, x} (y) \frac{\partial \log \left(x_{a} / h_{a}\right) (y)}{\partial y} - \epsilon_{F, l} \frac{\partial \log (l / h_{a}) (y)}{\partial y}
$$ where  $\epsilon_{F,k}(y)$  is the elasticity of output with respect to  $k$
- Use factor shares estimated above as measures of output elasticities
- They assume three types of non-agricultural production:
- Consumption goods
- Investment goods (capital goods)
Intermediate inputs
- They assume production has the same shape for these three (same isoquants) but allow for differing Hicks neutral productivity:
$$ y_{n} (y) = A_{n} (y) g \left(k_{n} (y), h_{n} (y)\right)
$$
$$ y_{k} (y) = A_{k} (y) A_{n} (y) g \left(k_{k} (y), h_{k} (y)\right)
$$
$$ y_{x} (y) = A_{x} (y) A_{n} (y) g \left(k_{x} (y), h_{x} (y)\right)
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
\log y_{i} = \mu + \alpha R_{i} + \mathbf {X}_{i}^{\prime} \gamma + \epsilon_{i}
$$
- First state regression:
$$
R_{i} = \zeta + \beta \log M_{i} + \mathbf {X}_{i}^{\prime} \delta + v_{i}
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
\log y_{i} = \mu + \lambda \log M_{i} + \mathbf {X}_{i}^{\prime} \gamma + \epsilon_{i}
$$
- First state regression:
$$
R_{i} = \zeta + \beta \log M_{i} + \mathbf {X}_{i}^{\prime} \delta + v_{i}
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
\log \left(\frac{\tau_{i j}}{Y_{i}}\right) = a_{0} + a_{1} \log D_{i j} + a_{2} \log S_{i} + a_{3} \log S_{j} + e_{i j}
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
\begin{array}{l} = a_{0} + a_{1} \ln D_{i j} + a_{2} \ln N_{i} + a_{3} \ln A_{i} \\ + a_{4} \ln N_{j} + a_{5} \ln A_{j} + a_{6} \left(L_{i} + L_{j}\right) \\ + a_{7} B_{i j} + a_{8} B_{i j} \ln D_{i j} + a_{9} B_{i j} \ln N_{i} \\ + a_{1 0} B_{i j} \ln A_{i} + a_{1 1} B_{i j} \ln N_{j} \\ + a_{1 2} B_{i j} \ln A_{j} + a_{1 3} B_{i j} \left(L_{i} + L_{j}\right) + e_{i j}, \\ \end{array}
$$ where  $N$  is population,  $A$  is area,  $L$  is a dummy for landlocked countries, and  $B$  is a dummy for a common border between two countries.
Source: Frankel and Romer (1999)
TABLE 1THE BILATERAL TRADE EQUATION
<table><tr><td></td><td>Variable</td><td>Interaction</td></tr><tr><td>Constant</td><td>-6.38(0.42)</td><td>5.10(1.78)</td></tr><tr><td>Ln distance</td><td>-0.85(0.04)</td><td>0.15(0.30)</td></tr><tr><td>Ln population (country i)</td><td>-0.24(0.03)</td><td>-0.29(0.18)</td></tr><tr><td>Ln area (country i)</td><td>-0.12(0.02)</td><td>-0.06(0.15)</td></tr><tr><td>Ln population (country j)</td><td>0.61(0.03)</td><td>-0.14(0.18)</td></tr><tr><td>Ln area (country j)</td><td>-0.19(0.02)</td><td>-0.07(0.15)</td></tr><tr><td>Landlocked</td><td>-0.36(0.08)</td><td>0.33(0.33)</td></tr><tr><td>Sample size</td><td></td><td>3220</td></tr><tr><td> R^2 </td><td></td><td>0.36</td></tr><tr><td>SE of regression</td><td></td><td>1.64</td></tr></table>
Notes: The dependent variable is  $\ln (\tau_{ij} / \mathrm{GDP}_i)$ . The first column reports the coefficient on the variable listed, and the second column reports the coefficient on the variable's interaction with the common-border dummy. Standard errors are in parentheses.
Source: Frankel and Romer (1999)
- Frankel and Romer aggregate this bilateral gravity relationship to the country level
- Let's rewrite gravity equation as
$$
\log \left(\frac{\tau_{i j}}{Y_{i}}\right) = \mathbf {a}^{\prime} \mathbf {X}_{i j} + \mathbf {e}_{i j}
$$
- Geographic component of overall trade for country  $i$ :
$$
\hat {T}_{i} = \sum_{j \neq i} e^{\hat {\mathbf {a}}^{\prime} \mathbf {X}_{i j}}
$$
- $\hat{T}_i$  is the instrument Frankel and Romer use
TABLE 2THE RELATION BETWEEN ACTUAL AND CONSTRUCTED OVERALL TRADE
<table><tr><td></td><td>(1)</td><td>(2)</td><td>(3)</td></tr><tr><td>Constant</td><td>46.41</td><td>218.58</td><td>166.97</td></tr><tr><td></td><td>(4.10)</td><td>(12.89)</td><td>(18.88)</td></tr><tr><td>Constructed trade share</td><td>0.99</td><td></td><td>0.45</td></tr><tr><td></td><td>(0.10)</td><td></td><td>(0.12)</td></tr><tr><td>Ln population</td><td></td><td>-6.36</td><td>-4.72</td></tr><tr><td></td><td></td><td>(2.09)</td><td>(2.06)</td></tr><tr><td>Ln area</td><td></td><td>-8.93</td><td>-6.45</td></tr><tr><td></td><td></td><td>(1.70)</td><td>(1.77)</td></tr><tr><td>Sample size</td><td>150</td><td>150</td><td>150</td></tr><tr><td>R2</td><td>0.38</td><td>0.48</td><td>0.52</td></tr><tr><td>SE of regression</td><td>36.33</td><td>33.49</td><td>32.19</td></tr></table>
Notes: The dependent variable is the actual trade share. Standard errors are in parentheses.
Source: Frankel and Romer (1999)
$$
\log Y_{i} = a + b T_{i} + c_{1} \log N_{i} + c_{2} \log A_{i} + u_{i}
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
\log y_{i} = \mu + \alpha \mathrm{IN S}_{i} + \beta \mathrm{IN T}_{i} + \gamma \mathrm{GE O}_{i} + \epsilon_{i}
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
$$ g_{i t} = \alpha_{z} \mathrm{PR E}_{z} + \beta_{z} \mathrm{PO ST}_{z} + v_{i} + v_{t} + \epsilon_{i t}
$$
- $z$  denotes particular leader death
- $\mathrm{PRE}_z$ : dummy for  $T$  years prior to death
- POST $_z$ : dummy for  $T$  years after death (they exclude year of death)
- $v_{i}$ ,  $v_{t}$ : country and year fixed effects
$\bullet$ $\epsilon_{it}$ : Other influences on growth
Wald test:
$$
J = \frac{1}{Z} \sum_{z = 1}^{Z} \frac{\widehat {\left(\text{PO ST -P RE}_{z}\right)^{2}}}{2 \hat {\sigma}_{\epsilon z}^{2} / T}
$$
- Compares change in growth pre and post leader death to usual variation in growth
Under null of no effect,  $Z \times J$  will be distributed  $\chi^2(Z)$
- POST-PRE $_z = \alpha_z - \beta_z$  from regression on previous page
- Rank test:
$$
K = \frac{\sum (y_{z} - 1 / 4)}{\sqrt{Z / 4 8}}
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
$$ g_{Y} = \frac{\dot {Y}_{t}}{Y_{t}} = s A - \delta
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
Y_{i} (t) = F \left(K_{i} (t), A_{i} (t) L_{i} (t)\right)
$$
- Two assumptions:
Strong learning-by-doing (investing):
Knowledge grows proportionally with firm's capital stock
Knowledge spillovers are perfect across firms
(all firms benefit from each firm's learning)
These assumptions imply:
$$
A_{i} (t) = B K (t)
$$
Combining prior two equations:
$$
Y_{i} (t) = F \left(K_{i} (t), B K (t) L_{i} (t)\right)
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
Y (t) = A (t)^{\sigma} K (t)^{\alpha} L (t)^{1 - \alpha}
$$
$$ y (t) = A (t)^{\sigma} k (t)^{\alpha}
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
L_{A} (t) = s L (t) \quad L_{Y} (t) = (1 - s) L (t)
$$
- Knowledge production function in Romer (1990):
$$
\dot {A} (t) = \theta L_{A} (t) A (t)
$$
- Knowledge production depends on two inputs:
Research effort:  $L_{A}(t)$  denotes labor devoted to research
- Existing knowledge:  $A\left( t\right)$
- Importantly, exponent on  $A(t)$  is one
$\bullet$  Implies that
$$ g_{A} (t) = \frac{\dot {A} (t)}{A (t)} = \theta L_{A} (t)
$$
- Suppose for simplicity that  $L_{A}(t) = L_{A}$  (i.e., a constant)
- Then growth rate of knowledge is constant
$$ g_{A} = \frac{\dot {A} (t)}{A (t)} = \theta L_{A}
$$
- Suppose for simplicity that goods production function is
$$
Y (t) = A (t)^{\sigma} L_{Y} \quad = > \quad y (t) = A (t)^{\sigma} (1 - s)
$$ where  $1 - s$  is (constant) share of pop. working on goods production,  $\sigma$  is importance of ideas for production (degree of increasing returns)
This implies
$$
\mathbf {g}_{y} = \sigma \mathbf {g}_{A} = \sigma \theta L_{A}
$$
- But why would knowledge production be linear in  $A(t)$  and  $L(t)$ ?
More generally:
$$
\dot {A} (t) = \theta L_{A} (t)^{\lambda} A (t)^{\phi}
$$
- Not necessarily constant returns to objects  $(\lambda = 1)$ :
- Twice as much research effort may not generate twice as much knowledge
- There may be congestion / duplication / diminishing returns
This would yield  $\lambda < 1$
We assume however that  $\lambda >0$
$$
\dot {A} (t) = \theta L_{A} (t)^{\lambda} A (t)^{\phi}
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
$$ y (t) = A (t)^{\sigma} (1 - s)
$$
- Taking logs and time derivatives yields
$$ g_{Y} (t) = \sigma g_{A} (t)
$$
- Suppose there is a balanced growth path with constant growth:
$$ g_{y} (t) = g_{y} \quad \text{an d} \quad g_{A} (t) = g_{A}
$$
- Then we have
$$ g_{y} = \sigma g_{A}
$$
Combining (2) and (3) and dividing by  $A(t)$ :
$$ g_{A} (t) = \theta s^{\lambda} L (t)^{\lambda} A (t)^{\phi - 1}
$$
- Taking logs and time derivatives yields
$$
0 = \lambda g_{L} + (\phi - 1) g_{A}
$$ where we use  $g_A(t) = g_A$  on BGP
Rearranging and using  $g_{L} = n$  we get
$$
\boldsymbol {g}_{y} = \sigma \boldsymbol {g}_{A} = \frac{\sigma \lambda}{1 - \phi} n
$$
$$
\boldsymbol {g}_{y} = \sigma \boldsymbol {g}_{A} = \frac{\sigma \lambda}{1 - \phi} n
$$
- Long-run growth proportional to population growth rate
- If  $L_A(t)$  were constant at  $L_A$  (which implies  $n = 0$ ):
$$
\frac{\dot {A} (t)}{A (t)} = \theta L_{A}^{\lambda} A (t)^{\phi - 1} = \frac{\theta L_{A}^{\lambda}}{A (t)^{1 - \phi}}
$$
- If  $1 - \phi > 0$ , or equivalently  $\phi < 1$ :
$$ g_{A} (t) = \frac{\dot {A} (t)}{A (t)} \rightarrow 0
$$
Growth can't keep up with the level and thus goes to zero
$$ g_{y} = \sigma g_{A} = \frac{\sigma \lambda}{1 - \phi} n
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
\dot {A} (t) = \theta L_{A} (t) A (t)
$$
- "Fully-endogenous" growth model
- Also true of Aghion-Howitt 92, Grossman-Helpman 91
3. Jones (1995)  $\phi < 1$ : Pop. growth linear differential eq.
$$
\dot {A} (t) = \theta L_{A} (t) A (t)^{\phi} \quad \dot {L} (t) = n L (t)
$$
" semi-endogenous" growth model
Growth of knowledge is generally (even outside BGP):
$$ g_{A} (t) = \theta s^{\lambda} L (t)^{\lambda} A (t)^{\phi - 1}
$$
- Taking logs and differentiating by time yields
$$
\frac{\dot {g}_{A} (t)}{g_{A} (t)} = \lambda n - (1 - \phi) g_{A} (t)
$$
- Multiplying through by  $g_{A}(t)$  yields
$$
\dot {g}_{A} (t) = \lambda n g_{A} (t) - (1 - \phi) g_{A} (t)^{2}
$$
$$ g_{A} (t) = \theta s^{\lambda} L (t)^{\lambda} A (t)^{\phi - 1} \tag {1}
$$
$$
\dot {g}_{A} (t) = \lambda n g_{A} (t) - (1 - \phi) g_{A} (t)^{2} \tag {2}
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
$$ g_{A} (t) = \frac{\dot {A} (t)}{A (t)} = \theta L_{A}^{\lambda} A (t)^{\phi - 1} = \frac{\theta s^{\lambda} L (t)^{\lambda}}{A (t)^{1 - \phi}}
$$
Models with  $\phi = 1$ : s affects long run growth rate
$$ g_{A} (t) = \frac{\dot {A} (t)}{A (t)} = \theta s^{\lambda} L (t)^{\lambda}
$$
Models with  $\phi < 1$ : s does not affect long run growth rate
$$
\mathbf {g}_{y} = \sigma \mathbf {g}_{A} = \frac{\sigma \lambda}{1 - \phi} n
$$
- Models with  $\phi = 1$  have "strong" scale effects
Growth rate is increasing in level of population:
$$ g_{A} (t) = \frac{\dot {A} (t)}{A (t)} = \theta s^{\lambda} L (t)^{\lambda}
$$
Models with  $\phi < 1$  have "weak" scale effects
Growth rate is increasing in growth rate of population:
$$ g_{y} = \sigma g_{A} = \frac{\sigma \lambda}{1 - \phi} n
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
$$ g_{A} (t) = \frac{\dot {A} (t)}{A (t)} = \theta s L (t)
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
\frac{\dot {A} (t)}{A (t)} = \alpha A (t)^{- \beta} S (t)
$$
- $S(t)$  denotes "scientists" (i.e., research effort in units of people)
- Notice that  $\beta = 1 - \phi$
- If  $g_A$  is constant:
$$
\beta = \frac{g_{S}}{g_{A}}
$$
- Define:
$$
\text{Re se ar ch Pr od uc ti vi ty} = \frac{\dot {A} (t) / A (t)}{S (t)}
$$
- Consider the "lab equipment" model of research
$$
\dot {A}_{t} = \alpha R_{t}
$$
- $R_{t}$  denotes research expenditures (labor and capital/equipment)
- Divide through by  $A_t$  and multiply-divide by  $w_t$  (wage):
$$
\frac{\dot {A}_{t}}{A_{t}} = \underbrace {\frac{\alpha W_{t}}{A_{t}}}_{\text{Re se ar ch Pr od .}} \times \underbrace {\frac{R_{t}}{w_{t}}}_{\text{Sc ie nt is ts}}
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
Y_{t} = K_{t}^{\alpha} \left(Z_{t} h_{t} L_{y t}\right)^{1 - \alpha}
$$
$h_t$  is human capital per person
Productivity:
$$
Z_{t} = A_{t} M_{t}
$$
$A_{t}$  is knowledge
- $M_{t}$  is misallocation
- Some manipulation:
$$ y_{t} = \left(\frac{K_{t}}{Y_{t}}\right)^{\alpha / (1 - \alpha)} A_{t} M_{t} h_{t} I_{t} (1 - s_{t})
$$
- Ideas Production function:
$$
\dot {A} (t) = \theta L_{A} (t)^{\lambda} A (t)^{\phi}
$$
$$
\frac{\dot {A} (t)}{A (t)} = \theta s (t)^{\lambda} L (t)^{\lambda} A (t)^{\phi - 1}
$$
- With constant growth of  $A(t)$ :
$$
0 = \lambda g_{s} + \lambda g_{L} - (1 - \phi) g_{A}
$$
$$ g_{A} = \frac{\lambda}{1 - \phi} \left(g_{s} + g_{L}\right)
$$
- Jones (2022) assumes  $\lambda/(1 - \phi) = \lambda/\beta = \gamma = 1/3$
(Results that follow are sensitive to this!)
$$
\begin{array}{l} \underbrace {d \log y_{t}}_{\text{GD Pp er pe rs on}} = \underbrace {\frac{\alpha}{1 - \alpha} d \log \frac{K_{t}}{Y_{t}}}_{\text{Ca pi ta l -O ut pu tr at io}} + \underbrace {d \log h_{t}}_{\text{Ed uc at io na la tt .}} + \underbrace {d \log \ell_{t}}_{\text{Em p -P op ra ti o}} + \underbrace {d \log (1 - s_{t})}_{\text{Go od si nt en si ty}} \\ + \underbrace {d \log M_{t} + d \log A_{t}}_{\text{TF Pg ro wt h}} \tag {15} \\ \end{array}
$$ where
$$
\text{TF P} \quad \text{gr ow th} \equiv \underbrace {d \log M_{t}}_{\text{Mi sa ll oc at io n}} + \underbrace {d \log A_{t}}_{\text{Id ea s}} = \underbrace {d \log M_{t}}_{\text{Mi sa ll oc at io n}} + \underbrace {\gamma d \log s_{t}}_{\text{Re se ar ch in te ns it y}} + \underbrace {\gamma d \log L_{t}}_{\text{LF gr ow th}} \tag {16}
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
L_{A} (t) = s L (t)
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
C = \left[ \int_{0}^{N} c_{i}^{\frac{\phi - 1}{\phi}} d i \right]^{\frac{\phi}{\phi - 1}}
$$
Household utility is then  $U(C, L, \ldots)$  where  $C$  is the index above
$\phi$  is the elasticity of substitution between the different  $c_{i}$
Suppose the price of the good  $i$  is  $p_i$
Household would like to maximize the amount of  $C$  it can purchase for a given amount of spending  $Z$
It therefore solves:
$$
\max_{c_{i}} \left[ \int_{0}^{N} c_{i}^{\frac{\phi - 1}{\phi}} d i \right]^{\frac{\phi}{\phi - 1}} \quad \text{su bj ec tt o} \quad \int_{0}^{N} p_{i} c_{i} d i = Z
$$
We can form a Lagrangian:
$$
L = \left[ \int_{0}^{N} c_{i}^{\frac{\phi - 1}{\phi}} d i \right]^{\frac{\phi}{\phi - 1}} - \lambda \left[ \int_{0}^{N} p_{i} c_{i} d i - Z \right]
$$
Differentiating with respect to  $c_{i}$  yields:
$$
\left(\frac{C}{c_{i}}\right)^{\frac{1}{\phi}} = \lambda p_{i}
$$
- This is true for each  $i$ . Divide the one for  $i$  by the one for  $i'$ :
$$
\left(\frac{c_{i}^{\prime}}{c_{i}}\right)^{\frac{1}{\phi}} = \frac{p_{i}}{p_{i}^{\prime}}
$$
Rearranging yields:
$$
\boldsymbol {c}_{i} = \boldsymbol {c}_{i}^{\prime} \left(\frac{\boldsymbol {p}_{i}}{\boldsymbol {p}_{i}^{\prime}}\right)^{- \phi}
$$
- Shows that price elasticity of demand is  $\phi$
- Let's define the ideal price index  $P$  as the minimum expenditure needed to purchase 1 unit of the consumption index
- Some additional algebra then yields see steps
$$
P = \left[ \int_{0}^{N} p_{i}^{1 - \phi} d i \right]^{\frac{1}{1 - \phi}}
$$
Using the fact that  $\lambda = 1 / P$  yields
$$ c_{i} = C \left(\frac{p_{i}}{P}\right)^{- \phi}
$$ which is just another way to express the demand curve for  $c_{i}$
Household preferences display "love of variety"
- Suppose the price of all the goods is equal to  $p$ .
- Price index is then
$$
P = \left[ \int_{0}^{N} p^{1 - \phi} d i \right]^{\frac{1}{1 - \phi}} = p \left[ \int_{0}^{N} 1 d i \right]^{\frac{1}{1 - \phi}} = p N^{- \frac{1}{\phi - 1}}
$$
- If  $\phi > 1$ ,  $P$  is falling in  $N$
Households get more  $C$  per unit spending as  $N$  increases
- Let's now return to the firms
- Suppose their marginal cost of production is  $\psi$
Firm profits are then given by  $\Pi_{i} = p_{i}c_{i} - \psi c_{i}$
Firms set prices to maximize profits given demand for their product
$$
\max_{p_{i}} C \left(\frac{p_{i}}{P}\right)^{- \phi} (p_{j} - \psi)
$$
Profit maximization yields
$$
\pmb {p}_{i} = \frac{\phi}{\phi - 1} \psi
$$
- Firm's set prices equal to a markup over marginal cost
- For markup to be finite,  $\phi$  must be larger than 1
- Tractable general equilibrium framework where firms have market power and can set prices
- Can also be applied to factor markets
Production function:
$$
Y = \left[ \int_{0}^{N} y_{i}^{\frac{\phi - 1}{\phi}} d i \right]^{\frac{\phi}{\phi - 1}}
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
U = \int_{0}^{\infty} \exp (- \rho t) \frac{C (t)^{1 - \theta}}{1 - \theta} d t
$$
As in Ramsey model, household optimization yields:
$$
\frac{\dot {C} (t)}{C (t)} = \frac{1}{\theta} (r (t) - \rho)
$$
- Final goods are produced in a perfectly competitive market with the production function
$$
Y (t) = \frac{1}{1 - \beta} L_{Y} (t)^{\beta} \int_{0}^{N (t)} x (i, t)^{1 - \beta} d i
$$
- Inputs to final goods production:
Labor:  $L_{Y}(t)$
- $N(t)$  distinct intermediate inputs:  $x(i,t)$
- Notice that final goods production is constant returns to scale in physical inputs
- Notice that production function can also be written
$$
Y (t) = \frac{1}{1 - \beta} L_{Y} (t)^{\beta} \mathbf {X} (t)^{1 - \beta}
$$ where
$$
\mathbf {X} (t) = \left[ \int_{0}^{N (t)} x (i, t)^{\frac{\phi - 1}{\phi}} d i \right]^{\frac{\phi}{\phi - 1}}
$$ and  $\phi = 1 / \beta$
- So, intermediate input part of production function takes Dixit-Stiglitz form
$$
Y (t) = \frac{1}{1 - \beta} L_{Y} (t)^{\beta} \int_{0}^{N (t)} x (i, t)^{1 - \beta} d i
$$
- Production is additively separable in different  $x(i, t)$ s
- Marginal product of each  $x(i, t)$  independent of the others
- New products don't make older products obsolete (strong contrast with "quality ladder model")
- Final goods firms maximize profits
$$
\Pi = \frac{1}{1 - \beta} L_{Y} (t)^{\beta} \int_{0}^{N (t)} x (i, t)^{1 - \beta} d i - \int_{0}^{N (t)} p (i, t) x (i, t) d i - w (t) L_{Y} (t)
$$ where  $p(i,t)$  is the price of intermediate input  $x(i,t)$
Intermediate input demand:
$$
L_{\mathcal {Y}} (t)^{\beta} x (i, t)^{- \beta} - p (i, t) = 0
$$ and rearranging:
$$ x (i, t) = p (i, t)^{- 1 / \beta} L_{Y} (t)
$$
Labor demand:
$$
\beta \frac{Y (t)}{L_{Y} (t)} = w (t)
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
\Pi (i, t) = p (i, t)^{- 1 / \beta} L_{\gamma} (t) [ p (i, t) - \psi ]
$$
Differentiating to find profit maximizing price:
$$
\left(- \frac{1}{\beta} + 1\right) p (i, t)^{- \frac{1}{\beta}} + \frac{1}{\beta} p (i, t)^{- \frac{1}{\beta} - 1} \psi = 0
$$
Rearranging yields
$$
\boldsymbol {p} (i, t) = \frac{1}{1 - \beta} \psi
$$
- Let's normalize  $\psi = (1 - \beta)$
- Implies that
$$ p (i, t) = 1
$$
This means that
$$ x (i, t) = p (i, t)^{- 1 / \beta} L_{Y} (t) = L_{Y} (t)
$$
- Final good output then becomes
$$
\begin{array}{l} Y (t) = \frac{1}{1 - \beta} L_{Y} (t)^{\beta} \int_{0}^{N (t)} x (i, t)^{1 - \beta} d i \\ = \frac{1}{1 - \beta} L_{Y} (t)^{\beta} \int_{0}^{N (t)} L_{Y} (t)^{1 - \beta} d i \\ = \frac{1}{1 - \beta} N (t) L_{Y} (t) \\ \end{array}
$$
$$
Y (t) = \frac{1}{1 - \beta} N (t) L_{Y} (t)
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
\begin{array}{l} \left. \Pi (i, t) = p (i, t) x (i, t) - \psi x (i, t) \right. \\ = L_{Y} (t) - (1 - \beta) L_{Y} (t) \\ = \beta L_{\gamma} (t) \\ \end{array}
$$
The total value of owning the right to sell intermediate  $i$  is
$$
V (i, t) = \int_{t}^{\infty} \exp \left(- \int_{t}^{s} r (s^{\prime}) d s^{\prime}\right) \Pi (i, s) d s
$$
- If  $r(t) = r$  – which turns out to be the case – and using expression for profits on last slide, this simplifies to
$$
V (t) = \int_{t}^{\infty} \exp (- r (s - t)) \beta L_{Y} (t) d s
$$
This is just the discounted value of the profits
R&D production function:
$$
\dot {N} (t) = \eta N (t) L_{R} (t)
$$
- This is the  $\phi = 1$  case from last lecture as in Romer (1990)
- Alternative cases:
- Semi-endogenous growth model:
$$
\dot {N} (t) = \eta N (t)^{\phi} L_{R} (t) \quad \text{wi th} \quad \phi <   1
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
$$ g = \frac{\dot {C} (t)}{C (t)} = \frac{1}{\theta} (r - \rho)
$$
- We conjecture that  $L_{R}(t) = L_{R}$  and  $L_{Y}(t) = L_{Y}$ .
This implies
$$
V = \int_{t}^{\infty} \exp (- r (s - t)) \beta L_{Y} (t) d s = \frac{\beta L_{Y}}{r}
$$
- Recall that labor supply is given by
$$
\beta \frac{Y (t)}{L_{\gamma} (t)} = w (t)
$$
The value of the intermediate firm is
$$
V = \frac{\beta L_{Y}}{r}
$$
- Plugging these in for  $V(i, t)$  and  $w(t)$  in the free entry condition yields
$$
\eta N (t) V (i, t) = w (t) \quad = > \quad \eta N (t) \frac{\beta L_{Y}}{r} = \beta \frac{Y (t)}{L_{Y}}
$$
- Recall that output of final goods is
$$
Y (t) = \frac{1}{1 - \beta} N (t) L_{Y}
$$
- Plugging this in yields
$$
\eta N (t) \frac{\beta L_{Y}}{r} = \beta \frac{Y (t)}{L_{Y}} \quad = > \quad \eta N (t) \frac{\beta L_{Y}}{r} = \frac{\beta}{1 - \beta} N (t)
$$
- We can further simplify this expression to
$$ r = (1 - \beta) \eta L_{Y}
$$
- We see from this that free entry into innovation yields a condition that links the interest rate (ultimately household patience) and the allocation of labor to production versus research
- Goods market clearing implies:
$$
C (t) + X (t) = Y (t)
$$ where
$$
X (t) = \int_{0}^{N (t)} \psi x (i, t) d i
$$
Labor market clearing implies:
$$
L_{Y} + L_{R} = L
$$
- Consider again output of final goods
$$
Y (t) = \frac{1}{1 - \beta} N (t) L_{Y}
$$
Since  $L_{Y}$  is constant, the growth rate of  $N(t)$  must be the same as the growth rate of output
- Next consider
$$
\dot {N} (t) = \eta N (t) L_{R} (t)
$$
Rearranging this equation yields:
$$ g = \frac{\dot {N} (t)}{N (t)} = \eta L_{R}
$$
- We now have four equations in four unknown variables:
$$ g = \frac{1}{\theta} (r - \rho) \quad r = (1 - \beta) \eta L_{Y}
$$
$$
L_{Y} + L_{R} = L \quad g = \eta L_{R}
$$
- Solving these for  $g$  yields:
$$ g = \frac{(1 - \beta) \eta L - \rho}{(1 - \beta) + \theta}
$$
To summarize:
$$ g = \frac{(1 - \beta) \eta L - \rho}{(1 - \beta) + \theta}
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
\begin{array}{l} C (t) = Y (t) - X (t) \\ = \frac{1}{1 - \beta} L_{Y} (t)^{\beta} \int_{0}^{N (t)} x (i, t)^{1 - \beta} d i - \int_{0}^{N (t)} \psi x (i, t) d i \\ \end{array}
$$
- The right-hand-side is "net output"
- The static optimum involves maximizing net output
- Differentiating net output with respect to  $x(i, t)$  and setting the resulting expression equal to zero yields:
$$ x^{S} (i, t) = (1 - \beta)^{- 1 / \beta} L_{\gamma}^{S} (t)
$$ where superscript  $S$  denotes "social planner solution"
Market solution:
$$ x (i, t) = L_{Y} (t)
$$
- Social planner solution:
$$ x^{\mathcal {S}} (i, t) = (1 - \beta)^{- 1 / \beta} L_{Y}^{\mathcal {S}} (t)
$$
- $x^{S}(i,t) > x(i,t)$  because social planner eliminates monopoly markup
- Plugging  $x^{S}(i,t)$  into production function for final output yields
$$
Y^{S} (t) = (1 - \beta)^{- 1 / \beta} N^{S} (t) L_{Y}^{S} (t)
$$
- And net output becomes
$$
\begin{array}{l} C^{S} (t) = (1 - \beta)^{- 1 / \beta} N^{S} (t) L_{Y}^{S} (t) - \int_{0}^{N (t)} \psi x^{S} (i, t) d i \\ = (1 - \beta)^{- 1 / \beta} N^{S} (t) L_{Y}^{S} (t) - (1 - \beta)^{- (1 - \beta) / \beta} N^{S} (t) L_{Y}^{S} (t) \\ = (1 - \beta)^{- 1 / \beta} \beta N^{S} (t) L_{\gamma}^{S} (t) \\ \end{array}
$$
- The social planner problem then becomes
$$
\max  \int_{0}^{\infty} \exp (- \rho t) \frac{C (t)^{1 - \theta}}{1 - \theta} d t
$$ subject to
$$
C (t) = (1 - \beta)^{- 1 / \beta} \beta N (t) L_{Y} (t)
$$
$$
\dot {N} (t) = \eta N (t) L_{R} (t)
$$
$$
L_{R} (t) + L_{Y} (t) = L
$$
We can simplify this to:
$$
\max  \int_{0}^{\infty} \exp (- \rho t) \frac{C (t)^{1 - \theta}}{1 - \theta} d t
$$ subject to
$$
\dot {N} (t) = \eta [ N (t) L - (1 - \beta)^{1 / \beta} \beta^{- 1} C (t) ]
$$
- We can now set up a current value Hamiltonian
$$
\mathcal {H} (t) = \frac{C (t)^{1 - \theta}}{1 - \theta} + \mu (t) [ \eta N (t) L - \eta (1 - \beta)^{1 / \beta} \beta^{- 1} C (t) ]
$$
$$
\mathcal {H} (t) = \frac{\mathcal {C} (t)^{1 - \theta}}{1 - \theta} + \mu (t) [ \eta N (t) L - \eta (1 - \beta)^{1 / \beta} \beta^{- 1} \mathcal {C} (t) ]
$$
Differentiating  $\mathcal{H}(t)$  with respect to  $C(t)$  and  $N(t)$  yields:
$$
\mathcal {H}_{\mathcal {C}} (t) = \mathcal {C} (t)^{- \theta} - \eta (1 - \beta)^{1 / \beta} \beta^{- 1} \mu (t) = 0
$$
$$
\mathcal {H}_{N} (t) = \eta L \mu (t) = \rho \mu (t) - \dot {\mu} (t)
$$
- Manipulation of these equations yields:
$$
\mu (t) = \eta^{- 1} (1 - \beta)^{- 1 / \beta} \beta C (t)^{- \theta}
$$
$$
\frac{\dot {\mu} (t)}{\mu (t)} = - [ \eta L - \rho ]
$$
Combining these yields:
$$
\frac{\dot {C}^{S} (t)}{C^{S} (t)} = \frac{1}{\theta} [ \eta L - \rho ]
$$
The growth rate chosen by the social planner is
$$ g^{S} = \frac{1}{\theta} [ \eta L - \rho ]
$$
The growth rate of the market economy with patents:
$$ g = \frac{1}{\theta} ((1 - \beta) \eta L_{Y} - \rho)
$$
Since  $L > (1 - \beta)L_{Y}$  we have the
$$ g^{s} > g
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
\left(\frac{C}{c_{i}}\right)^{\frac{1}{\phi}} = \lambda p_{i} \quad \rightarrow \quad c_{i} = C (\lambda p_{i})^{- \phi}
$$
- Plug this into the budget constraint to get
$$
Z = \int_{0}^{N} p_{i} C (\lambda p_{i})^{- \phi} d i
$$
- Using the fact that  $Z = PC$  (follows from definition of  $P$ ) and rearranging yields:
$$
P = \lambda^{- \phi} \int_{0}^{N} p_{i}^{1 - \phi} d i
$$
- Notice that  $\lambda = P^{-1}$  and rearrange to get
$$
P = \left[ \int_{0}^{N} p_{i}^{1 - \phi} d i \right]^{\frac{1}{1 - \phi}}
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
U = \int_{0}^{\infty} \exp (- \rho t) \frac{C (t)^{1 - \theta}}{1 - \theta} d t
$$
As in Ramsey model, household optimization yields:
$$
\frac{\dot {C} (t)}{C (t)} = \frac{1}{\theta} (r (t) - \rho)
$$
- Final goods are produced in a perfectly competitive market with the production function
$$
Y (t) = \frac{1}{1 - \beta} L^{\beta} \int_{0}^{1} q (i, t) x (i, t)^{1 - \beta} d i
$$
Differences versus expanding variety model:
Measure 1 of intermediate inputs as opposed to  $N(t)$
- All labor  $L$  used for final goods (knowledge produced with final goods)
Each intermediate input has a quality level  $q(i, t)$  (More on functional form assumption later)
- Quality of good  $i$  evolves according to:
$$ q (i, t) = \lambda^{n (i, t)} q (i, 0)
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
Y (t) = \frac{1}{1 - \beta} L^{\beta} \mathbf {X} (t)^{1 - \beta}
$$ where
$$
\mathbf {X} (t) = \left[ \int_{0}^{1} q (i, t) x (i, t)^{\frac{\phi - 1}{\phi}} d i \right]^{\frac{\phi}{\phi - 1}}
$$ and  $\phi = 1 / \beta$
- So, intermediate input part of production function takes Dixit-Stiglitz form (with a quality twist)
- Final goods firms maximize profits
$$
\Pi = \frac{1}{1 - \beta} L^{\beta} \int_{0}^{1} q (i, t) x (i, t)^{1 - \beta} d i - \int_{0}^{1} p (i, t) x (i, t) d i - w (t) L
$$ where  $p(i, t)$  is the price of intermediate input  $x(i, t)$
(the highest quality version)
Intermediate input demand:
$$
L^{\beta} q (i, t) x (i, t)^{- \beta} - p (i, t) = 0
$$ and rearranging:
$$ x (i, t) = \left(\frac{q (i , t)}{p (i , t)}\right)^{1 / \beta} L
$$
Labor demand:
$$
\beta \frac{Y (t)}{L} = w (t)
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
\Pi = p \left(\frac{q}{p}\right)^{1 / \beta} L - q \psi \left(\frac{q}{p}\right)^{1 / \beta} L
$$
Differentiating and setting to zero:
$$
\left(1 - \frac{1}{\beta}\right) p^{- 1 / \beta} + \frac{1}{\beta} q \psi p^{- 1 / \beta - 1} = 0
$$
Rearranging:
$$ p = (1 - \beta)^{- 1} \psi q
$$
- What matters for buyer (final goods firm) is not price but price per unit quality
- We need to know both price and "marginal product" of each version
- This is a bit tricky given the way Acemoglu sets up the model (We are following ch. 14.1 of Acemoglu (2009))
- How do we compare marginal product of different versions of good  $i$  that have different levels of quality?
Production Function:
$$
Y (t) = \frac{1}{1 - \beta} L^{\beta} \int_{0}^{1} q (i, t) x (i, t)^{1 - \beta} d i
$$
Since they are perfect substitutes, they should enter linearly
- Let's rewrite the production function:
$$
Y (t) = \frac{1}{1 - \beta} L^{\beta} \int_{0}^{1} \left(q (i, t)^{\frac{1}{1 - \beta}} x (i, t)\right)^{1 - \beta} d i
$$
Written this way, the different versions enter linearly
- If leading-edge version has quality  $q$ , then second-best version has quality  $\lambda^{-1} q$  (one rung lower)
- If both are being produced they enter production function as:
$$
\lambda^{\frac{- 1}{1 - \beta}} q^{\frac{1}{1 - \beta}} x_{2} + q^{\frac{1}{1 - \beta}} x_{1}
$$ where  $x_{2}$  is quantity of second-best version and  $x_{1}$  is quantity of leading-edge version
- The marginal product of the second best firm is lower by a factor  $\lambda^{\frac{-1}{1 - \beta}}$
# CAN LEADING-EDGE FIRM SET MONOPOLY PRICE?
- Lowest price second-best firm can offer is its marginal cost  $\lambda^{-1}q\psi$
- Leading-edge firm can set monopoly price if ratio of its monopoly price to its marginal product is lower than ratio of marginal cost to marginal product for second best firm:
$$
(1 - \beta)^{- 1} q \psi <   \frac{\lambda^{- 1} q \psi}{\lambda^{\frac{- 1}{1 - \beta}}}
$$ denominator on RHS is difference in marginal product
- Simplifying then yields:
$$
\lambda > \left(\frac{1}{1 - \beta}\right)^{\frac{1 - \beta}{\beta}}
$$
# Summary:
- Leading-edge firm can set monopoly price if
$$
\lambda > \left(\frac{1}{1 - \beta}\right)^{\frac{1 - \beta}{\beta}}
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
$$ p (i, t) = (1 - \beta)^{- 1} \psi q (i, t) = q (i, t)
$$
Output for good  $i$  becomes
$$ x (i, t) = \left(\frac{q (i , t)}{p (i , t)}\right)^{1 / \beta} L = L
$$
- Aggregate output becomes
$$
Y (t) = \frac{1}{1 - \beta} L^{\beta} \int_{0}^{1} q (i, t) x (i, t)^{1 - \beta} d i
$$ which simplifies to
$$
Y (t) = \frac{1}{1 - \beta} Q (t) L
$$ where
$$
Q (t) = \int_{0}^{1} q (i, t) d i
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
\frac{\eta Z (i , t)}{q (i , t)}
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
V (i, t) = \frac{\beta q (i , t) L}{r + z^{*}}
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
V (i, t) \frac{\eta}{\lambda^{- 1} q (i , t)} = 1
$$
(I am not quite sure about the  $\lambda^{-1}$  factor. But I am following Acemoglu on this point.)
Present value of profits:
$$
V (i, t) = \frac{\beta q (i , t) L}{r + z^{*}}
$$
Free entry implies:
$$
V (i, t) \frac{\eta}{\lambda^{- 1} q (i , t)} = 1
$$
Combining these yields:
$$ r + z^{*} = \lambda \eta \beta L
$$
- Consumption Euler equation:
$$
\frac{\dot {C} (t)}{C (t)} = \frac{1}{\theta} (r (t) - \rho)
$$
- Interest rate is constant on BGP
- Consumption growth must equal output growth on BGP
- Consumption Euler equation thus implies:
$$ g = \frac{1}{\theta} (r - \rho)
$$
We need equation relating  $g$  to  $z^{*}$
$$
Y (t) = \frac{1}{1 - \beta} Q (t) L \quad \text{im pl ie s} \quad \frac{\dot {Y} (t)}{Y (t)} = \frac{\dot {Q} (t)}{Q (t)}
$$
- $z^{*}$  is rate of innovation on each product line
Over interval  $\Delta t$  a fraction  $z^{*}\Delta t$  of sectors experience innovation
This implies (up to first order):
$$
Q (t + \Delta t) = \lambda Q (t) z^{*} \Delta t + Q (t) \left(1 - z^{*} \Delta t\right)
$$
(probability weighted average of  $\lambda Q(t)$  and  $Q(t)$ )
$$
Q (t + \Delta t) = \lambda Q (t) z^{*} \Delta t + Q (t) (1 - z^{*} \Delta t)
$$
- Subtracting  $Q(t)$  from both sides, dividing by  $\Delta t$ , and taking limit  $\Delta t \gets 0$  yields
$$
\dot {Q} (t) = (\lambda - 1) z^{*} Q (t)
$$ which in turn implies that
$$ g = (\lambda - 1) z^{*}
$$
So we have:
$$ r + z^{*} = \lambda \eta \beta L
$$
$$
\mathbf {g} = \frac{1}{\theta} (r - \rho)
$$
$$ g = (\lambda - 1) z^{*}
$$
Combining these equations yields
$$ g = \frac{\lambda \eta \beta L - \rho}{\theta + (\lambda - 1)^{- 1}}
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
L_{t + 1} = (1 + n) L_{t}
$$
Each young agent supplies 1 unit of labor
- "Youth" need not be due to birth. Could be immigration or the binding of a borrowing constraint.
Production function:
$$
Y_{t} = F \left(K_{t}, A_{t} L_{t}\right)
$$
Exogenous productivity growth:
$$
A_{t + 1} = (1 + g) A_{t}
$$
- Perfect competition in factor markets yields:
$$ r_{t} = f^{\prime} \left(k_{t}\right) \quad w_{t} = f \left(k_{t}\right) - k_{t} f^{\prime} \left(k_{t}\right)
$$
(See Ramsey model lecture for details)
- $r_t$  is the return on savings held from period  $t - 1$  to  $t$
$w_{t}$  is the wage per effective unit of labor
- Preferences of households born at  $t$  :
$$
U_{t} = \frac{C_{1 t}^{1 - \theta}}{1 - \theta} + \frac{1}{1 + \rho} \frac{C_{2 t + 1}^{1 - \theta}}{1 - \theta}
$$
Budget constraints:
$$
C_{1 t} + s_{t} = w_{t} A_{t}
$$
$$
C_{2 t + 1} = \left(1 + r_{t + 1}\right) s_{t}
$$
$s_t$  is savings of young at time  $t$
Old consume both interest and principle
- We are assuming no depreciation of capital (for simplicity)
- We can plug budget constraints into  $U_{t}$  to get
$$
U_{t} = \frac{\left(w_{t} A_{t} - s_{t}\right)^{1 - \theta}}{1 - \theta} + \frac{1}{1 + \rho} \frac{\left(\left(1 + r_{t + 1}\right) s_{t}\right)^{1 - \theta}}{1 - \theta}
$$
Differentiating with respect to  $s_t$  yields:
$$
- \left(w_{t} A_{t} - s_{t}\right)^{- \theta} + \frac{1 + r_{t + 1}}{1 + \rho} \left(\left(1 + r_{t + 1}\right) s_{t}\right)^{- \theta} = 0
$$
Rearranging and using budget constraints again:
$$
C_{1 t}^{- \theta} = \frac{1 + r_{t + 1}}{1 + \rho} C_{2 t + 1}^{- \theta}
$$
- This is the consumption Euler equation (same as Ramsey model)
Combining the budget constraints:
$$
C_{1 t} + \frac{1}{1 + r_{t + 1}} C_{2 t + 1} = A_{t} w_{t}
$$ this is called the intertemporal budget constraint
Rearranging Euler equation:
$$
C_{2 t + 1} = \left(\frac{1 + r_{t + 1}}{1 + \rho}\right)^{1 / \theta} C_{1 t}
$$
Combining these two:
$$
C_{1 t} + \frac{\left(1 + r_{t + 1}\right)^{(1 - \theta) / \theta}}{(1 + \rho)^{1 / \theta}} C_{1 t} = A_{t} w_{t}
$$
- Solving for  $C_{1t}$  yields:
$$
C_{1 t} = \frac{(1 + \rho)^{1 / \theta}}{(1 + \rho)^{1 / \theta} + (1 + r_{t + 1})^{(1 - \theta) \theta}} A_{t} w_{t}
$$
- Young spend some fraction of labor income on time 1 consumption
Savings:
$$
\boldsymbol {s}_{t} = \boldsymbol {A}_{t} \boldsymbol {w}_{t} - \boldsymbol {C}_{1 t} = \frac{(1 + r_{t + 1})^{(1 - \theta) / \theta}}{(1 + \rho)^{1 / \theta} + (1 + r_{t + 1})^{(1 - \theta) \theta}} \boldsymbol {A}_{t} \boldsymbol {w}_{t}
$$
- Young save a complementary fraction of their labor income
$$
\mathbf {s}_{t} = \frac{\left(1 + r_{t + 1}\right)^{(1 - \theta) / \theta}}{\left(1 + \rho\right)^{1 / \theta} + \left(1 + r_{t + 1}\right)^{(1 - \theta) / \theta}} \mathbf {A}_{t} w_{t}
$$
- Savings unambiguously increase in wage income (Both  $C_{1t}$  and  $C_{2t+1}$  are normal goods)
- Effect of a change in  $r_{t+1}$  is ambiguous
- Change in  $r_{t+1}$  both and income effect and a substitution effect
- Increase in  $r_{t+1}$  decreases price of  $C_{2t+1}$  (which increases savings)
- Increase in  $r_{t+1}$  increases feasible consumption set (which decreases savings)
$$
\boldsymbol {s}_{t} = \frac{\left(1 + r_{t + 1}\right)^{(1 - \theta) / \theta}}{\left(1 + \rho\right)^{1 / \theta} + \left(1 + r_{t + 1}\right)^{(1 - \theta) / \theta}} \boldsymbol {A}_{t} \boldsymbol {w}_{t}
$$
- Savings increase in  $r_{t+1}$  if  $(1 + r_{t+1})^{(1 - \theta) / \theta}$  is increasing in  $r_{t+1}$
$$
\frac{d}{d r} (1 + r)^{(1 - \theta) / \theta} = \frac{1 - \theta}{\theta} (1 + r)^{(1 - \theta) / \theta}
$$
- Savings increase in  $r_{t+1}$  if  $\theta < 1$ , i.e., if IES > 1
- If IES > 1, substitution effect is strong and overwhelms income effect
- If IES = 1 (log utility) saving is unaffected by  $r_{t+1}$
- Savings of young at time  $t$  become capital stock at time  $t + 1$ :
$$
K_{t + 1} = s_{t} L_{t}
$$
Using notation from Romer (2019):  $s_t = s(r_{t+1}) A_t w_t$
$$
K_{t + 1} = s \left(r_{t + 1}\right) A_{t} w_{t} L_{t}
$$
- Dividing through by  $A_{t+1}L_{t+1}$  yields:
$$ k_{t + 1} = \frac{s \left(r_{t + 1}\right) w_{t}}{(1 + n) (1 + g)}
$$
$$ w h e r e k_{t} = K_{t} / \left(A_{t} L_{t}\right)
$$
- Plugging in for  $w_{t}$  and  $r_{t + 1}$ :
$$ k_{t + 1} = \frac{s \left(f^{\prime} \left(k_{t + 1}\right)\right) \left[ f \left(k_{t}\right) - k_{t} f^{\prime} \left(k_{t}\right) \right]}{(1 + n) (1 + g)}
$$
- Implicitly defines  $k_{t+1}$  as a function of  $k_t$
- Let's call this function the "savings locus"
Steady state when  $k_{t + 1} = k_{t}$
$$ k_{t + 1} = \frac{s \left(f^{\prime} \left(k_{t + 1}\right)\right) \left[ f \left(k_{t}\right) - k_{t} f^{\prime} \left(k_{t}\right) \right]}{\left(1 + n\right) \left(1 + g\right)}
$$
- Let's start by considering special case:
- Logarithmic utility (i.e.,  $\theta = 1$ )
Cobb-Douglas production function  $(y = k^{\alpha})$
In this case:
$$ s \left(r_{t + 1}\right) = \frac{1}{2 + \rho} \quad \text{an d} \quad f (k) - k f^{\prime} (k) = k^{\alpha} - \alpha k^{\alpha} = (1 - \alpha) k^{\alpha}
$$
So, we have:
$$ k_{t + 1} = \frac{(1 - \alpha)}{(1 + n) (1 + g) (2 + \rho)} k_{t}^{\alpha}
$$
# EVOLUTION OF CAPITAL IN SPECIAL CASE
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/1fb0e6dbe231cf0c6d1dc9dc3c3dced77e43d1b11fc92fa4cea8c02f9fc265db.jpg)
Source: Blanchard and Fischer (1989)
In this special case:
There is a single steady state (with positive capital)
- The steady state is locally stable
- What is it that makes the steady state locally stable?
$$
\left. \frac{d k_{t + 1}}{d k_{t}} \right|_{s s} <   1
$$
$$ k_{t + 1} = \frac{s \left(f^{\prime} \left(k_{t + 1}\right)\right) \left[ f \left(k_{t}\right) - k_{t} f^{\prime} \left(k_{t}\right) \right]}{(1 + n) (1 + g)}
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
$$ k_{t + 1} = \frac{s \left(f^{\prime} \left(k_{t + 1}\right)\right) \left[ f \left(k_{t}\right) - k_{t} f^{\prime} \left(k_{t}\right) \right]}{(1 + n) (1 + g)}
$$
- We can rewrite this as follows:
$$ k_{t + 1} = \frac{1}{(1 + n) (1 + g)} \underbrace {s (r_{t + 1})}_{\text{sa vi ng sr at e}} \underbrace {\frac{f (k_{t}) - k_{t} f^{\prime} (k_{t})}{f (k_{t})}}_{\text{la bo rs ha re}} \underbrace {f (k_{t})}_{\text{ou tp ut pe rp er so n}}
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
K_{t} + F \left(K_{t}, A_{t} L_{t}\right) = K_{t + 1} + C_{1 t} L_{t} + C_{2 t} L_{t - 1}
$$
Divide through by  $A_{t}L_{t}$
$$ k_{t} + f \left(k_{t}\right) = (1 + n) k_{t + 1} + A_{t}^{- 1} c_{t}
$$ where  $c_{t} = C_{1t} + (1 + n)^{-1}C_{2t}$  (weighted average of young and old consumption)
In steady state with  $g = 0$ :
$$
A^{- 1} c = f (k) - n k
$$
In steady state with  $g = 0$
$$
A^{- 1} c = f (k) - n k
$$
$c$  is maximized when
$$ f^{\prime} (k_{G K}) = n
$$ which implicitly gives the Golden Rule capital stock
- OLG savings locus:
$$ k_{t + 1} = \frac{(1 - \alpha)}{(1 + n) (1 + g) (2 + \rho)} k_{t + 1}^{\alpha}
$$
- With  $g = 0$  and in steady state:
$$ k^{*} = \frac{(1 - \alpha)}{(1 + n) (2 + \rho)} k^{* \alpha}
$$ which simplifies to
$$ k^{*} = \left[ \frac{(1 - \alpha)}{(1 + n) (2 + \rho)} \right]^{1 / (1 - \alpha)}
$$
If
$$ k^{*} = \left[ \frac{(1 - \alpha)}{(1 + n) (2 + \rho)} \right]^{1 / (1 - \alpha)}
$$ then
$$ f^{\prime} (k^{*}) = \alpha k^{* \alpha - 1} = \frac{\alpha}{1 - \alpha} (1 + n) (2 + \rho)
$$
- We have ignored depreciation. If  $f(k) = k^{\alpha} - \delta k$ :
$$ f^{\prime} (k^{*}) = \frac{\alpha}{1 - \alpha} (1 + n) (2 + \rho) - \delta
$$
- Recall that  $r = f'(k)$ . So, we have
$$ r^{*} = \frac{\alpha}{1 - \alpha} (1 + n) (2 + \rho) - \delta
$$
If
$$ r^{*} <   n
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
$$ r = f^{\prime} (k)
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
$$ r^{*} > g + n
$$
Economy is dynamically inefficient if
$$ r^{*} <   g + n
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
(1 + n) \frac{U^{\prime} ((1 + n) d)}{(1 + \rho)} > U^{\prime} (1 - d) \quad = > 1 + n > 1 + r
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
U_{t} = \frac{C_{1 t}^{1 - \theta}}{1 - \theta} + \frac{1}{1 + \rho} \frac{C_{2 t + 1}^{1 - \theta}}{1 - \theta}
$$ subject to
$$
P_{t} \left(1 - C_{1 t}\right) = M_{t}^{d}
$$
$$
P_{t + 1} C_{2 t + 1} = M_{t}^{d}
$$
- Plugging constraints into objective, differentiating, setting result to zero, and rearranging yields:
$$
\frac{M_{t}^{d}}{P_{t}} = \frac{1}{1 + (1 + \rho)^{1 / \theta} \Pi_{t + 1}^{(\theta - 1) / \theta}} \quad \text{wh er e} \quad \Pi_{t + 1} = \frac{P_{t + 1}}{P_{t}}
$$
- This is the money demand function, also the savings function
$$
\frac{M_{t}^{d}}{P_{t}} = \frac{1}{1 + (1 + \rho)^{1 / \theta} \Pi_{t + 1}^{(\theta - 1) / \theta}}
$$
- $\Pi_{t+1}$  is the (inverse of the) rate of return on money
Effect of an increase in  $\Pi_{t + 1}$  on money demand ambiguous
- If  $\theta > 1$ , higher  $\Pi_{t+1}$  leads to lower money demand (substitution effect dominates)
- If  $\theta < 1$ , higher  $\Pi_{t+1}$  leads to higher money demand (income effect dominates)
- Let's denote money demand function:
$$
\frac{M_{t}^{d}}{P_{t}} = L \left(\Pi_{t + 1}\right)
$$
- Money demand equal to money supply:
$$
(1 + n)^{t} M_{t}^{d} = H
$$
- Also true in period  $t + 1$
$$
(1 + n)^{t} M_{t}^{d} = (1 + n)^{t + 1} M_{t + 1}^{d}
$$
- Dividing by  $P_{t}$  on both sides:
$$
\frac{M_{t}^{d}}{P_{t}} = (1 + n) \frac{P_{t + 1}}{P_{t}} \frac{M_{t + 1}^{d}}{P_{t + 1}}
$$
- Plugging in for money demand:
$$
L \left(\Pi_{t + 1}\right) = (1 + n) \Pi_{t + 1} L \left(\Pi_{t + 2}\right)
$$
$$
L \left(\Pi_{t}\right) = (1 + n) \Pi_{t} L \left(\Pi_{t + 1}\right)
$$
Consider a steady state where
$$
\Gamma_{t} = \Pi_{t + 1} = \bar {\Pi}
$$
- Then we have that
$$
L (\bar {\Pi}) = (1 + n) \bar {\Pi} L (\bar {\Pi})
$$
This simplifies to
$$
\bar {\Pi} = (1 + n)^{- 1}
$$
- This means that there is an equilibrium of the model with a constant inflation rate equal to  $(1 + n)^{-1}$
- Return on holding money is  $\Pi^{-1}$
- In equilibrium with constant inflation rate, return on holding money is
$$
\bar {\Pi}^{- 1} = (1 + n)
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
A_{0} Y_{i t} = A (L) Y_{i t} + B (L) X_{i t} + u_{i t}
$$
$$
Y_{i t} = \left[ \Delta \log t t_{i t}, \Delta \log y_{i t}, \Delta \log r e r_{i t}, \Delta \log p_{i t} \right]
$$
- Divides countries into fixed, flexible, intermediate regimes  $(R_{it})$
- Runs panel VAR with coefficient different for each regime
$$
A_{0} Y_{i t} = A (L) Y_{i t} + B (L) X_{i t} + u_{i t}
$$
$$
Y_{i t} = \left[ \Delta \log t t_{i t}, \Delta \log y_{i t}, \Delta \log r e r_{i t}, \Delta \log p_{i t} \right]
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
$$ e_{t} = p_{t} - p_{t}^{*}
$$
- Purchasing Power Parity
$$ e_{t} = p_{t} - p_{t}^{*}
$$
Money demand
$$ m_{t} - p_{t} = \phi_{y} y_{t} - \phi_{i} i_{t}
$$
$$ m_{t}^{*} - p_{t}^{*} = \phi_{y} y_{t}^{*} - \phi_{i} i_{t}^{*}
$$
- Purchasing Power Parity
$$ e_{t} = p_{t} - p_{t}^{*}
$$
Money demand
$$ m_{t} - p_{t} = \phi_{y} y_{t} - \phi_{i} i_{t}
$$
$$ m_{t}^{*} - p_{t}^{*} = \phi_{y} y_{t}^{*} - \phi_{i} i_{t}^{*}
$$
Combining money demand
$$ p_{t} - p_{t}^{*} = \left(m_{t} - m_{t}^{*}\right) - \phi_{y} \left(y_{t} - y_{t}^{*}\right) + \phi_{i} \left(i_{t} - i_{t}^{*}\right)
$$
- Purchasing Power Parity
$$ e_{t} = p_{t} - p_{t}^{*}
$$
Money demand
$$ m_{t} - p_{t} = \phi_{y} y_{t} - \phi_{i} i_{t}
$$
$$ m_{t}^{*} - p_{t}^{*} = \phi_{y} y_{t}^{*} - \phi_{i} i_{t}^{*}
$$
Combining money demand
$$ p_{t} - p_{t}^{*} = \left(m_{t} - m_{t}^{*}\right) - \phi_{y} \left(y_{t} - y_{t}^{*}\right) + \phi_{i} \left(i_{t} - i_{t}^{*}\right)
$$
Exchange rate and "fundamentals":
$$
\boldsymbol {e}_{t} = \left(m_{t} - m_{t}^{*}\right) - \phi_{y} \left(y_{t} - y_{t}^{*}\right) + \phi_{i} \left(i_{t} - i_{t}^{*}\right)
$$
Sample: German Mark, February 1920 - November 1923.
Hyperinflation: Ignore a bunch of terms.
$$ e_{t} = \left(m_{t} - m_{t}^{*}\right) - \phi_{Y} \left(y_{t} - y_{t}^{*}\right) + \phi_{i} \left(i_{t} - i_{t}^{*}\right)
$$
$$
\boldsymbol {e}_{t} = m_{t} - \phi_{i} \left(i_{t} - i_{t}^{*}\right)
$$
$$
\begin{array}{l} \log S = - 5. 1 3 5 + 0. 9 7 5 \log M + 0. 5 9 1 \log \pi \\ (0. 7 3 1) (0. 0 5 0) \tag {0.073} \\ \end{array}
$$
$$
R^{2} = 0. 9 9 4; \mathrm{s .e .} = 0. 2 4 1; \mathrm{D .W .} = 1. 9 1.
$$
Source: Frenkel (1976).
Fig. 1.
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-07/1fdd3228-6b68-42c0-886f-d5c346f6240f/cc26d2ac93280fd683cee9fb0451cfdfc14465529556bd19db33e5dd382f0399.jpg)
Source: Frenkel (1976).
Sample: DEM/USD, July 1974 - February 1978.
$$
\begin{array}{l} \mathbf {e}_{t} = \phi_{0} + \phi_{m} (m_{t} - m_{t}^{*}) - \phi_{y} (y_{t} - y_{t}^{*}) \\ + \phi_{i} \left(i_{t} - i_{t}^{*}\right) + \phi_{\pi} \left(\pi_{t}^{e} - \pi_{t}^{e *}\right) + \epsilon_{t} \\ \end{array}
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
$$ m - m^{*} = \log \text{of} M_{1} / U. S. M_{1}
$$
$$ y - y^{*} = \log \text{of} U. S.
$$
$$ r - r^{*} = \text{Sh or t -t er mG er ma n -U .S .i nt er es td if fe re nt ia l}
$$
$$
\begin{array}{l} \left(r - r^{*}\right)_{- 1} = \text{Sh or t -t er mG er ma n -U .S .i nt er es td if fe re nt ia lg ag ge d} \\ \pi - \pi^{*} = \text{Ex pe ct ed Ge rm an -U .S .i nf la ti on di ff er en ti al ,p ro xi ed by lo ng -t er mg ov en me nt bo nd di ff er en ti al}. \\ \end{array}
$$
Source: Frankel (1979).
- Do the monetary models of exchange rates fit out of sample?
- Do the monetary models of exchange rates fit out of sample?
- Generalized monetary model:
$$
\begin{array}{l} e_{t} = \phi_{0} + \phi_{m} \left(m_{t} - m_{t}^{*}\right) + \phi_{y} \left(y_{t} - y_{t}^{*}\right) + \phi_{i} \left(i_{t} - i_{t}^{*}\right) \\ + \phi_{\pi} \left(\pi_{t}^{e} - \pi_{t}^{e *}\right) + \phi_{T B} T B_{t} + \phi_{T B^{*}} T B_{t}^{*} + \epsilon_{t} \\ \end{array}
$$
- Auto-regressive model
$$
\pmb {\varepsilon}_{t} = \phi_{0} + \sum_{j = 1}^{J} \phi_{j} \pmb {\varepsilon}_{t - j} + \epsilon_{t}
$$
- Auto-regressive model
$$
\pmb {e}_{t} = \phi_{0} + \sum_{j = 1}^{J} \phi_{j} \pmb {e}_{t - j} + \epsilon_{t}
$$
- Vector auto-regressive model
$$
\pmb {e}_{t} = \phi_{0} + \sum_{j = 1}^{J} \phi_{j} \pmb {e}_{t - j} + \sum_{j = 1}^{J} \Phi_{j} X_{t - j} + \epsilon_{t}
$$
- Auto-regressive model
$$
\pmb {e}_{t} = \phi_{0} + \sum_{j = 1}^{J} \phi_{j} \pmb {e}_{t - j} + \epsilon_{t}
$$
- Vector auto-regressive model
$$
\pmb {e}_{t} = \phi_{0} + \sum_{j = 1}^{J} \phi_{j} \pmb {e}_{t - j} + \sum_{j = 1}^{J} \Phi_{j} X_{t - j} + \epsilon_{t}
$$
- Random Walk model
$$
E_{t} e_{t + j} = e_{t}
$$
Sample period: March 1973 - June 1981
- Forecasts based on rolling regression starting November 1976
Forecast horizons: 1, 6 and 12 months
Sample period: March 1973 - June 1981
- Forecasts based on rolling regression starting November 1976
Forecast horizons: 1, 6 and 12 months
Measure of out-of-sample accuracy: RMSE
$$
\left\{\sum_{s = 0}^{N_{k} - 1} \left[ F (t + s + k) - A (t + s + k) \right]^{2} / N_{k} \right\}^{1 / 2}
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
$$ i_{t} = i_{t}^{*} + E_{t} e_{t + 1} - e_{t}
$$
- Returns should be equalized across countries
- If interest rate is higher abroad, exchange rate should fall enough on average to equalize returns ( $e_t$  is domestic currency price of foreign currency)
Rearranging and solving forward:
$$ i_{t} = i_{t}^{*} + E_{t} e_{t + 1} - e_{t}
$$
$$
\boldsymbol {e}_{t} = \left(i_{t}^{*} - i_{t}\right) + E_{t} \boldsymbol {e}_{t + 1}
$$
$$
\boldsymbol {e}_{t} = \left(i_{t}^{*} - i_{t}\right) + \sum_{j = 1}^{\infty} E_{t} \left(i_{t + j}^{*} - i_{t + j}\right) + \lim_{j \rightarrow \infty} E_{t} \boldsymbol {e}_{t + j}
$$
What determines the change in the exchange rate:
$$
\boldsymbol {e}_{t + 1} - \boldsymbol {e}_{t} = - \left(i_{t}^{*} - i_{t}\right) + \sum_{j = 1}^{\infty} \Delta E_{t + 1} \left(i_{t + j}^{*} - i_{t + j}\right) + \lim_{j \rightarrow \infty} \Delta E_{t + 1} \boldsymbol {e}_{t + j}
$$ where  $\Delta E_{t + 1}x_{t + j} = E_{t + 1}x_{t + j} - E_t x_{t + j}$  (time  $t + 1$  news about  $x_{t + j}$ )
What determines the change in the exchange rate:
$$
\boldsymbol {e}_{t + 1} - \boldsymbol {e}_{t} = - \left(i_{t}^{*} - i_{t}\right) + \sum_{j = 1}^{\infty} \Delta E_{t + 1} \left(i_{t + j}^{*} - i_{t + j}\right) + \lim_{j \rightarrow \infty} \Delta E_{t + 1} \boldsymbol {e}_{t + j}
$$ where  $\Delta E_{t + 1}x_{t + j} = E_{t + 1}x_{t + j} - E_t x_{t + j}$  (time  $t + 1$  news about  $x_{t + j}$ )
- Two components:
Current interest rate differential
- News about all future interest rate differentials
What determines the change in the exchange rate:
$$
\boldsymbol {e}_{t + 1} - \boldsymbol {e}_{t} = - \left(i_{t}^{*} - i_{t}\right) + \sum_{j = 1}^{\infty} \Delta E_{t + 1} \left(i_{t + j}^{*} - i_{t + j}\right) + \lim_{j \rightarrow \infty} \Delta E_{t + 1} \boldsymbol {e}_{t + j}
$$ where  $\Delta E_{t + 1}x_{t + j} = E_{t + 1}x_{t + j} - E_t x_{t + j}$  (time  $t + 1$  news about  $x_{t + j}$ )
- Two components:
Current interest rate differential
- News about all future interest rate differentials
- Not so implausible that the variance of the latter is huge compared to the former
$$
\boldsymbol {e}_{t + 1} - \boldsymbol {e}_{t} = - \left(i_{t}^{*} - i_{t}\right) + \sum_{j = 1}^{\infty} \Delta E_{t + 1} \left(i_{t + j}^{*} - i_{t + j}\right) + \lim_{j \rightarrow \infty} \Delta E_{t + 1} \boldsymbol {e}_{t + j}
$$
- But  $(i_t^* - i_t)$  not only thing observed
$$
\pmb {e}_{t + 1} - \pmb {e}_{t} = - (i_{t}^{*} - i_{t}) + \sum_{j = 1}^{\infty} \Delta E_{t + 1} (i_{t + j}^{*} - i_{t + j}) + \lim_{j \to \infty} \Delta E_{t + 1} \pmb {e}_{t + j}
$$
- But  $(i_t^* - i_t)$  not only thing observed
- Movements in longer-term bonds allow one to back out estimates of
$$
\sum_{j = 1}^{\infty} \Delta E_{t + 1} (i_{t + j}^{*} - i_{t + j})
$$ at least up to  $j = 40$  quarters (and assuming EHTS)
$$
\boldsymbol {e}_{t + 1} - \boldsymbol {e}_{t} = - \left(i_{t}^{*} - i_{t}\right) + \sum_{j = 1}^{\infty} \Delta E_{t + 1} \left(i_{t + j}^{*} - i_{t + j}\right) + \lim_{j \rightarrow \infty} \Delta E_{t + 1} \boldsymbol {e}_{t + j}
$$
- But  $(i_t^* - i_t)$  not only thing observed
- Movements in longer-term bonds allow one to back out estimates of
$$
\sum_{j = 1}^{\infty} \Delta E_{t + 1} (i_{t + j}^{*} - i_{t + j})
$$ at least up to  $j = 40$  quarters (and assuming EHTS)
$\bullet$ $\lim_{j\to \infty}\Delta E_{t + 1}e_{t + j}$  still a potential problem
- But in real terms PPP should hold in the very long run (Clarida-Luo 14; Engel 15)
- Why was Frankel's in-sample inference so much stronger than Meese-Rogoff's out-of-sample inference?
- Why was Frankel's in-sample inference so much stronger than Meese-Rogoff's out-of-sample inference?
- Suggests that something is wrong with in-sample inference (This is a general concern)
- Monetary model of exchange rate:
$$
\boldsymbol {e}_{t} = \phi_{0} + \phi_{f} \boldsymbol {f}_{t} + \epsilon_{t}
$$
- Both  $e_t$  and  $f_t$  have a unit-root.
Granger and Newbold (1974):
- Usual methods massively understate standard errors
As a preliminary, we looked at the regression
$$
Y_{t} = \beta_{0} + \beta_{1} X_{t},
$$ where  $Y_{t}$  and  $X_{t}$  were, in fact, generated as independent random walks each of length 50. Table 1 shows values of
$$
S = \frac{| \hat {\beta}_{1} |}{\widehat {S . E .} (\hat {\beta}_{1})},
$$ the customary statistic for testing the significance of  $\beta_{1}$ , for 100 simulations.
Table 1 Regressing two independent random walks.
<table><tr><td rowspan="2">S: Frequency:</td><td>0-1</td><td>1-2</td><td>2-3</td><td>3-4</td><td>4-5</td><td>5-6</td><td>6-7</td><td>7-8</td></tr><tr><td>13</td><td>10</td><td>11</td><td>13</td><td>18</td><td>8</td><td>8</td><td>5</td></tr><tr><td rowspan="2">S: Frequency:</td><td>8-9</td><td>9-10</td><td>10-11</td><td>11-12</td><td>12-13</td><td>13-14</td><td>14-15</td><td>15-16</td></tr><tr><td>3</td><td>3</td><td>1</td><td>5</td><td>0</td><td>1</td><td>0</td><td>1</td></tr></table>
Source: Granger and Newbold (1974).
# Table 2
Regressions of a series on  $m$  independent 'explanatory' series.
Series either all random walks or all A.R.I.M.A. (0, 1, 1) series, or changes in these.  $Y_{0} = 100$ ,  $Y_{t} = Y_{t - 1} + a_{t}$ ,  $Y_{t}^{\prime} = Y_{t} + kb_{t}$ ;  $X_{j,t,0} = 100$ ,  $X_{j,t,1} = X_{j,t - 1} + a_{j,t}$ ,  $X_{j,t}^{\prime} = X_{j,t} + kb_{j,t}$ ;  $a_{t}, a_{t}, b_{t}, b_{t}b_{t}$  sets of independent  $N(0,1)$  white noises.  $k = 0$  gives random walks,  $k = 1$  gives A.R.I.M.A. (0, 1, 1) series.  $H_{0} = \text{norelationship}$ , is true. Series length is 50, number of simulations is 100,  $R^{2} = \text{corrected } R^{2}$ .
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
X_{t} = \alpha + \beta Y_{t} + u_{t}
$$
$$
X_{t} = \theta_{x} X_{t - 1} + \epsilon_{x, t}
$$
$$
Y_{t} = \theta_{y} Y_{t - 1} + \epsilon_{y, t}
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
\boldsymbol {e}_{t} = \boldsymbol {f}_{t} + \boldsymbol {c}
$$
$$ f_{t} = \left(m_{t} - m_{t}^{*}\right) - \lambda \left(y_{t} - y_{t}^{*}\right)
$$
- Even if monetary model doesn't work in the short run, it may work in the long run
Estimates partial adjustment model:
$$
\boldsymbol {e}_{t + k} - \boldsymbol {e}_{t} = \alpha_{k} + \beta_{k} (\boldsymbol {f}_{t} - \boldsymbol {e}_{t}) + \nu_{t + k, t}
$$
$$
\boldsymbol {e}_{t + k} - \boldsymbol {e}_{t} = \alpha_{k} + \beta_{k} \left(\boldsymbol {f}_{t} - \boldsymbol {e}_{t}\right) + \nu_{t + k, t}
$$
Sample period: 1973:2 - 1991:4
- Pseudo-out-of-sample period: 1981:4 - 1991:4
Currencies: Canada, Germany, Switzerland, Japan
$\bullet$  Horizons:  $k = 1,4,8,12,16$  (quarters)
$$
\boldsymbol {e}_{t + k} - \boldsymbol {e}_{t} = \alpha_{k} + \beta_{k} (\boldsymbol {f}_{t} - \boldsymbol {e}_{t}) + \nu_{t + k, t}
$$
- Multiperiod forecasts induce correlation in error terms
$$
\boldsymbol {e}_{t + k} - \boldsymbol {e}_{t} = \alpha_{k} + \beta_{k} (\boldsymbol {f}_{t} - \boldsymbol {e}_{t}) + \nu_{t + k, t}
$$
- Multiperiod forecasts induce correlation in error terms
Stambaugh 86/99 bias
- $f_{t} - e_{t}$  predetermined but not strictly exogenous
- Past values of  $e_{t+k} - e_t$  correlated with  $f_t - e_t$
Causes finite sample bias in  $\beta_{k}$
$$
\boldsymbol {e}_{t + k} - \boldsymbol {e}_{t} = \alpha_{k} + \beta_{k} (\boldsymbol {f}_{t} - \boldsymbol {e}_{t}) + \nu_{t + k, t}
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
$$ f_{t} = \left(m_{t} - m_{t}^{*}\right) - \left(y_{t} - y_{t}^{*}\right)
$$ also no interest rate term. Why not estimate?
Why not use UK pound?
- Mark calibrates  $\lambda = 1$ :
$$ f_{t} = \left(m_{t} - m_{t}^{*}\right) - \left(y_{t} - y_{t}^{*}\right)
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