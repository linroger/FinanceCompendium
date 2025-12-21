---
title: "Option Prices and the Prices of State-Contingent Claims"
parent_directory: "Foundations of the Pricing of Financial Derivatives"
formatted: "2025-12-20 07:20:00 PM"
formatter_model: "claude-sonnet-4"
cli-tool: "opencode"
primary_tags:
  - state contingent claims
  - pure assets pricing
  - state preference theory
  - option pricing theory
secondary_tags:
  - arbitrage free valuation
  - risk neutral pricing
  - binomial state pricing
  - continuous time options
  - digital options
  - expected returns
  - asset-or-nothing options
  - cash-or-nothing options
cssclasses: academia
---

# Option Prices and the Prices of State-Contingent Claims

An option is sometimes referred to as a contingent claim. A contingent claim is a special type of asset that provides a payoff that is dependent (contingent) on something specific happening. An option is a contingent claim in that it provides a positive payoff under the condition that the option expires in-the-money. If the option does not expire in-the-money, the payoff is obviously zero. In this chapter, we look at another form of a contingent claim that happens to be an asset that pays 1.0 in a given outcome and zero otherwise. These outcomes are referred to as states or states of nature, and this particular asset is sometimes called a state-contingent claim. Other common names for this type of security are pure asset, the term we shall use, fundamental asset, and Arrow-Debreu asset, the last arising out of the work of Nobel Laureates Kenneth Arrow (1964) and Gerard Debreu (1964) and the extension to valuation by Myers (1968).<sup>1</sup> In this chapter, we examine some properties of pure assets and demonstrate how they relate to options in a framework called state preference theory and occasionally state pricing theory.

State pricing theory, which is also sometimes known as time state preference theory, provides a framework for the valuation of financial assets. It can be shown to provide a general equilibrium theory of asset pricing, consistent with a market in which assets are risky, and investors have homogeneous beliefs and aversion to risk. State preference theory was developed around the same time as the capital asset pricing model but has not received as much attention as the capital asset pricing model. This is probably because state preference theory is a more abstract theoretical framework, relying as it does on the existence of pure assets, whose prices cannot be observed in financial newspapers, from the Bloomberg, or on the internet. It is more appropriately viewed as what one would see if one took a microscopic look at the financial markets.

In order to understand this material, we shall have to tread carefully with the terminology. We shall make reference to assets that could be stocks, bonds, or commodities, and we shall call them complex assets, though there is nothing particularly complex about them. A share of Google stock is a complex asset, a barrel of oil is a complex asset, a bond issued by GE is a complex asset. They are complex assets in that they are made up of pure assets. In some ways, this idea is analogous to the fact that humans (and animals) are complex combinations of fundamental elements. In fact, you should think of this chapter as taking a microscopic look at a financial market and learning about the basic building blocks that enable markets to generate prices. It so happens that pure assets play a tremendous role in the functioning of a market. As such, we can gain a better appreciation for the value that options provide markets and society as a whole.

## 29.1 Pure Assets in the Market

## 29.2 Pricing Pure and Complex Assets

## 29.3 Numerical Example

## 29.4 State Pricing and Options in a Binomial Framework

## 29.5 State Pricing and Options in Continuous Time

## 29.6 Recap and Preview

With the development of option pricing theory, state preference theory has stepped to the back in the family of valuation models. Although, as we have seen here, state preference theory is clearly consistent with option pricing theory, the implications of the latter are much easier to observe in the real world, and, hence, it has become more widely used in practice as well as in scholarly work. Keep in mind, however, that just as a biologist cannot simply observe a specimen with the naked eye and expect to learn much about it, so must a serious student of finance observe the internal structure of the financial pricing process. State preference theory provides the framework to accomplish that task.

In Chapter 30, we examine what option pricing theory implies for the expected returns on options and how this relates to the expected returns on the underlying assets.

# QUESTIONS AND PROBLEMS

1 Compare and contrast pure assets with complex assets.  
2 Suppose we have four states and four complex assets with the payoffs in the HH matrix. Further, assume we observe the prices of the complex assets have all been normalized to 100 (the  $S$  matrix). Compute the prices of the pure assets in this setting:

$$
\mathbf {H} = \left| \begin{array}{c c c c} 1 0 5 & 6 5 & 2 0 & 4 0 \\ 1 0 5 & 9 5 & 1 5 0 & 1 3 0 \\ 1 0 5 & 1 3 0 & 1 1 0 & 2 0 0 \\ 1 0 5 & 1 5 0 & 1 8 0 & 1 1 0 \end{array} \right| \mathbf {S} = \left| \begin{array}{c} 1 0 0. 0 0 \\ 1 0 0. 0 0 \\ 1 0 0. 0 0 \\ 1 0 0. 0 0 \end{array} \right|.
$$

3 With pure assets one must be careful with rounding. Based on the pure asset values given next, compute the implied discrete compounded interest rate when the pure asset values are rounded at the first decimal place. Repeat this exercise for rounding at the second through sixth decimal place. Discuss your findings for the six cases (rounding at first, second, third, fourth, fifth, and sixth decimal place), explaining the role of rounding in computing pure asset values:

$$
\Psi = \left| \begin{array}{c} 0. 3 6 6 5 4 8 \\ 0. 1 8 7 7 8 0 \\ 0. 1 4 3 0 1 5 \\ 0. 2 7 3 5 3 1 \end{array} \right|.
$$

4 Suppose you have an asset priced at 50 that can go either up to 60 or down to 40 in the next year. The risk-free rate is  $5\%$  (discrete compounding). Consider a call option with exercise price of 50. First, compute the correct call option price. Identify three approaches to solving for the state prices and demonstrate that each approach results in the same state prices.  
5 Using just call option prices, explain how to construct pure asset prices when given five different exercise prices for one-month options.

# NOTES

1. Instead of the word asset, some articles and books use the term security, but a security is a claim issued by a company. We shall not use that term here, preferring the more general term asset.  
2. To obtain the inverse of  $\mathbf{H}$ , we require the condition that no row or column of  $\mathbf{H}$  is a linear function of any other row or column. This condition will always hold if no complex asset is a linear function of any other combination of complex assets. Otherwise, that asset would be redundant.  
3. To solve for  $r_{\mathrm{f}}$  in matrix notation we would introduce an  $n \times 1$  row vector,  $\mathfrak{t}$ , which contains 1 as each element. Then  $r_f = (1 / \mathfrak{t}\Psi) - 1$ .  
4. The matrix operations of transposing, multiplying, and taking the inverse can be easily done using Excel's array formulas =transpose(), =mmult(), and =inverse().  
5. The derivative of the call formula with respect to the exercise price has a minus sign, which would have to be ignored if one were using the derivative as the price of a digital option.

