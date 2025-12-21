---
title: "The Black-Scholes Model - CUNY Lecture"
parent_directory: Options Futures & Forwards
formatted: 2025-12-21 02:15:00 AM
formatter_model: claude-3-5-sonnet-20241022
cli-tool: claude-code
primary_tags:
  - black scholes model
  - option pricing theory
  - geometric brownian motion
secondary_tags:
  - stochastic calculus
  - implied volatility
  - risk neutral pricing
  - partial differential equations
  - put call parity
  - option Greeks
  - volatility smile
  - jump diffusion
  - stochastic volatility
cssclasses: academia
---

# The Black-Scholes Model

Liuren Wu

Options Markets

## The Black-Merton-Scholes-Merton (BMS) model

- Black and Scholes (1973) and Merton (1973) derive option prices under the following assumption on the stock price dynamics,

$$
d S _ {t} = \mu S _ {t} d t + \sigma S _ {t} d W _ {t}
$$

- The binomial model: Discrete states and discrete time (The number of possible stock prices and time steps are both finite).  
- The BMS model: Continuous states (stock price can be anything between 0 and  $\infty$ ) and continuous time (time goes continuously).  
- Scholes and Merton won Nobel price. Black passed away.  
- BMS proposed the model for stock option pricing. Later, the model has been extended/twisted to price currency options (Garman&Kohlhagen) and options on futures (Black).  
- I treat all these variations as the same concept and call them indiscriminately the BMS model (combine chapters 13&14).

$$
d S _ {t} = \mu S _ {t} d t + \sigma S _ {t} d W _ {t}
$$

- The driver of the process is  $W_{t}$ , a Brownian motion, or a Wiener process.  
- The process  $W_{t}$  generates a random variable that is normally distributed with mean 0 and variance  $t$ ,  $\phi(0, t)$ . (Also referred to as Gaussian.)  
The process is made of independent normal increments  $dW_{t}\sim \phi (0,dt)$

- “ $d$ ” is the continuous time limit of the discrete time difference  $(\Delta)$ .  
-  $\Delta t$  denotes a finite time step (say, 3 months),  $dt$  denotes an extremely thin slice of time (smaller than 1 milisecond).  
- It is so thin that it is often referred to as instantaneous.  
- Similarly,  $dW_{t} = W_{t + dt} - W_{t}$  denotes the instantaneous increment (change) of a Brownian motion.

- By extension, increments over non-overlapping time periods are independent: For  $(t_1 > t_2 > t_3)$ ,  $(W_{t_3} - W_{t_2}) \sim \phi(0, t_3 - t_2)$  is independent of  $(W_{t_2} - W_{t_1}) \sim \phi(0, t_2 - t_1)$ .

$$
d S _ {t} = \mu S _ {t} d t + \sigma S _ {t} d W _ {t}
$$

- If  $X \sim \phi(0,1)$ , then  $a + bX \sim \phi(a,b^2)$ .  
- If  $y \sim \phi(m, V)$ , then  $a + by \sim \phi(a + bm, b^2V)$ .  
- Since  $dW_{t} \sim \phi(0, dt)$ , the instantaneous price change  $dS_{t} = \mu S_{t}dt + \sigma S_{t}dW_{t} \sim \phi(\mu S_{t}dt, \sigma^{2}S_{t}^{2}dt)$ .  
The instantaneous return  $\frac{dS}{S} = \mu dt + \sigma dW_t \sim \phi(\mu dt, \sigma^2 dt)$ .

- Under the BMS model,  $\mu$  is the annualized mean of the instantaneous return — instantaneous mean return.  
-  $\sigma^2$  is the annualized variance of the instantaneous return — instantaneous return variance.  
-  $\sigma$  is the annualized standard deviation of the instantaneous return — instantaneous return volatility.

$$
d S _ {t} / S _ {t} = \mu d t + \sigma d W _ {t}
$$

- The stock price is said to follow a geometric Brownian motion.  
-  $\mu$  is often referred to as the drift, and  $\sigma$  the diffusion of the process.  
- Instantaneously, the stock price change is normally distributed,  $\phi (\mu S_t dt,\sigma^2 S_t^2 dt)$  
- Over longer horizons, the price change is lognormally distributed.  
- The log return (continuous compounded return) is normally distributed over all horizons:

$$
d \ln S _ {t} = \left(\mu - \frac {1}{2} \sigma^ {2}\right) d t + \sigma d W _ {t}. (\text{By Ito's lemma})
$$

```d2
direction: right

GBM Process: Geometric Brownian Motion {
  shape: rectangle
  style.fill: "#e3f2fd"
  style.stroke: "#1976d2"
}

Drift: μ (Expected Return) {
  shape: oval
  style.fill: "#c8e6c9"
}

Diffusion: σ (Volatility) {
  shape: oval
  style.fill: "#ffcdd2"
}

Wiener: dW_t (Random Shock) {
  shape: oval
  style.fill: "#fff3e0"
}

GBM Process -> Drift: Multiplied by dt
GBM Process -> Diffusion: Multiplied by dW_t
Diffusion -> Wiener
```

$d\ln S_t\sim \phi (\mu dt - \frac{1}{2}\sigma^2 dt,\sigma^2 dt).$  
-  $\ln S_t \sim \phi (\ln S_0 + \mu \bar{t} - \frac{1}{2}\sigma^2 t, \sigma^2 t)$ .  
-  $\ln S_T / S_t \sim \phi\left(\left(\mu - \frac{1}{2}\sigma^2\right)(T - t), \sigma^2(T - t)\right)$ .

- Integral form:  $S_{t} = S_{0}e^{\mu t - \frac{1}{2}\sigma^{2}t + \sigma W_{t}}$ ,  $\ln S_{t} = \ln S_{0} + \mu t - \frac{1}{2}\sigma^{2}t + \sigma W_{t}$

## Simulate 100 stock price sample paths

$$
d S _ {t} = \mu S _ {t} d t + \sigma S _ {t} d W _ {t}, \quad \mu = 10 \%, \sigma = 20 \%, S _ {0} = 100, t = 1.
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/ba5a693f-feea-4359-8b00-e42d3cd273fa/5694dd4a29b4b22df459325079844b0fb8c5852fe2e7c0a7d3774c35953e4049.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/ba5a693f-feea-4359-8b00-e42d3cd273fa/1e4671c278e4ff8a1f7ca66cd106af22c71e50ddf90d51bce6450ec5ac0a834f.jpg)

Stock with the return process:  $d\ln S_{t} = \left(\mu -\frac{1}{2}\sigma^{2}\right)dt + \sigma dW_{t}$  
- Discretize to daily intervals  $dt \approx \Delta t = 1/252$ .  
- Draw standard normal random variables  $\varepsilon (100\times 252)\sim \phi (0,1)$  
- Convert them into daily log returns:  $R_{d} = \left(\mu -\frac{1}{2}\sigma^{2}\right)\Delta t + \sigma \sqrt{\Delta t}\varepsilon$  
- Convert returns into stock price sample paths:  $S_{t} = S_{0}e^{\sum_{d=1}^{252}R_{d}}$ .

- The option price and the stock price depend on the same underlying source of uncertainty.  
- The Brownian motion dynamics imply that if we slice the time thin enough  $(dt)$ , it behaves like a binomial tree.  
- Reversely, if we cut  $\Delta t$  small enough and add enough time steps, the binomial tree converges to the distribution behavior of the geometric Brownian motion.

- Under this thin slice of time interval, we can combine the option with the stock to form a riskfree portfolio.  
- Recall our hedging argument: Choose  $\Delta$  such that  $f - \Delta S$  is riskfree.  
- The portfolio is riskless (under this thin slice of time interval) and must earn the riskfree rate.  
- Magic:  $\mu$  does not matter for this portfolio and hence does not matter for the option valuation. Only  $\sigma$  matters.

- We do not need to worry about risk and risk premium if we can hedge away the risk completely.

## Partial differential equation

- The hedging argument mathematically leads to the following partial differential equation:

$$
\frac {\partial f}{\partial t} + (r - q) S \frac {\partial f}{\partial S} + \frac {1}{2} \sigma^ {2} S ^ {2} \frac {\partial^ {2} f}{\partial S ^ {2}} = r f
$$

- At nowhere do we see  $\mu$ . The only free parameter is  $\sigma$  (as in the binomial model).

- Solving this PDE, subject to the terminal payoff condition of the derivative (e.g.,  $f_{T} = (S_{T} - K)^{+}$  for a European call option), BMS can derive analytical formulas for call and put option value.

- Similar formula had been derived before based on distributional (normal return) argument, but  $\mu$  (risk premium) was still in.  
- The realization that option valuation does not depend on  $\mu$  is big. Plus, it provides a way to hedge the option position.

$$
c _ {t} = S _ {t} e ^ {- q (T - t)} N \left(d _ {1}\right) - K e ^ {- r (T - t)} N \left(d _ {2}\right),
$$

$$
p _ {t} = - S _ {t} e ^ {- q (T - t)} N (- d _ {1}) + K e ^ {- r (T - t)} N (- d _ {2}),
$$

where

$$
d _ {1} = \frac {\ln (S _ {t} / K) + (r - q) (T - t) + \frac {1}{2} \sigma^ {2} (T - t)}{\sigma \sqrt {T - t}},
$$

$$
d _ {2} = \frac {\ln (S _ {t} / K) + (r - q) (T - t) - \frac {1}{2} \sigma^ {2} (T - t)}{\sigma \sqrt {T - t}} = d _ {1} - \sigma \sqrt {T - t}.
$$

Black derived a variant of the formula for futures (which I like better):

$$
c _ {t} = e ^ {- r (T - t)} \left[ F _ {t} N \left(d _ {1}\right) - K N \left(d _ {2}\right) \right],
$$

with  $d_{1,2} = \frac{\ln(F_t / K) \pm \frac{1}{2}\sigma^2(T - t)}{\sigma\sqrt{T - t}}$

- Recall:  $F_{t} = S_{t}e^{(r - q)(T - t)}$ . Use forward price  $F_{t}$  to accommodate various carrying costs/benefits.  
- Once I know call value, I can obtain put value via put-call parity:  $c_{t} - p_{t} = e^{-r(T - t)}[F_{t} - K_{t}]$ .

$$
c _ {t} = e ^ {- r (T - t)} \left[ F _ {t} N (d _ {1}) - K N (d _ {2}) \right], \quad d _ {1, 2} = \frac {\ln (F _ {t} / K) \pm \frac {1}{2} \sigma^ {2} (T - t)}{\sigma \sqrt {T - t}}
$$

```d2
direction: down

BS Formula: Black-Scholes Call Price {
  shape: rectangle
  style.fill: "#f3e5f5"
  style.stroke: "#7b1fa2"
}

Discount: e^{-r(T-t)} {
  shape: oval
  style.fill: "#e8f5e9"
}

Intrinsic: [F_t × N(d1)] {
  shape: oval
  style.fill: "#e3f2fd"
}

Strike: [K × N(d2)] {
  shape: oval
  style.fill: "#fff3e0"
}

BS Formula -> Discount: Multiplies
Discount -> Intrinsic: Subtracts
Discount -> Strike

d1: ln(F/K) + (r-q+σ²/2)(T-t) / σ√(T-t) {
  shape: rectangle
  style.fill: "#fce4ec"
}

d2: d1 - σ√(T-t) {
  shape: rectangle
  style.fill: "#fce4ec"
}

Intrinsic -> d1
Strike -> d2
```

-  $N(x)$  denotes the cumulative normal distribution, which measures the probability that a normally distributed variable with a mean of zero and a standard deviation of 1 ( $\phi(0,1)$ ) is less than  $x$ .  
- See tables at the end of the book for its values.  
- Most software packages (including excel) has efficient ways to computing this function.  
- Properties of the BMS formula:

- As  $S_{t}$  becomes very large or  $K$  becomes very small,  $\ln (F_t / K) \uparrow \infty$ ,  $N(d_1) = N(d_2) = 1$ .  $c_{t} = e^{-r(T - t)}[F_{t} - K]$ .  
- Similarly, as  $S_{t}$  becomes very small or  $K$  becomes very large,  $\ln (F_t / K) \uparrow -\infty$ ,  $N(-d_1) = N(-d_2) = 1$ .  $p_t = e^{-r(T - t)}[-F_t + K]$ .

## Why does it matter?

- As long as we assume that the underlying security price follows a geometric Brownian motion, we can use (some versions) of the BMS formula to price European options.  
- Dividends, foreign interest rates, and other types of carrying costs may complicate the pricing formula a little bit.  
- A simpler approach: Assume that the underlying futures/forwards price (of the same maturity of course) process follows a geometric Brownian motion.  
- Then, as long as we observe the forward price (or we can derive the forward price), we do not need to worry about dividends or foreign interest rates — They are all accounted for in the forward pricing.  
- Know how to price a forward, and use the Black formula.

$$
\overline {{c _ {t} = e ^ {- r (T - t)} \left[ F _ {t} N (d _ {1}) - K N (d _ {2}) \right] ,}} \quad d _ {1, 2} = \frac {\ln \left(F _ {t} / K\right) \pm \frac {1}{2} \sigma^ {2} (T - t)}{\sigma \sqrt {T - t}}
$$

- Since  $F_{t}$  (or  $S_{t}$ ) is observable from the underlying stock or futures market,  $(K, t, T)$  are specified in the contract. The only unknown (and hence free) parameter is  $\sigma$ .  
- We can estimate  $\sigma$  from time series return. (standard deviation calculation).  
- Alternatively, we can choose  $\sigma$  to match the observed option price — implied volatility (IV).  
- There is a one-to-one, monotonic correspondence between prices and implied volatilities.

- As long as the option price does not allow arbitrage against cash, there exists a solution for a positive implied volatility that can match the price.

- Traders and brokers often quote implied volatilities rather than dollar prices.

- More stable; more informative; excludes arbitrage

- The BMS model says that  $IV = \sigma$ . In reality, the implied volatility calculated from different options (across strikes, maturities, dates) are usually different.

## Violations of BMS assumptions

- The BMS model says that  $IV = \sigma$ . In reality, the implied volatility calculated from different options (across strikes, maturities, dates) are usually different.  
- These difference indicates that in reality the security price dynamics differ from the BMS assumptions:  
- Jumps: BMS assume that the security price moves by a small amount (diffusion) over a short time interval. In reality, sometimes the market can jump by a large amount in an instant.

- With jumps, returns are no longer normally distributed, but tend to have fatter tails, and sometimes can be asymmetric (skewed).  
- Implied volatility at different strikes will be different.

- Stochastic volatility: The volatility  $\sigma$  of a security is not constant, but varies randomly over time, and can be correlated with the return move.

- Implied volatilities will change over time.  
- Stochastic volatility also induces return non-normality.  
- Return-volatility correlation induces return distribution asymmetry.

- Other sources of variations such as credit risk for individual stock and emerging market currency, crash risk for aggregate market index...

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/ba5a693f-feea-4359-8b00-e42d3cd273fa/24261a1bce12849420b7a0c641eeee76b4f111e53ec375dafb2e5fe303a12cbe.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/ba5a693f-feea-4359-8b00-e42d3cd273fa/2a085374fd9503cc0b25ea6866d8f0ad3e09afa87d9e51396001904dd3ff7765.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/ba5a693f-feea-4359-8b00-e42d3cd273fa/ce726aa5e483adbeafbb1702e406528ed5b35641e37455f552364a4b1226c158.jpg)

- Plots of option implied volatilities across different strikes at the same maturity often show a smile or skew pattern, reflecting deviations from the return normality assumption.  
- A smile implies that the probability of reaching the tails of the distribution is higher than that from a normal distribution.  $\Rightarrow$  Fat tails, or (formally) leptokurtosis.
- A negative skew implies that the probability of downward movements is higher than that from a normal distribution.  $\Rightarrow$  Negative skewness in the distribution.

```d2
Volatility Patterns {
  shape: rectangle
  style.fill: "#fafafa"
}

Smile: Symmetric High Tails {
  shape: oval
  style.fill: "#e3f2fd"
}

Skew: Asymmetric Downward Bias {
  shape: oval
  style.fill: "#fff3e0"
}

Volatility Patterns -> Smile: Fat tails both sides
Volatility Patterns -> Skew: More downside risk

ATM: At-the-money {
  style.fill: "#c8e6c9"
}

OTM Put: Out-of-money puts {
  style.fill: "#ffcdd2"
}

OTM Call: Out-of-money calls {
  style.fill: "#ffcdd2"
}

Smile -> ATM: Lowest IV
Smile -> OTM Put: Higher IV
Smile -> OTM Call: Higher IV

Skew -> ATM: Lowest IV
Skew -> OTM Put: Highest IV
Skew -> OTM Call: Moderate IV
```

## Stochastic volatility on stock indexes and currencies

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/ba5a693f-feea-4359-8b00-e42d3cd273fa/2a6a9089efd6cce1a427f1866969d4e9900e92bf1198b4cfce66ee3536f5a2d8.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/ba5a693f-feea-4359-8b00-e42d3cd273fa/1844f6d308d46181bed1f99b6234784dfcb1c14255edd9483c1bf9ee2ea54368.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/ba5a693f-feea-4359-8b00-e42d3cd273fa/656abddc89d32aa2b1f0df8ea1d3d185411833c1e4b692a00de43b36b2692c96.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/ba5a693f-feea-4359-8b00-e42d3cd273fa/3d9e17ea2f6e88f30316cb574d61c103302b1cf382a77b4e0bd9ff7a7b675f96.jpg)

At the-money option implied volatilities vary strongly over time, higher during crises and recessions.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/ba5a693f-feea-4359-8b00-e42d3cd273fa/00aaca92928ed7aa5906ae967ae91f4fc1bbbfcb0bbd122f75ec50c5b8cc020d.jpg)  
Implied volatility spread between  $80\%$  and  $120\%$  strikes

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/ba5a693f-feea-4359-8b00-e42d3cd273fa/4b75caebcb7ae492302e8ebdbc2e688bfa4270a2ea2a0f6dbcca1733b44240d6.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/ba5a693f-feea-4359-8b00-e42d3cd273fa/afc42f0537407ae15e79e67d2ed024ae1514e6abf2b57c3cd44076870ce97e2a.jpg)  
10-delta call minis 10-delta put implied volatility

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/ba5a693f-feea-4359-8b00-e42d3cd273fa/8ab5efbce82de2ccb3eae9308d0e24da62f7e04c9e6c764cf827ddfe73796966.jpg)

Return skewness also varies over time.

## Second-generation option pricing models

- Second-generation option pricing models strive to add new features to capture the observed implied volatility behaviors

- Jumps: BMS uses Brownian motion to capture continuous price movements, second-generation models use a more general class of processes called Lévy process to capture both continuous and discontinuous movements.  
- Stochastic volatility: MBS assumes constant volatility for the Brownian motion, second-generation models allow the intensity of the Lévy processes to vary stochastically over time

- Use the concept of time change to capture the mapping between calendar clock and business (activity) clock

- The doctoral class provides guidance on how to design models based on observed features and how to price options under newly designed models.

- Understand the basic properties of normally distributed random variables.  
- Map a stochastic process to a random variable.  
- Understand the link between BMS and the binomial model.  
- Memorize the BMS formula (any version).  
- Understand forward pricing and link option pricing to forward pricing.  
- Can go back and forth with the put-call parity conditions, lower and upper bounds, either in forward or in spot notation.  
- Understand the general implications of the implied volatility plots.