---
title: Teaching Note 3
parent_directory: Lecture Notes
formatted: 2025-12-20 6:35:00 PM
formatter_model: claude-sonnet-4
cli_tool: opencode
primary_tags:
  - options pricing
  - call put parity
  - option strategies
  - option payoffs
secondary_tags:
  - european options
  - american options
  - no arbitrage bounds
  - protective put
  - covered call
  - bull spread
  - bear spread
  - butterfly spread
  - straddle strategy
  - strangle strategy
cssclasses: academia
---

# Teaching Note 3

## Introduction to Options

John Heaton

The University of Chicago

Booth School of Business

## 1. Options

#### 1.1 Options Payoffs
#### 1.2 Put Call Parity
#### 1.3 Hedging with Options
#### 1.4 No Arbitrage Bounds
#### 1.5 Options' Combinations
#### 1.6 Slope and Convexity Restrictions

## Options

- A European option gives its holder the right, but not the obligation, to buy (call) or sell (put) a prespecified security or commodity for a prespecified price at a prespecified date.  
- Since the holder of the option has a right, but not the obligation to exercise, the option has always a non-negative value to the option holder.  
- Differently from forwards, futures and swaps, there is an exchange of money when two parties enter in an option contract.

## Call Option Payoff

- For instance, stock options have:
- Underlying $= S$ = stock price; Prespecified price $= K$ = strike price; Prespecified date $= T$ = maturity date.
- How is the payoff of a call option determined?
- If at $T$, $S_T < K$ the option buyer has the choice between
* Buy the stock in the market at $S_{T}$
* Buy the stock from the option seller for $K > S_{T}$
$\Longrightarrow$ Walk away from the contract is optimal

- If at $T$, $S_T > K$ the option buyer has the choice between

* Buy the stock in the market at $S_{T}$
* Buy the stock from the option seller for $K < S_{T}$

$\Longrightarrow$ exercise the option is optimal and profit $= S_{T} - K$

* The option seller must deliver the stock in exchange of a price  $K$ .

- Thus, the payoff to the option buyer is

$$
\mathrm{Payoff\ of\ a\ Call} = \max(S_{T} - K, 0)
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/1223dee8f9e76b5aa8d14cfb951c9db1af22acd06103eaf9b43e41d26dade0d4.jpg)  
Call Option Payoff Diagram

- For a stock price below  $K = 100$ , the call option expires worthless
- Out of the Money = OTM  
- After  $K = 100$ , the call option payoff increases with stock price at 45 degree.
- In the Money = ITM

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/02452709279911854acf29d5bef6f10afb8afe4e5f078d9b95df4485b693d111.jpg)  
Call Option Payoff Diagram to Call Option Writer

- Zero sum game: Losses of one party = gains of the other party.

## Put Option Payoff

- How is the payoff of a put option determined?
- If at $T$, $S_T < K$ the put option buyer has the choice between

* Sell the stock in the market at $S_{T}$;
* Sell the stock to the option writer for $K > S_{T}$

$$
\Longrightarrow \text{Exercise the put option to sell is optimal, and profit} = K - S_{T}
$$

* The option seller must purchase the stock in exchange of a price  $K$ .

- If at  $T$ ,  $S_T > K$  the option buyer has the choice between

* Sell the stock in the market at  $S_{T}$ ;  
* Sell the stock to the option writer for  $K < S_{T}$

$$
\Longrightarrow \mathrm {w a l k a w a y f r o m t h e o p t i o n c o n t r a c t i s o p t i m a l}
$$

- Thus, the payoff of a put is as follows:

$$
\mathrm{Payoff\ of\ a\ Put} = \max(K - S_{T}, 0)
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/d54aa091c9218e01505493280102f5719cf69599ca5df3c1f4a97f15f5970c06.jpg)  
Put Option Payoff Diagram

- For a stock price above  $K = 100$ , the put option expires worthless (OTM)

## Payoff versus Profit

- An option buyer has to pay a premium to seller. Thus, his/her profit is equal to payoff in previous pictures, minus the premium.  
- Similarly, an option seller receives the premium from the buyer. Thus, his/her profit is equal to payoff in previous pictures, plus the premium.

# Payoff versus Profit

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/d1acffa3cae4a0189c4866d86aec2bed0751753d8d3487b6f82ac717e3d07131.jpg)  
Payoff versus Profit for Call Option Buyer  
Payoff versus Profit for Put Option Buyer

## Types of Options

Stock Options

- CBOE, AMEX, PHLX, PSE, ISE;  
- Over 1000 different stocks;  
- 1 contract  $= {100}$  shares (normally);  
- American Options;  
- Expirations based on Jan, Feb, or March cycles (on Saturday after 3rd Friday)  
- Options are traded for the two closest months, and two more months on the cycle.  
- Options are not adjusted for dividends, but they are adjusted for stock splits.
- Index Options
- E.g. DJ Industrial, S&P100, S&P500, Nasdaq 100, Russell 2000 (on CBOE)
- Foreign Currency Options (mainly on PHLX)  
- Options on Futures
- Based on agricultural, oil, livestock, metals, currency, and stock index futures.  
- E.g. Options on the 30 year Treasury Bond Futures (traded on CBOT)

# Example: S&P500 Options

SPX (S&P 500 INDEX)

Apr16,2007 @ 19:53 ET

1468.47 +15.62

<table><tr><td>Calls</td><td>Last Sale</td><td>Net</td><td>Bid</td><td>Ask</td><td>Vol</td><td>Open Int</td><td>Puts</td><td>Last Sale</td><td>Net</td><td>Bid</td><td>Ask</td><td>Vol</td><td>Open Int</td></tr><tr><td colspan="14"></td></tr><tr><td>07 Apr1460.00 (SXZ DL-E)</td><td>11.50</td><td>+7.70</td><td>11.00</td><td>12.00</td><td>15219</td><td>43236</td><td>07 Apr1460.00 (SXZ PL-E)</td><td>3.00</td><td>-6.60</td><td>2.80</td><td>3.00</td><td>11341</td><td>2272</td></tr><tr><td>07 Apr1465.00 (SXZ DM-E)</td><td>7.80</td><td>+5.70</td><td>7.50</td><td>7.80</td><td>14614</td><td>35628</td><td>07 Apr1465.00 (SXZ PM-E)</td><td>4.30</td><td>-8.60</td><td>4.20</td><td>4.60</td><td>6362</td><td>1244</td></tr><tr><td>07 Apr1470.00 (SXZ DN-E)</td><td>4.90</td><td>+3.70</td><td>4.70</td><td>5.00</td><td>21319</td><td>62519</td><td>07 Apr1470.00 (SXZ PN-E)</td><td>6.10</td><td>-12.90</td><td>6.20</td><td>6.60</td><td>1871</td><td>396</td></tr><tr><td>07 Apr1475.00 (SXZ DO-E)</td><td>2.90</td><td>+2.25</td><td>2.55</td><td>2.80</td><td>60145</td><td>97862</td><td>07 Apr1475.00 (SXZ PO-E)</td><td>9.50</td><td>-12.60</td><td>9.10</td><td>9.50</td><td>4362</td><td>5141</td></tr><tr><td>07 May 1460.00 (SXZ EL-E)</td><td>25.00</td><td>+7.30</td><td>24.10</td><td>25.90</td><td>341</td><td>5947</td><td>07 May 1460.00 (SXZ QL-E)</td><td>13.60</td><td>-6.40</td><td>13.30</td><td>14.50</td><td>11554</td><td>1385</td></tr><tr><td>07 May 1465.00 (SXZ EM-E)</td><td>21.50</td><td>+6.90</td><td>20.70</td><td>22.50</td><td>762</td><td>2930</td><td>07 May 1465.00 (SXZ QM-E)</td><td>15.20</td><td>-7.30</td><td>15.00</td><td>16.10</td><td>2509</td><td>107</td></tr><tr><td>07 May 1470.00 (SXZ EN-E)</td><td>18.70</td><td>+7.20</td><td>17.80</td><td>19.30</td><td>628</td><td>19443</td><td>07 May 1470.00 (SXZ QN-E)</td><td>17.50</td><td>-15.30</td><td>16.50</td><td>17.00</td><td>806</td><td>267</td></tr><tr><td>07 May 1475.00 (SXZ EO-E)</td><td>15.50</td><td>+6.10</td><td>14.80</td><td>15.90</td><td>8118</td><td>31731</td><td>07 May 1475.00 (SXZ QO-E)</td><td>18.80</td><td>-8.70</td><td>18.50</td><td>19.10</td><td>5115</td><td>4847</td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/52550534773a9830d756c54060c586d78016bcd20f90bb3b1e461dfc42b04b16.jpg)

RealTime Streaming Option Chains -30-day FREE trial

# Example: Microsoft Corp.

MSFT (MROSOFTCORP)

Apr17,2007 @ 00:22 ET

28.73 +0.12

Bid 28.72 Ask 28.73 Size 14x645 Vol30742957

<table><tr><td>Calls</td><td>Last Sale</td><td>Net</td><td>Bid</td><td>Ask</td><td>Vol</td><td>Open Int</td><td>Puts</td><td>Last Sale</td><td>Net</td><td>Bid</td><td>Ask</td><td>Vol</td><td>Open Int</td></tr><tr><td colspan="14"></td></tr><tr><td>07 Apr25.00 (MSQ DJ-E)</td><td>3.62</td><td>+0.12</td><td>3.70</td><td>3.80</td><td>6</td><td>40071</td><td>07 Apr25.00 (MSQ PJ-E)</td><td>0.01</td><td>0.0</td><td>0.0</td><td>0.01</td><td>0</td><td>24117</td></tr><tr><td>07 Apr27.50 (MSQ DY-E)</td><td>1.24</td><td>+0.11</td><td>1.24</td><td>1.28</td><td>707</td><td>101260</td><td>07 Apr27.50 (MSQ PY-E)</td><td>0.04</td><td>+0.01</td><td>0.02</td><td>0.04</td><td>627</td><td>73725</td></tr><tr><td>07 Apr30.00 (MSQ DK-E)</td><td>0.02</td><td>-0.01</td><td>0.02</td><td>0.03</td><td>20</td><td>176999</td><td>07 Apr30.00 (MSQ PK-E)</td><td>1.32</td><td>-0.18</td><td>1.28</td><td>1.31</td><td>437</td><td>52705</td></tr><tr><td>07 Apr32.50 (MSQ DZ-E)</td><td>0.01</td><td>0.0</td><td>0.0</td><td>0.01</td><td>0</td><td>65125</td><td>07 Apr32.50 (MSQ PZ-E)</td><td>3.80</td><td>-0.30</td><td>3.75</td><td>3.85</td><td>3</td><td>326</td></tr><tr><td>07 May 25.00 (MSQ EJ-E)</td><td>3.80</td><td>+0.20</td><td>3.80</td><td>3.90</td><td>1</td><td>2126</td><td>07 May 25.00 (MSQ QJ-E)</td><td>0.05</td><td>-0.02</td><td>0.03</td><td>0.06</td><td>25</td><td>4779</td></tr><tr><td>07 May 27.50 (MQVEY-E)</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0</td><td>0</td><td>07 May 27.50 (MQV QY-E)</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0</td><td>0</td></tr><tr><td>07 May 27.50 (MSQ EY-E)</td><td>1.55</td><td>+0.04</td><td>1.56</td><td>1.59</td><td>1650</td><td>58823</td><td>07 May 27.50 (MSQ QY-E)</td><td>0.29</td><td>-0.02</td><td>0.27</td><td>0.29</td><td>108</td><td>23535</td></tr><tr><td>07 May 30.00 (MQVEK-E)</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0</td><td>0</td><td>07 May 30.00 (MQV QK-E)</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0</td><td>0</td></tr><tr><td>07 May 30.00 (MSQ EK-E)</td><td>0.25</td><td>0.0</td><td>0.25</td><td>0.26</td><td>428</td><td>20336</td><td>07 May 30.00 (MSQ QK-E)</td><td>1.49</td><td>-0.10</td><td>1.48</td><td>1.52</td><td>479</td><td>4122</td></tr><tr><td>07 May 32.50 (MSQ EZ-E)</td><td>0.02</td><td>0.0</td><td>0.01</td><td>0.03</td><td>0</td><td>1844</td><td>07 May 32.50 (MSQ QZ-E)</td><td>0.0</td><td>0.0</td><td>3.75</td><td>3.85</td><td>0</td><td>20</td></tr></table>

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/82a3b67b1ac551ff8e83cd07add972c8e8800e05ac9c3a9a6907032ddafe9c03.jpg)  
Put - Call Parity

- The combination "Long Put - Short Call" equals a short forward contract with delivery rate $K$.
- We found the value of a short forward earlier, obtaining the Put Call Parity relation

$$
\Longrightarrow \operatorname{Put} - \operatorname{Call} = e^{-r \times T} \times (K - F_{0,T})
$$

# Put - Call Parity

- $\Rightarrow$  Given the price of a call, we can always get the price of the put (and vice-versa)  
- For instance, for a non-dividend paying stock, we have

$$
\begin{array}{l} \mathrm{Put} = \mathrm{Call} + e^{-r \times T} \times (K - F_{0,T}) \\ = \mathrm{Call} + e^{-r \times T} \times K - e^{-r \times T} \times F_{0,T} \\ = \mathrm{Call} + e^{-r \times T} \times K - e^{-r \times T} \times S_{0} \times e^{r \times T} \\ = \mathrm{Call} + e^{-r \times T} \times K - S_{0} \\ \end{array}
$$

- For instance, if $K = \$100$, $S_{0} = \$100$, $T = 1$, $r = 5\%$ and $Call = \$10.4506$, then

$$
\mathrm{Put} = \$10.4506 + e^{-5\% \times 1} \times \$100 - \$100 = \$10.4506 + \$95.1229 - \$100 = \$5.5735
$$

## Hedging with Options

- Options are really insurance contracts.
- Example: A firm is long a stock $S$ and it is worried about $S$ declining.
- Consider 2 strategies

1. It can hedge the risk by using a forward (or futures) contract on $S$ with delivery price $K$.

$$
\Rightarrow \mathrm{Payoff\ at\ T} = S_{T} + (K - S_{T}) = K
$$

2. It can insure against the risk by buying a put option

$$
\Rightarrow \mathrm{Payoff\ at\ T} = S_{T} + \max(K - S_{T}, 0) = \left\{ \begin{array}{ll} S_{T} & \mathrm{if\ } S_{T} > K \\ K & \mathrm{if\ } S_{T} < K \end{array} \right.
$$

- As any insurance contract, it costs money upfront to purchase options (the option's premium) - In contrast, it costs nothing to enter into forward contracts.

## Option Premium

- How can we compute the option premium?  
- Usual insurance principle does not apply: The risks of underlying are not independent.  
- In the future, we will study two main (related) methodologies to determine the option premium, the "binomial tree" approach, and the Black, Scholes, and Merton model.  
- In what follows, we instead look at some basic no arbitrage "bounds" that have to hold.

### Option Premium: No Arbitrage Bounds

- A call option, European or American, is never worth more than the stock:

$$
\mathrm{Call} \leq S_{t}
$$

- A put option, European or American, is never worth more than the strike:

$$
\mathrm{Put} \leq K
$$

- Options never have negative values.
- A European put is never worth more than the present value of the strike price

$$
\mathrm{European\ Put} \leq K e^{-r(T-t)}
$$

- Think what happens if a company goes bankrupt  $\Longrightarrow S_{t} = 0$ .

## Option Premium: No Arbitrage Bounds

- The value of a call (put) option is always higher than the value of long (short) forward with delivery price equal to strike price.
- Recall from Teaching Notes 2 (consider a non-dividend paying stock for simplicity):

$$
\mathrm{Long\ Forward} = e^{-rT} [F_{t,T} - K] = S_{t} - K e^{-r(T-t)}
$$

$$
\mathrm{Short\ Forward} = e^{-rT} [K - F_{t,T}] = K e^{-r(T-t)} - S_{t}
$$

- So, we have

$$
\mathrm{Call} \geq \max(0, S_{t} - K e^{-r(T-t)})
$$

$$
\mathrm{Put} \geq \max(0, K e^{-r(T-t)} - S_{t})
$$

- Intuition:
- An option always pays no less than the forward contract (as the option payoff equals the positive part of the forward).

## Option Premium: No Arbitrage Bounds

- Putting together the previous bounds, we find that for a non-dividend paying stock the call option premium has to be in the shaded area

$$
S_{t} \geq \mathrm{Call} \geq \max(0, S_{t} - K e^{-r(T-t)})
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/6f5cd5d5aa00befa9774c819e330eee23ab97d5cd1176f6e02524d9a5d59488d.jpg)

## Option Premium: No Arbitrage Bounds

- Putting together the previous bounds, we find that for a non-dividend paying stock the put option premium has to be in the shaded area

$$
e^{-r(T-t)} K \geq \mathrm{Put} \geq \max(0, K e^{-r(T-t)} - S_{t})
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/ddf9777e947f000b2c5c377c546352a0c216cfd52ce408fbab15a7d9781e94a7.jpg)

## Options' Combinations

- Combining options with various strike prices allows a trader to speculate on particular views, or a hedger to make up a customized hedged portfolios.
- **Protective Put:** A long position in stock is risky. Purchasing a put provides a hedge against the fall in stock. $\Rightarrow$ Payoff at $T = S_{T} + \max(K - S_{T}, 0)$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/bf65a4035d62649da5188cee77ebba15ab1caff2dae87b8d1a3664d152a210f7.jpg)

## Options' Combinations

- Covered Call: A short call gives potentially infinite liability. Holding the stock provides a hedge for the option seller. $\Rightarrow$ Payoff at $T = S_{T} - \max(S_{T} - K, 0)$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/9039d6db54c7c7487406aa8f8ec3430049822fb647a34169d2edfbeba6e2fd97.jpg)

## Options' Spreads

- Bear Spread: Bet on a decrease in the stock price. Short OTM put (strike $K_{1}$) and long ITM put (strike $K_{2} > K_{1}$).

- Bull Spread: Bet on an increase in the stock price. Long ITM call (strike $K_{1}$) and short OTM call (strike $K_{2} > K_{1}$).

- Bull Spread using Puts: Long OTM put (strike $K_{1}$) and short ITM put (strike $K_{2} > K_{1}$) [this part is a short bear spread] plus cash $K_{2} - K_{1}$.

- **Butterfly Spread:** Long 1 call with strike $K_{0}$, short 2 calls with strike $K_{1}$, and long 1 call with strike $K_{2}$, with $K_{0} < K_{1} < 2$ and $K_{1} = (K_{0} + K_{2}) / 2$.

- **Butterfly Spread - 2:** Long 1 put with strike $K_{0}$, short 2 puts with strike $K_{1}$, and long 1 put with strike $K_{2}$, with $K_{0} < K_{1} < 2$ and $K_{1} = (K_{0} + K_{2}) / 2$.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/9f5e0dd0b1b58547d835a4f37ad31b34dc8f4f02e3153d74601252ec4f25af74.jpg)

## Slope Restrictions

- What is the sensitivity of a put option to changes in the strike price?
- Consider the bull spread with puts. Its payoff is always positive for every stock price at maturity, and therefore its value today must be positive.

$$
\mathrm{Put}(K_{1}) - \mathrm{Put}(K_{2}) + (K_{2} - K_{1}) e^{-r(T-t)} \geq 0 \Longrightarrow (K_{2} - K_{1}) e^{-r(T-t)} \geq \mathrm{Put}(K_{2}) - \mathrm{Put}(K_{1})
$$

- We also know that  $\operatorname{Put}(K_2) > \operatorname{Put}(K_1)$ , as  $K_2 > K_1$ .  
- Therefore, we have:

$$
0 \leq \frac{\mathrm{Put}(K_{2}) - \mathrm{Put}(K_{1})}{K_{2} - K_{1}} \leq e^{-r(T-t)}
$$

- Taking the limit at $K_{2} \to K_{1}$, we realize the middle term is the first derivative of a put option with respect to the strike price, obtaining

$$
0 \leq \frac{d \mathrm{Put}(K)}{d K} \leq e^{-r(T-t)}
$$

- $\Longrightarrow$  One dollar increase in the strike price, increases the put price by less than the present value of one dollar.
- A similar derivation can be made for calls.

## Convexity Restrictions

- The put price increases as the strike price increases. How does the rate of increase depend on the strike price?  
- Consider the butterfly spread. The payoff is positive, so its value is always positive.

$$
\mathrm{Put}(K_{0}) - 2 \mathrm{Put}(K_{1}) + \mathrm{Put}(K_{2}) \geq 0
$$

$$
\Longrightarrow (\mathrm{Put}(K_{2}) - \mathrm{Put}(K_{1})) - (\mathrm{Put}(K_{1}) - \mathrm{Put}(K_{0})) \geq 0
$$

- We assumed $K_{1} = (K_{2} + K_{0}) / 2 \Longrightarrow K_{2} - K_{1} = K_{1} - K_{0}$, therefore we obtain

$$
\frac{\mathrm{Put}(K_{2}) - \mathrm{Put}(K_{1})}{K_{2} - K_{1}} - \frac{\mathrm{Put}(K_{1}) - \mathrm{Put}(K_{0})}{K_{1} - K_{0}} \geq 0
$$

Slope between  $K_{1}$  and  $K_{2}$  Slope between  $K_{0}$  and  $K_{1}$

- The Change in Slope is positive.  
$\bullet \Longrightarrow$  The put price is convex in the strike price.  
- A similar derivation can be made for calls.

## Convexity Restrictions

- Graphically, the following figure plots the S&P500 put prices versus strike prices on May 11, 2007, when the S&P500=1505.42.
- The convexity is evident.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/7cab330113174d8a2ffadd275a711f036b4d6df8eeafaf3eaf739afe4eac5c46.jpg)

## Other Popular Strategies

- Straddle. Bet on high volatility. Long a call and a put with the same strike price.
- To understand this strategy, it is better to use a profit diagram, rather than a payoff diagram.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/81bff0764b8c54a698db7a7089571fae2db13a03c257143b3b1e93495ce0c9c7.jpg)

## Other Popular Strategies

- Strangle. Bet on large movements. Long a put with strike $K_{0}$ and a call with strike $K_{1} > K_{0}$. - The profit diagram is as follows.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/fb662f9e67d944217c7f5321d996cbd1942f00e14ecd16aa7c42f294fd840d22.jpg)

## Other Popular Strategies

- European Box Spread. Long ITM put and call (strike $K_{1}$ and $K_{2} > K_{1}$) and short OTM call and put (strike $K_{1}$ and $K_{2} > K_{1}$).

- $\Longrightarrow$ Payoff is the same as a zero coupon bond with principal $K_{2} - K_{1}$.
- $\Longrightarrow$ The short Box Spread allows a trader to borrow using the option's market.

## Options and Payoff Flexibility

- The number of option's strategies is virtually endless.
- Indeed, a trader can draw pretty much any desired payoff structure on a board, and find a portfolio of options that generates that payoff structure.
- For instance, what is the portfolio that generates the following payoff?

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/8dd6c595ba0ebf71639f395f1ebafa7991a5e1536d8ce21b5b26af8a859e9c35.jpg)

## Financial Instruments

