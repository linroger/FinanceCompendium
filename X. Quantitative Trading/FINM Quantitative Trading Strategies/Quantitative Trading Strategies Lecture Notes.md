---
title: "Introduction to Quantitative Trading"
parent_directory: "FINM Quantitative Trading Strategies"
formatted: "2025-12-21 11:30:00 AM"
formatter_model: "kimi-k2-turbo"
cli-tool: "claude-code"
primary_tags:
  - quantitative trading strategies
  - market inefficiency
  - stochastic control
secondary_tags:
  - p models
  - q models
  - risk management
  - information processing
  - exponentially weighted statistics
  - carry trade
  - tick data structure
  - market microstructure
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

### 1.1 Sources of Profit

Broadly, there are three sources of profit in trading strategies

- Providing services,
- Market inefficiency, and
- Luck.

#### 1.1.1 What To Do About Luck

We do not, of course, plan on particularly good or bad luck when considering a strategy. However, we can often measure how susceptible our strategy is to the element of luck. This approaches the realm of uncertainty and risk management, so most of our treatment will occur later when we begin to address risk management issues.

Note, however, that uncertainty may be reducible by improving a quantitative model (say by using better mathematics or more complete input data). So uncertainty clearly has a role to play even at early stages of finding sources of profit.

#### 1.1.2 Providing Services

There are many ways for financial firms to profit by providing services. Most do not involve quantitative trading. For example, brokerage fees from trading brokers, data access fees from exchanges and advisory fees from investment firms are all closely related to trading but do not involve quantitative trading strategies.

Instead, the way in which trading strategies, quantitative or otherwise, can collect fees for services is somewhat invisibly. Take, for example, the case of an investor in a risky corporate bond, the CRC oil company's  $8\%$  Dec 2022 bonds, trading around 80 points per 100 as of March 2019. Each  $\$1,000$ -face bond is a promise to pay  $\$1,240$  in coupons and principal through 2022. That results in a handsome rate of return over  $15\%$  per year.

Does that make investors in these bonds brilliant paragons of trading savvy? Certainly not. When high-yield or junk bonds such as this one are issued, everyone understands that

there is relatively high risk of those payback promises failing to be honored. This is known as credit risk, and the effect here is that bondholders are providing an insurance service. They are buying the bonds and assuming the risk of CRC declaring bankruptcy, while getting paid for such risk via a high apparent rate of return.

Many trading strategies follow this pattern: they generate profits at seemingly magical levels until you consider the risks they assume in the process<sup>1</sup>. One role of quantitative trading strategies is to acknowledge that risk, and optimize its size in relation to the profits.

Other examples of being paid for services include selling options, market making and foreign exchange carry trades. All are bases for reasonable quantitative trading strategies, and we will discuss them in greater detail later.

#### 1.1.3 Market Inefficiency

In an economic sense, we might say markets are exhibiting inefficiency whenever exploitable trading strategies exist that are capable of reliably achieving risk/reward ratios significantly better than "usual". Everyone hopes to find these cases, of course, and if the opportunity is really large, then it will attract more and more attention and trading until its profit margins revert to normal. We will discuss this later when we introduce the concept of beta creep.

Securities with the most obvious relationships between them, for example precious metals traded at different exchanges, will tend to exhibit the least inefficiency. As relationships become less obvious, or harder to exploit, the inefficiencies, and potential profits, expand.

#### 1.1.4 $P$ and $Q$

For quantitative traders, there are two categories of models used in identifying profit opportunities, identified by Emanuel Derman as $\mathbf{P}$ and $\mathbf{Q}$.

P models involve what most of the general public thinks of as the dark art in financial modeling, namely constructing predictive models for securities prices. These models involve real-world probabilities of prices going up or down and by how much. They usually involve lots of data and tend toward being statistical in nature. An example might be a lead-lag model where the CRC stock price increases or decreases just after oil futures prices go up or down.

More generally predictive  $\mathbf{P}$  models require securities prices to lag other information flow. The information is said to "propagate" to the market prices of those securities. When we are considering prices alone, this information flow usually follows a hierarchy that imitates liquidity, expressing itself first in highly liquid securities such as index futures before making its way to less liquid cases like CRC bonds.

Q models involve market consistency, where the prices of one set of securities are used collectively to calibrate a model to risk-neutral probabilities, helping identify individual cases that might be cheap or dear and to price closely related securities that are unquoted. For example, the EMini (SP500) futures options can all be run through the Black-Scholes model to find volatility skews of implied volatility by strike. Options whose implied volatility fails to agree with the rest of the skew curves look like trading opportunities.

Of course, when a  $\mathbf{Q}$  suggests a trade, there is the implicit assumption the trade will be profitable, so there is an implicit  $\mathbf{P}$  model involved as well. For vanilla options market making it is now common to link the  $\mathbf{Q}$  model with a corresponding  $\mathbf{P}$  model. However, many desks, especially exotics desks, do not bother to construct the  $\mathbf{P}$  model.

When we construct  $\mathbf{Q}$  models and then fit them, we end up with a set of model parameters that may or may not make sense according to our experience and intuition. If they look

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/d12589b0-e653-4029-bbac-01616075b1c0/1f5196d2f73faa8c92f3fcd43bb95ac0406331d4fc3faafc522db68b659d9ae6.jpg)  
Ford, Equity Prices Versus CDS, 2018-2021  
FIGURE 1. Ford Motor Company equity prices versus credit default swap spreads. Clearly there is a relationship, though it is highly nonlinear.

"strange" we may decide we have a trading opportunity based on the model's perspective on market prices, even without having identified any one security whose price is clearly out of line.

In this case, we say we are trading on model stress. A simple example is a yield curve inversion in US Treasury prices, with a yield curve derived from those prices showing higher rates of return on short-term securities than on long-term securities. These inversions happen from time to time but last for months, not years. Inverted rates of return will be unlikely to last, and investor trading according to that view stands a good chance of profit.

In our studies, we will take  $\mathbf{Q}$  models to be black boxes, capable of helping use go back and forth from parameter space to security prices, without worrying too much about their underlying mathematics or calibration techniques. For us, they are essentially nonlinear transformations of security prices for purposes of identifying and constructing quantitative  $\mathbf{P}$  trading models. Reasonable models have coefficients (parameters) that only vary within some plausible bounds. If we start to find implied parameters approaching or outside those bounds, either the model is unreasonable or the securities prices generating them are unlikely to last for a long time. We will address in greater detail when we consider backtesting.

#### 1.1.5 Things We Cannot Really Model

There are some things that are very impractical to model, even though we might really want to

- Capital structure events (mergers, acquisitions, buybacks, debt issues, fraud),

Major political events (Brexit, sovereign default), and  

- Instinctive trading.

# 2. THE ROLE OF REGULAR TRADING

It is easy to envision a clever trader who identifies some tremendous opportunity in the markets, makes just one or a few big trades, and then relaxes watching the profits roll in. This happened during the 2007-2009 financial crisis where some traders (e.g. John Paulson and Steve Eisman) did just that. While the analysis may involve quite a bit of quantitative reasoning, and some trading is necessarily involved, these are not examples of quantitative trading strategies.

A distinguishing feature of quantitative trading strategies is that they involve continual reactions to new information, typically by trading market securities to hedge existing positions, clear out undesirable positions, or take attractive new positions. There may be somewhat long periods where they are completely out of the market, but usually they have some position and activity. As a consequence, there is some degree to which their profits arise from betting multiple times on profitability of similar-looking attractive situations, effectively identical independent events. Doing so makes performance steadier and allows for statistical design and stochastic control unattainable by single-event bets.

# 3. INFORMATION PROCESSING AND DATA FLOW

All quantitative trading strategies work by taking positions expected to realize "unusual" profits based on the best information available when trades are made. Once positions are in place, new information may dictate changes to the positions. Existing positions may or may not have lost money, but regardless of past outcomes the new information alters our perceptions of position value, and undesirable positions must be discarded while new ones are obtained.

As positions make money, they can become disproportionately large within the portfolio, causing us to liquidate a portion of our holdings in rebalancing operations. Other positions may have lost so much money, that we no longer trust the hypotheses generated by our models. These may be liquidated in a stop loss risk control strategy. Further positions may be made more or less desirable, not due to their profitability predictions, but because the help or hurt our overall perception of risks. In these cases, rebalancing comes from hedging and risk management motives.

### 3.1 The Cycle

All of these desired alterations to our positions come from the effects of newly arrived information and the associated changes to our perceptions of risk and value. We find ourselves continually executing a cycle of the following steps:

Take and parse useful information  

- Run profitability and risk models  
- Attempt to adjust positions accordingly

There is of course a tremendous amount of configuration, model specification, and data control hidden behind these three simple-sounding steps. To the extent the overall system is driven by models and procedures, we say it is a trading system with stochastic control, i.e. changes to its behavior that depend on random or random-seeming external events.

### 3.2 Risk Management

As we saw above, risk management is part of our stochastic control. However it is useful at this stage to at least point out major elements of risk management from the point of view of quantitative trading strategies. Most strategies are aimed at trading multiple securities simultaneously, in order to reap the benefits of large $N$, as well as spread development and maintenance costs among multiple revenue streams.

## EXPONENTIALLY WEIGHTED STATISTICS

# 1. MOTIVATION

Very frequently in trading model design, we need to know how a variable compares to recent history. As data points recede into the past, however, their importance to current trading strategies declines. In effect, at time  $t$ , we want to include points  $x_{t - s}$  in the past with declining weight  $W = W(s)$  depending on the age  $s$ . We can then get a weighted sum

$$
S _ {t} = \int_ {s = 0} ^ {\infty} W (s) x _ {t - s} d s
$$

or its near equivalent weighted average

$$
A _ {t} = \frac {\int_ {s = 0} ^ {\infty} W (s) x _ {t - s} d s}{\int_ {s = 0} ^ {\infty} W (s) d s}.
$$

Often, especially for the common operation of averaging, we rescale our weights to make life easier

$$
w (s) := \frac {W (s)}{\int_ {s = 0} ^ {\infty} W (s) d s}.
$$

and frequently we deal in discrete sampling where sums take the place of these integrals so that we may say for example

$$
A _ {t _ {j}} = \sum_ {i = 0} ^ {\infty} w _ {i} x _ {j - i}.
$$

Fans of functional analysis or signal processing will recognize this as a convolution operation.

We could consider many possible functions for such a weighting scheme. The simplest, conceptually, is a moving boxcar window where we discard any points older than, say  $s = 30$  days. The trouble with boxcar weighting is that, by not smoothly decaying old data, it gives us surprises as we run the business. The reason is easy to see. Imagine we start with a relatively stable set of observations

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/d12589b0-e653-4029-bbac-01616075b1c0/56fabec597b8b0700afab2700c309c152c43b85073ded73845f115f63e739a2e.jpg)  
FIGURE 1. A boxcar average doing a nice job

We get one big outlier, which naturally brings down the average in a sizable jump

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/d12589b0-e653-4029-bbac-01616075b1c0/85ad7707caa8d52898eccdd0157055cdb82b3245ef65c670e23c128283239723.jpg)  
FIGURE 2. New information drops the average quite a bit, as expected

And then, after our window has passed, the average jumps again, in the opposite direction

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/d12589b0-e653-4029-bbac-01616075b1c0/601e8a956b413840ec4c4b8abfadd96f2e3bf12edfbf63ff08cfd14b3c55cdce.jpg)  
Boxcar Average, Full Picture  
FIGURE 3. After the boxcar window has passed, we get a second jump

It's perfectly normal to have your systems react in a big way to a new outlier. After all, that outlier represents important new information arriving. What is not normal is to have a big reaction to the outlier falling out of your averaging window. The window size was your arbitrary choice, not a bit of important new data. Especially if the averaging period is more than a few weeks, people will forget about the outlier and then go into panic mode when model parameters take big jumps due to this behavior.

We can avoid this by choosing a "tent" function where weight declines linearly up to our limit, which on daily data with a 30 day limit would set  $w = 0$  for  $s \geq 30$  and otherwise choose for  $i = 0, \ldots, 29$

$$
w _ {i} := w (s _ {i}) = \frac {30 - i}{30 \left(\frac {30 + 1}{2}\right)}
$$

Any weighting scheme we desire is available to us, but it turns out one of them is special. Namely, if we choose the exponential weighting scheme with coefficient  $\eta < 0$  and  $i = 0,\dots ,\infty$

$$
w _ {i} := w (s _ {i}) = \eta^ {i} \cdot (1 - \eta)
$$

with the coefficient  $1 - \eta$  chosen because  $1 + \eta +\eta^{2} + \dots = \frac{1}{1 - \eta}$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/d12589b0-e653-4029-bbac-01616075b1c0/ef042514be3792decef97f00cdb8a26a1f58aeddde137b8765c199a918bef9ac.jpg)  
FIGURE 4. Weights decaying with age. Here the exponential center of mass was set to 10.

Examining the effect on actual data, we can apply these weighting schemes to a few years' Sunoco closing prices. On the full scale it is hard to see much difference

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/d12589b0-e653-4029-bbac-01616075b1c0/3d51c7a376586874181382ebebe404b111bd09b67f8e87747972d903c955a9f0.jpg)  
FIGURE 5. Little difference in weighting schemes on timescale much larger than the window

but on shorter time horizons close to the window size we more significant effects.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/d12589b0-e653-4029-bbac-01616075b1c0/c8b62e810cc7264285d8d9e017ae4cc432b4fbbb844562ce5a0f2a42b5d03a6e.jpg)  
Sunoco Differing Averages  
FIGURE 6. Significant difference in weighting schemes on timescale close to the window

1.1. Comparison With Outliers. As we can see, exponential and tent schemes, with their decaying weights, do not suffer from the jumping problem of boxcars.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/d12589b0-e653-4029-bbac-01616075b1c0/a13d09ed0a8775ce11b0088a087e52919d63b3a5ed515d5a8dad469203bcb105.jpg)  
Differing Averages With Outlier  
FIGURE 7. All three schemes react to the outlier, but only boxcar suffers a severe "bounce-back" effect

# 2. EFFICIENT ALGORITHMS

Among available weighting schemes, quantitative practitioners greatly favor the boxcar and the exponential. Boxcar is popular due to its simplicity of understanding and implementation. Exponential weighting is popular because it enjoys a particularly clean and efficient algorithm for computation. To begin with, note that each weight  $w_{i}$  can be computed as  $w_{i} = \eta w_{i - 1}$ . Now, note that if we have already computed the old, previous average

$$
A _ {t _ {j - 1}} = (1 - \eta) \sum_ {i = 0} ^ {\infty} \eta^ {i} x _ {j - 1 - i}.
$$

then it can be rewritten as

$$
A _ {t _ {j - 1}} = (1 - \eta) \frac {1}{\eta} \sum_ {i = 0} ^ {\infty} \eta^ {i - 1} x _ {j - 1 - i} = (1 - \eta) \frac {1}{\eta} \sum_ {i = 1} ^ {\infty} \eta^ {i} x _ {j - i}.
$$

Our new average is

$$
\begin{array}{l} A _ {t _ {j}} = (1 - \eta) \sum_ {i = 0} ^ {\infty} \eta^ {i} x _ {j - i} \\ = (1 - \eta) x _ {j} + (1 - \eta) \sum_ {i = 1} ^ {\infty} \eta^ {i} x _ {j - i} \\ = (1 - \eta) (x _ {j}) + \eta A _ {t _ {j - 1}} \\ \end{array}
$$

Therefore, to update our average, we need to perform only a two multiplications and an addition. Furthermore, we need not store any arrays of values or intermediate results (unless we want to). We can discard  $A_{t_{j-1}}$  the moment it has been used<sup>1</sup> to compute  $A_{t_j}$ . Thus, along with very few computations, updates to the exponential average or sum cost essentially no computer memory.

The implications for efficient computation almost cannot be overstated. Backtesting and parameter searches become far faster when computation is efficient.

We can contrast with, say, boxcar updating. Computationally it is not terribly expensive, but for a window size  $N$  we have to keep track of the last  $N$  values along with their sum  $S_{i}$ . Updating is then a matter of dropping the oldest item out of the list, updating  $S_{i}$  by subtracting its value, and then recomputing the quotient for the average<sup>2</sup>.

2.1. Infinite Lookback. Since exponential decay has strictly positive weights, we might want to correct for the use of  $\infty$  in our computations above. For example, if  $N = 3$  and we take  $A_{1} = x_{1}$ , then our "efficient" formula gives

$$
A _ {3} = (1 - \eta) \left(x _ {3}\right) + \eta \left((1 - \eta) \left(x _ {2}\right) + \eta x _ {1}\right)
$$

which is not the same thing as the truncated geometric series averaging we might expect

$$
\aleph_ {3} = \frac {\left(x _ {3} + \eta x _ {2} + \eta^ {2}\right)}{1 + \eta + \eta^ {2}}
$$

In cases of small sample counts, we may well want to adjust for this difference.

# 3. TIME-WEIGHTED AVERAGING

So far, we have covered exponential weighting suitable for regular time series, or other cases where the relative importance of data depends on observation count.

3.1. Decay By Time. Let us now consider the case where the importance of data declines with respect to "wall clock" time  $t$ . This is particularly relevant where data updates come in bursts. Here we choose a exponentially decaying weight, dependent on the age  $\Delta t$  of all former data

$$
w = w _ {\lambda} (\Delta t) = e ^ {- \lambda \cdot \Delta t}
$$

where  $\lambda$  has units of 1/time, and our update formula becomes, with observation  $x_{j}$  at time  $t_j$

$$
A _ {t _ {j}} = e ^ {- \lambda \cdot (t _ {j} - t _ {j - 1})} A _ {t _ {j - 1}} + \left(1 - e ^ {- \lambda \cdot (t _ {j} - t _ {j - 1})}\right) x _ {j}
$$

We refer to the quantity  $1 / \lambda$  as the characteristic time of our averaging, and the weight of data up to age  $1 / \lambda$  is of course  $1 / e$ .

For regularly spaced data at intervals  $\Delta t = \tau$ , this is equivalent to our previous formulas with  $\eta = e^{-\lambda \cdot \tau}$ .

3.2. Updates For Time-Weighted Averaging. Our update algorithm is nearly identical, but now we need to track not only our previous average, but also the time  $t_{j - 1}$  at which it was computed. This is still a trivial burden, and our calculation and memory efficiency remain essentially unaffected.

It is important to note that the time-weighted average will put very low weight on fresh data items if they come in rapid succession, since the decay of old data will be small. Whether or not this property is desirable depends on the specifics of the economic calculation in play.

# 4. TERMINOLOGY IN EXPONENTIAL WEIGHTING

If we consider either a discrete scheme with decay on old data of  $c_{\lambda} = e^{-\lambda}$ , or a time-weighted scheme with decay of size  $e^{-\lambda \Delta t}$ , there are a few equivalent ways in which these may be described:

- Characteristic Time  
- Decay Coefficient  $\lambda$  
- Unit Decay  $\eta$  (which  $= e^{-\lambda}$ )  
- Half-life  
Center Of Mass  
- Span

All of these fully specify an exponential weighting scheme, so you will see various colleagues use these terms, according to their preferences.

# 5. UPDATE FORMULAS FOR COVARIANCE

Higher-order moments, including covariance (and hence correlation), enjoy update formulas as found in Pebay (2008). In particular Pebay shows that in the case of no decay

$$
c _ {i + 1} = c _ {i} + \frac {i}{i + 1} (x - \mu_ {x}) (y - \mu_ {y})
$$

## THE CARRY TRADE

# 1. THE PRINCIPLES OF CARRY TRADES

A large subset of trading, and especially quantitative trading, can attribute significant portions of its profitability to holding positions that make money when nothing interesting happens, and (usually) lose money otherwise. In industry vernacular, this is called the carry trade, because the portfolio is "carrying" risk. For insurers, the business is quite explicit; premiums are collected, and damages are paid.

In the finance industry, risks arise from declines in the value of our positions, and profits arise from increases in them. Sometimes it is not so clear whether profits are associated with skill, or with risk. When trading financial securities, we may have a persistent risk bias without even knowing it. Associated profits then comprise a carry trade without our even realizing it.

# 2. STATISTICAL INDICIA OF CARRY TRADES

Given a sufficiently long time series of returns  $r_i$ , identifying a carry trade is fairly simple. We expect to see

- More frequent positive values,  $\# \{r_i\geq 0\} \gg \# \{r_i < 0\}$  
- Negative return skew, with a fatter left tail than right tail in the return histogram  
- Positive correlation to broad market indicators  
- Negative correlation to "fear" indicators such as VIX  
- (Likely) High excess kurtosis of returns

The hope of the investor, of course, is that future returns will be steady enough, and losses small enough that the strategy will be profitable overall without great damage to performance ratios from the occasional losses. Investors who realize they are taking on a carry trade are liable to be particularly worried about the correlations, which are highly unattractive since the carry trade will lose the most money precisely when everything else is going to hell.

2.1. Problems With Statistical Analysis. The small sample sizes typically found in backtests and historical return series give rise to high uncertainty in skew and kurtosis estimates. For example, with sample size  $N$ , the sample skew of a standard gaussian is distributed roughly as

$$
\mathrm {s k e w} _ {\Phi} \sim N \left(0, \frac {6}{\sqrt {N}}\right)
$$

and the situation is far worse for data, such as returns, that only vaguely look gaussian.

Estimates of beta are far better behaved, so the practical way to identify unstated carry risks is to examine downside beta to broad market indicators, especially ones with assets in similar markets to the strategy in question.

# 3. CARRY TRADE EXAMPLES

3.1. Rates Carry. A classic example of the carry trade takes place using levered investments in fixed income securities. The principle is to borrow at short tenors and low interest rates, incurring small interest payments, and lend at long tenors and high interest rates, pocketing large interest payments and principal risk accrual. The difference in cashflows provides the typical positive returns.  
In mature markets, it is common to have brokerage accounts or other funding sources linked to LIBOR (or SOFR after 2019). Thus, borrowing and levering up are possible at LIBOR plus some few basis points of spread. Longer term securities, such as Treasury notes and bonds, are extremely liquid and easy to trade, typically with interest rates a few points above LIBOR.  
For a simple view of rates carry, consider lending by buying a 5 year zero-coupon bond at  $5\%$  rates, and borrowing at  $1\%$  rates by selling a 1/4 year bond. The notional amounts are  $1 / e^{r\tau}$ . In this case, the weekly increase in 5 year bond value is 12 basis points, and the weekly increase in the value of the borrowings (short bond) is 2 basis points.  
3.2. FX Carry. A related example of the carry trade takes place using levered investments in foreign fixed income securities. The principle is similar to that of rates carry, but find even higher-paying lending rates by choosing securities in foreign fixed-income markets. Higher returns come at the cost of exposure to both FX rate changes and interest curve flattening.  
3.3. Crypto Wrapping. Many cryptotokens have a governance structure in which token holders are given the ability to cryptographically stake or wrap their existing holdings in smart contracts conveying limited withdrawal rights. In exchange, they receive periodic payments in the form of more tokens<sup>1</sup>. Historically, the risks of cryptotoken positions are quite high. The additional friction of withdrawal delays multiplies the risks, so it is unsurprising to find the corresponding yields at concomitant high levels.  
3.4. Short Options. A less well-understood form of the carry trade comes from shorting options, especially with strikes considerably lower than forward prices. Since markets usually rise, these options (in put equivalents) usually expire worthless, allowing the seller to book the premiums as profit. If course, the natural leverage of out-of-the-money options means that market downturns are incredibly painful.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/d12589b0-e653-4029-bbac-01616075b1c0/0767dac74ce1c0ee86779908a2f05cb21556f28e990a9005dbf2877cab3aa6d7.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/d12589b0-e653-4029-bbac-01616075b1c0/265ce8d3db064a345c19c9c15bf2592da7ddf567b8c38a9b1b475c9255a8a675.jpg)  
FIGURE 1. Staked Ethereum yields from Convex as measured by DefLlama.

# 1. THE STRUCTURE OF TICK DATA

1.1. Terminology. The basic important elements of market state change are trades, bids and offers. We use the term tick data to denote high-resolution observations of these numbers, and usually assume it is available as of any given time in which the market is open. The trades are collectively considered to comprise the trade tape while the bids and offers collectively form the order book as of any given moment.

If the market is a centralized exchange $^1$ , we can consider one or more orders to be at the top of book. For typical exchanges this is the set of highest-price bids and lowest-priced offers that have not yet matched or been cancelled, and have not traded out. The top of book is normally also ranked with highest priority to the oldest orders, in which case the exchange is said to use classic price-time priority. Incoming new orders are said to comprise the order flow.

For a given asset class, the group of exchanges serving it, the rules they use, and the firms accessing them collectively form the market microstructure.

1.1.1. Data Formats. Incoming tick data from established fully electronic markets normally arrives in FIX format $^2$ . Take, for example, data $^3$  from the CME such as

```txt
1128=9SOR9=265SOR35=XSOR49=CMESOR34=10065111SOR52=20141013152659076SOR75=20141013  
SOR268=2SOR279=2SOR22=8SOR48=656784SOR83=215750SOR107=ESV4 C1895  
SOR269=1SOR270=1775SOR271=5SOR273=152659000SOR336=2SOR346=1SOR1023=1  
SOR279=OSOR22=8SOR48=656784SOR83=215751SOR107=ESV4 C1895SOR269=1  
SOR270=1850SOR271=291SOR273=152659000SOR336=2SOR346=6SOR1023=3SOR10=008SOR
```

Less established markets may use JSON-style formats as in this message from the Coinbase cryptocurrency exchange

```txt
{'type': 'open', 'side': 'sell', 'price': '0.03743000', 'order_id': '88d50b31-d5c6-445b-9134-05989d05e165', 'remaining_size': '0.01000000', 'product_id': 'ETH-BTC', 'sequence': 1601762096, 'time': '2019-02-18T19:42:34.700000Z', 'received_UTC': 1550518954.092663}
```

1.1.2. A Note On Timestamps. It is common, and desirable, to represent timestamps using UTC, except for human presentations. However, note that there have been over 15 billion seconds since 1970. Therefore the 15-digit resolution of IEEE double precision floating point arithmetic will track these timestamps to slightly worse than the microsecond level.

# 2. INTERESTING ALTERNATIVE MARKET STRUCTURES

The U.S. equity markets are a fractured market, in the sense that the same equities are traded on multiple exchanges. They are now legally linked by Reg NMS (i.e. national market structure) which specifies rules under which they must send orders to each other when prices are better-looking for the customer.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/d12589b0-e653-4029-bbac-01616075b1c0/2215300dda4208a83379d3f1b5995a7bfe48e4f0822a7bdbb18ee5e369697851.jpg)  
BTC/USD Market And Trades Late Afternoon Apr 8 2018  
FIGURE 1. Bitcoin market and trades over a two minute period. Bid/offer spread is not visible, but we see the market undergoing multiple level changes. Note the three cases of large sell orders crossing the spread, taking out several levels of resting buy orders.

Foreign exchange electronic crossing networks (ECN) allow brokers last look rights. Futures exchanges may use a combination of price-time priority and proportional allocation in which all orders at the top-of-book get a nonzero fill probability.

Some exchanges allow brokers to give higher priority to internal crosses that join the broker's own customers. The U.S. equity markets now have similar structure, in effect, as orders arising from retail order flow are internally crossed by Citadel and other firms who make it their business to purchase the flow, cross where sensible, and then send the exhaust as new orders to the usual markets.

Certain futures markets are traded pro rata, in which there is no time priority given, or time priority is given only to the very earliest order. In particular the extremely liquid EuroDollar contract at the Chicago Mercantile Exchange trades on a modified version of pro rata allocation.

Not all exchanges make the orders visible to participants. These dark pools, common for US equities, match orders without displaying any kind of book to market participants, which in theory allow participants to place large orders, and make trades at lower market impact costs.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/d12589b0-e653-4029-bbac-01616075b1c0/3ce8740d02faedd21cb40f4d30462de80e9023ed7072248262b0ce1b2199122d.jpg)  
BTC/USD Market And Trades Late Afternoon Apr 8 2018  
FIGURE 2. Bitcoin market and trades over a two minute period. Bid/offer spread is somewhat visible.

They frequently have minimum size rules for matching. In practice accumulation algorithms have tended to outperform dark pools for that purpose.

Eric Budish suggests discretizing not only price, in order price ticks, but also times, by altering the matching process so as to hold periodic auctions.

# 3. TICK LEVEL STATISTICS

3.1. Basic Book Statistics. The most important tick-level statistic is the mid price, defined as

$$
\mathrm {m i d} = \frac {1}{2} (\mathrm {b i d} + \mathrm {o f f e r})
$$

Next most important is the VWAP or volume-weighted average price defined for trades of sizes  $V_{i}$  at prices  $P_{i}$  to be

$$
\mathrm {V W A P} = \frac {1}{N} \sum_ {1} ^ {N} P _ {i} V _ {i}
$$

The VWAP is a minimal representation of tradable position changes.

Somewhat less useful is a TWAP or time-weighted average price, which performs the same sum over time periods rather than trades.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/d12589b0-e653-4029-bbac-01616075b1c0/e51057ee72e764895fb62e6e1f7eb70cc63899acfa538e1a4c713885dddedfa2.jpg)  
FIGURE 3. Bitcoin market and trades over a 20 second period. Bid/offer spread is obvious, but the market had no level changes.

More interesting is an order-weighted average price, formed from the observation that if we have many more offers than bids, the clearing price at which participants collectively would be willing to trade were tick sizes smaller is closer to the bid than the mid price. This is not an exact science, but given a top of book with  $N_B$  bids at price  $B$  and  $N_A$  offers at price  $A$  one reasonable formula weights with square roots

$$
w = \sqrt {N _ {A}} + \sqrt {N _ {B}}
$$

$$
\mathrm {O W A} = \frac {\sqrt {N _ {A}}}{w} B + \frac {\sqrt {N _ {B}}}{w} A
$$

Clearly, other weighting schemes, possibly involving further levels of the book, can be incorporated into alternative versions of the OWA.

Arguably, the OWA is a predictive model, since we can use it to predict whether the next trade will occur on the bid side or the offer side of the book. The economic intuition is that if an order book has a great deal of orders on the offer, and very few on the bid, then (A) quite a few people are trying to sell and (B) it would not take many of them crossing the book to eliminate all the remaining bid orders, thereby dropping it one level. The trouble with OWA as a predictive model is that its predictions are strong precisely when many orders are already in the books on one side, ahead of any orders placed by a new participant.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/d12589b0-e653-4029-bbac-01616075b1c0/320feaa1e40842ab48445f6e2025892aa3c3aab0a402e2fdcd05e0d8ca854e7e.jpg)  
FIGURE 4. Bitcoin market and trades over a 1 second period. We observe the market trading through the bid.

3.2. Trade Marking. A very common derived statistic is marked trades, where bids and offers are marked according to whether a buyer initiated the transaction, or the seller initiated it. This process is flattered as the Lee-Ready Algorithm and essentially consists of the following for each trade

- Find the best bid and offer as of the trade time  
- Compare the trade price to them  
- If the trade price equals the best bid, mark as seller-initiated  
- If the trade price equals the best offer, mark as buyer-initiated  
- (Optional) Otherwise, mark according to whether trade price was below or above mid price

As stated, the algorithm may be too simple. For example block trades in equity markets and trades on quoted calendar spreads in futures markets may not be appropriate for marking.

Easley et alia's VPIN or volume-weighted probability of informed trading for a time  $t$  compares buyer-initiated versus seller-initiated trades in  $N$  windows preceding  $t$ . The idea is that if many trades are crossing the spread in the same direction, then the market is likely to have more informed directional buyers than noise traders who lack particular information.

We begin by defining order imbalance in the  $n$ th window by taking  $V^{B}$  to be the volume of buyer-initiated trades and  $V^{S}$  to be the volume of seller-initiated trades, and setting the imbalance as

$$
I _ {n} = \frac {\left| V _ {n} ^ {B} - V _ {n} ^ {S} \right|}{V _ {n} ^ {B} + V _ {n} ^ {S}}
$$

We can now set VPIN to be the mean

$$
\mathrm {V P I N} = \frac {1}{N} \sum_ {n = 1} ^ {N} I _ {n}
$$

3.3. Flow. A common (and simpler) extension of this idea is trade flow, which is a running tally of signed trade sizes where the sign is defined as 1 if the trade was seller-initiated and -1 if it was buyer-initiated. At any moment, we examine all reported trades within the last time period of length  $\tau$ . Using the notation above, we can then define flow as

$$
F _ {t} ^ {(\tau)} = V _ {(t - \tau , t)} ^ {B} - V _ {(t - \tau , t)} ^ {S}
$$

Clearly this can be normalized or transformed in many ways, with the goal of achieving more predictive forms.

The essential idea behind flow as a quantitative metric is that, in circumstances when many sellers are willing to cross that market-making bid-offer spread to complete their transactions, there is likely to be new information driving their choices. We do not know exactly what it is, but we certainly want to adapt to it.

When flow has a stable sign over macroscopic periods of time, it is a manifestation of supply and demand imbalance, and so it (usually) corresponds to steady price movements over a given time period. In a price time series, this has the appearance of momentum but the fundamental underlying process is economic (rather than the mysticism of momentum).

3.4. Returns. We commonly think of the interval  $T$  return of an asset as of time  $t$  in either absolute terms, as

$$
r _ {t} ^ {(T)} = \frac {P _ {t}}{P _ {t - T}} - 1
$$

or in logarithmic terms

$$
r _ {t} ^ {(T)} = \log \left(\frac {P _ {t}}{P _ {t - T}}\right)
$$

but we now see that the idea of knowing a single price  $P_{t}$  at some time  $t$  is somewhat optimistic. Really all we have is a set of order prices, and perhaps a recent trade price to go by.

Let's say we were to define  $P_{t}$  as the mid price. Naturally this stays constant over some time intervals, implying that returns are constantly decreasing in absolute value over this time. In addition, the return in any period becomes fairly sensitive to exactly which ticks the period contains.

We cannot entirely overcome the ambiguity, but we can certainly alleviate the tick-sensitivity problem by using an EWMA. We define

$$
r _ {t} ^ {(T)} = \log \left(\frac {P _ {t}}{\mathrm {E W M A} (P , \lambda = \frac {1}{T})}\right)
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/d12589b0-e653-4029-bbac-01616075b1c0/954baed024e6158e3ce6f9176a8f34137df71d0c1d58c46400e25136be80a56f.jpg)  
What Is The Price Change?  
FIGURE 5. Price changes and returns are ambiguous in definition, and appear to vary wildly, at short time scales.

which can conveniently be computed without saving past ticks.

## 4. THE EPPS EFFECT

A common issue with tick level data is the long periods of boredom interrupted by short intervals of terror. That is, data updates come at certain times (often bunched) so at a sufficiently small timescale correlations appear to drop to zero.

## PARAMETER REVERSION

## From $\mathbf{Q}$ Parameters To $\mathbf{P}$ models

To the extent we trust our sense of what parameters in a model are reasonable, "stress" in model parameters equates to profit opportunity. How do we decide when parameters are truly stressed?

### Parameter Cones

Burghardt (1990) pointed out an elegant visual means to measure current parameter values of a parameter (in his case, volatility) against past quantiles.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/d12589b0-e653-4029-bbac-01616075b1c0/d1a591db76475c83bbcbfce2f8f1d708a58efaa9ec2aa8ccb0b2e20c1e531e21.jpg)  
FIGURE 1. Volatility cones show recent vols are fairly normal, except perhaps at the 60 day scale.

### Taxonomy Of Reversion

Parameters that tend to revert include (some) 10-Q financial accounting ratios, volatility surfaces and varvol, yield curve shapes, default rates and risks, and general correlation.

Parameters that revert, but not reliably, include a few other financial accounting ratios, FX fundamentals, betas and pairwise correlations, and post-shock prices.

### Beware Of Regime Shifts

The less well a model fits the market, and the more parameters it has, the likelier it is to fall victim to apparent changes in regime that have no economic basis. This can lead to an optimization algorithm finding jumps in model parameters that ultimately lead to noise trading or worse.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/d12589b0-e653-4029-bbac-01616075b1c0/a7fbbacbe936bca33fce6b7115f2367304229f081cb692781404dded235ceb4f.jpg)  
FIGURE 2. An objective function used for parameter choice may change as time passes and incoming information is updated.

### The Uses Of Decaying Weights

Traditional statistics and parameter estimation from historical data have tended to use data windows (rolling ones if necessary). We see this in Burghardt's original definition of volatility cones.

In many cases, however, it is more reasonable to use some weighting scheme, where the weights decay toward zero as data items age. If we choose particular functional forms, particularly exponential weighting, computation costs can be greatly reduced as well.

#### EWMA

The simplest example of this is the exponentially-weighted moving average where we take some $0 < \lambda < 1$ and compute the average

$$
\bar {x} = \frac {\sum_ {n = 0} ^ {\infty} \lambda^ {n} x _ {- n}}{\sum_ {n = 0} ^ {\infty} \lambda^ {n}}
$$

#### EWMA Update

This doesn't necessarily look cheap or simple, but it enjoys a 1-pass or online algorithm where we take (now for increasing  $n$ )

$$
\bar {x} _ {0} = x _ {0}
$$

and

$$
\bar {x} _ {n + 1} = \lambda \bar {x} _ {n} + (1 - \lambda) x _ {n + 1}
$$

#### Update Algorithms

Online algorithms, also known as update algorithms are algorithms in which a small amount of state information is stored, and each incoming datum allows us to derive the new desired output, and new algorithm state, in relatively few computations.

#### Nontrivial State Example

In the case of the EWMA, this state is simply the EWMA value  $\bar{x}$  itself. For exponentially-weighted (or even windowed) estimates of variance, the state is actually two data elements corresponding roughly to the sum of squares and sum of square differences.

Many stochastic control perspectives and machine learning algorithms make heavy use of update algorithms.

## OPPORTUNITY IDENTIFICATION AND BACKTESTING

# 1. THE ROLE OF HISTORICAL SIMULATION

A well-designed quantitative trading strategy nearly always undergoes a certain amount of analysis against historical data. There are various reasons to do this

- Find out if the strategy is worth pursuing as a business case  
- Make as much money as possible, by optimizing its parameters  
- Develop a sense of risks and rewards expected in potential live trading scenarios

# 2. MAJOR STRATEGY METRICS

When we judge a strategy, either in historical simulation or in actual performance, there are various metrics we can use. They range from extremely simple ones, such as annualized rate of return with no correction for fees, to more complex ones such as cost-adjusted risk/reward ratios. Here we look at some of the common choices.

#### 2.1 Return Opportunity

To compute return opportunity, we simply take a set of actual or hypothetical trades, often of equal size and sometimes without regard to position accumulation costs (bid/ask spreads), figure out the corresponding $PL$ (profits or losses), and then divide each by position notional. This gives a rate of return per trade, which we can then average over all trades to get a return opportunity estimate.  
Certainly, we can do more sophisticated things such as examining the interquartile range of returns, or weighting simulated trades, or altering presumed trade sizes, but that takes us more into the realm of a full backtest. /nextframeOpportunity or Backtest The essential difference between opportunity and backtest is the fidelity and sophistication. If we are ignoring fees and other significant but predictable contributors to PL, then we are looking only at opportunity.  
#### 2.2 Strategy Returns

To compute strategy returns, we construct a somewhat more plausible set of trades, sized perhaps by daily traded notional, sum up the PL, and divide by the sum of notionals to develop strategy returns. At this point, we are likely to begin taking costs into account (hedge fund-style management fees if we are addressing outside investors, internal tech and overhead costs for insiders).  
#### 2.3 Backtested Returns

Here, we make clear and defensible assumptions about trading costs and trade sizes attainable. We simulate using a reasonable set of risk limits and a reasonable risk model. We assume large positions may require many trades to obtain or liquidate. Preferably, we run any simulations against actual market tick data. We make assumptions about capital requirements and capital held, and report returns on capital rather than on notional.  
2.4. Metrics Derived From Return Series. Once we have returns, there are a few important metrics we can derive from them

2.4.1. Sharpe Ratio. The original Sharpe ratio was defined in terms of some "risk-free" rate  $r_f$  as

$$
S _ {\mathrm {O r i g}} = \frac {\mathbb {E} \left[ r - r _ {f} \right]}{\sqrt {\mathbb {E} \left[ r ^ {2} \right]}}
$$

The Sharpe ratio is now universally used in its modified form, sometimes called the information ratio where we base on some benchmark return  $r_b$  (which might be 0 for some cases)

$$
S _ {\mathrm {M o d i f i e d}} = \frac {\mathbb {E} [ r - r _ {b} ]}{\sqrt {\mathbb {E} [ (r - r _ {b}) ^ {2} ]}}
$$

In the rare case the strategy exactly replicates the  $r_b$ , Sharpe ratio is undefined.

2.4.2. Sortino Ratio. The Sortino ratio is much like the Sharpe ratio, but it only penalizes cases where return disappoints us versus the benchmark

$$
S _ {\mathrm {S o r t i n o}} = \frac {\mathbb {E} [ r - r _ {b} ]}{\sqrt {\mathbb {E} \left[ (r - r _ {b}) ^ {2} \mid r <   r _ {b} \right]}}
$$

Note the Sortino ratio may not be well-defined if our benchmark is not competitive, because then we may have no returns that underperform the benchmark, and thus an empty set in the expectation.

If everything is close to gaussian, Sharpe ratio and Sortino ratio scale (approximately) with the square root of time, so that a strategy with daily Sharpe ratio of 0.1 will have an annual Sharpe ratio of about 1.6.

2.4.3. Largest Single-Period Drawdown. Taking some pre-defined period, typically a day, week, or month, we examine the history of the strategy for the worst-performing such period.  
2.4.4. Maximum Drawdown. We look at maximum drawdown as maximum possible losses incurred by someone who joined the strategy at some peak, and liquidated in some later valley.  
2.4.5. Downside Beta. We compute at the beta (essentially, correlation) of strategy returns to market returns in cases when the overall market is losing money. To do so, we look at strategy returns  $r_t$  conditional on market returns  $r_t^{(M)}$ , and fit the model

$$
r \sim r ^ {(M)} + \mathrm {C o n s t}
$$

on the data set

$$
\left\{r _ {t}, r _ {t} ^ {(M)} \Big | r ^ {(M)} <   0 \right\}
$$

2.4.6. Stress Scenarios and Stress Beta. We can choose some scenarios we think would be particularly stressful for the strategy, and examine is average returns or betas to the market in those cases.

2.4.7. Return Moments. In addition to the first moment (mean) of returns, we can learn important information about risk from seconds and third moments, skew and kurtosis.

2.5. Choice of Benchmarks. Good benchmarks for a strategy consist of tradable alternatives that are highly formulaic (often buy-and-hold), work with publicly traded and marked liquid assets, and are expected to be related in some meaningful way. For example, a strategy trading convertible bonds might be judged against a buy-and-hold strategy of simply maintaining a position in some convertible bond ETF (exchange-traded fund). Occasionally a reasonable benchmark may be comprised of a competing internal strategy.

It is a common phenomenon that, over time, we observe beta creep in quantitative investing, where at first no simple benchmark appears to correlate to a strategy returns. As markets learn and mature, products and methods arise to replicate the strategy (at least partially). Whereas they previously had no "beta" to any other security, they begin to exhibit beta to these new securities. It has "crept up" on them.

We have observed this in the equity markets from original risk-free benchmarks, through CAPM and index benchmarks, Fama/French and now ETFs.

2.5.1. Fama, French and Carhart. Long ago, asset managers were judged only by gross returns. Eventually, investors realized only market-beating performance was truly worth rewarding. As managers and investors have grown more sophisticated, the concept of outperformance has become more sophisticated.

The Fama French factor model is rightly famous, because it has a long pedigree of explaining otherwise unusual-seeming outperformance in returns. It contains a market factor, a value minus growth factor, and a small minus big factor. Carhart added a momentum factor, though the validity of a momentum factor remains debatable.

2.6. Return Decompositions. Once we have a (historical or simulated) time series of strategy returns, it is a simple matter to regress them against a few benchmarks simultaneously. By examining the coefficients and residuals of the regression, we are able to form a return decomposition, which attributes a proportion of PL to each benchmark, and the residual PL, denoted alpha or  $\alpha$ , to strategy novelties. Those novelties can then be presumed to consist of some combination of luck, statistical bias, and skill.

Reasonable benchmarks for this purpose include

Fama/French/Carhart  

- Yield Curve Duration, Credit Risk  
- Macroeconomic growth and inflation  
- Market state (volatility, market volume and spreads)

TABLE 1. CalPERS Performance, 21 Years  

<table><tr><td>Year</td><td>Perf</td><td>Year</td><td>Perf</td><td>Year</td><td>Perf</td></tr><tr><td>1997</td><td>20.10</td><td>2004</td><td>16.60</td><td>2011</td><td>21.70</td></tr><tr><td>1998</td><td>19.50</td><td>2005</td><td>12.30</td><td>2012</td><td>0.10</td></tr><tr><td>1999</td><td>12.50</td><td>2006</td><td>11.80</td><td>2013</td><td>13.20</td></tr><tr><td>2000</td><td>10.50</td><td>2007</td><td>19.10</td><td>2014</td><td>18.40</td></tr><tr><td>2001</td><td>-7.20</td><td>2008</td><td>-5.10</td><td>2015</td><td>2.40</td></tr><tr><td>2002</td><td>-6.10</td><td>2009</td><td>-24.00</td><td>2016</td><td>0.60</td></tr><tr><td>2003</td><td>3.70</td><td>2010</td><td>13.30</td><td>2017</td><td>11.20</td></tr></table>

Take for example the retirement savings fund for California public employees in Table 1. This is a large, professionally managed fund with performance information distributed publicly. We find very strong correlation to overall market performance.

2.6.1. Short Positions, Benchmarks And Alpha. One underappreciated property of buy-and-hold benchmarks is that, while they are easy to create for a  $100\%$  long or  $100\%$  short strategy, it is puzzling to form benchmarks for strategies that are long some securities and short others. Even a 130/30 mutual fund is tricky to handle.

If we simultaneously run against a reasonably complete set of benchmarks, the residual return, which has theoretically been controlled for factor exposures of any important kind, is called portable alpha. In principle it will be uncorrelated with any other strategy and so can be advantageously combined with other portfolios. When it really exists, it is highly desirable for those reasons.

By hedging, we can truly construct the portable alpha. At any moment, for each benchmark  $B$ , we take its beta from the regression and enter an "extra" position of size

$$
- \boldsymbol {\beta} \cdot \boldsymbol {B}
$$

The gross pool of alpha available to all actors is zero. Of course, each of them has overhead so the net alpha is in fact negative. Any actor has some finite supply available to them given their skills, and it is constantly reduced by beta creep.

For any given trade, the trader on the other side is likely an informed investor. Overall, seeking alpha is extremely difficult.

2.7. Further Metrics. We have further metrics that are important to examine for a strategy. In particular, we care about trade frequency, turnover, capacity, competition/crowding.

# 3. BACKTEST PREREQUISITES

What do we need to form a good backtest?

3.1. Asset Prices. We cannot get very far without some way of judging PL, for which we need asset prices. In public markets such as US equity and futures markets, this is usually fairly simple. For OTC and closed markets, such as exotic options or rates options, the problem becomes more difficult. If we have not already got the data we must find a vendor. Certain markets, notably distributed exchanges for cryptotokens are inherently public (though technical skill is often needed to extract historical information from them). Others, such as developed-economy equity and futures markets, have some limited historical data available, with most professionals paying for cleaned and normalized data streams. Over-the-counter markets tend to be quite obscure, thereby manifesting a barrier to entry for outsiders and startups.

3.2. Trading cost assumptions. We often assume that trades happen only by crossing bid/offer spreads. This raises questions of the quality of historical data we have on spread sizes and quantities available for liquidity takers. For equities, the information is at least public. For corporate fixed income, the spreads can be  $2 - 5\%$ , for government fixed income about  $1 / 8\%$  and for liquid FX pairs about  $1 / 4\%$ .

Transactions taking place on public exchanges also attract fees. The typical structure is that the liquidity taker (the entity crossing the spread) pays a small fee, while the market maker collects a slightly smaller fee, with the difference going to the exchange.

Trading costs are higher for bigger transactions. A rule of thumb is for total transaction sizes of  $N$  unit in some security  $S$ , trading costs will look like

$$
c _ {0} ^ {(S)} + c _ {\frac {1}{2}} ^ {(S)} \sqrt {N}
$$

where the constants  $c_{0}$  and  $c_{\frac{1}{2}}$  vary by security.

Almgren and Chriss (2000) provide a more sophisticated picture combining a GBM-like random walk with price impact functions including a permanent impact based on trading rate  $v$

$$
g (v) = \gamma v
$$

This sums to a quadratic in size and trading rate, varying from

$$
\frac {1}{2} \gamma N ^ {2} + \epsilon N + (\eta - \frac {1}{2} \gamma \tau) \frac {N ^ {2}}{T}
$$

$$
\epsilon N + \eta \frac {N ^ {2}}{\tau}
$$

to  
depending on the scaling plan.  
3.3. Capital Size and Funding Rates. Bigger capital means more dollars of profit, but probably smaller returns. It is normal to operate with leverage where the capital used is rather less than the notional of positions taken. In this case, one has to fund ones positions by borrowing, typically from the prime broker. This is done with reference to some standard rate like SOFR (or formerly LIBOR).  
Excess capital in a portfolio may receive interest, but never at the same rate pad for borrowing. The overall difference is called the borrow/lend spread.  
3.4. Taxes and fees. Asset trades are frequently subject to taxes, for example SEC Section 31 fees on US equity transactions. These are passed on to investors.  
In addition, asset managers nearly always charge fees to outside investors. Therefore, back-test results of interest to investors are based on returns net of these fees, and all other predictable costs.  
3.5. Available Assets. We call the assets presumed available for trade at a given time the universe. A wider universe means the strategy has a broader choice of investments, and can either cherry-pick the very best return opportunities, or deploy more capital in the pursuit of higher absolute PL. A broad universe affords better diversification allowing more reliable performance.  
3.6. Human/Computer System Performance Assumptions. Lags from decision time to action vary widely by the systems in place as well as what the market makes practical. For futures, equities and FX, largely traded electronically, it is reasonable to assume 1 second to 5 minutes. For government fixed income, 30 seconds to 60 minutes, and for corporate fixed income 1 to 10 days.  
3.7. Position Size and Scaling Rules. Part of any trading strategy is a means of deciding target position size and how to scale into a position. One might choose equal-weighting within a universe, or weight by liquidity, expected profitability, a Markowitz-style analysis, or any combination of these.

Most historical databases are limited to point-in-time capture of prices, either of transactions or quotes. It is important not to rely heavily on the assumption that point-in-time prices would have been transactable in significant size. There is a lot of complexity in inferring, from historical point-in-time data, what transactions really could have been made. The question has to do with market size and structure, desired position size, and so on.

When a desired position is small compared to the liquidity of a security, scaling into it isn't an issue. However in many cases we desire position sizes that can take hours, days or weeks to accumulate. There is of course risk in missing out on good positions or continuing to hold bad positions which must be balanced against costs and availability. The seminal paper in this field is Almgren and Chriss, whose work is often described as implementation shortfall.

A common rough solution begins with VWAP, or volume-weighted average pricing.

The classical perspective on position sizing is the Kelly criterion where we have a given size of capital and want to make the most of it without risking ruin. We have just one "thing" we can do, and know its expected return and variability. Kelly finds under simple assumptions that we should invest a proportion  $s$  of trading capital where

$$
s = \frac {\Pr \left\{\mathrm {w} > 0 \right\}}{\mathbb {E} [ w | w <   0 ]} - \frac {\Pr \left\{\mathrm {w} <   0 \right\}}{\mathbb {E} [ w | w > 0 ]}
$$

is based on profit probability and expected PL sizes.

The criterion is slow to converge to optimality, requires a priori probabilities, assumes event independence, and ignores the vanishing edge of profitability as  $s$  goes to zero. Some of this can be addressed with the fractional Kelly criterion.

Another way to address some of these problems is due to Browne, who noted that by altering the investment schedule one can obtain far better short-term behavior at the cost of a small positive risk of ruin. This corresponds more closely to true human interests and behavior.

Browne's mathematical target is to maximize the probability of achieving a given wealth  $b$  before some time  $T$  deadline, given some expected excess profitability  $x$ . It results in

$$
s = \frac {1}{\sigma \sqrt {T}} \frac {b e ^ {- r T}}{x} \phi \left(\Phi^ {- 1} \left(\frac {x}{b} e ^ {r T}\right)\right)
$$

which readers familiar with options will recognize as the hedging strategy of a binary call.

The result is that, given some threshold  $\epsilon$  Browne will outperform Kelly by that threshold with probability  $(1 + \epsilon)^{-1}$ . A Kelly criterion on a strategy with  $30\%$  volatility requires about 10,000 years to beat a buy-and-hold strategy with  $95\%$  confidence. A Browne criterion that accepts  $5\%$  ruin probability reduces the time to 85 years.

3.8. Hedging Rules. Most quantitative trading strategies aim to hedge out certain risks. A long-short equity strategy may be run a  $0\%$ ,  $25\%$ ,  $100\%$  or any other proportion net long. An options strategy will hedge delta and maybe gamma. Credit strategies often hedge using CDX or bond ETFs.

Note that (fully) hedging against some security at least theoretically removes it from the list of reasonable benchmarks.

Both the Kelly and Browne criteria are mainly useful for allocation of capital to strategies (where they are useful at all). This is because position sizing considerations typically need to take into account multiple potential investments, with various risk-reward criteria among them, and where they are far from independent of each othcr.

3.9. Evaluation Frequencies. Fully algorithmic trading strategies attempt to handle all incoming information in real time. Others must decide on target time periods in which to let analyses lie fallow. These time periods need not be purely clock-based, since a flood of news in the market should naturally be accompanied by re-evaluations.

3.10. Position Age Rules. Sometimes quantitative models just "like" certain positions, and we don't really believe they should be held for extended periods. To this end, many strategies create aging rules in which positions are liquidated as they become too "stale".

3.11. Short Position Assumptions. Terminology for short positions includes shorting a security, which means opening a short position<sup>1</sup>, and covering a short, which means closing the position by buying securities in the market and sending them to the lender.

Shorting securities is quite different from the common perception. Except in futures and options, is not easy to do, it costs extra money, and it involves (invisibly) selling an option.

Unless bypassed by a swap agreement, creating a short position involves finding a locate (usually through the prime broker but sometime in a self-locate), agreeing on repo rate which may be special, abiding by regulations and contracted limits, and running the risk of forced buy-in.

For equities, most shorting is done at general collateral or GC rates, but some cases, the "special" ones, provide less repo or even cost money, in effect having a special rate less than zero.

For most other securities, the repo rate is nearly always special.

One big problem is that historical information on repo rates and short availability is generally hard to obtain, expensive and of poor quality, unless you are at a large institution with good record-keeping.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/d12589b0-e653-4029-bbac-01616075b1c0/74446d013b537b671f273259abe3cd456e1db01e0ac94740f6fd471862b5304f.jpg)

# 4. BACKTESTING CONSIDERATIONS BY ASSET CLASS

# 4.1. Equities.

4.1.1. As-of data. Equity models often take into account SEC filings, which are subject to correction.  
4.1.2. Mergers and spinoffs. Mergers and spinoffs modify the available universe while also (typically) invalidating the economic assumptions behind our models.  
4.1.3. Dividends and splits. Equity analyses are often performed with split and dividend adjusted data. It is important to keep in mind that this in itself is effectively a backtesting assumption of instant costless reinvestment. For a long-horizon strategy that is reasonable but at anything finer than monthly frequency it begins to break down.

We sometimes see special dividends in equities, which saddle a portfolio with unusually large cashflows while also modifying effective position sizes. These can cause problems for casual data aggregators, such as Yahoo, as seen in Figure 1. In this case, XLF spun off \(4.44356 per share, in a combination of cash and XLRE positions. Note the data sources agree on raw and adjusted data after the dividend, but that Yahoo is incorrect before it.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/d12589b0-e653-4029-bbac-01616075b1c0/8363312f2b22c23eb7734d1d1f63728bf20118e6c654c593163db4e0c73b34fe.jpg)  
FIGURE 1. XLF dividend adjustment problems for Yahoo: a special dividend and its effect on reported prices on Sep 16, 2016 (as of May 2019) are reflected.

Naively, one might think it reasonable to use the Yahoo "Raw" series. However, then standard dividends would remain unadjusted for the remainder of the price series. In addition, returns inferred from the Yahoo "Raw" price, though computed from a time series without discontinuity, would be slightly different.

4.1.4. High sensitivity to common benchmarks. If we take overall market return as a benchmark, we find most equities have correlations over  $60\%$ . If we allow further benchmarks to include Fama French or a set of ETFs, it can be surprising how much the rest resembles low-volatility noise.

# 4.2. Credit Instruments.

4.2.1. Finding hedging instruments. There are not many credit ETFs, and credit indexes tend to be untradable, so the only reasonable hedging instruments in corporate credit are CDX (in very mature markets) or highly liquid corporate bonds in related companies, which take care of market risk without addressing default risk.  
4.2.2. Scaling and inventory. The credit markets are OTC and are traded in large lot sizes, making minimum position sizes quite large. At the same time, scaling strategies need to take into account the fact that these markets are quite slow relative to electronic markets.

4.2.3. Historical data. Databases of historical prices are relatively easy to obtain, though many are only approximate. Historical quote databases are more expensive but considerably better, but it is important to keep in mind that quotes in over-the-conuter markets (such as CDS and bonds) are almost never "hard".

Historical trade data for non-144A US bonds have TRACE data, though it does not give accurate sizes.

Though credit instruments ultimately trade on probability of default,  $h$ , there is no historical data for  $h$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/d12589b0-e653-4029-bbac-01616075b1c0/bb81fd5487a9101374cc393f09f928918b592f1ae3c609b81895d85830cc4d27.jpg)

4.2.4. Tradable instruments. There are extremely many Tradable bonds in the universe because most issuers have several bonds outstanding at any given time. This is in contrast to equity, where it is extremely rare for a corporation to have more than one type of publicly traded equity.  
4.2.5. Optionality adjustments. Corporate bonds often come with optionality clauses, most commonly embedded calls, but also puts, green shoes, conditionals and more.  
4.2.6. Long time horizons. Many players in credit markets have very long time horizons, making liquidity very different from outstanding notional, and lengthening the time horizons quantitative traders must be willing to consider.  
4.2.7. Market sentiment regimes. Credit markets undergo long periods of overand underestimates of default risk. Clever strategies therefore should generally hedge against overall sentiment.

4.3. Foreign Exchange. Foreign exchange, or  $FX$  trading involves currency transactions. A certain number of euros are swapped for yen, or a contract is made to engage in such a transaction sometime in the future. The markets here split into widely traded futures and options, plus a cash market that operates on crossing networks mainly controlled by large banks. This latter point has important consequences for capital usage, because offsetting trades in different markets may get poor treatment.

4.3.1. Interventions. FX rates follow general market principles most of the time, interspersed with sizable government interventions of varying predictability. The majority of the time, quantitative models are useful, but the interventions are poor fodder for modeling.

4.3.2. Pegs. A common form of ongoing intervention is a peg (or sometimes a pair of lower and upper bounds), maintained by frequent interventions. Strategies relying on pegs may go suddenly bad, and strategies expecting pegs to fail can take a very long time to come to fruition.

#### 4.3.3 Sizing

4.3.4. Similarity to common strategies. FX rates are clearly linked to many assets, such as foreign equities and bonds. Crises therefore tend to come with high covariance to other asset classes. In addition, these links mean that one should consider which elements of foreign economies may be driving FX rates.

Unlike equities, a net long portfolio of foreign currencies has no theoretical positive excess return expectation. In each respective country, the currency is, of course, just cash, so the risk premium is zero.

## 4.4 Options

4.4.1. Probability of ruin at high leverage. Options are often very highly levered investments, so their use comes with enhanced probability of ruin. Hedging can control this to an extent, but markets can begin crashing just when liquidity disappears. The problem is exacerbated for market makers, who tend to be structurally short options.

4.4.2. Volatility hedging. Options strategies almost always involve delta-hedging. It is extremely common to demand control of gamma/vega (volatility exposure) as well.

## A SIMPLE QUANTITATIVE TRADING EXAMPLE: SPREADS

### 1. WORKING OUT A SPREAD TRADE

Let's work out what the bones of a quantitative trading strategy might entail by examining one of the simplest examples: the spread trade.

Spread trading strategies have a long history and many current forms. Because they involve trading more than one asset, they are just about the simplest example of a case where we can stochastically control risk versus reward.

1.1. What Is A Spread? Let's say we monitor prices or returns on a pair of securities. For sake of argument, we will say we are monitoring the prices  $f_{t}^{(2)}, f_{t}^{(5)}$  of 2 and 5 year CME treasury note futures<sup>1</sup>. We can construct a new variable consisting of the difference between them

$$
s _ {t} := f _ {t} ^ {(5)} - f _ {t} ^ {(2)}
$$

This value  $s_t$  is called the spread or difference spread between the 2 and 5 year note futures, and we often think in terms of trading spreads, even when in practice the trades are expressed in underlying securities such as futures contracts.

1.1.1. Return Spreads. For assets with clear fundamental relations, we tend to use difference spreads as above. Frequently, we prefer to assume that old differences are are "priced in" and therefore unlikely to change, in which case we may prefer return spreads in which we consider how much returns for the two assets have differed in recent history.

1.2. Reversion To The Mean. We might find that, during the 20 years from 1995 to 2015, the average of  $s_t$  was  $\bar{s} = 8.5$ . It is easy to conceive of a strategy that would plausibly make money by always making bets that, whatever the value of  $s_t$ , it is expected to revert back to around 8.5. How would such a spread trading strategy look?

It probably does not make sense to make bets when the current  $s_t$  is very close to 8.5. So, for example, if  $s_t = 8.499$  or  $s_t = 8.501$  we should not hold a position. On the other hand, if  $s_t = 4.0$  this looks like a good opportunity to bet that  $s$  will soon rise. We do not necessarily know if  $f_t^{(2)}$  will fall or  $f_t^{(5)}$  will rise, but we think some combination of those things will happen. So it makes sense to both short some 2 year note futures and buy some 5 year note futures. We call this "buying" the spread because we are trading securities in such a way that we think the spread will rise.

For similar reasons, if we see  $s_t = 12.0$  then we ought to buy some 2 year note futures and short some 5 year note futures. We call this "shorting" the spread.

Now, if  $s_t = 14.0$ , it is easy to argue that the opportunity is greater and we should be shorting even more of the spread. But remember, it probably only got to 14.0 by going through 12.0 at some point. We are likely already short the spread and, since it has risen further, have lost money on the position. Are we prepared to lose more?

In spread trading, it is common to have some point at which you admit that your hypothesis (of spread reverting to its mean) has been so contradicted by market data that you are no longer willing to believe it, at least not with your dollars. Such a point is often defined in terms of PL - dollars lost to the position, and is called a stop loss level. Once you have reached it, you resolve to close out all positions, and perhaps wait a while before attempting a similar spread trade again.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/d12589b0-e653-4029-bbac-01616075b1c0/8f5c2a4dd4d6abdc54c22ad07974c3877c5a7a2c1352fc2062c6484e11cab78e.jpg)  
Profit: 0.045  
FIGURE 1. Trading A Hypothetical Spread

The human complexity of spread trading is very low. It can be done in 50-150 lines of R or Python, and is feasible even in Excel. However, when we consider how might approach it in practice, we find there are many parameters to determine and they are likely to make us run simulations over and over. These parameters include

- Which security pairs to run on  
- Entry and exit boundaries  
- Hedge proportions, if not 1:1  
- Hedge determination algorithms  
- Lookback periods for hedge (and possibly returns) computations  
- Stop loss/ position sizing boundaries

Testing 16 possibilities for each of the above would, in an exhaustive grid search, lead to running over 15 million backtests. If each one takes 5 seconds, we will need about 3 years to run them all.

1.3. Generalizations To More Stochastic Control. Though the (nominally) zero-centered series we have based our scheme on was a direct spread, we can easily imagine first running a regression of future returns against current observed spread. This crude estimate of alpha can then serve as the basis on which we choose to send orders to the market in a very simple trading scheme.

If our scheme is controlling market orders, we may well assume that (given a cost model) we are able to take on a small position with relative certainty. If instead the scheme is controlling resting orders (i.e. liquidity-adding or passive orders) then we must further account for tracking outstanding orders and when to cancel them. This does not apply only to electronic markets. Over-the-counter markets have human equivalents (often called standing orders) to the passive electronic orders.