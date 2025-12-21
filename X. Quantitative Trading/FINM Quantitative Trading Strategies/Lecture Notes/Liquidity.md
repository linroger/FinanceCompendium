---
title: Liquidity
parent_directory: FINM Quantitative Trading Strategies
formatted: 2025-12-21 12:45:00 PM
formatter_model: grok-code-fast-1
cli-tool: opencode
primary_tags:
  - liquidity risk
  - market liquidity
secondary_tags:
  - trading costs
  - position sizing
  - mark to market
cssclasses: academia
---

# LIQUIDITY

## A Broad View

To the finance industry, the term liquidity refers loosely to the how easily, quickly and voluminous market participants can execute changes in their positions. An asset is said to be liquid if

- counterparties are easy to find,  
- trade prices are close to arrival price, where arrival price denotes the generally perceived market value when a position change begins, and  
- position changes can be completed in a short amount of time.

## Attractiveness Of Liquidity

For any two assets with similar probability distributions, but differing liquidity, it is more desirable to hold a position in the more liquid one. Both direct and indirect trading costs are lower, the position can be scaled up to employ more capital, and risk is lower.

## Risk of Illiquidity

This latter point is not immediately obvious. To understand it consider a position we believe has 1-year profit distributed approximately as a Gaussian with mean $\mu_t > 0$.

$$
PL_{t+1} \sim N(\mu_t, s)
$$

### Risk of Illiquidity: Asset Distribution

and an asset value that varies daily approximately as another Gaussian<sup>1</sup>

$$
V_{t+1} \sim N(V_t, \sigma)
$$

Let's also assume a positive correlation  $\rho$  between  $V$  and  $\mu$ . We want to exit if we have some  $t$  where  $\mu_t < 0$ .

### Risk of Illiquidity: MtM Correlation

The daily mark to market  $\Delta V = V_{t + 1} - V_t$  has the same correlation with  $\mu_{t + 1}$ , so since  $\rho >0$

$$
\operatorname{Prob}(\Delta V < 0 \mid \mu < 0) > 0.5
$$

showing we will tend to want to exit after losses.

In the case of high liquidity, our losses will be  $\Delta V$  because we can exit immediately. For low liquidity, we may have worse to come.

### Risk of Illiquidity: PL Distribution

Even if $\rho = 0$, the tail of our PL distribution arises from the single Gaussian with standard deviation $\sigma$. But if, say, exit takes two days, then for some proportion of our original position, the PL is distributed as $N(0,\sigma \sqrt{2})$

A more rigorous treatment in continuous time can be found in Almgren and Chriss.

## Attractiveness Of Illiquidity

Holding illiquid securities is often profitable in a sense mysterious and unexplainable by no-arbitrage efficient market models. When profitable, we can consider that it is really a form of carry trade, where the position holder generates excess return for providing the service of holding otherwise undesirable assets.

## Metrics of Liquidity

Because liquidity has a definition incorporating multiple criteria, there is no single unified definition of it. Metrics used tend to be ad hoc and to vary by market. Some measures include

- average volume (or often dollar volume) available on bid and offer  
- impact parameter estimates from Almgren and Chriss  
- average volume traded per day, week, or month  
average bid-offer spread

Sometimes the bottom decile is used rather than an average.