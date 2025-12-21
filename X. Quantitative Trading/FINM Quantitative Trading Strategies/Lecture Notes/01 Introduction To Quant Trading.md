---
title: Introduction To Quantitative Trading
parent_directory: FINM Quantitative Trading Strategies/Lecture Notes
formatted: 2025-12-20 07:07:30 PM
formatter_model: claude-sonnet-4
cli-tool: claude-code
primary_tags:
  - quantitative trading introduction
  - trading strategies basics
secondary_tags:
  - market inefficiency exploitation
  - risk management fundamentals
  - p and q models
cssclasses: academia
---

# INTRODUCTION TO QUANTITATIVE TRADING

# 1. BASIC FEATURES OF QUANTITATIVE TRADING

The ecosystem of the securities trading industry contains actors of all sorts, from farmers and silver miners attempting to hedge, through individual savers working on their retirement, governments maintaining currency pegs, and investment banks with fingers in nearly every pie. Our goal is to concentrate on those (relatively) few organizations employing quantitative trading strategies.

Quantitative trading strategies have a few key elements:

- A source of (likely) profit,  
- Regular securities trading, generally with stochastic control,  
- Regular processing of incoming data flow, and  
- Risk management.

Each of these elements represents a tremendous variety of ideas, and can be expanded into many complex volumes in its own right. We will attempt to treat each one with a keen eye for the tradeoff between balance and concision, with the goal of bringing an individual who possesses a reasonably quantitative background to a level of passing (or better) familiarity with most extant quantitative strategies found "in the wild".

1.1. Sources of Profit. Broadly, there are three sources of profit in trading strategies

- Providing services,  
Market inefficiency, and  
- Luck.

1.1.1. What To Do About Luck. We do not, of course, plan on particularly good or bad luck when considering a strategy. However, we can often measure how susceptible our strategy is to the element of luck. This approaches the realm of uncertainty and risk management, so most of our treatment will occur later when we begin to address risk management issues.

Note, however, that uncertainty may be reducible by improving a quantitative model (say by using better mathematics or more complete input data). So uncertainty clearly has a role to play even at early stages of finding sources of profit.

1.1.2. Providing Services. There are many ways for financial firms to profit by providing services. Most do not involve quantitative trading. For example, brokerage fees from trading brokers, data access fees from exchanges and advisory fees from investment firms are all closely related to trading but do not involve quantitative trading strategies.

Instead, the way in which trading strategies, quantitative or otherwise, can collect fees for services is somewhat invisibly. Take, for example, the case of an investor in a risky corporate bond, the CRC oil company's  $8\%$  Dec 2022 bonds, trading around 80 points per 100 as of March 2019. Each  $\$1,000$ -face bond is a promise to pay  $\$1,240$  in coupons and principal through 2022. That results in a handsome rate of return over  $15\%$  per year.

Does that make investors in these bonds brilliant paragons of trading savvy? Certainly not. When high-yield or junk bonds such as this one are issued, everyone understands that

there is relatively high risk of those payback promises failing to be honored. This is known as credit risk, and the effect here is that bondholders are providing an insurance service. They are buying the bonds and assuming the risk of CRC declaring bankruptcy, while getting paid for such risk via a high apparent rate of return.

Many trading strategies follow this pattern: they generate profits at seemingly magical levels until you consider the risks they assume in the process<sup>1</sup>. One role of quantitative trading strategies is to acknowledge that risk, and optimize its size in relation to the profits.

Other examples of being paid for services include selling options, market making and foreign exchange carry trades. All are bases for reasonable quantitative trading strategies, and we will discuss them in greater detail later.

1.1.3. Market Inefficiency. In an economic sense, we might say markets are exhibiting inefficiency whenever exploitable trading strategies exist that are capable of reliably achieving risk/reward ratios significantly better than "usual". Everyone hopes to find these cases, of course, and if the opportunity is really large, then it will attract more and more attention and trading until its profit margins revert to normal. We will discuss this later when we introduce the concept of beta creep.

Securities with the most obvious relationships between them, for example precious metals traded at different exchanges, will tend to exhibit the least inefficiency. As relationships become less obvious, or harder to exploit, the inefficiencies, and potential profits, expand.

1.1.4.  $P$  and  $Q$ . For quantitative traders, there are two categories of models used in identifying profit opportunities, identified by Emanuel Derman as  $\mathbf{P}$  and  $\mathbf{Q}$ .

P models involve what most of the general public thinks of as the dark art in financial modeling, namely constructing predictive models for securities prices. These models involve real-world probabilities of prices going up or down and by how much. They usually involve lots of data and tend toward being statistical in nature. An example might be a lead-lag model where the CRC stock price increases or decreases just after oil futures prices go up or down.

More generally predictive  $\mathbf{P}$  models require securities prices to lag other information flow. The information is said to "propagate" to the market prices of those securities. When we are considering prices alone, this information flow usually follows a hierarchy that imitates liquidity, expressing itself first in highly liquid securities such as index futures before making its way to less liquid cases like CRC bonds.

Q models involve market consistency, where the prices of one set of securities are used collectively to calibrate a model to risk-neutral probabilities, helping identify individual cases that might be cheap or dear and to price closely related securities that are unquoted. For example, the EMini (SP500) futures options can all be run through the Black-Scholes model to find volatility skews of implied volatility by strike. Options whose implied volatility fails to agree with the rest of the skew curves look like trading opportunities.

Of course, when a  $\mathbf{Q}$  suggests a trade, there is the implicit assumption the trade will be profitable, so there is an implicit  $\mathbf{P}$  model involved as well. For vanilla options market making it is now common to link the  $\mathbf{Q}$  model with a corresponding  $\mathbf{P}$  model. However, many desks, especially exotics desks, do not bother to construct the  $\mathbf{P}$  model.

When we construct  $\mathbf{Q}$  models and then fit them, we end up with a set of model parameters that may or may not make sense according to our experience and intuition. If they look

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/145aa5ed-0c6b-4428-800c-d819e59489cb/6eae44f58dde87fcd212f4a3dcc2302ebed9cb063725e9ef716bfa0f84b79591.jpg)  
Ford, Equity Prices Versus CDS, 2018-2021  
FIGURE 1. Ford Motor Company equity prices versus credit default swap spreads. Clearly there is a relationship, though it is highly nonlinear.

"strange" we may decide we have a trading opportunity based on the model's perspective on market prices, even without having identified any one security whose price is clearly out of line.

In this case, we say we are trading on model stress. A simple example is a yield curve inversion in US Treasury prices, with a yield curve derived from those prices showing higher rates of return on short-term securities than on long-term securities. These inversions happen from time to time but last for months, not years. Inverted rates of return will be unlikely to last, and investor trading according to that view stands a good chance of profit.

In our studies, we will take  $\mathbf{Q}$  models to be black boxes, capable of helping use go back and forth from parameter space to security prices, without worrying too much about their underlying mathematics or calibration techniques. For us, they are essentially nonlinear transformations of security prices for purposes of identifying and constructing quantitative  $\mathbf{P}$  trading models. Reasonable models have coefficients (parameters) that only vary within some plausible bounds. If we start to find implied parameters approaching or outside those bounds, either the model is unreasonable or the securities prices generating them are unlikely to last for a long time. We will address in greater detail when we consider backtesting.

1.1.5. Things We Cannot Really Model. There are some things that are very impractical to model, even though we might really want to

- Capital structure events (mergers, acquisitions, buybacks, debt issues, fraud),

Major political events (Brexit, sovereign default), and  

- Instinctive trading.

# 2. THE ROLE OF REGULAR TRADING

It is easy to envision a clever trader who identifies some tremendous opportunity in the markets, makes just one or a few big trades, and then relaxes watching the profits roll in. This happened during the 2007-2009 financial crisis where some traders (e.g. John Paulson and Steve Eisman) did just that. While the analysis may involve quite a bit of quantitative reasoning, and some trading is necessarily involved, these are not examples of quantitative trading strategies.

A distinguishing feature of quantitative trading strategies is that they involve continual reactions to new information, typically by trading market securities to hedge existing positions, clear out undesirable positions, or take attractive new positions. There may be somewhat long periods where they are completely out of the market, but usually they have some position and activity. As a consequence, there is some degree to which their profits arise from betting multiple times on profitability of similar-looking attractive situations, effectively identical independent events. Doing so makes performance steadier and allows for statistical design and stochastic control unattainable by single-event bets.

# 3. INFORMATION PROCESSING AND DATA FLOW

All quantitative trading strategies work by taking positions expected to realize "unusual" profits based on the best information available when trades are made. Once positions are in place, new information may dictate changes to the positions. Existing positions may or may not have lost money, but regardless of past outcomes the new information alters our perceptions of position value, and undesirable positions must be discarded while new ones are obtained.

As positions make money, they can become disproportionately large within the portfolio, causing us to liquidate a portion of our holdings in rebalancing operations. Other positions may have lost so much money, that we no longer trust the hypotheses generated by our models. These may be liquidated in a stop loss risk control strategy. Further positions may be made more or less desirable, not due to their profitability predictions, but because the help or hurt our overall perception of risks. In these cases, rebalancing comes from hedging and risk management motives.

3.1. The Cycle. All of these desired alterations to our positions come from the effects of newly arrived information and the associated changes to our perceptions of risk and value. We find ourselves continually executing a cycle of the following steps:

Take,and parse,useful information  

- Run profitability and risk models  
- Attempt to adjust positions accordingly

There is of course a tremendous amount of configuration, model specification, and data control hidden behind these three simple-sounding steps. To the extent the overall system is driven by models and procedures, we say it is a trading system with stochastic control, i.e. changes to its behavior that depend on random or random-seeming external events.

3.2. Risk Management. As we saw above, risk management is part of our stochastic control. However it is useful at this stage to at least point out major elements of risk management from the point of view of quantitative trading strategies. Most strategies are aimed at trading multiple securities simultaneously, in order to reap the benefits of large  $N$ , as well as spread development and maintenance costs among multiple revenue streams.