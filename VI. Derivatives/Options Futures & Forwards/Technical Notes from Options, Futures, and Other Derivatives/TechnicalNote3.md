---
aliases:
  - Warrant Valuation When Value of Equity Plus Warrants Is Lognormal
tags:
key_concepts:
parent_directory: Technical Notes from Options, Futures, and Other Derivatives
cssclasses: academia
title: Technical Note No. 3 - Warrant Valuation When Value of Equity Plus Warrants Is Lognormal
linter-yaml-title-alias: Technical Note No. 3 - Warrant Valuation When Value of Equity Plus Warrants Is Lognormal
---

# Technical Note No. 3*  

Options, Futures, and Other Derivatives  
John Hull

# Warrant Valuation When Value of Equity Plus Warrants Is Lognormal

This note describes how warrants (or other stock options) can be valued if there is a single warrant issue and the value of the warrants plus the equity is assumed to be lognormal. It should be emphasized that the result presented here is of theoretical rather than practical interest. In practice a company usually has many warrant (and executive stock option) issues outstanding. There are in practice many reasons why the equity of a firm is not lognormal and the existence of warrants is probably not the most important one.

It is important to realize that in practice warrants and executive stock options are valued in exactly the same way as other over-the-counter and exchange-traded options on the company's stock. The issue of the stock price distribution at warrant maturity should not be confused with the dilution issue. (As explained in the text dilution takes place when a warrant or executive stock option issue is first announced.)

Consider a company with  $N$  outstanding shares and  $M$  outstanding European options. Suppose that each option entitles the holder to purchase a share from the company at time  $T$  at a price of  $K$  per share.

Define  $V$  is the value of the company's equity (including the warrants) and  $V_{T}$  as the value of  $V$  at time  $T$ . If the warrant holders exercise, the company receives a cash inflow from the payment of the exercise price of  $MK$  and the value of the company's equity increases to  $V_{T} + MK$ . This value is distributed among  $N + M$  shares so that the share price immediately after exercise becomes

$$
\frac {V _ {T} + M K}{N + M}
$$

The payoff to the warrant holder if the warrant is exercised is, therefore,

$$
\left(\frac {V _ {T} + M K}{N + M} - K\right)
$$

or

$$
\frac {N}{N + M} \left(\frac {V _ {T}}{N} - K\right)
$$

The warrants should be exercised only if this payoff is positive. The payoff to the warrant holder is, therefore,

$$
\frac {N}{N + M} \max \left(\frac {V _ {T}}{N} - K, 0\right)
$$

This shows that the value of the warrant is the value of

$$
\frac {N}{N + M}
$$

regular call options on  $V$

The value of  $V$  at time zero is given by

$$
V _ {0} = N S _ {0} + M W
$$

where  $S_0$  is the stock price at time zero and  $W$  is the warrant price at that time, so that

$$
\frac {V _ {0}}{N} = S _ {0} + \frac {M}{N} W
$$

The Black-Scholes formula in equation (15.20) of the book, therefore, gives the warrant price  $W$  if

1. The stock price  $S_0$  is replaced by  $S_0 + (M / N)W$ .  
2. The volatility  $\sigma$  is the volatility of the shares plus the warrants, not just the shares).  
3. The formula is multiplied by  $N / (N + M)$ .

When these adjustments are made we end up with a formula for  $W$  as a function of  $W$ . This can be solved numerically.