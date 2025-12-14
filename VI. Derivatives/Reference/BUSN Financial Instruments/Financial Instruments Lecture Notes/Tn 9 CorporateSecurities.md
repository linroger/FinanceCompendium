---
parent_directory:
title: Financial Instruments
tags:
aliases:
parent_folder: Lecture Notes
subfolder:
key_concepts:
cssclasses: academia
linter-yaml-title-alias: Financial Instruments
---

# Financial Instruments

# Teaching Note 9

# Corporate Securities and Credit Derivatives

John Heaton

The University of Chicago

Booth School of Business

1. The Merton Model

1.1 Equity and Debt  
1.2 Credit Spreads  
1.3 Relative Pricing  
1.4 Warrants  
1.5 Conflict of Interests between Equity and Bond holders

2. Credit Risk Measurement: The KMV Model
3. Credit Derivatives

3.1 Credit Default Swaps

# The Merton Model

- Today is  $t = 0$  and consider a firm with current assets  $V_{0}$ .  
- Assume the firm's return on assets (ROA) between 0 and  $T$  is log-normally distributed.
- That is, let  $\epsilon \sim N(0,1)$ , then

$$
V _ {T} = V _ {0} \times e ^ {\left(\mu - \frac {1}{2} \sigma^ {2}\right) T + \sigma \sqrt {T} \epsilon}
$$

- Note that Black & Scholes assumes that equity returns are log-normally distributed. This is not a coincidence.
- The firm finances its operation by issuing both equity and debt. Assume first that the firm issues a zero coupon bond, whose face value is  $F$  and maturity is  $T$ .  
- There are two possible outcomes for debt holders at maturity  $T$ :
- If  $V_{T} > F \Rightarrow$  the firm can liquidate some of its assets, and pay the debt holders.

$\ast \Longrightarrow$  Debt holders get  $F$ ;  
$\ast \Longrightarrow$  Equity holders get the residual  $V_{T} - F$ ;

- If  $V_{T} < F \Rightarrow$  the firm will be unable to pay its debt, and therefore there is default.

* $\Longrightarrow$  The debt holders take possession of the assets of the firm  $\Longrightarrow$  their payoff is  $V_{T}$ .  
$\ast \Longrightarrow$  Equity holders get nothing.

# The Merton Model - 2

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/efbf91a0-6159-4268-bbfc-7430a30b725b/54dc742a4b638cb299b5aa0d8c21518ccf351ed4fd74186886b8d908b74c0b2a.jpg)  
Debt holders Payoff at  $T$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/efbf91a0-6159-4268-bbfc-7430a30b725b/e9d46a86de1ead236b8f3d82832e2b7a6088d8db0bdfc9ca9d9b9e6d4cc119e8.jpg)

# The Merton Model - The Value of Equity

- The payoff to equity holders is then the one of a call option

$$
\max (V _ {T} - F, 0)
$$

- If we denote  $E_0$  the value of equity today, we can apply Black and Scholes formula and obtain

$$
E _ {0} = \mathrm {C a l l} (V _ {0}, F, r, T, \sigma)
$$

- where  $\operatorname{Call}(V_0, F, r, T, \sigma)$  is just Black & Scholes formula

$$
\mathrm {C a l l} \left(V _ {0}, F, r, T, \sigma\right) = V _ {0} N (d _ {1}) - F e ^ {- r T} N (d _ {2})
$$

$$
d _ {1} = \frac {\ln \left(\frac {V _ {0}}{F}\right) + (r + \sigma^ {2} / 2) T}{\sigma \sqrt {T}}; d _ {2} = d _ {1} - \sigma \sqrt {T}
$$

# The Volatility of Levered Equity

- What is the volatility of levered equity?
- We have already investigated the volatility of an option given the volatility of the underlying (see TN 5). Applying the same reasoning, we obtain

$$
\mathrm {V o l a t i l i t y o f E q u i t y R e t u r n s} = \sigma_ {E} = \left(\frac {V N (d _ {1})}{V N (d _ {1}) - K e ^ {- r T} N (d _ {2})}\right) \times \sigma
$$

- The term in parenthesis is much larger than 1, implying that equity return volatility is many times higher than the volatility of the underlying assets.
- In addition, as  $V$  decreases, the parenthesis increases also, thereby increasing the volatility.  
- Since equity  $E = \operatorname{Call}(V, F)$  is strictly increasing in  $V$ , we have then that when  $E_V$  decreases its volatility increases.  
- This is called "Leverage effect" and it was first noticed by Fisher Black.
- $\Longrightarrow$  The model generates time varying volatility correlated with the value of equity: When equity drop, volatility increases.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/efbf91a0-6159-4268-bbfc-7430a30b725b/ed4dcf7a0eacd920142724e83233ab35919a54a95be7ee3b114575e3b3d83a1c.jpg)  
Volatility of Equity Returns versus Asset Value

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/efbf91a0-6159-4268-bbfc-7430a30b725b/7d6f500da34b77ae7e7bedd3ba6bdf044a32cb017008d1696740096f47acd0a4.jpg)  
Volatility of Equity Returns versus Equity Value

# The Merton Model - The Value of Debt

- What is the value of defaultable debt in the model?  
- The payoff to debt holders is

$$
\min (V _ {T}, F) = V _ {T} - \max (V _ {T} - F, 0)
$$

- The value today of this payoff is then

$$
D _ {0} = V _ {0} - E _ {0} = V _ {0} - C a l l (V _ {0}, F, r, T, \sigma)
$$

- Note that this expression also comes immediately from the balance sheet identity

Assets of a Firm = Debt + Equity

- Exploiting put call parity, we can express the value of debt alternatively, and more intuitively, as

$$
D _ {0} = F e ^ {- r \times T} - P u t (V _ {0}, F, r, T, \sigma)
$$

- The value of debt is equal to the risk free debt  $F e^{-rT}$  minus a put option, representing the (risk adjusted) expected losses due to the possibility that risky assets will not be sufficient to pay the debt at maturity.

# Credit Spreads under the Merton Model

- We can then use the Merton's model to compute a corporate bond credit spread.  
- From the definition of yield to maturity  $y$  for a corporate bond, we have the equality

$$
D _ {0} = e ^ {- y \times T} \times F \quad \Longrightarrow \quad F e ^ {- r \times T} - P u t (V _ {0}, F, r, T, \sigma) = e ^ {- y \times T} F
$$

- which implies

$$
e ^ {- r \times T} - P u t \left(\frac {V _ {0}}{F}, 1, r, T, \sigma\right) = e ^ {- y \times T}
$$

$$
1 - e ^ {r \times T} \times P u t \left(\frac {V _ {0}}{F}, 1, r, T, \sigma\right) = e ^ {- (y - r) \times T}
$$

and finally

$$
\mathrm {C r e d i t S p r e a d} = y - r = - \frac {1}{T} l o g \left[ 1 - e ^ {r \times T} P u t \left(\frac {V _ {0}}{F}, 1, r, T, \sigma\right) \right]
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/efbf91a0-6159-4268-bbfc-7430a30b725b/2505d61b9007ddeaf38d4c96848197c19e0684b97168eafb3173dfb37e458963.jpg)  
Credit Spreads under the Merton Model

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/efbf91a0-6159-4268-bbfc-7430a30b725b/86976844537cfd1fba68131b5e837be49d104bc412958abaef4985c148b1651a.jpg)

- Issues: (A) They are small; (B) They converge to zero at  $T \to 0$

# The Merton Model - Extensions

- Many extensions of this basic model exist, including
- Coupon bonds: The debt is not zero-coupon;  
- Stochastic interest rates: Interest rates follow one of the processes we have seen.  
- Early Bankruptcy: There is a lower bound  $V_{b}$  to assets so that if  $V(t) < V_{b}$  the firm is bankrupt.  
- Unobservable  $V(t)$ : Investors may only rely on accounting measures to estimate  $V(t)$ : The default barrier could be closer than you think.

# Relative Pricing of Junior and Senior Debt

- The Merton's model can be used also for relative pricing across different bond classes of the same issuer.  
- For example, suppose that a firm issues two bonds: one senior and one junior debt, with face value  $F_{J}$  and  $F_{S}$ .  
- At maturity, we have the following payoff

Table 1: Payoffs  

<table><tr><td></td><td>0 &lt; VT &lt; FS</td><td>FS &lt; VT &lt; FS + FJ</td><td>FS + FJ &lt; VT</td></tr><tr><td>Senior</td><td>VT</td><td>FS</td><td>FS</td></tr><tr><td>Junior</td><td>0</td><td>VT - FS</td><td>FJ</td></tr><tr><td>Equity</td><td>0</td><td>0</td><td>VT - (FS + FJ)</td></tr></table>

# Relative Pricing of Junior and Senior Debt

- That is, senior and junior debt and equity must satisfy

$$
\mathrm {P a y o f f o f S e n i o r D e b t} = V - \max (V - F _ {S}, 0)
$$

$$
\mathrm {P a y o f f o r m e d} \mathrm {J u n i o r D e b t} = \max (V - F _ {S}, 0) - \max (V - (F _ {S} + F _ {J}), 0)
$$

$$
\mathrm {P a y o f f E q u i t y} = \max (V - (F _ {S} + F _ {J}), 0)
$$

- We have then have

$$
D _ {S, 0} = V - B S C (V, F _ {S}, r, T, \sigma)
$$

$$
D _ {J, 0} = B S C (V, F _ {S}, r, T, \sigma) - B S C (V, F _ {S} + F _ {J}, r, T, \sigma)
$$

$$
E _ {0} = B S C (V, F _ {S} + F _ {J}, r, T, \sigma)
$$

- Next Figure plots  $D_{J,0}$  and  $D_{S,0}$  when  $F_{S} = F_{J} = 100$ .

# Relative Pricing of Junior and Senior Debt

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/efbf91a0-6159-4268-bbfc-7430a30b725b/c462f777a86bb4726d6256f7080000137e2393587de02e627519c285d4037962.jpg)  
The Value of Senior and Junior Debt  
Value of Senior and Junior Debt

- Given these relationships, we can also look at the relationship between  $D_{J,0}$  and  $D_{S,0}$

# Relative Pricing of Junior and Senior Debt

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/efbf91a0-6159-4268-bbfc-7430a30b725b/723a80532169a32204afadeeac4cab86fdfb1acf3b0e8a4dc31bbf10e7b08e7f.jpg)  
Junior vs. Senior Debt

- This gives a measure of how Senior and Junior debt should be related.  
- It could help spotting misalignments of the two debt values.

# Warrants

- Warrants are options issued by the firm on its own stock
- The holder of the warrant has the right, but not the obligation, to purchase a given number  $m$  of shares from the firm at the given strike price  $K$  at maturity  $T$ .
- The firm may issue new shares to make whole to the warrant holder, which generates a dilution effect on the total value of equity, as the firm is selling shares at a lower value than they are worth.  
- Example: Consider a whole equity firm with  $n$  shares outstanding, and total value of assets equal to  $V$ .
- If the warrant-holders exercise the warrant, they pay  $K$  per share and receive  $m$  shares.  
- After the exercise of the warrant, the firm's assets are  $V_{T} + m \times K$ .  
- Therefore, the exercised warrants are worth

$$
\mathrm {V a l u e o f 1 S h a r e a f t e r E x e r c i s e -} K = \frac {V _ {T} + m \times K}{n + m} - K = \frac {n}{n + m} \left(\frac {V _ {T}}{n} - K\right)
$$

- The term  $V_{T} / n$  is the value of one share without the warrants. The term  $n / (n + m)$  is called "dilution adjustment".
- Thus:

$$
\mathrm {V a l u e o f w a r r a n t s} = \frac {n}{n + m} B S C \left(\frac {V _ {0}}{n}, K, r, \sigma , T\right)
$$

# Bond and Equity Holders' Conflicts of Interest

- The Merton's model is at the basis of the agency theory of the firm, in which there is a natural conflict between equity holders and debt holders.

# 1. Volatility

- Equity holders are long a call option  $\Longrightarrow$  They like volatility and thus risky projects.  
- Bond holders are short the call option  $\Longrightarrow$  They dislike volatility.

# 2. Dividends

- Equity holders are long a call option  $\Longrightarrow$  They like dividend payments

* The decrease in value of equity is less than the dollar amount received in dividends.  
 * Intuition: The Delta of equity is less than 1, Δ = N(d₁) < 1, ⇒ $1 dollar decrease in assets V implies less than $1 decrease in equity.

- Example: A firm has V = $10bil, F = $10bil, T = 5, r = 2%, σ = 10%. Then E0 = $1.4066 bil.

* If the firm makes a cash dividend payment of $ 1 bil ⇒ V = 9 ⇒ E0 = 0.7794 ⇒ Equity lost 0.6272 bil in equity value, but got the 1 bil cash.  
* Where is this money coming from?

- The value of bonds must have gone down by the same amount  $\Longrightarrow$  Bondholders dislike dividend payments.

# Bond and Equity Holders' Conflicts of Interest

- $\Longrightarrow$  If there are monitoring costs to check what equityholders do, bondholders require a higher premium because they take into account the incentive of equityholders to maximize their value.
- Unusual dividend payments can be taken care through bond covenants. But the choice of risky/safe projects is harder.

# Leveraged Firms and Debt Overhang

- During crisis periods, such as the 2007/08 crisis, it is hard for firms to raise new equity capital.  
Why?

- For highly levered firms, injecting capital into the firm implies a direct transfer of value from equity holders to debt holders.  
- This effect is called "debt overhang"
- Example: A firm has  $V = 9$  bil,  $F = 10$  bil,  $T = 5$  years,  $\sigma = .1$ ,  $r = .02$ .

$$
- \Longrightarrow E _ {0} = \$ 0. 7 7 9 3 \mathrm {a n d} D _ {0} = 8. 2 2 0 6.
$$

- Suppose the firm issue shares and raises $1 bil in cash.
- The value of assets is now  $V = 10$  bil. Given that the face value of debt did not change, what is the value of equity and debt?

$$
* \Longrightarrow E _ {0} = 1. 4 0 6 6 \mathrm {a n d} D _ {0} = 8. 5 9 3 3 7.
$$

* Equity increased by only $0.6272 billion but they put $1 billion.  
* The value of bonds increased by $0.3728

- Of course, the intuition is the same as for dividend cash payments: The Delta of the option is less than 1.

# Credit Risk Measurement: KMV

- How can we compute the probability of default of a particular bond or entity?  
- Credit rating agencies provide credit rating to bonds, which provide (their) assessment of their probability of default.
- For instance, the following table is from Standard and Poor. This is called the transition matrix

<table><tr><td>Initial Rating</td><td colspan="8">Rating at the end of the year</td></tr><tr><td></td><td>AAA</td><td>AA</td><td>A</td><td>BBB</td><td>BB</td><td>B</td><td>CCC</td><td>D</td></tr><tr><td>AAA</td><td>0.8910</td><td>0.0963</td><td>0.0078</td><td>0.0019</td><td>0.0030</td><td>0.0000</td><td>0.0000</td><td>0.0000</td></tr><tr><td>AA</td><td>0.0086</td><td>0.9010</td><td>0.0747</td><td>0.0099</td><td>0.0029</td><td>0.0029</td><td>0.0000</td><td>0.0000</td></tr><tr><td>A</td><td>0.0009</td><td>0.0291</td><td>0.8894</td><td>0.0649</td><td>0.0101</td><td>0.0045</td><td>0.0000</td><td>0.0009</td></tr><tr><td>BBB</td><td>0.0006</td><td>0.0043</td><td>0.0656</td><td>0.8427</td><td>0.0644</td><td>0.0160</td><td>0.0018</td><td>0.0045</td></tr><tr><td>BB</td><td>0.0004</td><td>0.0022</td><td>0.0079</td><td>0.0719</td><td>0.7764</td><td>0.1043</td><td>0.0127</td><td>0.0241</td></tr><tr><td>B</td><td>0.0000</td><td>0.0019</td><td>0.0031</td><td>0.0066</td><td>0.0517</td><td>0.8246</td><td>0.0435</td><td>0.0685</td></tr><tr><td>CCC</td><td>0.0000</td><td>0.0000</td><td>0.0116</td><td>0.0116</td><td>0.0203</td><td>0.0754</td><td>0.6493</td><td>0.2319</td></tr></table>

- For instance, a BBB rated company has a probability .06% to move to AAA, .43% to AA, 6.5% to A, 84.27% to remain at BBB, 6% to move to BB, etc.

# Credit Risk Measurement: KMV

- KMV argues that credit ratings did not tell the whole story (they said so way before the crisis).
  - e.g. Bonds in the same credit rating class show different probabilities of default  
- They use Merton's model to compute the probabilities of default:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/efbf91a0-6159-4268-bbfc-7430a30b725b/4ba59e9d762896ae512bba93750de041fc07a741ba8545dd1d18ce010ae40da0.jpg)  
Fig. 7. Distribution of the firm's assets value at maturity of the debt obligation.

(Figure from Choi, Galai, and Mark, "A comparative analysis of current credit risk models", Journal of Banking and Finance, 2000)

# Credit Risk Measurement: KMV

- More specifically, they obtain

$$
\mathrm {E x p e c t e d D e f a u l t F r e q u e n c y (E D F)} = p _ {T} = \operatorname * {P r} \left[ V _ {T} <   F | V _ {0} \right] = N (- d _ {2})
$$

$$
\mathrm {D i s t a n c e t o D e f a u l t (D D)} = d _ {2} = \frac {\ln \left(\frac {V _ {0}}{F}\right) + (\mu - \sigma^ {2} / 2) T}{\sigma \sqrt {T}}
$$

What are the unknowns?

1. $V_{0}$ : as book values of assets are unreliable;  
2. $\sigma$ : the volatility of assets  
3. $F$ : The default point.

- They find empirically that  $F =$  Short Term Debt + 1/2 Long Term Debt works well.

# Credit Risk Measurement: KMV

- The last two items are  $V_{0}$  and  $\sigma$ .  
- What can we observe about a firm?
- The market value of equity;  
- The volatility of equity.
- From the Black Scholes formula for equity we obtained earlier

$$
E _ {0} = \mathrm {C a l l} (V _ {0}, K, T, r, \delta , \sigma) = N (d _ {1}) V _ {0} - K e ^ {- r (T - t)} N (d _ {2})
$$

- Note that here we may use a different  $K$ , as the horizon is different.  
- From here, we can also compute the volatility of equity

$$
\sigma_ {E} = N \left(d _ {1}\right) \left(\frac {V _ {0}}{E _ {0}}\right) \sigma
$$

- Therefore, we set

$$
E _ {0} = \mathrm {M a r k e t V a l u e o f E q u i t y}; \quad \sigma_ {E} = \mathrm {V o l a t i l i t y o f E q u i t y}
$$

- We solve two equations in the two unknown  $V_{0}$  and  $\sigma$ .

# Credit Risk Measurement: KMV

- Simple Example (KMV model is much more elaborate):
- Enron market capitalization on May 30 1989 was 2.260 bil (from CRSP).  
- The book value of debt  $= 3.249$  bil (prospectus).  
- Volatility of equity return  $= 20\%$ .  
- The nominal one year interest rate was  $8.6\%$  (continuously compounded).  
- Assume  $T = 8$  years (long term debt).
- Next two figures plot the value of equity and volatility of equity implied by the Merton model for various levels of current assets  $V_{0}$  and volatility  $\sigma$

# Credit Risk Measurement: KMV

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/efbf91a0-6159-4268-bbfc-7430a30b725b/d274deb94a2a69c933689134d22adc998becba491326dfb71f5b3b9d63246abf.jpg)  
Enron Corp Returns and Volatility

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/efbf91a0-6159-4268-bbfc-7430a30b725b/cd99969c8337051e5861acf8c54dde8fa9d63c78e52e8713e63082dfefa33d7c.jpg)

# Credit Risk Measurement: KMV

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/efbf91a0-6159-4268-bbfc-7430a30b725b/4daaa79967c656eae5b7e11803a68f1be6724b649637db77444a2d27ab12b5cb.jpg)  
Model implied value of equity

- The plot shows a combination of  $V_{0}$  and  $\sigma$  that equates the model equity value to the market equity capitalization of 2.26 bil.

# Credit Risk Measurement: KMV

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/efbf91a0-6159-4268-bbfc-7430a30b725b/3841f7e22900e2681f613ed8677e8e63e818cd31732464c05e59b72db1673be5.jpg)  
Model implied volatility of equity

- We therefore find  $V_{0} = 3.84$  bil and  $\sigma = 12\%$ .  
- We finally use these quantities to compute the distance to default and the expected frequency of default.

* We need one more input: the growth rate of assets  $\mu$ .  
* This must be forecasted from fundamentals. Assume  $\mu = 15\%$ . We find:

$$
d _ {2} = 2. 6 9 \mathrm {a n d} p _ {T} = 3 6 \mathrm {b p}
$$

# Credit Risk Measurement: KMV

- According to the transition table at the end of the case, a BBB company has 45 bp chance of defaulting.  
- KMV argues that the normal distribution is imperfect, especially because of the thin tails.  
- So, they define a new map from distance to default and expected default frequency, which is estimated from data.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/efbf91a0-6159-4268-bbfc-7430a30b725b/c8961cc96134db9da16a1f5e8ae30bb5ba0f270faac20ade6d30492b52a6757a.jpg)  
Figure 15: Distance to Default and Expected Default Frequency  
Fig. 17. Mapping of the "distance-to-default" into the "expected default frequencies", for a given time horizon.

- For  $d_{2} = 2.69$  it looks on target.

# The Credit Derivatives Market

- Credit derivatives are securities whose payoff depend on a "credit event"  
- The credit event could be "default," change in the credit rating of the issuer, or change in credit spreads.  
- The credit derivatives market skyrocketed in the 2000 - 2008 period.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/efbf91a0-6159-4268-bbfc-7430a30b725b/c06cf34ba73e710972b8450cf3dcea71382d9dc7e4b7dce5a21298974b40815d.jpg)

Figure 1. Market breakdown by instrument type  
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/efbf91a0-6159-4268-bbfc-7430a30b725b/8bc2a3ee02b659eb1120d57559e61bcdc38a328fad357813ae8bcad0db75db48.jpg)  
Source: Risk Magazine 2003 Credit Derivatives Survey

Figure 2. Breakdown by end users  
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/efbf91a0-6159-4268-bbfc-7430a30b725b/8223f4a28fc4646e26183ae201a148af1f3880e675e0956453575a893db628d6.jpg)  
Source: Risk Magazine 2003 Credit Derivatives Survey.

# Credit Derivatives

- Definition of Default: Any non-compliance with the exact specification of a contract.  
- The contracts generally involve three parties:

1. The issuer of the underlying risky security (bond)  
2. The investor who bought the security and wants protection (protection buyer)  
3. A counterparty who is willing to sell protection (protection seller)

- The credit derivative exchange only involves the protection buyer and seller.  
- The original issuer is just "the reference entity" over which the credit derivative contract is determined.

# Single Name Credit Default Swap

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/efbf91a0-6159-4268-bbfc-7430a30b725b/60274cb5e53c35714c64e6a519263ea47d793c7323c9d9f5f649e09547b90d99.jpg)

Investor (protection buyer)

Investor pays bank a premium

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/efbf91a0-6159-4268-bbfc-7430a30b725b/5c81d0499b1e5d7815856b51deb065ec8ce19c52257817279b0e08dc1a4e6074.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/efbf91a0-6159-4268-bbfc-7430a30b725b/d8c2f2b9ee1953fecdf45841c4b5abb601446e21036641b89e2663dba1fa105a.jpg)

Bank pays Investor if credit event

Bank (protection seller)

- Investor pays interest on a notional amount  $N$  to Bank until maturity  $T$  or the default of the issuer (reference entity);  
- In case of default, Bank pays Investor the notional amount  $N$  in exchange of the physical delivery of the underlying asset.
- If cash settled, bank pays investor the net loss (=notional minus value of defaulted bond).
- This is by far the most popular credit derivative. It is essentially an insurance contract.

# Single Name Credit Default Swap

- Example:
- It is 2008 and an investor holds $10 mm of 5-year bonds from Lehman Brothers.  
- Given recent events, the investor is now worried about Lehman defaulting on its obligations.  
- Two strategies:

1. Sell out the position

* Problem: Low liquidity and high transaction costs.

2. Enter into a CDS with, say, AIG Financial Products, to obtain insurance against Lehman defaulting.

* This solution is cheaper, and easier to perform.  
* It is the equivalent for credit markets to the now standard interest rate swaps that corporations use to manage assets and liabilities.
* Assume CDS spread is 400bp, then investor pays AIG  $10 \times .04 \times .25 = \$ 100,000$ each quarter until default  
* If default occurs, AIG FP pays $10 mm in exchange of the defaulted bond (physical delivery).  
* If it is cash settled, dealer quotes for recovery rate are obtained, and Lehman pays "notional minus recovery."

# CDS Spread: Lehman and Bear Stearns

- The CDS spread capture important information about the likelihood of survival of individual companies.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/efbf91a0-6159-4268-bbfc-7430a30b725b/a4c32e9c6bdc0b8ef9df2b4f1f16b2431d446a65ed16c11e23ac99fe5418dc64.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/efbf91a0-6159-4268-bbfc-7430a30b725b/22e93d411edf202d61e7cec51dd7bacb99a242d1cc7ea43c7c9911a4d1ea0994.jpg)  
CDS Spread: Italy, Greece, and USA

# The Credit Default Swap Spread

- In principle, the credit default swap spread should coincide with the credit spread of the underlying bond.
- For instance, with the credit spread formula in Merton's model discussed earlier:

$$
\mathrm {C r e d i t S p r e a d} = y - r = - \frac {1}{T} l o g \left[ 1 - e ^ {r \times T} P u t \left(\frac {V _ {0}}{F}, 1, r, T, \sigma\right) \right]
$$

- However, traders do not use this formula, for a number of reasons:
- The bonds underlying CDS are not zero coupon, and so we have to adjust for coupon payments of the underlying bonds.  
- The default could occur earlier than maturity  $T$ , and therefore

* [A] The insurance buyer stops making quarterly payments to insurance seller.  
* [B] We have to compute the probability of getting the notional back whenever default occurs.

- These items generate some additional complications, that more complicated models take into account.