---
title: Teaching Note 09 Corporate Securities Credit Derivatives
parent_directory: Lecture Notes
formatted: 2025-12-20 07:40:00 PM
formatter_model: opencode
cli_tool: opencode
primary_tags:
  - merton model
  - credit spreads
  - kmv model
  - credit default swaps
  - corporate debt
secondary_tags:
  - equity value
  - debt value
  - volatility of equity
  - relative pricing
  - warrants
  - agency theory
  - debt overhang
  - expected default frequency
  - distance to default
  - credit derivatives market
  - credit risk measurement
  - credit event
  - single name cds
  - cds spread
cssclasses: academia
---

# Teaching Note 09 Corporate Securities Credit Derivatives

John Heaton

The University of Chicago

Booth School of Business

### The Merton Model

### Equity and Debt
### Credit Spreads
### Relative Pricing
#### Warrants
### Conflict of Interests between Equity and Bond Holders

### Credit Risk Measurement: The KMV Model
### Credit Derivatives

### Credit Default Swaps

### The Merton Model

- Today is $t = 0$ and consider a firm with current assets $V_{0}$.
- Assume the firm's return on assets (ROA) between 0 and $T$ is log-normally distributed.
- That is, let $\epsilon \sim N(0,1)$, then

$$
V_{T} = V_{0} \times e^{\left(\mu - \frac{1}{2} \sigma^{2}\right) T + \sigma \sqrt{T} \epsilon}
$$

- Note that Black & Scholes assumes that equity returns are log-normally distributed. This is not a coincidence.
- The firm finances its operation by issuing both equity and debt. Assume first that the firm issues a zero coupon bond, whose face value is  $F$  and maturity is  $T$ .  
- There are two possible outcomes for debt holders at maturity $T$:
- If $V_{T} > F \Rightarrow$ the firm can liquidate some of its assets, and pay the debt holders.

* $\Longrightarrow$ Debt holders get $F$;
* $\Longrightarrow$ Equity holders get the residual $V_{T} - F$;

- If $V_{T} < F \Rightarrow$ the firm will be unable to pay its debt, and therefore there is default.

* $\Longrightarrow$ The debt holders take possession of the assets of the firm $\Longrightarrow$ their payoff is $V_{T}$.
* $\Longrightarrow$ Equity holders get nothing.

#### The Merton Model - 2

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/add872632c8a65d32491d0393801d8017443a7ce6c2fedc1d344191b89c8806d.jpg)

Debt holders Payoff at $T$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/649786a086c621236b79b04d85285f8db469355bc6062439d689f24923e4b46f.jpg)

#### The Merton Model - The Value of Equity

- The payoff to equity holders is then the one of a call option

$$
\max(V_{T} - F, 0)
$$

- If we denote $E_0$ the value of equity today, we can apply Black and Scholes formula and obtain

$$
E_{0} = \mathrm{Call}(V_{0}, F, r, T, \sigma)
$$

- where $\mathrm{Call}(V_0, F, r, T, \sigma)$ is just Black & Scholes formula

$$
\mathrm{Call}(V_{0}, F, r, T, \sigma) = V_{0} N(d_{1}) - F e^{-r T} N(d_{2})
$$

$$
d_{1} = \frac{\ln\left(\frac{V_{0}}{F}\right) + (r + \sigma^{2}/2) T}{\sigma \sqrt{T}}; \quad d_{2} = d_{1} - \sigma \sqrt{T}
$$

## The Volatility of Levered Equity

- What is the volatility of levered equity?
- We have already investigated the volatility of an option given the volatility of the underlying (see TN 5). Applying the same reasoning, we obtain

$$
\mathrm{Volatility\ of\ Equity\ Returns} = \sigma_{E} = \left(\frac{V N(d_{1})}{V N(d_{1}) - K e^{-r T} N(d_{2})}\right) \times \sigma
$$

- The term in parenthesis is much larger than 1, implying that equity return volatility is many times higher than the volatility of the underlying assets.
- In addition, as $V$ decreases, the parenthesis increases also, thereby increasing the volatility.
- Since equity $E = \mathrm{Call}(V, F)$ is strictly increasing in $V$, we have then that when $E_V$ decreases its volatility increases.
- This is called "Leverage effect" and it was first noticed by Fisher Black.
- $\Longrightarrow$ The model generates time varying volatility correlated with the value of equity: When equity drop, volatility increases.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/9ae002ad7a9905c127537ae1725e3bde0b85aeb3ab0e429addacdf0af9096d53.jpg)

Volatility of Equity Returns versus Asset Value

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/413e9381781e957575cd3d2a95b33366f53976db40fbd59d59da8a3a72f9204a.jpg)

Volatility of Equity Returns versus Equity Value

#### The Merton Model - The Value of Debt

- What is the value of defaultable debt in the model?
- The payoff to debt holders is

$$
\min(V_{T}, F) = V_{T} - \max(V_{T} - F, 0)
$$

- The value today of this payoff is then

$$
D_{0} = V_{0} - E_{0} = V_{0} - \mathrm{Call}(V_{0}, F, r, T, \sigma)
$$

- Note that this expression also comes immediately from the balance sheet identity

Assets of a Firm = Debt + Equity

- Exploiting put call parity, we can express the value of debt alternatively, and more intuitively, as

$$
D_{0} = F e^{-r \times T} - \mathrm{Put}(V_{0}, F, r, T, \sigma)
$$

- The value of debt is equal to the risk free debt $F e^{-r T}$ minus a put option, representing the (risk adjusted) expected losses due to the possibility that risky assets will not be sufficient to pay the debt at maturity.

### Credit Spreads under the Merton Model

- We can then use the Merton's model to compute a corporate bond credit spread.
- From the definition of yield to maturity $y$ for a corporate bond, we have the equality

$$
D_{0} = e^{-y \times T} \times F \quad \Longrightarrow \quad F e^{-r \times T} - \mathrm{Put}(V_{0}, F, r, T, \sigma) = e^{-y \times T} F
$$

- which implies

$$
e^{-r \times T} - \mathrm{Put}\left(\frac{V_{0}}{F}, 1, r, T, \sigma\right) = e^{-y \times T}
$$

$$
1 - e^{r \times T} \times \mathrm{Put}\left(\frac{V_{0}}{F}, 1, r, T, \sigma\right) = e^{-(y - r) \times T}
$$

and finally

$$
\mathrm{Credit\ Spread} = y - r = -\frac{1}{T} \log\left[1 - e^{r \times T} \mathrm{Put}\left(\frac{V_{0}}{F}, 1, r, T, \sigma\right)\right]
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/27cfbed846329ce04bd064ce0dad7bb6f/cc5ab2bcbd86a1840408ba55d7f3757c.jpg)

Credit Spreads under the Merton Model

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/318ef00fce28d615a3fce7864e1b324d2daeebbe7c718ceb6ff834f3e5782b50.jpg)

- Issues: (A) They are small; (B) They converge to zero at $T \to 0$

#### The Merton Model - Extensions

- Many extensions of this basic model exist, including
- Coupon bonds: The debt is not zero-coupon;
- Stochastic interest rates: Interest rates follow one of the processes we have seen.
- Early Bankruptcy: There is a lower bound $V_{b}$ to assets so that if $V(t) < V_{b}$ the firm is bankrupt.
- Unobservable $V(t)$: Investors may only rely on accounting measures to estimate $V(t)$: The default barrier could be closer than you think.

### Relative Pricing of Junior and Senior Debt

- The Merton's model can be used also for relative pricing across different bond classes of the same issuer.
- For example, suppose that a firm issues two bonds: one senior and one junior debt, with face value $F_{J}$ and $F_{S}$.
- At maturity, we have the following payoff

Table 1: Payoffs

<table><tr><td></td><td>0 &lt; VT &lt; FS</td><td>FS &lt; VT &lt; FS + FJ</td><td>FS + FJ &lt; VT</td></tr><tr><td>Senior</td><td>VT</td><td>FS</td><td>FS</td></tr><tr><td>Junior</td><td>0</td><td>VT - FS</td><td>FJ</td></tr><tr><td>Equity</td><td>0</td><td>0</td><td>VT - (FS + FJ)</td></tr></table>

#### Relative Pricing of Junior and Senior Debt

- That is, senior and junior debt and equity must satisfy

$$
\mathrm{Payoff\ of\ Senior\ Debt} = V - \max(V - F_{S}, 0)
$$

$$
\mathrm{Payoff\ of\ Junior\ Debt} = \max(V - F_{S}, 0) - \max(V - (F_{S} + F_{J}), 0)
$$

$$
\mathrm{Payoff\ Equity} = \max(V - (F_{S} + F_{J}), 0)
$$

- We have then have

$$
D_{S,0} = V - \mathrm{BSC}(V, F_{S}, r, T, \sigma)
$$

$$
D_{J,0} = \mathrm{BSC}(V, F_{S}, r, T, \sigma) - \mathrm{BSC}(V, F_{S} + F_{J}, r, T, \sigma)
$$

$$
E_{0} = \mathrm{BSC}(V, F_{S} + F_{J}, r, T, \sigma)
$$
\mathrm{Payoff\ of\ Senior\ Debt} = V - \max(V - F_{S}, 0)
$$

$$
\mathrm{Payoff\ of\ Junior\ Debt} = \max(V - F_{S}, 0) - \max(V - (F_{S} + F_{J}), 0)
$$

$$
\mathrm{Payoff\ Equity} = \max(V - (F_{S} + F_{J}), 0)
$$

- We have then have

$$
D_{S,0} = V - \mathrm{BSC}(V, F_{S}, r, T, \sigma)
$$

$$
D_{J,0} = \mathrm{BSC}(V, F_{S}, r, T, \sigma) - \mathrm{BSC}(V, F_{S} + F_{J}, r, T, \sigma)
$$

$$
E_{0} = \mathrm{BSC}(V, F_{S} + F_{J}, r, T, \sigma)
$$

- Next Figure plots $D_{J,0}$ and $D_{S,0}$ when $F_{S} = F_{J} = 100$.

#### Relative Pricing of Junior and Senior Debt

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/aaeadea1c86fc0c50cf211c93232e15f29447bcc22ed3ea3e812fc2fdccffa70.jpg)

The Value of Senior and Junior Debt
Value of Senior and Junior Debt

- Given these relationships, we can also look at the relationship between $D_{J,0}$ and $D_{S,0}$

#### Relative Pricing of Junior and Senior Debt

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/ea332b460712f468cb6926ff618401866104da736e2edbd6cfbc663056eb554c.jpg)

Junior vs. Senior Debt

- This gives a measure of how Senior and Junior debt should be related.
- It could help spotting misalignments of the two debt values.

### Warrants

- Warrants are options issued by the firm on its own stock
- The holder of the warrant has the right, but not the obligation, to purchase a given number $m$ of shares from the firm at the given strike price $K$ at maturity $T$.
- The firm may issue new shares to make whole to the warrant holder, which generates a dilution effect on the total value of equity, as the firm is selling shares at a lower value than they are worth.
- Example: Consider a whole equity firm with $n$ shares outstanding, and total value of assets equal to $V$.
- If the warrant-holders exercise the warrant, they pay $K$ per share and receive $m$ shares.
- After the exercise of the warrant, the firm's assets are $V_{T} + m \times K$.
- Therefore, the exercised warrants are worth

$$
\mathrm{Value\ of\ 1\ Share\ after\ Exercise} - K = \frac{V_{T} + m \times K}{n + m} - K = \frac{n}{n + m} \left(\frac{V_{T}}{n} - K\right)
$$

- The term $V_{T}/n$ is the value of one share without the warrants. The term $n/(n + m)$ is called "dilution adjustment".
- Thus:

$$
\text{Value of warrants} = \frac{n}{n + m} \mathrm{BSC}\left(\frac{V_{0}}{n}, K, r, \sigma, T\right)
$$

### Bond and Equity Holders' Conflicts of Interest

- The Merton's model is at the basis of the agency theory of the firm, in which there is a natural conflict between equity holders and debt holders.

### 1. Volatility

- Equity holders are long a call option $\Longrightarrow$ They like volatility and thus risky projects.
- Bond holders are short the call option $\Longrightarrow$ They dislike volatility.

### 2. Dividends

- Equity holders are long a call option $\Longrightarrow$ They like dividend payments

* The decrease in value of equity is less than the dollar amount received in dividends.
  * Intuition: The Delta of equity is less than 1, Δ = N(d₁) < 1, ⇒ \$1 dollar decrease in assets V implies less than \$1 decrease in equity.

- Example: A firm has V = $10bil, F = $10bil, T = 5, r = 2%, σ = 10%. Then E0 = \$1.4066 bil.

* If the firm makes a cash dividend payment of \$1 bil ⇒ V = 9 ⇒ E0 = 0.7794 ⇒ Equity lost 0.6272 bil in equity value, but got the 1 bil cash.
* Where is this money coming from?

- The value of bonds must have gone down by the same amount $\Longrightarrow$ Bondholders dislike dividend payments.

#### Bond and Equity Holders' Conflicts of Interest

- $\Longrightarrow$ If there are monitoring costs to check what equityholders do, bondholders require a higher premium because they take into account the incentive of equityholders to maximize their value. Unusual dividend payments can be taken care through bond covenants. But the choice of risky/safe projects is harder.

### Leveraged Firms and Debt Overhang

- During crisis periods, such as the 2007/08 crisis, it is hard for firms to raise new equity capital.
Why?

- For highly levered firms, injecting capital into the firm implies a direct transfer of value from equity holders to debt holders.
- This effect is called "debt overhang"
- Example: A firm has $V = 9$ bil, $F = 10$ bil, $T = 5$ years, $\sigma = .1$, $r = .02$.

$$
\Longrightarrow E_{0} = \$0.7793 \quad \text{and} \quad D_{0} = 8.2206.
$$

- Suppose the firm issue shares and raises \$1 bil in cash.
- The value of assets is now $V = 10$ bil. Given that the face value of debt did not change, what is the value of equity and debt?

$$
\Longrightarrow E_{0} = 1.4066 \quad \text{and} \quad D_{0} = 8.59337.
$$

* Equity increased by only \$0.6272 billion but they put \$1 billion.
* The value of bonds increased by \$0.3728

- Of course, the intuition is the same as for dividend cash payments: The Delta of the option is less than 1.

### Credit Risk Measurement: KMV

- How can we compute the probability of default of a particular bond or entity?
- Credit rating agencies provide credit rating to bonds, which provide (their) assessment of their probability of default.
- For instance, the following table is from Standard and Poor. This is called the transition matrix

<table><tr><td>Initial Rating</td><td colspan="8">Rating at the end of the year</td></tr><tr><td></td><td>AAA</td><td>AA</td><td>A</td><td>BBB</td><td>BB</td><td>B</td><td>CCC</td><td>D</td></tr><tr><td>AAA</td><td>0.8910</td><td>0.0963</td><td>0.0078</td><td>0.0019</td><td>0.0030</td><td>0.0000</td><td>0.0000</td><td>0.0000</td></tr><tr><td>AA</td><td>0.0086</td><td>0.9010</td><td>0.0747</td><td>0.0099</td><td>0.0029</td><td>0.0029</td><td>0.0000</td><td>0.0000</td></tr><tr><td>A</td><td>0.0009</td><td>0.0291</td><td>0.8894</td><td>0.0649</td><td>0.0101</td><td>0.0045</td><td>0.0000</td><td>0.0009</td></tr><tr><td>BBB</td><td>0.0006</td><td>0.0043</td><td>0.0656</td><td>0.8427</td><td>0.0644</td><td>0.0160</td><td>0.0018</td><td>0.0045</td></tr><tr><td>BB</td><td>0.0004</td><td>0.0022</td><td>0.0079</td><td>0.0719</td><td>0.7764</td><td>0.1043</td><td>0.0127</td><td>0.0241</td></tr><tr><td>B</td><td>0.0000</td><td>0.0019</td><td>0.0031</td><td>0.0066</td><td>0.0517</td><td>0.8246</td><td>0.0435</td><td>0.0685</td></tr><tr><td>CCC</td><td>0.0000</td><td>0.0000</td><td>0.0116</td><td>0.0116</td><td>0.0203</td><td>0.0754</td><td>0.6493</td><td>0.2319</td></tr></table>

- For instance, a BBB rated company has a probability .06% to move to AAA, .43% to AA, 6.5% to A, 84.27% to remain at BBB, 6% to move to BB, etc.

#### Credit Risk Measurement: KMV

- KMV argues that credit ratings did not tell the whole story (they said so way before the crisis).
  - e.g. Bonds in the same credit rating class show different probabilities of default
- They use Merton's model to compute the probabilities of default:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/4f9e30bdf395ddba0cd32cec81eeb76ae1990f4ba725869e447a067ca90eaa41.jpg)  
Fig. 7. Distribution of the firm's assets value at maturity of the debt obligation.

(Figure from Choi, Galai, and Mark, "A comparative analysis of current credit risk models", Journal of Banking and Finance, 2000)

## Credit Risk Measurement: KMV

- More specifically, they obtain

$$
\mathrm{Expected\ Default\ Frequency\ (EDF)} = p_{T} = \mathrm{Pr}[V_{T} < F | V_{0}] = N(-d_{2})
$$

$$
\mathrm{Distance\ to\ Default\ (DD)} = d_{2} = \frac{\ln\left(\frac{V_{0}}{F}\right) + (\mu - \sigma^{2}/2) T}{\sigma \sqrt{T}}
$$

What are the unknowns?

1. $V_{0}$: as book values of assets are unreliable;
2. $\sigma$: the volatility of assets
3. $F$: The default point.

- They find empirically that $F = $ Short Term Debt + 1/2 Long Term Debt works well.

#### Credit Risk Measurement: KMV

- The last two items are $V_{0}$ and $\sigma$.
- What can we observe about a firm?
- The market value of equity;
- The volatility of equity.
- From the Black Scholes formula for equity we obtained earlier

$$
E_{0} = \mathrm{Call}(V_{0}, K, T, r, \delta, \sigma) = N(d_{1}) V_{0} - K e^{-r(T-t)} N(d_{2})
$$

- Note that here we may use a different $K$, as the horizon is different.
- From here, we can also compute the volatility of equity

$$
\sigma_{E} = N(d_{1}) \left(\frac{V_{0}}{E_{0}}\right) \sigma
$$

- Therefore, we set

$$
E_{0} = \mathrm{Market\ Value\ of\ Equity}; \quad \sigma_{E} = \mathrm{Volatility\ of\ Equity}
$$

- We solve two equations in the two unknown $V_{0}$ and $\sigma$.

#### Credit Risk Measurement: KMV

- Simple Example (KMV model is much more elaborate):
- Enron market capitalization on May 30 1989 was 2.260 bil (from CRSP).
- The book value of debt $= 3.249$ bil (prospectus).
- Volatility of equity return $= 20\%$.
- The nominal one year interest rate was $8.6\%$ (continuously compounded).
- Assume $T = 8$ years (long term debt).
- Next two figures plot the value of equity and volatility of equity implied by the Merton model for various levels of current assets  $V_{0}$  and volatility  $\sigma$

## Credit Risk Measurement: KMV

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/8250e683a18e5b51721450cc5c6e148c49a2d9bc7821f223cf79a6e4638aca95.jpg)  
Enron Corp Returns and Volatility

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/c723e7143337aca22547a3dd40bdcff8c2c7b84799429106dab81e2031905d11.jpg)

## Credit Risk Measurement: KMV

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/a0c6a343c88f2bc641bb4dd46f16578bfb9646d44139e69c6f91cfd5417c2b00.jpg)  
Model implied value of equity

- The plot shows a combination of  $V_{0}$  and  $\sigma$  that equates the model equity value to the market equity capitalization of 2.26 bil.

## Credit Risk Measurement: KMV

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/1e5169d71b10efbd0f99538b4d9fe82d21d63bb5be348dc3d68ee7203c6212e9.jpg)  
Model implied volatility of equity

- We therefore find $V_{0} = 3.84$ bil and $\sigma = 12\%$.
- We finally use these quantities to compute the distance to default and the expected frequency of default.

* We need one more input: the growth rate of assets $\mu$.
* This must be forecasted from fundamentals. Assume $\mu = 15\%$. We find:

$$
d_{2} = 2.69 \quad \text{and} \quad p_{T} = 36 \mathrm{bp}
$$

#### Credit Risk Measurement: KMV

- According to the transition table at the end of the case, a BBB company has 45 bp chance of defaulting.
- KMV argues that the normal distribution is imperfect, especially because of the thin tails.
- So, they define a new map from distance to default and expected default frequency, which is estimated from data.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/b660265ec5b9b653741c584fafbd5a2d14e8a0174d2d5b3549e6560f88329d0a.jpg)  
Figure 15: Distance to Default and Expected Default Frequency  
Fig. 17. Mapping of the "distance-to-default" into the "expected default frequencies", for a given time horizon.

- For  $d_{2} = 2.69$  it looks on target.

### The Credit Derivatives Market

- Credit derivatives are securities whose payoff depend on a "credit event"
- The credit event could be "default," change in the credit rating of the issuer, or change in credit spreads.
- The credit derivatives market skyrocketed in the 2000 - 2008 period.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/546adc2f5212dc18f5bcd280c440fc67bedac0c146591239c44f772f841c67e2.jpg)

Figure 1. Market breakdown by instrument type
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/becc8b4ba20811e13736371fbc6610bf26572bdf1210a05859b598471a375546.jpg)

Source: Risk Magazine 2003 Credit Derivatives Survey

Figure 2. Breakdown by end users
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/5e14ad0559cd61e8bb5372db39c1d29dd6f13693466cdca66e64289ca5520a19.jpg)

Source: Risk Magazine 2003 Credit Derivatives Survey.

### Credit Derivatives

- Definition of Default: Any non-compliance with the exact specification of a contract.
- The contracts generally involve three parties:

1. The issuer of the underlying risky security (bond)
2. The investor who bought the security and wants protection (protection buyer)
3. A counterparty who is willing to sell protection (protection seller)

- The credit derivative exchange only involves the protection buyer and seller.
- The original issuer is just "the reference entity" over which the credit derivative contract is determined.

## Single Name Credit Default Swap

Issuer
↓
issues defaultable asset P
↓

Investor (protection buyer)

Investor pays bank a premium

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/266a53be23e2a4b4c3473c57589e94d5042f65126e5bf8aba8da113255eb68ed.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/107b013ff3d1533d44a804403c4cbe82eb71d01b2ad6bae2804ce2cd029b97bc.jpg)

Bank pays Investor if credit event

Bank (protection seller)

- Investor pays interest on a notional amount $N$ to Bank until maturity $T$ or the default of the issuer (reference entity);
- In case of default, Bank pays Investor the notional amount $N$ in exchange of the physical delivery of the underlying asset.
- If cash settled, bank pays investor the net loss (=notional minus value of defaulted bond).
- This is by far the most popular credit derivative. It is essentially an insurance contract.

### Single Name Credit Default Swap

- Example:
- It is 2008 and an investor holds \$10 mm of 5-year bonds from Lehman Brothers.
- Given recent events, the investor is now worried about Lehman defaulting on its obligations.
- Two strategies:

1. Sell out the position

* Problem: Low liquidity and high transaction costs.

2. Enter into a CDS with, say, AIG Financial Products, to obtain insurance against Lehman defaulting.

* This solution is cheaper, and easier to perform.
* It is the equivalent for credit markets to the now standard interest rate swaps that corporations use to manage assets and liabilities.
* Assume CDS spread is 400bp, then investor pays AIG $10 \times .04 \times .25 = \$100,000$ each quarter until default
* If default occurs, AIG FP pays \$10 mm in exchange of the defaulted bond (physical delivery).
* If it is cash settled, dealer quotes for recovery rate are obtained, and Lehman pays "notional minus recovery."

## CDS Spread: Lehman and Bear Stearns

- The CDS spread capture important information about the likelihood of survival of individual companies.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/a5f5d2c5b7e7155d8a23e034fd71da64bb00434647bec1bc90f68a6076ce06ba.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/715e094aa6fdf9441448020b9f305762a6b5c6364e42287e0e8d338cadac141f.jpg)  
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

# Financial Instruments Observations about CDS

John Heaton

The University of Chicago

Booth School of Business

# Types of CDS, Quantities

# Types

- Single-name CDS: single reference entity such as a corporation or sovereign  
- Multi-name CDS: cover defaults in a reference portfolio such as a basic credit default swap or a CDS index (typically an index of commonly negotiated single-name CDS)

# Quantities:

- From BIS (2021): \$8.5 trillion notional at end of 2020. 1.5% of notional of all global derivatives.  
GFC likely reduced size we see even today  
- $62\%$  now with central counterparties that act like exchanges.  
- Increased size of sovereign CDS since GFC:  $4\%$  of total notional in 2007 to  $14\%$  in 2020.

# CDS Market

From Bomfim (2022), "Credit Default Swaps," Finance and Economics Discussion Series, Federal Reserve

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/8bb7b44e716b0bfa99e19582bd0c40b377e816c22ac2cd46b66ae880214a137e.jpg)  
Source: Bank for International Settlements (2021) and author's calculations.  
Note: "End Users" refers to non-dealer end users.  
List of abbreviations used in Figure 1:  
Other MN: Other multi-name CDS (non-index product)  
Spec purp: Special-purpose vehicle, special-purpose corporation, or special-purpose entity  
Sec prod: Securitized products  
Ref Entity: Reference Entity

# Sovereign Crises

- Italy:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/b706aad37c91dd3686743b5a00957c8cb55a00ea24c70ba68efa2344949ff5f9.jpg)  
Figure 2: SOVEREIGN CDS CURVE, ITALY

- Russia: 10-year CDS:  $2.54\%$  on 1/31/2022 to  $4.04\%$  on 02/28/2022. Spike for 5-year CDS:  $8.94\%$  on 2/24/2022.

# CDS Indexes

A nice discussion of indexes is here.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/16cefcde3716b3be985ef1b6968f517121d0c1ee3855ac2a0b1e81ff406a1f26.jpg)  
Source: His Markit

# Financial Instruments

# Interest Rate Derivatives

John Heaton

The University of Chicago

Booth School of Business

1. Interest rate FRA and Swaps  
2. Black's model for interest rate derivatives  
3. Interest Rate Trees

3.1 Interest Rate Trees versus Stock Trees  
3.2 Risk Neutral Pricing on Trees  
3.3 A 3-Period Bond

4. The Ho Lee Model

4.1 Risk Neutral Trees  
4.2 Calibration of Ho Lee Model

4. Using Risk Neutral Trees

4.1 Callable Bonds

# The Growth in Interest Rate Derivatives

# The Notional Amount of Over-the-Counter Derivatives

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/713dd77afed0ea5d5c8531f7c446037a61d384b950ebb1eccbd333be2534a062.jpg)  
Panel A. Millions of US Dollars

Panel B. Multiple of Global GDP  
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/42771355659f8ed8e0ba3cdad5e306edd6a3badf882a258e995a4ac13dc7d9ba.jpg)  
(Data Source: OTC derivatives data are from the Bank for International Settlements, while global GDP data are from the World Bank.)

# Forward Rate Agreements

- A Forward Rate Agreement (FRA) is an agreement between two counterparties A and B according to which at maturity  $T$
- Counterparty A makes a payment to B equal to  $N \times F \times \Delta$ , where  $N$  is the notional,  $\Delta$  the compounding frequency, and  $F$  is a fixed rate decided at time 0;  
- Counterparty B makes a payment to A equal to  $N \times R(T_0, T) \times \Delta$ , where  $T_0 = T - \Delta$ .
- The reference floating rate  $R$  is typically the LIBOR rate. The forward rate  $F$  is determined at time 0 so that the value of the FRA is zero.  
- What is the value of this net cash flow at time 0 for given  $F$ ?  
- Assume we have available the values of zero coupon bonds  $Z(0, T_0)$  and  $Z(0, T)$ .  
- The Net Cash flow to counterparty A is

$$
\begin{array}{l} \mathrm {N e t C a s h F l o w a t} T = N \times \Delta \times (F - R (T _ {0}, T)) \\ = N \times (1 + F \times \Delta) \qquad (\mathrm {F i x e d L e g}) \\ - N \times (1 + R (T _ {0}, T) \times \Delta) \qquad \mathrm {(F l o a t i n g L e g)} \\ \end{array}
$$

- We compute the value of the FRA by computing the value of each leg.

# Forward Rate Agreements

- Present value of fixed leg. This can be computed immediately:

$$
\mathrm {V a l u e o f F i x e d L e g} = Z (0, T) \times N \times (1 + F \times \Delta)
$$

- Present value of floating leg. This must be computed in two steps

1. Compute the value of cash flow  $N \times R(T_0, T)$  as of time  $T_0$ . Note that at that time we will know the rate  $R(T_0, T)$

$$
\mathrm {V a l u e o f F l o a t i n g L e g a t} T _ {0} = \frac {\mathrm {C a s h F l o w a t} T}{1 \mathrm {p e r i o d d i s c o u n t}} = N \times \frac {(1 + R (T _ {0} , T) \times \Delta)}{(1 + R (T _ {0} , T) \times \Delta)} = N
$$

2. Obtain the value of Floating Leg at 0

$$
\mathrm {V a l u e o f F l o a t i n g L e g a t} 0 = Z (0, T _ {0}) \times N
$$

- Therefore, the value of the FRA is

$$
V = N \times [ Z (0, T) \times (1 + F \times \Delta) - Z (0, T _ {0}) ] = N \times Z (0, T) \times \left[ (1 + F \times \Delta) - \frac {Z (0 , T _ {0})}{Z (0 , T)} \right]
$$

- The forward rate  $F$  makes this quantity equal to zero

$$
1 + F \times \Delta = \frac {Z (0 , T _ {0})}{Z (0 , T)} \Longrightarrow F = \frac {1}{\Delta} \left(\frac {Z (0 , T _ {0})}{Z (0 , T)} - 1\right)
$$

# Forward Rate Agreement: Example

- It is November 1, 2022. A firm has a receivable of \$100 million in six months (T₁ = 0.5), and wishes to park this money for an additional six months (until T₂ = 1), when it will need to use it for some capital expenditure.  
- The firm is worried that the six-month rate will decline at  $T_{1}$  and thus wants to lock-in a six-month rate today.  
- To hedge, the firm can enter into a six-month FRA with a bank for the period  $T_{1}$  to  $T_{2}$ , and notional  $N = \$ 100$ million.
- Today the bank agrees to pay in one year ( $T_{2} = 1$ ) the amount  $\frac{N}{2} \times F(0, .5, 1)$ ;  
- The firm agrees to pay on the same day the amount  $\frac{N}{2} \times R(0.5, 1)$ .
- That is, they exchange the payment at  $T_{2} = 1$

$$
\text {N e t} T _ {2} = \frac {N}{2} \times [ F (0., 5, 1) - R (0. 5, 1) ] \tag {1}
$$

What is the forward rate?

- On November 1, 2022, the value of 6-months Treasury bills is \(Z(0,0.5) = \\)97.728\( and the value of 1-year Treasury bills is \)Z(0,1) = \$95.713\(. Thus:

$$
F(0,0.5,1) = 2\times \left(\frac{Z(0,0.5)}{Z(0,1)} -1\right) = 4.21\%.
$$

# Forward Rate Agreement: Example

- Why does the FRA solves the hedging problem of the firm?  
- Because at  $T_{1} = 0.5$ , when the firm receives its \$100 million receivable, it can simply invest it at the market rate  $R(0.5, 1)$ .  
- Then, at  $T_{2} = 1$ , the firm receives the payoff from the investment, plus the net payment from the FRA. In total:

$$
\begin{array}{l} \begin{array}{r l} \frac {\mathrm {T o t a l a m o u n t}}{\mathrm {a t} T _ {2}} & = \left\{\$ 1 0 0 \mathrm {m i l l i o n} \times \left[ 1 + \frac {R (0 . 5 , 1)}{2} \right] \right\} \quad (\mathrm {R e t u r n o n i n v e s t m e n t}) \end{array} \\ \left. + \left\{\frac {N}{2} \times [ F (0,. 5, 1) - R (0. 5, 1) ] \right\} \quad \mathrm {(F R A p a y m e n t)} \right. \\ = \$ 100 \text {m i l l i o n} \times \left[ 1 + \frac {F (0 , . 5 , 1)}{2} \right] \\ = \$ 102.105 \text {m i l l i o n} \\ \end{array}
$$

- That is, the firm locked in the forward rate  $F(0,.5,1) = 4.21\%$

# Interest Rate Swaps

- An interest rate swap is an agreement between two counterparties, according to which at dates  $T_{1}, T_{2}, \ldots, T_{n}$ , with  $T_{i} = T_{i - 1} + \Delta$ , the counterparties exchange the net cash flows

$$
\mathrm {S w a p N e t C a s h F l o w a t} T _ {i} = N \times \Delta \times (K - R (T _ {i - 1}, T _ {i}))
$$

- The swap rate  $K$  is chosen to make the value of the swap equal to zero at time 0.  
What is the value of the swap at 0?

- Clearly, this specific cash flow is the same we had earlier for a FRA, and therefore

$$
\begin{array}{l} \mathrm {P V o f C a s h F l o w a t} T _ {i} = N \times Z (0, T _ {i}) \times \left[ (1 + K \times \Delta) - \frac {Z (0 , T _ {i - 1})}{Z (0 , T _ {i})} \right] \\ = N \times Z (0, T _ {i}) \times [ (1 + K \times \Delta) - (1 + F (0, T _ {i - 1}, T _ {i}) \Delta) ] \\ = N \times \Delta \times Z (0, T _ {i}) [ K - F (0, T _ {i - 1}, T _ {i}) ] \\ \end{array}
$$

- where we denote  $F(0, T_{i - 1}, T_i)$  the forward rate at time 0 for a FRA between  $T_{i - 1}$  and  $T_i$ .

# Interest Rate Swaps

- It follows that for given  $K$ , the value of the swap is the sum of these values

$$
\mathrm {V a l u e o f S w a p} = N \times \Delta \times \sum_ {i = 1} ^ {n} Z (0, T _ {i}) \times [ K - F (0, T _ {i - 1}, T _ {i}) ]
$$

- The swap rate is then the  $K$  that makes the value of the swap equal to zero

$$
\sum_ {i = 1} ^ {n} Z (0, T _ {i}) \times [ K - F (0, T _ {i - 1}, T _ {i}) ] = 0 \Longrightarrow K = \sum_ {i = 1} ^ {n} w _ {i} \times F (0, T _ {i - 1}, T _ {i})
$$

- where

$$
w _ {i} = \frac {Z (0 , T _ {i})}{\sum_ {i = 1} ^ {n} Z (0 , T _ {i})}
$$

- The swap rate is a weighted average of forward rates.  
- This is very similar to our findings in Teaching Notes 2.

# Interest Rate Swap Example

- Today is November 1, 2022. A firm has receivables of \$5.5 million every six months for the next 5 years.  
- The firm has also a 5-year, semi-annual,  $200 \mathrm{~m}$  floating rate debt outstanding, with floating rate LIBOR + 4 bps.  
- How can the firm use the receivables to service the coupons on the debt?
- A solution is to enter into a fixed-for-floating swap with an investment bank.  
- On November 1, 2022, the swap rate for a 5-year fixed-for-floating swap was quoted at  $K = 5.46\%$ .  
- So, the net cash flow to the firm from the swap contract is

Net cash flow to the firm at \(T_{i} = \\) 200\( million \(\times\) 0.5 \(\times\) \([R(T_{i - 1},T_i) - 5.46\% ]\)

- Why does this swap resolve the problem?

# Interest Rate Swap Example

time  $T_{i}$

# RECEIVABLE

\$5.5 m

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/cdc763f5d3e18683f19a1b553d6af7a50d3c396a8b3848a79d9c18b1afa5003e.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/8fcf65586a58685113ce93e4ac96f2c5f8fd5e53bf104af43202977282b58721.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/eef158c7fd9253dc8d954f7f687694edb68de7877a34e8489fb4f8aaef5a00ec.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/d7898a1c753088cb4405e7c7624d128567cf5a709d3a62e3cb739cb0bc1dadc5.jpg)

MARKET

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/4e6179f5976c1a6838c76d9a7bbbc8dc94f19cd71d24a0701945899d85eaaaea.jpg)

FIRM

Swap: fixed leg

$$
\frac {\mathrm {~$ 200 m}}{2} \times 5.46 \%
$$

$$
\Rightarrow \Rightarrow \Rightarrow
$$

$$
\Longleftarrow \quad \Longleftarrow \quad \Longleftarrow
$$

Swap: floating leg

$$
\frac {\mathrm {s g m a l} 2 0 0 \mathrm {m}}{2} \times R (T _ {i - 1}, T _ {i})
$$

SWAP

DEALER

Floating rate bond

$$
\frac {\$ 2 0 0 \mathrm {m}}{2} \times (R (T _ {i - 1}, T _ {i}) + 4 b p s)
$$

Net Flow  $= 0$

- One of the main reasons for the massive increase in the size of the swap market is its flexibility for cash flow management and risk management.

# Issues with LIBOR

- Until January 31, 2014: British Bankers Association (BBA) LIBOR
- Survey of a panel of banks  
- Banks could underestimate their borrowing costs  
- Conflict within the bank: impact of LIBOR setting on derivatives trading.
- Now ICE LIBOR
- ICE now the benchmark administrator  
- Regulator in UK: Financial Conduct Authority (FCA)  
- Rules for fall-back rates if there are issues

# Alternatives

- SOFR: "Secured Overnight Financing Rate"  
- ARRC: Alternative Reference Rates Committee.  
- Others:
- SONIA (Sterling Over Night Indexed Average)  
- EONIA (Euro Overnight Index Average)  
- TONAR (Tokyo Overnight Average Rate)  
- SARON (Swiss Average Rate Over-Night)  
- Measure of overnight secured borrowing.  
- Collateralized US Treasuries in the repo market.  
- Very liquid and likely resilient markets: \$1 trillion in daily volume  
- Contrast: USD LIBOR three-month tenor: about \$1 billion  
- Published by New York Fed. Along with 30-day, 90-day and 180-day averages

# Transition

- LIBOR market: \$200+ trillion of financial transactions contracts reference LIBOR  
- Transition was set for end of 2021, but now 18 month extension  
- LIBOR permeates many contracts for in securities markets and the corporate world: leases, debt, …  
- Derivatives market with Central Clearing Partners (e.g. CME …).
- Cleared US Dollar interest rate swap contracts at CME: move to SOFR discounting.  
- Intercontinental Exchange (ICE) Benchmark Administration: USD LIBOR benchmarks will stop June 30, 2023
- Fannie and Freddie: have moved bo SOFR contracts  
- New York Fed: conducts repo and reverse repo through tri-party repo.  
- OTC SOFR swaps  
- SOFR caps products have developed since September 2020

# SOFR Derivatives

As an example: at the CME

- Futures: 3-month and 1-month. Using compounding or simple averages.  
- Term SOFR Reference rates based on futures contracts.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/956c2c09aa028a5fc90e9f3d847c70bde5af9289001bf5b4fc02f2f011f7f0d2.jpg)  
Some History

# Overnight Index Swaps (Is)

- In a Is, the two counterparties agree to exchange fixed for floating payments, where the floating payment is tied to the cumulative return from an overnight rate  
- Federal funds rate, SOFR in US. Europe: short-term rate (€STR), (formerly Euro OverNight Index Average (EONIA) rate).  
- Given a notional  $N$ , the floating rate payment at time  $T_{i}$  is

$$
C F (T _ {i}) = N \left(\prod_ {j = 1} ^ {n _ {j}} \left(1 + r _ {t _ {j}} \delta\right) - 1\right) \tag {2}
$$

- where  $\delta$  is the daily interval,  $r_t$  is the reference (annualized) overnight rate, and  $n_j$  is the number of days between reset periods.  
- The day count convention is normally Actual/360.  
- In the continuous time limit  $(\delta \to 0)$ , we have that

$$
C F \left(T _ {i}\right) = N \left(e ^ {\int_ {T _ {i - 1}} ^ {T _ {i}} r (u) d u} - 1\right) \tag {3}
$$

- Is with maturity less than 1 year have only one payment at the maturity.  
- Is with longer maturities have normally quarterly payments.

# What is the value of Is?

- The value of Is is the difference between the floating leg and the fixed leg:

$$
V _ {t} ^ {O I S} = V _ {t} ^ {F l o a t i n g} - V _ {t} ^ {F i x e d} \tag {4}
$$

- Floating Leg: At reset dates, and assuming the payment of a principal at maturity of the swap, the value of the floating leg is par.
- Indeed, investing the notional  $N$  in the overnight index daily gives at  $T_{i}$

$$
N \prod_ {j = 1} ^ {n _ {j}} \left(1 + r _ {t _ {j}} \Delta\right) = C F \left(T _ {i}\right) + N
$$

- $\Longrightarrow$  we can replicate the floating payments, plus a residual of notional at maturity  $T_{i}$ , with an investment  $N$  at time 0.
- It follows

$$
V _ {0} ^ {F l o a t i n g} = N
$$

- Fixed leg: Given a proper discount function  $Z^{OIS}(0,T_i)$ , we obtain

$$
V _ {0} ^ {F i x e d} = N c \Delta \sum_ {i = 1} ^ {n} Z ^ {O I S} (0, T _ {i}) + N Z ^ {O I S} (0, T _ {n}) \tag {5}
$$

- The value of the contract at inception is zero,  $V_{0}^{OIS} = 0$ .  
- It follows from (4) then that

$$
V _ {0} ^ {O I S} = V _ {0} ^ {F l o a t i n g} - V _ {0} ^ {F i x e d} = 0 \tag {6}
$$

- This equation implies that the swap rate  $c$  can be computed from

$$
1 = c \Delta \sum_ {i = 1} ^ {n} Z ^ {O I S} \left(0, T _ {i}\right) + Z ^ {O I S} \left(0, T _ {n}\right) \tag {7}
$$

- which gives

$$
c (T _ {n}) = \frac {1}{\Delta} \frac {1 - Z ^ {O I S} (0 , T _ {n})}{\Sigma_ {i = 1} ^ {n} Z ^ {O I S} (0 , T _ {i})} \tag {8}
$$

- where we now emphasize that the coupon rate  $c$  is for a swap with maturity  $T_{n}$ , and thus write  $c(T_{n})$ .

# Is Discount Curve

- Given the Is coupon rates  $c\left( {T}_{i}\right)$  for every maturity  ${T}_{i}$  ,we can bootstrap the Is zero-coupon curve from (6).  
- We obtain the relation:

$$
Z ^ {O I S} \left(0, T _ {i}\right) = \frac {1 - c \left(T _ {i}\right) \Delta \sum_ {j = 1} ^ {i - 1} Z ^ {O I S} \left(0 , T _ {j}\right)}{1 + c \left(T _ {i}\right) \Delta} \tag {9}
$$

- recalling, however, that Is with maturity less than or equal to 1 year generally have only one payment.  
- Next Figure shows an example of bootstrapping from Is quotes, on January 2, 2009. Panel A reports the original Is quotes from Bloomberg. Panel B uses the quotes from Panel A along with bootstrap methodology (9) and defines the Is discount function  $Z^{OIS}(0,T)$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/85cf823ed2c8911c20744cf1a48fb9a227e7449147f6a45517ea1bc7a09349e7.jpg)  
Is Discount Curve on January 2th, 2009

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/540d6f1944fafaec83b027814d7dabc488a09873bcc821d71c16036bfce027e6.jpg)  
Data Source: Bloomberg

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/588051703b5e2c1c02f7b4f877800daf252b518d3946f18c4d5eba1688b5c5e4.jpg)  
Is and LIBOR Discount Curve on January 2nd, 2007

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/64debf7d71258cb823639782218c429ea237772146d37943aa3934f895467949.jpg)  
Data Source: Bloomberg

- However, if we try after the crisis, we obtain the following figure:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/00c87d0029616751e36519c530913ccf34d037822ac928796623c158f393d1ca.jpg)  
Is and LIBOR Discount Curve on January 2nd, 2009  
Panel A. Is and LIBOR Zero Coupon Curve

Panel B. Is and LIBOR Zero Curve  
![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/a28866b9492cbc828df5acbce2def91eda8dbacfcaef7f238061140fec9fbfb5.jpg)  
Data Source: Bloomberg

- which are quite different.

# Interest Rate Options

- The market for plain vanilla interest rate options is very large.  
These include

- Treasury bond options: Options to purchase a Treasury bond  
- Swaptions: Options to enter into a swap at a given strike (swap) rate.

* Receiver Swaptions: Options to enter into a swap and receive the strike swap rate;  
* Payer Swaptions: Options to enter into a swap and pay the strike swap rate.

- Caps and Floors: Securities that pay when rates go up (Caps) or down (Floors). Their cash flows are given by

$$
\mathrm {C a p C F a t} T _ {i} = N \times \Delta \times \max (R (T _ {i - 1}, T _ {i}) - K, 0);
$$

$$
\mathrm {F l o o r C F a t} T _ {i} = N \times \Delta \times \max (K - R (T _ {i - 1}, T _ {i}), 0)
$$

* Popular derivative instruments to insure agains increases or decreases in interest rates  
* For instance, caps typically accompany floating rate bond issuance.

- Caption and Floortion: Options to enter into a cap or a floor.

# The Black's Formula for Interest Rate options

- The assumptions of Black and Scholes do not apply to interest rate options

1. The Black-Scholes model assumes a constant interest rate, while we are trying to price risk on interest rates;  
2. The Black-Scholes model assumes constant volatility, but if the underlying is e.g. a T-Bond, the volatility depends on duration and thus it is declining with time.

- Even so, practitioners use the Black-Scholes formula to price a number of interest rate derivatives
- For long this has been thought to be at best an approximation of no arbitrage models, because of the violations to Black-Scholes formula's assumption described earlier  
- In recent times, it has been shown that the Black and Scholes formula can be derived by no-arbitrage principles under some assumptions.
- In what follow, we only look at one simple example.

# Example: The Black's formula to price caps

- The Cap pays the sequence of cash flows

$$
\mathrm {C a p C F a t} T _ {i} = N \times \Delta \times \max \left(R (T _ {i - 1}, T _ {i}) - K, 0\right);
$$

- where  $\Delta = T_{i} - T_{i - 1}$ . Each payment is called a caplet.  
- The original Black's formula uses as underlying the futures price, which equals the forward price when interest rates are constant.  
- In the case of caplets, we use the forward rate directly, which is given by

$$
F (0, T _ {i - 1}, T _ {i}) = \frac {1}{\Delta} \left(\frac {Z (0 , T _ {i - 1})}{Z (0 , T _ {i})} - 1\right)
$$

- The model assumes that under the proper risk-adjusted probabilities, at time  $T_{i}$

$$
R (T _ {i - 1}, T _ {i}) = F (T _ {i - 1}, T _ {i - 1}, T _ {i}) \sim L o g N o r m a l
$$

with Variance  $[R(T_{i - 1},T_i)] = \sigma_F^2 T_{i - 1}$  

- Then, the Black formula (see Teaching Notes 5) has

$$
C a p l e t (T _ {i}) = Z (0, T _ {i}) \times [ F (0, T _ {i - 1}, T _ {i}) \times N (d _ {1}) - K \times N (d _ {2}) ]
$$

where

$$
d _ {1} = \frac {\log \left(\frac {F (0 , T _ {i - 1} , T _ {i})}{K}\right) + \frac {1}{2} \sigma_ {F} ^ {2} T _ {i - 1}}{\sigma_ {F} \sqrt {T _ {i - 1}}}; d _ {2} = d _ {1} - \sigma_ {F} \sqrt {T _ {i - 1}}
$$

# Example: The Black's formula to price caps

- Indeed, market participants quote caps and floors directly in terms of implied volatility. For instance, from Bloomberg we have

Table 1: Quotes of Caps and Swaptions on November 1, 2004  

<table><tr><td rowspan="2">Maturity</td><td rowspan="2">Swap Rates</td><td colspan="3">Swaption Vols</td><td colspan="2">Volatilities</td></tr><tr><td>3M</td><td>6M</td><td>1Y</td><td>Caps</td><td>Floors</td></tr><tr><td>1 Y</td><td>2.555</td><td>27.115</td><td>30.234</td><td>31.750</td><td>23.50</td><td>23.50</td></tr><tr><td>2 Y</td><td>2.932</td><td>32.210</td><td>32.327</td><td>31.258</td><td>29.89</td><td>29.89</td></tr><tr><td>3 Y</td><td>3.254</td><td>31.011</td><td>30.937</td><td>29.801</td><td>30.55</td><td>30.55</td></tr><tr><td>4 Y</td><td>3.520</td><td>29.901</td><td>29.622</td><td>28.491</td><td>29.86</td><td>29.86</td></tr><tr><td>5 Y</td><td>3.751</td><td>28.719</td><td>28.513</td><td>27.404</td><td>28.62</td><td>28.62</td></tr><tr><td>7 Y</td><td>4.118</td><td>25.337</td><td>25.332</td><td>24.711</td><td>26.48</td><td>26.48</td></tr><tr><td>10 Y</td><td>4.505</td><td>21.889</td><td>21.833</td><td>21.570</td><td>23.68</td><td>23.68</td></tr></table>

Source: Bloomberg.

- Each entry is a volatility quote for an "at-the-money" instrument, meaning that its strike rate (equal for all the caplets) is the swap rate with the same maturity of the cap.  
- The payment frequency of the underlying caps and floors is 3 months.  
- Since the first payment at horizon 3 months is known at time 0, it is practice to set this caplet equal to zero.

# Example: The Black's formula to price caps

- Example: Consider a 1-year, quarterly cap with strike rate  $r_{K} = 2.555\%$ , quoted at volatility  $\sigma_{F} = 23.5\%$ .  
- The current LIBOR discount curve is as follows

$$
Z (0, 0. 2 5) = 9 9. 4 5 8 0; Z (0, 0. 5) = 9 9. 8 5 1 0; Z (0, 0. 7 5) = 9 9. 1 8 9 9; Z (0, 1) = 9 7. 4 8 3 4.
$$

- From the LIBOR curve, we can compute the quarterly compounded forward rates:

$$
F(0,0.25,0.5) = 2.4562\%; F(0,0.5,0.75) = 2.6932\%; F(0,0.75,1) = 2.8987\%
$$

- Finally, from the quoted volatility  $\sigma_{F} = 23.5\%$ , we obtain the three relevant volatilities:

$$
\sigma_ {F} \times [ \sqrt {T _ {1}}, \sqrt {T _ {2}}, \sqrt {T _ {3}} ] = 23.5 \% \times [ \sqrt {0 . 2 5}, \sqrt {0 . 5}, \sqrt {0 . 7 5} ] = [ 1 1. 7 5 \%, 1 6. 6 2 \%, 2 0. 3 5 \% ].
$$

Using the formula for  $d_{1}$  and  $d_{2}$  we obtain

$$
d _ {1} (0. 5 0) = -. 0 2 7 7 0; d _ {2} (0. 5 0) = -. 0 3 9 4 5 \Longrightarrow \mathrm {C a p l e t} (0. 5 0) = 0. 0 1 8 4
$$

$$
d _ {1} (0. 7 5) = . 4 0 0 0; d _ {2} (0. 7 5) = . 2 3 2 8 \Longrightarrow \mathrm {C a p l e t} (0. 7 5) = 0. 0 6 1 7
$$

$$
d _ {1} (1) = . 7 2 1 8; d _ {2} (1) = . 5 1 8 3 \Longrightarrow \text {C a p l e t} (1) = 0. 1 0 5 7
$$

obtaning

$$
C a p (1 Y) = 0. 0 1 8 4 + 0. 0 6 1 7 + 0. 1 0 5 7 = 0. 1 8 5 9
$$

# The Time Series of Implied Volatility

- The quoted volatility of caps is strongly time varying, denoting time variation in uncertainty about changes in future interest rates.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/ff5f37e5a8e22b1bc0b8fe8624a98793be528bbabe8cb501d2d842c515801850.jpg)  
Source: Pietro Veronesi Fixed Income Securities, Wiley, 2010

# Interest Rate Trees

- We now develop the same arguments we used in TN 4, but for interest rates.  
- Let  $r_t =$  be the six-month, continuously compounded risk-free rate.  
- Let  $q = 1/2$  be the (true) probability to move up or down on the tree.
- The movement of the short-term interest rate is exogenous to investors.  
- E.g. the Federal Reserve sets the Fed Fund rate because of monetary policy issues.

$$
\begin{array}{l} i = 0 \\ i = 1 \\ i = 2 \\ t = 0 \\ t = 0. 5 \\ t = 1 \\ \end{array}
$$

$$
r _ {2, u u} = 0. 0 5 5 7
$$

$$
r _ {1, u} = 0. 0 3 8 7
$$

$$
\begin{array}{c} r _ {2, u d} \\ r _ {2, d u} \end{array} = 0. 0 2 7 9
$$

$$
\begin{array}{l} r _ {0} = 0. 0 1 6 8 \\ r _ {1, d} = 0. 0 0 7 4 \\ r _ {2, d d} = 0. 0 0 0 1 \\ \end{array}
$$

# Interest Rate Trees

- The expected rate in six and twelve months are

$$
E \left[ r _ {1} \right] = \frac {1}{2} r _ {1, u} + \frac {1}{2} r _ {1, d} = 0. 0 2 3 0 5
$$

$$
E \left[ r _ {2} \right] = \frac {1}{4} r _ {2, u u} + \frac {1}{2} r _ {2, u d} + \frac {1}{4} r _ {2, d d} = . 0 2 7 9
$$

- This tree naturally translates into a tree of one period (six months) zero coupon bonds.  
Let

$$
Z _ {i, j} (k)
$$

- be the value of a zero coupon bond at index time  $i$  (e.g.  $i = 1$ ), at node  $j$  (e.g.  $j = u, d \ldots$ ) and with maturity at index  $k$  (e.g.  $k = 2$ ).  
- For instance

$$
Z _ {0} (1) = \mathrm {Z e r o a t t i m e 0 t h a t m a t u r e s a t t i m e 1}
$$

$$
Z _ {1, u} (2) = \mathrm {Z e r o a t t i m e 1 i n n o d e} u p \mathrm {t h a t m a t u r e s a t t i m e 2}
$$

# Interest Rate Trees

- Recall that since steps are every 6 months:

$$
Z _ {i, j} (i + 1) = e ^ {- r _ {i, j} \frac {1}{2}}
$$

- We obtain

$$
\begin{array}{l} i = 0 \\ i = 1 \\ i = 2 \\ \end{array}
$$

$$
Z _ {2, u u} (3) = 0. 9 7 2 5
$$

$$
\boxed {Z _ {0} (1) = 0. 9 9 1 6}
$$

$$
\boxed {Z _ {1, u} (2) = 0. 9 8 0 8}
$$

$$
\boxed { \begin{array}{c} Z _ {2, u d} (3) \\ Z _ {2, d u} (3) \end{array} = 0. 9 8 6 1}
$$

$$
\boxed {Z _ {1, d} (2) = 0. 9 9 6 3}
$$

$$
\boxed {Z _ {2, d d} (3) = 0. 9 9 9 9}
$$

- Important: Note that there is a key distinction between this zero-coupon tree, and the trees for stocks in TN 4.

# Interest Rate Trees vs Stock Trees

- For instance, suppose you assume that the stock process is given by  $(q = 1/2$  to move up)

$$
\begin{array}{l} i = 0 \\ i = 1 \\ i = 2 \\ \boxed {S _ {u u} = 9 0} \\ \end{array}
$$

$$
S _ {u} = 7 0
$$

$$
\boxed { \begin{array}{c} S _ {u d} \\ S _ {d u} \end{array} } = 6 0
$$

$$
\boxed {S _ {0} = 5 0}
$$

$$
\boxed {S _ {d} = 4 0}
$$

$$
\boxed {S _ {d d} = 3 0}
$$

- It is always the same security whose price is quoted along the tree.  
- This is important, as if you buy the stock at time 0 for 50, and wait one period, you can sell it at 70 or 40 depending on the realization along the tree.

# Interest Rate Trees vs Stock Trees

- This is not the case in the zero coupon tree we saw above.
- The price along the tree is the price of a different security at each node: it is always the one period ahead zero coupon bond.  
- So, if I buy at time  $t = 0$  for 0.94, at time  $t = 1$  I will get 1 for sure, and not 0.962 or 0.993.
- How can we model a proper tree, to use in derivative pricing?
- We need more information.  
- For instance, assume that today  $t = 0$ , a zero coupon with maturity  $T = 1$  (i.e.  $i = 2$ ) trades at

$$
Z _ {0} (2) = 0. 9 7 8 1
$$

- Combining this price with the previous tree, we obtain a tree for the bond maturing at  $i = 2$

# The Tree for a Bond Expiring at  $\pmb{i} = \pmb{2}$

$$
i = 0
$$

$$
i = 1
$$

$$
i = 2
$$

$$
Z _ {2, u u} (2) = 1
$$

$$
Z _ {0} (2) = 0. 9 7 8 1
$$

$$
Z _ {1, u} (2) = 0. 9 8 0 8
$$

$$
\begin{array}{l} {Z _ {2, u d} (2)} \\ {Z _ {2, d u} (2)} \end{array} = 1
$$

$$
Z _ {1, d} (2) = 0. 9 9 6 3
$$

$$
Z _ {2, d d} (2) = 1
$$

- This is a proper asset pricing tree, in the sense that the security along the tree is always the same, namely, the bond expiring at time  $i = 2$ .  
- Since the last payoff of any bond is always 1, we typically do not report it.

# Risk Neutral Pricing on Trees

- At this point, risk neutral pricing allows us to price derivative securities on the interest rate tree.  
- As before, we first compute the risk neutral probability to move up the tree  $q_0^*$ .
- The expected risk neutral return to invest in the  $i = 2$  bond is

$$
E ^ {*} \left[ \frac {Z _ {1} (2)}{Z _ {0} (2)} \right] = q _ {0} ^ {*} \frac {Z _ {1 , u} (2)}{Z _ {0} (2)} + (1 - q _ {0} ^ {*}) \frac {Z _ {1 , d} (2)}{Z _ {0} (2)}
$$

- Risk neutral pricing implies that this expected return must equal the safe return of an investment in a zero that matures at time  $i = 1$

$$
\underbrace {q _ {0} ^ {*} \frac {Z _ {1 , u} (2)}{Z _ {0} (2)} + (1 - q _ {0} ^ {*}) \frac {Z _ {1 , d} (2)}{Z _ {0} (2)}} = \underbrace {1} _ {Z _ {0} (1)}
$$

Expected Return on 2-period bond = Return on 1-period Bond

-yielding

$$
q _ {0} ^ {*} = \frac {Z _ {0} (2) / Z _ {0} (1) - Z _ {1 , d} (2)}{Z _ {1 , u} (2) - Z _ {1 , d} (2)}
$$

- Note that this is the same equation we found in TN 4.

# Risk Neutral Pricing on Trees

- Given the risk neutral probability, the value  $V_{i}$  of every traded security must satisfy

$$
V _ {0} = Z _ {0} \left(1\right) E ^ {*} \left[ V _ {1} \right]
$$

- For instance, in the example we have

$$
q _ {0} ^ {*} = \frac {Z _ {0} (2) / Z _ {0} (1) - Z _ {1 , d} (2)}{Z _ {1 , u} (2) - Z _ {1 , d} (2)} = \frac {0 . 9 7 8 1 / 0 . 9 9 1 6 - 0 . 9 9 6 3}{0 . 9 8 0 8 - 0 . 9 9 6 3} = 0. 6 4 3 5
$$

- Option on Interest Rate:
- Suppose we want to price an option on the interest rate, with strike  $\bar{r} = 0.0168$  
- The payoffs are:

$$
\mathrm {p a y} _ {1, u} = 1 0 0 \times \max (r _ {1, u} - \overline {{r}}, 0) = 2 1. 9 \mathrm {a n d} \mathrm {p a y} _ {1, d} = 1 0 0 \times \max (r _ {1, d} - \overline {{r}}, 0) = 0
$$

$$
\begin{array}{l} \mathrm {O p t i o n} _ {0} = Z _ {0} (1) \times E ^ {*} [ \mathrm {p a y} _ {1} ] \\ = 0. 9 9 1 6 \times (0. 6 4 3 5 \times 2 1. 9 + 0. 3 5 6 4 5 \times 0) \\ = 1 3. 9 7 \\ \end{array}
$$

# Risk Neutral Pricing on Trees

# - Question

- Under the risk neutral probabilities, the expected interest rate is

$$
E ^ {*} \left[ r _ {1} \right] = q _ {0} ^ {*} \times r _ {1, u} + \left(1 - q _ {0} ^ {*}\right) \times r _ {1, d} = 0. 0 2 7 5
$$

- If your boss asks you what is your forecast of the interest rate in six months, would you tell him  $2.75\%$ ?
- In the real world, the expected interest rate was

$$
E \left[ r _ {1} \right] = 2.305 \% <   2.75 \% = E ^ {*} \left[ r _ {1} \right]
$$

- Passing from the real to the risk neutral world implies increasing the expected interest rate.

# A Problem in Finding the Tree for a Bond Expiring at  $\pmb{i} = \pmb{3}$

- What is then a tree for a bond expiring at  $i = 3$ ?  
- Let  $Z_{0}(3) = 0.9615$  be the current market price of a bond maturing at  $T = 1.5$ , i.e.  $i = 3$ .

$$
i = 0
$$

$$
i = 1
$$

$$
i = 2
$$

$$
Z _ {2, u u} (3) = 0. 9 7 2 5
$$

$$
Z _ {0} (3) = 0. 9 7 8 1
$$

$$
Z _ {1, u} \left(3\right) =??
$$

$$
\begin{array}{l} Z _ {2, u d} (3) \\ Z _ {2, d u} (3) \end{array} = . 9 8 6 1
$$

$$
Z _ {1, d} \left(3\right) =??
$$

$$
Z _ {2, d d} (2) = . 9 9 9 9
$$

- While from the interest rate tree we find  $Z_{2,j}(3)$ , there is not an obvious way to compute  $Z_{1,j}(3)$ . - We need no arbitrage restrictions.

# Finding the Tree for a Bond Expiring at  $\pmb{i} = \pmb{3}$

- The first no arbitrage restriction is provided by the risk neutral probability  $q_0^*$ , which implies

$$
Z _ {0} (3) = Z _ {0} (1) E ^ {*} [ Z _ {1} (3) ] = Z _ {0} (1) [ q _ {0} ^ {*} Z _ {1, u} (3) + (1 - q _ {0} ^ {*}) Z _ {1, d} (3) ]
$$

- How can we compute  $Z_{1,u}(3)$  and  $Z_{1,d}(3)$ ?
- We can use the "implied tree" methodology, discussed in TN 5.  
- Let  $q_{1,u}^{*}$  and  $q_{1,d}^{*}$  be the risk neutral probabilities to move up or down the tree at time  $i = 1$ .  
- Since the same formula as earlier applies, we have

$$
q _ {1, u} ^ {*} = \frac {Z _ {1 , u} (3) / Z _ {1 , u} (2) - Z _ {2 , u d} (3)}{Z _ {2 , u u} (3) - Z _ {2 , u d} (3)}
$$

$$
q _ {2, d} ^ {*} = \frac {Z _ {1 , d} (3) / Z _ {1 , d} (2) - Z _ {2 , d d} (3)}{Z _ {2 , d u} (3) - Z _ {2 , d d} (3)}
$$

- Choose  $Z_{1,u}(3)$  and  $Z_{1,d}(3)$  so that the current price of the bond  $Z_0(3) = 0.9615$
- Problem: We have one equation (the value of the bond) and two unknowns  $(Z_{1,u}(3)$  and  $Z_{1,u}(3))$
- We need one more equation. Use for instance  $q_{1,u}^{*} = q_{1,d}^{*} = q_{1}^{*}$ .  
- Practically, then, for every  $q_1^*$  we obtain the two values of  $Z_{1,u}(3)$  and  $Z_{1,d}(3)$  from the equations above, and thus the tree.

# Finding the Tree for a Bond Expiring at  $\pmb{i} = \pmb{3}$

- We can find numerically (e.g. using Solver) the value  $q_{1}^{*}$  such that the price of the traded security  $Z_{0}(3) = 0.9615$  equals the "model price"

$$
\begin{array}{r l} \widehat {Z} _ {0} (3) = & Z _ {0} (1) \left\{q _ {0} ^ {*} Z _ {1, u} (3) + (1 - q _ {0} ^ {*}) Z _ {1, d} (3) \right\} \\ & \mathrm {w h e r e} \end{array}
$$

$$
Z _ {1, u} (3) = Z _ {1, u} (2) \left\{q _ {1} ^ {*} Z _ {2, u u} (3) + (1 - q _ {1} ^ {*}) Z _ {2, u d} (3) \right\}
$$

$$
Z _ {1, d} (3) = Z _ {1, d} (2) \left\{q _ {1} ^ {*} Z _ {2, d u} (3) + (1 - q _ {1} ^ {*}) Z _ {2, d d} (3) \right\}
$$

- We find  $q_1^* = 0.5912$  which implies  $Z_{1,u}(3) == 0.959$  and  $Z_{1,d}(3) = 0.988$ .

# Finding the Tree for a Bond Expiring at  $\pmb{i} = \pmb{3}$

$$
i = 0
$$

$$
i = 1
$$

$$
i = 2
$$

$$
Z _ {2, u u} (3) = 0. 9 7 2 5
$$

$$
Z _ {1, u} (3) = 0. 9 5 9
$$

$$
Z _ {0} (3) = 0. 9 6 1 5
$$

$$
\begin{array}{c} Z _ {2, u d} (3) \\ \text {一} \end{array} = 0. 9 8 6 1
$$

$$
Z _ {2, d u} (3)
$$

$$
Z _ {1, d} (3) = 0. 9 8 8
$$

$$
Z _ {2, d d} (3) = 0. 9 9 9 9
$$

- In summary, building trees to price fixed income securities is not straightforward.  
- The task is made complicated from the fact that no-arbitrage restrictions exist between bonds of different maturities.

# The Ho Lee Model

- Moving from risk natural to risk neutral trees is complicated.  
- The current main methodology is to build directly a risk neutral tree.  
- A famous model is the Ho Lee model.

$$
r _ {i + 1} = r _ {i} + \theta (i) \Delta \pm \sigma \sqrt {\Delta}
$$

- where  $\Delta$  is the time step,  $\theta(i)$  is a function of time chosen to match current prices, and  $\pm \sqrt{\Delta}$  occur with  $1/2$  (risk neutral) probability.
- This process generates a recombining tree, independently of  $\theta(i)$ . Starting from  $r_0$

$$
r _ {1, u} = r _ {0} + \theta (0) \Delta + \sigma \sqrt {\Delta}
$$

$$
r _ {1, d} = r _ {0} + \theta (0) \Delta - \sigma \sqrt {\Delta}
$$

$$
r _ {2, u u} = r _ {1, u} + \theta (1) \Delta + \sigma \sqrt {\Delta}
$$

$$
r _ {2, u d} = r _ {1, u} + \theta (1) \Delta - \sigma \sqrt {\Delta}
$$

$$
r _ {2, d u} = r _ {1, d} + \theta (1) \Delta + \sigma \sqrt {\Delta}
$$

$$
r _ {2, d d} = r _ {1, d} + \theta (1) \Delta - \sigma \sqrt {\Delta}
$$

- It is easy to see that  $r_{2,ud} = r_{2,du} = r_0 + (\theta (0) + \theta (1))\Delta$

# The Ho Lee Model

- The tree is "implied" as follows:  
- Inputs: (a) Time series of short term interest rates; (b) Current bond prices.

1. From historical interest rates, obtain an estimate of  $\sigma = st.dev(\Delta r_i)$  
2. Then, compute  $\theta(i)$  recursively, as follows

Use bond maturing at time  $i = 2$  to obtain  $\theta(0)$

Use bond maturing at time  $i = 3$  to obtain  $\theta(1)$

：

Use bond maturing at time  $i = n$  to obtain  $\theta (n - 2)$

- In order to perform this, we must first see how to use "risk neutral" trees to price bonds.

# Using Risk Neutral Trees

- Assume that we built the risk neutral tree already, and we simply use it.  
- Let  $r_{i,j}$  be the 6 month, continuously compounded interest rate.  
- At every time (1 period =  $\Delta = 6$  months), there is equal risk neutral probability ( $q^{*} = 1/2$ ) to move up or down.

$$
i = 0
$$

$$
i = 1
$$

$$
i = 2
$$

$$
r _ {1, u} = 0. 0 4 3 3
$$

$$
r _ {2, u u} = 0. 0 6 3 8
$$

$$
r _ {0} = 0. 0 1 6 8
$$

$$
\begin{array}{c} {r _ {2, u d}} \\ {r _ {2, d u}} \end{array} = 0. 0 3 6 1
$$

$$
r _ {1, d} = 0. 0 1 2 0
$$

$$
r _ {2, d d} = 0. 0 0 8 3
$$

# Using Risk Neutral Trees

From the tree,  $Z_{0}(1) = e^{-r_{0}\Delta} \times 1 = 0.9916$  

- What is the value of bond paying \$1 in one year (i = 2)?  
- As usual, it can be obtained by proceeding backward on the tree:

$$
i = 0
$$

$$
i = 1
$$

$$
i = 2
$$

$$
Z _ {2, u u} (2) = 1
$$

$$
\begin{array}{l} r _ {0} = 0. 0 1 6 8 \\ Z _ {0} (2) = e ^ {- r _ {0} \Delta} \times \left(\frac {1}{2} Z _ {1, u} (2) + \frac {1}{2} Z _ {1, d} (2)\right) \\ = 0. 9 7 8 1 \\ \end{array}
$$

$$
\begin{array}{l} r _ {1, u} = 0. 0 4 3 3 \\ Z _ {1, u} (2) = e ^ {- r _ {1, u} \Delta} \times 1 = 0. 9 7 8 6 \\ \end{array}
$$

$$
\begin{array}{l} Z _ {2, u d} (2) \underset {- 1} {\mathrm {}} \\ Z _ {2, d u} (2) \\ \end{array}
$$

$$
\begin{array}{l} r _ {1, d} = 0. 0 1 2 0 \\ Z _ {1, d} (2) = e ^ {- r _ {1, d} \Delta} \times 1 = 0. 9 9 4 0 \\ \end{array}
$$

$$
Z _ {2, d d} (2) = 1
$$

# Using Risk Neutral Trees

- Similarly, a bond paying \$1 in 1.5 years (i = 3):

$$
\begin{array}{l} i = 0 \\ i = 1 \\ i = 2 \\ i = 3 \\ \end{array}
$$

$$
Z _ {3, u u u} (3) = 1
$$

$$
r _ {0} = 0. 0 1 6 8
$$

$$
Z _ {0} (3) = 0. 9 6 0 7
$$

$$
r _ {1, u} = 0. 0 4 3 3
$$

$$
Z _ {1, u} (3) = 0. 9 5 4 5
$$

$$
r _ {2, u d} = 0. 0 3 6 1
$$

$$
Z _ {2, u d} \left(3\right) = 0. 9 8 2 1
$$

$$
Z _ {3, u u d} (3)
$$

$$
Z _ {3, u d u} (3)
$$

$$
= 1
$$

$$
r _ {1, d} = 0. 0 1 2 0
$$

$$
Z _ {1, d} (3) = 0. 9 8 3 0
$$

$$
r _ {2, d d} = 0. 0 0 8 3
$$

$$
Z _ {2, d d} (3) = 0. 9 9 5 9
$$

$$
Z _ {3, u d d} (3)
$$

$$
Z _ {3, d d u} (3)
$$

$$
= 1
$$

$$
Z _ {3, d d d} (3) = 1
$$

# Risk Neutral Trees

- In addition, computers can be programmed rather easily to carry out the backward computation.

<table><tr><td colspan="12">Table 2: An Interest Rate Tree</td></tr><tr><td>i</td><td>0</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td></tr><tr><td>t</td><td>0</td><td>0.5</td><td>1</td><td>1.5</td><td>2</td><td>2.5</td><td>3</td><td>3.5</td><td>4</td><td>4.5</td><td>5</td></tr><tr><td>j</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>1</td><td>1.68</td><td>5.71</td><td>9.6</td><td>13.35</td><td>16.97</td><td>20.46</td><td>23.83</td><td>27.09</td><td>30.23</td><td>33.25</td><td></td></tr><tr><td>2</td><td></td><td>-0.84</td><td>3.17</td><td>6.97</td><td>10.62</td><td>14.13</td><td>17.5</td><td>20.76</td><td>23.9</td><td>26.93</td><td></td></tr><tr><td>3</td><td></td><td></td><td>-3.27</td><td>0.77</td><td>4.55</td><td>8.13</td><td>11.55</td><td>14.83</td><td>17.99</td><td>21.02</td><td></td></tr><tr><td>4</td><td></td><td></td><td></td><td>-5.61</td><td>-1.52</td><td>2.27</td><td>5.84</td><td>9.2</td><td>12.41</td><td>15.48</td><td></td></tr><tr><td>5</td><td></td><td></td><td></td><td></td><td>-7.87</td><td>-3.72</td><td>0.12</td><td>3.69</td><td>7.04</td><td>10.2</td><td></td></tr><tr><td>6</td><td></td><td></td><td></td><td></td><td></td><td>-10.06</td><td>-5.83</td><td>-1.94</td><td>1.66</td><td>5.01</td><td></td></tr><tr><td>7</td><td></td><td></td><td></td><td></td><td></td><td></td><td>-12.16</td><td>-7.87</td><td>-3.92</td><td>-0.27</td><td></td></tr><tr><td>8</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>-14.19</td><td>-9.83</td><td>-5.82</td><td></td></tr><tr><td>9</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>-16.15</td><td>-11.72</td><td></td></tr><tr><td>10</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>-18.05</td><td></td></tr><tr><td>11</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td colspan="12">Backward Computation of Bond Prices</td></tr><tr><td>j,i</td><td>0</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td></tr><tr><td>1</td><td>81.15</td><td>70.9</td><td>64.39</td><td>60.65</td><td>59.12</td><td>59.58</td><td>62.03</td><td>66.68</td><td>73.97</td><td>84.68</td><td>100</td></tr><tr><td>2</td><td></td><td>92.78</td><td>81.51</td><td>74.47</td><td>70.54</td><td>69.13</td><td>69.97</td><td>73.09</td><td>78.72</td><td>87.4</td><td>100</td></tr><tr><td>3</td><td></td><td></td><td>103.27</td><td>91.14</td><td>83.68</td><td>79.65</td><td>78.4</td><td>79.66</td><td>83.44</td><td>90.02</td><td>100</td></tr><tr><td>4</td><td></td><td></td><td></td><td>112.06</td><td>99.3</td><td>91.56</td><td>87.52</td><td>86.48</td><td>88.15</td><td>92.55</td><td>100</td></tr><tr><td>5</td><td></td><td></td><td></td><td></td><td>118.62</td><td>105.54</td><td>97.69</td><td>93.74</td><td>92.95</td><td>95.03</td><td>100</td></tr><tr><td>6</td><td></td><td></td><td></td><td></td><td></td><td>122.54</td><td>109.5</td><td>101.77</td><td>98.02</td><td>97.53</td><td>100</td></tr><tr><td>7</td><td></td><td></td><td></td><td></td><td></td><td></td><td>123.56</td><td>110.93</td><td>103.55</td><td>100.14</td><td>100</td></tr><tr><td>8</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>121.61</td><td>109.76</td><td>102.95</td><td>100</td></tr><tr><td>9</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>116.8</td><td>106.04</td><td>100</td></tr><tr><td>10</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>109.44</td><td>100</td></tr><tr><td>11</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>100</td></tr></table>

# Calibration of Ho Lee Model

- Given data on interest rates, I estimated a volatility  $\sigma = .022$ .  
- Given data from current zero coupon bonds (STRIPS) as of May 25 2007, we can compute iteratively  $\theta(i)$  so that model prices equal actual prices for every  $i$ .  
- In the example below, I am only showing the model price for  $T = 5$  bond.

<table><tr><td colspan="3">HO-LEE BINOMIAL TREE MODEL</td><td colspan="2">Today</td><td colspan="2">25-May-07</td><td colspan="2">First Zero</td><td colspan="2">15-Nov-07</td><td></td><td></td></tr><tr><td colspan="3">Interest Rate Assumptions</td><td colspan="4">Bond Assumption</td><td colspan="4">Tree</td><td></td><td></td></tr><tr><td>sigma</td><td>0.022</td><td></td><td>T</td><td>5</td><td></td><td></td><td>h</td><td>0.5</td><td></td><td>Price Binomial</td><td>80.147</td><td></td></tr><tr><td>r0</td><td>0.047222</td><td></td><td>coupon</td><td>0</td><td></td><td></td><td>h0</td><td>0.48</td><td></td><td></td><td></td><td></td></tr><tr><td>Maturity</td><td>Nov-07</td><td>May-08</td><td>Nov-08</td><td>May-09</td><td>Nov-09</td><td>May-10</td><td>Nov-10</td><td>May-11</td><td>Nov-11</td><td>May-12</td><td></td><td></td></tr><tr><td>Zeros</td><td>97.774</td><td>95.356</td><td>93.100</td><td>91.047</td><td>88.888</td><td>86.910</td><td>84.903</td><td>83.673</td><td>82.776</td><td>80.147</td><td></td><td></td></tr><tr><td rowspan="2">Model Price Target</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>80.147</td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>2.019E-28</td><td></td><td></td></tr><tr><td>theta (+2)</td><td></td><td>0.006121</td><td>-0.003672</td><td>-0.0057966</td><td>0.007737</td><td>-0.004846</td><td>0.004791</td><td>-0.033499</td><td>-0.013441</td><td>0.0880469</td><td></td><td></td></tr><tr><td rowspan="2">time =&gt; i=&gt;</td><td>0</td><td>0.5</td><td>1</td><td>1.5</td><td>2</td><td>2.5</td><td>3</td><td>3.5</td><td>4</td><td>4.5</td><td>5</td><td></td></tr><tr><td>0</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td><td></td></tr><tr><td>0</td><td>0.047</td><td>0.065</td><td>0.079</td><td>0.092</td><td>0.111</td><td>0.124</td><td>0.142</td><td>0.141</td><td>0.150</td><td>0.209</td><td>0.234</td><td></td></tr><tr><td>1</td><td></td><td>0.035</td><td>0.048</td><td>0.061</td><td>0.080</td><td>0.093</td><td>0.111</td><td>0.110</td><td>0.119</td><td>0.178</td><td>0.203</td><td></td></tr><tr><td>2</td><td></td><td></td><td>0.018</td><td>0.029</td><td>0.049</td><td>0.062</td><td>0.080</td><td>0.079</td><td>0.088</td><td>0.147</td><td>0.172</td><td></td></tr><tr><td>3</td><td></td><td></td><td></td><td>-0.001</td><td>0.018</td><td>0.031</td><td>0.049</td><td>0.048</td><td>0.057</td><td>0.116</td><td>0.141</td><td></td></tr><tr><td>4</td><td></td><td></td><td></td><td></td><td>-0.013</td><td>0.000</td><td>0.018</td><td>0.017</td><td>0.025</td><td>0.085</td><td>0.110</td><td></td></tr><tr><td>5</td><td></td><td></td><td></td><td></td><td></td><td>-0.031</td><td>-0.013</td><td>-0.015</td><td>-0.006</td><td>0.054</td><td>0.079</td><td></td></tr><tr><td>6</td><td></td><td></td><td></td><td></td><td></td><td></td><td>-0.044</td><td>-0.046</td><td>-0.037</td><td>0.023</td><td>0.048</td><td></td></tr><tr><td>7</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>-0.076</td><td>-0.068</td><td>-0.008</td><td>0.017</td><td></td></tr><tr><td>8</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>-0.098</td><td>-0.039</td><td>-0.014</td><td></td></tr><tr><td>9</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>-0.070</td><td>-0.046</td><td></td></tr><tr><td>10</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>-0.076</td><td></td></tr></table>

# Intermediate Cash Flows

- Notice that given a tree, we can insert any type of known cash flow.  
- Specifically, at any time-node  $(i,j)$ , we just must add the CF

$$
P _ {i, j} = e ^ {- r _ {i, j} \Delta} \left(\frac {1}{2} P _ {i + 1, j} + \frac {1}{2} P _ {i + 1, j + 1} + C F _ {i + 1}\right)
$$

- So, for example, a 1.5 year,  $4\%$  coupon bond is just given by

$$
\begin{array}{l} i = 0 \\ i = 1 \\ i = 2 \\ i = 3 \\ P _ {3, u u u} (3) = 1 0 0 \\ \end{array}
$$

$$
\begin{array}{l} \hline P _ {0} (3) \\ = e ^ {- 0. 0 1 6 8 / 2} \\ \times [ \frac {1}{2} (9 9. 3 1 + 1 0 2. 2 6) \\ + 2 ] = 1 0 1. 9 3 \\ \hline \end{array}
$$

$$
\begin{array}{l} \hline P _ {1, u} (3) \\ = e ^ {- 0. 0 4 3 3 / 2} \\ \times [ \frac {1}{2} (9 8. 8 0 + 1 0 0. 1 8) \\ + 2 ] = 9 9. 3 1 \\ \hline \end{array}
$$

$$
\boxed { \begin{array}{l} P _ {1, d} (3) \\ = e ^ {- 0. 0 1 2 0 / 2} \\ \times [ \frac {1}{2} (1 0 0. 1 8 + 1 0 1. 5 8) \\ + 2 ] = 1 0 2. 2 6 \end{array} }
$$

$$
\boxed { \begin{array}{c} P _ {3, u u d} (3) \\ P _ {3, u d u} (3) \end{array} = 1 0 0}
$$

$$
\begin{array}{l} \hline P _ {2, u d} (3) \\ = e ^ {- 0. 0 3 6 1 / 2} (1 0 0 + 2) \\ = 1 0 0. 1 8 \end{array}
$$

$$
\begin{array}{c c} \hline P _ {2, d d} (3) \\ = e ^ {- 0. 0 0 8 3 / 2} (1 0 0 + 2) \\ = 1 0 1. 5 8 \\ \hline \end{array}
$$

- This tree gives "ex-coupon" prices.

$$
P _ {3, d d d} \left(3\right) = 1 0 0
$$

# Example: Callable Bonds

- Trees turn out to be very useful tools (not only pedagogically).  
- One of the most important features of them is the ability to deal with "American options."  
- As a consequence, a very simple application of the "tree" methodology is the computation of prices of callable bonds.  
- Consider the 1.5 year,  $4 \%$ coupon bond we discussed earlier, but assume it is callable at par 100.  
- That is, at any point in time before maturity, the issuer (Treasury) may "call it back" in exchange of 100.
- In general, bonds become callable after some period of time.  
- For example, the Nov 2012 Treasury bond is callable at par starting on Nov 2007.  
- If the issuer calls the bond between coupon days, it has to pay the accrued interest to the bond holder.

# Example: Callable Bonds

- How do we compute the price of the implicit American option?  
- At any node  $(i,j)$  the issuer can decide whether to "exercise" option or wait.
- If exercises, the payoff (  $=$  value of the option) is

$$
C a l l _ {i, j} ^ {\mathrm {E x}} = P _ {i, j} - 1 0 0
$$

- If waits, the value of the option

$$
C a l l _ {i, j} ^ {\mathrm {W a i t}} = e ^ {- r _ {i, j} \Delta} E ^ {*} [ C a l l _ {i + 1} ] = e ^ {- r _ {i, j} \Delta} \left(\frac {1}{2} C a l l _ {i + 1, j} + \frac {1}{2} C a l l _ {i + 1, j + 1}\right)
$$

- Therefore, the value at node  $i, j$  is

$$
\begin{array}{l} C a l l _ {i, j} = \max  \left(C a l l _ {i, j} ^ {\mathrm {W a i t}}, C a l l _ {i, j} ^ {\mathrm {E x}}\right) \\ = \max \left(e ^ {- r _ {i, j} \times \Delta} E ^ {*} [ C a l l _ {i + 1} ], P _ {i, j} - 1 0 0\right) \\ \end{array}
$$

- At maturity  $I = T / \Delta$  we have

$$
C a l l _ {I, j} = 0 \mathrm {f o r a l l} j
$$

# Example: Callable Bonds

$$
i = 0
$$

$$
i = 1
$$

$$
i = 2
$$

$$
i = 3
$$

$$
C _ {3, u u u} \left(3\right) = 0
$$

$$
C _ {1, u} (3) =
$$

$$
= \max \left(9 9. 3 1 - 1 0 0, e ^ {-. 0 4 3 3 / 2} 0. 1 8 / 2\right)
$$

$$
= 0. 0 9
$$

$$
\begin{array}{l} C _ {2, u u} (3) = \\ = \max  (9 8. 8 0 - 1 0 0, 0) \\ = 0 \\ \end{array}
$$

$$
\begin{array}{l} C _ {3, u u d} (3) \\ C _ {3, u d u} (3) \end{array} = 0
$$

$$
\begin{array}{l} C _ {0} (3) = \\ = e ^ {- 0. 0 1 6 8 / 2} \\ \times \frac {1}{2} (. 0 9 + 2. 2 6) \\ = 1. 1 6 \\ \end{array}
$$

$$
\begin{array}{l} C _ {1, d} (3) = \\ = \max  (1 0 2. 2 6 - 1 0 0, \\ e ^ {- 0. 0 1 2 0 / 2} (1 8 + 1. 5 8) / 2) \\ = 2. 2 6 \\ \end{array}
$$

$$
\begin{array}{l} C _ {2, u d} (3) = \\ = \max  (1 0 0. 1 8 - 1 0 0, 0) \\ = 0. 1 8 \\ \end{array}
$$

$$
\begin{array}{l} C _ {3, u d d} (3) - 0 \\ C _ {3, d d u} (3) \\ \end{array}
$$

$$
\begin{array}{l} C _ {2, d d} (3) \\ = \max  (1 0 1. 5 8 - 1 0 0, 0) \\ = 1. 5 8 \\ \end{array}
$$

$$
C _ {3, d d d} (3) = 0
$$

# Example: Callable Bonds

# - What is then the price of the callable bond?

- The buyer of a callable bond is: (1) buying a non-callable bond; + (2) Selling a call to the issuer.  
- Hence,

$$
\begin{array}{l} P _ {0} ^ {\mathrm {C a l l}} (3) = P _ {0} ^ {\mathrm {N o C a l l}} (3) - C _ {0} (3) \\ = 1 0 1. 9 3 - 1. 1 6 \\ = 1 0 0. 7 7 \\ \end{array}
$$