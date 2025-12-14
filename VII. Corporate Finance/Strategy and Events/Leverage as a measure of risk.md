# Leverage as a measure of risk

D. L. Chertok†

January 20, 2009

# SUMMARY

Leverage is treated as a measure of risk factor sensitivity. It can be computed using the "equivalent security" approach to determine "bucketized risk".

# 1 Justification

The unfolding financial crisis has brought the issue of leverage into the limelight. "Overleveraging" is often blamed for the demise of structured finance yet the issue is often viewed from the traditional, purely accounting standpoint. This technical note expands the concept of leverage to derivative products and provides a tool for assessing its impact when the "traditional" approach does not work. The intended audience is non-technical practitioners interested in controlling portfolio risks associated with leverage.

# 2 Accounting and risk-based leverage

Accounting leverage can be defined as

$$
L = \frac {\text {a s s e t s}}{\max \left\{\text {e q u i t y} , 0 \right\}} = \frac {\text {a s s e t s}}{\max \left\{\text {a s s e t s} - \text {l i a b i l i t i e s} , 0 \right\}}. \tag {1}
$$

It follows from Eq. (1) that as the value of liabilities approaches that of assets, the leverage of the portfolio grows infinitely. This is not an unduly restrictive assumption for traditional portfolios since in this case the liquidation of the portfolio (e.g., due to bankruptcy) is a rational consequence.

Let us illustrate this with an example.

Example 1 Suppose that you bought a house last year for $500,000 with $50,000 as a down payment. Considering this house as a self-contained real estate portfolio, its assets last year were $500,000, its equity portion (total assets less

liabilities ) was $50,000, so its accounting leverage was  $\frac{\$500,000}{\$50,000} = 10$ . If the value of your house this year grows by 10% to $550,000, your equity increases by 100% to $100,000. If your house value drops to $450,000, your equity decreases by 100% ( disappears ).

In this example, a  $10\%$  return on assets (ROA) ( $\frac{50,000}{500,000} = 10\%$ ) results in a  $100\%$  return on equity (ROE), and a  $-10\%$  ROA ( $\frac{-50,000}{500,000} = -10\%$ ) yields a  $-100\%$  ROE. From (1),

$$
L (t _ {0}) = \frac {\text {a s s e t s} (t _ {0})}{\text {e q u i t y} (t _ {0})} = \frac {\frac {P \& L (t _ {0} , t _ {1})}{e q u i t y (t _ {0})}}{\frac {P \& L (t _ {0} , t _ {1})}{\text {a s s e t s} (t _ {0})}} = \frac {\frac {\text {c h a n g e i n e q u i t y} (t _ {0} , t _ {1})}{e q u i t y (t _ {0})}}{\frac {\text {c h a n g e i n a s s e t s} (t _ {0} , t _ {1})}{\text {a s s e t s} (t _ {0})}} = \frac {R O E}{R O A}, \tag {2}
$$

which gives us an alternative definition of leverage. Note here that this definition only makes sense under the going concern assumptions, i.e., in situations where the portfolio has sufficient equity to prevent liquidation. In fact, if your house value increases to \(550,000 (and your debt doesn't change), your leverage falls to \frac{550,000}{550,000 - 450,000} = 5.5\). If your house value decreases to \)450,000 (or less) under the same assumptions, your leverage becomes infinite: \(\frac{450,000}{450,000 - 450,000} = \infty\), and (2) becomes meaningless.

Example 2 (see [1]) Suppose you bought a 3-month European call option struck at $80 on a stock currently trading at $75. Here the underlying stock plays the role of an asset and the call itself plays the role of equity. Assuming (annualized) implied volatility of 20% and simple 3-month risk-free rate at 0.1%, the price of this call is $1.22 and its delta is Δ = 0.28¹. Accounting leverage as defined by (1) is equal to 1, since you bought the option with your own money. Risk-based leverage defined by (2), however, is

$$
L \left(t _ {0}\right) = \frac {\frac {\text {c h a n g e i n e q u i t y} \left(t _ {0} , t _ {1}\right)}{\text {e q u i t y}}}{\frac {\text {c h a n g e i n a s s e t s} \left(t _ {0} , t _ {1}\right)}{\text {a s s e t s}}} = \Delta \frac {\text {a s s e t s}}{\text {e q u i t y}} = 0. 2 8 \frac {7 5}{1 . 2 2} = 1 7, \tag {3}
$$

which makes sense: a  $\frac{\$2}{\$75} = 2.7\%$  change in the (underlying) asset price leads to a  $\frac{\$0.55}{\$1.22} = 45\%$  change in equity, and the ratio of the second to the first is 17. Clearly, any reference to "borrowed money" is irrelevant in this case.

Summarizing,

- accounting leverage is irrelevant to derivative securities as a measure of risk;  
- risk-based leverage captures risk better than accounting leverage;  
- risk-based leverage yields the same result as accounting leverage for "traditional" assets;  
- risk-based leverage is a dynamic measure, i.e., it requires that asset and equity P&L be known, whereas accounting leverage is a static measure not requiring such knowledge.

# 3 Application of risk-based leverage to portfolio management

As follows from Section 2, risk-based leverage, and not accounting leverage, is an appropriate measure for a portfolio that includes derivative products ( futures, swaps, options and other exotics). In this case, "equity" is the current portfolio net asset value ( NAV ). It is unclear, however, how "assets" can be defined in the case of a complex portfolio. A case can be made for the following algorithm:

- select an easy-to-analyze "equivalent (non-derivative) security" from some intuitive considerations, e.g., a bond with the same duration as the portfolio or a 10-yr Treasury note;  
- calculate DV01 of the equivalent security per $1 notional:

$$
D V 0 1 _ {e q. s e c.} = \frac {P V _ {\S 1} (c u r v e _ {u p _ {1 0 b . p .}}) - P V _ {\S 1} (c u r v e _ {d o w n _ {1 0 b . p .}})}{2 0} \tag {4}
$$

- find a "perfect hedge" for the portfolio in terms of the equivalent security, i.e., find the notional amount of this security that has the same DV01 as our portfolio, i.e.,

$$
N _ {e q. s e c} = \frac {D V 0 1 _ {p o r t}}{D V 0 1 _ {e q . s e c .}} \tag {5}
$$

- the amount of assets required for (2) is equal to the notional amount found above.

Example 3 Suppose that portfolio DV01 is DV01_port = $500,000 which is calculated by moving the interest rate curve (assuming that we are only concerned with one currency) up and down by 10 b.p. Suppose further that DV01 of a 10-year Treasury note is DV01_TY($1) = $0.001 per $1 notional. Then the equivalent assets will be DVO1_port / DV01_TY($1) = 500,000 / 0.001 = $500,000,000. If the current value of the portfolio is $50,000,000, then equivalent risk-based leverage is $500,000,000 / $50,000,000 = 10.

Clearly, any number of equivalent assets can be used to calculate portfolio leverage in the general case. One could expand the definition in (2) to include leverage with respect to a collection of "base assets", e.g., 2, 3, 5, 10 and 30-year (on-the-run) Treasury notes. If it is possible to construct a unique portfolio decomposition as presented by (4) - (5), one can perform "sensitivity analysis" with respect to each equivalent security separately. Such analysis would capture "bucketized risk", i.e., exposure to different parts of the interest rate curve. Using an equivalent asset approach yields a more comprehensive picture of the overall portfolio risk compared to the one painted by accounting leverage.

# Appendix A Calculation of option price and  $\Delta$  in Example 1

The Black-Scholes equation for the call price (see, e.g., [2]) yields:

$$
c = S N \left(d _ {1}\right) - K e ^ {- r T} N \left(d _ {2}\right), \tag {A.1}
$$

$$
d _ {1} = \frac {\ln \left(\frac {S}{K}\right) + \left(r + \frac {\sigma^ {2}}{2}\right) T}{\sigma \sqrt {T}}, \tag {A.2}
$$

$$
d _ {2} = d _ {1} - \sigma \sqrt {T}, \tag {A.3}
$$

$$
N (x) = \frac {1}{\sqrt {2 \pi}} \int_ {- \infty} ^ {x} e ^ {- \frac {y ^ {2}}{2}} d y, \tag {A.4}
$$

where

$c$  - call price,

$S$  - spot price of the underlying stock  $= 75$

$N$  - cumulative distribution function of the standard normal distribution,

$K$  - call strike  $= 80$

$r$  - simple 3-month risk-free rate  $= 0.1\% = 0.001$

$T$  -time to option expiry in years  $= 0.25$

$\sigma$  -volatility of the price of the underlying stock  $= 20\% = 0.2$

Differentiating (A.1) - (A.4) with respect to  $S$ , we obtain  $\frac{\partial c}{\partial S} = \Delta = N(d_1)$ . Substituting the numbers from Ex. 1 into (A.1) - (A.4), we obtain  $c = 1.22$  and  $\Delta = 0.28$ .

# References

[1] D. Goldman. Seeing is not believing: Fund of funds and hedge fund risk assessment and transparency, survival and leverage. Working paper, MeasuriskTM, 2003.  
[2] J. Hull. Options, Futures and Other Derivatives. Prentice Hall, 6th edition, 2006.