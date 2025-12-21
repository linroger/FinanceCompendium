---
title: "Option Prices and Expected Returns"
parent_directory: "Foundations of the Pricing of Financial Derivatives"
formatted: "2025-12-20 07:25:00 PM"
formatter_model: "claude-sonnet-4"
cli-tool: "opencode"
primary_tags:
  - option expected returns
  - capital asset pricing model
  - option elasticity
  - sharpe ratio analysis
secondary_tags:
  - black-scholes-merton model
  - option volatility
  - arbitrage free pricing
  - risk premium analysis
  - stochastic option processes
cssclasses: academia
---

# Option Prices and Expected Returns

In the study of finance in general, we devote considerable time to deriving and using pricing models. Probably the two best known pricing models are the capital asset pricing model and the Black-Scholes-Merton option pricing model.<sup>1</sup> The former, commonly referred to as the CAPM, provides the required rate of return on the asset. If the asset is correctly priced, which the model assumes must happen in equilibrium, the return expected by investors, known as the expected rate of return, equals the required rate of return. But asset pricing models are not usually expressed in terms of the price of the asset, whereas option pricing models are almost always expressed in terms of the price of the option. In this chapter, we shall connect the expected return and price for both the asset and the option. In addition, we shall tie together the expected returns and volatilities of the option to that of the asset. Much of this work draws from Rubinstein (1984).

## 30.1 The Basic Framework

## 30.2 Expected Returns on Options

## 30.3 Volatilities of Options

## 30.4 Options and the Capital Asset Pricing Model

## 30.5 Options and the Sharpe Ratio

## 30.6 The Stochastic Process Followed by the Option

## 30.7 Recap and Preview

We learned in this chapter that option pricing is consistent with capital asset pricing. That is, the price obtained from the Black-Scholes-Merton model is consistent with the expected return from the CAPM. But even if the CAPM does not hold, the expected return on the option can be related to the expected return on the asset through the risk-free rate, the risk premium on the asset, and the risk of the option relative to the asset. Unless the option is incorrectly priced relative to the asset, the performance of the option as measured by its Sharpe ratio is no different from the performance of the asset. In short, option pricing is completely consistent with asset pricing.

In Chapter 31, we look at the concept of implied volatility, which is the volatility of the underlying that is implied by the price of an option. Implied volatility plays an extremely important role, not only in helping us to understand option pricing but also in helping us to see what opinions investors have about the level of risk.

# QUESTIONS AND PROBLEMS

1 Explain why the following expression is known as the certainty equivalent version of the CAPM:

$$
S = \frac {E (S ^ {\prime}) - \lambda \mathrm {c o v} (S ^ {\prime} , R _ {m})}{1 + r},
$$

where

$$
\lambda = \frac {E (R _ {m}) - r}{\sigma_ {m} ^ {2}}.
$$

2 "The elasticity of a standard European call,  $(\partial c / \partial S)(S / c)$ , is at least equal to 1." Evaluate and explain whether this statement is true or false.

3 Prove that within the Black-Scholes-Merton framework, the expected return on the call can be expressed as

$$
E \left(R _ {c}\right) = r + \left(E \left(R _ {s}\right) - r\right) \Omega_ {c},
$$

where  $\Omega_c \equiv \frac{\partial c / c}{\partial S / S}$ .

4 Prove the expected return on the put can be expressed as

$$
E (R _ {p}) = r + [ E (R _ {s}) - r ] \Omega_ {p},
$$

$$
\text {w h e r e} \Omega_ {p} \equiv \frac {\partial p / p}{\partial S / S}.
$$

5 "The Sharpe ratio of the stock will equal the Sharpe ratio of a call option on the stock." Evaluate and explain whether this statement is true or false.

[Contributed by Brecklyn Groce] Suppose an investment manager calculates the Sharpe ratio of an investment in a stock index as 0.35. The Sharpe ratio of a call option on the index is 0.44. In this chapter it is asserted that the Sharpe ratio of an asset and its derivative should be the same. Why are they different in this case?

# NOTES

1. Other well-known models are the arbitrage pricing model and the cost of carry forward/futures pricing model, which is known as interest rate parity in the foreign currency world. The CAPM is briefly mentioned in Chapters 1 and 6.  
2. We are assuming no dividends, interest, cash flows, or holding costs. These would not cause any problems, but our approach would vary depending on whether the dividends are known or random.  
3. To restate what we have previously learned, the notion of a certainty equivalent is that of a value that one would accept for certain in lieu of facing a risky situation. The expected value minus the risk premium that appears in the numerator is a risk-adjusted future value, which can then be discounted at the risk-free rate.  
4. It is easy to use the Black-Scholes-Merton model to see that the elasticity is not less than 1. Elasticity is defined as  $(\partial c / \partial S)(S / c)$ . You should recognize this as  $N(d_1)S / c$  from the Black-Scholes-Merton model. Replacing  $c$  with the Black-Scholes-Merton formula reveals that elasticity is no less than 1 if  $Xe^{-r_c\tau}N(d_2)$  is always true.  
5. Using the Sharpe ratios for options is problematic, however, because option return distributions are highly nonnormal, and the Sharpe ratio characterizes performance exclusively with the expected return and volatility, ignoring higher-order moments associated with non-normal distributions. For an empirical analysis of some of the problems of evaluating the performance of covered call writing strategies, see Brooks, Chance, and Hemler (2019).  
6. In other words, the Black-Scholes-Merton model is obtained without any reference to the option's expected return or volatility, nor does it directly provide the option's expected return and volatility.  
7. Alternatively, we could use the continuous time version of the CAPM and adjust that equation so that it would contain a  $dt$  term and reflect expected returns over the interval  $dt$ .  
8. In taking expectations of this equation, recall that the expectation of  $dW$  is zero.  
9. Remember that the variance of a constant (in this case,  $(\partial c / \partial S)(S / c))$ , is the constant squared times the variance of the random variable. The variance of  $dW$  is  $dt$ .

