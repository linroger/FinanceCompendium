
# Structural Models in Credit Risk Modeling

ABEL ELIZALDE, PhD

Credit Derivatives Strategy, J.P. Morgan

Abstract: Structural models and reduced-form models are the two primary types of credit risk models that seek to statistically describe default processes. Structural models use the evolution of firms' structural variables, such as asset and debt values, to model the time of default. In contrast, reduced-form models do not consider structural variables in an explicit manner when modeling default processes; instead, they model default as an exogenously driven process. Structural models include first passage models, liquidity process models, and state dependent models.

In this entry we review the structural approach for credit risk modeling, both considering the case of a single firm and the case with default dependencies between firms. In the single firm case, we review the Merton (1974) model and first passage models, examining their main characteristics and extensions. Liquidation process models extend first passage models to account for the possibility of a lengthy liquidation process, which might or might not end up in default. Finally, we review structural models with state-dependent cash flows (recession vs. expansion) or debt coupons (rating-based). The estimation of structural models is also addressed in this entry, covering the different ways proposed in the literature. Finally, we present some approaches to model default dependencies between firms within the structural approach. These approaches account for two types of default correlations: cyclical default correlation and contagion effects.

# REVIEW OF STRUCTURAL MODELS

Structural models use the evolution of firms' structural variables, such as asset and debt values, to determine the time of default. Merton's model (1974) was the first modern model of default and is considered the first structural model. In Merton's model, a firm defaults if, at the time of servicing the debt, its assets are below its outstanding debt. A second approach, within the structural framework, was introduced by Black and Cox (1976). In this approach defaults occur as soon as the firm's asset value falls below a certain threshold. In contrast to the Merton approach, default can occur at any time.

Reduced form models do not consider the relation between default and firm value in an explicit manner. In contrast to structural models, the time of default in intensity models is not determined via the value of the firm, but it is the first jump of an exogenously given jump process. The parameters governing the default hazard rate are inferred from market data.


Structural default models provide a link between the credit quality of a firm and the firm's economic and financial conditions. Thus, defaults are endogenously generated within the model instead of exogenously given as in the reduced approach. Another difference between the two approaches refers to the treatment of recovery rates: Whereas reduced models exogenously specify recovery rates, in structural models the value of the firm's assets and liabilities at default will determine recovery rates.

The structural literature on credit risk starts with the paper by Merton (1974), who applies the option pricing theory developed by Black and Scholes (1973) to the modeling of a firm's debt. In Merton's model, the firm's capital structure is assumed to be composed by equity and a zero-coupon bond with maturity  $T$  and face value of  $D$ . The firm's equity is simply a European call option with maturity  $T$  and strike price  $D$  on the asset value and, therefore, the firm's debt value is just the asset value minus the equity value. This approach assumes a very simple and unrealistic capital structure and implies that default can only happen at the maturity of the zero-coupon bond.

Black and Cox (1976) introduced the first of the so-called first passage models (FPM). First passage models specify default as the first time the firm's asset value hits a lower barrier, allowing default to take place at any time. When the default barrier is exogenously fixed, as in Black and Cox (1976) and Longstaff and Schwartz (1995), it acts as a safety covenant to protect bondholders. Alternatively it can be endogenously fixed as a result of the stockholders' attempt to choose the default threshold that maximizes the value of the firm.2

Structural models have considered interest rates both as nonstochastic processes and as stochastic processes.

In first passage models, by definition, default occurs the first time the asset value goes below a certain lower threshold, that is, the firm is liquidated immediately after the default event. In contrast with first passage models, a new set of models has been put forward, supported by recent theoretical and empirical research, where a default event does not immediately cause liquidation but it represents the beginning of a process, the liquidation process, which might or might not cause liquidation after it is completed. This practice is consistent, for example, with Chapter 11 of the U.S. Bankruptcy Law, where firms filing for bankruptcy are granted a court-supervised grace period (up to several years) aimed at sorting out their financial problems in order to, if possible, avoid liquidation. We label those models liquidation process models (LPM).

State dependent models (SDM) represent, together with LPM, two recent efforts to incorporate into structural models different real-life phenomena. Although theoretically they make good sense, they lack empirical research testing their performance. SDM assume that some of the parameters governing the firm's ability to generate cash flows or its funding costs are state dependent, where states can represent the business cycle (recession vs. expansion) or the firm's external rating.

After the single firm case, we review some structural models for default correlations, in order to account for both cyclical default correlation as well as credit risk contagion effects. We will finish the default correlation section mentioning the so-called factor models.

We concentrate on the review of the dynamics of the processes that generate the default times, without paying attention to the valuation formulas for defaultable bonds that each model generates. The aim of this entry is to serve as an introduction and guide to the literature of structural credit risk models. We provide an extensive list of references for each model specification and possible extensions or related papers.

# SINGLE FIRM

We denote the physical and risk-neutral probability measures as  $\bar{\mathbf{P}}$  and  $\mathbf{P}$  respectively, and assume an arbitrage-free market. Unless otherwise stated, all probabilities and expectations are taken under the risk-neutral measure. The model for the default-free term structure of interest rates is given by a short-rate process  $r_t$ .

# Merton's Model

Merton (1974) makes use of the Black and Scholes (1973) option pricing model to value corporate liabilities. This is a straightforward application only if we adapt the firm's capital structure and the default assumptions to the requirements of the Black-Scholes model. Let us assume that the capital structure of the firm is comprised by equity and by a zero-coupon bond with maturity  $T$  and face value of  $D$ , whose values at time  $t$  are denoted by  $E_{t}$  and  $z(t, T)$  respectively, for  $0 \leq t \leq T$ . The firm's asset value  $V_{t}$  is simply the sum of equity and debt values. Under these assumptions, equity represents a call option on the firm's assets with maturity  $T$  and strike price of  $D$ . If at maturity  $T$  the firm's asset value  $V_{T}$  is enough to pay back the face value of the debt  $D$ , the firm does not default and shareholders receive  $V_{T} - D$ . Otherwise  $(V_{T} < D)$  the firm defaults, bondholders take control of the firm, and shareholders receive nothing. Implicit in this argument is the fact that the firm can only default at time  $T$ . This assumption is important to be able to treat the firm's equity as a vanilla European call option, and therefore apply the Black-Scholes pricing formula.

The rest of the assumptions Merton (1974) adopts are the inexistence of transaction costs, bankruptcy costs, taxes, or problems with indivisibilities of assets; continuous time trading; unrestricted borrowing and lending at a constant interest rate  $r$ ; no restrictions on the short selling of the assets; the value of the firm is invariant under changes in its capital structure

(Modigliani-Miller theorem), and that the firm's asset value follows a diffusion process.

The firm's asset value is assumed to follow a diffusion process given by

$$ d V_{t} = r V_{t} d t + \sigma_{V} V_{t} d W_{t} \tag {1}
$$ where  $\sigma_{V}$  is the (relative) asset volatility and  $W_{t}$  is a Brownian motion.10


The payoffs to equityholders and bondholders at time  $T$  under the assumptions of this model are respectively,  $\max \{V_T - D,0\}$  and  $V_{T} - E_{T}$ , that is,

$$
E_{T} = \max  \left\{V_{T} - D, 0 \right\} \tag {2}
$$

$$ z (T, T) = V_{T} - E_{T} \tag {3}
$$

Applying the Black-Scholes pricing formula, the value of equity at time  $t(0\leq t\leq T)$  is given by

$$
\begin{array}{l} E_{t} \left(V_{t}, \sigma_{V}, T - t\right) \\ = e^{- r (T - t)} \left[ e^{r (T - t)} V_{t} \Phi (d_{1}) - D \Phi (d_{2}) \right] (4) \\ \end{array}
$$ where  $\Phi (.)$  is the distribution function of a standard normal random variable and  $d_{1}$  and  $d_{2}$  are given by


$$ d_{1} = \frac{\ln \left(\frac{e^{r (T - t)} V_{t}}{D}\right) + \frac{1}{2} \sigma_{V}^{2} (T - t)}{\sigma_{V} \sqrt{T - t}} \tag {5}
$$

$$ d_{2} = d_{1} - \sigma_{V} \sqrt{T - t} \tag {6}
$$

The probability of default at time  $T$  is given by

$$
P \left[ V_{T} <   D \right] = \Phi (- d_{2}) \tag {7}
$$

Therefore, the value of the debt at time  $t$  is  $z(t,T) = V_{t} - E_{t}$ .

In order to implement Merton's model we have to estimate the firm's asset value  $V_{t}$ , its volatility  $\sigma_{V}$  (both unobservable processes), and we have to transform the debt structure of the firm into a zero-coupon bond with maturity  $T$  and face value  $D$ .

The maturity  $T$  of the zero-coupon bond can be chosen either to represent the maturity structure of the debt, for example as the Macaulay duration of all the liabilities, or simply as a required time horizon (for example, in case we are pricing a credit derivative with some specific maturity).


# Criticisms and Extensions

The main advantage of Merton's model is that it allows us to directly apply the theory of European options pricing developed by Black and Scholes (1973). But to do so the model needs to make the necessary assumptions to adapt the dynamics of the firm's asset value process, interest rates, and capital structure to the requirements of the Black-Scholes model. There is a trade-off between realistic assumptions and ease of implementation, and Merton's model opts for the latter one. All extensions to this model introduce more realistic assumptions trying to end up with a model not too difficult to implement and with closed, or at least numerically feasible, solutions for the expressions of the debt value and the default probabilities. Merton (1974) presents some extensions to the model, in order to account for coupon bonds, callable bonds, stochastic interest rates, and relaxing the assumption that the Modigliani-Miller theorem holds.

One problem of Merton's model is the restriction of default time to the maturity of the debt, ruling out the possibility of an early default, no matter what happens with the firm's value before the maturity of the debt. If the firm's value falls down to minimal levels before the maturity of the debt but it is able to recover and meet the debt's payment at maturity, the default would be avoided in Merton's approach.

Another handicap of the model is that the usual capital structure of a firm is much more complicated than a simple zero-coupon bond. Geske (1977, 1979) considers the debt structure of the firm as a coupon bond, in which each coupon payment is viewed as a compound option and a possible cause of default. At each coupon payment, the shareholders have the option either to make the payment to bondholders,[11] obtaining the right to control the firm until the next coupon, or to not make the payment, in which case the firm defaults. Geske also extends the model to consider character istics such as sinking funds, safety covenants, debt subordination, and payout restrictions.


The assumption of a constant and flat term structure of interest rates is another major criticism the model has received. Jones et al. (1984, p. 624) suggest that "there exists evidence that introducing stochastic interest rates, as well as taxes, would improve the model's performance." Stochastic interest rates allow us to introduce correlation between the firm's asset value and the short rate, and have been considered, among others, by Ronn and Verma (1986), Kim, Ramaswamy, and Sundaresan (1993), Nielsenet al. (1993), Longstaff and Schwartz (1995), Briys and de Varenne (1997), and Hsu, Sa-Requejo, and Santa-Clara (2004).

Another characteristic of Merton's model, which will also be present in some of the FPM, is the predictability of default. Since the firm's asset value is modeled as a geometric Brownian motion and default can only happen at the maturity of the debt, it can be predicted with increasing precision as the maturity of the debt comes near. As a result, in this approach default does not come as a surprise, which makes the models generate very low short-term credit spreads.[12] As we shall review, introducing jumps in the process followed by the asset value has been one of the solutions considered to this problem.

Delianedis and Geske (2001) study the proportion of the credit spread that, in a corporate bond data set, is explained by default risk, using the Merton (1974) and Geske (1977) frameworks. They conclude that it only explains a small fraction of the credit spreads; the rest is attributable to taxes, jumps, liquidity, and market risk factors. They also include a jump component in the Merton model finding that (p. 24) "while jumps may explain a portion of the residual spread it is unlikely that jumps can explain it entirely."

# First Passage Models

First passage models were introduced by Black and Cox (1976) extending the Merton model to the case when the firm may default at any time, not only at the maturity date of the debt.


Consider, as in the previous section, that the dynamics of the firm's asset value under the risk-neutral probability measure  $\mathbf{P}$  are given by the diffusion process

$$ d V_{t} = r V_{t} d t + \sigma_{V} V_{t} d W_{t} \tag {8}
$$ and that there exists a lower level of the asset value such that the firm defaults once it reaches this level. Although Black and Cox (1976) considered a time-dependent default threshold, let us assume first a constant default threshold  $K > 0$ . If we are at time  $t \geq 0$ , default has not been triggered yet and  $V_{t} > K$ , then the time of default  $\tau$  is given by


$$
\tau = \inf  \left\{s \geq t \mid V_{s} \leq K \right\} \tag {9}
$$

Using the properties of the Brownian motion  $W_{t}$ , in particular the reflection principle, we can infer the default probability from time  $t$  to time  $T$ :

$$
\begin{array}{l} P [ \tau \leq T \mid \tau > t ] = \Phi (h_{1}) + \exp \left\{2 \left(r - \frac{\sigma_{V}^{2}}{2}\right) \right. \\ \left. \ln \left(\frac{K}{V_{t}}\right) \frac{1}{\sigma_{V}^{2}} \right\} \Phi \left(h_{2}\right) \tag {10} \\ \end{array}
$$ where


$$
\begin{array}{l} h_{1} = \frac{\ln \left(\frac{K}{e^{r (T - t)} V_{t}}\right) + \frac{\sigma_{V}^{2}}{2} (T - t)}{\sigma_{V} \sqrt{T - t}} (11) \\ h_{2} = h_{1} - \sigma_{V} \sqrt{T - t} (12) \\ \end{array}
$$

FPM have been extended to account for stochastic interest rates, bankruptcy costs, taxes, debt subordination, strategic default, time-dependent and stochastic default barriers, jumps in the asset value process, and so on. Although these extensions introduce more realism into the model, they increment its analytical complexity.[14]

The default threshold, always positive, can be interpreted in various ways. We can think of it as a safety covenant of the firm's debt, which allows the bondholders to take control of the company once its asset value has reached this level. The safety covenant would act as a protection mechanism for the bondholders against an unsatisfactory corporate performance. In this case, the default threshold would be deterministic, although possibly time dependent, and exogenously fixed when the firm's debt is issued. Kim, Ramaswamy, and Sundaresan (1993) and Longstaff and Schwartz (1995) assume an exogenously given constant default threshold  $K$ . Black and Cox (1976) consider a time-dependent default barrier given by  $e^{-\gamma (T - t)}K$ . A particular case of the Black and Cox default threshold specification is to consider  $\gamma = r$ , that is, to consider a default barrier equal to the face value of the debt discounted at the risk-free interest rate. In that case, the default threshold can be made stochastic if the model considers a stochastic process for the interest rate, as in Briys and de Varenne (1997).


Longstaff and Schwartz (1995) choose a constant default threshold and point out that "since it is the ratio of  $V_{t}$  to  $K$ , rather than the actual value of  $K$ , that plays the major role in our analysis, allowing a more general specification for  $K$  simply makes the model more complex without providing additional insight into the valuation of risky debt."

Hsu, Saá-Requejo, and Santa-Clara (2004) suggest that  $V_{t}$  and  $K$  do not matter directly to the valuation of default risky bonds but only through their ratio, which is a measure of the solvency of the firm. They model the default threshold as a stochastic process, which together with the stochastic process assumed for the firm's asset value, allow them to obtain the stochastic process of the ratio  $\frac{V_{t}}{K}$ . The dynamics of the ratio  $\frac{V_{t}}{K}$  are used to price corporate bonds.

The default threshold can also be chosen endogenously by the stockholders to maximize the value of the equity.[15] The literature has also considered the possibility of negotiation processes between stockholders and bondholders when the firm goes near the point of financial distress, from which the default threshold is determined.[16]

Similar to the description of the choice of the face-value of the zero-coupon in the Merton model, in FPM the default threshold can be calculated as a weighted average of short and long-term debts.


Interest rates can be considered either as a constant or as a stochastic process. The stochasticity of interest rates allows the model to introduce correlation between asset value and interest rates, and to make the default threshold stochastic, in the cases when it is specified as the discounted value of the face value of the debt. Nielsen et al. (1993) and Longstaff and Schwartz (1995) consider a Vasicek process for the interest rate, correlated with the firm's asset value:

$$ d V_{t} = (c - d) V_{t} d t + \sigma_{V} V_{t} d W_{t} \tag {13}
$$

$$ d r_{t} = \left(a - b r_{t}\right) d t + \sigma_{r} d \bar {W}_{t} \tag {14}
$$

$$ d \bar {W}_{t} d W_{t} = \rho d t \tag {15}
$$ where  $\bar{W}_t$  and  $W_{t}$  are correlated Brownian motions. Other specifications for the stochastic process of the short rate have been considered. For example Kim, Ramaswamy, and Sundaresan (1993) suggest a CIR process


$$ d r_{t} = \left(a - b r_{t}\right) d t + \sigma_{r} \sqrt{r_{t}} d \bar {W}_{t} \tag {16}
$$ and Briys and de Varenne (1997) a generalized Vasicek process


$$ d r_{t} = \left(a (t) - b (t) r_{t}\right) d t + \sigma_{r} (t) d \bar {W}_{t} \tag {17}
$$

Hsu, Saá-Requejo, and Santa-Clara (2004) consider both the case of independence between risk-free interest rates and the default generating mechanism (given by the dynamics of the ratio  $\frac{V_i}{K}$ ) and the case of correlation between both processes, specifying the risk-free rate as a CIR process. They present an interesting empirical illustration of the model, covering the calibration of the risk-free rate process and the estimation of the model's parameter through the generalized method of moments.

# Drawbacks and Extensions

The principal drawback of FPM is the analytical complexity that they introduce, which is increased if we consider stochastic interest rates or endogenous default thresholds. This mathe matical complexity makes it difficult to obtain closed form expressions for the value of the firm's equity and debt, or even for the default probability, forcing us to make use of numerical procedures.


The empirical testing of FPM and structural models in general has not been very successful.18 Eom, Helwege, and Huang (2003), who carry out an empirical analysis of five models (Merton, Geske, Leland and Toft, Longstaff and Schwartz, and Collin-Dufresne and Goldstein), conclude that (p. 502)

Using estimates from the implementations we consider most realistic, we agree that the five structural bond pricing models do not accurately price corporate bonds. However, the difficulties are not limited to the underprediction of spreads. ... they all share the same problem of inaccuracy, as each has a dramatic dispersion of predicted spreads.

Zhou (1997, Abstract) indicates that "the empirical application of a diffusion approach has yielded very disappointing results."

Another drawback of the structural models presented before is the so-called predictability of defaults. Generally, structural models consider continuous diffusion processes for the firm's asset value and complete information about the asset value and default threshold. In this setting, the actual distance from the asset value to the default threshold tells us the nearness of default, in such a way that if we are far away from default the probability of default in the short-term is close to zero, because the asset value process needs time to reach the default point. The knowledge of the distance of default and the fact that the asset value follows a continuous diffusion process makes default a predictable event, that is, default does not come as a surprise.

This predictability of defaults makes the models generate short-term credit spreads close to zero. In contrast, it is observed in the market that even short-term credit spreads are bounded from below, incorporating the possibility of an unexpected default or deterioration in the firm's credit quality.[19]

The same characteristics of the structural models that imply the predictability of default also imply predictability of recovery. In models that do not consider strategic defaults, the bondholders get the remaining value of the firm in case of default, which is precisely the value of the default threshold at default. Thus, if we assume complete information about the asset value and default threshold, the recovery rate is also a predictable quantity.

Essentially, two ways out of the predictability effects of structural models have been proposed in the literature. The predictability of default comes from the assumption of investors' perfect knowledge of the firm's asset value and default threshold. In practice, it is not possible to deduce from the capital structure of the firm neither the value of the firm  $V_{t}$ , its volatility  $\sigma_{V}$ , nor the level of the default threshold. If we consider incomplete information about either the firm value process, the default threshold (or both), investors can only infer a distribution function for these processes, which makes defaults impossible to predict. These considerations can be found, among others, in Duffie and Lando (2001), Giesecke (2005), and Jarrow and Protter (2004).

The second way consists in incorporating jumps in the dynamics of the firm value, which implies that the asset value of the firm can suddenly drop, reducing drastically the distance of default (between the asset value and default threshold), or even causing a default if the drop is sufficiently high. Thus, default is not a predictable event anymore, the default probabilities for short maturities do not tend to zero, and so the credit spreads generated. Zhou (1997, 2001a) and Hilberink and Rogers (2002) deal with structural models in which the firm's asset value incorporates a jump component. While Zhou extends the Longstaff and Schwartz (1995) model considering a lognormally distributed jump component, Hilberink and Rogers (2002) opt for an extension of Leeland (1994) and Leland and Toft (1996) using Levy processes, which only allow for down ward jumps in the firm's value. Both models avoid the problem of default predictability implying positive credit spreads for short maturities. Another characteristic of jump models is that they convert the recovery payment at default in a random variable, since the value of the firm can drop suddenly below the default threshold, whereas if the firm's value follows a diffusion process without jumps, the value of the firm at default, that is, what bondholders get, is always equal to the default threshold because of the continuity of the firm's value path.


Fouque, Sircar and Solna (2006) consider the effect of introducing stochastic volatility in FPM, finding that it increases short-term spreads.

Davydenko (2005) criticizes existing structural models because they obviate the liquidity reasons as the main determinants of default for some firms, particularly the ones with high external financing costs (p. 2):

Several default triggers have been proposed in structural models of debt pricing. Most models assume that a firm defaults when the market value of its assets falls below a certain boundary (Black and Cox, 1976; Leland, 1994). This default boundary may correspond to an exogenous networth covenant, or to the endogenously determined threshold at which equityholders are no longer willing to service debt obligations. Should the firm find itself in a liquidity crisis while its asset value is still above the boundary, equityholders in these models will always be willing and able to avoid default by raising outside financing. This approach contrasts with the assumption that firms default when current assets fall short of current obligations, due to either a minimum cash-flow covenant, or market frictions precluding the firm from raising sufficient new external financing (Kim et al., 1993; Anderson and Sundaresan, 1996). Models incorporating both value- and liquidity-based defaults are rare, and little empirical evidence is available to motivate the choice of the default trigger. If, in reality, default is triggered by different factors for different firms, existing models are likely to lack accuracy in predictions.

Davydenko (2005), using a sample of U.S. (speculative rating-grade) bond issuers from 1996 to 2003, shows that the importance of liquidity shortages in triggering default for a particular firm depends on the firm's cost of external financing (p. 2): "firms with low costs of external financing default when the continuation value of assets is low. By contrast, if external funds are costly, a liquidity crisis may force reorganization even if the going-concern surplus is still substantial."21 Moreover, the author presents empirical evidence against the view that default is triggered when the asset value crosses a particular threshold.


Therefore, empirical evidence suggests that structural models need to be theoretically extended in order to incorporate the possibility of the firms defaulting because of liquidity shortages and high funding costs.

# Estimation

The literature provides several ways of calibrating  $V_{t}$  and  $\sigma_{V}$ . The first method makes use of Ito's lemma to obtain a system of two equations in which the only two unknown variables are  $V_{t}$  and  $\sigma_{V}$ . Assume the firm's equity value follows a geometric Brownian motion under  $\mathbf{P}$ , with volatility  $\sigma_{E}$ :

$$ d E_{t} = r E_{t} d t + \sigma_{E} E_{t} d W_{t} \tag {18}
$$

Since the value of the equity is a function of time and of the value of the assets,  $E_{t} = f(V_{t},t)$ , we can apply Ito's lemma to get

$$
\begin{array}{l} d E_{t} = \left[ \frac{\delta f (V_{t} , t)}{\delta t} + \frac{\delta f (V_{t} , t)}{\delta V_{t}} V_{t} r \right. \\ \left. + \frac{1}{2} \frac{\delta^{2} f (V_{t} , t)}{(\delta V_{t})^{2}} (V_{t} \sigma_{V})^{2} \right] d t \\ + \frac{\delta f (V_{t} , t)}{\delta V_{t}} V_{t} \sigma_{V} d W_{t} \tag {19} \\ \end{array}
$$

Comparing the coefficients multiplying the Brownian motion in the two previous equations we obtain the following identity

$$
\sigma_{E} E_{t} = \frac{\delta f (V_{t} , t)}{\delta V_{t}} V_{t} \sigma_{V} \tag {20}
$$

Noting that  $\frac{\delta f(V_t,t)}{\delta V_t} = \frac{\delta E_t}{\delta V_t} = \Phi (d_1)$  and rearranging we obtain the first equation of the system:23

$$
\sigma_{V} = \frac{E_{t}}{V_{t}} \sigma_{E} \Phi (d_{1}) \tag {21}
$$

The second equation results simply from matching the theoretical value of equity with the observed market price  $(\hat{E}_t)$ :

$$
E_{t} \left(V_{t}, \sigma_{V}, T - t\right) = \hat {E}_{t} \tag {22}
$$

As we mentioned before, the only two unknowns in the system formed by the last two equations are  $V_{t}$  and  $\sigma_V$ .24

Duan (1994) points out some drawbacks of the previous method. First, the method considers the equity volatility as constant and independent of the firm's asset value and time. Second, he claims that the first equation is redundant since it is used to derive the second equation. And third, the traditional method does not provide us with distribution functions, or even confidence intervals, for the estimates of  $V_{t}$  and  $\sigma_V$ .

Duan (1994) proposes another method of estimating  $V_{t}$  and  $\sigma_{V}$ , based on maximum likelihood estimation using equity prices and the one-to-one relationship between equity and asset levels given by (4).25 Duan et al. (2004) follow the maximum likelihood approach introduced by Duan (1994) but, unlike previous works, they take into account the survivorship issue, by incorporating into the likelihood function the fact that a firm survived. They argue that (p. 3), "In the credit risk setting, it is imperative for analysts to recognize the fact that a firm in operation has by definition survived so far. Estimating a credit risk model using the sample of equity prices needs to reflect this reality, or runs the risk of biasing the estimator."

Duan and Fulop (2005) extend Duan's (1994) maximum likelihood estimation method to account for the fact that observed equity prices might be contaminated by trading noises. They find that taking into account trading noises generates lower estimates for the asset volatility  $\sigma_{V}$ and therefore overestimates the firms' default probabilities.


Bruche (2005) describes how structural models can be estimated using a simulated maximum likelihood procedure, which allows us to use data on any of the firm's traded claims (bonds, equity, CDS,...) as well as balance sheet information to improve the efficiency of the estimation. The paper explores the possibility of considering that not only equity, but the rest of the claims used in the estimation procedure can be priced with noise, showing that (p. 3) "even small amounts of noise can have serious consequences for estimation results when they are ignored."

A different way of estimating  $V_{t}$  and  $\sigma_{V}$ , which can be found in Jones et al. (1984), consists simply of estimating the asset value as the sum of the equity market value, the market value of traded debt, and the estimated value of nontraded debt. Provided with a time series for  $V_{t}$  we can estimate its volatility  $\sigma_{V}$ .

Hull, Nelken, and White (2004) propose a way to estimate the model's parameters from implied volatilities of options on the company's equity, avoiding the need to estimate  $\sigma_{E}$  and to transform the firm's debt structure into a zero-coupon bond. Using as inputs two equity implied volatilities and an estimate of the firm's debt maturity  $T$ , their model provides us with an estimate of  $\sigma_{V}$  and the leverage ratio  $\frac{D e^{-r(T - t)}}{V_t}$ , which allows us to calculate  $E_{t}$  and the probability of default. We should note that to calculate the value of the debt  $z(t,T) = V_{t} - E_{t}$  we still need an estimate for  $V_{t}$ .

We still have to estimate the default threshold  $K$ . Sundaram (2001) indicates that (p. 7) "default tends to occur in practice when the market value of the firm's assets drops below a critical point that typically lies below the book value of all liabilities, but above the book value of short-term liabilities." Thus, one approach is to choose a value for  $D$  between those two limits. Davydenko (2005) estimates the default threshold to be around  $72\%$  of the firm's face value of debt.

# Liquidation Process Models

In FPM default occurs the first time the asset value goes below a certain lower threshold, that is, the firm is liquidated immediately after the default event; the default event corresponding to the crossing of the asset value through the lower barrier. In contrast with FPM, a new set of models considers the case where the default event does not immediately cause liquidation but it represents the beginning of a process, the liquidation process, which might or might not cause liquidation after it is completed. As explained earlier, we refer to these models as liquidation process models (LPM).

The distinction between the terms default event and liquidation must be clear to understand LPM and their differences with FPM. A default event takes place when the firm's asset value  $V_{t}$  goes below the lower threshold  $K$  (which can be exogenous, constant, time dependent, stochastic, or endogenously derived). A default event signals the beginning of a financially distressed period, which will not necessarily lead to liquidation. Liquidation takes place when the firm is actually liquidated, its activity stops, and its remainings are distributed among its claimholders.

In FPM described above the default event does coincide with liquidation.[27] However, as pointed out by Couderc and Renault (2005, p. 2), most liquidations "do not arise suddenly but are rather the conclusion of a long lasting process." As pointed out by Moraux (2004, p. 3): "Empirical studies in USA have found that additional 'survival' periods beyond the main default event last up to 3 years (Altman-Eberhart (1994), Betker (1995), Hotchkiss (1995)). Helwege (1999) reports that the longest default of modern US junk bond market is seven years long.[28]

The fact that the liquidation process can take quite a while implies that when empirically studying the causes of liquidation past information shows up as a significant explanatory variable, together, of course, with contemporaneous information, because it comprises information about the liquidation process. Information here refers to the firms' financial variables as well as financial markets, business cycle, credit markets, and default cycle indicators. Couderc and Renault (2005) use a database containing the rating history of over ten thousand firms for the period 1981-2003 and analyze, using duration models, whether past values of several financial markets (business cycle, credit markets, and default cycle) are relevant in explaining default probabilities in addition to their contemporaneous values. Their results show the critical importance of past information in default probabilities.


LPM extend FPM to account for the fact that the liquidation time takes place after (sometimes quite a lot after) the occurrence of a default event. François and Morellec (2004), Moraux (2004), and Galai, Raviv, and Wiener (2005) put forward a theoretical LPM.

François and Morellec (2004) argue that while in most of FPM the default event leads to an immediate liquidation of the firm's assets, firms in financial distress have several options to deal with their distress. First, under Chapter 7 of the U.S. Bankruptcy Code, they can liquidate its assets straight away. This possibility would fit FPM. However firms can also file for bankruptcy under Chapter 11 of the U.S. Bankruptcy Code and start a court-supervised liquidation process. The authors refer to existing literature (p. 390) to provide some evidence about the relevance of Chapter 11:

Upon default, the court grants the firm a period of observation during which the firm can renegotiate its claims. At the end of this period, the court decides whether the firm continues as a going concern or not.

Empirical studies show that most firms emerge from Chapter 11. Only a few firms (5\%, according to Gilson, John, and Lang [1990] and Weiss [1990], and between 15\% and 25\%, according to Morse and Shaw [1988]) are eventually liquidated under Chapter 7 after filing Chapter 11. Why do some firms recover while others do not? It is generally acknowledged (see Wruck 1990 or White 1996) that there exist two types of defaulting firms. First, firms that are economically sound promptly recover under Chapter 11. Default was only due to a temporary financial distress. Second, firms that are economically unsound keep on losing value under Chapter 11.[29]


François and Morellec consider that, after a default event, i.e. after the asset value  $V_{t}$  goes below the lower threshold  $K$ , a firm is liquidated if and only if  $V_{t}$  remains below  $K$  consecutively during a period of time of a given length  $d$  (which in their numerical simulations they take to be two years). If a default event happens and the asset value remains under the lower threshold for a period lower than  $d$ , the liquidation process finishes and the firm continues in business as usual. The term consecutively in the definition of liquidation above means that the number of successfully managed past default events and liquidation periods the firm has experienced does not affect the maximum length  $d$  of future liquidation periods.

The authors provide closed-form solutions for corporate debt and equity values and analyze the implications of the model for optimal leverage and credit spreads. Numerical simulations show that credit spreads are an increasing function of the length  $d$ .

Moraux (2004) extends the François and Morellec (2004) model including an additional cause of liquidation to François and Morellec's one (which they call liquidation procedure A). Under his proposed liquidation procedure, procedure B, liquidation happens when the total, that is, cumulative, time the firm's assets value stands under the default threshold exceeds  $d$ . The difference between procedures A and B lies in the words consecutively and cumulative, and Moraux (2004, p. 17) explains it clearly:

Under the procedure  $A$ , each time the firm value process passes through and above K, the liquidation procedure is closed and the hypothetical distress counter is set to zero. The next time a default event occurs, an identical procedure is run and an equal period of time is granted. ... Under the procedure B, the distress counter is never set to zero. Subsequent granted periods (and therefore tolerance) will be lower and lower as more default events and long financial distress will be observed. In fact, the granted time is lowered (each time) by the duration just used.


Financial distress refers to the situation in which  $V_{t} < K$ . A firm can be liquidated by either one or the other liquidation procedures. Moraux (2004) shows that any liquidation procedure based on the time spent by the firm in financial distress is bounded by the procedures A and B in the sense that its implied liquidation date will be higher (lower) than the liquidation date implied by procedure B (A).

The author derives closed form solutions for different claims such as equity, different seniority debts, and convertible debt. In particular, the value of equity is derived as a down and out Parisian option written on the firm assets under liquidation procedure A and as a down and out cumulative call option under liquidation procedure B. Numerical simulations show that the value of equity is an increasing function of  $d$ , and that, unlike in François and Morellec (2004), credit spreads increase or decrease with  $d$  depending on the seniority of the debt.

Galai, Raviv, and Wiener (2005) represent a step forward in the refinement of LPM, proposing a model extending and including the two previous ones. They argue that in the two previous models, the only thing that matters for a firm to be liquidated is the amount of time it spends in financial distress (either successively or cumulatively), but they fail to (p. 5) "capture the following two common features of bankruptcy procedures: (i) Recent distress events may have a greater effect on the decision to liquidate a firm's assets than old distress events....(ii) Severe distress events may have greater effect on the decision to liquidate a firm than mild distress events." To account for such two stylized facts, the authors propose a structural model in which a firm is liquidated when a state variable representing the cumulative weighted time period spent by the firm in distress exceeds  $d$ . At each time, the cumulative weighted time period is computed as a weighted average of the total time spent by the firm in distress, weighted by (1) how far away in the past such distress occurred and (2) how severe was such a distress, where distress severity is measured as an increasing function of  $\max \{0,K - V\}$ .


Galai, Raviv, and Wiener's model has as special cases models such as Merton (1974), Black and Cox (1976), Leland (1994), Fan and Sundaresan (2001), François and Morellec (2004), and Moraux (2004). As a consequence it represents a general general LPM so far. They solve the model numerically using Monte Carlo simulation based on Parisian options and Parisian contracts techniques to value debt and equity. They provide a very intuitive comparison of the liquidation mechanics in their general model with François and Morellec's and Moraux's ones, showing that Moraux's cumulative liquidation procedure (B) has too strong memory because far-away distress periods have the same impact on liquidation triggering as current ones.

Although theoretically very appealing, LPM have not, unlike FPM, been empirically tested, and remains a field for future research.

# State Dependent Models

Another avenue for (so far) theoretical research within the structural approach consists of extending standard models with regime switching: Some of the model parameters are state-contingent. As we review below, states can represent the state of the business cycle or simply the firm's external rating. Cash flows, bankruptcy costs, and funding costs might be state-dependent.

This branch of structural models is able to reduce the problems of predictability of defaults (and recovery) suffered by standard models because the firm is subject to exogenous changes of parameters, which affect its ability to generate cash flows or its funding costs, which are the main drivers of default probabilities.

Hackbarth, Miao, and Morellec (2004) and Elizalde (2005b) put forward two different models illustrating the previous ideas. In both cases the authors provide closed form expressions for the value of equity and debt, whose solutions imply solving systems of ordinary differential equations.


In Hackbarth, Miao, and Morellec (2004) cash flows and recovery rates depend on the state of the business cycle. Cash flows  $x_{t}$  follow a geometric Brownian motion and are scaled by a business cycle scalar factor: They are higher in expansions  $y_{H}x_{t}$  than in recessions  $y_{L}x_{t}$ ,  $y_{H} > y_{L}$ . In the same way, bankruptcy costs are expressed as a state-dependent fraction  $1 - \alpha$  of the firm's assets; again, the recovery rate in expansions  $\alpha_{H}$  is higher than in recessions  $\alpha_{L}, \alpha_{H} > \alpha_{L}$ . At each point in time, there is an exogenous probability of switching between recession and expansion. The default threshold is endogenously chosen by equityholders to maximize the value of equity, and it turns out to be higher in recessions: The firm defaults earlier in recessions than in expansions. Numerical examples illustrate the implications of the model for default thresholds, default clustering, optimal leverage (countercyclical), and credit spreads. As argued above the model is able to generate nontrivial short-term spreads.

Elizalde (2005b) develops a structural model which, although originally applied to banks, can be extended to any firm. In contrast with previous models, the firms' asset value is assumed to be unobserved by debtholders. Debtholders rely on the ratings published by rating agencies to set the debt's coupon as a function of those ratings. As a consequence, the firms' funding costs are contingent on their ratings. Rating agencies perform timely audits to firms, with a given frequency, to find out their risk and asset levels, which determine the rating. Switching from one rating to another implies changes in the cost of debt and, as a consequence, in the ability of the firm to repay it. As in Hackbarth, Miao, and Morellec (2004) the default threshold is chosen endogenously by equityholders and it is rating-dependent.

As described by Duffie (2005, p. 2772), "It has become increasingly common for bond issuers to link the size of the coupon rate on their debt with their credit rating, offering a higher coupon rate at lower ratings, perhaps in an attempt to appeal to investors based on some degree of hedging against a decline in credit quality." This embedded derivative is called a ratings-based step-up. The author illustrates an example of a ratings-based step-up bond issued by Deutsche Telecom in 2002 with coupon payments linked to the firm's rating. While Elizalde (2005b) derives the price of such a bond using a structural model, Duffie provides its pricing formula using an intensity model.[31]

Like LPM, state-dependent models have only been developed theoretically and their future success in credit risk modeling (if any) lies in their empirical applicability and their ability to replicate and predict credit spreads and default probabilities.

# DEFAULT CORRELATION

To incorporate default dependencies between firms using structural models the literature has essentially relied on natural extensions of single firm's models, either Merton (1974) type models or FPM. We will start this section reviewing these extensions, under which the default dependences between firms are introduced through correlated asset processes.[32] Giesecke (2004) and Giesecke and Goldberg (2004) suggest that the default correlation implied by the use of correlated firms' asset processes accounts for the dependence of the firms' credit quality on common macroeconomic factors, what they term cyclical default correlation, but it does not account for credit risk contagion across firms and periods of default clustering. In order to introduce the contagion correlation in the model, Giesecke (2004) and Giesecke and Goldberg (2004) propose a model in which the firms' default thresholds are dependent one to each other and are unknown to investors.

After reviewing Giesecke (2004) and Giesecke and Goldberg (2004) we present factor models, which express the value of the firms' assets as a function of several common factors, which generate the correlation, and an idiosyncratic factor.33 Duan et al. (2002) and Hull and White (2001) present two alternative approaches to deal with default correlation in structural models.

# Cyclical Default Correlation

The most natural way to introduce default dependencies between firms in structural models is by correlating the firms' asset processes. Suppose we have  $i = 1,\dots,I$  different firms with asset value processes given by

$$ d V_{i, t} = r V_{i, t} d t + \sigma_{V_{i}} V_{i, t} d W_{i, t} \tag {23}
$$ for  $i = 1, \dots, I$ , where  $W_{1,t}, \dots, W_{I,t}$  are correlated Brownian motions. As in the single firm case, these models imply predictable defaults. One way of getting rid of the default predictability would be to introduce jump components in the firms' asset processes. Those jump components could be either correlated or uncorrelated across firms. Correlated jump components, besides making defaults unpredictable, would also account for credit risk contagion effects. The main problem lies in the calibration of the jump components.


# Contagion Default Correlation

Cyclical default correlation does not account for all the credit risk dependence between firms. Giesecke (2004) and Giesecke and Goldberg (2004) extend structural models for default correlation to incorporate credit risk contagion effects. The default of one firm can trigger the default of related firms. Furthermore, default times tend to concentrate in some periods of time in which the probability of default of all firms is increased and which cannot be to- tally, or even partially, explained by the firms' common dependence on some macroeconomic factors.


Contagion effects can arise in this setting by direct links between firms in terms of, for example, commercial or financial relationships. The news about the default of one firm has a big impact on the credit quality of other related firms, which is immediately reflected in their default probabilities.

In structural FPM we assume that investors have complete information about both asset processes and default thresholds, so they always know the nearness of default for each firm, that is, the distance between the actual level of the firm's assets and its default threshold.[35]

Giesecke (2004) and Giesecke and Goldberg (2004) introduce contagion effects in the model by relaxing the assumption that investors have complete information about the default thresholds of the firms. In Giesecke (2004), bondholders do not have perfect information, neither about the thresholds nor about their joint distribution. However, they form a prior distribution, which is updated at any time one of such thresholds is revealed, which only happens when the corresponding firm defaults. In Giesecke (2004) investors have incomplete information about the firms' default thresholds but complete information about their asset processes. Giesecke and Goldberg (2005) extend that framework to one in which investors do not have information about the firms' asset values or about their default thresholds. In this case, default correlation is introduced through correlated asset processes and, again, investors receive information about the firms' asset and default barrier only when they default. Such information is used to update their priors about the distribution of the remaining firms' asset values and default thresholds.

The incomplete information about the level of the default thresholds and the fact that those levels are dependent among firms (through a copula function) generate the source of credit risk contagion. Investors form a belief about the level of the firms' default thresholds. Each time one of the firms defaults, the true level of its default threshold is revealed, and investors use this new information to update their beliefs about the default thresholds of the rest of the firms. This sudden updating of the investors' perceptions about the default thresholds of the firm, and thus about the nearness of default for each firm, introduces the default contagion effects in the models.


This model allows for the introduction of default correlation both through dependencies between firms' asset values, cyclical default correlations, and through dependencies between firms' default barriers, contagion effects.

The major problem of this approach is to calibrate and estimate the default threshold copula. See Giesecke (2003) for some remarks on how to choose and calibrate that copula.

# Factor Models

Factor models consider the firms' asset values as a function of a group of common factors, which introduce the default correlation in the model, plus a firm's specific factor:

$$
V_{i, t} = \sum_{j = 1}^{J} w_{i, j} Z_{j, t} + \epsilon_{i, t} \tag {24}
$$ where  $Z_{1},\ldots Z_{J}$  represent the common factors,  $\epsilon_1,\dots ,\epsilon_I$  the firms' specific factors (independent of  $Z_{1},\ldots Z_{J})$  , and the correlation structure is given by the coefficient  $w$  .Once we know the realization of the common factors, the firms' asset value and thus the firms' default probabilities are independent.


The calibration of factor models is usually carried out by a logit or probit regression, depending on the assumptions about the distribution of the factors. Schonbucher (2000), Finger (1999), and Frey, McNeil, and Nyfeler (2001) present illustrations of these models.

# KEY POINTS

- The structural approach for credit risk modeling considers the link between the credit quality of a firm and the firm's economic and financial conditions. As a consequence, defaults are endogenously generated within the models (instead of exogenously given as in reduced-form models). By relying on the firm's assets and liabilities to model default risk, structural models also provide a framework to analyze recovery rates.
- The structural literature on credit risk started with the Merton model, which used option pricing theory for valuing the debt of a firm. In the Merton model, the firm's capital structure is composed by equity and a zero-coupon. The firm is assumed to default at the bond maturity if the value of its assets is below the face value of the bond.
- The structural modeling approach has mainly developed by relaxing the strict assumptions of the Merton model, generating more realistic models, which take into account different characteristics of firms' capital structure, bankruptcy laws, macro variables, and so on.
- Structural models include first passage models, liquidation process models, and state-dependent models. In first passage models a default occurs the first time the firm's asset value goes below a certain lower threshold (related to the firm's level of debt). These models assume that the firm is liquidated immediately after the default event. Liquidation process models extend first passage models by taking into account the fact that firms that file for bankruptcy may avoid liquidation. Finally, state-dependent models assume that some of the parameters governing the firm's ability to generate cash flows or its funding costs depend on variables such as the business cycle (recession vs. expansion) or the firm's external rating.
- There are several ways to account for default correlation within the structural approach. Cyclical default correlation and factor models consider the dependence of firms' credit quality on common macroeconomic factors. Contagion models include the dependence of firms' credit quality on other firms' credit quality.


