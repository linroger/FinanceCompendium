---
title: Teaching Note 4 - Binomial Trees and Risk Neutral Pricing
parent_directory: Lecture Notes
formatted: 2025-12-20 6:35:00 PM
formatter_model: claude-sonnet-4-5-20250929
cli_tool: opencode
primary_tags:
  - binomial tree model
  - risk neutral pricing
  - option pricing theory
  - replicating portfolio
secondary_tags:
  - delta hedging
  - arbitrage pricing
  - binomial option pricing
  - risk neutral valuation
  - derivative securities
  - expected return volatility
cssclasses: academia
---

# Teaching Note 4 - Binomial Trees and Risk Neutral Pricing

## Binomial Trees and Risk Neutral Pricing

John Heaton

The University of Chicago

Booth School of Business

## 1. Binomial Trees

### 1.1 One Step Binomial Trees
### 1.2 Replicating Portfolio

## 2. Risk Neutral Pricing
## 3. Two-Step Binomial Trees
## 4. Multi Step Trees

### 4.1 Binomial Trees and the Log-normal Distribution of Stock Returns

## Binomial Trees

- Binomial trees are a convenient tool to introduce a fundamental technique to price derivative securities, called Risk Neutral Pricing  
- In addition, besides being simple to understand, they also offer a pricing methodology for complicated problems.
- Indeed, the use of binomial and trinomial trees is a standard numerical procedure to solve for American options, or options with time varying volatility.

## One Step Binomial Trees

- Today is  $t = 0$  and you are evaluating a given stock.  
- At  $t = 1$  analysts believe the stock can either be  $S_{1,u} = 70$  with probability  $q = 0.7$ , or  $S_{1,d} = 35$  with probability  $1 - q = .3$ .  
- Given a (simple) expected return of  $R = 19\%$ , the market value today of the stock is

$$
S_{0} = \frac{E[S_{1}]}{1 + R} = \frac{q \times S_{1,u} + (1 - q) \times S_{1,d}}{1 + R} = \frac{0.7 \times 70 + 0.3 \times 35}{1.19} = 50
$$

- The stock tree is given by:

$$
i = 0
$$

$$
i = 1
$$

$$
\boxed{S_{0} = 50}
$$

$$
\boxed{S_{1,u} = 70}
$$

$$
\boxed{S_{1,d} = 35}
$$

- What are the expected return and variance of the stock return?

## Expected Return and Volatility on Binomial Trees

- Expected (Gross) Return:

$$
\begin{array}{l} E\left(\frac{S_{1}}{S_{0}}\right) = q \times \left(\frac{S_{1,u}}{S_{0}}\right) + (1 - q) \times \left(\frac{S_{1,d}}{S_{0}}\right) \\ = 0.7 \times \left(\frac{70}{50}\right) + 0.3 \times \left(\frac{35}{50}\right) \\ = 1.19 \\ \end{array}
$$

- Variance. From the definition of variance:

$$
\begin{array}{l} E\left\{\left[ \frac{S_{1}}{S_{0}} - E\left(\frac{S_{1}}{S_{0}}\right) \right]^{2} \right\} = q \times \left(\frac{S_{1,u}}{S_{0}} - 1.19\right)^{2} + (1 - q) \times \left(\frac{S_{1,d}}{S_{0}} - 1.19\right)^{2} \\ = 0.7 \times \left(\frac{70}{50} - 1.19\right)^{2} + 0.3 \times \left(\frac{35}{50} - 1.19\right)^{2} \\ = 0.1029 \\ \end{array}
$$

- The standard deviation (volatility) is then $\sigma = \sqrt{0.1029} = 0.3207$

## Option Prices on a Binomial Tree

- We want to price a call option with maturity  $T = 1$  and strike price  $K = 50$ .
- The idea of binomial trees is to proceed backward from the end of the tree.

* According to the tree, what is the value of a call option at  $T = 1$ ?

$$
c_{1,u} = \max(S_{1,u} - K, 0) = \max(70 - 50, 0) = 20
$$

$$
c_{1,d} = \max(S_{1,d} - K, 0) = \max(35 - 50, 0) = 0
$$

* On the tree:

$$
i = 0
$$

$$
i = 1
$$

$$
S_{0} = 50
$$

$$
c_{0} = \text{?}
$$

$$
S_{1,u} = 70
$$

$$
c_{1,u} = \max(70 - 50, 0) = 20
$$

$$
S_{1,d} = 35
$$

$$
c_{1,d} = \max(35 - 50, 0) = 0
$$

- What is the value of the call option  $c_0$ ?

## Replicating Portfolio

- Let the (continuously compounded) interest rate be  $r = .11$ .  
- Consider a portfolio of stocks and bonds, with
- Position $\Delta = 0.5714$ in stocks, for a dollar value $\Delta \times S_0 = 28.5714$
- Position of $B_{0} = -17.9167$ in bonds (negative = short bonds).
- The value of the portfolio today is $P_{0} = 28.5714 - 17.9167 = 10.6547$
- What is the value of the portfolio at time  $i = 1$ ?

$$
P_{1,u} = \Delta \times S_{1,u} + B_{0} \times e^{r} = 0.5714 \times 70 + (-17.9167) \times e^{0.11} = 20
$$

$$
P_{1,d} = \Delta \times S_{1,d} + B_{0} \times e^{r} = 0.5714 \times 35 + (-17.9167) \times e^{0.11} = 0
$$

- But this is the payoff of the call option!

$$
\text{No Arbitrage} \Rightarrow c_{0} = P_{0} = \Delta \times S_{0} + B_{0} = 10.6547
$$

- If not, "buy cheap and sell dear"

* E.g. if  $c_0 > P_0$ , sell the call option, and buy the replicating portfolio.

# Where Does the Replicating Portfolio Come From?

- Consider an arbitrageur who buys a call option and hedge it using  $\Delta$  stocks.  
- The value portfolio of the arbitrageur is

$$
\Pi_{0} = c_{0} - \Delta \times S_{0}
$$

- Delta Hedging  $\Longrightarrow$  whatever the stock does at  $i = 1$ , the portfolio value must be the same.
- $\Longrightarrow$  The arbitrageur chooses  $\Delta$  at time 0 so that

Value of Portfolio in Up Node = Value of Portfolio in Down Node

$$
\Pi_{1,u} = \Pi_{1,d}
$$

$$
c_{1,u} - \Delta \times S_{1,u} = c_{1,d} - \Delta \times S_{1,d}
$$

- One equation in one unknown $(\Delta)$:

$$
\Delta = \frac{c_{1,u} - c_{1,d}}{S_{1,u} - S_{1,d}}
$$

- That is: $\Delta =$ sensitivity of call price to changes in the stock price.

## Where Does the Replicating Portfolio Come From?

- With this choice of  $\Delta$ , the portfolio  $\Pi$  has equal value in both up and down node:

$$
\Pi_{1,u} = \Pi_{1,d}
$$

- $\Longrightarrow$ its value at time $i = 0$ must then be the simple riskless present value $PV(\Pi_{1,u})$, i.e.:

$$
\Pi_{0} = e^{-r \times T} \times \Pi_{1,u}
$$

- Recall that by definition $\Pi_0 = c_0 - \Delta S_0$. We now know $\Pi_0$, therefore, we obtain

$$
c_{0} = \Delta S_{0} + \Pi_{0}
$$

- Compare this expression with the replicating portfolio $P_{0} = \Delta S_{0} + B_{0}$ (which equals $c_{0}$ by no arbitrage) we see that the position in bonds must then be

$$
B_{0} = \Pi_{0} = e^{-rT} \Pi_{1,u} = e^{-rT} (c_{1,u} - \Delta \times S_{1,u})

## Example

$$
i = 0
$$

$$
i = 1
$$

$$
S_{0} = 50
$$

$$
c_{0} = ??
$$

$$
S_{1,u} = 70
$$

$$
c_{1,u} = \max(70 - 50, 0) = 20
$$

$$
S_{1,d} = 35
$$

$$
c_{1,d} = \max(35 - 50, 0) = 0
$$

$$
\Delta = \frac{c_{1,u} - c_{1,d}}{S_{1,u} - S_{1,d}} = \frac{20 - 0}{70 - 35} = 0.5714
$$

- The portfolio long the call and short  $\Delta$  stocks is valued at time  $i = 1$

$$
\Pi_{1,u} = c_{1,u} - \Delta \times S_{1,u} = 20 - 0.5714 \times 70 = -20
$$

$$
\Pi_{1,d} = c_{1,d} - \Delta \times S_{1,d} = 0 - 0.5714 \times 35 = -20
$$

- The bond position is then

$$
B_{0} = e^{-0.11} \times (-20) = -17.9167
$$

- A negative number indicates borrowing.

## Summing Up

- To summarize, in order to price any derivative security with payoff  $V_{1,u}$  and  $V_{1,d}$  on the tree, we proceed as follows:

1. Define delta to invest in stocks:  $\Delta = \frac{V_{1,u} - V_{1,d}}{S_{1,u} - S_{1,d}}$  
2. Compute amount of bonds:  $B_{0} = e^{-rT}\times (V_{1,u} - \Delta \times S_{1,u})$  
3. Compute value of security:  $V_{0} = \Delta \times S_{0} + B_{0}$

- Example: put option with strike price  $K = 50$ .

$$
p_{1,u} = 0 \quad \text{and} \quad p_{1,d} = \max(K - S_{1,d}, 0) = 15
$$

1. Delta:  $\Delta = \frac{p_{1,u} - p_{1,d}}{S_{1,u} - S_{1,d}} = \frac{0 - 15}{70 - 35} = -0.4285$  
2. Bonds:  $B_{0} = e^{-rT}\times (p_{1,u} - \Delta \times S_{1,u}) = e^{-.11}\times (0 + 0.4285\times 70) = 26.8750$  
3. Value:  $p_0 = \Delta \times S_0 + B_0 = -0.4285 \times 50 + 26.8750 = 5.4464$

- If you sold the option, the replicating portfolio is simply  $P_{0} = \Delta \times S_{0} + B_{0} = 5.4464$ . At  $t = 1$ :

$$
\begin{array}{l} P_{1,u} = \Delta \times S_{1,u} + e^{r} B_{0} = 0 \\ P_{1,d} = \Delta \times S_{1,d} + e^{r} B_{0} = 15 \\ \end{array}
$$

## Where is the probability $\pmb{q}$ of moving up?

- The pricing formula does not include the probability of moving up  $q$ .  
- Does this imply that the probability of moving up does not impact option prices?
- Answer: yes and no.

1. Given  $S_0$ ,  $S_{1,u}$  and  $S_{1,d}$ , options' payoffs can be replicated without reference to probabilities.

$\ast \Longrightarrow$  No impact of  $q$  on prices.

2. However,  $q$  determines the expected future stock price. Given a discount (e.g.  $19\%$ ),  $S_0$  is determined as the PV of future stock price.

$\ast \Longrightarrow$  The current value of  $S_{0}$  already depends on  $q$ .

* Since option values depend on  $S_0$ , the probability  $q$  does impact the value of options.

## Risk Neutral Pricing

- The above procedure is rather cumbersome.
- There is an alternative procedure that is much easier to work with.
- Since given $S_0, S_{1,u}$ and $S_{1,d}$, the probability $q$ does not impact the price of the option, we can choose a fake $q^*$ that allows us to make our computations easy.
- Risk Neutral Pricing: Choose $q^*$ so that all risky assets yield the risk free rate. Find $q^*$ such that

$$
E^{*}\left(\frac{S_{1}}{S_{0}}\right) = e^{r \times T}
$$

$$
\begin{array}{l} q^{*} \times \left(\frac{S_{1,u}}{S_{0}}\right) + (1 - q^{*}) \times \left(\frac{S_{1,d}}{S_{0}}\right) = e^{r \times T} \\ q^{*} = \frac{S_{0} \times e^{r \times T} - S_{1,d}}{S_{1,u} - S_{1,d}} \\ \end{array}
$$

$$
\begin{array}{l} q^{*} \times \left(\frac{S_{1,u}}{S_{0}}\right) + (1 - q^{*}) \times \left(\frac{S_{1,d}}{S_{0}}\right) = e^{r \times T} \\ q^{*} = \frac{S_{0} \times e^{r \times T} - S_{1,d}}{S_{1,u} - S_{1,d}} \\ \end{array}
$$

## Risk Neutral Pricing

- We can now use  $q^*$  to price any derivative assets simply as the  $PV(\text{payoff})$ :

$$
\text{Price} = E^{*}\left[ e^{-rT} \text{Derivative Payoff} \right] \tag{1}
$$

- The star  $*$  on  $E^{*}[\cdot]$  denotes the fact that we use the fake probability  $q^{*}$  to compute it.  
- Does it work?

1. Risk Neutral Probability: $q^{*} = \frac{50 \times e^{0.11} - 35}{70 - 35} = 0.5947$
2. Call Price:

$$
c_{0} = e^{-r \times T} \times E^{*}[c_{1}] = e^{-0.11} \times [q^{*} \times 20 + (1 - q^{*}) \times 0] = 10.6547
$$

3. Put Price:

$$
p_{0} = e^{-r \times T} \times E^{*}[p_{1}] = e^{-0.11} \times [q^{*} \times 0 + (1 - q^{*}) \times 15] = 5.4464
$$

4. Forward contract to deliver at $K = 50$

$$
f_{0} = e^{-r \times T} \times E^{*}[K - S_{1}] = e^{-0.11} \times [q^{*} \times (50 - 70) + (1 - q^{*}) \times (50 - 35)] = -5.2083
$$

- Any derivative security satisfies risk neutral pricing formula (1)

### Risk Neutral Pricing: A Recipe

- The recipe to price derivative securities is as follows:

1. Assume everybody is risk neutral.  
2. Compute probabilities consistent with risk neutralities.  
3. Price any derivative security as

Price of Derivative Security  $= E^{*}\left[e^{-r\times T}\times \left(\mathrm{Payoff~at}T\right)\right]$

- This methodology works even outside of the binomial tree model.
- It is an implication of no arbitrage.

## Risk Neutral Pricing: Examples

- Swaps.
- In a swap, two counterparties agree to exchange at  $T_{1}, T_{2}, \ldots, T_{n}$

$$
\mathrm {C a s h F l o w a t} T _ {i} = (S _ {T _ {i}} - K)
$$

- The value of the swap at time zero can be computed using the risk neutral pricing formula

$$
\begin{array}{l} V _ {0} ^ {s w a p} = \mathrm {P r e s e n t V a l u e (u s i n g} r) \mathrm {o f E x p e c t e d F u t u r e C a s h F l o w s (u s i n g} q ^ {*}) \\ = e ^ {- r \times T _ {1}} \times E ^ {*} [ S _ {T _ {1}} - K ] + e ^ {- r \times T _ {2}} \times E ^ {*} [ S _ {T _ {2}} - K ] + \ldots + e ^ {- r \times T _ {n}} \times E ^ {*} [ S _ {T _ {n}} - K ] \\ \end{array}
$$

- From Risk Neutral Pricing formula, we know  $F_{0,T_i} = E^*[S_{T_i}]$

$$
V _ {0} ^ {s w a p} = e ^ {- r \times T _ {1}} \times [ F _ {0, T _ {1}} - K ] + e ^ {- r \times T _ {2}} \times [ F _ {0, T _ {2}} - K ] + \ldots + e ^ {- r \times T _ {n}} \times [ F _ {0, T _ {n}} - K ]
$$

- If we are looking for  $K =$  Swap Price, we need to set  $V_0^{swap} = 0\$  and solve for  $K$

$$
K = w_{1} F_{0,T_{1}} + w_{2} F_{0,T_{2}} + \ldots + w_{n} F_{0,T_{n}} \quad \text{where} \quad w_{i} = \frac{e^{-r T_{i}}}{e^{-r T_{1}} + e^{-r T_{2}} + \ldots + e^{-r T_{n}}}
$$

## Risk Neutral Pricing and Discount Rates

- The previous examples show the convenience of risk neutral pricing technique.  
- This technique can only be used to price derivative securities, and it follows by no arbitrage.  
- It is a convenient pricing device, and it must not be confused with an assumption that market participants are risk neutral.
- Market participants are risk averse in our setting
- However, the dynamic hedging strategy takes away the risk (delta hedging), and thus for the pricing of derivative securities, we can pretend market participants are risk neutral.

## Risk Neutral Pricing and Discount Rates: Forward Prices

- As a final comment, we found that the forward price is

$$
F _ {0, T} = E ^ {*} [ S _ {T} ]
$$

- I.e. the forward price is the risk neutral expected future stock price.
- There is little information in forward prices about the true market expectations of future stock prices (or exchange rates etc).
- In particular, a risk adjustment has to be made. In fact, we have

$$
F _ {0, T} = S _ {0} \times e ^ {r \times T}
$$

- However, we also know that using the true expectations and expected return for stocks  $\mu$ :

$$
E [ S _ {T} ] = S _ {0} \times e ^ {\mu \times T}
$$

- Substitute, to obtain the relation

$$
F _ {0, T} = e ^ {- (\mu - r) \times T} E [ S _ {T} ]
$$

- $\Rightarrow$  The forward price is the expected future stock price, discounted at the excess rate of return  $(\mu - r)$

# Risk Neutral Pricing and Discount Rates: Forward Prices

DOLLAR SPOT FORWARD AGAINST THE DOLLAR  

<table><tr><td rowspan="2">Apr 4</td><td rowspan="2"></td><td rowspan="2">Closing
mid-point</td><td rowspan="2">Change
on day</td><td rowspan="2">Bid/offer
spread</td><td colspan="2">Day&#x27;s mid</td><td colspan="2">One month</td><td colspan="2">Three months</td><td colspan="2">One year</td><td rowspan="2">J.P. Morgan
Index</td></tr><tr><td>high</td><td>low</td><td>Rate</td><td>%PA</td><td>Rate</td><td>%PA</td><td>Rate</td><td>%PA</td></tr><tr><td>Europe</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Czech Rep.</td><td>(Koruna)</td><td>20.8984</td><td>-0.0132</td><td>844 - 123</td><td>21.0040</td><td>20.8844</td><td>20.8478</td><td>2.9</td><td>20.7499</td><td>2.8</td><td>20.4229</td><td>2.3</td><td>-</td></tr><tr><td>Denmark</td><td>(DKr)</td><td>5.5734</td><td>0.0004</td><td>726 - 741</td><td>5.5944</td><td>5.5708</td><td>5.5673</td><td>1.3</td><td>5.5562</td><td>1.2</td><td>5.5265</td><td>0.8</td><td>110.00</td></tr><tr><td>Hungary</td><td>(Forint)</td><td>183.947</td><td>0.3426</td><td>867 - 028</td><td>184.720</td><td>183.590</td><td>184.357</td><td>-2.7</td><td>185.117</td><td>-2.5</td><td>188.057</td><td>-2.2</td><td>-</td></tr><tr><td>Norway</td><td>(NKr)</td><td>6.1194</td><td>0.0046</td><td>172 - 215</td><td>6.1372</td><td>6.1120</td><td>6.1138</td><td>1.1</td><td>6.1049</td><td>0.9</td><td>6.1006</td><td>0.3</td><td>112.60</td></tr><tr><td>Poland</td><td>(Zloty)</td><td>2.8765</td><td>-0.0009</td><td>746 - 783</td><td>2.8878</td><td>2.8746</td><td>2.8734</td><td>1.3</td><td>2.8681</td><td>1.2</td><td>2.8594</td><td>0.6</td><td>-</td></tr><tr><td>Russia</td><td>(Rouble)</td><td>25.9694</td><td>-0.0042</td><td>669 - 719</td><td>26.0270</td><td>25.9620</td><td>25.9662</td><td>0.2</td><td>25.9603</td><td>0.1</td><td>25.9865</td><td>-0.1</td><td>-</td></tr><tr><td>Slovakia</td><td>(Koruna)</td><td>25.0013</td><td>0.2019</td><td>761 - 265</td><td>25.2560</td><td>24.8350</td><td>24.9695</td><td>1.5</td><td>24.8948</td><td>1.7</td><td>24.6513</td><td>1.4</td><td>-</td></tr><tr><td>Sweden</td><td>(SKr)</td><td>6.9687</td><td>-0.0387</td><td>667 - 706</td><td>7.0301</td><td>6.9603</td><td>6.9570</td><td>2.0</td><td>6.9347</td><td>1.9</td><td>6.8702</td><td>1.4</td><td>101.80</td></tr><tr><td>Switzerland</td><td>(SFr)</td><td>1.2181</td><td>0.0002</td><td>178 - 184</td><td>1.2232</td><td>1.2174</td><td>1.2150</td><td>3.1</td><td>1.2089</td><td>3.0</td><td>1.1870</td><td>2.6</td><td>107.10</td></tr><tr><td>Turkey</td><td>(Lira)</td><td>1.3730</td><td>-</td><td>715 - 745</td><td>1.3790</td><td>1.3680</td><td>1.3889</td><td>-13.9</td><td>1.4182</td><td>-13.2</td><td>1.5600</td><td>-13.6</td><td>-</td></tr><tr><td>UK (0.5058)*</td><td>(£)</td><td>1.9772</td><td>-0.0014</td><td>770 - 774</td><td>1.9775</td><td>1.9717</td><td>1.9770</td><td>0.1</td><td>1.9761</td><td>0.2</td><td>1.9658</td><td>0.6</td><td>103.50</td></tr><tr><td>Euro (0.7477)*</td><td>(Euro)</td><td>1.3375</td><td>0.0002</td><td>373 - 376</td><td>1.3380</td><td>1.3319</td><td>1.3391</td><td>-1.4</td><td>1.3421</td><td>-1.4</td><td>1.3506</td><td>-1.0</td><td>128.80</td></tr><tr><td>SDR</td><td>-</td><td>0.6605</td><td>-</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Americas</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Argentina</td><td>(Peso)</td><td>3.1013</td><td>-</td><td>000 - 025</td><td>3.1025</td><td>3.1000</td><td>3.0978</td><td>1.4</td><td>3.1023</td><td>-0.1</td><td>3.1663</td><td>-2.1</td><td>-</td></tr><tr><td>Brazil</td><td>(R$)</td><td>2.0365</td><td>-0.0021</td><td>355 - 375</td><td>2.0400</td><td>2.0310</td><td>2.0460</td><td>-5.6</td><td>2.0610</td><td>-4.8</td><td>2.1465</td><td>-5.4</td><td>-</td></tr><tr><td>Canada</td><td>(C$)</td><td>1.1575</td><td>0.0009</td><td>572 - 577</td><td>1.1593</td><td>1.1544</td><td>1.1564</td><td>1.1</td><td>1.1544</td><td>1.1</td><td>1.1473</td><td>0.9</td><td>123.90</td></tr><tr><td>Mexico</td><td>(New Peso)</td><td>10.9998</td><td>0.0160</td><td>975 - 020</td><td>11.0025</td><td>10.9714</td><td>11.0160</td><td>-1.8</td><td>11.0520</td><td>-1.9</td><td>11.2448</td><td>-2.2</td><td>81.90</td></tr><tr><td>Peru</td><td>(New Sol)</td><td>3.1815</td><td>0.0010</td><td>810 - 820</td><td>3.1830</td><td>3.1800</td><td>3.1795</td><td>0.8</td><td>3.1765</td><td>0.6</td><td>3.1795</td><td>0.1</td><td>-</td></tr><tr><td>USA</td><td>($)</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>88.10</td></tr><tr><td>Pacific/Middle East/Africa</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Australia</td><td>(A$)</td><td>1.2231</td><td>-0.0056</td><td>228 - 234</td><td>1.2398</td><td>1.2204</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>125.40</td></tr><tr><td>Hong Kong</td><td>(HK$)</td><td>7.8161</td><td>0.0009</td><td>159 - 163</td><td>7.8171</td><td>7.8147</td><td>7.8097</td><td>1.0</td><td>7.7929</td><td>1.2</td><td>7.7434</td><td>0.9</td><td>92.70</td></tr><tr><td>India</td><td>(Rs)</td><td>43.0700</td><td>0.0050</td><td>600 - 800</td><td>43.1350</td><td>42.8450</td><td>43.3225</td><td>-7.0</td><td>43.7050</td><td>-5.9</td><td>44.8423</td><td>-4.1</td><td>-</td></tr><tr><td>Indonesia</td><td>(Rupiah)</td><td>9116.00</td><td>21.0000</td><td>200 - 000</td><td>9121.00</td><td>9098.00</td><td>9116.00</td><td>-</td><td>9116.00</td><td>-</td><td>9116.00</td><td>-</td><td>-</td></tr><tr><td>Iran</td><td>(Rial)</td><td>9244.00</td><td>-1.0000</td><td>800 - 000</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Israel</td><td>(Shk)</td><td>4.1310</td><td>-0.0290</td><td>280 - 340</td><td>4.1580</td><td>4.1240</td><td>4.1275</td><td>1.0</td><td>4.1201</td><td>1.1</td><td>4.0968</td><td>0.8</td><td>-</td></tr><tr><td>Japan</td><td>(Y)</td><td>118.615</td><td>-0.1700</td><td>600 - 630</td><td>119.080</td><td>118.550</td><td>118.139</td><td>4.8</td><td>117.231</td><td>4.7</td><td>113.528</td><td>4.3</td><td>80.20</td></tr><tr><td>Kuwait</td><td>(Dinar)</td><td>0.2893</td><td>-0.0001</td><td>892 - 893</td><td>0.2894</td><td>0.2892</td><td>0.2892</td><td>0.1</td><td>0.2893</td><td>-</td><td>0.2894</td><td>-0.1</td><td>-</td></tr><tr><td>Malaysia</td><td>(M$)</td><td>3.4570</td><td>-0.0035</td><td>545 - 595</td><td>3.4600</td><td>3.4545</td><td>3.4516</td><td>1.9</td><td>3.4415</td><td>1.8</td><td>3.3985</td><td>1.7</td><td>-</td></tr><tr><td>New Zealand</td><td>(NZ$)</td><td>1.3865</td><td>-0.0013</td><td>860 - 870</td><td>1.3953</td><td>1.3841</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>137.20</td></tr><tr><td>Philippines</td><td>(Peso)</td><td>48.0500</td><td>-0.0750</td><td>400 - 600</td><td>48.2000</td><td>47.8700</td><td>48.0492</td><td>-</td><td>48.0563</td><td>-0.1</td><td>48.0615</td><td>-</td><td>-</td></tr><tr><td>Saudi Arabia</td><td>(SR)</td><td>3.7504</td><td>-</td><td>499 - 509</td><td>3.7509</td><td>3.7499</td><td>3.7489</td><td>0.5</td><td>3.7472</td><td>0.3</td><td>3.7435</td><td>0.2</td><td>-</td></tr><tr><td>Singapore</td><td>(S$)</td><td>1.5150</td><td>-0.0038</td><td>147 - 153</td><td>1.5205</td><td>1.5137</td><td>1.5119</td><td>2.5</td><td>1.5062</td><td>2.3</td><td>1.4824</td><td>2.2</td><td>105.70</td></tr><tr><td>South Africa</td><td>(R)</td><td>7.1718</td><td>-0.0168</td><td>667 - 768</td><td>7.1962</td><td>7.1460</td><td>7.1942</td><td>-3.8</td><td>7.2421</td><td>-3.9</td><td>7.4743</td><td>-4.2</td><td>-</td></tr><tr><td>South Korea</td><td>(Won)</td><td>936.500</td><td>-0.2500</td><td>000 - 000</td><td>937.000</td><td>935.500</td><td>935.850</td><td>0.8</td><td>934.600</td><td>0.8</td><td>930.300</td><td>0.7</td><td>113.00</td></tr><tr><td>Taiwan</td><td>(T$)</td><td>33.0900</td><td>-0.0310</td><td>850 - 950</td><td>33.1360</td><td>33.0640</td><td>33.0550</td><td>1.3</td><td>32.9300</td><td>1.9</td><td>32.3500</td><td>2.2</td><td>87.20</td></tr><tr><td>Thailand</td><td>(Bt)</td><td>34.9450</td><td>-0.0200</td><td>100 - 800</td><td>34.9800</td><td>31.9000</td><td>34.9215</td><td>0.8</td><td>34.8600</td><td>1.0</td><td>34.5550</td><td>1.1</td><td>-</td></tr><tr><td>U A E</td><td>(Dirham)</td><td>3.6723</td><td>0.0001</td><td>721 - 724</td><td>3.6724</td><td>3.6721</td><td>3.6715</td><td>0.2</td><td>3.6700</td><td>0.2</td><td>3.6688</td><td>0.1</td><td>-</td></tr></table>

*The closing mid-point rates for the Euro and £ are shown in brackets. The other figures in both rows are in the reciprocal form in line with market convention. † Official rate set by Malaysian government. The WM/Reuters rate for the valuation of capital assets is 3.80 MYR/USD. Bid/offer spreads in the Dollar Spot table show only the last three decimal places. J.P. Morgan nominal indices: Base average  $2000 = 100$ . Bid, offer, mid spot rates and forward rates in both this and tha pound table are derived from the WM/REUTERS 4pm (London time) CLOSING SPOT and FORWARD RATE services. Some values are rounded by the F.T.  
source:Financial Times www.ft.com)

## Risk Neutral Pricing and Discount Rates: Forward Prices

- For instance, on April 7 2007,  
- Current Exchange Rate  $M_0 = 1.3375 = \text{USD/EUR}$  
- One Year Forward Exchange Rate  $F_{0,1} = 1.3506$
- Does the market really expect the Euro to appreciate  $1.5\%$  ( $= 1.3506 / 1.3375 - 1$ )?
- Not necessarily, because the forward exchange rate is the risk neutral expectation of future exchange rate,  $F_{0,1} = E^{*}[M_{1}]$ , and it does not represent the true expectation,  $F_{0,1} \neq E[M_1]$ .  
- Indeed, we recall from TN 2 that by no arbitrage, the forward rate only depends on the interest rate differential between the two countries.
- Notice in fact that if the risk premium  $\mu - r_{\S}$  is negative (e.g. if the Euro moves inversely with the US stock market) then we may well have

$$
F _ {0, 1} = e ^ {- (\mu - r _ {\S}) T} E [ M _ {1} ] = 1. 3 5 0 6 > M _ {0} \quad \mathrm {b u t} \quad E [ M _ {1} ] \leq M _ {0}
$$

- This example simply illustrates that the relation between forward prices and expected forward prices is complicated by the risk

## Two-Step Binomial Trees

- Given the above methodology, we can now see it at work in a slightly more complicated example.  
- Consider the two step binomial tree

$$
\begin{array}{l} i = 0 \\ i = 1 \\ i = 2 \\ S _ {2, u u} = 1 0 0 \\ \end{array}
$$

$$
S _ {1, u} = 7 0
$$

$$
S _ {0} = 5 0
$$

$$
S _ {1, d} = 3 5
$$

$$
\begin{array}{c} S _ {2, u d} \\ S _ {2, d u} \end{array} = 5 0
$$

$$
S _ {2, d d} = 2 5
$$

- We want to price an option with maturity  $T = 2$  and strike price  $K = 50$ .  
- Consider the two methodologies.

## Methodology 1: Dynamic Replication

- Move backward on the tree.

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
S _ {2, u u} = 1 0 0
$$

$$
c _ {2, u u} = 5 0
$$

$$
S _ {0} = 5 0
$$

$$
c _ {0} =??
$$

$$
S _ {1, u} = 7 0
$$

$$
\Delta_ {1, u} = (5 0 - 0) / (1 0 0 - 5 0) = 1
$$

$$
B _ {1, u} = e ^ {- r} \left(c _ {2, u u} - \Delta_ {1, u} S _ {2, u u}\right) = - 4 4. 7 9 1 7
$$

$$
c _ {1, u} = \Delta_ {1, u} \times S _ {1, u} + B _ {1, u} = 2 5. 2 0 8 3
$$

$$
S _ {2, u d} = S _ {2, d u} = 5 0
$$

$$
c _ {2, u d} = c _ {2, d u} = 0
$$

$$
S _ {1, d} = 3 5
$$

$$
\Delta_ {1, d} = (0 - 0) / (5 0 - 2 5) = 0
$$

$$
B _ {1, d} = e ^ {- r} \left(c _ {2, d d} - \Delta_ {1, d} S _ {2, d d}\right) = 0
$$

$$
c _ {1, d} = \Delta_ {1, d} \times S _ {1, d} + B _ {1, d} = 0
$$

$$
S _ {2, d d} = 2 5
$$

$$
c _ {2, d d} = 0
$$

## Methodology 1: Dynamic Replication (continued)

- To summarize so far, the step from  $i = 2$  to  $i = 1$  determined that  $c_{1,u} = 25.2083$  and  $c_{1,d} = 0$  
- The last step is to compute the value at time 0, using at this point the same tree as before

$$
i = 0
$$

$$
i = 1
$$

$$
S _ {1, u} = 7 0
$$

$$
c _ {1, u} = 2 5. 2 0 8 3
$$

$$
S _ {0} = 5 0
$$

$$
\Delta_ {0} = (2 5. 2 0 8 3 - 0) / (7 0 - 3 5) = 0. 7 2 0 2
$$

$$
B _ {0} = e ^ {- r} \times (c _ {1, u} - \Delta_ {0} \times S _ {1, u}) = - 2 2. 5 8 2 4
$$

$$
c _ {0} = \Delta_ {0} \times S _ {0} + B _ {0} = 1 3. 4 2 9 4
$$

$$
S _ {1, d} = 3 5
$$

$$
c _ {1, d} = 0
$$

- Not exactly a piece of cake.  
- Risk neutral pricing simplify things considerably.

## Methodology 2: Risk Neutral Pricing

- Move backward on the tree.

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
S _ {2, u u} = 1 0 0
$$

$$
c _ {2, u u} = 5 0
$$

$$
S _ {0} = 5 0
$$

$$
q _ {0} ^ {*} = 0. 5 9 4 7
$$

$$
c _ {0} = e ^ {- r} \times q _ {0} ^ {*} \times c _ {1, u}
$$

$$
= 1 3. 4 2 9 4
$$

$$
S _ {1, u} = 7 0
$$

$$
q _ {1, u} ^ {*} = (7 0 e ^ {r} - 5 0) / (1 0 0 - 5 0) = 0. 5 6 2 8
$$

$$
c _ {1, u} = e ^ {- r} \times q _ {1, u} ^ {*} \times c _ {2, u u} = 2 5. 2 0 8 3
$$

$$
S _ {2, u d} = S _ {2, d u} = 5 0
$$

$$
c _ {2, u d} = c _ {2, d u} = 0
$$

$$
S _ {1, d} = 3 5
$$

$$
c _ {1, d} = e ^ {- r} \times E ^ {*} [ c _ {2} ] = 0
$$

$$
S _ {2, d d} = 2 5
$$

$$
c _ {2, d d} = 0
$$

## Risk Neutral Pricing

- We can now use $q^*$ to price any derivative assets simply as the $PV(\text{payoff})$:

$$
\text{Price} = E^{*}\left[ e^{-rT} \text{Derivative Payoff} \right] \tag{1}
$$
V _ {i, j} = e ^ {- r \times h} \times E ^ {*} [ V _ {i + 1} | (\mathrm {t i m e}, \mathrm {n o d e}) = (i, j) ]
$$

- where  $h$  is the time interval between steps in the tree

# Risk Neutral Pricing - 2

- Indeed, if we know the (risk neutral) probabilities of stock prices at time  $T$ , risk neutral pricing can be applied directly using

$$
V _ {0} = e ^ {- r \times T} \times E ^ {*} [ \mathrm {P a y o f f a t} T ]
$$

- In previous example,

$$
\begin{array}{l} * \operatorname * {P r} (S _ {2, u u}) = q _ {0} ^ {*} \times q _ {1, u} ^ {*} = 0. 3 3 4 7; \\ * \operatorname * {P r} (S _ {2, u d}) = q _ {0} ^ {*} \times (1 - q _ {1, u} ^ {*}) + (1 - q _ {0} ^ {*}) * q _ {1, d} = 0. 4 8 8 1; \mathrm {a n d} \\ * \operatorname * {P r} (S _ {2, d d}) = 0. 1 7 7 2 \\ \end{array}
$$

- Thus, the price of the call option with strike  $K = 50$  is

$$
c_{0} = e^{-0.11 \times 2} \times 0.3347 \times (100 - 50) = 13.4294
$$

- The price of a put is

$$
p_{0} = e^{-0.11 \times 2} \times 0.1772 \times (50 - 25) = 3.555
$$

- The price of a short forward

$$
f_{0} = e^{-0.11 \times 2} [0.3347 \times (50 - 100) + 0.4881 \times (50 - 50) + 0.1772 \times (50 - 25)] = -9.8741
$$

# Multi Step Trees

- Binomial trees are extremely useful also to compute numerically the price of derivative securities under realistic assumptions.  
- We now first consider an extension of the previous 2-step model to an  $n$  step model.  
- Assume log returns have constant expected return  $\mu$  and constant volatility  $\sigma$ .
- That is, over a small interval of time  $h$ :

$$
E \left[ \frac {S _ {t + h}}{S _ {t}} \right] = e ^ {\mu \times h}; \quad \mathrm {a n d} \quad E \left[ \left(\frac {S _ {t + h}}{S _ {t}} - e \mu h\right) ^ {2} \right] = \sigma^ {2} \times h
$$

- Consider an option with maturity  $T$ .  
- We chop off the time interval  $[0, T]$  into  $n$  little intervals  $[0, T/n, 2T/n, 3T/n, \ldots, (n-1)T/n, T]$ . - Each interval is of size  $h = T/n$ . We denote the steps  $i = 0, 1, \ldots, n$ .

$\ast \Longrightarrow i\times h =$  calendar time on the tree.

# Multi Step Trees

- Assume that the stock process follows:

$$
S _ {i + 1} = \left\{ \begin{array}{l l} S _ {i} \times u & \text {w i t h p r o b a b i l i t y} q \\ S _ {i} \times d & \text {w i t h p r o b a b i l i t y} 1 - q \end{array} \right. \tag {1}
$$

- We now choose  $u, d$  and  $q$  to approximate the expected return  $\mu$  and variance  $\sigma^2$  on the tree.  
- The following conditions must be satisfied

1. Expected Return:  $E\left(\frac{S_{i + 1}}{S_i}\right) = e^{\mu \times h}$  so that

$$
q \times u + (1 - q) \times d = e ^ {\mu \times h}
$$

2. Variance:  $E\left(\left(\frac{S_{i + 1}}{S_i} - e^{\mu \times h}\right)^2\right) = \sigma^2 \times h$  which implies

$$
q \left(u - e ^ {\mu \times h}\right) ^ {2} + (1 - q) \left(d - e ^ {\mu \times h}\right) ^ {2} = \sigma^ {2} \times h
$$

- We have two equations and three parameters to choose  $\Longrightarrow$  we have one degree of freedom left. The following assumption gives symmetry to the problem.

3. Percentage increase in stock = percentage decrease in stock

$$
u = 1 / d
$$

# Multi Step Trees

- These three equations in three unknowns give the solution:

$$
u = e ^ {\sigma \times \sqrt {h}}; d = 1 / u; \mathrm {a n d} q = \frac {e ^ {\mu \times h} - d}{u - d}.
$$

- We can then use these parameters and the procedure (1) to construct our tree relatively easily.  
- Next figure shows an example from BinomialTree.xls

# Multi Step Trees: Example

# BINOMIAL TREE MODEL

<table><tr><td></td><td colspan="2">Stock Assumption</td><td colspan="3">Option Assumption</td><td colspan="2">Tree</td><td colspan="3">Risk Neutral Prob</td></tr><tr><td></td><td>mu</td><td>0.1</td><td>T</td><td colspan="2">0.1</td><td>n</td><td>10</td><td>q*</td><td>0.495834</td><td></td></tr><tr><td></td><td>sigma</td><td>0.3</td><td>K</td><td colspan="2">100</td><td>h</td><td>0.01</td><td></td><td></td><td></td></tr><tr><td></td><td>r</td><td>0.02</td><td>Call or Put</td><td colspan="2">1 (=1 for call</td><td>u</td><td>1.030455</td><td>Price Binomial</td><td>3.787</td><td></td></tr><tr><td></td><td>q</td><td>0</td><td></td><td colspan="2"></td><td>d</td><td>0.970446</td><td>Delta Binomial</td><td>0.527</td><td></td></tr><tr><td></td><td>S0</td><td>100</td><td></td><td colspan="2"></td><td>p</td><td>0.509173</td><td></td><td></td><td></td></tr><tr><td>time =&gt;</td><td>0</td><td>0.01</td><td>0.02</td><td>0.03</td><td>0.04</td><td>0.05</td><td>0.06</td><td>0.07</td><td>0.08</td><td>0.09</td></tr><tr><td>i=&gt;</td><td>0</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td></tr><tr><td>0</td><td>100.000</td><td>103.045</td><td>106.184</td><td>109.417</td><td>112.750</td><td>116.183</td><td>119.722</td><td>123.368</td><td>127.125</td><td>130.996</td></tr><tr><td>1</td><td></td><td>97.045</td><td>100.000</td><td>103.045</td><td>106.184</td><td>109.417</td><td>112.750</td><td>116.183</td><td>119.722</td><td>123.368</td></tr><tr><td>2</td><td></td><td></td><td>94.176</td><td>97.045</td><td>100.000</td><td>103.045</td><td>106.184</td><td>109.417</td><td>112.750</td><td>116.183</td></tr><tr><td>3</td><td></td><td></td><td></td><td>91.393</td><td>94.176</td><td>97.045</td><td>100.000</td><td>103.045</td><td>106.184</td><td>109.417</td></tr><tr><td>4</td><td></td><td></td><td></td><td></td><td>88.692</td><td>91.393</td><td>94.176</td><td>97.045</td><td>100.000</td><td>103.045</td></tr><tr><td>5</td><td></td><td></td><td></td><td></td><td></td><td>86.071</td><td>88.692</td><td>91.393</td><td>94.176</td><td>97.045</td></tr><tr><td>6</td><td></td><td></td><td></td><td></td><td></td><td></td><td>83.527</td><td>86.071</td><td>88.692</td><td>91.393</td></tr><tr><td>7</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>81.058</td><td>83.527</td><td>86.071</td></tr><tr><td>8</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>78.663</td><td>81.058</td></tr><tr><td>9</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>76.338</td></tr><tr><td>10</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table>

- Note 1. Time index:  $i = 0,1,\dots,n$ . Node index:  $j = 0,1,\dots,n$ ;  
- Note 2. Because we start from up-left corner,:
- an up movement in  $S$  between  $i$  and  $i + 1$  correspond to same index  $j$ ;  
- a down movement in  $S$  between  $i$  and  $i + 1$  corresponds to an increase in the index  $j$ .

# Multi Step Trees: Derivative Pricing

- How do we price a derivative security on this binomial tree?
- Risk neutral pricing provides an immediate answer.

1. Compute the risk neutral probability

$$
q ^ {*} = \frac {e ^ {r \times h} - d}{u - d}
$$

2. Move backward on the tree using

$$
V _ {i, j} = e ^ {- r \times h} \times E ^ {*} [ V _ {i + 1} | (i, j) ]
$$

* where  $i, j$  is the (time, node) state on the tree.

- For instance, for call options, start from the end of the tree with the final condition

$$
c _ {n, j} = \max (S _ {n, j} - K, 0) \quad \mathrm {f o r} \quad j = 0, 1, \ldots , n
$$

- Then move backward applying

$$
c _ {i, j} = e ^ {- r \times h} \times (q ^ {*} c _ {i + 1, j} + (1 - q ^ {*}) c _ {i + 1, j + 1})
$$

# Multi Step Trees: Example

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/1c48f7146638315092fa601ff4cb430fcda7d9fb1b9e1b1142c0b36b53856ef5.jpg)  
BINOMIAL TREE MODEL

Option Price  

<table><tr><td colspan="2">time =&gt;</td><td>0.000</td><td>0.010</td><td>0.020</td><td>0.030</td><td>0.040</td><td>0.050</td><td>0.060</td><td>0.070</td><td>0.080</td><td>0.090</td><td>0.100</td></tr><tr><td colspan="2">i==&gt;</td><td>0.0</td><td>1.0</td><td>2.0</td><td>3.0</td><td>4.0</td><td>5.0</td><td>6.0</td><td>7.0</td><td>8.0</td><td>9.0</td><td>10.0</td></tr><tr><td colspan="2">1.0</td><td>3.787</td><td>5.381</td><td>7.440</td><td>9.982</td><td>12.965</td><td>16.283</td><td>19.802</td><td>23.428</td><td>27.165</td><td>31.016</td><td>34.986</td></tr><tr><td colspan="2">2.0</td><td></td><td>2.221</td><td>3.358</td><td>4.943</td><td>7.053</td><td>9.707</td><td>12.830</td><td>16.243</td><td>19.762</td><td>23.388</td><td>27.125</td></tr><tr><td colspan="2">3.0</td><td></td><td></td><td>1.103</td><td>1.801</td><td>2.871</td><td>4.445</td><td>6.640</td><td>9.477</td><td>12.790</td><td>16.203</td><td>19.722</td></tr><tr><td colspan="2">4.0</td><td></td><td></td><td></td><td>0.418</td><td>0.749</td><td>1.323</td><td>2.289</td><td>3.851</td><td>6.224</td><td>9.437</td><td>12.750</td></tr><tr><td colspan="2">5.0</td><td></td><td></td><td></td><td></td><td>0.092</td><td>0.185</td><td>0.373</td><td>0.753</td><td>1.520</td><td>3.065</td><td>6.184</td></tr><tr><td colspan="2">6.0</td><td></td><td></td><td></td><td></td><td></td><td>0.000</td><td>0.000</td><td>0.000</td><td>0.000</td><td>0.000</td><td>0.000</td></tr><tr><td colspan="2">7.0</td><td></td><td></td><td></td><td></td><td></td><td></td><td>0.000</td><td>0.000</td><td>0.000</td><td>0.000</td><td>0.000</td></tr><tr><td colspan="2">8.0</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>0.000</td><td>0.000</td><td>0.000</td><td>0.000</td></tr><tr><td colspan="2">9.0</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>0.000</td><td>0.000</td><td>0.000</td></tr><tr><td colspan="2">10.0</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>0.000</td><td>0.000</td></tr><tr><td colspan="2">11.0</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>0.000</td></tr></table>

Multi Step Trees: Example with 250 steps  
BINOMIAL TREE MODEL  

<table><tr><td></td><td colspan="2">Stock Assumption</td><td colspan="3">Option Assumption</td><td colspan="2">Tree</td><td colspan="3">Risk Neutral Prob</td></tr><tr><td></td><td>mu</td><td>0.1</td><td>T</td><td>0.1</td><td></td><td>n</td><td>250</td><td>q*</td><td>0.499167</td><td></td></tr><tr><td></td><td>sigma</td><td>0.3</td><td>K</td><td>100</td><td></td><td>h</td><td>0.0004</td><td></td><td></td><td></td></tr><tr><td></td><td>r</td><td>0.02</td><td>Call or Put</td><td>1</td><td>(=1 for call</td><td>u</td><td>1.006018</td><td>Price Binomial</td><td>3.876</td><td></td></tr><tr><td></td><td>q</td><td>0</td><td></td><td></td><td></td><td>d</td><td>0.994018</td><td>Delta Binomial</td><td>0.527</td><td></td></tr><tr><td></td><td>S0</td><td>100</td><td></td><td></td><td></td><td>p</td><td>0.501833</td><td></td><td></td><td></td></tr><tr><td rowspan="2">time =&gt; i=&gt;</td><td>0</td><td>0.0004</td><td>0.0008</td><td>0.0012</td><td>0.0016</td><td>0.002</td><td>0.0024</td><td>0.0028</td><td>0.0032</td><td>0.0036</td></tr><tr><td>0</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td></tr><tr><td>0</td><td>100.000</td><td>100.602</td><td>101.207</td><td>101.816</td><td>102.429</td><td>103.045</td><td>103.666</td><td>104.289</td><td>104.917</td><td>105.548</td></tr><tr><td>1</td><td></td><td>99.402</td><td>100.000</td><td>100.602</td><td>101.207</td><td>101.816</td><td>102.429</td><td>103.045</td><td>103.666</td><td>104.289</td></tr><tr><td>2</td><td></td><td></td><td>98.807</td><td>99.402</td><td>100.000</td><td>100.602</td><td>101.207</td><td>101.816</td><td>102.429</td><td>103.045</td></tr><tr><td>3</td><td></td><td></td><td></td><td>98.216</td><td>98.807</td><td>99.402</td><td>100.000</td><td>100.602</td><td>101.207</td><td>101.816</td></tr><tr><td>4</td><td></td><td></td><td></td><td></td><td>97.629</td><td>98.216</td><td>98.807</td><td>99.402</td><td>100.000</td><td>100.602</td></tr><tr><td>5</td><td></td><td></td><td></td><td></td><td></td><td>97.045</td><td>97.629</td><td>98.216</td><td>98.807</td><td>99.402</td></tr><tr><td>6</td><td></td><td></td><td></td><td></td><td></td><td></td><td>96.464</td><td>97.045</td><td>97.629</td><td>98.216</td></tr><tr><td>7</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>95.887</td><td>96.464</td><td>97.045</td></tr><tr><td>8</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>95.313</td><td>95.887</td></tr><tr><td>9</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>94.743</td><td>95.313</td></tr><tr><td>10</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>94.176</td></tr></table>

Option Price  

<table><tr><td colspan="2">time =&gt;</td><td>0.000</td><td>0.000</td><td>0.001</td><td>0.001</td><td>0.002</td><td>0.002</td><td>0.002</td><td>0.003</td><td>0.003</td><td>0.004</td><td>0.004</td></tr><tr><td colspan="2">i=&gt;</td><td>0.0</td><td>1.0</td><td>2.0</td><td>3.0</td><td>4.0</td><td>5.0</td><td>6.0</td><td>7.0</td><td>8.0</td><td>9.0</td><td>10.0</td></tr><tr><td colspan="2">0</td><td>3.876</td><td>4.193</td><td>4.527</td><td>4.879</td><td>5.247</td><td>5.633</td><td>6.036</td><td>6.457</td><td>6.894</td><td>7.348</td><td>7.818</td></tr><tr><td colspan="2">1</td><td></td><td>3.561</td><td>3.861</td><td>4.177</td><td>4.511</td><td>4.863</td><td>5.231</td><td>5.618</td><td>6.021</td><td>6.442</td><td>6.879</td></tr><tr><td colspan="2">2</td><td></td><td></td><td>3.262</td><td>3.545</td><td>3.845</td><td>4.161</td><td>4.495</td><td>4.847</td><td>5.216</td><td>5.602</td><td>6.005</td></tr><tr><td colspan="2">3</td><td></td><td></td><td></td><td>2.980</td><td>3.246</td><td>3.529</td><td>3.828</td><td>4.145</td><td>4.479</td><td>4.831</td><td>5.200</td></tr><tr><td colspan="2">4</td><td></td><td></td><td></td><td></td><td>2.715</td><td>2.964</td><td>3.230</td><td>3.513</td><td>3.812</td><td>4.129</td><td>4.463</td></tr><tr><td colspan="2">5</td><td></td><td></td><td></td><td></td><td></td><td>2.466</td><td>2.699</td><td>2.949</td><td>3.214</td><td>3.497</td><td>3.796</td></tr><tr><td colspan="2">6</td><td></td><td></td><td></td><td></td><td></td><td></td><td>2.233</td><td>2.451</td><td>2.684</td><td>2.933</td><td>3.198</td></tr><tr><td colspan="2">7</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>2.016</td><td>2.218</td><td>2.436</td><td>2.668</td></tr><tr><td colspan="2">8</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>1.814</td><td>2.002</td><td>2.204</td></tr><tr><td colspan="2">9</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>1.628</td><td>1.801</td></tr><tr><td colspan="2">10</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>1.455</td></tr></table>

# Multi Step Trees: Probability Distribution of  $S_T$

- What is the probability distribution of the stock price at maturity  $S_{T}$ ?  
- Without going into details, consider a  $n$  steps tree.  
- There are  $n + 1$  nodes at maturity,  $j = 0, 1, \ldots, n$ .
- Note that

* The top node  $j = 0$  can only be reached with  $n$  ups  $u$  and 0 downs  $d$ .  
* Node  $j = 1$  can only be reached with  $n - 1$  ups  $u$  and 1 down  $d$ .

：

* Node  $j = n$  can only be reached with 0 ups  $u$  and  $n$  downs  $d$ .

- If each up  $u$  has probability  $q^*$ , what is the probability of reaching exactly node  $j$ ?

$$
\operatorname * {P r} \left(\mathrm {n o d e} = j \mathrm {a t} T = n \times h\right) = \left(\frac {n !}{j ! (n - j) !}\right) \times (q ^ {*}) ^ {n - j} \times (1 - q ^ {*}) ^ {j}
$$

* where  $n! = 1 \times 2 \times 3 \times \ldots \times n$  (note:  $0! = 1$ ).

# Multi Step Trees: Probability Distribution of  $S_T$

- For instance, if  $n = 3$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/489e2851d11895d8c9dcad1064830f5c687a435d7b37a36aab4567112d646f4a.jpg)

$$
\operatorname * {P r} \left(j = 0 \mathrm {a t} T = n \times h\right) = \left(\frac {3 !}{0 ! \times 3 !}\right) \times (q ^ {*}) ^ {3} \times (1 - q ^ {*}) ^ {0} = (q ^ {*}) ^ {3}
$$

$$
\operatorname * {P r} \left(j = 1 \mathrm {a t} T = n \times h\right) = \left(\frac {3 \times 2}{1 \times 2}\right) \times (q ^ {*}) ^ {2} \times (1 - q ^ {*}) = 3 (q ^ {*}) ^ {2} (1 - q ^ {*})
$$

# Multi Step Trees: Probability Distribution of  $S_T$

- As  $n$  increases to infinity, the distribution at  $T = n \times h$  of the stock price  $S_{T}$  converges to a log-normal distribution.
- Next figure shows the probabilities of  $S_{T}$  for  $n = 250$  and  $T = 1$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/b346f788660b1ae1b0f0f444296d388931559cee1a0ef19792a42c229a76922c.jpg)

# Multi Step Trees: Probability Distribution of  $S_{T}$

- Or, plotting the probability density with respect to  $\log \left( {S}_{T}\right)$  ,we obtain

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/fbf48771-8083-4822-9cc1-70b4b77cdf6f/4165d172b8a4763943e0e14985af1289c0e1c85ffd26e62a22f483810ac7dc15.jpg)  
Log Stock Price

- Also plotted is the normal density with mean  $\mu_T = \log(S_0) + (r - q - \frac{\sigma^2}{2})T$  and standard deviation  $\sigma_T = \sigma \sqrt{T}$

# Multi Step Trees and Black and Scholes Model

- It is evident that the probability distribution of  $\log(S_T)$  implied by the binomial tree is the same as the normal distribution.  
- The option price from the binomial tree is given by

$$
c = E ^ {*} \left[ e ^ {- r T} \max (S _ {T} - K, 0) \right] = \sum_ {j = 1} ^ {n} e ^ {- r T} \max (S _ {n, j} - K, 0) Q _ {n, j} ^ {*}
$$

- where  $Q_{n,j}^{*}$  is the risk neutral probability of  $S_{n,j}$ .<sup>2</sup>
- Using the approximation that  $S_{T}$  is log-normally distributed, denote

$f(S_{T}) = \operatorname{Log}$  normal distribution with mean  $\mu_{T}$  and standard deviation  $\sigma_{T}$

- Then, we obtain the statement that as  $n$  increases, the call option is given by:

$$
c = \int_ {0} ^ {\infty} e ^ {- r T} \max (S _ {T} - K, 0) f (S _ {T}) d S _ {T}
$$

- This formula leads to Black and Scholes formula, discussed in next teaching notes.

# Conclusions

- Binomial trees are very useful tools for derivative pricing.
- They can be easily programmed on computers to carry out the backward procedure to compute the value of any derivative security.  
- Moreover, we can use them to compute the positions in the dynamic replication portfolio.  
- Under a particular assumption on how we build the tree, as the number of steps  $n$  increases, the distribution at maturity converges to a log-normal distribution, the key assumption in Black-Scholes model.  
- As we will see, we can also use binomial trees to compute the value of American options (much harder than Europeans) as well as to carry out Monte Carlo simulations, and price more complicated exotic securities.
- Risk neutral pricing is another useful tool for pricing securities
- It is a tool, and it is not the assumption that agents are risk neutral. They are not in our models.  
- The risk neutral methodology stems from the fact that we can use a replicating portfolio to hedge the exposure from a derivative security.

* The hedge eliminates all of the risk in the total position (e.g. short derivative and long replicating portfolio)
* $\Longrightarrow$  we can choose the probabilities on the tree to make computations simpler.

# Financial Instruments

