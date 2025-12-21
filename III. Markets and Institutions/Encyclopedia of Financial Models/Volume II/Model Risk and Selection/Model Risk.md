---
title: "Model Risk"
parent_directory: "Encyclopedia of Financial Models/Volume II/Model Risk and Selection"
formatted: "2025-12-21 03:00:00 PM"
formatter_model: "grok-code-fast-1"
cli_tool: "opencode"
primary_tags:
  - "model risk"
  - "pricing models"
  - "value at risk"
secondary_tags:
  - "stochastic processes"
  - "parameter calibration"
  - "risk factors"
  - "model specification"
  - "endogenous model risk"
  - "implementation risk"
  - "stress testing"
  - "back testing"
  - "financial risk management"
cssclasses: academia
---

# Model Risk

KEVIN DOWD, PhD

Partner, Cobden Partners, London

Abstract: Model risk is the risk of error in pricing or risk-forecasting (such as value at risk, or VaR) models. It arises in part because any model involves simplification and calibration, and both of these require subjective judgments that are inevitably open to error. Model risk can also arise where a model is used inappropriately. Model risk is therefore an inescapable consequence of model use, and there is abundant anecdotal and other evidence that it is a major problem, especially for VaR models. However, there are also many ways in which risk managers and financial institutions can manage this problem.

This entry examines the subject of model risk. Loosely speaking, model risk is the risk of error in the valuations produced by a pricing model or in the estimated risk measures produced by a risk model. The nature of model risk and its diverse causes and manifestations are examined. The entry also briefly addresses the scale of the problem and the dangers it entails, and then goes on to discuss ways in which model risk can be managed.

```d2
direction: down
understand_securities: Understand securities and markets {
  shape: rectangle
}
isolate_variables: Isolate important variables {
  shape: rectangle
}
decide_exogenous: Decide exogenous variables {
  shape: rectangle
}
decide_observable: Decide observable variables {
  shape: rectangle
}
ensure_features: Ensure model captures key features {
  shape: rectangle
}
solve_model: Solve the model {
  shape: rectangle
}
program_model: Program the model {
  shape: rectangle
}
calibrate_model: Calibrate parameters {
  shape: rectangle
}
test_model: Test the model {
  shape: rectangle
}
implement_model: Implement and evaluate {
  shape: rectangle
}
log_activities: Keep log of activities {
  shape: rectangle
}

understand_securities -> isolate_variables -> decide_exogenous -> decide_observable -> ensure_features -> solve_model -> program_model -> calibrate_model -> test_model -> implement_model -> log_activities
```

## MODELS AND MODEL RISK

A model can be defined as "a simplified description of reality that is at least potentially useful in decision-making" (Geweke, 2005, p. 7). A model attempts to identify the key features of whatever it is meant to represent and is, by its very nature, a highly simplified structure. We should therefore not expect any model to give a perfect answer: Some degree of error is to be expected, and we can think of this risk of error as a form of model risk.

However, the term model risk is more subtle than it looks, and not all output errors are due to model inadequacy. For example, simulation methods generally produce errors due to sampling variation, so even the best simulation-based model will produce results affected by random noise. Conversely, models that are theoretically inappropriate can sometimes provide good results. The most obvious cases in point are the well-known "holes in Black-Scholes": Simple option pricing models often work well even when some of the assumptions on which they are based are known to be invalid. They work well not because they are accurate, but because those who use them are aware of their limitations and use them discerningly.

In finance, we are concerned with both pricing (or valuation) models and risk (or VaR) models. The former are models that enable us to price a financial instrument, and with these model risk boils down to the risk of mispricing. These models are typically used on a standalone basis and it is often very important that they give precise answers: Mispricing can lead to rapid and large arbitrage losses. Their exposure to this risk depends on such factors as the complexity of the position, the presence or otherwise of unobserved variables (e.g., such as volatilities), interactions between risk factors, the use of numerical approximations, and so on.

Risk models are models that forecast financial risks or probabilities. These models are exposed to many of the same problems as pricing models, but all are often also affected by the difficulties of trying to integrate risks across different positions or business units, and this raises a host of issues (e.g., aggregation problems, potential inconsistencies across constituent positions or models, etc.) that do not (typically) arise in stand-alone pricing models. So risk models are exposed to more sources of model risk than pricing models typically are. However, with risk models there is far less need for accuracy: Errors in risk estimates do not lead directly to arbitrage losses, and the old engineering principle applies that the end output is only as good as the weakest link in the system. With risk models, we therefore want to be approximate and right, and efforts to achieve high levels of precision would be pointless because any reported precision would be spurious.

We are particularly concerned in this entry with how models can go wrong, and to appreciate these problems it helps to understand how our models are constructed in the first place. To get to know our models we should:

- Understand the securities involved and the markets in which they are traded.
- Isolate the most important variables and separate out the causal variables (or exogenous variables) from the caused (or endogenous) variables.
- Decide which exogenous variables are deterministic and which are stochastic or random, decide how the exogenous variables are to be modeled, and decide how the exogenous variables affect the endogenous ones.

- Decide which variables are observable or measurable and which are not; decide how the former are measured, and consider whether and how the unobservable variables can be proxied or implicitly solved from other variables.
- Try to ensure that the model captures all key features of the problem at hand, but also has no unnecessary complexity.
- Consider how the model can be solved and look for the simplest possible solutions. We should also consider the possible benefits and drawbacks of using approximations instead of exact solutions.
- Program the model, taking account of programming considerations, computational time, and so on.
- Calibrate the model using suitable methods: For example, we might estimate parameters using maximum likelihood methods and then adjust them using subjective judgments about factors such as changing market conditions that might not be fully reflected in our data set.
- Test the model using data not used to calibrate the model.
- Implement the model, regularly evaluate its performance, and identify its strengths and weaknesses.
- Keep a log of all these activities and their outcomes.

## SOURCES OF MODEL RISK Incorrect Model Specification

One of the most important sources of model risk is incorrect model specification, and this can manifest itself in many ways:

- Stochastic processes might be misspecified. We might assume that a stochastic process follows a geometric Brownian motion when it is in fact heavy-tailed, we might fit a symmetric distribution to skewed data, and so forth. It is very easy to misspecify stochastic processes, because the "true" stochastic process is very difficult to identify and it is impossible in practice to distinguish between a "true" process and a similar but false alternative. The misspecification of stochastic processes can lead to major errors in estimates of risk measures: The classic example is where we incorrectly assume normality in the presence of heavy tails, an error that can lead to major underestimates of VaR and other risk measures.

- Incorrect calibration of parameters. Even if we do manage to identify the "true" model, the model might be calibrated with incorrect parameter values. Parameters might be estimated with error, not kept up to date, estimated over inappropriate sample periods, and so forth. This problem is often referred to as parameter risk, and it arises everywhere in risk management because it is practically impossible to determine "true" parameter values. Besides leading to major errors in risk estimates, incorrect calibration can also lead to major losses if the models are used to price traded instruments. A good example was the £90 million loss made by the NatWest Bank from 1995 to 1997, where a trader had fed his own (artificially high) estimates of volatility into a model used to price long-dated over-the-counter (OTC) interest rate options. We can also get problems when correlations unexpectedly polarize in a crisis: In such cases, the portfolio loses much of its effective diversification, and the "true" risks taken can be much greater than estimates based on earlier correlations might suggest.

- Missing risk factors and misspecified relationships. We might ignore stochastic volatility or fail to consider enough points across the term structure of interest rates, ignore background risk factors such as macroeconomic ones, or we might misspecify important relationships (e.g., by ignoring correlations).
- Ignoring of transactions costs, liquidity, and crisis factors. Many models ignore transactions costs and assume that markets are perfectly liquid. Such assumptions are very convenient for modelling purposes, but can lead to major errors where transactions costs are significant, where market liquidity is limited, or where a crisis occurs. These sorts of problems were highlighted by the difficulties experienced by portfolio insurance strategies in the October 1987 crash—where strategies predicated on dynamic hedging were unhinged by the inability to unwind positions as the market fell. The failure to allow for illiquidity led to much larger losses than the models anticipated—a classic form of model risk.

There is empirical evidence that model misspecification risk is a major problem. To give a couple of examples: Hendricks (1996) investigated differences between alternative VaR estimation procedures applied to 1,000 randomly selected simple foreign exchange portfolios, finding that these differences were sometimes substantial; more alarmingly, a famous study by Beder 1995 examined eight common VaR methodologies used by a sample of commercial institutions applied to three hypothetical portfolios, and among other worrying results found that alternative VaR estimates for the same portfolio could differ by a factor of up to 14. Some further evidence is provided by Berkowitz and O'Brien (2001) who examined the VaR models used by six leading U.S. financial institutions. Their results indicated that these models can be highly inaccurate: Banks sometimes experienced high losses very much larger than their models predicted, and this suggests that these models are poor at dealing with heavy tails or extreme risks. Their results also suggest that banks' structural models embody so many approximations and other implementation compromises that they lose any edge over much simpler models such as generalized autoregressive conditional heteroskedasticity (GARCH) ones. The implication is that financial institutions' risk models are very exposed to model risk—and one suspects many risk managers are not aware of the extent of the problem.

## Incorrect Model Application

Model risk can also arise because a good model is incorrectly applied. To quote Emanuel Derman:

There are always implicit assumptions behind a model and its solution method. But human beings have limited foresight and great imagination, so that, inevitably, a model will be used in ways its creator never intended. This is especially true in trading environments, where not enough time can be spent on making interfaces fail-safe, but it's also a matter of principle: you just cannot foresee everything. So, even a "correct" model, "correctly" solved, can lead to problems. The more complex the model, the greater this possibility. (Derman, 1997, p. 86)

One can give very many instances of this problem: We might use the wrong model in a particular context (e.g., we might use a Black-Scholes model for pricing options when we should have used a stochastic volatility model, etc.); we might have initially had the right model, but have fallen behind best market practice and not kept the model up to date, or not replaced it when a superior model became available; we might run Monte Carlo simulations with a poor random number generator or an insufficient number of trials, and so on. We can also get "model creep," where a model is initially designed for one type of problem and performs well on that problem, but is then gradually applied to more diverse situations to which it is less suited or not suited at all. A perfectly good model can then end up as a major liability not because there is anything wrong with it, but because users don't appreciate its limitations.

## Implementation Risk

Model risk also arises from the ways in which models are implemented. No model can provide a complete specification of model implementation in every conceivable circumstance because of the very large number of possible instruments and markets, and because of their varying institutional, statistical, and other properties. However complete the model, implementation decisions still need to be made about such factors as valuation (e.g., mark to market versus mark to model, whether to use the mean bid-ask spread, etc.), whether and how to clean data, how to map instruments, how to deal with legacy systems, and so on.


The possible extent of implementation risk is illustrated by the results of a study by Marshall and Siegel (1997). They sought to quantify implementation risk by looking at differences between how various commercial systems applied the RiskMetrics variance-covariance approach to specified positions based on a common set of assumptions (that is, a one-day holding period, a  $95\%$  VaR confidence level, delta-valuation of derivatives, RiskMetrics mapping systems, etc.). They found that any two sets of VaR estimates were always different, and that VaR estimates could vary by up to nearly  $30\%$  depending on the instrument class; they also found these variations were in general positively related to complexity: The more complex the instrument or portfolio, the greater the range of variation of reported VaRs. These results suggested that:

[A] naive view of risk assessment systems as straightforward implementations of models is incorrect. Although software is deterministic (i.e., given a complete description of all the inputs to the system, it has well-defined outputs), as software and the embedded model become more complex, from the perspective of the only partially knowledgeable user, they behave stochastically.... Perhaps the most critical insight of our work is that as models and their implementations become more complex, treating them as entirely deterministic black boxes is unwise, and leads to real implementation and model risks. (Marshall and Siegel, 1997, pp. 105-106)

## Endogenous Model Risk

There is also a particularly subtle and invious form of model risk that arises from the ways in which traders or asset managers respond to the models themselves: Traders or asset managers will "game" against the model. Traders are likely to have a reasonable idea of the errors in the parameters—particularly volatility or correlation parameters—used to estimate VaR, and such knowledge will give the traders an idea of which positions have under- and overestimated risks. If traders face VaR limits or face risk-adjusted remuneration with risks specified in VaR terms, they will therefore have an incentive to seek out such positions and trade them. To the extent they do, they will take on more risk than suggested by VaR estimates, which will therefore be biased downward. Indeed, VaR estimates are likely to be biased even if traders do not have superior knowledge of underlying parameter values. The reason for this is that if a trader uses an estimated variance-covariance matrix to select trading positions, then he or she will tend to select positions with low estimated risks, and the resulting changes in position sizes mean that the initial variance-covariance matrix will tend to underestimate the resulting portfolio risk. As Shaw nicely puts it:


[M]any factor models fail to pick up the risks of typical trading strategies which can be the greatest risks run by an investment bank. According to naïve yield factor models, huge spread positions between on-the-run bonds and off-the-run bonds are riskless! According to naïve volatility factor models, hedging one year (or longer dated) implied volatility with three month implied volatility is riskless, provided it is done in the "right" proportions-i.e., the proportions built into the factor model! It is the rule, not the exception, for traders to put on spread trades which defeat factor models since they use factor type models to identify richness and cheapness! (Shaw, 1997, p. 215; his emphasis)

## Other Sources of Model Risk

There are also other sources of model risk. Programs might have errors or bugs in them, simulation methods might use poor random number generators or suffer from discretization errors, approximation routines might be inaccurate or fail to converge to sensible solutions, rounding errors might add up, and so on. We can also get problems when programs are revised by people who did not originally write them, when programs are not compatible with user interfaces or other systems (e.g., datafeeds), when programs become complex or hard to read (e.g., when programs are rewritten to make them computationally more efficient but then become less easy to follow). We can also get simple blunders. Derman (1997, p. 87) reported the example of a convertible bond model that was good at pricing many of the options features embedded in convertible bonds, but sometimes discounted the number of coupon payments left to maturity.

Finally, models can give incorrect answers because poor data are fed into them—"garbage in, garbage out," as the saying goes. Data problems can arise from many sources: from the way data are constructed (e.g., whether we mark to market or mark to model, whether we use actual trading data or end-of-day data, how we deal with bid-ask spreads, etc.), from the way time is handled (e.g., whether we use calendar time, trading time, how we deal with holidays, etc.), from the way in which data are cleansed or standardized, from data being nonsynchronous, and from many other sources.

## MANAGING MODEL RISK Some Guidelines for Risk Managers

Given that risk managers can never eliminate model risk, the only option left is to learn to live with it and, hopefully, manage it. Practitioners can do so in a number of ways:

- Be aware of model risk. First and foremost, practitioners should simply be aware of it, and be aware of the limitations of the models they use. They should also be aware of the comparative strengths and weaknesses of different models, be knowledgeable of which models suit which problems, and be on the lookout for models that are applied inappropriately.

- Identify, evaluate, and check key assumptions. Users should explicitly set out the key assumptions on which a model is based, evaluate the extent to which the model's results depend on these assumptions, and check them as much as possible (e.g., using statistical tests).
- Choose the simplest reasonable model. Exposure to model risk is reduced if practitioners always choose the simplest reasonable model for the task at hand. Occam's razor applies just as much in model selection as in anything else: Unnecessary complexity is never a virtue. Whenever we choose a more complex model over a simpler one, we should always have a clear reason for doing so.
- Don't ignore small problems. Practitioners should resist the temptation to explain away small discrepancies in results and sweep them under the rug. Small discrepancies are often good warning signals of larger problems that will manifest themselves later if they are not sorted out.
- Test models against known problems. It is always a good idea to check a model on simple problems to which one already knows the answer, and many problems can be distilled to simple special cases that have known answers. If the model fails to give the correct answer to a problem whose solution is already known, then we immediately know that there must be something wrong with it.
- Plot results and use nonparametric statistics. Graphical outputs can be extremely revealing, and simple histograms or plots often show up errors that might otherwise be very hard to detect. For example, a plot might have the wrong slope or shape or have odd features such as kinks that flag an underlying problem. Summary statistics and simple nonparametric tests can also be useful for helping to impart a feel for data and results.

- Back-test and stress-test the model. Practitioners should evaluate model adequacy using stress tests and back tests.
- Estimate model risk quantitatively. Where feasible, practitioners should seek to estimate model risk quantitatively (e.g., using simulation methods). However, it helps to keep in mind that any quantitative estimate of model risk is almost certainly an underestimate because not all model risk is quantifiable.
- Reevaluate models periodically. Models should be re-calibrated and reestimated on a regular basis, and the methods used should be kept up to date.

## Some Institutional Guidelines

Financial institutions themselves can also combat model risk through appropriate institutional devices. One defense is a sound system to vet models before they are approved for use and then periodically review them. A good model-vetting procedure is proposed by Crouhy et al. (2001, pp. 607-608) and involves the following four steps:

1. Documentation. The risk manager should ask for a complete specification of the model, including its mathematics, components, computer code, and implementation features (e.g., numerical methods and pricing algorithms used). The information should be in sufficient detail to enable the risk manager to reproduce the model from the information provided.
2. Soundness. The risk manager should check that the model is a reasonable one for the instrument(s) or portfolio concerned.
3. Benchmark modeling. The risk manager should develop a benchmark model and test it against well-understood approximation or simulation methods.
4. Check results and test the proposed model. The final stage involves the risk manager using the benchmark model to check the performance of the proposed model. The model should also be checked for zero-arbitrage properties such as put-call parity, and should then be stress tested to help determine the range of parameter values for which it will give reasonable estimates.

All these stages should be carried out free of undue pressures from the front office, and traders should not be allowed to vet their own pricing models. It is also important to keep good records, so each model should be fully documented in the middle (or risk) office. Risk managers should have full access to the model at all times, as well as access to real trading and other data that might be necessary to check models and validate results. The ideal should be to give the middle office enough information to be able to check any model or model results at any time, and do so using appropriate (that is, up to date) data sets. This information set should include a log of model performance with particular attention to any problems encountered and what (if anything) has been done about them. There should also be a periodic review (as well as occasional spot check) of the models in use, to ensure that model calibration is up to date and that models are upgraded in line with market best practice, and to ensure that obsolete models are identified as such and taken out of use. Such risk audits should also address not just the risk models, but all aspects of the firm's risk management. And, of course, all these measures should take place in the context of a strong and independent risk oversight or middle office function.

## KEY POINTS

- A model attempts to identify the key features of whatever it is meant to represent and is, by its very nature, a highly simplified structure.
- In financial modeling, the concern is with both pricing (or valuation) models and risk (or VaR) models. The risk of error in pricing or risk-forecasting models is referred to as model risk.

- Model risk is an inescapable consequence of model use and affects both pricing models and VaR models.
- The main sources of model risk include incorrect specification, incorrect application, implementation risk, and the problem of endogenous model risk where traders "game" against the model.
- There are ways in which practitioners can manage model risk. These include (1) recognizing model risk, (2) identifying, evaluating, and checking the model's key assumptions, (3) selecting the simplest reasonable model, (4) resisting the temptation to ignore small discrepancies in results, (5) testing the model against known problems, (6) plotting results and employing nonparametric statistics, (7) back-testing and stress-testing the model, (8) estimating model risk quantitatively, and (9) reevaluating models periodically.

## REFERENCES

Beder, T. (1995). VaR: Seductive but dangerous. Financial Analysts Journal 51, 5: 12-24.
Black, F. (1992). How to use the holes in Black-Scholes. In R. Kolb (ed.), The Financial Derivatives Reader (pp. 198-204). Miami: Kolb Publishing.
Berkowitz, J., and O'Brien, J. (2002). How accurate are value-at-risk models at commercial banks? Journal of Finance 57, 3: 1093-1112.
Crouhy, M., Galai, D., and Mark, R. (2001). Risk Management. New York: McGraw-Hill.
Derman, E. (1997). Model risk. In S. Grayling (ed.), VaR—Understanding and Applying Value-at-Risk (pp. 83-88). London: Risk Publications.
Derman, E. (2004). My Life as a Quant: Reflections on Physics and Finance. Hoboken, NJ: John Wiley & Sons.
Dowd, K. (2005). Measuring Market Risk, 2nd ed. Chichester: John Wiley & Sons.
Geweke, J. (2005). Contemporary Bayesian Econometrics and Statistics. Hoboken, NJ: John Wiley & Sons.

Ju, X., and Pearson, N. D. (1999). Using value-at-risk to control risk taking: How wrong can you be? Journal of Risk 1, 2: 5-36.
Kato, T., and Yoshiba, T. (2000). Model risk and its control. Bank of Japan Institute for Monetary and Economic Studies Discussion Paper No. 2000-E-15.
