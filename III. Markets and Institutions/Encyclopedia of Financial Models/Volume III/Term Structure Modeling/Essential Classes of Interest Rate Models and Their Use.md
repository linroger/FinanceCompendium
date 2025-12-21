---
title: "Essential Classes of Interest Rate Models and Their Use"
parent_directory: "Term Structure Modeling"
formatted: "2025-12-21 09:15:30 AM"
formatter_model: "kimi-k2-turbo"
cli-tool: "claude-code"
primary_tags:
  - interest rate models
  - term structure modeling
  - arbitrage-free models
  - equilibrium models
secondary_tags:
  - risk neutral valuation
  - realistic probability measures
  - bond pricing
  - derivative pricing
  - term premium
  - short rate models
  - discount factors
  - spot rate derivation
  - stochastic processes
  - market risk premium
  - option pricing
  - hedging strategies
cssclasses: academia
---

# Essential Classes of Interest Rate Models and Their Use

PETER FITTON

Manager, Scientific Development CreditXpert Inc.

JAMES F. McNATT, CFA

Executive Vice President, ValueWealth Services

Abstract: Models of the term structure of interest rates have become increasingly important in financial modeling. However, the understanding of these models by practitioners has not always kept pace with the breadth of the application of these models. In particular, misinterpretation of the proper uses of a particular model can lead to significant errors. The confusion regarding these models has arisen because of the overuse and misuse of the term "arbitrage-free."

In this entry, we attempt to clear up some of the most commonly misconstrued aspects of interest rate models: the choice between an arbitrage-free or equilibrium model, and the choice between risk neutral or realistic parameterizations of a model. These two dimensions define four classes of model forms, each of which has its own proper use.

Much of the confusion has arisen from overuse and misuse of the term "arbitrage-free." Virtually all finance practitioners believe that market participants quickly take advantage of any opportunities for risk-free arbitrage among financial assets, so that these opportunities do not exist for long; thus, the term "arbitrage-free" sounds as if it would be a good characteristic for any model to have. Simply based on these positive connotations, it almost seems hard to believe that anyone would not want their model to be arbitrage-free. Briefly, in the world of finance this expression has the associations of motherhood and apple pie.


Unfortunately, this has led some users (and even builders) of interest rate models to link uncritically the expression "arbitrage-free" with the adjective "good." One objective of this entry is to show that arbitrage-free models are not appropriate for all purposes. Further, we show that just because a model uses the arbitrage-free approach does not mean that it is necessarily good, even for the purposes for which arbitrage-free models are appropriately used.

Another common confusion ensues from implicitly equating the terms "arbitrage-free" and "risk neutral." This arises partly from the fact that, in the academic and practitioner literature, there have been very few papers that have applied the arbitrage-free technique to a model that was not in risk-neutral form. We explain the reason for this below. The natural result is that the terms have sometimes been used interchangeably. In addition, since quantitative risk management is a relatively new concept to the finance community, most well-known papers have focused only on the application of interest rate models to simple valuation and hedging problems. These have not required either the realistic or equilibrium approaches to modeling. This lack of published work has led to a mistaken belief that an arbitrage-free, risk-neutral model is the only valid kind of term structure model. In this entry, we intend to dispel that notion.


## CATEGORIZATION OF APPROACHES TO TERM STRUCTURE MODELING

For valuation, it is possible to produce reasonable current prices for many assets without having a realistic term structure model, by using arbitrage-free models for interpolation among existing prices. To this end, the trading models used by most dealers in the over-the-counter derivatives market employ enormous numbers of time-dependent parameters. These achieve an exact fit to prices of assets in particular classes, without regard to any differences between the behaviors of the models and the actual behavior of the term structure over time. Placed in terms of a physical analogy, the distinction here is between creating a robot based on a photograph of an animal, and creating a robot based on multiple observations of the animal through time. While the robot produced using only the photograph may look like the animal, only the robot built based on behavioral observations will act like the animal. An arbitrage-free model is like the former robot, constructed with reference to only a single point in time; that is, a snapshot of the fixed-income marketplace.


## Equilibrium Modeling

In contrast to arbitrage-free models, equilibrium term structure models are truly models of the term structure process. Rather than interpolating among prices at one particular point in time, they attempt to capture the behaviors of the term structure over time. An equilibrium model employs a statistical approach, assuming that market prices are observed with some statistical error, so that the term structure must be estimated, rather than taken as given. Equilibrium models do not exactly match market prices at the time of estimation, because they use a small set of state variables (fundamental components of the interest rate process) to describe the term structure. Extant equilibrium models do not contain time-dependent parameters; instead they contain a small number of statistically estimated constant parameters, drawn from the historical time series of the yield curve.

## Risk-Neutral Probabilities: The Derivative Pricing Probability Measure

When we create a model for pricing interest rate derivatives, the "underlying" is not the price of a traded security, as it would be in a model for equity options. Instead, we specify a random process for the instantaneous, risk-free spot interest rate, the rate payable on an investment in default-free government bonds for a very short period of time. For convenience, we call this interest rate "the short rate." Financial modelers have chosen to create models around the short rate because it is the only truly riskless interest rate in financial markets. An investment in default-free bonds for any noninstantaneous period of time carries market risk, the chance that the short rate will rise during the term of the investment, leading to a decline in the investment's value.


As with any risky investment, an investor in bonds subject to market risk expects to earn a risk-free return (that is, the return from continuously investing at the short rate, whatever that may be) plus a risk premium, which could increase or decrease as the term of the investment increases. Thus, the spot rate for a particular term is composed of the return expected under the random process for the short rate up to the end of that term, plus a term premium, an additional return to compensate the investor for the interest rate risk of the investment. The term premium offered in the market depends on the aggregate risk preference of market participants, taking into account their natural preferences for securities that conform to their investment (term) needs.

Let  $r_t$  be the short rate at time  $t$ . Let  $D(t, T)$  be the price, at time  $t$ , of a discount bond paying one dollar at time  $T$ . Let  $s(t, T)$  be the spot rate at time  $t$  for the term  $(T - t)$ . Finally, let  $\phi(T - t)$  be the term premium (expressed as an annual excess rate of return) required by investors for a term of  $(T - t)$ . All rates are continuously compounded. We can then write,

$$
D(t, T) = \frac{1}{e^{s(t, T) \times (T - t)}} = \frac{1}{e^{\phi(T - t) \times (T - t)}} E\left[ \frac{1}{e^{\int_{t}^{T} r_{s} ds}} \right] \tag{1}
$$

The second term in the two-term expression above is a discount factor that reflects the expected return from investing continuously at the short rate for the term  $(T - t)$ . The first term is the additional discount factor that accounts for the return premium that investors require to compensate them for the market risk of investing for a term of  $(T - t)$ . The use of an integral in the expression for the expected short rate discount factor is necessary because the short rate is continuously changing over the bond's term.


From this description and formula, it may seem necessary to know the term premium for every possible term, in addition to knowing the random process for the short rate, in order to value a default-free discount bond. This is not the case, however. As in the pricing of a forward contract or option on a stock, we can use the mathematical sleight-of-hand known as risk-neutral valuation to find the relative value of a security that is derivative of the short rate.

The principle of risk-neutral valuation as it applies to bonds and other interest rate derivatives is that, regardless of how risk averse investors are, we can identify a set of spot rates that value discount bonds correctly relative to the rest of the market. We do not have to identify separately the term premium embedded in each spot rate in order to use it to discount future cash flows. This fact can be used to make the valuation of all interest rate derivatives easier by risk adjusting the term structure model; that is, by changing the probability distribution of the short rate so that the spot rate of every term is, under the new model, equal to the expected return from investing at the short rate over the same term. This is accomplished by redefining the model so that, instead of being a random process for the short rate, it is a random process for the short rate plus a function of the term premium. If we specify the process for  $r_t^*$  in such a way that

$$ r_{s}^{*} = r_{s} + \phi(s - t) + \phi^{\prime}(s - t) \times (s - t) \tag{2}
$$ at every future point in time  $s$  (accomplished by adjusting the rate of increase of  $r_{\mathrm{t}}$  upward) then


we can write,

$$
\begin{array}{l} D(t, T) = \frac{1}{e^{s(t, T) \times (T - t)}} \\ = E\left[ \frac{1}{e^{\int_{t}^{T} (r_{s} + \phi(T - t)) ds}} \right] = E\left[ \frac{1}{e^{\int_{t}^{T} r_{s}^{*} ds}} \right] \tag{3} \\ \end{array}
$$

By transforming the short rate process in this manner, we have created a process for a random variable which, when used to discount a certain future cash flow, gives an expected present value equal to the present value obtained by discounting that cash flow at the appropriate spot rate. It is important to note that this random variable is no longer the short rate, but something artificial that we might refer to as the risk-adjusted short rate.

The resulting risk-neutral model might be construed as a model for the true behavior of the short rate in an imaginary world of risk-neutral market participants, where there is no extra expected return to compensate investors for the extra price risk in bonds of longer maturity. This impression, while accurate, is not very informative. The important aspect of the risk-neutral model is that the term premiums, whatever their values, that exist in the marketplace are embedded in the interest rate process itself, so that the expected discounted value of a cash flow at the risk-adjusted short rate is equal to the discounted value of the cash flow at the spot rate.2

The value of the risk-neutral probability measure is that, under this parameterization, an interest-sensitive instrument's price can be estimated by averaging the present values of its cash flows, discounted at the short-term interest rates along each path of the short rate under which those cash flows occur. In contrast, valuing assets under the model before it was risk adjusted would require a more complicated discounting procedure that applied additional discount factors to the short rate paths to compensate for market risk; however, the price obtained under both approaches would be the same. For this reason, we use randomly generated scenarios from risk-neutral interest rate models for pricing.


To sum up, there is nothing magical about risk neutrality. There are any number of changes of variables we could make to a short rate process that would retain the structure of the model, but have a different (but equivalent) probability distribution for the new variable. We could change the measure to represent imaginary worlds in which market participants were risk seeking (negative term premiums), or more risk averse than in the real world; regardless, as long as we structured the discounting procedure properly we would always determine the same model price for an interest rate derivative. The specific change of variables that produces a risk-neutral model simply makes the algebra easier than the others, because one can ignore risk preferences.

## Realistic Probabilities: The Estimated Market Probability Measure

We have described why risk-neutral interest rate scenarios are preferred for pricing bonds and interest rate derivatives. However, it is important to note that risk-neutral scenarios are not appropriate for all purposes. For example, for scenario-based evaluation of portfolio strategies, realistic simulation is needed. And a computerized system for stress testing asset/liability strategies under adverse movements in interest rates is to actuaries what a wind tunnel is to aerospace engineers. The relevance of the information provided by the testing depends completely on the realism of the simulated environment. Stated differently, the test environment must be like the real environment; if not, the test results are not useful.

The realistic term structure process desired for this kind of stress testing must be distinguished from the risk-neutral term structure process used for pricing. The risk-neutral process generates scenarios in which all term premiums are zero. This process lacks realism; in the real world, term premiums are clearly not zero, as evidenced by the fact that the implied spot curve from Treasuries has been predominantly upward sloping. This predominantly upward slope reflects an expected return premium for bonds of longer maturity, although at times other configurations of buyer preferences can be inferred; for example, an inverted curve suggests that buyers demand an increasing premium for decreasing the term of their positions.


Thus, the user of an interest rate model must be careful. When generating scenarios for reserve adequacy testing, where the purpose is to examine the effect on a company's balance sheet of changes in the real (risk-averse) world, the user must not use the scenarios from a risk-neutral interest rate model.

## WHEN DO I USE EACH OF THE MODELING APPROACHES?

The two dimensions, risk-neutral versus realistic and arbitrage-free versus equilibrium, define four classes of modeling approaches. Each has its appropriate use.

### Risk-Neutral and Arbitrage-Free Model

The risk-neutral and arbitrage-free model is the most familiar form of an interest rate model for most analysts. The model has been risk adjusted to use for pricing interest rate derivatives, and its parameters have been interpolated from a set of current market prices rather than being statistically estimated from historical data. It is appropriately used for current pricing when the set of market prices is complete and reliable.

It is worth noting that, just because two models are each both risk neutral and arbitrage-free, we cannot conclude that they will give the same price for a particular interest rate derivative. Two arbitrage-free models will produce the same prices only for the instruments in a subset common to both sets of input data. The form of the model, and particularly the number of random factors underlying the term structure process, can make a large difference to valuations of the other instruments.


When the market data are sparse, the behavior of the model becomes important. For example, the value of a Bermudan or American swaption depends on the correlations among rates of different maturities. The swaption market is not liquid, nor are its prices widely disseminated, so there is no way to estimate a "term structure of correlations" that would allow a simple arbitrage-free model to interpolate reasonable swaption prices. In this case, a multifactor model that captures the nature of correlations among rates of different maturities, including the way that those correlations are influenced by the shape of the term structure, will perform better for pricing swaptions than will a one-factor model. Models with good statistical fit to historical correlation series are needed for Bermudan or American options on floating-rate notes, caps, and floors for the same reason. Model behavior is also important for long-dated caps and floors, where there is a lack of reliable data for estimating the "term structure of volatilities" beyond the 5-year tenor.

### Risk-Neutral and Equilibrium

There are a number of sources of "error" in quotations of the market prices of bonds, so that the discount rates that exactly match a set of price quotations may contain bond-specific effects, corrupting the pricing of other instruments. These sources, defined as any effects on a bond's market price apart from the discount rates applying to all market instruments, include differences in liquidity, differential tax effects, bid-ask spreads (the bid-ask spread defines a range of possible market prices, implying a range of possible discount rates), quotation stickiness, timeliness of data, the human element of the data collection and reporting process, and market imperfections.

Since arbitrage-free models accept all input prices as given, without reference to their reasonability or comparability to other prices in the input data, they impound in the pricing model any bond-specific effects. In contrast, equilibrium models capture the global behavior of the term structure over time, so security-specific effects are treated in the appropriate way, as noise. For this reason, risk-neutral equilibrium models can have an advantage over arbitrage-free models in that equilibrium models are not overly sensitive to outliers. Also, for current pricing (as distinguished from horizon pricing, described below), equilibrium models can be estimated from historical data when current market prices are sparse. Thus, a risk-neutral and equilibrium model can be used for pricing when the current market prices are unreliable or unavailable.

For most standard instruments, circumstances rarely prevail such that the current market prices needed for estimating an arbitrage-free model are not available. However, such circumstances always prevail for horizon pricing, where the analyst calculates a price for an instrument in some assumed future state of the market. Since arbitrage-free models require a full set of market prices as input, arbitrage-free models are useless for horizon pricing, the future prices being unknown. Thus, the horizon prices obtained under the different values of the state variables in an equilibrium model provide an analytical capability that arbitrage-free models lack.

## USING MODELS OF BORROWER BEHAVIOR WITH A RISK-NEUTRAL INTEREST RATE MODEL

Often, an interest rate model is not enough to determine the value of a fixed-income security or interest rate derivative. To value mortgage-backed securities or collateralized mortgage obligations (CMOs), one also needs a prepayment model. To value bonds or interest rate derivatives with significant credit risk, one needs a model of default and recovery. To value interest-sensitive annuities and insurance liabilities, one needs models of lapse and other policyholder behaviors. In all of these behavioral models, the levels of certain interest rates are important explanatory variates, meaning that, for example, the prepayment speeds in a CMO valuation system are driven primarily by the interest rate scenarios.


Common practice has been to estimate parameters for prepayment, default, and lapse models using regression on historical data about interest rates and other variables. Then, in the valuation process, the analyst uses the interest rates from a set of risk-neutral scenarios to derive estimates for the rates of prepayment, default, or lapse along those scenarios. This borrower behavior information is combined with the interest rates to produce cash flows and, ultimately, prices. Unfortunately, this practice leads to highly misleading results.

The primary problem here is that the regressions have been estimated using historical data, reflecting the real probability distributions of borrower behavior, and then used with scenarios from a risk-neutral model, with an artificial probability distribution. The risk-neutral model is not a process for the short rate; rather, it is a process for the risk-adjusted short rate. Since the real world is risk averse, the risk-adjusted short rate usually has an expected value much higher than the market's forecast of the short rate; the extra premium for interest rate risk permits one to value optionable default-free bonds by reference to the forward rate curve.

The same procedure can be applied to corporate bonds. Corporate bonds are exposed to default risk in addition to interest rate risk. One may construct a behavioral model of failure to pay based on historical data about default rates and recovery, perhaps using bond ratings as explanatory variates in addition to interest rates. One can then attempt to compute the present value of a corporate bond by finding the expected value of the discounted cash flows from the two models in combination: a risk-neutral model of the Treasury curve, and a realistic model of default behavior as a function of interest rates and other variables. Because the cash flows of the bond, adjusted for default, will be less than the cash flows for a default-free bond, the model will price the corporate bond at a positive spread over the Treasury curve.


This spread will almost certainly be substantially too low in comparison to the corporate's market price. The reason for this is that, just as investors demand a return premium for interest rate risk, they demand an additional return for default risk. The application of an econometrically estimated model of default to pricing has ignored the default risk premium encapsulated in the prices of corporate bonds. Market practice has evolved a simple solution to this; one adjusts the default model to fit (statistically, in the equilibrium case; exactly, in the arbitrage-free case) the current prices of active corporates in the appropriate rating class. By using the market prices of active corporates to embed the default risk premium in the model, the analyst is really applying the principle of risk-neutral valuation to the default rate. The combined model of risk-adjusted interest rates and risk-adjusted default rates now discounts using the corporate bond spot rate curve instead of the Treasury spot curve.

The same technique of risk neutralizing a model by embedding information about risk premiums derived from current market prices can be applied to prepayment models as well. The results of a prepayment model can be risk adjusted by examining the prices of active mortgage-backed securities. Unfortunately, one can only guess at the appropriate expected return premium for insurance policy lapse risk or mortality risk. Nevertheless, these quantities should be used to "risk neutralize" these models of behavior to the extent practical. The integrity of risk-neutral valuation depends on risk adjusting all variables modeled; otherwise, model prices will be consistently overstated.

A final note can be made in this regard about option-adjusted spread (OAS). OAS can be understood in this context as a crude method to risk adjust the pricing system to reflect all risk factors not explicitly modeled.


### Realistic and Arbitrage-Free

A realistic, arbitrage-free model starts by exactly matching the term structure of interest rates implied by a set of market prices on an initial date, then evolves that curve into the future according to the realistic probability measure. This form of a model is useful for producing scenarios for evaluation of hedges or portfolio strategies, where it is important that the initial curve in each scenario exactly matches current market prices. The difficulty with such an approach lies in the estimation; realistic, arbitrage-free models are affected by confounding, where it is impossible to discriminate between model misspecification error and the term premiums. Since the model parameters have been set to match market prices exactly, without regard to historical behavior, too few degrees of freedom remain to estimate both the term premiums and an error term. Unless the model perfectly describes the true term structure process (that is, the time-dependent parameters make the residual pricing error zero at all past and future dates, not just on the date of estimation), the term premiums cannot be determined. The result is that realistic, arbitrage-free models are not of practical use.

### Realistic and Equilibrium

Since the arbitrage-free form of a realistic model is not available, the equilibrium form must be used for stress testing, Value-at-Risk (VAR) calculations, reserve and asset adequacy testing, and other uses of realistic scenarios.

Some analysts express concern that, because the predicted initial curve under the equilibrium model does not perfectly match observed market prices, then the results of scenario testing will be invalid. However, the use of an equilibrium form does not require that the predictions be used instead of the current market prices as the first point in a scenario. The scenarios can contain the observed curve at the initial date and the conditional predictions at future dates.

Table 1 When to Use Each of the Model Types

<table><tr><td>Model Classification</td><td>Risk Neutral</td><td>Realistic</td></tr><tr><td>Arbitrage-free</td><td>·Current pricing, where input data (market prices) are reliable</td><td>·Unusable, since term premium cannot be reliably estimated</td></tr><tr><td>Equilibrium</td><td>·Current pricing, where inputs (market prices) are unreliable or unavailable</td><td>·Stress testing
·Reserve and asset adequacy testing</td></tr><tr><td></td><td>·Horizon pricing</td><td></td></tr></table>

Table 2 Four Forms of the Black-Karasinski Model

<table><tr><td>Model Classification</td><td>Risk Neutral</td><td>Realistic</td></tr><tr><td rowspan="4">Arbitrage-free</td><td>du = κ(t) (θ(t) - u) dt + σ(t) dz</td><td>du = κ(t) (θ(t) - λ(u,t) - u) dt + σ(t) dz</td></tr><tr><td>• u0 and θ(t) matched to bond prices</td><td>• u0 and θ(t) matched to bond prices</td></tr><tr><td>• κ(t) and σ(t) matched to cap or option prices</td><td>• κ(t) and σ(t) matched to cap or option prices</td></tr><tr><td></td><td>• λ(u,t) cannot be reliably estimated</td></tr><tr><td rowspan="3">Equilibrium</td><td>du = κ(θ - u) dt + σ dz</td><td>du = κ(θ - λ(u) - u) dt + σ dz</td></tr><tr><td>• u0 statistically fit to bond prices</td><td>• u0 statistically fit to bond prices</td></tr><tr><td>• κ,θ,σ historically estimated</td><td>• κ,θ,σ,λ(u) historically estimated</td></tr></table> This does not introduce inconsistency, because the equilibrium model is a statistical model of term structure behavior; by taking this approach we explicitly recognize that its predictions will deviate from observed values by some error. In contrast, the use of an arbitrage-free, realistic model implicitly assumes that the model used for the term structure process is absolutely correct.


## Summary of the Four Essential Classes

Table 1 summarizes the uses of the four Essential Classes of interest rate models. Table 2 shows the mathematical form of a commonly used interest rate model, disseminated by Black and Karasinski (1991), under each of the modeling approaches and probability measures. In each equation,  $u$  is the natural logarithm of the short rate.

In the above models,  $\sigma$  is the instantaneous volatility of the short rate process,  $\kappa$  is the rate of mean reversion,  $\theta$  is the mean level to which the natural logarithm of the short rate is reverting, and  $\lambda$  represents the term premium demanded by the market for holding bonds of longer maturity. The value of the state variable  $u$  at the time of estimation is represented by  $u_{0}$ .


The realistic model forms can be distinguished from the risk-neutral forms by the presence of the term premium function  $\lambda$ . The difference between the arbitrage-free forms and the equilibrium forms can be discerned in that the parameters of the arbitrage-free forms are functions of time.

## KEY POINTS

- Models of the term structure of interest rates are important in financial modeling.
- The most commonly misconstrued aspects of interest rate models are important to understand to make the correct choice between an arbitrage-free or equilibrium model, and the correct choice between risk-neutral or realistic parameterizations of a model.
- A common confusion is the result of implicitly equating the terms "arbitrage-free" and "risk neutral."
- Arbitrage-free models take certain market prices as given and adjust model parameters in order to fit the prices exactly.

- Equilibrium term structure models are truly models of the term structure process because rather than interpolating among prices at one particular point in time, they attempt to capture the behaviors of the term structure over time.
- The principle of risk-neutral valuation as it applies to bonds and other interest rate derivatives is that, regardless of how risk averse investors are, a set of spot rates that value discount bonds correctly relative to the rest of the market can be identified.
- The two dimensions, risk-neutral versus realistic and arbitrage-free versus equilibrium, define four classes of modeling approaches.
- The risk-neutral and arbitrage-free model is appropriately used for current pricing when the set of market prices is complete and reliable.
- Because equilibrium models capture the global behavior of the term structure over time, so security-specific effects are treated as noise, a risk-neutral and equilibrium model can be used for pricing when the current market prices are unreliable or unavailable.
- For several reasons, realistic, arbitrage-free models are not of practical use.

## NOTES

1. This is not the way that risk neutrality is usually presented. Typically, writers have focused on the stochastic calculus, using Girsanov's theorem to justify a change of probability measure to an equivalent (i.e., an event has zero probability under one measure if and only if it has zero probability under the other measure) martingale measure. This complexity and terminology can obscure the simple intuition that we are making a change of variables in order to restate the problem in a more easily solvable form. For this approach to explaining risk neutral valuation, see Courtadon (1982) or Harrison and Pliska (1981).


2. Note that this is not the same as the expectations hypothesis of the term structure, which holds that the term structure's shape is determined solely by the market's expectations about future rates. The expectations hypothesis is a theory of the real term structure process, whereas the risk-neutral approach is an analytical convenience that takes no position about the truth or falsity of any term structure theory.

## REFERENCES

Black, F., and Karasinski, P. (1991). Bond and option pricing when short rates are lognormal. Financial Analysts Journal 4: 52-59.
Courtadon, G. (1982). The pricing of options on default-free bonds. Journal of Financial and Quantitative Analysis 17: 75-100.
Harrison, J., and Pliska, J. (1981). Martingales and stochastic integrals in the theory of continuous trading. Stochastic Processes and Their Applications 11: 215-260.
