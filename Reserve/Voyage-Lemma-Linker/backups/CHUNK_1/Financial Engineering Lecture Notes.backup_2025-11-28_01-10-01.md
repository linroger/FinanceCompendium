---
tags:
  - binomial_option_pricing
  - martingale_pricing_theory
  - fixed_income_securities
  - term_structure_models
  - black_scholes_model
  - forwards_swaps_futures
key_concepts:
  - risk_neutral_valuation
  - replicating_portfolio_strategy
  - duration_and_convexity
  - arbitrage_free_pricing
  - american_option_early_exercise
  - interest_rate_derivatives
  - value_at_risk_measurement
  - optimal_execution_strategies
aliases: []
cssclasses: academia
---

# Financial Engineering Lecture Notes

## Deterministic Cash-Flows

## 1 Basic Theory Of Interest

Cash-flow Notation: We use $(c_0, c_1, \ldots, c_i, \ldots, c_n)$ to denote a series of cash-flows where $c_i$ is received at time $t = i$. The length of a period, i.e. the interval of time between $t = i$ and $t = i + 1$, will usually be understood from the context. Negative cash-flows refer to cash payments. The initial cash-flow, $c_0$, will often be negative while the remaining cash-flows are positive. This situation models the cash-flows of many securities such as stocks and bonds. In such circumstances, $c_0$ denotes the cost of the security, while later cash-flows refer to dividends, coupons or sale receipts which are all positive.

### 1.1 Principal And Interest

Definition 1 If \$A is invested in an account for $n$ periods with a simple interest rate of $r$ per period, then after $n$ periods the account will be worth \$A(1 + rn).

Definition 2 If \$A is invested in an account for $n$ periods with a compound interest rate of $r$ per period, then after $n$ periods the account will be worth \$A(1 + r)^n$.

Interest rates are usually quoted on an annualized basis, even if the compounding period is less than a year. For example, the phrase "10% interest, compounded quarterly" implies that an investment of $A$ will be worth $A(1 +0.1 / 4)^{4}$ one year later. Similarly, the phrase "10% interest, compounded semi-annually" implies that an investment of $A$ will be worth $A(1 +0.1 / 2)^{2}$ after one year. In general, if there are $n$ compounding periods per year and the interest rate is $r\%$, then an investment of $A$ will be worth $V = A(1 + r / n)^{mn}$ after $m$ years.

Definition 3 Continuous compounding refers to the situation where we let the length of the compounding period go to
0. That is, after $m$ years we see that an investment of $A$ will be worth

$$
\lim _ {n \to \infty} A (1 + r / n) ^ {mn} = A e ^ {rm}.
$$

Definition 4 The effective interest rate is that rate which would produce the same result if compounding were done per year rather than per period.

So if the length of a compounding period is one year, the effective interest rate is the same as the quoted or nominal rate. For example, $A$ invested for 1 year at $10\%$ interest, compounded quarterly, will be worth $1.1038A$ and so the effective interest rate is $10.38\%$.

### 1.2 Present And Future Values Of Cash Flow Streams

The value of \$1 today is clearly not the same as the value of \$1 next year. However, the simple concepts of present value and future value allow us to fairly compare cash flows that occur at different dates. For example \$1 invested today at t = 0 would be worth \$(1 + r) next year at t = 1 assuming annual compounding. So for

$r > 0$, we can conclude that \$1 at $t = 0$ is worth more than \$1 at $t = 1$.

We can then reverse the argument to say that \$(1+r) at t = 1 is worth \$1 at t =
0. That is, the present value of \$(1+r) at t = 1 is \$1. We say that we are discounting the cash flow at t = 1 back to t =
1. Likewise the future value at t = 1 of \$1 at t = 0 is \$(1+r). More generally, the present value of the cash-flow, ($c_{0}$, $c_{1}$,..., cn), is

$$
PV = c _ {0} + \frac {c _ {1}}{1 + r} + \frac {c _ {2}}{(1 + r) ^ {2}} + \dots + \frac {c _ {n}}{(1 + r) ^ {n}}
$$ where we have assumed compounding is done per period. Likewise, the future value (at $t = n$ ) of the cash-flow is

$$
FV = PV (1 + r) ^ {n} = c _ {0} (1 + r) ^ {n} + c _ {1} (1 + r) ^ {n - 1} + c _ {2} (1 + r) ^ {n - 2} + \ldots + c _ {n}.
$$

You must be careful to observe the compounding convention. For example, if cash-flows occur yearly, interest rates are quoted on an annual basis (as usual) but are compounded $m$ times per year then

$$
PV = c _ {0} + \frac {c _ {1}}{(1 + r / m) ^ {m}} + \frac {c _ {2}}{(1 + r / m) ^ {2 m}} + \dots + \frac {c _ {n}}{(1 + r / m) ^ {nm}}
$$ and

$$
FV = PV (1 + r / m) ^ {nm}.
$$

Note that the individual cash flows, $c_{i}$, may be positive or negative.

### 1.3 Internal Rate Of Return

(Irr) Definition 5 Given a cash flow stream $(c_0, c_1, \ldots, c_n)$, the internal rate of return
(IRR) is a number, $r$, that satisfies

$$
0 = c _ {0} + \frac {c _ {1}}{1 + r} + \frac {c _ {2}}{(1 + r) ^ {2}} + \dots + \frac {c _ {n}}{(1 + r) ^ {n}}. \tag {1}
$$

- In most contexts, $c_{0}$ will be negative and we can interpret it as the price paid today for the cash flow stream, $(c_{1},\ldots, c_{n})$. Then $r$ is just the number that makes this a "fair deal".
- If we let $z = 1 / (1 + r)$ we can see that (1) is a polynomial in degree $n$. In general, (1) could then have zero, one or as many as $n$ real roots so it is not always clear what the appropriate value of $r$ is. (But see the following exercise.)

Exercise 1 Show that when $c_0 < 0$ and $c_k \geq 0$ for all $k \geq 1$, there exists a unique positive root, $z^*$, to the equation

$$
0 = c _ {0} + c _ {1} z + c _ {2} z ^ {2} + \dots + c _ {n} z ^ {n}.
$$

Furthermore, if $\sum_{k=0}^{n} c_k > 0$, then show the corresponding IRR, $r = 1/z^* - 1$, is positive.

- Even when we know that there exists a unique positive solution to (1), we usually have to solve for it numerically.

### 1.4 Project Evaluation Criteria: Npv Versus Irr

Many investment problems may be formulated as the problem of optimally allocating funds among a number of competing projects. The word project is significant as it usually implies that the projects cannot be scaled up or down. For example, a project may represent developing an oil field or introducing a new product to a market and the level of investment required for such projects is usually fixed<sup>3</sup>. These investment allocation problems are often called capital budgeting problems and they constitute an important<sup>4</sup> topic in corporate finance.

When faced with a capital budgeting problem, we need to be able to evaluate the competing projects so that the appropriate decision can be made. There are a number of different criteria available for evaluating projects but the two most common are Net Present Value
(NPV) and Internal Rate of Return
(IRR) .

The NPV criterion amounts to selecting the project with the highest present value<sup>5</sup> while the IRR criterion amounts to selecting the project with the highest IRR. It is widely believed by theorists that the NPV criterion, when correctly applied, is the correct criterion. However, conflicting recommendations can often be reconciled<sup>6</sup> when common sense is applied.

A particular difficulty that arises when applying the NPV criterion is that of choosing the correct discount factor. This problem does not arise when cash flows are deterministic in which case the appropriate risk-free interest rates should be used for discounting. More generally, however, it is not always clear how to discount cash flows that are stochastic since the riskiness of the cash-flows also needs to be considered. This is an important problem in financial economics and financial engineering. In fact, the problem of pricing derivative securities can also be viewed as one of choosing the appropriate stochastic discount factor.

### 1.5 Further Examples And Applications

#### Example 1 (Sunk Costs (Exercise 2.6 In Luenberger))

A young couple has made a non-refundable deposit of the first month's rent (equal to \$1,000) on a 6-month apartment lease. The next day they find a different apartment that they like just as well, but its monthly rent is only $900. They plan to be in the apartment only 6 months. Should they switch to the new apartment? What if they plan to stay 1 year? Assume an interest rate of 12%.

Solution: Different interpretations are possible here. For example, the deposit may never be refundable and therefore represent a brokerage free that is paid up front. Alternatively, the deposit may be non-refundable only if the couple choose not to take the apartment. We will adopt the latter interpretation but note that regardless of the interpretation, the important aspect of this example is that sunk costs are exactly that: sunk!

(a) Compare the two alternatives.

1. Stay in the original apartment, for an NPV, $C_1$, given by

$$
C _ {1} = - \sum_ {i = 0} ^ {5} \frac {1000}{1.12 ^ {i}} + \frac {1000}{1.12 ^ {6}} \approx - 4,222.
$$

2. Take the new apartment where we assume a security deposit is again required. The NPV then is

$$
C _ {2} = - 900 - \sum_ {i = 0} ^ {5} \frac {900}{1.12 ^ {i}} + \frac {900}{1.12 ^ {6}} \approx - 4700.
$$

The couple should then take the $1000 apartment.

(b) You can do this as an exercise. What result do you expect?

#### Example 2 (An Appraisal (Exercise 2.9 In Luenberger))

You are considering the purchase of a nice home. It is in every way perfect for you and in excellent condition, except for the roof. The roof has only 5 years of life remaining. A new roof would last 20 years, but would cost \$20,000. The house is expected to last forever. Assuming that costs will remain constant and that the interest rate is 5%, what value would you assign to the existing roof?

Solution: We know a new roof costs 20,000 and that it lasts 20 years. We can therefore infer the value per year, $A$, of a roof by solving

$$
2 0,000 = \sum_ {i = 0} ^ {1 9} \frac {A}{1.05 ^ {i}}.
$$

We find that $A = 1,528.4$. If $V$ is the value of a roof that has 5 years of life remaining, we can obtain that $V = 6,948$.

Exercise 2 Find an alternative method for solving the problem in Example 2?

#### Example 3 (Valuation Of A Firm)

A simple model that is sometimes used to determine the value of a corporation is the Gordon Growth Model. It assumes that there is a constant interest rate, $r$, and that dividends are paid annually and grow at a rate of $g$. The value of the firm may then be expressed as

$$
V _ {0} = \frac {D _ {1}}{1 + r} + \frac {D _ {1} (1 + g)}{(1 + r) ^ {2}} + \dots = D _ {1} \sum_ {k = 1} ^ {\infty} \frac {(1 + g) ^ {k - 1}}{(1 + r) ^ {k}}
$$ so that we obtain $V_{0} = D_{1} / (r - g)$ for $g < r$.

- Clearly $V_{0}$ is very sensitive to changes in $g$ and $r$ when $g \approx r$. For this reason, the Gordon model has been used to provide some intuition for the volatility of growth stock prices; e.g. internet, biotech stocks.
- Obviously this model is very simple and is easy to generalize. For example, we could assume that dividends only grow for a certain fixed number of years, possibly beginning at some future date.
- More realistic models should of course assume that dividends are stochastic. Moreover, since dividend policy is set by directors, we might prefer to focus not on dividends, but instead on the underlying cash flows of the corporation.

## 2 Fixed Income Securities

Traditionally, the term fixed income securities refers to securities whose cash flows are fixed in advance and whose values therefore depend largely on the current level of interest rates. The classic example of a fixed income security is a bond which pays a fixed coupon every period until expiration when the final coupon and original principal is paid. A stock, on the other hand, is the classic example of a non-fixed income security as the dividend payments (if they exist) and stock value vary stochastically through time. It should be mentioned, however, that since interest rates vary stochastically through time, so too do bond prices. Furthermore, many securities (e.g. convertible bonds) have fixed-income and non-fixed-income characteristics so the distinction is often blurred.

### 2.1 Annuities, Perpetuities And Amortization

Definition 6 An annuity is a contract that periodically pays a predetermined amount of cash over some interval of time.

Traditionally annuity payments were made on an annual basis (hence the term 'annuity') and the interval of time was fixed. However, there are many variations. Pensions, for example, sometimes periodically pay a pre-determined amount of cash until a random time, $T$, usually the time of death of the recipient or the recipient's spouse.

Definition 7 A perpetual annuity or a perpetuity pays a fixed amount of cash periodically for ever.

Perpetuities are rare but do exist in some countries. In the UK, for example, they are called consols. A perpetuity is easily priced. Suppose it pays a fixed amount, $A$, per period beginning at the end of the current period, and that the interest rate per period is $r$. Then the price, $P$, of the perpetuity satisfies

$$
P = \sum_ {k = 1} ^ {\infty} \frac {A}{(1 + r) ^ {k}} = \frac {A}{r}. \tag {2}
$$

The price of an annuity that pays $A$ per period beginning at the end of the current period for a total of $n$ periods, satisfies

$$
P = \sum_ {k = 1} ^ {n} \frac {A}{(1 + r) ^ {k}} = \frac {A}{r} \left(1 - \frac {1}{(1 + r) ^ {n}}\right). \tag {3}
$$

As always, the formulae in (2) and (3) depend on the compounding convention and how interest rates are quoted. They may also be inverted to express $A$ as a function of $P$. For example, we may also write (3) in the form

$$
A = \frac {r (1 + r) ^ {n} P}{(1 + r) ^ {n} - 1}. \tag {4}
$$

This form of the annuity pricing formula is useful for determining the periodic payments that correspond to a fixed value, $P$. It is also useful for amortization, which is the process of substituting periodic cash payments for an obligation today.

### 2.2 Yield-To-Maturity

The yield-to-maturity
(YTM) of a bond is the interest rate (always quoted on an annual basis) that makes the present value of all associated future payments equal to the current value of the bond. In particular, the YTM is exactly the IRR of the bond at the current price. The YTM, $\lambda$, therefore satisfies

$$
P = \sum_ {k = 1} ^ {n} \frac {C / m}{[ 1 + (\lambda / m) ] ^ {k}} + \frac {F}{[ 1 + (\lambda / m) ] ^ {n}} = \frac {C}{\lambda} \left[ 1 - \frac {1}{[ 1 + (\lambda / m) ] ^ {n}} \right] + \frac {F}{[ 1 + (\lambda / m) ] ^ {n}} \tag {5}
$$ where $F$ is the face value of the bond, $C$ is the annual coupon payment, $m$ is the number of coupon payments per year, $n$ is the exact total number of coupon payments remaining, and it is assumed that compounding is done $m$ times per year.

A lot of information is present in equation (5). In particular, it may be seen that $P$ is a decreasing function of $\lambda$. When $\lambda = 0$, the bond price is simply the sum of the future payments, while if $\lambda = C / F$, then we obtain $P = F$. Different bonds can have different yields but they generally track one another quite closely, particularly when the bonds have similar maturities. It should also be emphasized that bond yields, and therefore bond prices, generally change stochastically through time. Hence bonds are risky securities, despite the fact that their payment streams are fixed<sup>7</sup>.

### 2.3 Macauley Duration

Consider a financial security that makes payments $m$ times per year for a total of $n$ periods. Then if $\lambda$ is the YTM of the security, we define its Macauley duration, $D$, to be

$$
D = \frac {\sum_ {k = 1} ^ {n} (k / m) c _ {k} / [ 1 + (\lambda / m) ] ^ {k}}{P} \tag {6}
$$ where $P$ is the present value of the security, and $c_k$ is the payment made in the $k^{th}$ period. Note that $D$ is a weighted average of the times at which the payments are made, where the weight at period $k$ is the contribution of $c_k$ to the present value of the security. In particular, time and duration have the same units and $D$ satisfies $0 \leq D \leq T$ where $T$ is the maturity time of the instrument.

Exercise 3 What is the duration of a zero-coupon bond?

The duration of a security may be interpreted as the length of time one has to wait in order to receive the security's payments<sup>8</sup>. We will soon see how it gives a measure of interest rate sensitivity and how it can be used to immunize a bond against adverse interest rate movements. In the case of a bond that has a coupon rate of $c$ per period and yield $y$ per period<sup>9</sup>, the summation in (6) may be simplified to obtain

$$
D = \frac {1 + y}{my} - \frac {1 + y + n (c - y)}{mc [ (1 + y) ^ {n} - 1 ] + my}. \tag {7}
$$

### 2.4 Convexity

We define the convexity, $C$, of a financial security with YTM $\lambda$ to be

$$
C = \frac {1}{P} \frac {d ^ {2} P}{d \lambda^ {2}}. \tag {8}
$$

For the financial security described above we obtain<sup>10</sup>

$$
C = \frac {1}{P [ 1 + (\lambda / m) ] ^ {2}} \sum_ {k = 1} ^ {n} \frac {k (k + 1)}{m ^ {2}} \frac {c _ {k}}{[ (1 + (\lambda / m) ] ^ {k}}. \tag {9}
$$

We will now see how duration and convexity may be used to immunize a bond against adverse changes in interest rates, or to be more precise, yield-to-maturity.

### 2.5 Immunization

Let $P(\lambda)$ be the price of a financial security (or a portfolio of financial securities) when the YTM is $\lambda$. Then a simple second-order Taylor expansion implies (check!)

$$
\begin{array}{l} {P (\lambda + \Delta \lambda)} \approx {P (\lambda) + \Delta \lambda \frac {d P}{d \lambda} (\lambda) + \frac {(\Delta \lambda) ^ {2}}{2} \frac {d ^ {2} P}{d \lambda^ {2}} (\lambda)} \\ = P (\lambda) - D _ {M} P (\lambda) \Delta \lambda + \frac {P (\lambda) C}{2} (\Delta \lambda) ^ {2} \tag {10} \\ \end{array}
$$ where

$$
D _ {M}:= \frac {D}{1 + \lambda / m}
$$ is called the modified duration<sup>11</sup>.

Consider now a portfolio of $n$ securities where we use $P_{k}$, $D_{k}$ and $C_{k}$ to denote the present value, duration and convexity of the $k^{th}$ security, $1 \leq k \leq n$. Let $P_{p}$, $D_{p}$ and $C_{p}$ denote the present value, duration and convexity of the overall portfolio. It is easy to check (do it) that $P_{p}$, $D_{p}$ and $C_{p}$ satisfy

$$
P _ {p} = \sum_ {k = 1} ^ {n} P _ {k}
$$

$$
D _ {p} = \sum_ {k = 1} ^ {n} \frac {P _ {k}}{P _ {p}} D _ {k}
$$

$$
C _ {p} \quad = \quad \sum_ {k = 1} ^ {n} \frac {P _ {k}}{P _ {p}} C _ {k}.
$$

Suppose now that we own a portfolio (which may have negative value) of fixed income securities, and the current value of this portfolio is $P_{o}$. As $\lambda$ changes, so will $P_{o}$, but in many circumstances we would like $P_{o}$ to remain constant and not change as $\lambda$ changes. We can effectively arrange for this by adding securities to our portfolio in such way that we are immunized against changes in $\lambda$.

The Taylor expansion in (10) implies that we can do this by adding securities to our portfolio in such a way that the combined present value, duration and convexity of the new securities match the present value, duration and convexity of the original portfolio<sup>12</sup>. To do this, we generally need to add at least three securities to our portfolio. If we just use duration to immunize, then we generally only need to add two securities to the portfolio. The following example illustrates how to do this.

# Example 4 (Immunizing A Cash Flow)

Suppose the current YTM is $8\%$ and we have an obligation<sup>13</sup> to pay 1 million dollars in 7 years. We wish to immunize this obligation by purchasing a portfolio of bonds in such a way that the value, duration and convexity of the obligation and bond portfolio coincide. Because this involves three equations, we will need at least three bonds in our portfolio. There are two 6-year bonds, with coupon rates $7\%$ and $10\%$, and a 9-year bond with coupon rate $2\%$, available. Let $P_{1}$, $P_{2}$ and $P_{3}$ be the dollar amount invested in each of the three bonds, respectively. We must then solve the following equations:

$$
P _ {o} = P _ {1} + P _ {2} + P _ {3} \tag {11}
$$

$$
D _ {o} = \frac {P _ {1}}{P _ {o}} D _ {1} + \frac {P _ {2}}{P _ {o}} D _ {2} + \frac {P _ {3}}{P _ {o}} D _ {3} \tag {12}
$$

$$
C _ {o} = \frac {P _ {1}}{P _ {o}} C _ {1} + \frac {P _ {2}}{P _ {o}} C _ {2} + \frac {P _ {3}}{P _ {o}} C _ {3} \tag {13}
$$ where $P_{o}$, $D_{o}$ and $C_{o}$ are the present value, duration and convexity, respectively, of the obligation. We therefore have 3 linear equations in 3 unknowns and we can solve to obtain $P_{1} = 12.78$ million, $P_{2} = -11.63$ million and $P_{3} = -576$ thousand dollars. Note that this means we need to sell short<sup>14</sup> the second and third bonds.

Let us now convince ourselves that we are indeed immunized against changes in $\lambda$. We can consider our overall portfolio to be comprised of two sub- portfolios:
(i) the obligation and
(ii) the portfolio consisting of positions in the three bonds. Moreover, we have arranged it so that the value, duration and convexity of the two sub- portfolios coincide with one another. As a result, if $\lambda$ changes then the values of the two sub- portfolios will change by equal amounts according to (10). However, the changes will be in opposite directions and therefore cancel each other because the first sub-portfolio is an obligation.

These immunization methods are used a great deal in practice and have proven successful at immunizing portfolios of fixed income securities against adverse interest rate movements. This is despite the fact that interest rates are assumed to be flat and only parallel shifts in interest rates are assumed to be possible. Such assumptions are not at all consistent with reality and they do not allow for a satisfactory theory of interest rates.

# 2.6 Further Examples And Applications

# Example 5 (Callable Bond (Exercise 3.5 In Luenberger))

The Z corporation issues a $10 \%$, 20-year bond at a time when yields are $10 \%$. The bond has a call provision that allows the corporation to force a bond holder to redeem his or her bond at face value plus $5 \%$. After 5 years the corporation finds that exercise of this call provision is advantageous. What can you deduce about the yield at that time? (Assume one coupon payment per year.)

Solution: If exercise of the call provision is advantageous, then it must be the case (why?) that

$$
\sum_ {k = 1} ^ {1 5} \frac {. 1}{(1 + \lambda) ^ {k}} + \frac {1}{(1 + \lambda) ^ {1 5}} > 1.05.
$$

In particular, it implies $\lambda < 9.366\%$.

# Example 6 (Need For A Better Theory! (Exercise 3.16 In Luenberger))

Suppose that an obligation occurring at a single time period is immunized (matching duration, but not convexity) against interest rate changes with bonds that have only nonnegative cash-flows. Let $P(\lambda)$ be the value of the resulting portfolio, including the obligation, when the interest rate is $r + \lambda$ and $r$ is the current interest rate. By construction $P(0) = 0$ and $P'(0) = 0$. We will show that $P''(0) \geq 0$, i.e. $P(0)$ is a local minimum. With a yearly compounding convention, the discount factor for time $t$ is $d_t(\lambda) = (1 + r + \lambda)^{-t}$. Without loss of generality it is assumed that the magnitude of the obligation is 1 and it is due at time $\bar{t}$.

If $c_t$ are the cash-flows of the bonds that have been used to immunize the obligation, the following equations must be satisfied (why?):

$$
P (0) = \sum_ {t} c _ {t} d _ {t} - d _ {\bar {t}} = 0 \tag {14}
$$

$$
P ^ {\prime} (0) (1 + r) = \sum_ {t} tc _ {t} d _ {t} - \bar {t} d _ {\bar {t}} = 0. \tag {15}
$$

(a) Show that for all values of $\alpha$ and $\beta$ there holds

$$
P ^ {\prime \prime} (0) (1 + r) ^ {2} = \sum_ {t} \left(t ^ {2} + \alpha t + \beta\right) c _ {t} d _ {t} - (\bar {t} ^ {2} + \alpha \bar {t} + \beta) d _ {\bar {t}}. \tag {16}
$$

(b) Show that $\alpha$ and $\beta$ can be selected so that the function $t^2 +\alpha t + \beta$ has a minimum at $\bar{t}$ and has a value of 1 there. Use these values to conclude that $P''(0)\geq 0$

# Solution

(a) Use equations (14) and (15) to obtain (16).
(b) Choose (why?) $\alpha = -2\bar{t}$ and $\beta = 1 + \bar{t}^2$. Using (14) we therefore see that $P''(0) \geq 0$.

Remark 1 The result of the previous example is significant. It seems to say that we can make money from nothing
(arbitrage) if we assume that interest rates can only move in parallel. While duration and convexity are used a lot in practice and often result in a well immunized portfolio, this result highlights the need for a more sophisticated theory of interest rates. See Example 9 for a more explicit example where a model that only permits parallel movements in interest rates affords an arbitrage opportunity.

## 3 The Term Structure Of Interest Rates

Until now, we have discussed a bond's yield-to-maturity and how this concept, together with duration and convexity, may be used to immunize or hedge the cash-flow of a fixed income portfolio. We have also mentioned that bond prices in the real world are stochastic (hence the need for immunization techniques), but we have not discussed the precise stochastic nature of bond price processes. Any theory of these processes, and the stochastic evolution of interest rates more generally, should possess at least two qualities: it should provide an adequate fit to real observed data, and it should preclude arbitrage possibilities. Towards this end, it is necessary to develop a much more sophisticated theory of interest rates. This need is evidenced in part by the existence in the real world of bonds with very different YTM's, and by Examples 6 and 9 where we see that arbitrage opportunities can exits in the YTM framework or frameworks where only parallel movements in interest rates are possible. In order to develop a more sophisticated theory of interest rates, we first need to study the term structure of interest rates.

# 3.1 The Term Structure, Discount Factors And Present Values

If a bank lends you money for one year and lends money to someone else for ten years, it is very likely that the rate of interest charged for the one-year loan will differ from that charged for the ten-year loan. Term-structure theory has as its basis the idea that loans of different maturities should incur different rates of interest. This basis is consistent with what we observe in practice and allows for a much richer and more realistic theory than that provided by the yield-to-maturity
(YTM) framework.

We will often assume that there are $m$ compounding periods per year, but it should be clear what changes need to be made for continuous-time models and different compounding conventions. For example, we will also consider models where we compound on a per period basis. Time may be measured in periods or years, but it should be clear from the context what convention we are using.

Spot Rates: Spot rates are the basic interest rates that define the term structure. Usually defined on an annual basis, the spot rate, $s_t$, is the rate of interest charged for lending money from today ( $t = 0$ ) until time $t$. In particular, this implies that if you lend $A$ dollars for $t$ years $^{15}$ today, you will receive $A(1 + s_t / m)^{mt}$ dollars when the $t$ years have elapsed. The term structure of interest rates may be defined to constitute the sequence of spot rates, $\{s_{t_k}: k = 1, \dots, n\}$, if we have a discrete-time model with $n$ periods. Alternatively, in a continuous-time model the set $\{s_t: t \in [0, T]\}$ may be defined to constitute the term-structure. The spot rate curve is defined to be a graph of the spot rates plotted against time. In practice, it is almost always upwards sloping in which case $s_{t_i} < s_{t_j}$ whenever $i < j$.

Discount Factors: As before, there are discount factors corresponding to interest rates, one for each time, $t$. The discount factor, $d_t$, for a deterministic cash-flow occurring $t$ years from now is given by

$$ d _ {t}:= \frac {1}{(1 + s _ {t} / m) ^ {mt}}.
$$

Using these discount factors we can compute the present value, $P$, of any deterministic cash flow stream, $(x_0, x_1, \ldots, x_n)$. It is given by

$$
P = x _ {0} + d _ {1} x _ {1} + d _ {2} x _ {2} + \dots + d _ {n} x _ {n}.
$$ where it is understood that $x_{i}$ is received at time $t_i$ and $d_{i} \coloneqq d_{t_{i}}$.

Example 7 In practice it is quite easy to determine the spot rate by observing the price of U. S. government bonds. Government bonds should be used as they do not bear default risk and so the contracted payments are sure to take place. For example the price, $P$, of a 2-year zero-coupon government bond with face value $100, satisfies $P = 100 / (1 + s_2)^2$ where we have assumed an annual compounding convention.

Forward Rates: A forward rate, $f_{t_1, t_2}$, is a rate of interest $^{16}$ that is agreed upon today for lending money from dates $t_1$ to $t_2$ where $t_1$ and $t_2$ are future dates. It is easy using arbitrage arguments to compute forward rates given the set of spot interest rates. For example, if we express time in periods, have $m$ periods per year, compound per period and quote rates on an annual basis, then we have

$$
(1 + s _ {j} / m) ^ {j} = (1 + s _ {i} / m) ^ {i} \left(1 + f _ {i, j} / m\right) ^ {j - i} \tag {17}
$$ where $i < j$

Exercise 4 Prove that (17) must hold by using an arbitrage argument. (It is very important that you be able to construct these arguments. After a while you should be able to write equations such as (17) that correspond to different compounding conventions without explicitly needing to go through the arbitrage argument.)

Forward Discount Factors: We can also discount a cash flow that occurs at time $j$ back to time $i < j$. The correct discount factor is

$$ d _ {i, j}:= \frac {1}{(1 + f _ {i, j} / m) ^ {j - i}}
$$ where again time is measured in periods and there are $m$ periods per year. In particular, the present value at date $i$ of a cash-flow, $x_{j}$, that occurs at date $j > i$, is given by $d_{i, j} x_{j}$. It is also easy to see that these discount factors satisfy $d_{i, k} = d_{i, j} d_{j, k}$ for $i < j < k$ and they are consistent with earlier definitions.

Short Forward Rates: The term structure of interest rates may equivalently be defined to be the set of forward rates. There is no inconsistency in this definition as the forward rates define the spot rates and the spot rates define the forward rates. We also remark that in an $n$ -period model, there are $n$ spot rates and $n(n + 1)/2$ forward rates. The set<sup>17</sup> of short forward rates, $\{r_k^f: k = 1, \dots, n\}$, is a particular subset of the forward rates that also defines the term structure. The short forward rates are defined by $r_k^f \coloneqq f_{k, k+1}$ and may easily be shown to satisfy

$$
(1 + s _ {k}) ^ {k} = (1 + r _ {0} ^ {f}) (1 + r _ {1} ^ {f}) \dots (1 + r _ {k - 1} ^ {f})
$$ if time is measured in years and we assume $m = 1$.

# Example 8 (Constructing A Zero-Coupon Bond)

Two bonds, A and B both mature in ten years time. Bond A has a 7% coupon and currently sells for $97, while bond B has a 9% coupon and currently sells for $103. The face value of both bonds is $100. Compute the price of a ten-year zero-coupon bond that has a face value of $100.

Solution: Consider a portfolio that buys negative (i.e. is short) seven bonds of type $B$ and buys nine of type $A$. The coupon payments in this portfolio cancel and the terminal value at $t = 10$ is $$200$. The initial cost is $-7 \times 103 + 9 \times 97 = 152$. The cost of a zero with face value equal to $$100$ is therefore $$76$. (The 10-year spot rate, $s_{10}$, is then equal to $2.78\%$.

Remark 2 Note that once we have the zero-coupon bond price we can easily determine the corresponding spot rate. (This was the point of Example 7.)

We now demonstrate that even simple and apparently reasonable term-structure models can contain arbitrage opportunities.

# Example 9 (Arbitrage In A 1-Period Model)

Suppose at $t = 0$ the 1-year, 2-year and 3-year spot rates are given by $10\%$, $11\%$ and $12\%$, respectively. One year from now the 1-year, 2-year and 3-year spot rates rates will either have increased to $[11\%, 12\%, 13\%]$ or decreased to $[9\%, 10\%, 11\%]$. Note that this example assumes that only parallel movements in the spot rates can occur.

If we assume continuous compounding, then we can see that the forward rate, $f_{1,2}$, at $t = 0$ is given by

$$ f_{1,2} = \frac{2(0.11) - 1(0.1)}{1} = 12\%.
$$

This forward rate, however, is higher than either of the possible 1-year spot rates prevailing at $t = 1$ and so there is an arbitrage opportunity.

Exercise 5 Construct a trading strategy that would take advantage of the arbitrage opportunity identified in Example 9.

# 3.2 Term Structure Explanations

There are three well known hypotheses that are commonly used for explaining the observed term structure of interest rates: the expectations hypothesis, the liquidity hypothesis and the market segmentation hypothesis.

Expectations Hypothesis: The expectations hypothesis states that the forward rates, $f_{i, j}$, are simply the spot rates, $s_{j-i}$, that are expected to prevail at time $i$. While this has some intuitive appeal, if the hypothesis was true then the fact that the spot rate curve is almost always upwards sloping would mean (why?) that the market is almost always expecting spot interest rates to rise. This is not the case.

Liquidity Preference Hypothesis: This hypothesis states that investors generally prefer shorter maturity bonds to longer maturity bonds. This is because longer-maturity bonds are generally more sensitive to changes in the general level of interest rates and are therefore riskier. In order to persuade risk-averse individuals to hold these bonds, they need to be sold at a discount, which is equivalent to having higher interest rates at longer maturities.

Market Segmentation Hypothesis: This states that interest rates at date $t_1$ have nothing to do with interest rates at date $t_2$ for $t_1 \neq t_2$. The rationale for this is that short-term securities might be of interest to one group of investors, while longer term securities might be of interest to an altogether different group. Since these investors have nothing in common, the markets for short- and long-term securities should be independent of one another and therefore the interest rates that are set by the market forces of supply and demand, should also be independent. This explanation is not very satisfactory and explains very little about the term structures that are observed in practice.

It is commonly perceived that the term structure is reasonably well explained by a combination of the expectations and liquidity preference hypotheses.

# 3.3 Duration And Immunization

We saw earlier how to immunize portfolios against changes in the YTM when we assumed that a bond's YTM captured all the relevant economic information. Now we have progressed to a term structure of interest rates, and we know how to price a bond given the current term structure without making any reference to the bond's YTM. In this context, however, we could still define a bond's duration and convexity, and use them to immunize against, for example, parallel movements in the term structure. The immunization procedure is very similar<sup>18</sup> to the one described earlier in the YTM context.

# 3.4 Further Examples And Applications

# Example 10 (Floating Rate Bonds)

A floating rate bond is the same as a regular bond except that the coupon payments at the end of a period are determined by the prevailing short rate at the beginning of the period. Since the term structure varies stochastically through time, this implies that the payment stream of a floating rate bond is also stochastic. Nonetheless, it is easy to price such a bond at a reset point by using a simple dynamic programming type argument. In fact, at any such reset point, it can be seen that the value of the floating rate bond is equal to the face value, or par.

The argument works by noting that at the final reset point, the present value must be (why?) par. The same argument can then be iterated back to date $t = 0$.

Remark 3 The above comment regarding the price of floating rate bonds can be useful for pricing interest rate swaps.

# Example 11 (Mortgage Mathematics (Exercise 4.14 In Luenberger))

This example is an introduction to the mathematics of mortgage-backed-securities (MBS's), a class of derivative instruments that play an enormous role in the U. S. mortgage industry and more recently, in the global financial crisis. They are credited with enabling a more efficient allocation of risk and in the process, enabling consumers to obtain much cheaper mortgages.

We assume the initial value of the mortgage is $M = M(0)$, that equal periodic payments of size $B$ are made, and that the interest rate is $r$ per period. We also assume that there are a total of $n$ periods in the mortgage and we use $M(k)$ to denote the mortgage principal after the $k^{th}$ period. Note that after the $n$ payments of size $B$, the mortgage principal and interest have all been paid. This means that each payment, $B$, pays both interest and some of the principal. With this in mind, we can see that $M(k)$ satisfies

$$
M
(k) = (1 + r) M (k - 1) - B \quad \text {for} k = 0,1,2, \dots
$$

This equation can be solved (how?) to obtain

$$
M
(k) = (1 + r) ^ {k} M - \left[ \frac {(1 + r) ^ {k} - 1}{r} \right] B.
$$

Since $M(n) = 0$ we have (see also equation (4))

$$
B = \frac {r (1 + r) ^ {n} M}{(1 + r) ^ {n} - 1}.
$$

We can therefore substitute for $B$ and write

$$
M
(k) = M \frac {(1 + r) ^ {n} - (1 + r) ^ {k}}{(1 + r) ^ {n} - 1}.
$$

Since we know $M(k - 1)$ we can compute the interest, $I(k) = rM(k - 1)$, on $M(k - 1)$ that would be due in the next period. This also means that we can interpret the $k^{th}$ payment as paying $B - rM(k - 1)$ of the remaining principal.

(a) Find the present value, $V$, (at rate $r$ ) of the principal payment stream in terms of $B$, $r$, $n$, $M$.
(b) Find $V$ in terms of $r, n, M$ only.
(c) What is the present value, $W$, of the interest payment stream?
(d) What is the value of $V$ as $n\to \infty$
(e) Which stream do you think has the larger duration: principal or interest?

# Solution

(a) The present value, $V$, of the principal payment stream is given by

$$
V = \frac {n (B - r M)}{1 + r}.
$$

Does this agree with your intuition when $n = 1$?

(b) Substitute for $B$ to obtain

$$
V = \frac {r n M}{(1 + r) [ (1 + r) ^ {n} - 1 ]}.
$$

(c) The present value, $W$, of the interest payment stream satisfies

$$
W = \sum_ {k = 1} ^ {n} \frac {I
(k) }{(1 + r) ^ {k}} = M \frac {(1 + r) ^ {n + 1} - 1 - r - n r}{(1 + r) [ (1 + r) ^ {n} - 1 ]}.
$$

Does this agree with your intuition when $n = 1$?

(d) Check that $V\to 0$ as $n\to \infty$
(e) The principal payment stream has longer duration. Why? What does this say about the relative riskiness of the principal and interest payment streams?

Dynamic programming
(DP) is a very useful tool in financial engineering. It may be used whenever a decision-maker needs to make a sequence of decisions through time. In such circumstances, the decision maker usually needs to find a strategy that will describe her decision in each possible state of the world. $\mathsf{DP}^{19}$ is usually applied when there is uncertainty in the system but it also applies in deterministic settings and that is the setting of Example 12 below.

# Example 12 (Operating A Factory)

You own a lease on a factory that expires worthless exactly three years from now. Each year the factory earns profits that are equal to the value of the factory that prevailed at the beginning of the year. At the end of each year you can either withdraw these profits or reinvest them in the factory, thereby doubling its value. The current value of the factory is $5 million and the interest rate is 20% per year. What strategy should you adopt?

# Solution

The lattice below describes the various possibilities that can occur depending on the choices you make. An upwards sloping arc corresponds to reinvesting the profits, whereas a horizontal arc corresponds to withdrawing the profits at the end of the year. The value at a node represents the value of the factory at that node.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/7d101fc002ceec56ea91682fd515a7b8b9f622a39ed0003533a354efb6bdbc98.jpg)

$$ t = 0
$$

$$ t = 1
$$

$$ t = 2
$$

$$ t = 3
$$

We now compute the optimal strategy by working backwards from $t = 3$ to compute the value of the lease. (It is convenient $^{20}$ to assume that the decision to reinvest profits at the end of a period will be made at the beginning of that period.) At $ t = 3 $ the lease expires worthless and so in the lattice below we place a zero at each terminal node. At $ t = 2 $ it is clearly optimal to choose to take the profits at the end of the period. Since these profits are received at the end of the node, their value must be discounted backwards by $ 1 / (1 + r) $ to $ t = 2 $. For example, we obtain $ 20 / 1.2 = 16.67 $ at the uppermost node at $ t = 2 $. At $ t = 1 $, for example, the value of the lease at the lowermost node is given by $ \max(8.33,5 + 4.17) / 1.2 = 7.64 $. Continuing in this manner we find that the initial value of the lease is $ $ {12.73} $ million and that the optimal strategy is to reinvest the profits after the first period and to withdraw the profits after each of the remaining two periods.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/d89ea8420a8aed696a328ec3d0d0b6a27f76b46d4b342fc6bdceabf07f6971b6.jpg)

Remark 4 Note that in Example 12 the optimal strategy is the same for all values of $r > 0$.

Exercise 6 Suppose you have an option to sell the lease at $t = 1$ for $11 million. What is the optimal strategy now? Is it still true that the optimal strategy is independent of $r$ for $r > 0$?

Even in the simple deterministic setting of these notes, it is possible to construct many more examples ranging from capital-budgeting applications to problems in asset-liability management. Standard mathematical tools for solving these problems include linear, integer and dynamic programming.

## 4 The Yield, Static And Option-Adjusted Spreads

When evaluating corporate bonds, investors often wish to compare them with similar treasury bonds or
(credit) risk-free securities. Rather than comparing prices which are difficult to interpret, investors prefer to compare yields or the spread between the corporate and risk-free securities. There are three spreads in particular that frequently arise:
(i) the yield spread
(ii) the static spread and
(iii) the option-adjusted spread.

# 4.1 The Yield Spread

The yield spread of a corporate bond is calculated simply as the difference between the yield-to-maturity of the bond and the yield-to-maturity of a treasury bond of comparable maturity. While this spread will generally be positive due to credit risk, liquidity risk etc, it has many weaknesses. The principal weakness is that it fails to take into consideration the term structure of interest rates and the difference in intermediate cash-flows of the two bonds. And any embedded optionality in the corporate bond would also be ignored by such a measure.

# 4.2 The Static Spread

A better way to evaluate the corporate bond is to compare it to a Treasury security with the same cash-flows. If such a Treasury security does not exist (as will typically be the case) then a portfolio of Treasuries can be constructed in such a way that the portfolio has the same set of cash-flows as the corporate bond. We could then compare the price of the corporate bond, $P_0^{(c)}$, with the price, $P_0^{(Ts)}$, of the risk-free portfolio. A more informative measure is given by the static spread, $s$, which satisfies

$$
P _ {0} ^ {(c)} = \sum_ {t = 1} ^ {n} \frac {\mathsf {C F} _ {t}}{(1 + R _ {t} ^ {T s} + s) ^ {t}}
$$ where $CF_{t}$ is the time $t$ cash-flow of the corporate bond and $R_{t}^{T}s$ is the time 0 risk-free spot rate for maturity $t$. A potential investor in the corporate bond can then decide whether $s$ is sufficiently large to compensate him for bearing the credit and liquidity risk of the corporate bond. One problem with the static spread, however, is that it does not account for the optionality that is present in many corporate bonds.

# 4.3 The Option-Adjusted Spread
(Oas) Many corporate bonds such as callable or putable bonds have some degree of optionality. They can be priced, for example, using a lattice model. If the lattice model is built and calibrated using risk-free interest rates, then the lattice price of the bond will not coincide with the market price of the bond. This issue can be overcome by adding the option-adjusted spread
(OAS) to the short rate at each node of the lattice. The OAS is chosen so that the resulting price of the corporate bond coincides with the market price. As before, the OAS spread reflects the credit and liquidity risk that any investor in the bond must bear. If, however, the lattice was constructed using the bond issuer's spot rate curve, then the OAS would then reflect only the liquidity risk of the bond. If the bond was perceived as having no liquidity risk, then the OAS could be used to gauge the richness or cheapness of the bond.

Note that the dollar value of the option can be calculated as the difference between the bond price and the price of the same bond but with the optionality excluded. The option price $^{21}$ in basis points could then be defined as the difference in the static spread (of the bond without optionality) and the OAS spread. The OAS spread is used throughout the fixed income world including, for example, the mortgage-backed securities market.

# 4.4 Effective Duration And Effective Convexity

When dealing with bonds that have some degree of optionality, it is common to use appropriately adjusted definitions of duration and convexity. The adjusted definitions take account of the fact that when the yield curve changes, it is possible that the cash-flows also change (due to the optionality feature of the bond). This leads to effective duration and effective convexity. The difference between the duration and effective duration of a bond can be dramatic. For example, many mortgage-backed securities (MBS's) are very sensitive to prepayment assumptions which in turn depend strongly on the yield curve. Any change in the yield curve will change the prepayment rate and therefore the cash-flow of the MBS. The usual definition of duration would not reflect this change in the cash-flow and instead, would only change the discount factors. The effective duration and effective convexity are then the appropriate sensitivities for fixed income securities that include some degree of optionality.

## References

Brealey, R. A. and S. C. Myers.
2007. Principles of Corporate Finance, McGraw-Hill, New York. Fabozzi, F. J.
2008. Bond Markets, Analysis and Strategies, Pearson Prentice Hall, New Jersey. Luenberger, D. G.
2009. Investment Science, Oxford University Press, New York.

## Forwards, Swaps, Futures And Options

These notes<sup>1</sup> introduce forwards, swaps, futures and options as well as the basic mechanics of their associated markets. We will also see how to price forwards and swaps, but we will defer the pricing of futures contracts until after we have studied martingale pricing. We will see how to price options within the binomial model framework.

With the exception of the binomial model in Section 4, the underlying probability structure of the financial market plays only a small role in these notes. Nonetheless, you should not be under the impression that the results we derive only hold for deterministic models and are therefore limited in scope. On the contrary, many of the results we derive are very general and hold irrespective of the underlying probability structure that we might find ourselves working with.

Finally, we mention that it is easy to compute the value of a deterministic cash flow given the current term-structure of interest rates and we will often make use of this observation when pricing forwards and swaps. Pricing securities with stochastic cash-flows is more complicated and requires more sophisticated no-arbitrage or equilibrium methods. The binomial model of Section 4, however, provides a simple yet important model for introducing some of these methods. We will study them in more generality and much greater detail when we study martingale pricing later in the course.

### 1 Forwards

Definition 1 A forward contract on a security (or commodity) is a contract agreed upon at date $t = 0$ to purchase or sell the security at date $T$ for a price, $F$, that is specified at $t = 0$.

When the forward contract is established at date $t = 0$, the forward price, $F$, is set in such a way that the initial value of the forward contract, $f_0$, satisfies $f_0 = 0$. At the maturity date, $T$, the value of the contract is given by $f_T = \pm (S_T - F)$ where $S_T$ is the time $T$ value of the underlying security (or commodity). It is very important to realize that there are two "prices" or "values" associated with a forward contract at time $t$: $f_t$ and $F$. When we use the term "contract value" or "forward value" we will always be referring to $f_t$, whereas when we use the term "contract price" or "forward price" we will always be referring to $F$. That said, there should never be any ambiguity since $f_t$ is fixed (equal to zero) at $t = 0$, and $F$ is fixed for all $t > 0$ so the particular quantity in question should be clear from the context. Note that $f_t$ need not be (and generally is not) equal to zero for $t > 0$.

Examples of forward contracts include:

- A forward contract for delivery (i.e. purchase) of a non-dividend paying stock with maturity 6 months.
- A forward contract for delivery of a 9-month T-Bill with maturity 3 months. (This means that upon delivery, the T-Bill has 9 months to maturity.)
- A forward contract for the sale of gold with maturity 1 year.
- A forward contract for delivery of 10m Euro (in exchange for dollars) with maturity 6 months.

# 1.1 Computing Forward Prices

We first consider forward contracts on securities that can be stored at zero cost. The origin of the term "stored" is that of forward contracts on commodities such as gold or oil which typically are costly to store. However, we will also use the term when referring to financial securities. For example, while non-dividend paying stocks and zero-coupon bonds may be stored at zero cost, it is also the case that dividend paying stocks and coupon paying bonds can be stored at a negative cost.

# Forward Contracts On Securities With Zero Storage Costs

Suppose a security can be stored at zero cost and that short $^3$ selling is allowed. Then the forward price, $F$, at $t = 0$ for delivery of that security at date $T$ is given by

$$
F = S / d (0, T) \tag {1}
$$ where $S$ is the current spot price of the security and $d(0, T)$ is the discount factor applying to the interval $[0, T]$.

Proof: The proof works by constructing an arbitrage portfolio if $F \neq S / d(0, T)$.

Case
(i) : $F < S / d(0, T)$: Consider the portfolio that at date $t = 0$ is short one unit of the security, lends $S$ until date $T$, and is long one forward contract. The initial cost of this portfolio is 0 and it has a positive payoff, $S / d(0, T) - F$, at date $T$. Hence it is an arbitrage.

Case
(ii) : $F > S / d(0, T)$: In this case, construct the reverse portfolio and again obtain an arbitrage opportunity.

# Example 1 (A Forward On A Non-Dividend Paying Stock)

Consider a forward contract on a non-dividend paying stock that matures in 6 months. The current stock price is $50 and the 6-month interest rate is $4\%$ per annum. Compute the forward price, $F$.

Solution: Assuming semi-annual compounding, the discount factor is given by $d(0,0.5) = 1 / 1.02 = 0.9804$.

Equation (1) then implies that $F = 50 / 0.9804 = 51.0$.

# Forward Contracts On Securities With Non-Zero Storage Costs

Suppose now that we wish to compute the forward price of a security that has non-zero storage costs. We will assume that we are working in a multi-period setting and that the security has a deterministic holding cost of $c(j)$ in period $j$, payable at the beginning of the period. Note that for a commodity, $c(j)$ will generally represent a true holding cost, whereas for a stock or bond, $c(j)$ will be a negative cost and represent a dividend or coupon payment.

Forward Price for a Security with Non-Zero Storage Costs: Suppose a security can be stored for period $j$ at a cost of $c(j)$, payable at the beginning of the period. Assuming that the security may also be sold short, then the forward price, $F$, for delivery of that security at date $T$ (assumed to be $M$ periods away) is given by

$$
F = \frac {S}{d (0, M)} + \sum_ {j = 0} ^ {M - 1} \frac {c
(j) }{d (j, M)} \tag {2}
$$ where $S$ is the current spot price of the security and $d(j, M)$ is the discount factor between dates $j$ and $M$.

Proof: As before, we could prove (2) using an arbitrage argument. An alternative proof is to consider the strategy of buying one unit of the security on the spot market at $t = 0$, and simultaneously entering a forward contract to deliver it at time $T$. The cash-flow associated with this strategy is

$$
(- S - c (0), - c (1), \dots, - c
(j) , \dots, - c (M - 1), F)
$$ and its present value must (why?) be equal to zero. Since the cash-flow is deterministic we know how to compute its present value and we easily obtain (2).

# Example 2 (A Bond Forward)

Consider a forward contract on a 4-year bond with maturity 1 year. The current value of the bond is $1018.86, it has a face value of $1000 and a coupon rate of 10% per annum. A coupon has just been paid on the bond and further coupons will be paid after 6 months and after 1 year, just prior to delivery. Interest rates for 1 year out are flat at 8%. Compute the forward price of the bond.

Solution: Note that in this problem, the 'storage costs' (i.e. the coupon payments) are paid at the end of the period, which in this example is of length 6 months. As a result, we need to adjust (2) slightly to obtain

$$
F = \frac {S}{d (0, M)} + \sum_ {j = 0} ^ {M - 1} \frac {c
(j) }{d (j + 1, M)}.
$$

In particular, we now obtain

$$
F = \frac {1018.86}{d (0,2)} - \frac {5 0}{d (1,2)} - 5 0
$$ where $d(0,2) = 1.04^{-2}$ and $d(1,2) = d(0,2) / d(0,1) = 1.04^{-1}$.

# 1.2 Computing The Value Of A Forward Contract When $T > 0$

So far we have discussed how to compute $F = F_{0}$, the forward price at date 0 for delivery of a security at date $T$. We now concentrate on computing the forward value, $f_{t}$, for $t > 0$. (Recall that by construction, $f_{0} = 0$.) Let $F_{t}$ be the current forward price at date $t$ for delivery of the same security at the same maturity date, $T$. Then we have

$$ f _ {t} = \left(F _ {t} - F _ {0}\right) d (t, T). \tag {3}
$$

Proof: Consider a portfolio that at date $t$ goes long one unit of a forward contract with price $F_{t}$ and maturity $T$, and short one unit of a forward contract with price $F_{0}$ and maturity $T$. This portfolio has a deterministic cash-flow of $F_{0} - F_{t}$ at date $T$ and a deterministic cash-flow of $f_{t}$ at date $t$. The present value at date $t$ of this cash-flow stream, $(f_{t}, F_{0} - F_{t})$ must be zero (why?) and hence we obtain (3).

# 1.3 Tight Markets

Examination of equation (2) implies that the forward price for a commodity with positive storage costs should be increasing in $M$. Frequently, however, this is not the case and yet it turns out that arbitrage opportunities do not exist. This apparent contradiction can be explained by the fact that it is not always possible to short commodities, either because they are in scarce supply, or because holders of the commodity are not willing to lend them to would-be short sellers. The latter situation might occur, for example, if the commodity has a utility value over and beyond its spot market value.

If short selling is not allowed, then the arbitrage argument used to derive (2) is no longer valid. In particular, we can only conclude that

$$
F \leq \frac {S}{d (0, M)} + \sum_ {j = 0} ^ {M - 1} \frac {c
(j) }{d (j, M)}. \tag {4}
$$

Exercise 1 Convince<sup>4</sup> yourself that we can indeed only conclude that (4) is true if short-selling is not permitted.

In such circumstances, we say that the market is tight. An artifice that is often used to restore equality in (4) is that of the convenience yield. The convenience yield, $y$, is defined in such a way that the following equation is satisfied.

$$
F = \frac {S}{d (0, M)} + \sum_ {j = 0} ^ {M - 1} \frac {c
(j) - y}{d (j, M)}. \tag {5}
$$

The convenience yield may be thought of as a negative holding cost that measures the convenience per period of having the commodity on hand.

# 2 Swaps

Another important class of derivative security are swaps, perhaps the most common of which are interest rate swaps and currency swaps. Other types of swaps include equity and commodity swaps. A plain vanilla swap usually involves one party swapping a series of fixed level payments for a series of variable payments.

Swaps were introduced primarily for their use in risk-management. For example, it is often the case that a party faces a stream of obligations that are floating or stochastic, but that it will have to meet these obligations with a stream of fixed payments. Because of this mismatch between floating and fixed, there is no guarantee that the party will be able to meet its obligations. However, if the present value of the fixed stream is greater than or equal to the present value of the floating stream, then it could purchase an appropriate swap and thereby ensure than it can meet its obligations.

# 2.1 Plain Vanilla Interest Rate Swaps

In a plain vanilla interest rate swap, there is a maturity date, $T$, a notional principal, $P$, and a fixed<sup>5</sup> number of periods, $M$. There are two parties, $A$ and $B$ say, to the swap. Every period party $A$ makes a payment to party $B$ corresponding to a fixed rate of interest on $P$. Similarly, in every period party $B$ makes a payment to party $A$ that corresponds to a floating rate of interest on the same notional principal, $P$.

It is important to note that the principal itself, $P$, is never exchanged. Moreover, it is also important to specify whether the payments occur at the end or the beginning of each period.

For example, assuming cash payments are made at the end of periods, i.e. in arrears, the total aggregate cash cash flow from party $A$ 's perspective is given by

$$
C = P \times (0, \underbrace{r_{0} - r_{f}}_{\text{At end of } 1^{st}\text{period}},\ldots,\underbrace{r_{M - 1} - r_{f}}_{\text{At end of } M^{th}\text{period}})
$$ where $r_f$ is the constant fixed rate and $r_i$ is the floating rate that prevailed at the beginning of period $i$. In general, $r_i$ will be stochastic and so the swap's cash-flow, $C$, will also be stochastic. As is the case with forward contracts, the value $X$ (equivalently $r_f$ ) is usually chosen in such a way that the initial value of the swap is zero. Even though the initial value of the swap is zero, we say that party $A$ is "long" the swap and party $B$ is "short" the swap.

Exercise 2 Make sure you understand how to use the terms "long" and "short" when referring to a swap.

# 2.2 Currency Swaps

A simple type of currency swap would be an agreement between two parties to exchange fixed rate interest payments and the principal on a loan in one currency for fixed rate interest payments and the principal on a loan in another currency. Note that for such a swap, the uncertainty in the cash flow is due to uncertainty in the currency exchange rate. In a Dollar/Euro swap, for example, a US company may receive the Euro payments of the swap while a German company might receive the dollar payments. Note that the value of the swap to each party will vary as the USD/Euro exchange rate varies. As a result, the companies are exposed to foreign exchange risk but if necessary this risk can be hedged by trading in the forward foreign exchange market.

Why might the US and German companies enter such a transaction? A possible explanation might be that the US company wishes to invest in the Eurozone while the German country wishes to invest in the U. S. Each company therefore needs foreign currency. However, they may have a comparative advantage borrowing in their domestic currency at home as opposed to borrowing in a foreign currency abroad. If this is the case, it makes sense to borrow domestic currency at home and use a swap to convert it into the foreign currency.

# 2.3 Pricing Swaps

Pricing swaps is quite straightforward. For example, in the currency swap described above, it is easily seen that the swap cash-flow is equivalent to being long a bond in one currency and short the bond in another currency. Therefore, all that is needed to price<sup>6</sup> the swap is the term structure of interest rates in each currency (to price the bonds) and the spot currency exchange rate.

More generally, we will see that the cash-flow stream of a swap can often be considered as a stream of forward contracts. Since we can price forward contracts, we will be able to price<sup>7</sup> swaps. We will see how to do this by way of the first example below where we price a commodity swap.

# Example 3 (Pricing A Commodity Swap)

Let $S_{i}$ be the spot price of a commodity at the beginning of period $i$. Party $A$ receives the spot price for $N$ units of the commodity and pays a fixed amount, $X$, per period. We will assume that payments take place at the beginning of the period and there will be a total of $M$ payments, beginning one period from now. The cash-flow as seen by the party that is long the swap is

$$
C = N \times (0, S _ {1} - X, S _ {2} - X, \dots, S _ {M} - X).
$$

Note that this cash-flow is stochastic and so we cannot compute its present value directly by discounting. However, we can decompose $C$ into a stream of fixed payments (of $-NX$ ) that we can easily price, and a stochastic stream, $N(0, S_1, S_2, \ldots, S_M)$. The stochastic stream is easily seen to be equivalent to a stream of forward contacts on $N$ units of the commodity. We then see that receiving $NS_i$ at period $i$ has the same value of receiving $NF_i$ at period $i$ where $F_i$ is the date 0 forward price for delivery of one unit of the commodity at date $i$. As the forward prices, $F_i$, are deterministic and known at date 0, we can see that the value of the commodity swap is given by

$$
V = N \sum_ {i = 1} ^ {M} d (0, i) (F _ {i} - X).
$$

$X$ is usually chosen so that the initial value of $V$ is zero.

# Example 4 (Pricing An Interest Rate Swap)

Party $A$ agrees to make payments of a fixed rate of interest, $r_f$, on a notional principal, $P$, while receiving floating rate payments on $P$ for $M$ periods. We assume that the payments are made at the end of each period and that the floating rate payment will be based on the short rate that prevailed at the beginning of the period. The cash-flow corresponding to the long side of the swap is then given by

$$
C = P (0, r _ {0} - r _ {f}, r _ {1} - r _ {f}, \dots, r _ {M - 1} - r _ {f}).
$$ where $r_i$ is the short rate for the period beginning at date $i$. Again this cash flow can be decomposed into a series of fixed payments that can be easily priced, and a stochastic stream, $P(0, r_0, r_1, \ldots, r_{M-1})$. We can value the stochastic stream either using an arbitrage argument or by recalling that the price of a floating rate bond is always par at any reset point. Note that the stochastic stream is exactly the stream of coupon payments corresponding to a floating rate bond with face value $P$. Hence the value of the stochastic stream must be (why?) $P(1 - d(0, M))$ and so the value of the swap is given by

$$
V = P \left[ 1 - d (0, M) - r _ {f} \sum_ {i = 1} ^ {M} d (0, i) \right]. \tag {6}
$$

As before, $r_f$ is usually chosen so that the initial value of the swap is zero.

# 3 Futures

While forwards markets have proved very useful for both hedging and investment purposes, they have a number of weaknesses. First, forward markets are not organized through an exchange. This means that in order to take a position in a forward contract, you must first find someone willing to take the opposite position. This is the double-coincidence-of-wants problem. Second, because forward contracts are not exchange-traded, there can sometimes be problems with price transparency and liquidity. Finally, in addition to the financial risk of a forward contract, there is also counter-party risk. This is the risk that one party to the forward contract will default on it's obligations. These problems have been eliminated to a large extent through the introduction of futures markets. That is not to say that forward markets are now redundant; they are not, and they are used, for example, in the many circumstances when suitable futures markets are not available.

Perhaps the best way to understand the mechanics of a futures market is by example.

# Example 5 (Cricket Futures)

We consider an example of a futures market where the futures contracts are not written on an underlying financial asset or commodity. Instead, they are written on the total number of runs that are scored in a cricket test match. The market opens before the cricket match takes place and expires at the conclusion of the match. Similar futures markets do exist in practice and this example simply demonstrates that in principle, futures markets can be created where just about any underlying variable can serve as the underlying asset.

The particular details of the cricket futures market are as follows:

- The futures market opens on June 3rd and the test match itself begins on June 15th. The market closes when the match is completed on June 19th.
- The closing price on the first day of the market was
720. This can be interpreted as the market forecast for the total number of runs that will be scored by both teams in the test match. This value varies through time as new events occur and new information becomes available. Examples of such events include information regarding player selection and fitness, current form of players, weather forecast updates, UMP selection, condition of the field etc.
• The contract size is $1. This means if you go long one contract and the price increases by one, then you will have $1 added to your cash balance. On the other hand, if the price had decreased by 8, say, and you were short 5 contracts then your balance would decrease by $40. This process of marking-to-market is usually done on a daily basis. Moreover, the value of your futures position immediately after marking-to-market is identically zero, as any accrued profits or losses have already been added to or subtracted from your cash balance.

In the table below we present one possible evolution of the futures market between June 3 and June 19. The initial position is 100 contracts and it is assumed that this position is held until the test match ends on June 20. An initial balance of $10,000 is assumed and this balance earns interest at a rate of 0.005% per day. It is also important to note that when the futures position is initially adopted the cost is zero, i.e. initially there is no exchange of cash.

Remark 1 You should make sure that you fully understand the mechanics of this futures market as these are the same mechanics used by other futures markets.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
CRICKET FUTURES CONTRACTS & & & & & & \\ \hline
Date & Price & Position & Profit & Interest & Balance & \\ \hline
June 3 & 720.00 & 100 & 0 & 0 & 10,000 & \\ \hline
June 4 & 721.84 & 100 & 184 & 1 & 10,184 & \\ \hline
June 5 & 721.52 & 100 & -31 & 1 & 10,153 & \\ \hline
June 6 & 711.88 & 100 & -964 & 1 & 9,190 & \\ \hline
June 7 & 716.67 & 100 & 479 & 0 & 9,669 & \\ \hline
June 8 & 720.04 & 100 & 337 & 0 & 10,006 & \\ \hline
June 9 & 672.45 & 100 & -4,759 & 1 & 5,248 & \\ \hline
June 10 & 673.25 & 100 & 80 & 0 & 5,328 & \\ \hline
June 11 & 687.04 & 100 & 1,379 & 0 & 6,708 & \\ \hline
June 12 & 670.56 & 100 & -1,648 & 0 & 5,060 & \\ \hline
June 13 & 656.25 & 100 & -1,431 & 0 & 3,630 & \\ \hline
June 14 & 647.14 & 100 & -912 & 0 & 2,718 & \\ \hline
June 15 & 665.57 & 100 & 1,843 & 0 & 4,561 & Test Match Begins \\ \hline
June 16 & 673.48 & 100 & 791 & 0 & 5,353 & \\ \hline
June 17 & 672.88 & 100 & -60 & 0 & 5,293 & \\ \hline
June 18 & 646.63 & 100 & -2,625 & 0 & 2,669 & \\ \hline
June 19 & 659.58 & 100 & 1,294 & 0 & 3,963 & Test Match Ends \\ \hline
Total & & & -6,042 & & 3,963 & \\ \hline
\end{tabular}
\end{document}
```

In Example 5 we did not discuss the details of margin requirements which are intended to protect against the risk of default. A typical margin requirement would be that the futures trader maintain a minimum balance in her trading account. This minimum balance will often be a function of the contract value (perhaps $5\%$ to $10\%$ ) multiplied by the position, i.e., the number of contracts that the trader is long or short. When the balance drops below this minimum level a margin call is made after which the trader must deposit enough funds so as to meet the balance requirement. Failure to satisfy this margin call will result in the futures position being closed out.

# 3.1 Strengths And Weaknesses Of Futures Markets

Futures markets are useful for a number of reasons:

- It is easy to take a position using futures markets without having to purchase the underlying asset. Indeed, it is not even possible to buy the underlying asset in some cases, e.g., interest rates, cricket matches and presidential elections.
- Futures markets allow you to leverage your position. That is, you can dramatically increase your exposure to the underlying security by using the futures market instead of the spot market.
- They are well organized and designed to eliminate counter-party risk as well as the "double-coincidence-of-wants" problem.
- The mechanics of a futures market are generally independent of the underlying 'security' so they are easy to "operate" and easily understood by investors.

Futures markets also have some weaknesses:

- The fact that they are so useful for leveraging a position also makes them dangerous for unsophisticated and/or rogue investors.
- Futures prices are (more or less) linear in the price of the underlying security. This limits the types of risks that can be perfectly hedged using futures markets. Nonetheless, non-linear risks can still be partially hedged using futures. See, for instance, Example 7 below.

# 3.2 Relationship Of Futures Prices To Forward And Spot Prices

While forwards and futures prices are clearly closely related, they are not equal in general. One important case where they do coincide is when interest rates are deterministic and a proof of this may be found in Section 10.7 of Luenberger. However, we will see a more general proof of this and related results after we have studied martingale pricing.

When interest rates are stochastic, as they are in the real world, forwards and futures prices will generally not coincide. In particular, when movements in interest rates are positively correlated with price movements in the asset underlying the futures contract, futures prices will tend to be higher than the corresponding forward price. Similarly, when the correlation is negative, the futures price will tend to be lower than the forward price. We will see an explanation for this after we have studied martingale pricing.

Another interesting question that arises is the relationship between $F$ and $\operatorname{E}[S_T]$, where $S_T$ is the price of the underlying asset at the expiration date, $T$. In particular, we would like to know whether $F < \operatorname{E}[S_T]$, $F = \operatorname{E}[S_T]$ or $F > \operatorname{E}[S_T]$. We can already guess at the answer to this question. Using the language of the CAPM, for example, we would expect (why?) $F < \operatorname{E}[S_T]$ if the underlying security has positive systematic risk, i.e., a positive beta.

# 3.3 Hedging With Futures: The Perfect And Minimum-Variance Hedges

Futures markets are of great importance for hedging against risk. They are particularly suited to hedging risk that is linear in the underlying asset. This is because the final payoff at time $T$ from holding a futures contract is linear in the terminal price of the underlying security, $S_T$. In this case we can achieve a perfect hedge by taking an equal and opposite position in the futures contract.

# Example 6 (Perfect Hedge)

Suppose a wheat producer knows that he will have 100,000 bushels of wheat available to sell in three months time. He is concerned that the spot price of wheat will move against him (i.e. fall) in the intervening three months and so he decides to lock in the sale price now by hedging in the futures markets. Since each wheat futures contract is for 5,000 bushels, he therefore decides to sell 20 three-month futures contracts. Note that as a result, the wheat producer has a perfectly hedged position.

In general, perfect hedges are not available for a number of reasons:

1. None of the expiration dates of available futures contracts may exactly match the expiration date of the payoff. $P_T$, that we want to hedge.
2. $P_T$ may not correspond exactly to an integer number of futures contracts.
3. The security underlying the futures contract may be different to the security underlying $P_T$.
4. $P_T$ may be a non-linear function of the security price underlying the futures contract.
5. Combinations of all the above are also possible.

When perfect hedges are not available, we often use the minimum-variance hedge to identify a good hedging position in the futures markets. To derive the minimum-variance hedge, we let $Z_{T}$ be the cash flow that occurs at date $T$ that we wish to hedge, and we let $F_{t}$ be the time $t$ price of the futures contract. At date $t = 0$ we adopt a position<sup>9</sup> of $h$ in the futures contract and hold this position until time $T$. Since the initial cost of a futures position is zero, we can (if we ignore issues related to interest on the margin account) write the terminal cash-flow, $Y_{T}$, as

$$
Y _ {T} = Z _ {T} + h \left(F _ {T} - F _ {0}\right).
$$

Our objective then is to minimize

$$
\operatorname {Var} (Y _ {T}) = \operatorname {Var} (Z _ {T}) + h ^ {2} \operatorname {Var} (F _ {T}) + 2 h \operatorname {Cov} (Z _ {T}, F _ {T})
$$ and we find that the minimizing $h$ and minimum variance are given by

$$ h ^ {*} = - \frac {\operatorname {Cov} (Z _ {T}, F _ {T})}{\operatorname {Var} (F _ {T})}
$$

$$
\operatorname {Var} (Y _ {T} ^ {*}) = \operatorname {Var} (Z _ {T}) - \frac {\operatorname {Cov} (Z _ {T}, F _ {T}) ^ {2}}{\operatorname {Var} (F _ {T})}.
$$

Such static hedging strategies are often used in practice, even when dynamic hedging strategies are capable of achieving a smaller variance. Note also, that unless $\operatorname{E}[F_T] = F_0$, it will not be the case that $\operatorname{E}[Z_T] = \operatorname{E}[Y_T^*]$. It is also worth noting that the mean-variance hedge is not in general the same as the equal-and-opposite hedge.

# Example 7 (Luenberger Exercise 10.14)

Assume that the cash flow is given by $y = S_{T}W + (F_{T} - F_{0})h$. Let $\sigma_S^2 = \mathrm{Var}(S_T)$, $\sigma_F^2 = \mathrm{Var}(F_T)$ and $\sigma_{ST} = \mathrm{Cov}(S_T, F_T)$. In an equal and opposite hedge, $h$ is taken to be an opposite equivalent dollar value of the hedging instrument. Therefore $h = -kW$, where $k$ is the price ratio between the asset and the hedging instrument. Express the standard deviation of $y$ with the equal and opposite hedge in the form

$$
\sigma_ {y} = W \sigma_ {S} \times B.
$$

That is, find $B$.

Solution: We have $y = S_{T}W - (F_{T} - F_{0})Wk$ where $k = S_0 / F_0$. Note that $h$ is determined at date 0 and is therefore a function of date 0 information only. It is easy to obtain

$$
\begin{array}{l} \sigma_ {y} ^ {2} = W ^ {2} \sigma_ {S} ^ {2} + \frac {W ^ {2} S _ {0} ^ {2}}{F _ {0} ^ {2}} \sigma_ {F} ^ {2} - 2 \frac {W ^ {2} S _ {0}}{F _ {0}} \sigma_ {S, F} \\ \Rightarrow \sigma_ {y} = W \sigma_ {S} \sqrt {1 + \left(\frac {S _ {0} \sigma_ {F}}{F _ {0} \sigma_ {S}}\right) ^ {2} - 2 \frac {S _ {0} \sigma_ {S, F}}{F _ {0} \sigma_ {S} ^ {2}}} \\ \end{array}
$$ which implicitly defines $B$.

As a check, suppose that $S_{T}$ and $F_{T}$ are perfectly correlated. We then obtain
(check) that

$$
\sigma_ {y} = W \sigma_ {S} \left(1 - \frac {S _ {0} \sigma_ {F}}{F _ {0} \sigma_ {S}}\right)
$$ which is not in general equal to 0! However, if $F_{t}$ and $S_{t}$ are scaled appropriately (alternatively we could scale $h$ ), then we can obtain a perfect hedge.

# Example 8 (Hedging Operating Profits)

A firm manufactures a particular type of widget. It has orders to supply $D_{1}$ and $D_{2}$ of these widgets at dates $t_{1}$ and $t_{2}$, respectively. The revenue, $R$, of the corporation may then be written as

$$
R = D _ {1} P _ {1} + D _ {2} P _ {2}
$$ where $P_{i}$ represents the price per widget at time $t_{i}$. We assume that $P_{i}$ is stochastic and that it will depend in part on the general state of the economy at date $t_{i}$. In particular, we assume

$$
P _ {i} = a S _ {i} e ^ {\epsilon_ {i}} + c
$$ where $a$ and $c$ are constants, $S_{i}$ is the time $t_i$ value of the market index, and $\epsilon_1$ and $\epsilon_2$ are independent random variables that are also independent of $S_{i}$. Furthermore, they satisfy $\operatorname{E}[e^{\epsilon_i}] = 1$ for each $i$. The firm wishes to hedge the revenue, $R$, by taking a position $h$ at $t = 0$ in a futures contract that expires at date $t_2$ and where the market index is the underlying security. The date $t_2$ payoff, $Y$, is then given by

$$
Y = D _ {1} \left(a S _ {1} e ^ {\epsilon_ {1}} + c\right) + D _ {2} \left(a S _ {2} e ^ {\epsilon_ {2}} + c\right) + h \left(S _ {2} - F _ {0}\right).
$$

If we assume that $S_{t}$ is a geometric Brownian motion so that $S_{t} = S_{0}\exp \left((\mu -\sigma^{2} / 2)t + \sigma B_{t}\right)$ where $B_{t}$ is a standard Brownian motion, we can easily find the minimum variance hedge, $h^{*} = -\mathrm{Cov}(R, S_{2}) / \mathrm{Var}(S_{2})$.

Exercise 3 Compute $h^*$ and the variance reduction that is achieved.

Remark 2 A more sophisticated hedge would be to choose a position of size $h_1$ at date $t = 0$ and then to update this position to $h_2$ at date $t_1$ where $h_1$ and $h_2$ are constants that are chosen at date $t = 0$. In this case the resulting hedging strategy is still a static hedging strategy.

Note, however, that since $h_2$ need not be chosen until date $t_1$, it makes sense to allow $h_2$ to be a function of available information at date $t_1$. In particular, we could allow $h_2$ to depend on $P_1$ and $S_1$, thereby obtaining a dynamic hedging strategy, $(h_1, h_2(P_1, S_1))$. Such a strategy should be able to eliminate most of the uncertainty in $R$.

Exercise 4 How would you go about solving for the optimal $(h_1^*, h_2^*(P_1, S_1))$? Would you need to make an assumption regarding $F_1$?

Note that the most general class of dynamic hedging strategy would allow you to adjust $h$ stochastically at every date in $[[https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/4921549d14945654b1b97ec4cd429994a1d5e843896a38566c09faf3d440099e.jpg|0, t_2)$ and not just at dates $t_0$ and $t_1$.

# 3.4 Final Remarks

As stated earlier, futures markets generally work in much the same way, regardless of the underlying asset. Popular futures markets include interest rate futures and equity index futures. Interest futures, for example, can be used to immunize bond portfolios by matching durations and/or convexities. Index futures are used in place of the actual index itself for hedging index options. Of course, interest rate and index futures are also used for many other reasons.

Sometimes the expiration dates of available futures contracts are sooner than the expiration date of some obligation or security that needs to be hedged. In such circumstances, it is often common to roll the hedge forward. That is, a hedging position in an available futures contract is adopted until that futures contract expires. At this point the futures position is closed out and a new position in a different (and newly available) futures contract is adopted. This procedure continues until the expiration date of the obligation or security.

Exercise 5 What types of risk do you encounter when you roll the hedge forward?

In order to answer Exercise 5, assume you will have a particular asset available to sell at time $T_{2}$. Today, at time $t = 0$, you would like to hedge your time $T_{2}$ cash-flow by selling a single futures contract that expires at time $T_{2}$ with the given asset as the underlying security. Such a futures contract, however, is not yet available though there is a futures contract available at $t = 0$ that expires at time $T_{1} < T_{2}$. Moreover, upon expiration of this contract the futures contract with expiration $T_{2}$ will become available. You therefore decide to adopt the following strategy: at $t = 0$ you sell one unit of the futures contract that expires at time $T_{1}$. At $T_{1}$ you close out this contract and then sell one unit of the newly available futures contract that expires at time $T_{2}$. What is your net cash-flow, i.e. after selling the asset and closing out the futures contract, at time $T_{2}$?

Note that we have only discussed the mechanics of futures markets and how they can be used to hedge linear and non-linear risks. We have not seen how to compute the futures price, $F_{t}$, but instead will return to this after we have studied martingale pricing.

# 4 Introduction To Options And The Binomial Model

We first define the main types of options, namely European and American call and put options.

Definition 2 A European call
(put) option gives the right, but not the obligation, to buy
(sell) 1 unit of the underlying security at a pre-specified price, $K$, at a pre-specified time, $T$.

Definition 3 An American call
(put) option gives the right, but not the obligation, to buy
(sell) 1 unit of the underlying security at a pre-specified price, $K$, at any time up to an including a pre-specified time, $T$.

$K$ and $T$ are called the strike and maturity / expiration of the option, respectively. Let $S_{t}$ denote the price of the underlying security at time $t$. Then, for example, if $S_{T} < K$ a European call option will expire worthless and the option will not be exercised. A European put option, however, would be exercised and the payoff would be $K - S_{T}$. More generally, the payoff at maturity of a European call option is $\max \{S_{T} - K, 0\}$ and its intrinsic value at any time $t < T$ is given by $\max \{S_{t} - K, 0\}$. The payoff of a European put option at maturity is $\max \{K - S_{T}, 0\}$ and its intrinsic value at any time $t < T$ is given by $\max \{K - S_{t}, 0\}$.

# 4.1 Model Free Bounds For Option Prices

Because the underlying security price process, $S_{t}$, is stochastic and the option payoffs are non-linear functions of the underlying security price, we cannot price options without a model. We can, however, obtain some model-free bounds for options prices. We let $c_{E}(t;K, T)$ and $p_{E}(t;K, T)$ denote the time $t$ prices of a European call and put, respectively, with strike $K$ and expiration $T$. Similarly, we let $c_{A}(t;K, T)$ and $p_{A}(t;K, T)$ denote the time $t$ prices of an American call and put, respectively, with strike $K$ and expiration $T$. It should be clear that the price of an American option is greater than or equal to the price of the corresponding European option.

# Put-Call Parity

A very important result for European options is put-call parity. Suppose the underlying security does not pay dividends. We then have

$$ p _ {E} (t; K, T) + S _ {t} = c _ {E} (t; K, T) + K d (t, T) \tag {7}
$$ where $d(t, T)$ is the discount factor used to discount cash-flows from time $T$ back to time $t$. We can prove (7) by considering the following trading strategy:

- At time $t$ buy one European call with strike $K$ and expiration $T$
- At time $t$ sell one European put with strike $K$ and expiration $T$
- At time $t$ sell short 1 unit of the underlying security and buy it back at time $T$
- At time $t$ lend $Kd(t, T)$ dollars up to time $T$

Regardless of the underlying security price, it is easy to see that the cash-flow at time $T$ corresponding to this strategy will be zero. No-arbitrage then implies that the value of this strategy at time $t$ must therefore also be zero. We therefore obtain $-c_{E}(t;K, T) + p_{E}(t;K, T) + S_{t} - Kd(t, T) = 0$ which is (7).

When the underlying security does pay dividends then a similar argument can be used to obtain

$$ p _ {E} (t; K, T) + S _ {t} - D = c _ {E} (t; K, T) + K d (t, T) \tag {8}
$$ where $D$ is the present value of all dividends until maturity.

Suppose now the underlying security does not pay dividends and that the events $\{S_T > K\}$ and $\{S_T < K\}$ have strictly positive probability so that (why?) $c_E(t;K, T) > 0$ and $p_E(t;K, T) > 0$. We can then use put-call parity to obtain

$$ c _ {E} (t; K, T) = S _ {t} + p _ {E} (t; K, T) - K d (t, T) > S _ {t} - K d (t, T). \tag {9}
$$

Consider now the corresponding American call option. We obtain

$$ c _ {A} (t, K, T) \geq c _ {E} (t; K, T) > \max \left\{S _ {t} - K d (t, T), 0 \right\} \geq \max \left\{S _ {t} - K, 0 \right\}.
$$

Therefore the price of an American call on a non-dividend-paying stock is always strictly greater than the intrinsic value of the call option when the events $\{S_T > K\}$ and $\{S_T < K\}$ have strictly positive probability. We have thus shown that it is never optimal to early-exercise an American call on a non-dividend paying stock and so $c_A(t;K, T) = c_E(t, K, T)$. Unfortunately there is no such result relating American put options to European put options. Indeed it is sometimes optimal to early exercise an American put option even when the underlying security does not pay a dividend.

# 4.2 The 1-Period Binomial Model

Consider the 1-period binomial model where the underlying security has a value of $S_0 = 100$ at $t = 0$ and increases by a factor of $u$ or decreases by a factor of $d$ in the following period. We also assume that borrowing or lending at a gross risk-free rate of $R$ is possible. This means that $$1$ in the cash account at $t = 0$ will be worth $$ R $ at $t = 1$. We also assume that short-sales are allowed.![]]

Suppose now that $S_0 = 100$, $R = 1.01$, $u = 1.07$ and $d = 1 / u =0.9346$. Some interesting questions now arise:

1. How much is a call option that pays $\max(S_1 - 107,0)$ at $t = 1$ worth?
2. How much is a call option that pays $\max(S_1 - 92,0)$ at $t = 1$ worth?

Pricing these options is easy but to price options in general we need more general definitions of arbitrage.

Definition 4 A type $A$ arbitrage is a security or portfolio that produces immediate positive reward at $t = 0$ and has non-negative value at $t = 1$. i.e. a security with initial cost, $V_0 < 0$, and time $t = 1$ value $V_1 \geq 0$.

Definition 5 A type $B$ arbitrage is a security or portfolio that has a non-positive initial cost, has positive probability of yielding a positive payoff at $t = 1$ and zero probability of producing a negative payoff then. i.e., a security with initial cost, $V_0 \leq 0$, and $V_1 \geq 0$ but $V_1 \neq 0$.

We now have the following result.

Theorem 1 There is no arbitrage in the 1-period binomial model if and only if $d < R < u$.

Proof:
(i) Suppose $R < d < u$. Then at $t = 0$ we should borrow $S_0$ and purchase one unit of the stock.
(ii) Suppose $d < u < R$. Then short-sell one unit of the stock at $t = 0$ and invest the proceeds in cash-account. In both cases we have a type B arbitrage and so the result follows.

We will soon see the other direction, i.e. if $d < R < u$, then there can be no-arbitrage. Let's return to our earlier numerical example and consider the following questions:

1. How much is a call option that pays $\max(S_1 - 102,0)$ at $t = 1$ worth?
2. How will the price vary as $p$ varies?

To answer these questions, we will construct a replicating portfolio. Let us buy $x$ shares and invest $y$ in the cash account at $t = 0$. At $t = 1$ this portfolio is worth:

$$
107 x + 1.01 y \quad \text {when} S = 107
$$

$$
9 3.46 x + 1.01 y \quad \text {when} S = 9 3.46
$$

Can we choose $x$ and $y$ so that portfolio equals the option payoff at $t = 1$? We can indeed by solving

$$
107 x + 1.01 y = 5
$$

$$
9 3.46 x + 1.01 y = 0
$$ and the solution is $x = 0.3693$ and $y = -34.1708$. Note that the cost of this portfolio at $t = 0$ is

$$
0.3693 \times 100 - 3 4.1708 \times 1 \approx 2.76.
$$

This implies the fair or arbitrage-free value of the option is 2.76.

# Derivative Security Pricing In The 1-Period Binomial Model

Can we use the same replicating portfolio argument to find the price, $C_0$, of any derivative security with payoff function, $C_1(S_1)$, at time $t = 1$? Yes we can by setting up replicating portfolio as before and solving the following two linear equations for $x$ and $y$

$$ u S _ {0} x + R y = C _ {u} \tag {10}
$$

$$ d S _ {0} x + R y = C _ {d} \tag {11}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/44cbde62ccfbf85ed90d1a474391aea28d8e2636c72f2f02d16c778db37fa26e.jpg)

The arbitrage-free time $t = 0$ price of the derivative must (Why?) then be $C_0 \coloneqq xS_0 + y$. Solving (10) and (11) then yields

$$
\begin{array}{l} {C _ {0}} = {\frac {1}{R} \left[ \frac {R - d}{u - d} C _ {u} + \frac {u - R}{u - d} C _ {d} \right]} \\ = \frac {1}{R} [ q C _ {u} + (1 - q) C _ {d} ] \\ = \frac {1}{R} \mathrm {E} _ {0} ^ {Q} \left[ C _ {1} \right] \tag {12} \\ \end{array}
$$ where $q \coloneqq (R - d) / (u - d)$ so that $1 - q = (u - R) / (u - d)$. Note that if $d < R < u$ then $q > 0$ and $1 - q > 0$ and so by (12) there can be (why?) no-arbitrage. We refer to (12) as risk-neutral pricing and $(q, 1 - q)$ are the risk-neutral probabilities. So we now know how to price any derivative security in this 1-period binomial model via a replication argument. Moreover this replication argument is equivalent to pricing using risk-neutral probabilities.

We also note that the price of the derivative does not depend on $p!$. This at first appears very surprising. To understand this result further consider the following two stocks, ABC and XYZ:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/f7849389242b5c35328fdc4838dd8193d25d13781a0bf178ea46cd8bf59e6490.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/fd086965120e3f780c270941c29da6162e30f010d6f5a8e29cb2a7f1104684f4.jpg)

Note that the probability of an up-move for ABC is $p =0.99$ whereas the probability of an up-move for XYZ is $p =0.01$. Consider now the following two questions:

Question: What is the price of a call option on ABC with strike $K = $100$?

Question: What is the price of a call option on XYZ with strike K = $100?

You should be surprised by your answers. But then if you think a little more carefully you'll realize that the answers are actually not surprising given the premise that two stocks like ABC and XYZ actually exist side-by-side in the market.

# 4.3 The Multi-Period Binomial Model

Consider the multi-period binomial model displayed to the right where as before we have assumed $u = 1 / d = 1.07$. The important thing to notice is that the multi-period model is just a series of 1-period models spliced together! This implies all the results from the 1-period model apply and that we just need to multiply 1-period probabilities along branches to get probabilities in the multi-period model.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/448e96543432bdc4317d82d371cc9f74499c674f10a79434f0031fa8570b27b6.jpg)

# Pricing A European Call Option

Suppose now that we wish to price a European call option with expiration at $ t = 3 $ and strike $ = $100 $. As before we assume a gross risk-free rate of $ R = 1.01 $ per period. We can do this by working backwards in the lattice starting at time $ t = 3 $ and using what we know about 1-period binomial models to obtain the price at each prior node. We do this repeatedly until we obtain the arbitrage-free price at $ t = 0 $. The price of the option at each node is displayed above the underlying stock price in the binomial model to the right. Note that we repeatedly used (12) to obtain these prices.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/b2912a500b4d6a81eb57d20cd16f1ad7938f4d1a4150f23fe37b8ff8d73a71b9.jpg)

For example, the upper node at $t = 1$ has a value of 10.23. This is the value of the derivative security that pays either 15.48 (after an up-move) or 3.88 (after a down-move) 1 period later. It is not hard to see that the process of backwards evaluation that we just described is equivalent to pricing the option as

$$
C _ {0} = \frac {1}{R ^ {3}} \mathrm {E} _ {0} ^ {Q} [ \max \left(S _ {T} - 100,0\right) ] \tag {13}
$$ and we note the risk-neutral probabilities for $S_{T}$ are displayed at the far right in the binomial lattice above. Risk-neutral pricing pricing via (13) has the advantage of not needing to calculate the option price at every intermediate node.

Question: How would you find a replicating strategy for the option?

# Pricing An American Put Option

We can price American options in the same way as European options only now at each node we must also check to see if it's optimal to early exercise there. Recall, however, that it is never optimal to early exercise an American call option on non-dividend paying stock. So instead will price an American put option with expiration at $ t = 3 $ and strike $ K = $100 $. Once again we assume $ R = 1.01 $. The American option price at each node is displayed in the lattice to the left. As before we start at expiration $ t = 3 $ where we know the value of the option. We then work backwards in the lattice and at each node we set the value equal to the maximum of the intrinsic value and the (risk-neutral) expected discounted value one period ahead.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/0e8c3668561c2adf99ec6b3175aa87e1d3a4f61c0ce93b67a912996f2e25c26b.jpg)

For example, the value of the option at the lower node at time $t = 2$ is given by

$$
1 2.66 = \max \left[ 1 2.66, \frac {1}{R} \left(q \times 6.54 + (1 - q) \times 1 8.37\right) \right]
$$ where $12.66 = 100 - 87.34$ is the intrinsic value of the option at that node. More generally, the value, $V_{t}(S)$, of the American put option at any time $t$ node when the underlying price is $S$ can be computed according to

$$
\begin{array}{l} {V _ {t}
(S) } = {\max \left[ K - S, \frac {1}{R} \left[ q \times V _ {t + 1} (u S) + (1 - q) \times V _ {t + 1} (d S) \right] \right]} \\ = \max \left[ K - S, \frac {1}{R} \mathrm {E} _ {t} ^ {Q} \left[ V _ {t + 1} \left(S _ {t + 1}\right) \right] \right]. \\ \end{array}
$$

We will return to option pricing in much greater generality when we study martingale pricing.

# Appendix A: Calibrating The Binomial Model To Geometric Brownian Motion

In continuous-time models, it is often assumed that a security price process follows a geometric Brownian motion
(GBM) which is the continuous-time analog to the binomial model. In that case we write $S_{t} \sim \mathrm{GBM}(\mu, \sigma)$ if

$$
S _ {t + s} = S _ {t} e ^ {(\mu - \sigma^ {2} / 2) s} + \sigma \left(B _ {t + s} - B _ {t}\right) \tag {14}
$$ where $B_{t}$ is a standard Brownian motion. Note that this model (like the binomial model) has the nice property that the gross return, $R_{t, t+s}$, in any period, $[t, t+s]$, is independent of returns in earlier periods. In particular, it is independent of $S_{t}$. This follows by noting

$$
R _ {t, t + s} = \frac {S _ {t + s}}{S _ {t}} = e ^ {(\mu - \sigma^ {2} / 2) s + \sigma (B _ {t + s} - B _ {t})}
$$ and noting the independent increments property of Brownian motion. It is appealing that $R_{t, t + s}$ is independent of $S_{t}$ since it models real world markets where investors care only about returns and not the absolute price level of securities. The binomial model has similar properties since the gross return in any period of the binomial model is either $u$ or $d$, and this is independent of what has happened in earlier periods.

We often wish to calibrate the binomial model so that its dynamics match that of the geometric Brownian motion in (14). To do this we need to choose $u, d$ and $p$, the real-world probability of an up-move, appropriately. There are many possible ways of doing this, but one of the more common choices is to set

$$ p = \frac {e ^ {\mu \Delta t} - d}{u - d} \tag {15}
$$

$$ u = \exp (\sigma \sqrt {\Delta t})
$$

$$ d = 1 / u = \exp (- \sigma \sqrt {\Delta t})
$$ where $T$ is the expiration date and $\Delta t$ is the length of a period. Note then, for example, that

$\operatorname{E}[S_{i+1}|S_i] = puS_i + (1 - p)dS_i = S_i \exp(\mu \Delta t)$, as desired. We will choose the gross risk-free rate per period, $R$, so that it corresponds to a continuously-compounded rate, $r$, in continuous time. We therefore have

$$
R = e ^ {r \Delta t}.
$$

Remark 3 Recall that the true probability of an up-move, $p$, has no bearing upon the risk-neutral probability, $q$, and therefore it does not directly affect how securities are priced. From our calibration of the binomial model, we therefore see that $\mu$, which enters the calibration only through $p$, does not impact security prices. On the other hand, $u$ and $d$ depend on $\sigma$ which therefore does impact security prices. This is a recurring theme in derivatives pricing and we will revisit it when we study continuous-time models.

Remark 4 In the previous remark we stated that $p$ does not directly affect how securities are priced. This means that if $p$ should suddenly change but $S_0$, $R$, $u$ and $d$ remain unchanged, then $q$, and therefore derivative prices, would also remain unchanged. This seems very counter-intuitive but an explanation is easily given. In practice, a change in $p$ would generally cause one or more of $S_0$, $R$, $u$ and $d$ to also change. This would in turn cause $q$, and therefore derivative prices, to change. We could therefore say that $p$ has an indirect effect on derivative security prices. This of course is the point we were making when discussing the price of an option on stocks ABC and XYZ in Section 4.2.

It is more typically the case, however, that we wish to calibrate a binomial model to the risk-neutral dynamics of a stock following a GBM model. In that case, if the stock has a continuous dividend yield of $c$ so that a dividend of size $cS_{t}dt$ is paid at time $t$ then the risk-neutral dynamics of the stock can be shown to satisfy

$$
S _ {t + s} = S _ {t} e ^ {(r - c - \sigma^ {2} / 2) s + \sigma \left(B _ {t + s} - B _ {t}\right)} \tag {16}
$$ where $B_{t}$ is now a standard Brownian motion under the risk-neutral distribution. The corresponding $q$ for the binomial model can be obtained from (15) with $\mu$ replaced by $r - c$ with $u$ and $d$ unchanged.

## Martingale Pricing Theory In Discrete-Time And Discrete-Space Models

These notes develop the theory of martingale pricing in a discrete-time, discrete-space framework. This theory is also important for the modern theory of portfolio optimization as the problems of pricing and portfolio optimization are now recognized as being intimately related. We choose to work in a discrete-time and discrete-space environment as this will allow us to quickly develop results using a minimal amount of mathematics: we will use only the basics of linear programming duality and martingale theory. Despite this restriction, the results we obtain hold more generally for continuous-time and continuous-space models once various technical conditions are satisfied. This is not too surprising as one can imagine approximating these latter models using our discrete-time, discrete-space models by simply keeping the time horizon fixed and letting the number of periods and states go to infinity in an appropriate manner.

# 1 Martingale Pricing Theory For Single-Period Models

# 1.1 Notation And Definitions

We first consider a one-period model and introduce the necessary definitions and concepts in this context. We will then extend these definitions to multi-period models.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/bb3bb528405bf14adc846cb3e228c2108da35db129e005440af15945eb4ea6e0.jpg)

$$ t = 0
$$

$$ t = 1
$$

Let $t = 0$ and $t = 1$ denote the beginning and end, respectively, of the period. At $t = 0$ we assume that there are $N + 1$ securities available for trading, and at $t = 1$ one of $m$ possible states will have occurred. Let $S_0^{(i)}$ denote the time $t = 0$ value of the $i^{th}$ security for $0 \leq i \leq N$, and let $S_1^{(i)}(\omega_j)$ denote its payoff at date $t = 1$ in the event that $\omega_j$ occurs. Let $P = (p_1, \ldots, p_m)$ be the true probability distribution describing the likelihood of each state occurring. We assume that $p_k > 0$ for each $k$.

# Arbitrage

A type $A$ arbitrage is an investment that produces immediate positive reward at $t = 0$ and has no future cost at $t = 1$. An example of a type $A$ arbitrage would be somebody walking up to you on the street, giving you a positive amount of cash, and asking for nothing in return, either then or in the future.

A type $B$ arbitrage is an investment that has a non-positive cost at $t = 0$ but has a positive probability of yielding a positive payoff at $t = 1$ and zero probability of producing a negative payoff then. An example of a type $B$ arbitrage would be a stock that costs nothing, but that will possibly generate dividend income in the future.

In finance we always assume that arbitrage opportunities do not exist since if they did, market forces would quickly act to dispel them.

# Linear Pricing

Definition 1 Let $S_0^{(1)}$ and $S_0^{(2)}$ be the date $t = 0$ prices of two securities whose payoffs at date $t = 1$ are $d_1$ and $d_2$, respectively<sup>2</sup>. We say that linear pricing holds if for all $\alpha_1$ and $\alpha_2$, $\alpha_1 S_0^{(1)} + \alpha_2 S_0^{(2)}$ is the value of the security that pays $\alpha_1 d_1 + \alpha_2 d_2$ at date $t = 1$.

It is easy to see that absence of type $A$ arbitrage implies that linear pricing holds. As we always assume that arbitrage opportunities do not exist, we also assume that linear pricing always holds.

# Elementary Securities, Attainability And State Prices

Definition 2 An elementary security is a security that has date $t = 1$ payoff of the form $e_j = (0, \dots, 0,1,0, \dots, 0)$, where the payoff of 1 occurs in state $j$.

As there are $m$ possible states at $t = 1$, there are $m$ elementary securities.

Definition 3 A security or contingent claim, $X$, is said to be attainable if there exists a trading strategy, $\theta = [\theta_0\theta_1\ldots \theta_N]^\top$, such that

$$
\left[ \begin{array}{c} X \left(\omega_ {1}\right) \\ \vdots \\ X \left(\omega_ {m}\right) \end{array} \right] = \left[ \begin{array}{ccc} S _ {1} ^ {(0)} \left(\omega_ {1}\right) & \dots & S _ {1} ^ {(N)} \left(\omega_ {1}\right) \\ \vdots & \vdots & \vdots \\ S _ {1} ^ {(0)} \left(\omega_ {m}\right) & \dots & S _ {1} ^ {(N)} \left(\omega_ {m}\right) \end{array} \right] \left[ \begin{array}{c} \theta_ {0} \\ \vdots \\ \theta_ {N} \end{array} \right]. \tag {1}
$$

In shorthand we write $X = S_{1}\theta$ where $S_{1}$ is the $m \times (N + 1)$ matrix of date 1 security payoffs. Note that $\theta_{j}$ represents the number of units of the $j^{th}$ security purchased at date
0. We call $\theta$ the replicating portfolio.

# Example 1 (An Attainable Claim)

Consider the one-period model below where there are 4 possible states of nature and 3 securities, i.e. $m = 4$ and $N = 2$. At $t = 1$ and state $\omega_3$, for example, the values of the 3 securities are 1.03,2 and 4, respectively.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/60fe4bff8f0448b37fd5f1f2c0f1bf624312de672e742713c3c28387df4f4342.jpg)

The claim $X = [7.47 \quad 6.97 \quad 9.97 \quad 10.47]^\top$ is an attainable claim since $X = S_1\theta$ where $\theta = [-1 \quad 1.5 \quad 2]^\top$ is a replicating portfolio for $X$.

Note that the date $t = 0$ cost of the three securities has nothing to do with whether or not a claim is attainable. We can now give a more formal definition of arbitrage in our one-period models.

Definition 4 A type $A$ arbitrage is a trading strategy, $\theta$, such that $S_0^\top \theta < 0$ and $S_1\theta = 0$. A type $B$ arbitrage is a trading strategy, $\theta$, such that $S_0^\top \theta \leq 0$, $S_1\theta \geq 0$ and $S_1\theta \neq 0$.

Note for example, that if $S_0^\top \theta < 0$ then $\theta$ has negative cost and therefore produces an immediate positive reward if purchased at $t = 0$.

Definition 5 We say that a vector $\pi = [\pi_1 \dots \pi_m]^\top > 0$ is a vector of state prices if the date $t = 0$ price, $P$, of any attainable security, $X$, satisfies

$$
P = \sum_ {k = 1} ^ {m} \pi_ {k} X \left(\omega_ {k}\right). \tag {2}
$$

We call $\pi_k$ the $k^{th}$ state $^3$ price.

Remark 1 It is important to note that in principle there might be many state price vectors. If the $k^{th}$ elementary security is attainable, then its price must be $\pi_k$ and the $k^{th}$ component of all possible state price vectors must therefore coincide. Otherwise an arbitrage opportunity would exist.

# Example 2 (State Prices)

Returning to the model of Example 1 we can easily check<sup>4</sup> that

$[\pi_1 \pi_2 \pi_3 \pi_4]^\top = [0.2433 0.1156 0.3140 0.3168]^\top$ is a vector of state prices. More generally, however, we can check that

$$
\left[ \begin{array}{c} \pi_ {1} \\ \pi_ {2} \\ \pi_ {3} \\ \pi_ {4} \end{array} \right] = \left[ \begin{array}{c} 0 \\ 0.3102 \\ 0.4113 \\ 0.2682 \end{array} \right] + \epsilon \left[ \begin{array}{c} 0.7372 \\ - 0.5898 \\ - 0.2949 \\ 0.1474 \end{array} \right]
$$ is also a vector of state prices for any $\epsilon$ such $\pi_i > 0$ for $1\leq i\leq 4$

# Deflating By The Numeraire Security

Let us recall that there are $N + 1$ securities and that $S_1^{(i)}(\omega_j)$ denotes the date $t = 1$ price of the $\mathfrak{i}^{th}$ security in state $\omega_{j}$. The date $t = 0$ price of the $\mathfrak{i}^{th}$ security is denoted by $S_0^{(i)}$.

Definition 6 A numeraire security is a security with a strictly positive price at all times, $t$.

It is often convenient to express the price of a security in units of a chosen numeraire. For example, if the $n^{th}$ security is the numeraire security, then we define

$$
\overline {{S}} _ {t} ^ {(i)} (\omega_ {j}):= \frac {S _ {t} ^ {(i)} (\omega_ {j})}{S _ {t} ^ {(n)} (\omega_ {j})}
$$ to be the date $t$, state $\omega_{j}$ price (in units of the numeraire security) of the $i^{th}$ security. We say that we are deflating by the $\mathfrak{n}^{th}$ or numeraire security. Note that the deflated price of the numeraire security is always constant and equal to
1. Definition 7 The cash account is a particular security that earns interest at the risk-free rate of interest. In a single period model, the date $t = 1$ value of the cash account is $1 + r$ (assuming that $1 had been deposited at date $t = 0$ ), regardless of the terminal state and where $r$ is the one-period interest rate that prevailed at $t = 0$.

In practice, we often deflate by the cash account if it is available. Note that deflating by the cash account is then equivalent to the usual process of discounting. We will use the zero $^{th}$ security with price process, $S_{t}^{(0)}$, to denote the cash account whenever it is available.

# Example 3 (Numeraire And Cash Account)

Note that any security in Example 1 could serve as a numeraire security since each of the 3 securities has a strictly positive price process. It is also clear that the zero $^{th}$ security in that example is actually the cash account.

# Equivalent Martingale Measures
(Emms) We assume that we have chosen a specific numeraire security with price process, $S_{t}^{(n)}$.

Definition 8 An equivalent martingale measure
(EMM) or risk-neutral probability measure is a set of probabilities, $Q = (q_{1},\ldots, q_{m})$ such that

1. $q_{k} > 0$ for all $k$.
2. The deflated security prices are martingales. That is

$$
\overline {{S}} _ {0} ^ {(i)}:= \frac {S _ {0} ^ {(i)}}{S _ {0} ^ {(n)}} = \mathrm {E} _ {0} ^ {Q} \left[ \frac {S _ {1} ^ {(i)}}{S _ {1} ^ {(n)}} \right] =: \mathrm {E} _ {0} ^ {Q} \left[ \overline {{S}} _ {1} ^ {(i)} \right]
$$ for all $i$ where $\mathrm{E}_0^Q [.]$ denotes expectation with respect to the risk-neutral probability measure, $Q$.

Remark 2 Note that a set of risk-neutral probabilities, or EMM, is specific to the chosen numeraire security, $S_{t}^{(n)}$. In fact it would be more accurate to speak of an EMM-numeraire pair.

# Complete Markets

We now assume that there are no arbitrage opportunities. If there is a full set of $m$ elementary securities available (i.e. they are all attainable), then we can use the state prices to compute the date $t = 0$ price, $S_0$, of any security. To see this, let $x = [x_1 \ldots x_m]^\top$ be the vector of possible date $t = 1$ payoffs of a particular security. We may then write

$$ x = \sum_ {i = 1} ^ {m} x _ {i} e _ {i}
$$ and use linear pricing to obtain $S_0 = \sum_{i=1}^{m} x_i \pi_i$.

If a full set of elementary securities exists, then as we have just seen, we can construct and price every possible security. We have the following definition.

Definition 9 If every random variable $X$ is attainable, then we say that we have a complete market.

Otherwise we have an incomplete market.

Note that if a full set of elementary securities is available, then the market is complete.

Exercise 1 Is the model of Example 1 complete or incomplete?

# 1.2 Pricing In Single-Period Models

We are now ready to derive the main results of martingale pricing theory for single period models.

Proposition 1 If an equivalent martingale measure, $Q$, exists, then there can be no arbitrage opportunities.

Exercise 2 Prove Proposition
1. Exercise 3 Convince yourself that if we did not insist on each $q_k$ being strictly positive in Definition 8 then Proposition 1 would not hold.

Theorem 2 Assume there is a security with a strictly positive price process, $S_{t}^{(n)}$. If there is a set of positive state prices, then a risk-neutral probability measure, $Q$, exists with $S_{t}^{(n)}$ as the numeraire security. Moreover, there is a one-to-one correspondence between sets of positive state prices and risk-neutral probability measures.

Proof: Suppose a set of positive state prices, $\pi = [\pi_1\ldots \pi_m]^\top$, exists. For all $j$ we then have (by definition of state prices pricing)

$$
\begin{array}{l} S _ {0} ^ {(j)} = \sum_ {k = 1} ^ {m} \pi_ {k} S _ {1} ^ {(j)} (\omega_ {k}) \\ = \left(\sum_ {l = 1} ^ {m} \pi_ {l} S _ {1} ^ {(n)} \left(\omega_ {l}\right)\right) \sum_ {k = 1} ^ {m} \frac {\pi_ {k} S _ {1} ^ {(n)} \left(\omega_ {k}\right)}{\sum_ {l = 1} ^ {m} \pi_ {l} S _ {1} ^ {(n)} \left(\omega_ {l}\right)} \frac {S _ {1} ^ {(j)} \left(\omega_ {k}\right)}{S _ {1} ^ {(n)} \left(\omega_ {k}\right)}. \tag {3} \\ \end{array}
$$

Now observe that $\sum_{l=1}^{m} \pi_{l} S_{1}^{(n)}(\omega_{l}) = S_{0}^{(n)}$ and that if we define

$$ q _ {k}:= \frac {\pi_ {k} S _ {1} ^ {(n)} \left(\omega_ {k}\right)}{\sum_ {l = 1} ^ {m} \pi_ {l} S _ {1} ^ {(n)} \left(\omega_ {l}\right)}, \tag {4}
$$ then $Q \coloneqq (q_{1},\ldots, q_{m})$ defines a probability measure. Equation (3) then implies

$$
\frac {S _ {0} ^ {(j)}}{S _ {0} ^ {(n)}} = \sum_ {k = 1} ^ {m} q _ {k} \frac {S _ {1} ^ {(j)} \left(\omega_ {k}\right)}{S _ {1} ^ {(n)} \left(\omega_ {k}\right)} = \mathrm {E} _ {0} ^ {Q} \left[ \frac {S _ {1} ^ {(j)}}{S _ {1} ^ {(n)}} \right] \tag {5}
$$ and so $Q$ is a risk-neutral probability measure, as desired.

The one-to-one correspondence between sets of positive state prices and risk-neutral probability measures is clear from (4).

Remark 3 The true real-world probabilities, $P = (p_{1},\dots, p_{m})$, are almost irrelevant here. The only connection between $P$ and $Q$ is that they must be equivalent. That is $p_k > 0 \Leftrightarrow q_k > 0$. Note that in the statement of Theorem 2 we assumed that the set of state prices was positive. This and equation (4) implied that each $q_{k} > 0$ so that $Q$ is indeed equivalent to $P$. (Recall it was assumed at the beginning that each $p_k > 0$.)

# Absence Of Arbitrage $\Equiv$ Existence Of Positive State Prices $\Equiv$ Existence Of Emm

Before we establish the main result, we first need the following theorem which we will prove using the theory of linear programming.

Theorem 3 Let $A$ be an $m \times n$ matrix and suppose that the matrix equation $Ax = p$ for $p \geq 0$ cannot be solved except for the case $p = 0$. Then there exists a vector $y > 0$ such that $A^{\top}y = 0$.

Proof: We will use the following result from the theory of linear programming:

If a primal linear program, $P$, is infeasible then its dual linear program, $D$, is either also infeasible, or it has an unbounded objective function.

Now consider the following sequence of linear programs, $\mathbf{P}_i$, for $i = 1,\dots m$:

$$
\min \quad 0 ^ {\top} x \quad (\mathbf {P} _ {i})
$$ subject to $Ax\geq \epsilon_{i}$ where $\epsilon_{i}$ has a 1 in the $i^{th}$ position and 0 everywhere else. The dual, $\mathbf{D}_i$, of each primal problem, $\mathbf{P}_i$ is

$$
\max y _ {i} \quad (\mathbf {D} _ {i})
$$ subject to $A^{\top}y = 0$

$$ y \geq 0
$$

By assumption, each of the primal problems, $\mathbf{P}_i$, is infeasible. It is also clear that each of the dual problems are feasible (take $y$ equal to the zero vector). By the LP result above, it is therefore the case that each $\mathbf{D}_i$ has an unbounded objective function. This implies, in particular, that corresponding to each $\mathbf{D}_i$, there exists a vector $y^i \geq 0$ with $A^\top y^i = 0$ and $y_i^i > 0$, i.e. the $i^{th}$ component of $y^i$ is strictly positive. Now taking

$$ y ^ {*} = \sum_ {i = 1} ^ {m} y ^ {i},
$$ we clearly see that $A^{\top}y^{*} = 0$ and $y^{*}$ is strictly positive.

We now prove the following important result regarding absence of arbitrage and existence of positive state prices.

Theorem 4 In the one-period model there is no arbitrage if and only if there exists a set of positive state prices.

Proof:
(i) Suppose first that there is a set of positive state prices, $\pi \coloneqq (\pi_1,\dots,\pi_m)$. If $x\geq 0$ is the date $t = 1$ payoff of an attainable security, then the price, $S$, of the security is given by

$$
S = \sum_ {j = 1} ^ {m} \pi_ {j} x _ {j} \geq 0.
$$

If some $x_{j} > 0$ then $S > 0$, and if $x = 0$ then $S = 0$. Therefore there is no arbitrage opportunity.

(ii) Suppose now that there is no arbitrage. Consider the $(m + 1)\times (N + 1)$ matrix, $A$, defined by

$$
A = \left[ \begin{array}{ccc} S _ {1} ^ {(0)} (\omega_ {1}) & \dots & S _ {1} ^ {(N)} (\omega_ {1}) \\ \vdots & \vdots & \vdots \\ S _ {1} ^ {(0)} (\omega_ {m}) & \dots & S _ {1} ^ {(N)} (\omega_ {m}) \\ - S _ {0} ^ {(0)} & \dots & - S _ {0} ^ {(N)} \end{array} \right]
$$ and observe (convince yourself) that the absence of arbitrage opportunities implies the non-existence of an $N$ -vector, $x$, with

$$
A x \geq 0 \quad \text {and} A x \neq 0.
$$

In this context, the $i^{th}$ component of $x$ represents the number of units of the $i^{th}$ security that was purchased or sold at $t = 0$. Theorem 3 then assures us of the existence of a strictly positive vector $\pi$ that satisfies $A^{\top}\pi = 0$. We can normalize $\pi$ so that $\pi_{m + 1} = 1$ and we then obtain

$$
S _ {0} ^ {(i)} = \sum_ {j = 1} ^ {m} \pi_ {j} S _ {1} ^ {(i)} (\omega_ {j}).
$$

That is, $\pi \coloneqq (\pi_1,\dots,\pi_m)$ is a vector of positive state prices.

Theorems 2 and 4 imply the following theorem which encapsulates the principal results for our single-period model.

# Theorem 5 (First Fundamental Theorem Of Asset Pricing)

Assume there exists a security with strictly positive price process. Then the absence of arbitrage, the existence of state prices and the existence of an EMM, $Q$, are all equivalent.

# Example 4 (An Arbitrage-Free Market)

The model in Example 1 is arbitrage-free since we saw in Example 2 that a vector of positive state prices exists for this market

# Example 5 (A Market With Arbitrage Opportunities)

Consider the one-period, 2-state model below.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/59a24e4f81acd1ca294f2ac6339eb7c7374090a39f2d5f269b37fa9871898f62.jpg)

No positive state price vector exists for this model so there must be an arbitrage opportunity.

Exercise 4 Find an arbitrage strategy, $\theta$, in the model of Example 5.

# Complete Markets $\Equiv$ Unique Emm

We now turn to the important question of completeness and we have the following formulation that is equivalent to Definition
9. We state this as a theorem but the proof is immediate given our original definition.

Theorem 6 Assume that there are no arbitrage opportunities. Then the market is complete if and only if the matrix of date $t = 1$ payoffs, $S_{1}$, has rank $m$.

# Example 6 (An Incomplete Market)

The model of Example 1 is arbitrage-free by Theorem 4 since we saw in Example 2 that a vector of positive state prices exists for this model. However the model is incomplete since the rank of the payoff matrix, $S_{1}$, can be at most 3 which is less than the number of possible states, 4.

# Example 7 (A Complete Market)

Consider the one-period model below where there are 4 possible states of nature and 4 securities, i.e. $m = 4$ and $N = 3$.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/60593e5a1a9401651ca29ee11630b9ae1f6635c947b88a6e21863cc0392e8052.jpg)

We can easily check that $\mathrm{rank}(S_1) = 4 = m$, so that this model is indeed complete. (We can also confirm that this model is arbitrage free by Theorem 4 and noting that the state price vector of Example 2 is a
(unique) state price vector here.)

Exercise 5 Show that if a market is incomplete, then at least one elementary security is not attainable.

Suppose now that the market is incomplete so that at least one elementary security, say $e_j$, is not attainable. By Theorem 4, however, we can still define a set of positive state prices if there are no arbitrage opportunities. In particular, we can define the state price $\pi_j > 0$ even though the $j^{th}$ elementary security is not attainable. A number of interesting questions arise regarding the uniqueness of state price and risk-neutral probability measures, and whether or not markets are complete. The following theorem addresses these questions.

# Theorem 7 (Second Fundamental Theorem Of Asset Pricing)

Assume there exists a security with strictly positive price process and there are no arbitrage opportunities. Then the market is complete if and only if there exists exactly one equivalent martingale measure (or equivalently, one vector of positive state prices).

Proof:
(i) Suppose first that the market is complete. Then there exists a unique set of positive state prices, and therefore by Theorem 2, a unique risk-neutral probability measure.

(ii) Suppose now that there exists exactly one risk-neutral probability measure. We will derive a contradiction by assuming that the market is not complete. Suppose then that the random variable $X = (X_{1},\ldots, X_{m})$ is not attainable. This implies that there does not exist an $(N + 1)$ -vector, $\theta$, such that $S_{1}\theta = X$.

Therefore, using a technique similar to that in the proof of Theorem 3, we can show there exists a vector, $h$ such that $h^{\top}S_{1} = 0$ and $h^{\top}X > 0$. Let $Q$ be some risk-neutral probability measure and define $\hat{Q}$ by

$$
\widehat {Q} (\omega_ {j}) = Q (\omega_ {j}) + \lambda h _ {j} S _ {1} ^ {(n)} (\omega_ {j})
$$ where $S_1^{(n)}$ is the date $t = 1$ price of the numeraire security and $\lambda > 0$ is chosen so that $\widehat{Q}(\omega_j) > 0$ for all $j$. Note $\widehat{Q}$ is a probability measure since $h^\top S_1 = 0$ implies $\sum_{j} h_j S_1^{(n)}(\omega_j) = 0$. It is also easy to see
(check) that since $Q$ is an equivalent probability measure, so too is $\widehat{Q}$ and $Q \neq \widehat{Q}$. Therefore we have a contradiction and so the market must be complete.

Remark: It is easy to check that the price of $X$ under $Q$ is different to the price of $X$ under $\widehat{Q}$ in Theorem
7. This could not be the case if $X$ was attainable. Why?

# 2 Martingale Pricing Theory For Multi-Period Models

# 2.1 Notation And Definitions

Before extending our single-period results to multi-period models, we first need to extend some of our single-period definitions and introduce the concept of trading strategies and self-financing trading strategies. We will assume<sup>10</sup> for now that none of the securities in our multi-period models pay dividends. (We will return to the case where they do pay dividends at the end of these notes.)

As before we will assume that there are $N + 1$ securities, $m$ possible states of nature and that the true probability measure is denoted by $P = (p_1, \ldots, p_m)$. We assume that the investment horizon is $[0, T]$ and that there are a total of $T$ trading periods. Securities may therefore be purchased or sold at any date $t$ for $t = 0,1, \ldots, T - 1$. Figure 1 below shows a typical multi-period model with $T = 2$ and $m = 9$ possible states. The manner in which information is revealed as time elapses is clear from this model. For example, at node $I_1^{4,5}$ the available information tells us that the true state of the world is either $\omega_4$ or $\omega_5$. In particular, no other state is possible at $I_1^{4,5}$.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/69e760114500b2bf64bae557fb193e1e11955a0b81f35f3a9a179c18bb20f82b.jpg)

Note that the multi-period model is composed of a series of single-period models. At date $t = 0$ in Figure 1, for example, there is a single one-period model corresponding to node $I_0$. Similarly at date $t = 1$ there are three possible one-period models corresponding to nodes $I_1^{1,2,3}$, $I_1^{4,5}$ and $I_1^{6,7,8,9}$, respectively. The particular one-period model that prevails at $t = 1$ will depend on the true state of nature. Given a probability measure, $P = (p_1,\dots, p_m)$, we can easily compute the conditional probabilities of each state. In Figure 1, for example, $\mathbf{P}(\omega_1|I_1^{1,2,3}) = p_1 / (p_1 + p_2 + p_3)$. These conditional probabilities can be interpreted as probabilities in the corresponding single-period models. For example, $p_1 = \mathbf{P}(I_1^{1,2,3}|I_0)$, $\mathbf{P}(\omega_1|I_1^{1,2,3})$. This observation (applied to risk-neutral probabilities) will allow us to easily generalize our single-period results to multi-period models.

# Trading Strategies And Self-Financing Trading Strategies

Definition 10 A predictable stochastic process is a process whose time $t$ value, $X_{t}$ say, is known at time $t - 1$ given all the information that is available at time $t - 1$.

Definition 11 A trading strategy is a vector, $\theta_t = [\theta_t^{(0)}(\omega) \dots \theta_t^{(N)}(\omega)]^\top$, of predictable stochastic processes that describes the number of units of each security held just before trading at time $t$, as a function of $t$ and $\omega$.

For example, $\theta_t^{(i)}(\omega)$ is the number of units of the $i^{th}$ security held between times $t - 1$ and $t$ in state $\omega$. We will sometimes write $\theta_t^{(i)}$, omitting the explicit dependence on $\omega$. Note that $\theta_t$ is known at date $t - 1$ as we insisted in Definition 11 that $\theta_t$ be predictable. In our financial context, 'predictable' means that $\theta_t$ cannot depend on information that is not yet available at time $t - 1$.

# Example 8 (Constraints Imposed By Predictability Of Trading Strategies)

Referring to Figure 1, it must be the case that for all $i = 0,\dots, N$

$$
\begin{array}{l} \theta_ {2} ^ {(i)} \left(\omega_ {1}\right) = \theta_ {2} ^ {(i)} \left(\omega_ {2}\right) = \theta_ {2} ^ {(i)} \left(\omega_ {3}\right) \\ \theta_ {2} ^ {(i)} (\omega_ {4}) = \theta_ {2} ^ {(i)} (\omega_ {5}) \\ \theta_ {2} ^ {(i)} (\omega_ {6}) = \theta_ {2} ^ {(i)} (\omega_ {7}) = \theta_ {2} ^ {(i)} (\omega_ {8}) = \theta_ {2} ^ {(i)} (\omega_ {9}). \\ \end{array}
$$

Exercise 6 What can you say about the relationship between the $\theta_1^{(i)}(\omega_j)$ 's for $j = 1,\ldots, m?$

Definition 12 The value process, $V_{t}(\theta)$, associated with a trading strategy, $\theta_t$, is defined by

$$
V _ {t} = \left\{ \begin{array}{ll} \sum_ {i = 0} ^ {N} \theta_ {1} ^ {(i)} S _ {0} ^ {(i)} & for t = 0 \\ \sum_ {i = 0} ^ {N} \theta_ {t} ^ {(i)} S _ {t} ^ {(i)} & for t \geq 1. \end{array} \right.
$$

Definition 13 A self-financing trading strategy is a strategy, $\theta_t$, where changes in $V_t$ are due entirely to trading gains or losses, rather than the addition or withdrawal of cash funds. In particular, a self-financing strategy satisfies

$$
V _ {t} = \sum_ {i = 0} ^ {N} \theta_ {t + 1} ^ {(i)} S _ {t} ^ {(i)} \text {for} t = 1, \dots, T - 1.
$$

Definition 13 states that the value of a self-financing portfolio just before trading or re-balancing is equal to the value of the portfolio just after trading, i.e., no additional funds have been deposited or withdrawn.

Exercise 7 Show that if a trading strategy, $\theta_{t}$, is self-financing then the corresponding value process, $V_{t}$, satisfies

$$
V _ {t + 1} - V _ {t} = \sum_ {i = 0} ^ {N} \theta_ {t + 1} ^ {(i)} \left(S _ {t + 1} ^ {(i)} - S _ {t} ^ {(i)}\right). \tag {6}
$$

Clearly then changes in the value of the portfolio are due to capital gains or losses and are not due to the injection or withdrawal of funds. Note that we can also write (6) as

$$ d V _ {t} = \theta_ {t} ^ {\top} d S _ {t},
$$ which anticipates our continuous-time definition of a self-financing trading strategy.

We can now extend the one-period definitions of arbitrage opportunities, attainable claims and completeness.

# Arbitrage

Definition 14 A type A arbitrage opportunity is a self-financing trading strategy, $\theta_t$, such that $V_0(\theta) < 0$ and $V_T(\theta) = 0$. Similarly, a type B arbitrage opportunity is a self-financing trading strategy, $\theta_t$, such that $V_0(\theta) = 0$, $V_T(\theta) \geq 0$ and $\mathbb{E}_0^P[V_T(\theta)] > 0$.

# Attainability And Complete Markets

Definition 15 A contingent claim, $C$, is a random variable whose value at time $T$ is known at that time given the information available then. It can be interpreted as the time $T$ value of a security (or, depending on the context, the time $t$ value if this value is known by time $t < T$ ).

Definition 16 We say that the contingent claim $C$ is attainable if there exists a self-financing trading strategy, $\theta_t$, whose value process, $V_T$, satisfies $V_T = C$.

Note that the value of the claim, $C$, in Definition 16 must equal the initial value of the replicating portfolio, $V_0$ if there are no arbitrage opportunities available. We can now extend our definition of completeness.

Definition 17 We say that the market is complete if every contingent claim is attainable. Otherwise the market is said to be incomplete.

Note that the above definitions of attainability and
(in) completeness are consistent with our definitions for single-period models. With our definitions of a numeraire security and the cash account remaining unchanged, we can now define what we mean by an equivalent martingale measure
(EMM) , or set of risk-neutral probabilities.

# Equivalent Martingale Measures
(Emms) We assume again that we have in mind a specific numeraire security with price process, $S_{t}^{(n)}$.

Definition 18 An equivalent martingale measure
(EMM) , $Q = (q_{1},\ldots, q_{m})$, is a set of probabilities such that

1. $q_{i} > 0$ for all $i = 1,\dots, m$
2. The deflated security prices are martingales. That is

$$
\overline {{S}} _ {t} ^ {(i)}:= \frac {S _ {t} ^ {(i)}}{S _ {t} ^ {(n)}} = \mathrm {E} _ {t} ^ {Q} \left[ \frac {S _ {t + s} ^ {(i)}}{S _ {t + s} ^ {(n)}} \right] =: \mathrm {E} _ {t} ^ {Q} \left[ \overline {{S}} _ {t + s} ^ {(i)} \right]
$$ for $s, t \geq 0$, for all $i = 0, \dots, N$, and where $\mathrm{E}_t^Q[\cdot]$ denotes the expectation under $Q$ conditional on information available at time $t$. (We also refer to $Q$ as a set of risk-neutral probabilities.)

# 2.2 Pricing In Multi-Period Models

We will now generalize the results for single-period models to multi-period models. This is easily done using our single-period results and requires very little extra work.

# Absence Of Arbitrage $\Equiv$ Existence Of Emm

We begin with two propositions that enable us to generalize Proposition
1. Proposition 8 If an equivalent martingale measure, $Q$, exists, then the deflated value process, $V_{t}$, of any self-financing trading strategy is a $Q$ -martingale.

Proof: Let $\theta_t$ be the self-financing trading strategy and let $\overline{V}_{t+1} \coloneqq V_{t+1} / S_{t+1}^{(n)}$ denote the deflated value process. We then have

$$
\begin{array}{l} \mathrm {E} _ {t} ^ {Q} \left[ \bar {V} _ {t + 1} \right] = \mathrm {E} _ {t} ^ {Q} \left[ \sum_ {i = 0} ^ {N} \theta_ {t + 1} ^ {(i)} \bar {S} _ {t + 1} ^ {(i)} \right] \\ = \sum_ {i = 0} ^ {N} \theta_ {t + 1} ^ {(i)} \mathrm {E} _ {t} ^ {Q} \left[ \overline {{S}} _ {t + 1} ^ {(i)} \right] \\ = \sum_ {i = 0} ^ {N} \theta_ {t + 1} ^ {(i)} \overline {{S}} _ {t} ^ {(i)} \\ = \overline {{V}} _ {t} \\ \end{array}
$$ demonstrating that $\overline{V}_t$ is indeed a martingale, as claimed.

Remark 4 Note that Proposition 8 implies that the deflated price of any attainable security can be computed as the $Q$ -expectation of the terminal deflated value of the security.

Proposition 9 If an equivalent martingale measure, $Q$, exists, then there can be no arbitrage opportunities.

Proof: The proof follows almost immediately from Proposition
8. We can now now state our principal result for multi-period models, assuming as usual that a numeraire security exists.

Theorem 10 (Fundamental Theorem of Asset Pricing: Part 1)

In the multi-period model there is no arbitrage if and only if there exists an EMM, $Q$.

Proof:
(i) Suppose first that there is no arbitrage as defined by Definition
14. Then we can easily argue there is no arbitrage (as defined by Definition 4) in any of the embedded one-period models. Theorem 5 then implies that each of the embedded one-period models has a set of risk-neutral probabilities. By multiplying these probabilities as described in the paragraph immediately following Figure 1, we can construct an EMM, $Q$, as defined by Definition 18.

(ii) Suppose there exists an EMM, $Q$. Then Proposition 9 gives the result.

# Complete Markets $\Equiv$ Unique Emm

As was the case with single-period models, it is also true that multi-period models are complete if and only if the EMM is unique. (We are assuming here that there is no arbitrage so that an EMM is guaranteed to exist.)

Proposition 11 The market is complete if and only if every embedded one-period model is complete.

Exercise 8 Prove Proposition 11

We have the following theorem.

Theorem 12 (Fundamental Theorem of Asset Pricing: Part 2)

Assume there exists a security with strictly positive price process and that there are no arbitrage opportunities. Then the market is complete if and only if there exists exactly one risk-neutral martingale measure, $Q$.

Proof:
(i) Suppose the market is complete. Then by Proposition 11 every embedded one-period model is complete so we can apply Theorem 7 to show that the EMM, $Q$, (which must exist since there is no arbitrage) is unique.

(ii) Suppose now $Q$ is unique. Then the risk-neutral probability measure corresponding to each one-period model is also unique. Now apply Theorem 7 again to obtain that the multi-period model is complete.

# State Prices

As in the single-period models, we also have an equivalence between equivalent martingale measures, $Q$, and sets of state prices. We will use $\pi_t^{\{t + s\}}(\Lambda)$ to denote the time $t$ price of a security that pays $1 at time $t + s$ in the event that $\omega \in \Lambda$. We are implicitly assuming that we can tell at time $t + s$ whether or not $\omega \in \Lambda$. In Figure 1, for example, $\pi_0^{\{1\}}(\omega_4, \omega_5)$ is a valid expression whereas $\pi_0^{\{1\}}(\omega_4)$ is not.

# 2.3 Why Is Absence Of Arbitrage $\Equiv$ Existence Of An Emm?

Let us now develop some intuition for why the discounted price process, $S_{j}^{t} / S_{i}^{t}$, should be a Q-martingale if there are no arbitrage opportunities. First, it is clear that we should not expect a non-deflated price process to be a martingale under the true probability measure, $P$. After all, if a cash account is available, then it will always grow in value as long as the risk-free rate of interest is positive. It cannot therefore be a $P$ -martingale.

It makes sense then that we should compare the price processes of securities relative to one another rather than examine them on an absolute basis. This is why we deflate by some positive security. Even after deflating, however, it is still not reasonable to expect deflated price processes to be $P$ -martingales. After all, some securities are riskier than others and since investors are generally risk averse it makes sense that riskier securities should have higher expected rates of return. However, if we change to an equivalent martingale measure, $Q$, where probabilities are adjusted to reflect the riskiness of the various states, then we can expect deflated price processes to be martingales under $Q$. The vital point here is that each $q_{k}$ must be strictly positive since we have assumed that each $p_{k}$ is strictly positive.

As a further aid to developing some intuition, we might consider the following three scenarios:

# Scenario 1

Imagine a multi-period model with two assets, both of whose price processes, $X_{t}$ and $Y_{t}$ say, are deterministic and positive. Convince yourself that in this model it must be the case that $X_{t} / Y_{t}$ is a martingale if there are to be no arbitrage opportunities. (A martingale in a deterministic model must be a constant process. Moreover, in a deterministic model a risk-neutral measure, $Q$, must coincide with the true probability measure, $P$.)

# Scenario 2

Generalize scenario 1 to a deterministic model with $n$ assets, each of which has a positive price process. Note that you can choose to deflate by any process you choose. Again it should be clear that deflated security price processes are
(deterministic) martingales.

# Scenario 3

Now consider a one period stochastic model that runs from date $t = 0$ to date $t = 1$. There are only two possible outcomes at date $t = 1$ and we assume there are only two assets, $S_{t}^{(1)}$ and $S_{t}^{(2)}$. Again, convince yourself that if there are to be no arbitrage opportunities, then it must be the case that there is probability measure, $Q$, such that $S_{t}^{(1)} / S_{t}^{(2)}$ is a Q-martingale. Of course we have already given a proof of this result (and much more), but it helps intuition to look at this very simple case and see directly why an EMM must exist if there is no arbitrage.

Once these simple cases are understood, it is no longer surprising that the result (equivalence of absence of arbitrage and existence of an EMM) extends to multiple periods, multiple assets and even continuous time. You can also see that the numeraire asset can actually be any asset with a strictly positive price process. Of course we commonly deflate by the cash account in practice as it is often very convenient to do so, but it is important to note that our results hold if we deflate by other positive price processes. We now consider some examples that will use the various concepts and results that we have developed.

# 3 Examples

# Example 9 (A Complete Market)

There are two time periods and three securities. We will use $S_{t}^{(i)}(\omega_{k})$ to denote the value of the $i^{th}$ security in state $\omega_{k}$ at date $t$ for $i = 0,1,2$, for $k = 1,\dots,9$ and for $t = 0,1,2$. These values are given in the tree above, so for example, the value of the $0^{th}$ security at date $t = 2$ satisfies

$$
S _ {2} ^ {(0)} (\omega_ {k}) = \left\{ \begin{array}{ll} 1.1235, & \text {for} \quad k = 1,2,3 \\ 1.1025, & \text {for} \quad k = 4,5,6 \\ 1.0815, & \text {for} \quad k = 7,8,9. \end{array} \right.
$$

Note that the zero $^{th}$ security is equivalent to a cash account that earns money at the risk-free interest rate. We will use $R_{t}(\omega_{k})$ to denote the gross risk-free rate at date $t$, state $\omega_{k}$. The properties of the cash account imply that $R$ satisfies $R_{0}(\omega_{k}) = 1.05$ for all $i$, and<sup>12</sup>

$$
R _ {1} (\omega_ {k}) = \left\{ \begin{array}{ll} 1.07, & \text {for} \quad k = 1,2,3 \\ 1.05, & \text {for} \quad k = 4,5,6 \\ 1.03, & \text {for} \quad k = 7,8,9. \end{array} \right.
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/9f8a3ea763833696d2b5c4cb309f7cdf483dfd1e80fac0bbdfdda45d8f3a1dd8.jpg)

# $Q_{1}$: Are There Any Arbitrage Opportunities In This Market?

Solution: No, because there exists a set of state prices or equivalently, risk-neutral probabilities. (Recall that by definition, risk neutral probabilities are strictly positive.) We can confirm this by checking that in each embedded one-period model there is a strictly positive solution to $S_{t} = \pi_{t}S_{t + 1}$ where $S_{t}$ is the vector of security prices at a particular time $t$ node and $S_{t + 1}$ is the matrix of date $t = 1$ prices at the successor nodes.

$Q_{2}$: If not, is this a complete or incomplete market?

Solution: Complete, because we have a unique set of state prices or equivalently a unique equivalent martingale measure. We can check this by confirming that each embedded one-period model has a payoff matrix of full rank.

$Q_{3}$: Compute the state prices in this model.

Solution: First compute (how?) the prices at date 1 of $1 to be paid in each of the terminal states at date
2. These are the state prices at date 1, \pi_1^{\{2\}}$, and we find

$$
\begin{array}{l} \pi_ {1} ^ {\{2 \}} \left(\omega_ {1}\right) =. 2, \pi_ {1} ^ {\{2 \}} \left(\omega_ {2}\right) =. 3 \text {and} \pi_ {1} ^ {\{2 \}} \left(\omega_ {3}\right) = 0.4346 \text {at} I _ {1} ^ {1,2,3} \\ \pi_ {1} ^ {\{2 \}} (\omega_ {4}) =. 3, \pi_ {1} ^ {\{2 \}} (\omega_ {5}) =. 3 \text {and} \pi_ {1} ^ {\{2 \}} (\omega_ {6}) = 0.3524 \text {at} I _ {1} ^ {4,5,6} \\ \pi_ {1} ^ {\{2 \}} (\omega_ {7}) =. 2 5, \pi_ {1} ^ {\{2 \}} (\omega_ {8}) =. 4 \text {and} \pi_ {1} ^ {\{2 \}} (\omega_ {9} d) = 0.3209 \text {at} I _ {1} ^ {7,8,9} \\ \end{array}
$$

The value at date 0 of $1 at nodes $I_1^{1,2,3}$, $I_1^{4,5,6}$ and $I_1^{7,8,9}$, respectively, is given by

$$
\pi_ {0} ^ {\{1 \}} (I _ {1} ^ {1,2,3}) =. 3, \pi_ {0} ^ {\{1 \}} (I _ {1} ^ {4,5,6}) =. 3 \text {and} \pi_ {0} ^ {\{1 \}} (I _ {1} ^ {7,8,9}) =. 3524.
$$

Therefore the state prices at date $t = 0$ are (why?)

$$
\begin{array}{l} \pi_ {0} ^ {\{2 \}} (\omega_ {1}) =. 0 6, \pi_ {0} ^ {\{2 \}} (\omega_ {2}) =. 0 9, \pi_ {0} ^ {\{2 \}} (\omega_ {3}) = 0.1304, \pi_ {0} ^ {\{2 \}} (\omega_ {4}) =. 0 9, \pi_ {0} ^ {\{2 \}} (\omega_ {5}) =. 0 9 \\ \pi_ {0} ^ {\{2 \}} (\omega_ {6}) = 0.1057, \pi_ {0} ^ {\{2 \}} (\omega_ {7}) = 0.0881, \pi_ {0} ^ {\{2 \}} (\omega_ {8}) = 0.1410, \pi_ {0} ^ {\{2 \}} (\omega_ {9}) = 0.1131. \\ \end{array}
$$

We can easily check that these state prices do indeed correctly price (subject to rounding errors) the three securities at date $t = 0$.

Q4: Compute the risk-neutral or martingale probabilities when we discount by the cash account, i.e., the zero $^{th}$ security.

Solution: When we deflate by the cash account the risk-neutral probabilities for the nine possible paths at time 0 may be computed using the expression

$$ q _ {k} = \frac {\pi_ {0} ^ {\{2 \}} \left(\omega_ {k}\right) S _ {2} ^ {(0)} \left(\omega_ {k}\right)}{\sum \pi_ {0} ^ {\{2 \}} \left(\omega_ {j}\right) S _ {2} ^ {(0)} \left(\omega_ {j}\right)}. \tag {7}
$$

We have not shown that the expression in (7) is in fact correct, though note that it generalizes the one-period expression in (4).

Exercise 9 Check that (7) is indeed correct. (You may do this by deriving it in exactly the same manner as (4). Alternatively, it may be derived by using equation (4) to compute the risk-neutral probabilities of the embedded one-period models and multiplying them appropriately to obtain the $q_{k}$ 's. Note that the risk-neutral probabilities in the one-period models are conditional risk-neutral probabilities of the multi-period model.)

We therefore have

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|c|}
\hline q1 & q2 & q3 & q4 & q5 & q6 & q7 & q8 & q9 \\ \hline
0.0674 & 0.1011 & 0.1465 & 0.0992 & 0.0992 & 0.1165 & 0.0953 & 0.1525 & 0.1223 \\ \hline
\end{tabular}
\end{document}
```

Q5: Compute the risk-neutral probabilities (i.e. the martingale measure) when we discount by the second security.

Solution: Similarly, when we deflate by the second asset, the risk-neutral probabilities are given by:

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|c|}
\hline q1 & q2 & q3 & q4 & q5 & q6 & q7 & q8 & q9 \\ \hline
0.0282 & 0.1267 & 0.1224 & 0.1267 & 0.0845 & 0.0992 & 0.0414 & 0.2647 & 0.1062 \\ \hline
\end{tabular}
\end{document}
```

Q6: Using the state prices, find the price of a call option on the first asset with strike $k = 2$ and expiration date $t = 2$.

Solution: The payoffs of the call option and the state prices are given by:

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|c|c|}
\hline
State & 1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 & 9 \\ \hline
Payoff & 0 & 0 & 0 & 0 & 0 & 1 & 2 & 0 & 3 \\ \hline
State Price & 0.06 & 0.09 & 0.1304 & 0.09 & 0.09 & 0.1057 & 0.0881 & 0.1410 & 0.1131 \\ \hline
\end{tabular}
\end{document}
```

The price of the option is therefore (why?) given by $0.1057 + (2 \times0.0881) + (3 \times0.1131) =0.6212$.

Q7: Confirm your answer in (6) by recomputing the option price using the martingale measure of (5).

Solution: Using the risk-neutral probabilities when we deflate by the second asset we have:

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|c|c|}
\hline
State & 1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 & 9 \\ \hline
Deflated Payoff & 0 & 0 & 0 & 0 & 0 & 1/2 & 2/1 & 0 & 3/2 \\ \hline
Risk-Neutral Probabilities & 0.0282 & 0.1267 & 0.1224 & 0.1267 & 0.0845 & 0.0992 & 0.0414 & 0.2647 & 0.1062 \\ \hline
\end{tabular}
\end{document}
```

The price of the option deflated by the initial price of the second asset is therefore given by $(0.0992 \times0.5) + (2 \times0.0414) + (3/2) \times0.1062 =0.2917$. And so the option price is given by $0.2917 \times 2.1303 =0.6214$, which is the same answer (modulo rounding errors) as we obtained in (6).

In Example 9 we computed the option price by working directly from the date $t = 2$ payoffs to the date $t = 0$ price. Another method for pricing derivative securities is to iterate the price backwards through the tree. That is we first compute the price at the date $t = 1$ nodes and then use the date $t = 1$ price to compute the date $t = 0$ price. This technique of course, is also implemented using the risk-neutral probabilities or equivalently, the state prices.

Exercise 10 Repeat Question 6 of Example 9, this time using dynamic programming to compute the option price.

Remark 5 While $R_{t}$ was stochastic in Example 9, we still refer to it as a risk-free interest rate. This interpretation is valid since we know for certain at date $i$ the date $i + 1$ value of $1 invested in the cash account at date $i$.

# Example 10 (An Incomplete Market)

Consider the same tree as in Example 9 only now state $\omega_{6}$ is a successor state to node $I_1^{6,7,8,9}$ instead of node $I_1^{4,5}$. We have also changed the payoff of the zero $^{th}$ asset in this state so that our interpretation of the the zero $^{th}$ asset as a cash account remains appropriate. The new tree is displayed below:

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/743bca71a1f54f11b2288f3e14aedbf01c5d3c25cf953dfafc773b8b44c33512.jpg)

# $Q_{1}$: Is This Model Arbitrage Free?

Solution: We know the absence of arbitrage is equivalent to the existence of positive state prices or, equivalently, risk-neutral probabilities. Moreover, if the model is arbitrage free then so is every one-period sub-market so all we need to do is see if we can construct positive state prices for each of the four one-period markets represented by the nodes $I_1^{1,2,3}$, $I_1^{4,5}$, $I_1^{6,7,8,9}$ and $I_0$.

First, it is clear that the one-period market beginning at $I_1^{1,2,3}$ is arbitrage-free since this is the same as the corresponding one-period model in Example
9. For the subproblem beginning at $I_1^{6,7,8,9}$ we can take
(check) $[\pi_1^{\{2\}}(\omega_6)\pi_1^{\{2\}}(\omega_7)\pi_1^{\{2\}}(\omega_8)\pi_1^{\{2\}}(\omega_9)] = [0.07370.19100.37050.3357]$ so this sub-market is also arbitrage free. (Note that other vectors will also work.)

However, it is not possible to find a state price vector, $\left[\pi_1^{\{2\}}(\omega_4)\pi_1^{\{2\}}(\omega_5)\right]$, for the one-period market beginning at $I_1^{4,5}$. In particular, this implies there is an arbitrage opportunity there and so we can conclude<sup>13</sup> that the model is not arbitrage-free.

$Q_{2}$: Suppose the prices of the three securities were such that there were no arbitrage opportunities. Without bothering to compute such prices, do you think the model would then be a complete or incomplete model?

Solution: The model is incomplete as the rank of the payoff matrix in the one-period model beginning at $I_1^{6,7,8,9}$ is less than 4.

$Q_{3}$: Suppose again that the security prices were such that there were no arbitrage opportunities. Give a simple argument for why forward contracts are attainable. (We can therefore price them in this model.)

Solution: This is left as an exercise. (However we will return to this issue and the pricing of futures contracts in Section 5.2.)

Exercise 11 Find an arbitrage opportunity in the one-period model beginning at node $I_1^{4,5}$ in Example 10.

# 4 Dividends And Intermediate Cash-Flows

Thus far, we have assumed that none of the securities pay intermediate cash-flows. An example of such a security is a dividend-paying stock. This is not an issue in the single period models since any such cash-flows are captured in the date $t = 1$ value of the securities. For multi-period models, however, we sometimes need to explicitly model these intermediate cash payments. All of the results that we have derived in these notes still go through, however, as long as we make suitable adjustments to our price processes and are careful with our bookkeeping. In particular, deflated cumulative gains processes rather than deflated security prices are now $Q$ -martingales. The cumulative gain process, $G_{t}$, of a security at time $t$ is equal to value of the security at time $t$ plus accumulated cash payments that result from holding the security.

Consider our discrete-time, discrete-space framework where a particular security pays dividends. Then if the model is arbitrage-free there exists an EMM, $Q$, such that

$$
\overline {{S}} _ {t} = \mathrm {E} _ {t} ^ {Q} \left[ \sum_ {j = t + 1} ^ {t + s} \overline {{D}} _ {j} + \overline {{S}} _ {t + s} \right]
$$ where $D_{j}$ is the time $j$ dividend that you receive if you hold one unit of the security, and $S_{t}$ is its time $t$ ex-dividend price. This result is easy to derive using our earlier results. All we have to do is view each dividend as a separate security with $S_{t}$ then interpreted as the price of the portfolio consisting of these individual securities as well as a security that is worth $S_{t+s}$ at date $t+s$. The definitions of complete and incomplete markets are unchanged and the associated results we derived earlier still hold when we also account for the dividends in the various payoff matrices. For example, if $\theta_{t}$ is a self-financing strategy in a model with dividends then $V_{t}$, the corresponding value process, should satisfy

$$
V _ {t + 1} - V _ {t} = \sum_ {i = 0} ^ {N} \theta_ {t + 1} ^ {(i)} \left(S _ {t + 1} ^ {(i)} + D _ {t + 1} ^ {(i)} - S _ {t} ^ {(i)}\right). \tag {8}
$$

Note that the time $t$ dividends, $D_{t}^{(i)}$, do not appear in (8) since we assume that $V_{t}$ is the value of the portfolio just after dividends have been paid. This interpretation is consistent with taking $S_{t}$ to be the time $t$ ex-dividend price of the security.

The various definitions of complete and incomplete markets, state prices, arbitrage etc. are all unchanged when securities can pay dividends. As mentioned earlier, the First Fundamental Theorem of Asset Pricing now states that deflated cumulative gains processes rather than deflated security prices are now $Q$ -martingales. The second fundamental theorem goes through unchanged.

# 4.1 Using A Dividend-Paying Security As The Numeraire

Until now we have always assumed that the numeraire security does not pay any dividends. If a security pays dividends then we cannot use it as a numeraire. Instead we can use the security's cumulative gains process as the numeraire as long as this gains process is strictly positive. This makes intuitive sense as it is the gains process that represents the true value dynamics of holding the security.

In continuous-time models of equities it is common to assume that the equity pays a continuous dividend yield of $q$ so that $qS_{t}dt$ represent the dividend paid in the time interval $(t, t + dt]$. The cumulative gains process corresponding to this stock price is then $G_{t} \coloneqq e^{qt}S_{t}$ and it is this quantity that can be used as a numeraire.

# 5 Applications Of Martingale Pricing

We now consider applying what we know about martingale pricing to the binomial model as well as the general pricing of forwards and futures.

# 5.1 Pricing In The Binomial Model

The binomial model is a discrete-time, discrete space model that describes the price evolution of a single risky stock that does not pay dividends. If the stock price at the beginning of a period is $S$ then it will either increase to $uS$ or decrease to $dS$ at the beginning of the next period. In the model below we have set $S_0 = 100$, $u = 1.06$ and $d = 1 / u$.

The binomial model assumes that there is also a cash account available that earns risk-free interest at a gross rate of $R$ per period. We assume $R$ is constant $^{14}$ and that the two securities (stock and cash account) may be purchased or sold short. We let $B_{k} = R^{k}$ denote the value at time $k$ of $1 that was invested in the cash account at date 0.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/f086d2a1c16735be52b6a8d97b9f062259e7763ef594d51070c349f69dc544f7.jpg)

$$ t = 0 \qquad t = 1 \qquad t = 2 \qquad t = 3
$$

We have the following result which we will prove using martingale pricing. It is also possible to derive this result using replicating<sup>15</sup> arguments.

Proposition 13 The binomial model is arbitrage-free if and only if

$$
\boxed {d < R < u.} \tag {9}
$$

Proof: The first fundamental theorem of asset pricing states that there is no arbitrage in any of the embedded one-period models at time $t$ if and only if there exists a $q$ satisfying $0 < q < 1$ such that

$$
\begin{array}{l} \frac {S _ {t}}{R ^ {t}} = \mathrm {E} _ {t} ^ {Q} \left[ \frac {S _ {t + 1}}{R ^ {t + 1}} \right] \\ = q \frac {u S _ {t}}{R ^ {t + 1}} + (1 - q) \frac {d S _ {t}}{R ^ {t + 1}}. \tag {10} \\ \end{array}
$$

Solving (10), we find that $q = (R - d) / (u - d)$ and $1 - q = (u - R) / (u - d)$. The result now follows since each of the embedded one-period models in the binomial model are identical.

Note that the $q$ we obtained in the above Proposition was both unique and node independent. Therefore the binomial model itself is arbitrage-free and complete $^{16}$ if (9) is satisfied and we will always assume this to be the case. We will usually use the cash account, $B_{k}$, as the numeraire security so that the price of any security can be computed as the discounted expected payoff of the security under $Q$. Thus the time $t$ price of a security $^{17}$ that is worth $X_{T}$ at time $T$ (and does not provide any cash flows in between) is given by

$$
X _ {t} = B _ {t} \mathrm {E} _ {t} ^ {Q} \left[ \frac {X _ {T}}{B _ {T}} \right] = \frac {1}{R ^ {T - t}} \mathrm {E} _ {t} ^ {Q} [ X _ {T} ]. \tag {11}
$$

The binomial model is one of the workhorses of financial engineering. In addition to being a complete model, it is also recombining. For example, an up-move followed by a down-move leads to the same node as a down-move followed by an up-move. This recombining feature implies that the number of nodes in the tree grows linearly with the number of time periods rather than exponentially. This leads to a considerable gain in computational efficiency when it comes to pricing path-independent securities.

# Example 11 (Pricing A Call Option)

Compute the price of a European call option on the security of Figure 1 with expiration at $T = 3$, and strike $K = 95$. Assume also that $R = 1.02$.

Solution: First, we find $q = \frac{R - d}{u - d} = \frac{1.02 - 1.06^{-1}}{1.6 - 1.06^{-1}} = 0.657$ which is the $Q$ -probability of an up-move. If $C_0$ denotes the date 0 price of the option then (11) implies that it is given by

$$
C _ {0} = \frac {1}{R ^ {3}} \mathrm {E} _ {0} ^ {Q} \left[ C _ {T} \right] = \frac {1}{R ^ {3}} \mathrm {E} _ {0} ^ {Q} [ \max (0, S _ {3} - 9 5) ]. \tag {12}
$$

At this point, there are two possible ways in which we can proceed:

(i) Compute the $Q$ -probabilities of the terminal nodes and then use (12) to determine $C_0$. This method does not bother to compute the intermediate prices, $C_t$.
(ii) Alternatively, we can work backwards in the tree one period at a time to find $C_t$ at each node and at each time $t$.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
Stock Price & European Option Price & & & & & & \\ \hline
 & & 119.10 & & & & 24.10 & \\ \hline
 & 112.36 & 106.00 & & & 19.22 & 11.00 & \\ \hline
100.00 & 106.00 & 94.34 & & 14.76 & 7.08 & 0.00 & \\ \hline
94.34 & 89.00 & 83.96 & 11.04 & 4.56 & 0.00 & 0.00 & \\ \hline t=0 & t=1 & t=2 & t=3 & t=0 & t=1 & t=2 & t=3 \\ \hline
\end{tabular}
\end{document}
```

For example in the European option price table above, we see that $14.76 = \frac{1}{R} (q(19.22) + (1 - q)(7.08))$, i.e., the value of the option at any node is the discounted expected value of the option one time period ahead. This is just restating the $Q$ -martingale property of discounted security price processes. We find that the call option price at $t = 0$ is given by $11.04.

# Example 12 (A Counter-Intuitive Result)

Consider the same option-pricing problem of Example 11 except that we now take $R = 1.04$. We then obtain a European call option price of 15.64 as may be seen from the lattices given below. Note that this price is greater than the option price, 11.04, that we obtained in Example 11.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
Stock Price & European Option Price & & & & & & \\ \hline
 & & 119.10 & & & & 24.10 & \\ \hline
 & 112.36 & 106.00 & & & 21.01 & 11.00 & \\ \hline
100.00 & 106.00 & 94.34 & & 18.19 & 8.76 & 0.00 & \\ \hline
94.34 & 89.00 & 83.96 & 15.64 & 6.98 & 0.00 & 0.00 & \\ \hline t=0 & t=1 & t=2 & t=3 & t=0 & t=1 & t=2 & t=3 \\ \hline
\end{tabular}
\end{document}
```

This observation seems counterintuitive: after all, we are dealing only with positive cash flows, the values of which have not changed, i.e. the option payoffs upon expiration at $t = 3$ have not changed. On the other hand, the interest rate that is used to discount cash flows has increased in this example and so we might have expected the value of the option to have decreased. What has happened? (Certainly this situation would never have occurred in a deterministic world!)

First, from a purely mechanical viewpoint we can see that the risk-neutral probabilities have changed. In particular, the risk-neutral probability of an up-move, $q = (R - d) / (u - d)$, has increased since $R$ has increased. This means that we are more likely to end up in the higher-payoff states. This increased likelihood of higher payoffs more than offsets the cost of having a larger discount factor and so we ultimately obtain an increase in the option value.[18]

This, however, is only one aspect of the explanation. It is perhaps more interesting to look for an intuitive explanation as to why $q$ should increase when $R$ increases. You should think about this!

# 5.2 Computing Futures Prices

We consider a general discrete-time, discrete-space financial market. For ease of exposition we will assume that the market is complete<sup>19</sup> and that none of the securities pay dividends. We will also assume that the numeraire security is the cash account with time $k$ value, $B_{k}$.

Let $F_{k}$ be the date $k$ price of a futures contract written on a particular underlying security. We assume that the contract expires after $n$ periods and we let $S_{k}$ denote the time $k$ price of the security. Then we know that $F_{n} = S_{n}$, i.e., at expiration the futures price and the security price must coincide. We can compute the futures price at $t = n - 1$ by recalling that anytime we enter a futures contract, the initial value of the contract is
0. Martingale pricing therefore implies that the date $t = n - 1$ futures price, $F_{n - 1}$, must satisfy

$$
{ 0 } { = } { \mathrm { E } _ { n - 1 } ^ { Q } \left[ \frac { F _ { n } - F _ { n - 1 } } { B _ { n } } \right]. }
$$

Since $B_{n}$ and $F_{n-1}$ are both known at date $t = n-1$, we therefore have $F_{n-1} = \mathrm{E}_{n-1}^{Q}[F_{n}]$. By the same argument, we also have more generally that $F_{k} = \mathrm{E}_{k}^{Q}[F_{k+1}]$ for $0 \leq k < n$. We can then use the law of iterated expectations to see that $F_{0} = \mathrm{E}_{0}^{Q}[F_{n}]$, implying in particular that the futures price process is a martingale. Since $F_{n} = S_{n}$ we also obtain

$$
F _ {0} = \mathrm {E} _ {0} ^ {Q} \left[ S _ {n} \right]. \tag {13}
$$

Exercise 12 What property of the cash account did we use in deriving (13)? (Note as a result that (13) only holds when $Q$ is the EMM corresponding to taking the cash account as numeraire.)

Exercise 13 Does (13) change if the underlying security pays dividends? You can assume that $S_{i}$ is then the ex-dividend price of the security at time $i$.

# 5.3 Computing Forward Prices

Now let us consider the date 0 price, $G_0$, of a forward contract for delivery of the security at the same date, $t = n$. We recall that $G_0$ is chosen in such a way that the contract is initially worth zero. In particular, martingale pricing implies

$$
{ 0 } { = } { \mathrm { E } _ { 0 } ^ { Q } \left[ \frac { S _ { n } - G _ { 0 } } { B _ { n } } \right]. }
$$

Rearranging terms and using the fact that $G_{0}$ is known at date $t = 0$ we obtain

$$
G _ {0} = \frac {\mathrm {E} _ {0} ^ {Q} \left[ S _ {n} / B _ {n} \right]}{\mathrm {E} _ {0} ^ {Q} \left[ 1 / B _ {n} \right]}. \tag {14}
$$

Remark 6 Note that (14) holds regardless of whether or not the underlying security pays dividends or coupons or whether there are costs associated with storing the security. (Storage costs may be viewed as negative dividends.) Dividends (or other intermediate cash-flows) influence $G_{0}$ through the evaluation of $\mathrm{E}_0^Q [S_n / B_n]$.

Remark 7 If the underlying security does not pay dividends then we obtain $G_0 = S_0 / \mathrm{E}_0^Q [1 / B_n]$. This is consistent with the expression, $S / d(0, n)$, that was given in the Primer on Forwards, Futures and Swaps lecture notes. This is clear since $\mathrm{E}_0^Q [1 / B_n]$ is the time 0 value of $1 at time n and this, by definition, is equal to $d(0, n)$.

Exercise 14 If the underlying security does pay dividends (or have storage costs) then show that the expression in (14) is consistent with the expression given in the Primer on Forwards, Futures and Swaps lecture notes.

We are also in a position now to identify when forwards and futures price coincide. In particular, if we compare (14) with (13) then we immediately obtain the following result.

Theorem 14 If $B_{n}$ and $S_{n}$ are $Q$ -independent, then $G_{0} = F_{0}$. In particular, if interest rates are deterministic, we have $G_{0} = F_{0}$.

Corollary 1 In the binomial model with a constant (or deterministic) gross interest rate, $R$, we must have $G_0 = F_0$.

Exercise 15 In practice, interest rates are stochastic and often tend to be positively correlated with movements in the stock market. In such circumstances, convince yourself by considering (13) and (14) that the futures price, $F_0$, will generally be greater than the forward price, $G_0$, when the underlying security is an equity index such as the S&P500.

# Example 13 (American Options On Futures)

Consider the commodity price lattice below where $u = 1.03$ and $d =0.98$. If we assume $R = 1.01$ per period and that there are no storage costs, then we easily find that the risk-neutral probabilities of an up-move and down-move are given by $q =0.6$ and $1 - q =0.4$, respectively.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
Commodity Price & & & & & & \\ \hline
 & & & & & 119.41 & \\ \hline
 & & & & 115.93 & 113.61 & \\ \hline
 & & & 112.55 & 110.30 & 108.09 & \\ \hline
 & & 109.27 & 107.09 & 104.95 & 102.85 & \\ \hline
 & 103.00 & 106.09 & 103.97 & 101.89 & 99.85 & 97.85 \\ \hline
100.00 & 98.00 & 96.04 & 94.12 & 92.24 & 90.39 & 88.58 \\ \hline t=0 & t=1 & t=2 & t=3 & t=4 & t=5 & t=6 \\ \hline
\end{tabular}
\end{document}
```

We will use $S_{k}$ to denote the commodity price at time $k$ and assume that a futures contract on the commodity exists and that it expires after six periods. We wish to compute the futures price lattice and we can do this in a number of different (though essentially equivalent) ways. The method we choose is to use our earlier observation that any time time $k$, $0 \leq k \leq 6$, the futures price, $F_{k}$ satisfies $F_{k} = \mathbf{E}_{k}^{Q}[S_{6}]$ where $Q$ is the EMM corresponding to the cash account as numeraire. But $\mathbf{E}_{k}^{Q}[S_{6}] = R^{6 - k}S_{k}$ (why?) and so we have

$$
F _ {k} = R ^ {6 - k} S _ {k}.
$$

For example, $F_0 = R^6 S_0 = (1.01^6)100 = 106.15$ and the futures prices at all times may be computed this way. We obtain the futures price lattice below.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
Futures Price & & & & & & \\ \hline
 & & & & & 117.09 & 113.61 \\ \hline
 & & & 114.81 & 111.40 & 108.09 & \\ \hline
 & & 112.58 & 109.24 & 105.99 & 102.85 & \\ \hline
 & 108.25 & 107.12 & 103.94 & 100.85 & 97.85 & \\ \hline t=0 & t=1 & t=2 & t=3 & t=4 & t=5 & t=6 \\ \hline
\end{tabular}
\end{document}
```

Suppose now that we wish to find the price of an American put option with the futures price as the underlying security. If we assume that the option expires at the same time as the futures contract, i.e. after 6 periods, and the strike is $105, then we obtain the price lattice below for the option. In particular, we obtain an initial price of $2 as seen in the lattice below.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
Price of American Put Option on Futures Contract & & & & & & \\ \hline
 & & & & & & 0.00 \\ \hline
 & & & & & 0.00 & 0.00 \\ \hline
 & & & & 0.00 & 0.00 & 0.00 \\ \hline
 & & & 0.13 & 0.34 & 0.85 & 2.15 \\ \hline
 & & 0.50 & 1.05 & 2.15 & 4.15 & 7.15 \\ \hline
 & 1.12 & 2.09 & 3.70 & 6.11 & 9.05 & 11.90 \\ \hline
2.00 & 3.37 & 5.38 & 8.03 & 10.91 & 13.70 & 16.42 \\ \hline t=0 & t=1 & t=2 & t=3 & t=4 & t=5 & t=6 \\ \hline
\end{tabular}
\end{document}
```

# Appendix A: Finding State Price Vectors

In Example 2 we saw that $\left[\pi_1\pi_2\pi_3\pi_4\right]^\top = \left[0.24330.11560.31400.3168\right]^\top$ was a vector of state prices for the security market of that example. In particular, it satisfied $S_{1}^{\top}\pi = S_{0}$, that is

$$
\left[ \begin{array}{cccc} 1.03 & 1.03 & 1.03 & 1.03 \\ 3.00 & 4.00 & 2.00 & 5.00 \\ 2.00 & 1.00 & 4.00 & 2.00 \end{array} \right] \left[ \begin{array}{c} 0.2433 \\ 0.1156 \\ 0.3140 \\ 0.3168 \end{array} \right] = \left[ \begin{array}{c} 1.0194 \\ 3.4045 \\ 2.4917 \end{array} \right]
$$ where $S_0$ was the vector of date 0 security prices, and $S_1^\top$ was the matrix of date 1 security prices. How did we find such a vector $\pi$?

Consider the equation $Ax = b$ where $A$ is a known $m \times n$ matrix and $b$ is a known $m \times 1$ vector. We would like to solve this equation for the vector $x$. There may be no solution, infinitely many solutions or a unique solution. If more than one solution exists so that $Ax_{1} = Ax_{2} = b$ with $x_{1} \neq x_{2}$ then $y:= x_{1} - x_{2}$ is an element of the nullspace of $A$. That is $Ay = 0$. In particular, any solution to $Ax = b$ can be written as the sum of a particular solution, $x_{1}$, and an element, $w$, of the nullspace.

How do we apply this to finding a vector of positive state prices, assuming such a vector exists. First try and find a particular solution. In Matlab, for example, this can be done $^{20}$ by using the matrix divide command “\”:

```html
>>x1=S1' \S0
 $\mathrm{$x_{1}$} =$ 0 0.3102 0.4113 0.2682
```

We then find the nullspace $^{21}$ of $$S_{1}$^{\top}$ by using the "null" command:

```txt
>>w $\equiv$ null(S1')
 $\mathbf{W} =$ 0.7372 -0.5898 -0.2949 0.1474
```

Now every possible solution to $S_1^\top \pi = S_0$ can be written as

$$
\left[ \begin{array}{c} \pi_ {1} \\ \pi_ {2} \\ \pi_ {3} \\ \pi_ {4} \end{array} \right] = \left[ \begin{array}{c} 0 \\ 0.3102 \\ 0.4113 \\ 0.2682 \end{array} \right] + \epsilon \left[ \begin{array}{c} 0.7372 \\ - 0.5898 \\ - 0.2949 \\ 0.1474 \end{array} \right]
$$ where $\epsilon$ is any real number. We just need to find an $\epsilon$ such that the solution is strictly positive. If no such epsilon exists, then there is no vector of state prices. We chose $\epsilon =0.33$ in our example.

# Appendix B: Optimal Stopping And Pricing American Options

An American option on a security gives the holder of the option the right to exercise it at any date on or before the expiration date, $T$. An exercise strategy, $\tau$, is a rule specifying when the option should be exercised.

Because $\tau$ can depend on the evolution of information in the model, it is in general a random variable. However, it should not be possible to base the decision to exercise or not on information that is not yet available. We therefore insist that $\tau$ is a stopping time.

Let $V_{t}$ denote the date $s$ price of an American option that expires at date $T > t$. The owner of the option may exercise it any date $s \in \{t, \dots, T\}$. If exercised at time $s$, the owner of the option then receives $Y_{s}$. We assume that markets are complete and that there are no arbitrage opportunities so there exists a unique equivalent martingale measure, $Q$, relative to some numeraire security, $B_{t}$. We want to determine an expression for $V_{t}$.

Theorem 15
(a) Let $\tau$ denote a generic stopping time and define

$$
Z _ {t}:= \max _ {\tau \in \{t, \dots, T \}} E _ {t} ^ {Q} \left[ \frac {Y _ {\tau} B _ {t}}{B _ {\tau}} \right]. \tag {15}
$$

Then $Z_{t} / B_{t}$ is the smallest supermartingale satisfying $Z_{t} \geq Y_{t}$ for all $t$. Moreover

$$
\tau^ {*}
(t) := \min \{s \geq t: Z _ {s} = Y _ {s} \} \tag {16}
$$ is an optimal stopping time for the optimization problem in (15). $(Z_{t} / B_{t}$ is known as the Snell Envelope of $Y_{t} / B_{t}$.

(b) The American option price, $V_{t}$, satisfies $V_{t} = Z_{t}$ for all $t \in \{0, \dots, T\}$ and $\tau^{*}(0)$ is an optimal exercise strategy.

Proof:
(a) First note that $Z_{T} / B_{T} = Y_{T} / B_{T}$. We can then use (15) and the tower property of conditional expectations to obtain

$$
\frac {Z _ {T - 1}}{B _ {T - 1}} = \max \left\{\frac {Y _ {T - 1}}{B _ {T - 1}}, E _ {T - 1} ^ {Q} \left[ \frac {Z _ {T}}{B _ {T}} \right] \right\}.
$$

More generally, we can use (15) to obtain

$$
\begin{array}{l} \frac {Z _ {t}}{B _ {t}} = \max \left\{\frac {Y _ {t}}{B _ {t}}, \max _ {\tau \geq t + 1} E _ {t} ^ {Q} \left[ E _ {t + 1} ^ {Q} \left[ \frac {Y _ {\tau}}{B _ {\tau}} \right] \right] \right\} \\ = \max \left\{\frac {Y _ {t}}{B _ {t}}, E _ {t} ^ {Q} \left[ \max _ {\tau \geq t + 1} E _ {t + 1} ^ {Q} \left[ \frac {Y _ {\tau}}{B _ {\tau}} \right] \right] \right\} \\ = \max \left\{\frac {Y _ {t}}{B _ {t}}, E _ {t} ^ {Q} \left[ \frac {Z _ {t + 1}}{B _ {t + 1}} \right] \right\}. \tag {17} \\ \end{array}
$$

It then follows $^{22}$ from (17) that $Z_{t} / B_{t}$ is a supermartingale. Moreover, it is clear that $Z_{t} \geq Y_{t}$. Now suppose that $U_{t} / B_{t}$ is any other supermartingale satisfying $U_{t} \geq Y_{t}$. Since $Z_{T} = Y_{T}$ it is clear that $Z_{T} \leq U_{T}$. Moreover, by hypothesis $U_{t-1}$ clearly satisfies

$$
\frac {U _ {t - 1}}{B _ {t - 1}} \geq \max \left\{\frac {Y _ {t - 1}}{B _ {t - 1}}, E _ {t - 1} ^ {Q} \left[ \frac {U _ {t}}{B _ {t}} \right] \right\}.
$$

Iterating backwards from $t = T$ it is clear that $U_{t} \geq Z_{t}$.

Finally, in order to prove that $\tau^{*}(t)$ is an optimal stopping time we argue as follows. Let $\widehat{\tau}(t) \geq t$ be any optimal policy starting from time $t$ so that $Z_{\widehat{\tau}(t)} = Y_{\widehat{\tau}(t)}$ and $\widehat{\tau}(t) \geq \tau^{*}(t)$. But then

$$
E _ {\tau^ {*}
(t) } ^ {Q} \left[ \frac {Y _ {\widehat {\tau}
(t) }}{B _ {\widehat {\tau}
(t) }} \right] \leq \frac {Z _ {\tau^ {*}
(t) }}{B _ {\tau^ {*}
(t) }} = \frac {Y _ {\tau^ {*}
(t) }}{B _ {\tau^ {*}
(t) }}
$$ by (15) and (16). The law of iterated expectations now implies $E_{t}^{Q}\left[\frac{Y_{\widehat{\tau}(t)}}{B_{\widehat{\tau}(t)}}\right] \leq E_{t}^{Q}\left[\frac{Y_{\tau^{*}(t)}}{B_{\tau^{*}(t)}}\right]$ and the result now follows.
(b) Note that since markets are complete, we know that $Y_{\tau}$ is attainable for every stopping time, $\tau$. We need to consider two situations:
(i) $V_{t} < Z_{t}$ and
(ii) $V_{t} > Z_{t}$. If
(i) prevails, you should purchase the American option at a cost of $V_{t}$, adopt the optimal exercise policy, $\tau^{*}(t)$, of part
(a) and adopt a self-financing trading strategy that is equivalent to selling the security with payoff $Y_{\tau^{*}(t)}$ at time $\tau^{*}(t)$. The initial income from this trading strategy is $Z_{t} - V_{t}$ and so this clearly leads to arbitrage profits. If
(ii) prevails, you should sell the option and invest the proceeds appropriately to construct an arbitrage. In particular, you can adopt a super-replicating strategy that super-replicates the payoff at exercise regardless of the exercise policy that is used. The details are left as an exercise but the argument can be made rigorous $^{23}$ by constructing a self-financing strategy that replicates the martingale component of the Doob decomposition of the super-martingale $Z_{t} / B_{t}$.

We can use the result of Theorem 15 and in particular, equation (17), to price American options. For example, in the binomial model we can use dynamic programming to compute the optimal strategy. As usual, we will use the cash account (with value $B_{k}$ at date $k$ ), as the numeraire security.

# Example 14 (Pricing An American Put Option)

Compute the price of an American put option on the security of Figure 1 with expiration at $T = 3$, and strike $K = 95$. Assume again that $R = 1.02$.

Solution: We know from Example 11 that q = 0.657, and we know the value of the American option at date T =
3. We then work backwards in the tree until we have found C₀a, the date t = 0 value of the American option. For example at date t = 2 when the stock price is $89 we know that the option value is given by

$$
C _ {2} ^ {a} (\S 8 9) = \max \left(K - 8 9, \frac {1}{R} [ q (. 6 6) + (1 - q) (1 1.04) ]\right) = K - 8 9 = 6.
$$

That is, the value of the option at that node is $6 and it is optimal to exercise the option there. Continuing in this recursive manner, we find that $C_0^a = $0.77.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
Stock Price & American Option Price & & & & & & \\ \hline
 & & 119.10 & & & 0.00 & & \\ \hline
 & & 112.36 & 106.00 & & 0.00 & 0.00 & \\ \hline
 & 106.00 & 100.00 & 94.34 & 0.07 & 0.22 & 0.66 & \\ \hline
100.00 & 94.34 & 89.00 & 83.96 & 0.77 & 2.16 & 6.00 & 11.04 \\ \hline t=0 & t=1 & t=2 & t=3 & t=0 & t=1 & t=2 & t=3 \\ \hline
\end{tabular}
\end{document}
```

In Example 14 we found that it was sometimes optimal to exercise the option prior to expiration. This raises the interesting question of whether or not there are American options for which it is never optimal to exercise them prior to maturity. We have the following result.

Theorem 16 If interest rates are non-negative, it is never optimal to exercise an American call option on a non-dividend paying security prior to expiration.

Proof: Using the $Q$ -martingale property of the deflated security price process and the non-negativity of interest rates, we have

$$
\begin{array}{l} \mathrm {E} _ {t} ^ {Q} \left[ (S _ {t + s} / B _ {t + s} - K / B _ {t + s}) ^ {+} \right] \geq \mathrm {E} _ {t} ^ {Q} \left[ S _ {t + s} / B _ {t + s} - K / B _ {t + s} \right] \\ { = } { S _ { t } / B _ { t } - K \mathrm { E } _ { t } ^ { Q } [ 1 / B _ { t + s } ] } \\ \geq \quad S _ {t} / B _ {t} - K / B _ {t}. \\ \end{array}
$$

Since it is also the case that $(S_{t + s} / B_{t + s} - K / B_{t + s})^{+}\geq 0$, we therefore also have

$$
\mathrm {E} _ {t} ^ {Q} \left[ (S _ {t + s} / B _ {t + s} - K / B _ {t + s}) ^ {+} \right] \geq (S _ {t} / B _ {t} - K / B _ {t}) ^ {+}.
$$

That is, $(S_{t} / B_{t} - K / B_{t})^{+}$ is a sub-martingale. Now the Optional Sampling Theorem for sub-martingales states that if $Y_{t}$ is a sub-martingale and $\tau \leq T$ is a stopping time, then $\mathrm{E}_0^Q [Y_\tau ]\leq \mathrm{E}_0^Q [Y_T]$. If we apply this result to $(S_{t} / B_{t} - K / B_{t})^{+}$ and recall that the price, $C_0^a$, of the American option is given by

$$
C _ {0} ^ {a} = \max _ {\tau} \mathrm {E} _ {0} ^ {Q} \left[ (S _ {\tau} / B _ {\tau} - K / B _ {\tau}) ^ {+} \right]
$$ we see that $C_0^a = \mathrm{E}_0^Q\left[(S_T / B_T - K / B_T)^+\right]$ and it is never optimal to exercise early.

Remark 8 Note that if the security paid dividends in $[0, T]$, then $S_{t} / B_{t}$ would not be a $Q$ -martingale and the above proof would not go through. The result generalizes to other types of American options where the underlying security, $S_{t}$, again does not pay dividends in $[0, T]$, and where the payoff function is a convex function of $S$. The proof is similar and relies on the application of Jensen's Inequality.

# Exercises

1. Referring to Examples 1 and 2, show that

$$
\left[ \begin{array}{c} \pi_ {1} \\ \pi_ {2} \\ \pi_ {3} \\ \pi_ {4} \end{array} \right] = \left[ \begin{array}{c} 0 \\ 0.3102 \\ 0.4113 \\ 0.2682 \end{array} \right] + \epsilon \left[ \begin{array}{c} 0.7372 \\ - 0.5898 \\ - 0.2949 \\ 0.1474 \end{array} \right]
$$ is also a vector of state prices for any $\epsilon$ such that $\pi_i > 0$ for $1\leq i\leq 4$

2. What elementary securities are attainable in the model of Example 1? Is this model complete or incomplete? Explain your answer.

3. The single-period model of Example 7 is a complete market. Find the replicating portfolio for each of the elementary securities.

4.
(a) Referring to Example 7, find a set of risk-neutral probabilities for the case where we take the $2^{nd}$ security as numeraire. (Recall that the cash account is the $0^{th}$ security so the $2^{nd}$ security is the security with price 2.4917 at date $t = 0$.)

(b) Are these risk-neutral probabilities unique? Explain your answer.
(c) Would we get the same set of risk-neutral probabilities if we used a different numeraire?

5. Do Exercise 7.6. Do Exercise
6. That is, prove Proposition 11.7. Suppose we find ourselves at node $I_1^{6,7,8,9}$ at $t = 1$ in Example
7. The one-period model beginning at this node is incomplete and so not every security is attainable. Is a call option on the second security with strike $k = 2$ attainable? If so, what is the price of this call option? If not, can you bound the price of the option, i.e. find bounds on the option price that must be satisfied if there is to be no arbitrage?
8. Referring to Example 9, compute the date $t = 0$ value of a European style option that expires at $t = 2$ with a payoff function given by $\max \left(0, S_2^{(1)} - S_2^{(2)} - 1\right)$.
9. Find the replicating portfolio for the contingent claim $X = \max \left(0, S_2^{(1)} - S_2^{(2)} - 1\right)$, i.e. the option of the previous question.
 10. Consider an equity swap based on the first security of Example 9. (Recall that the securities are numbered 0,1 and 2 so that the first security refers to the security whose value at node I₁¹,²,³, for example, is 1.4346.) Party A is long the swap and receives $100 × St(1) from party B at dates t = 1 and t =
11. In return, party B is short the swap and receives $M at dates t = 1 and t = 2 from party A. Compute the value of the swap at t = 0 and determine what value of M will make the swap worth 0 at t = 0. (Note that you may answer this question using either the state prices or the unique EMM, Q, that corresponds to your choice of numeraire security.)
12. Find the price of an American put option on the second security of Example
13. Assume the strike is $k = 3$ and expiration is $T = 2$.

14. Compute the date $t = 0$ price of a forward contract for delivery at date $T = 2$ of the second security in Example 9.13. Compute the date $t = 0$ price of a futures contract that expires at $T = 2$ on the second security in Example
15. Is the futures price different to the forward price? Are you surprised?

16. (Futures Prices and Incomplete Markets) Referring to Example 10, suppose we changed the payoffs of the $1^{st}$ and $2^{nd}$ securities in states $\omega_4$ and $\omega_5$ so that the model was arbitrage-free. (By leaving the payoff of the $0^{th}$ security unchanged at 1.1025 in those states, we maintain its interpretation as the cash account.) Now recall that this model is incomplete, implying in particular that there does not exist a unique EMM, $Q$.

(a) Show that equation (13), i.e. $F_0 = \mathsf{E}_0^Q [S_n]$ where $F_0$ is the time 0 futures price, still holds, irrespective of which $Q$ we use. In particular, conclude that a unique arbitrage-free futures price process is computable. (Note that equation (13) only holds when we take the cash account as numeraire so when we say "irrespective of which $Q$ we use" it is implicit that we always have the cash account as the numeraire.)
(b) Give an example of a two-period financial market where a unique arbitrage-free futures price process on a particular underlying security does not exist.

15. (Put-Call Parity) Show that the time $t$ European call and put options prices, $C_t$ and $P_t$ respectively, satisfy

$$
S _ {t} = C _ {t} - P _ {t} + d (t, T) K \tag {18}
$$ where $d(t, T)$ is the discount factor for lending between dates $t$ and $T$ the expiration date of the options, and $K$ is the strike of both the call option and the put option. You can assume that the security does not pay any intermediate dividends.

16. (A Surprising Result?) Consider an N-period binomial model for a non-dividend paying stock where the true probability of an up-move in each period is given by p =0.5. The initial value of the stock is $S_{0}$ = $100. Let C0 denote the time t = 0 price of a European call option on the stock with strike K that expires after N periods. Now suppose that some extremely favorable news about the stock has just been announced so that while S0 still remains at $100, the probability of an up-move in each period has increased dramatically so that now p =0.999. What will happen to $C_{0}$? Justify your answer. Is this what you would expect in practice? Again, justify your answer.
17. (Stochastic Discount Factors) Let $P$ be the true data-generating probability measure and let $S_{T}$ be the time $T$ price of a non dividend-paying security. Show that if there is no arbitrage then the initial security price, $S_{0}$, may be represented as $S_{0} = \mathsf{E}_{0}^{P}[d_{T}S_{T}]$ where $d_{T}$ is a stochastic discount factor. (Obviously this is true in general for dividend-paying securities.)
 18. Referring to Example 13, create an Excel spreadsheet to price an American put option on the futures contract with strike K = $95 and maturity T = 8 periods. (Your spreadsheet should recreate the binomial lattice for the commodity price process, the futures price process and the put option process. You should use input cells for R, S0, K and σ.)
19. (Handling Discrete Dividends) A common method of adapting the binomial model to handle discrete dividends is as follows. Let $S_0$ denote the time $t = 0$ price of the stock and $D \coloneqq$ present values of dividends that are paid $^{24}$ between now and option maturity, $T$. Let $X_0 \coloneqq S_0 - D_0$ so that $X_0$ represents the stochastic component of the stock price. We then build a regular recombining binomial lattice to model the dynamics of $X_t$. At each node on the lattice for $X_t$ we can calculate the stock price as $S_t = X_t + PV$ (Dividends yet to be paid in $[t, T]$ ). Options can therefore be priced using this lattice for

$X_{t}$. (Note that the use of the closed interval $[t, T]$ rather than $(t, T]$ implicitly implies the option-holder gets the dividend if the option is exercised at time $t$ and a dividend is paid at that date.)

Use this method to price a 6-month American call option on a stock with initial value S0 = 100, strike K = 100 and a continuously compounded risk-free rate if r = 5%. You can assume σ = 30% for Xt and that the stock pays a dividend of $5 in 4 months time. A 6-period lattice will suffice. Is the option price the same as the price of the corresponding European option? While this method of handling discrete dividends is often used in practice, it does have some flaws. Can you identify any of them?

20. (A Foreign Currency EMM) Let $Q^f$ be an EMM for a foreign investor corresponding to some foreign numeraire, $X^f$ say. Note that $X_t^f$ is then denominated in units of the foreign currency. Show that $Q^f$ can also be used as an EMM for a domestic investor. What is the corresponding domestic numeraire? Is the converse also true, i.e., can any domestic EMM also be used as an EMM for a foreign investor?
21. (Martingale Pricing Theory and the CAPM) Is the Capital Asset Pricing Model
(CAPM) consistent with martingale pricing theory? Justify your answer. (Recall that the CAPM is a one-period model which states that the expected return, $\bar{r}$ say, on any security satisfies $\bar{r} = r_f + \beta (\bar{r}_m - r_f)$ where $r_f$ is the risk-free rate, $\bar{r}_m$ is the expected return on the market portfolio and $\beta = \mathrm{Cov}(r, r_m) / \mathrm{Var}(r_m)$.)
22. (The Knapsack Problem: A Deterministic Dynamic Program) Assume that we have a vessel whose maximum weight capacity is $z$ and whose cargo is to consist of different quantities of $N$ different items. Let $v_{i}$ denote the value of the $i^{th}$ type of item, $w_{i}$ the weight of the $i^{th}$ type of item, and $x_{i}$ the number of items of type $i$ that are loaded in the vessel. The problem is to find the most valuable cargo, i.e., to maximize $\sum_{i=1}^{N} x_{i} v_{i}$ subject to the constraints $\sum_{i=1}^{N} x_{i} w_{i} \leq z$ and $x_{i} = 0,1,2, \ldots$. Formulate this problem as a dynamic programming problem.
23. (Dynamic Portfolio Optimization in Complete Markets) Referring to the model of Example 9, suppose you have a fixed initial wealth, $W_0 \geq 0$ at $t = 0$, and you wish to choose a trading strategy to maximize $P(W_2 \geq \alpha)$ subject to $P(W_2 \geq 0) = 1$. ( $W_2$ is your date $t = 2$ wealth, $\alpha > 0$ is a fixed constant and to avoid a trivial solution you should assume $S_0^{(n)} E_0^Q [\alpha / S_T^{(n)}] > W_0$ where $S_i^{(n)}$ is the time $i$ price of the numeraire security.) Explain in detail how you would do this. Note also how your solution can be adapted to handle the case where $\alpha$ is a stochastic benchmark. (Hint: You will need to solve a dynamic program of the type given in Exercise 22 where each $X_i$ is either 0 or
24. Why?)

## Term Structure Lattice Models

These lecture notes introduce fixed income derivative securities and the modeling philosophy used to price these securities. We will use binomial lattice models for doing this and the securities we will consider include bond futures and forwards, caplets and caps, floorlets and floors, and swaps and swaptions.

Fixed-income models are inherently more complex than security models as we need to model the evolution of the entire term-structure of interest rates. The short-rate, $r_t$, is the variable of interest in many fixed income models and we will focus on this in our lattice models. Our pricing "philosophy" will be to simply specify risk-neutral probabilities for the short-rate, $r_t$, and to do so without any reference to the true dynamics of the short-rate. This is in contrast to the way we developed risk-neutral pricing in the binomial model for stocks. In the lattice models of these notes, however, we will will price securities in such a way that guarantees no-arbitrage.

We also note that since the financial crisis of 2008 / 2009 there have been substantial developments in term structure modeling. In particular (and in contrast to the pre-crisis world) it is now widely recognized that the pricing of LIBOR-based derivatives such as swaps, swaptions, caps, floors etc. require a so-called multi-curve framework with a separate curve necessary for each tenor. We do not develop the multi-curve framework in these notes as our goal is simply to learn the basics of term structure modeling and fixed income derivatives pricing.

# 1 Binomial-Lattice Models

We begin with binomial-lattice models of the short rate. These models may be viewed as models in their own right or as approximations to more sophisticated continuous-time one-factor short-rate models. These models will also be used to introduce various interest rate derivatives that are commonly traded in the financial markets.

# 1.1 Constructing An Arbitrage-Free Lattice

Consider the binomial lattice below where we specify the short rate, ri, j, that will apply for the single period beginning at node N(i, j). This means for example that if $1 is deposited in the cash account at t = i, state j, (i.e. node N(i, j), then this deposit will be worth $(1 + ri, j) at time t + 1 regardless of the successor node to N(i, j).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/3f06440a3bc3206dd44ec633177839011b313b9fd7987dbee3f840e6124958da.jpg)

We use martingale pricing on this lattice to compute security prices. For example, if $S_{i}(j)$ is the value of a non-dividend / coupon<sup>1</sup> paying security at time $i$ and state $j$, then we insist that

$$
S _ {i}
(j) = \frac {1}{1 + r _ {i, j}} \left[ q _ {u} S _ {i + 1} (j + 1) + q _ {d} S _ {i + 1}
(j) \right] \tag {1}
$$ where $q_{u}$ and $q_{d}$ are the probabilities of up- and down-moves, respectively. If the security pays a coupon should be included in the right-hand side of (1). Such a model is arbitrage-free by construction.

# 1.2 Computing The Term-Structure From The Lattice

It is easy to compute the price of a zero-coupon bond once the EMM, $Q$, (with the cash account as numeraire) and the short-rate lattice are specified. In the short rate-lattice below (where the short rate increases by a factor of $u = 1.25$ or decreases by a factor of $d =0.9$ in each period), we assume that the $Q$ -probability of each branch is0.5 and node-independent. We can then use martingale-pricing to compute the prices of zero-coupon bonds.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
Short Rate Lattice & 0.183 & & & & \\ \hline
 & & & 0.146 & 0.132 & \\ \hline
 & & 0.117 & 0.105 & 0.095 & \\ \hline
 & 0.075 & 0.084 & 0.076 & 0.068 & \\ \hline t=0 & t=1 & t=2 & t=3 & t=4 & t=5 \\ \hline
\end{tabular}
\end{document}
```

# Example 1 (Pricing A Zero-Coupon Bond)

We compute the price of a 4-period zero-coupon bond with face value 100 that expires at $t = 4$. Assuming the short-rate lattice is as given above, we see, for example, that the bond price at node (2,2) is given by

$$
8 3.08 = \frac {1}{1 +. 094} \left[ \frac {1}{2} 8 9.51 + \frac {1}{2} 9 2.22 \right].
$$

Iterating backwards, we find that the zero-coupon bond is worth 77.22 at $t = 0$.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
4-Year Zero & 100.00 & & & \\ \hline
 & & 89.51 & 100.00 & \\ \hline
 & 79.27 & 87.35 & 92.22 & 100.00 \\ \hline
77.22 & 84.43 & 90.64 & 94.27 & 100.00 \\ \hline t=0 & t=1 & t=2 & t=3 & t=4 \\ \hline
\end{tabular}
\end{document}
```

Note that given the price of the 4-period zero-coupon bond, we can now find the 4-period spot rate, $s_4$. It satisfies $77.22 = 1 / (1 + s_4)^4$ if we quote spot rates on a per-period basis. In this manner we can construct the entire term-structure by evaluating zero-coupon bond prices for all maturities.

# 1.3 Pricing Interest Rate Derivatives

We now introduce and price several interest-rate derivatives using the straightforward martingale pricing methodology. (After we derive the forward equations in a later section, we will see an even easier and more efficient $^2$ method for pricing derivatives.) The following examples will be based on the short-rate lattice and the corresponding zero-coupon bond of Example 1.

# Example 2 (Pricing A European Call Option On A Zero-Coupon Bond)

We want to compute the price of a European call option on the zero-coupon bond of Example 1 that expires at t = 2 and has strike $84. The option price of $2.97 is computed by backwards induction on the lattice below.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
 & 0.00 & European Call Option & \\ \hline
 & 1.56 & 3.35 & Strike = $84 \\ \hline
2.97 & 4.74 & 6.64 & \\ \hline t=0 & t=1 & t=2 & \\ \hline
\end{tabular}
\end{document}
```

# Example 3 (Pricing An American Put Option On A Zero-Coupon Bond)

We want to compute the price of an American put option on the same zero-coupon bond. The expiration date is $ t = 3 $ and the strike is $ $88 $. Again the price is computed by backwards induction on the lattice below, where the maximum of the continuation value and exercise value is equal to the option value at each node.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|}
\hline
 & & 0.00 & \\ \hline
 & 4.92 & 0.00 & American Put Option \\ \hline
 & 8.73 & 0.65 & Strike = $88 \\ \hline
10.78 & 3.57 & 0.00 & \\ \hline t=0 & t=1 & t=2 & t=3 \\ \hline
\end{tabular}
\end{document}
```

# Futures Contracts On Bonds

Let $F_{k}$ be the date $k$ price of a futures contract written on a particular underlying security in a complete<sup>3</sup> market model. We assume that the contract expires after $n$ periods and we let $S_{k}$ denote the time $k$ price of the security. Then we know that $F_{n} = S_{n}$, i.e., at expiration the futures price and the security price must coincide. We can compute the futures price at $t = n - 1$ by recalling that anytime we enter a futures contract, the initial value of the contract is
0. Therefore the futures price, $F_{n - 1}$, at date $t = n - 1$ must satisfy

$$
{ 0 } { = } { \mathrm { E } _ { n - 1 } ^ { Q } \left[ \frac { F _ { n } - F _ { n - 1 } } { B _ { n } } \right] }
$$ where we will assume that the numeraire security is the cash account with value $B_{n}$ at date $n$. Since $B_{n}$ and $F_{n-1}$ are both known at date $t = n-1$, we therefore have $F_{n-1} = \mathrm{E}_{n-1}^{Q}[F_{n}]$. By the same argument, we also have more generally that $F_{k} = \mathrm{E}_{k}^{Q}[F_{k+1}]$ for $0 \leq k < n$. We can then use the law of iterated expectations to see that $F_{0} = \mathrm{E}_{0}^{Q}[F_{n}]$, implying in particular that the futures price process is a martingale. Since $F_{n} = S_{n}$ we have

$$
F _ {0} = \mathrm {E} _ {0} ^ {Q} [ S _ {n} ]. \tag {2}
$$

Remark 1 Note that the above argument holds regardless of whether or not the underlying security pays dividends or coupons as long as the settlement price, $S_{n}$, is ex-dividend. In particular, we can use (2) to price futures on zero-coupon and coupon bearing bonds.

Remark 2 It is important to note that (2) applies only when the EMM, $Q$, is the EMM corresponding to when the cash account is numeraire.

# Forward Contracts On Bonds

Now let us consider the date 0 price, $G_0$, of a forward contract for delivery of the same security at the same date, $t = n$. We recall that $G_0$ is chosen in such a way that the contract is initially worth zero. In particular, martingale pricing implies

$$
0 = \mathrm {E} _ {0} ^ {Q} \left[ \frac {S _ {n} - G _ {0}}{B _ {n}} \right].
$$

Rearranging terms and using the fact that $G_0$ is known at date $t = 0$ we obtain

$$
G _ {0} = \frac {\mathrm {E} _ {0} ^ {Q} \left[ S _ {n} / B _ {n} \right]}{\mathrm {E} _ {0} ^ {Q} \left[ 1 / B _ {n} \right]} \tag {3}
$$

Remark 3 If $B_n$ and $S_n$ are $Q$ -independent, then $G_0 = F_0$. In particular, if interest rates are deterministic, we have $G_0 = F_0$.

Remark 4 If the underlying security does not pay dividends or coupons (storage costs may be viewed as negative dividends), then we obtain $G_0 = S_0 / \mathrm{E}_0^Q [1 / B_n] = S_0 / d(0, n)$.

# Example 4 (Pricing A Forward Contract On A Coupon-Bearing Bond)

We now price a forward contract for delivery at $t = 4$ of a 2-year $10\%$ coupon-bearing bond where we assume that delivery takes place just after a coupon has been paid. In the lattice below we use backwards induction to compute the $t = 4$ price (ex-coupon) of the bond. We then use (3) to price the contract, with the numerator given by the value at node $(0,0)$ of the lattice and the denominator equal to the 4-year discount factor. Note that between $t = 0$ and $t = 4$ in the lattice below, coupons are
(correctly) ignored.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|}
\hline
 & & & & & & 110.00 \\ \hline
 & & & & | 91.66 & 107.19 & 110.00 \\ \hline
 & & 85.08 & | 98.44 & 110.46 & 110.00 & \\ \hline
 & 79.99 & 81.53 & 93.27 & 1103.83 & 112.96 & 110.00 \\ \hline
 & 90.45 & 99.85 & 1108.00 & 114.84 & 110.00 & \\ \hline
79.83 & 89.24 & 97.67 & 104.99 & 111.16 & 116.24 & 110.00 \\ \hline t=0 & t=1 & t=2 & t=3 & t=4 & t=5 & t=6 \\ \hline
Forward Price = 100*79.83 / 77.22 = 103.38 & & & & & & \\ \hline
\end{tabular}
\end{document}
```

# Example 5 (Pricing A Futures Contract On A Coupon-Bearing Bond)

The $t = 0$ price of a futures contract expiring at $t = 4$ on the same coupon-bearing bond is given at node $(0,0)$ in the lattice below. This lattice is constructed using (2). Note that the forward and futures price are close but not equal.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|}
\hline
Futures Price & 91.66 & & & \\ \hline
 & & 95.05 & 98.44 & \\ \hline
 & 98.09 & 101.14 & 103.83 & \\ \hline
103.22 & 100.81 & 103.52 & 105.91 & 108.00 \\ \hline
105.64 & 107.75 & 109.58 & 111.16 & \\ \hline t=0 & t=1 & t=2 & t=3 & t=4 \\ \hline
\end{tabular}
\end{document}
```

# Example 6 (Pricing A Caplet)

A caplet is similar to a European call option on the interest rate $r_t$. They are usually settled in arrears but they may also be settled in advance. If the maturity is $\tau$ and the strike is $c$ then the payoff of a caplet (settled in arrears) at time $\tau$ is $(r_{\tau - 1} - c)^+$. That is, the caplet is a call option on the short rate prevailing at time $\tau - 1$, settled at time $\tau$.

In the lattice below we price a caplet that expires at $t = 6$ with strike $= 2\%$. Note, however, that it is easier to record the time 6 cash flows at their time 5 predecessor nodes, discounting them appropriately. For example, the value at node $N(4,0)$ is given by

$$
0.021 = \frac {1}{1.039} \left[ \frac {1}{2} \frac {\max (0,. 049 -. 0 2)}{1.049} + \frac {1}{2} \frac {\max (0,. 035 -. 0 2)}{1.035} \right].
$$

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
Caplet Strike = 2% & & & & & \\ \hline
 & & & & & 0.138 \\ \hline
 & & & & 0.103 & 0.099 \\ \hline
 & & & 0.080 & 0.076 & 0.068 \\ \hline
 & & 0.064 & 0.059 & 0.053 & 0.045 \\ \hline
 & 0.052 & 0.047 & 0.041 & 0.035 & 0.028 \\ \hline
0.042 & 0.038 & 0.032 & 0.026 & 0.021 & 0.015 \\ \hline t=0 & t=1 & t=2 & t=3 & t=4 & t=5 \\ \hline
\end{tabular}
\end{document}
```

Remark 5 In practice caplets are usually based on LIBOR (London Inter-Bank Offered Rates).

Caps: A cap is a string of caplets, one for each time period in a fixed interval of time and with each caplet having the same strike price, $c$.

Floorlets: A floorlet is similar to a caplet, except it has payoff $(c - r_{\tau -1})^{+}$ and is usually settled in arrears at time $\tau$

Floors: A floor is a string of floorlets, one for each time period in a fixed interval of time and with each floorlet having the same strike price, $c$.

# 2 The Forward Equations

Definition 1 Let $P_{e}(i, j)$ denote the time 0 price of a security that pays $1 at time i, state j and 0 at every other time and state. We say such a security is an elementary security and we refer to the $P_{e}(i, j)'s$ as state prices.

It is easily seen that the elementary security prices satisfy the forward equations:

$$
\begin{array}{l} P _ {e} (k + 1, s) = \frac {P _ {e} (k, s - 1)}{2 (1 + r _ {k, s - 1})} + \frac {P _ {e} (k, s)}{2 (1 + r _ {k, s})}, \quad 0 < s < k + 1 \\ P _ {e} (k + 1,0) = \frac {1}{2} \frac {P _ {e} (k, 0)}{(1 + r _ {k, 0})} \\ P _ {e} (k + 1, k + 1) = \frac {1}{2} \frac {P _ {e} (k, k)}{(1 + r _ {k, k})} \\ \end{array}
$$

Exercise 1 Derive the forward equations.

Since we know $P_{e}(0,0) = 1$ we can use the above equations to evaluate all the state prices by working forward from node $N(0,0)$. Working with state prices has a number of advantages:

1. Once you compute the state prices they can be stored and used repeatedly for pricing derivative securities without needing to use backwards iteration each time.
2. In particular, the term structure can be computed using $O(T^{2})$ operations by first computing the state prices. In contrast, computing the term structure by first computing all zero-coupon bond prices using backwards iteration takes $O(T^{3})$ operations. While this makes little difference given today's computing power, writing code to price derivatives in lattice models is often made easier when we price with the state prices.
3. They can be useful for calibrating lattice models to observed market data.

It should be noted that when pricing securities with an early exercise feature, state prices are of little help and it is still necessary to use backwards iteration.

# 2.1 Hedging In The Binomial Lattice

It is very easy to hedge in a binomial-lattice model. For example, if we wish to hedge a payoff that occurs at $t = s$, then we can use any two securities (that do not expire before $t = s$ ) to do this. In particular, we could use the cash account and a zero-coupon bond with maturity $t > s$ as our hedging instruments. At each node and time, we simply choose our holdings in the cash account and zero-coupon bond so that their combined value one period later exactly matches the value of the payoff to be hedged. This of course is exactly analogous to hedging in the classic binomial model for stocks.

That we can hedge with just two securities betrays a weakness of the binomial lattice model and 1-factor short-rate models more generally. In practice, the value of an interest-rate derivative will be sensitive to changes in the entire term-structure and it is unlikely that such changes can be perfectly hedged using just two securities. It is possible in some circumstances, however, that good approximate hedges can be found using just two securities. In the example below, we hedge using elementary securities.

Example 7
(a) Consider the short rate lattice of Figure 4.1 where interest rates are expressed as percentages. You may assume the risk-neutral probabilities are given by $q = 1 - q = 1/2$ at each node.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/fba043210fceb7d1ad491bbcc0d927535355ae6c21a87112bbcfb405123e2b3e.jpg)

Figure 4.1

Use the forward equation to compute the elementary prices at times $t = 0$, $t = 1$ and $t = 2$.

(b) Consider the different short rate lattice of Figure 4.2 where again you may assume q = 1 - q = 1/2. The short rates and elementary prices are given at each node. Using only the elementary prices, find the price of a zero-coupon bond with face value $100 that matures at t = 3.
(c) Compute the price of a European call option on the zero-coupon bond of part
(b) with strike = $93 and expiration date t = 2.
(d) Again referring to Figure 4.2, suppose you have an obligation whose value today is $100 and whose value at node (1,1) (i.e. when r = 7.2%) is $95. Explain how you would immunize this obligation using date 1 elementary securities?
(e) Consider a forward-start swap that begins at t = 1 and ends at t =
3. The notional principal is $1 million, the fixed rate in the swap is 5%, and payments at t = i (i=2,3) are based on the fixed rate minus the floating rate that prevailed at t = i -
4. Compute the value of this forward swap.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/739d3540f288a65a82fc3e2abb9c460661d8dbeb61fe9b7b4b9ec0d4a7d5dcb0.jpg)

Figure 4.2

# Solution

(a) $P_{e}(0,0) = 1$, $P_{e}(1,0) =0.4717$, $P_{e}(1,1) =0.4717$, $P_{e}(2,0) = 0.2238$, $P_{e}(2,1) = 0.4426$, $P_{e}(2,2) = 0.2188$.
(b) $(0.1013 +0.3096 +0.3151 +0.1067)\times 100 = 83.27.$
(c) The value of the zero coupon bond at nodes $(2,0)$, $(2,1)$ and $(2,2)$ are 95.3652,93.9144 and 92.0471 respectively. This means the payoffs of the option are 2.3652,0.9144 and 0 respectively. Now use the time 2 elementary prices to find that the option price equals $2.3652 \times0.2238 +0.9144 \times0.4438 =0.9351$.

(d) First find the value, $x$, of the obligation at node $(1,0)$. It must be that $x$ satisfies

$$
100 = \frac {1}{2} \frac {9 5}{1.06} + \frac {1}{2} \frac {x}{1.06}
$$ which implies $x = 117$. So to hedge the obligation, buy 95 node (1,1) state securities and 117 node (1,0) state securities. The cost of this is $117 \times0.4717 + 95 \times0.4717 = 100$, of course!

(e) The value of the swap today is (why?)

$$
\begin{array}{l} (. 022 / 1.072 \times. 4717) + (. 004 / 1.054 \times. 4717) + (. 0364 / 1.0864 \times. 2 2) + \\ (. 0148 / 1.0648 \times. 4438) - (. 0014 / 1.0486 \times. 2238) = 0.0247 \text {million}. \\ \end{array}
$$

# 3 Some Specific Models

If we want to use a lattice model in practice then we need to calibrate the model to market data. The most basic requirement is that the term-structure (equivalently zero-coupon bond prices) in the market should also match the term-structure of the lattice model. We now show how this can be achieved in the context of two specific models, the Ho-Lee model and the Black-Derman-Toy
(BDT) model. More generally, we could also calibrate the lattice to interest-rate volatilities and other security prices.

We will assume<sup>4</sup> again that the $Q$ -probabilities are equal to0.5 on each branch and are node independent. First we describe the Ho-Lee and Black-Derman-Toy models.

# 3.1 The Ho-Lee Model

The Ho-Lee model assumes that the interest rate at node $N(i, j)$ is given by

$$ r _ {i, j} = a _ {i} + b _ {i} j.
$$

Note that $a_{i}$ is a drift parameter while $b_{i}$ is a volatility parameter. In particular, the standard deviation of the short-rate at node $N(i, j)$ is equal to $b_{i}/2$. The continuous-time version of the Ho-Lee model assumes that the short-rate dynamics satisfy

$$ dr _ {t} = \mu_ {t} dt + \sigma_ {t} d W _ {t}.
$$

The principal strength of the Ho-Lee model is its tractability.

Exercise 2 What are the obvious weaknesses of the Ho-Lee model?

# 3.2 The Black-Derman-Toy Model

The BDT model assumes that the interest rate at node $N(i, j)$ is given by

$$ r _ {i, j} = a _ {i} e ^ {b _ {i} j}.
$$

Note that $\log (a_i)$ is a drift parameter while $b_{i}$ is a volatility parameter (for $\log
(r) $ ). The continuous-time version of the BDT model assumes that the short-rate has dynamics of the form

$$ d Y _ {t} = \left(a _ {t} + \frac {1}{\sigma_ {t}} \frac {\partial \sigma}{\partial t} Y _ {t}\right) dt + \sigma_ {t} d W _ {t}
$$ where $Y_{t} \coloneqq \log (r_{t})$.

Exercise 3 What are some of the strengths and weaknesses of the BDT model?

# 3.3 Calibration To The Observed Term-Structure

Consider an $n$ -period lattice and let $(s_1, \ldots, s_n)$ be the term-structure observed in the market place assuming that spot rates are compounded per period. Suppose we want to calibrate the BDT model to the observed term-structure. Assuming $b_i = b$, a constant for all $i$, we first note that

$$
\begin{array}{l} {\frac {1}{(1 + s _ {i}) ^ {i}}} = {\sum_ {j = 0} ^ {i} P _ {e} (i, j)} \\ { = } { \frac { P _ { e } ( i - 1,0 ) } { 2 ( 1 + a _ { i - 1 } ) } + \sum _ { j = 1 } ^ { i - 1 } \left( \frac { P _ { e } ( i - 1, j ) } { 2 ( 1 + a _ { i - 1 } e ^ { bj } ) } + \frac { P _ { e } ( i - 1, j - 1 ) } { 2 ( 1 + a _ { i - 1 } e ^ { b ( j - 1 ) } ) } \right) + \frac { P _ { e } ( i - 1, i - 1 ) } { 2 ( 1 + a _ { i - 1 } e ^ { b ( i - 1 ) } ) }. } { ( 4 ) } \\ \end{array}
$$

Note that Equation (4) can now be used to solve iteratively for the $a_i$ 's as follows:

- Set $i = 1$ in (4) and note that $P_{e}(0,0) = 1$ to see that $a_0 = s_1$.
- Now use the forward equations to find $P_{e}(1,0)$ and $P_{e}(1,1)$.
- Now set $i = 2$ in (4) and solve for $a_1$.
- Continue to iterate forward until all $a_i$ 's have been found.

By construction, this algorithm will match the observed term structure to the term structure in the lattice.

# Example 8 (Pricing A Payer Swaption In A Bdt Model)

We would like to price a 2 - 8 payer swaption in a BDT model that has been calibrated to match the observed term-structure of interest rates in the market place. The 2 - 8 terminology means that the swaption is an option that expires in 2 months to enter an 8-month swap. The swap is settled in arrears so that payments would take place in months 3 through 10 based on the prevailing short-rate of the previous months. The "payer" feature of the option means that if the option is exercised, the exerciser "pays fixed and receives floating". (The owner of a receiver swaption would "receive fixed and pay floating".) For this problem the fixed rate is set at $11.65\%$.

We use a 10-period lattice for our BDT model, thereby assuming that a single period corresponds to 1 month. The spot-rate curve in the market place has been observed to be

$$ s _ {1} = 7.3, \quad s _ {2} = 7.62, \quad s _ {3} = 8.1, \quad s _ {4} = 8.45, \quad s _ {5} = 9.2
$$

$$ s _ {6} = 9.64, s _ {7} = 1 0.12, s _ {8} = 1 0.45, s _ {9} = 1 0.75, s _ {1 0} = 1 1.22
$$ with a monthly compounding convention. We will also assume that $b_{i} = b =0.005$ for all $i$.

The first step is to choose the $a_i$ 's so that the term-structure in the lattice matches the observed term-structure (spot-rate curve) given above. For a 10-period problem, this is easy to do in Excel using the Solver add-in. For problems with many periods, however, it would be preferable to use the algorithm outlined above. The short-rate lattice below gives the values of $a_i$, $i = 0, \ldots, 9$, so that the model spot-rate curve matches the market spot-rate curve. (Note also that the short-rates at each node $N(i, j)$ do indeed satisfy $r_{i, j} = a_i e^{005j}$.)

We are now in a position to price the swaption, assuming a notional principal of $1. Let S2 denote the value of the swap at t =
2. We can compute S2 by discounting the cash-flows back from t = 10 to t =
3. It is important to note that it is much easier to record time t cash flows (for t = 3,..., 10) at their predecessor nodes at time t - 1, discounting them appropriately. This is why in the swaption lattice above, there are no payments recorded at t = 10 despite the fact that payments do actually take place then.

Exercise 4 Why is it more convenient to record those cashflows at their predecessor nodes?

The option is then exercised if and only if $S_{2} > 0$. In particular, the value of the swaption at maturity $(t = 2)$ is $\max(0, S_{2})$. This is then discounted backwards to $t = 0$ to find a swaption value today of0.0013.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|c|c|c|c|}
\hline
 & Short-Rate Lattice & 13.45 & 15.82 & & & & & & & & \\ \hline
 & & & & & & 13.01 & 13.38 & 15.74 & & & \\ \hline
 & & & & & 13.24 & 12.94 & 13.32 & 15.66 & & & \\ \hline
 & & & & 12.02 & 13.18 & 12.88 & 13.25 & 15.58 & & & \\ \hline
 & & & 9.58 & 12.38 & 11.96 & 13.11 & 12.81 & 13.18 & 15.50 & & \\ \hline
 & & 9.11 & 9.53 & 12.31 & 11.90 & 13.05 & 12.75 & 13.12 & 15.43 & & \\ \hline
 & 7.96 & 9.07 & 9.48 & 12.19 & 11.78 & 12.92 & 12.62 & 12.99 & 15.27 & & \\ \hline
7.30 & 7.92 & 9.02 & 9.44 & 12.13 & 11.72 & 12.85 & 12.56 & 12.92 & 15.20 & & \\ \hline
Year & 0 & 1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 & 9 & \\ \hline
Spot & 7.3 & 7.62 & 8.1 & 8.45 & 9.2 & 9.64 & 10.12 & 10.45 & 10.75 & 11.22 & \\ \hline a & 7.30 & 7.92 & 9.02 & 9.44 & 12.13 & 11.72 & 12.85 & 12.56 & 12.92 & 15.20 & \\ \hline
 & Pricing a 2-8 Payer Swaption & 0.0366 & & & & & & & & & \\ \hline
 & & & & & & & & & & 0.0479 & 0.0360 \\ \hline
 & & & & & & & & 0.0539 & 0.0467 & 0.0353 & \\ \hline
 & & & & & & & 0.0610 & 0.0523 & 0.0456 & 0.0347 & \\ \hline
 & & & & & & 0.0568 & 0.0590 & 0.0508 & 0.0444 & 0.0340 & \\ \hline
 & & & & & 0.0560 & 0.0546 & 0.0571 & 0.0492 & 0.0433 & 0.0334 & \\ \hline
 & & & & 10.0311 & 0.0535 & 0.0524 & 0.0552 & 0.0477 & 0.0422 & 0.0327 & \\ \hline
 & & 0.0040 & 10.0284 & 0.0511 & 0.0502 & 0.0533 & 0.0461 & 0.0411 & 0.0321 & & \\ \hline
 & 0.0024 & 0.0011 & 10.0257 & 0.0486 & 0.0480 & 0.0514 & 0.0446 & 0.0399 & 0.0314 & & \\ \hline
 & 0.0013 & 0.0005 & 10.0230 & 0.0461 & 0.0458 & 0.0495 & 0.0431 & 0.0388 & 0.0308 & & \\ \hline
Year & 0 & 1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 & 9 & \\ \hline
\end{tabular}
\end{document}
```

A related derivative instrument that is commonly traded is a Bermudan swaption (payer or receiver). This is the same as a swaption except now the option can be exercised at any of a predetermined set of times,

$$
\mathcal {T} = (t _ {1}, \dots, t _ {m}).
$$

# Mean-Variance Optimization And The Capm

These lecture notes provide an introduction to mean-variance analysis and the capital asset pricing model
(CAPM) . We begin with the mean-variance analysis of Markowitz (1952) when there is no risk-free asset and then move on to the case where there is a risk-free asset available. We also discuss the difficulties of implementing mean-variance analysis in practice and outline some approaches for resolving these difficulties. Because optimal asset allocations are typically very sensitive to estimates of expected returns and covariances, these approaches typically involve superior or more robust parameter estimation methods.

Mean-variance analysis leads directly to the capital asset pricing model or CAPM. The CAPM is a one-period equilibrium model that provides many important insights to the problem of asset pricing. The language / jargon associated with the CAPM has become ubiquitous in finance.

# 1 Markowitz'S Mean-Variance Analysis

Consider a one-period market with $n$ securities which have identical expected returns and variances, i.e. $\operatorname{E}[R_i] = \mu$ and $\operatorname{Var}(R_i) = \sigma^2$ for $i = 1, \dots, n$. We also suppose $\operatorname{Cov}(R_i, R_j) = 0$ for all $i \neq j$. Let $w_i$ denote the fraction of wealth invested in the $i^{th}$ security at time $t = 0$. Note that we must have $\sum_{i=1}^{n} w_i = 1$ for any portfolio. Consider now two portfolios:

Portfolio A: $100\%$ invested in security $\# 1$ so that $w_{1} = 1$ and $w_{i} = 0$ for $i = 2,\ldots, n$

Portfolio B: An equi-weighted portfolio so that $w_{i} = 1 / n$ for $i = 1, \dots, n$.

Let $R_A$ and $R_B$ denote the random returns of portfolios $A$ and $B$, respectively. We immediately have

$$
\operatorname {E} \left[ R _ {A} \right] = \operatorname {E} \left[ R _ {B} \right] = \mu
$$

$$
\operatorname {Var} (R _ {A}) = \sigma^ {2}
$$

$$
\operatorname {Var} \left(R _ {B}\right) = \sigma^ {2} / n.
$$

The two portfolios therefore have the same expected return but very different return variances. A risk-averse investor should clearly prefer portfolio $B$ because this portfolio benefits from diversification without sacrificing any expected return. This was the central insight of Markowitz who (in his framework) recognized that investors seek to minimize variance for a given level of expected return or, equivalently, they seek to maximize expected return for a given constraint on variance.

Before formulating and solving the mean variance problem consider Figure 1 below. There were $n = 8$ securities with given mean returns, variances and covariances. We generated $m = 200$ random portfolios from these $n$ securities and computed the expected return and volatility, i.e. standard deviation, for each of them. They are plotted in the figure and are labelled "inefficient". This is because every one of these random portfolios can be improved. In particular, for the same expected return it is possible to find an "efficient" portfolio with a smaller volatility. Alternatively, for the same volatility it is possible to find an efficient portfolio with higher expected return.

# 1.1 The Efficient Frontier Without A Risk-Free Asset

We will consider first the mean-variance problem when a risk-free security is not available. We assume that there are $n$ risky securities with the corresponding return vector, $\mathbf{R}$, satisfying

$$
\mathbf {R} \sim \operatorname {MVN} _ {n} (\mu, \Sigma). \tag {1}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/2781c3399a235e4dcd035ff9e8002d9d416585261494382c8380508f0f3bf88a.jpg)

Figure 1: Sample Portfolios and the Efficient Frontier (without a Riskfree Security).

The mean-variance portfolio optimization problem is formulated as:

$$
\min _ {\mathbf {w}} \frac {1}{2} \mathbf {w} ^ {\prime} \boldsymbol {\Sigma} \mathbf {w} \tag {2}
$$

$$
\text {subject} \quad \mathbf {w} ^ {\prime} \mu = p
$$

$$
\text {and} \quad \mathbf {w} ^ {\prime} \mathbf {1} = 1.
$$

Note that the specific value of $p$ will depend on the risk aversion of the investor. This is a simple quadratic optimization problem and it can be solved via standard Lagrange multiplier methods.

Exercise 1 Solve the mean-variance optimization problem (2).

When we plot the mean portfolio return, $p$, against the corresponding minimal portfolio volatility / standard deviation we obtain the so-called portfolio frontier. We can also identify the portfolio having minimal variance among all risky portfolios: this is called the minimum variance portfolio. The points on the portfolio frontier with expected returns greater than the minimum variance portfolio's expected return, $\bar{R}_{mv}$ say, are said to lie on the efficient frontier. The efficient frontier is plotted as the upper blue curve in Figure 1 or alternatively, the blue curve in Figure
2. Exercise 2 Let $\mathbf{w}_1$ and $\mathbf{w}_2$ be (mean-variance) efficient portfolios corresponding to expected returns $r_1$ and $r_2$, respectively, with $r_1 \neq r_2$. Show that all efficient portfolios can be obtained as linear combinations of $\mathbf{w}_1$ and $\mathbf{w}_2$.

The result of the previous exercise is sometimes referred to as a 2-fund theorem.

# 1.2 The Efficient Frontier With A Risk-Free Asset

We now assume that there is a risk-free security available with risk-free rate equal to $r_f$. Let $\mathbf{w}:= (w_1, \ldots, w_n)'$ be the vector of portfolio weights on the $n$ risky assets so that $1 - \sum_{i=1}^{n} w_i$ is the weight on the risk-free security. An investor's portfolio optimization problem may then be formulated as

$$
\min _ {\mathbf {w}} \frac {1}{2} \mathbf {w} ^ {\prime} \boldsymbol {\Sigma} \mathbf {w} \tag {3}
$$

$$
\text {subject} \quad \left(1 - \sum_ {i = 1} ^ {n} w _ {i}\right) r _ {f} + \mathbf {w} ^ {\prime} \mu = p.
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/a5462a8aa47132513ee84b7e0e962279153172da39fcae77cdfc8fa5c7e5b8cb.jpg)

Figure 2: The Efficient Frontier with a Riskfree Security.

The optimal solution to (3) is given by

$$
\mathbf {w} = \xi \boldsymbol {\Sigma} ^ {- 1} \left(\mu - r _ {f} \mathbf {1}\right) \tag {4}
$$ where $\xi:= \sigma_{min}^2 / (p - r_f)$ and $\sigma_{min}^2$ is the minimized variance, i.e., twice the value of the optimal objective function in (3). It satisfies

$$
\sigma_ {min} ^ {2} = \frac {(p - r _ {f}) ^ {2}}{(\mu - r _ {f} \mathbf {1}) ^ {\prime} \boldsymbol {\Sigma} ^ {- 1} (\mu - r _ {f} \mathbf {1})} \tag {5}
$$ where $\mathbf{1}$ is an $n\times 1$ vector of ones. While $\xi$ (or $p$ ) depends on the investor's level of risk aversion it is often inferred from the market portfolio. For example, if we take $p - r_f$ to denote the average excess market return and $\sigma_{min}^2$ to denote the variance of the market return, then we can take $\sigma_{min}^2 / (p - r_f)$ as the average or market value of $\xi$.

Suppose now that $r_f < \bar{R}_{mv}$. When we allow our portfolio to include the risk-free security the efficient frontier becomes a straight line that is tangential to the risky efficient frontier and with a $y$ -intercept equal to the risk-free rate. This is plotted as the red line in Figure
2. That the efficient frontier is a straight line when we include the risk-free asset is also clear from (5) where we see that $\sigma_{min}$ is linear in $p$. Note that this result is a 1-fund theorem since every investor will optimally choose to invest in a combination of the risk-free security and a single risky portfolio, i.e. the tangency portfolio. The tangency portfolio, $\mathbf{w}^*$, is given by the optimal $\mathbf{w}$ of (4) except that it must be scaled so that its component sum to 1. (This scaled portfolio will not depend on $p$.)

Exercise 3 Without using (5) show that the efficient frontier is indeed a straight line as described above. Hint: consider forming a portfolio of the risk-free security with any risky security or risky portfolio. Show that the mean and standard deviation of the portfolio varies linearly with $\alpha$ where $\alpha$ is the weight on the risk-free-security. The conclusion should now be clear.

Exercise 4 Describe the efficient frontier if no borrowing is allowed.

The Sharpe ratio of a portfolio (or security) is the ratio of the expected excess return of the portfolio to the portfolio's volatility. The Sharpe optimal portfolio is the portfolio with maximum Sharpe ratio. It is straightforward to see in our mean-variance framework (with a risk-free security) that the tangency portfolio, $\mathbf{w}^*$, is the Sharpe optimal portfolio.

# 1.3 Including Portfolio Constraints

We can easily include linear portfolio constraints in the problem formulation and still easily solve the resulting quadratic program. No-borrowing or no short-sales constraints are examples of linear constraints as are leverage and sector constraints. While analytic solutions are generally no longer available, the resulting problems are still easy to solve numerically. In particular, we can still determine the efficient frontier.

# 1.4 Weaknesses Of Traditional Mean-Variance Analysis

The traditional mean-variance analysis of Markowitz has many weaknesses when applied naively in practice. They include:

1. The tendency to produce extreme portfolios combining extreme shorts with extreme longs. As a result, portfolio managers generally do not trust these extreme weights. This problem is typically caused by estimation errors in the mean return vector and covariance matrix.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/27443daac4271143443aa81e51b93b5e430140a9749d83193820ede1fd6a3cee.jpg)

Figure 3: The Efficient Frontier, Estimated Frontiers and Realized Frontiers.

Consider Figure 3, for example, where we have plotted the same efficient frontier (of risky securities) as in Figure
2. In practice, investors can never compute this frontier since they do not know the true mean vector and covariance matrix of returns. The best we can hope to do is to approximate it. But how might we do this? One approach would be to simply estimate the mean vector and covariance matrix using historical data. Each of the black dashed curves in Figure 3 is an estimated frontier that we computed by:
(i) simulating $m = 24$ sample returns from the true (in this case, multivariate normal) distribution
(ii) estimating the mean vector and covariance matrix from this simulated data and
(iii) using these estimates to generate the
(estimated) frontier. Note that the blue curve in Figure 3 is the true frontier computed using the true mean vector and covariance matrix.

The first observation is that the estimated frontiers are quite random and can differ greatly from the true frontier. They may lie below or above the true frontier or they may cross it and an investor who uses such an estimated frontier to make investment decisions may end up choosing a poor portfolio. How poor? The dashed red curves in Figure 3 are the realized frontiers that depict the true portfolio mean - volatility tradeoff that results from making decisions based on the estimated frontiers. In contrast to the estimated frontiers, the realized frontiers must always (why?) lie below the true frontier. In Figure 3 some of the realized frontiers lie very close to the true frontier and so in these cases an investor would do very well. But in other cases the realized frontier is far from the (generally unobtainable) true efficient frontier.

These examples serve to highlight the importance of estimation errors in any asset allocation procedure. Note also that if we had assumed a heavy-tailed distribution for the true distribution of portfolio returns then we might expect to see an even greater variety of sample mean-standard deviation frontiers. In addition, it is worth emphasizing that in practice we may not have as many as 24 relevant observations available. For example, if our data observations are weekly returns, then using 24 of them to estimate the joint distribution of returns is hardly a good idea since we are generally more concerned with estimating conditional return distributions and so more weight should be given to more recent returns. A more sophisticated estimation approach should therefore be used in practice. More generally, it must be stated that estimating expected returns using historical data is very problematic and is not advisable!

2. The portfolio weights tend to be extremely sensitive to very small changes in the expected returns. For example, even a small increase in the expected return of just one asset can dramatically alter the optimal composition of the entire portfolio. Indeed let $\mathbf{w}$ and $\widehat{\mathbf{w}}$ denote the true optimal and estimated optimal portfolios, respectively, corresponding to the true mean return vector, $\mu$, and the sample mean return vector, $\widehat{\mu}$, respectively. Then Best and Grauer (1991) showed that

$$
\left| \left| \mathbf {w} - \widehat {\mathbf {w}} \right| \right| \leq \xi \left| \left| \mu - \widehat {\mu} \right| \right| \frac {1}{\gamma_ {min}} \left(1 + \frac {\gamma_ {max}}{\gamma_ {min}}\right)
$$ where $\gamma_{max}$ and $\gamma_{min}$ are the largest and smallest eigen values, respectively, of the covariance matrix, $\pmb{\Sigma}$. Therefore the sensitivity of the portfolio weights to errors in the mean return vector grows as the ratio $\gamma_{max} / \gamma_{min}$ grows. But this ratio, when applied to the estimated covariance matrix, $\hat{\Sigma}$, typically becomes large as the number of asset increases and the number of sample observations is held fixed. As a result, we can expect large errors for large portfolios with relatively few observations.

3. While it is commonly believed that errors in the estimated means are of much greater significance, errors in estimated covariance matrices can also have considerable impact. While it is generally easier to estimate covariances than means, the presence of heavy tails in the return distributions can result in significant errors in covariance estimates as well. These problems can be mitigated to varying extents through the use of more robust estimation techniques.

As a result of these weaknesses, portfolio managers traditionally have had little confidence in mean-variance analysis and therefore applied it very rarely in practice. Efforts to overcome these problems include the use of better estimation techniques such as the use of shrinkage estimators, robust estimators and Bayesian techniques such as the Black-Litterman framework introduced in the early 1990's. (In addition to mitigating the problem of extreme portfolios, the Black-Litterman framework allows users to specify their own subjective views on the market in a consistent and tractable manner.) Many of these techniques are now used routinely in general asset allocation settings. It is worth mentioning that the problem of extreme portfolios can also be mitigated in part by placing no short-sales and / or no-borrowing constraints on the portfolio.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/798cc105778935ad15b2716519e5c3ee8ece5a57f3d7d48c7d3c78490b69224f.jpg)

Figure 4: Robust Estimation of the Efficient Frontier.

In Figure 4 above we have shown an estimated frontier that was computed using a more robust estimation procedure. We see that it lies much closer to the true frontier which is also the case with it's corresponding realized frontier.

# 2 The Capital Asset Pricing Model
(Capm) If every investor is a mean-variance optimizer then we can see from Figure 2 and our earlier discussion that each of them will hold the same tangency portfolio of risky securities in conjunction with a position in the risk-free asset. Because the tangency portfolio is held by all investors and because markets must clear, we can identify this portfolio as the market portfolio. The efficient frontier is then termed the capital market line.

Now let $R_{m}$ and $\bar{R}_{m}$ denote the return and expected return, respectively, of the market, i.e. tangency, portfolio. The central insight of the Capital Asset-Pricing Model is that in equilibrium the riskiness of an asset is not measured by the standard deviation of its return but by its beta. In particular, there is a linear relationship between the expected return, $\bar{R} = \mathrm{E}[R]$ say, of any security (or portfolio) and the expected return of the market portfolio. It is given by

$$
\bar {R} = r _ {f} + \beta (\bar {R} _ {m} - r _ {f}) \tag {6}
$$ where $\beta \coloneqq \operatorname{Cov}(R, R_m) / \operatorname{Var}(R_m)$. In order to prove (6), consider a portfolio with weights $\alpha$ and weight $1 - \alpha$ on the risky security and market portfolio, respectively. Let $R_{\alpha}$ denote the
(random) return of this portfolio as a function of $\alpha$. We then have

$$
\operatorname {E} \left[ R _ {\alpha} \right] = \alpha \bar {R} + (1 - \alpha) \bar {R} _ {m} \tag {7}
$$

$$
\sigma_ {R _ {\alpha}} ^ {2} = \alpha^ {2} \sigma_ {R} ^ {2} + (1 - \alpha) ^ {2} \sigma_ {R _ {m}} ^ {2} + 2 \alpha (1 - \alpha) \sigma_ {R, R _ {m}} \tag {8}
$$ where $\sigma_{R_\alpha}^2$, $\sigma_R^2$ and $\sigma_{R_m}^2$ are the returns variances of the portfolio, security and market portfolio, respectively. We use $\sigma_{R, R_m}$ to denote $\mathrm{Cov}(R, R_m)$. Now note that as $\alpha$ varies, the mean and standard deviation, $(\operatorname{E}[R_\alpha],\sigma_{R_\alpha}^2)$, trace out a curve that cannot (why?) cross the efficient frontier. This curve is depicted as the dashed curve in Figure 5 below.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/fba015ba6f047f81a698dc8428bdaa1e32dbe105326fbbdfce91c6ca753ecd97.jpg)

Figure 5: Proving the CAPM relationship.

Therefore at $\alpha = 0$ this curve must be tangent to the capital market line. Therefore the slope of the curve at

$\alpha = 0$ must equal the slope of the capital market line. Using (7) and (8) we see the former slope is given by

$$
\begin{array}{l} \left. \frac {d \operatorname {E} \left[ R _ {\alpha} \right]}{d \sigma_ {R _ {\alpha}}} \right| _ {\alpha = 0} = \left. \frac {d \operatorname {E} \left[ R _ {\alpha} \right]}{d \alpha} \right/ \left. \frac {d \sigma_ {R _ {\alpha}}}{d \alpha} \right| _ {\alpha = 0} \\ = \left. \frac {\sigma_ {R _ {\alpha}} (\bar {R} - \bar {R} _ {m})}{\alpha \sigma_ {R} ^ {2} - (1 - \alpha) \sigma_ {R _ {m}} ^ {2} + (1 - 2 \alpha) \sigma_ {R, R _ {m}}} \right| _ {\alpha = 0} \\ = \frac {\sigma_ {R _ {m}} (\bar {R} - \bar {R} _ {m})}{- \sigma_ {R _ {m}} ^ {2} + \sigma_ {R, R _ {m}}}. \tag {9} \\ \end{array}
$$

The slope of the capital market line is $\left(\bar{R}_m - r_f\right) / \sigma_{R_m}$ and equating the two therefore yields

$$
\frac {\sigma_ {R _ {m}} (\bar {R} - \bar {R} _ {m})}{- \sigma_ {R _ {m}} ^ {2} + \sigma_ {R, R _ {m}}} = \frac {\bar {R} _ {m} - r _ {f}}{\sigma_ {R _ {m}}} \tag {10}
$$ which upon simplification gives (6).

The CAPM result is one of the most famous results in all of finance and, even though it arises from a simple one-period model, it provides considerable insight to the problem of asset-pricing. For example, it is well-known that riskier securities should have higher expected returns in order to compensate investors for holding them. But how do we measure risk? Counter to the prevailing wisdom at the time the CAPM was developed, the riskiness of a security is not measured by its return volatility. Instead it is measured by its beta which is proportional to its covariance with the market portfolio. This is a very important insight. Nor, it should be noted, does this contradict the mean-variance formulation of Markowitz where investors do care about return variance. Indeed, we derived the CAPM from mean-variance analysis!

Exercise 5 Why does the CAPM result not contradict the mean-variance problem formulation where investors do measure a portfolio's risk by its variance?

The CAPM is an example of a so-called 1-factor model with the market return playing the role of the single factor. Other factor models can have more than one factor. For example, the Fama-French model has three factors, one of which is the market return. Many empirical research papers have been written to test the CAPM. Such papers usually perform regressions of the form

$$
R _ {i} - r _ {f} = \alpha_ {i} + \beta_ {i} \left(R _ {m} - r _ {f}\right) + \epsilon_ {i} \tag {11}
$$ where $\alpha_{i}$ (not to be confused with the $\alpha$ we used in the proof of (6)) is the intercept and $\epsilon_{i}$ is the idiosyncratic or residual risk which is assumed to be independent of $R_{m}$ and the idiosyncratic risk of other securities. If the CAPM holds then we should be able to reject the hypothesis that $\alpha_{i} \neq 0$. The evidence in favor of the CAPM is mixed. But the language inspired by the CAPM is now found throughout finance. For example, we use $\beta$ 's to denote factor loadings and $\alpha$ 's to denote excess returns even in non-CAPM settings.

# A Brief Introduction To Stochastic Calculus

These notes provide a very brief introduction to stochastic calculus, the branch of mathematics that is most identified with financial engineering and mathematical finance. We will ignore most of the technical details and take an "engineering" approach to the subject. We will only introduce the concepts that are necessary for deriving the Black-Scholes formula later in the course. These concepts include quadratic variation, stochastic integrals and stochastic differential equations. We will of course also introduce Itô's Lemma, probably the most important result in stochastic calculus.

# 1 Martingales, Brownian Motion And Quadratic Variation

We make the following assumptions throughout.

- There is a probability triple $(\Omega, \mathcal{F}, P)$ where
- $P$ is the "true" or physical probability measure
- $\Omega$ is the universe of possible outcomes. We use $\omega \in \Omega$ to represent a generic outcome, typically a sample path of a stochastic process.
- the set $\mathcal{F}$ represents the set of possible events where an event is a subset of $\Omega$.
- There is also a filtration, $\{\mathcal{F}_t\}_{t \geq 0}$, that models the evolution of information through time. So for example, if it is known by time $t$ whether or not an event, $E$, has occurred, then we have $E \in \mathcal{F}_t$. If we are working with a finite horizon, $[0, T]$, then we can take $\mathcal{F} = \mathcal{F}_T$.
- We also say that a stochastic process, $X_{t}$, is $\mathcal{F}_t$ -adapted if the value of $X_{t}$ is known at time $t$ when the information represented by $\mathcal{F}_t$ is known. All the processes we consider will be $\mathcal{F}_t$ -adapted so we will not bother to state this in the sequel.
- In the continuous-time models that we will study, it will be understood that the filtration $\{\mathcal{F}_t\}_{t\geq 0}$ will be the filtration generated by the stochastic processes (usually a Brownian motion, $W_{t}$ ) that are specified in the model description.

# 1.1 Martingales And Brownian Motion

Definition 1 A stochastic process, $\{W_t:0\leq t\leq \infty \}$, is a standard Brownian motion if

1. $W_{0} = 0$
2. It has continuous sample paths
3. It has independent, stationary increments.
4. $W_{t}\sim \mathcal{N}(0, t)$

Definition 2 An $n$ -dimensional process, $W_{t} = (W_{t}^{(1)},\dots, W_{t}^{(n)})$, is a standard $n$ -dimensional Brownian motion if each $W_{t}^{(i)}$ is a standard Brownian motion and the $W_{t}^{(i)}$ 's are independent of each other.

Definition 3 A stochastic process, $\{X_{t}:0\leq t\leq \infty \}$, is a martingale with respect to the filtration, $\mathcal{F}_t$, and probability measure, $P$, if

1. $\operatorname{E}^P [|X_t|] < \infty$ for all $t \geq 0$
2. $\operatorname{E}^P[X_{t+s}|\mathcal{F}_t] = X_t$ for all $t, s \geq 0$.

# Example 1 (Brownian Martingales)

Let $W_{t}$ be a Brownian motion. Then $W_{t}$, $W_{t}^{2} - t$ and $\exp \left( \theta W_{t} - \theta^{2} t / 2 \right)$ are all martingales.

The latter martingale is an example of an exponential martingale. Exponential martingales are of particular significance since they are positive and may be used to define new probability measures.

Exercise 1 (Conditional expectations as martingales) Let $Z$ be a random variable and set $X_{t} \coloneqq \operatorname{E}[Z|\mathcal{F}_{t}]$. Show that $X_{t}$ is a martingale.

# 1.2 Quadratic Variation

Consider a partition of the time interval, $[0, T]$ given by

$$
0 = t _ {0} < t _ {1} < t _ {2} < \dots < t _ {n} = T.
$$

Let $X_{t}$ be a Brownian motion and consider the sum of squared changes

$$
Q _ {n}
(T) := \sum_ {i = 1} ^ {n} \left[ \Delta X _ {t _ {i}} \right] ^ {2} \tag {1}
$$ where $\Delta X_{t_i}:= X_{t_i} - X_{t_{i-1}}$.

Definition 4 (Quadratic Variation) The quadratic variation of a stochastic process, $X_{t}$, is equal to the limit of $Q_{n}(T)$ as $\Delta t \coloneqq \max_{i}(t_{i} - t_{i - 1}) \to 0$.

Theorem 1 The quadratic variation of a Brownian motion is equal to $T$ with probability
1. The functions with which you are normally familiar, e.g. continuous differentiable functions, have quadratic variation equal to zero. Note that any continuous stochastic process or function<sup>1</sup> that has non-zero quadratic variation must have infinite total variation where the total variation of a process, $X_{t}$, on $[0, T]$ is defined as

$$
\text {T otal Var iation}:= \lim _ {\Delta t \rightarrow 0} \sum_ {i = 1} ^ {n} \left| X _ {t _ {k}} - X _ {t _ {k - 1}} \right|.
$$

This follows by observing that

$$
\sum_ {i = 1} ^ {n} \left(X _ {t _ {k}} - X _ {t _ {k - 1}}\right) ^ {2} \leq \left(\sum_ {i = 1} ^ {n} \left| X _ {t _ {k}} - X _ {t _ {k - 1}} \right|\right) \max _ {1 \leq k \leq n} \left| X _ {t _ {k}} - X _ {t _ {k - 1}} \right|. \tag {2}
$$

If we now let $n \to \infty$ in (2) then the continuity of $X_{t}$ implies the impossibility of the process having finite total variation and non-zero quadratic variation. Theorem 1 therefore implies that the total variation of a Brownian motion is infinite. We have the following important result which proves very useful if we need to price options when there are multiple underlying Brownian motions, as is the case with quanto options for example.

Theorem 2 (Levy's Theorem) A continuous martingale is a Brownian motion if and only if its quadratic variation over each interval $[0, t]$ is equal to $t$.

# 2 Stochastic Integrals

We now discuss the concept of a stochastic integral, ignoring the various technical conditions that are required to make our definitions rigorous. In this section, we write $X_{t}(\omega)$ instead of the usual $X_{t}$ to emphasize that the quantities in question are stochastic.

Definition 5 A stopping time of the filtration $\mathcal{F}_t$ is a random time, $\tau$, such that the event $\{\tau \leq t\} \in \mathcal{F}_t$ for all $t > 0$.

In non-mathematical terms, we see that a stopping time is a random time whose value is part of the information accumulated by that time.

Definition 6 We say a process, $h_t(\omega)$, is elementary if it is piece-wise constant so that there exists a sequence of stopping times $0 = t_0 < t_1 < \ldots < t_n = T$ and a set of $\mathcal{F}_{t_i}$ -measurable functions, $e_i(\omega)$, such that

$$ h _ {t} (\omega) = \sum_ {i} e _ {i} (\omega) I _ {[ t _ {i}, t _ {i + 1})}
(t) $$ where $I_{[t_i, t_{i + 1})}(t) = 1$ if $t\in [t_i, t_{i + 1})$ and 0 otherwise.

Definition 7 The stochastic integral of an elementary function, $h_t(\omega)$, with respect to a Brownian motion, $W_t$, is defined as

$$
\int_ {0} ^ {T} h _ {t} (\omega) d W _ {t} (\omega):= \sum_ {i = 0} ^ {n - 1} e _ {i} (\omega) \left(W _ {t _ {i + 1}} (\omega) - W _ {t _ {i}} (\omega)\right). \tag {3}
$$

Note that our definition of an elementary function assumes that the function, $h_t(\omega)$, is evaluated at the left-hand point of the interval in which $t$ falls. This is a key component in the definition of the stochastic integral: without it the results below would no longer hold. Moreover, defining the stochastic integral in this way makes the resulting theory suitable for financial applications. In particular, if we interpret $h_t(\omega)$ as a trading strategy and the stochastic integral as the gains or losses from this trading strategy, then evaluating $h_t(\omega)$ at the left-hand point is equivalent to imposing the non-anticipativity of the trading strategy, a property that we always wish to impose.

For a more general process, $X_{t}(\omega)$, we have

$$
\int_ {0} ^ {T} X _ {t} (\omega) d W _ {t} (\omega):= \lim _ {n \to \infty} \int_ {0} ^ {T} X _ {t} ^ {(n)} (\omega) d W _ {t} (\omega)
$$ where $X_{t}^{(n)}$ is a sequence of elementary processes that converges (in an appropriate manner) to $X_{t}$.

Example 2 We want to compute $\int_0^T W_t dW_t$. Towards this end, let $0 = t_0^n < t_1^n < t_2^n < \ldots < t_n^n = T$ be a partition of $[0, T]$ and define

$$
X _ {t} ^ {n}:= \sum_ {i = 0} ^ {n - 1} W _ {t _ {i} ^ {n}} I _ {[ t _ {i} ^ {n}, t _ {i + 1} ^ {n})}
(t) $$ where $I_{[t_i^n, t_{i+1}^n)}(t) = 1$ if $t \in [t_i^n, t_{i+1}^n)$ and is 0 otherwise. Then $X_t^n$ is an adapted elementary process and, by continuity of Brownian motion, satisfies $\lim_{n \to \infty} X_t^n = W_t$ almost surely as $\max_i |t_{i+1}^n - t_i^n| \to 0$. The stochastic integral of $X_{t}^{n}$ is given by

$$
\begin{array}{l} \int_ {0} ^ {T} X _ {t} ^ {n} d W _ {t} = \sum_ {i = 0} ^ {n - 1} W _ {t _ {i} ^ {n}} \left(W _ {t _ {i + 1} ^ {n}} - W _ {t _ {i} ^ {n}}\right) \\ = \frac {1}{2} \sum_ {i = 0} ^ {n - 1} \left(W _ {t _ {i + 1} ^ {n}} ^ {2} - W _ {t _ {i} ^ {n}} ^ {2} - \left(W _ {t _ {i + 1} ^ {n}} - W _ {t _ {i} ^ {n}}\right) ^ {2}\right) \\ = \frac {1}{2} W _ {T} ^ {2} - \frac {1}{2} W _ {0} ^ {2} - \frac {1}{2} \sum_ {i = 0} ^ {n - 1} \left(W _ {t _ {i + 1} ^ {n}} - W _ {t _ {i} ^ {n}}\right) ^ {2}. \tag {4} \\ \end{array}
$$

By Theorem 1 the sum on the right-hand-side of (4) converges in probability to $T$ as $n \to \infty$. And since $W_0 = 0$ we obtain

$$
\int_ {0} ^ {T} W _ {t} d W _ {t} = \lim _ {n \to \infty} \int_ {0} ^ {T} X _ {t} ^ {n} d W _ {t} = \frac {1}{2} W _ {T} ^ {2} - \frac {1}{2} T.
$$

Note that we will generally evaluate stochastic integrals using Ito's Lemma (to be discussed later) without having to take limits of elementary processes as we did in Example
2. Definition 8 We define the space $L^2[0, T]$ to be the space of processes, $X_t(\omega)$, such that

$$
\operatorname {E} \left[ \int_ {0} ^ {T} X _ {t} (\omega) ^ {2} dt \right] < \infty.
$$

Theorem 3 (Itô's Isometry) For any $X_{t}(\omega)\in L^{2}[0, T]$ we have

$$
\mathrm {E} \left[ \left(\int_ {0} ^ {T} X _ {t} (\omega) d W _ {t} (\omega)\right) ^ {2} \right] = \mathrm {E} \left[ \int_ {0} ^ {T} X _ {t} (\omega) ^ {2} dt \right].
$$

Proof: (For the case where $X_{t}$ is an elementary process)

Let $X_{t} = \sum_{i}e_{i}(\omega)I_{[t_{i}, t_{i + 1})}(t)$ be an elementary process where the $e_i(\omega)'s$ and $t_i$ 's are as defined in Definition
6. We therefore have $\int_0^T X_t(\omega)dW_t(\omega)\coloneqq \sum_{i = 0}^{n - 1}e_i(\omega)\left(W_{t_{i + 1}}(\omega) - W_{t_i}(\omega)\right)$. We then have

$$
\begin{array}{l} \mathrm {E} \left[ \left(\int_ {0} ^ {T} X _ {t} (\omega) d W _ {t} (\omega)\right) ^ {2} \right] = \mathrm {E} \left[ \left(\sum_ {i = 0} ^ {n - 1} e _ {i} (\omega) \left(W _ {t _ {i + 1}} (\omega) - W _ {t _ {i}} (\omega)\right)\right) ^ {2} \right] \\ = \sum_ {i = 0} ^ {n - 1} \operatorname {E} \left[ e _ {i} ^ {2} (\omega) \left(W _ {t _ {i + 1}} (\omega) - W _ {t _ {i}} (\omega)\right) ^ {2} \right] \\ + 2 \sum_ {0 \leq i < j \leq n - 1} ^ {n - 1} \operatorname {E} \left[ e _ {i} e _ {j} (\omega) \left(W _ {t _ {i + 1}} (\omega) - W _ {t _ {i}} (\omega)\right) \left(W _ {t _ {j + 1}} (\omega) - W _ {t _ {j}} (\omega)\right) \right] \\ = \sum_ {i = 0} ^ {n - 1} \mathrm {E} \left[ e _ {i} ^ {2} (\omega) \underbrace {\mathrm {E} _ {t _ {i}} \left[ \left(W _ {t _ {i + 1}} (\omega) - W _ {t _ {i}} (\omega)\right) ^ {2} \right]} _ {= t _ {i + 1} - t _ {i}} \right] \\ + 2 \sum_ {0 \leq i < j \leq n - 1} ^ {n - 1} \mathrm {E} \left[ e _ {i} e _ {j} (\omega) \left(W _ {t _ {i + 1}} (\omega) - W _ {t _ {i}} (\omega)\right) \underbrace {\mathrm {E} _ {t _ {j}} \left[ \left(W _ {t _ {j + 1}} (\omega) - W _ {t _ {j}} (\omega)\right) \right]} _ {= 0} \right] \\ \end{array}
$$

$$
\begin{array}{l} = \mathrm {E} \left[ \sum_ {i = 0} ^ {n - 1} e _ {i} ^ {2} (\omega) \left(t _ {i + 1} - t _ {i}\right) \right] \\ = \mathrm {E} \left[ \int_ {0} ^ {T} X _ {t} (\omega) ^ {2} dt \right] \\ \end{array}
$$ which is what we had to show.

Theorem 4 (Martingale Property of Stochastic Integrals) The stochastic integral, $Y_{t} \coloneqq \int_{0}^{t} X_{s}(\omega) dW_{s}(\omega)$, is a martingale for any $X_{t}(\omega) \in L^{2}[0, T]$.

Exercise 2 Check that $\int_0^t X_s(\omega)dW_t(\omega)$ is indeed a martingale when $X_{t}$ is an elementary process. (Hint: Follow the steps we took in our proof of Theorem 3.)

# 2.1 Stochastic Differential Equations

Definition 9 An $n$ -dimensional Itô process, $X_{t}$, is a process that can be represented as

$$
X _ {t} = X _ {0} + \int_ {0} ^ {t} a _ {s} ds + \int_ {0} ^ {t} b _ {s} d W _ {s} \tag {5}
$$ where $W$ is an $m$ -dimensional standard Brownian motion, and $a$ and $b$ are $n$ -dimensional and $n \times m$ -dimensional $\mathcal{F}_t$ -adapted processes, respectively<sup>4</sup>.

We often use the notation

$$ d X _ {t} = a _ {t} dt + b _ {t} d W _ {t}
$$ as shorthand for (5). An $n$ -dimensional stochastic differential equation
(SDE) has the form

$$ d X _ {t} = a \left(X _ {t}, t\right) dt + b \left(X _ {t}, t\right) d W _ {t}; \quad X _ {0} = x \tag {6}
$$ where as before, $W_{t}$ is an $m$ -dimensional standard Brownian motion, and $a$ and $b$ are $n$ -dimensional and $n \times m$ -dimensional adapted processes, respectively. Once again, (6) is shorthand for

$$
X _ {t} = x + \int_ {0} ^ {t} a \left(X _ {s}, s\right) dt + \int_ {0} ^ {t} b \left(X _ {s}, t\right) d W _ {s}. \tag {7}
$$

While we do not discuss the issue here, various conditions exist to guarantee existence and uniqueness of solutions to (7). A useful tool for solving SDE's is Ito's Lemma which we now discuss.

# 3 Itô'S Lemma

Itô's Lemma is the most important result in stochastic calculus, the "sine qua non" of the field. We first state and give an outline proof of a basic form of the result.

# Theorem 5 (Itô'S Lemma For 1-Dimensional Brownian Motion)

Let $W_{t}$ be a Brownian motion on $[0, T]$ and suppose $f(x)$ is a twice continuously differentiable function on $\mathbf{R}$. Then for any $t \leq T$ we have

$$ f \left(W _ {t}\right) = f (0) + \frac {1}{2} \int_ {0} ^ {t} f ^ {\prime \prime} \left(W _ {s}\right) ds + \int_ {0} ^ {t} f ^ {\prime} \left(W _ {s}\right) d W _ {s}. \tag {8}
$$

Proof:
(Sketch) Let $0 = t_0 < t_1 < t_2 < \ldots < t_n = t$ be a partition of $[0, t]$. Clearly

$$ f \left(W _ {t}\right) = f (0) + \sum_ {i = 0} ^ {n - 1} \left(f \left(W _ {t _ {i + 1}}\right) - f \left(W _ {t _ {i}}\right)\right). \tag {9}
$$

Taylor's Theorem implies

$$ f \left(W _ {t _ {i + 1}}\right) - f \left(W _ {t _ {i}}\right) = f ^ {\prime} \left(W _ {t _ {i}}\right) \left(W _ {t _ {i + 1}} - W _ {t _ {i}}\right) + \frac {1}{2} f ^ {\prime \prime} \left(\theta_ {i}\right) \left(W _ {t _ {i + 1}} - W _ {t _ {i}}\right) ^ {2} \tag {10}
$$ for some $\theta_{i}\in (W_{t_{i}}, W_{t_{i + 1}})$. Substituting (10) into (9) we obtain

$$ f \left(W _ {t}\right) = f (0) + \sum_ {i = 0} ^ {n - 1} f ^ {\prime} \left(W _ {t _ {i}}\right) \left(W _ {t _ {i + 1}} - W _ {t _ {i}}\right) + \frac {1}{2} \sum_ {i = 0} ^ {n - 1} f ^ {\prime \prime} \left(\theta_ {i}\right) \left(W _ {t _ {i + 1}} - W _ {t _ {i}}\right) ^ {2}. \tag {11}
$$

If we let $\delta \coloneqq \max_{i}|t_{i + 1} - t_i|\to 0$ then it can be shown that the terms on the right-hand-side of (11) converge to the corresponding terms on the right-hand-side of (8) as desired. (This should not be surprising as we know the quadratic variation of Brownian motion on $[0, t]$ is equal to $t$.)

A more general version of Itô's Lemma can be stated for Itô processes.

# Theorem 6 (Itô'S Lemma For 1-Dimensional Itô Process)

Let $X_{t}$ be a 1-dimensional Itô process satisfying the SDE

$$ d X _ {t} = \mu_ {t} dt + \sigma_ {t} d W _ {t}.
$$

If $f(t, x):[0,\infty)\times R\to R$ is a $C^{1,2}$ function and $Z_{t}\coloneqq f(t, X_{t})$ then

$$
\begin{array}{l} d Z _ {t} = \frac {\partial f}{\partial t} (t, X _ {t}) dt + \frac {\partial f}{\partial x} (t, X _ {t}) d X _ {t} + \frac {1}{2} \frac {\partial^ {2} f}{\partial x ^ {2}} (t, X _ {t}) (d X _ {t}) ^ {2} \\ = \left(\frac {\partial f}{\partial t} (t, X _ {t}) + \frac {\partial f}{\partial x} (t, X _ {t}) \mu_ {t} + \frac {1}{2} \frac {\partial^ {2} f}{\partial x ^ {2}} (t, X _ {t}) \sigma_ {t} ^ {2}\right) dt + \frac {\partial f}{\partial x} (t, X _ {t}) \sigma_ {t} d W _ {t}. \\ \end{array}
$$

# 3.1 The "Box" Calculus

In the statement of Ito's Lemma, we implicitly assumed that $(dX_{t})^{2} = \sigma_{t}^{2}$d_{t}$$. The "box calculus" is a series of simple rules for calculating such quantities. In particular, we use the rules

$$ dt \times dt = dt \times d W _ {t} = 0 \quad \text {and}
$$

$$ d W _ {t} \times d W _ {t} = dt
$$ when determining quantities such as $(dX_{t})^{2}$ in the statement of Itô's Lemma above. Note that these rules are consistent with Theorem
1. When we have two correlated Brownian motions, $W_{t}^{(1)}$ and $W_{t}^{(2)}$, with correlation coefficient, $\rho_{t}$, then we easily obtain that $dW_{t}^{(1)} \times dW_{t}^{(2)} = \rho_{t} $d_{t}$$. We use the box calculus for computing the quadratic variation of Itô processes.

Exercise 3 Let $W_{t}^{(1)}$ and $W_{t}^{(2)}$ be two independent Brownian motions. Use Levy's Theorem to show that

$$
W _ {t}:= \rho W _ {t} ^ {(1)} + \sqrt {1 - \rho^ {2}} W _ {t} ^ {(2)}
$$ is also a Brownian motion for a given constant, $\rho$.

# 3.2 Some Examples

Example 3 Suppose a stock price, $S_{t}$, satisfies the SDE

$$ d S _ {t} = \mu_ {t} S _ {t} dt + \sigma_ {t} S _ {t} d W _ {t}.
$$

Then we can use the substitution, $Y_{t} = \log (S_{t})$ and Ito's Lemma applied to the function $f(x):= \log
(x) $ to obtain

$$
S _ {t} = S _ {0} \exp \left(\int_ {0} ^ {t} \left(\mu_ {s} - \sigma_ {s} ^ {2} / 2\right) ds + \int_ {0} ^ {t} \sigma_ {s} d W _ {s}\right). \tag {12}
$$

Note that $S_{t}$ does not appear on the right-hand-side of (12) so that we have indeed solved the SDE. When $\mu_{s} = \mu$ and $\sigma_{s} = \sigma$ are constants we obtain

$$
S _ {t} = S _ {0} \exp \left(\left(\mu - \sigma^ {2} / 2\right) t + \sigma d W _ {t}\right) \tag {13}
$$ so that $\log (S_t)\sim \mathsf{N}\left((\mu -\sigma^2 /2)t,\sigma^2 t\right)$

# Example 4 (Ornstein-Uhlenbeck Process)

Let $S_{t}$ be a security price and suppose $X_{t} = \log (S_{t})$ satisfies the SDE

$$ d X _ {t} = \left[ - \gamma \left(X _ {t} - \mu t\right) + \mu \right] dt + \sigma d W _ {t}.
$$

Then we can apply Itô's Lemma to $Y_{t} \coloneqq \exp (\gamma t)X_{t}$ to obtain

$$
\begin{array}{l} d Y _ {t} = \exp (\gamma t) d X _ {t} + X _ {t} d (\exp (\gamma t)) \\ = \exp (\gamma t) \left[ \left[ - \gamma \left(X _ {t} - \mu t\right) + \mu \right] dt + \sigma d W _ {t}\right) + X _ {t} \gamma \exp (\gamma t) dt \\ = \exp (\gamma t) ([ \gamma \mu t + \mu ] dt + \sigma d W _ {t}) \\ \end{array}
$$ so that

$$
Y _ {t} = Y _ {0} + \mu \int_ {0} ^ {t} e ^ {\gamma s} (\gamma s + 1) ds + \sigma \int_ {0} ^ {t} e ^ {\gamma s} d W _ {s} \tag {14}
$$ or alternatively (after simplifying the Riemann integral in (14))

$$
X _ {t} = X _ {0} e ^ {- \gamma t} + \mu t + \sigma e ^ {- \gamma t} \int_ {0} ^ {t} e ^ {\gamma s} d W _ {s}. \tag {15}
$$

Once again, note that $X_{t}$ does not appear on the right-hand-side of (15) so that we have indeed solved the SDE. We also obtain $\operatorname{E}[X_t] = X_0 e^{-\gamma t} + \mu t$ and

$$
\begin{array}{l} \operatorname {Var} \left(X _ {t}\right) = \operatorname {Var} \left(\sigma e ^ {- \gamma t} \int_ {0} ^ {t} e ^ {\gamma s} d W _ {s}\right) = \sigma^ {2} e ^ {- 2 \gamma t} \operatorname {E} \left[ \left(\int_ {0} ^ {t} e ^ {\gamma s} d W _ {s}\right) ^ {2} \right] \\ = \sigma^ {2} e ^ {- 2 \gamma t} \int_ {0} ^ {t} e ^ {2 \gamma s} ds \quad (\text {by I to ' s I sometry}) \\ = \frac {\sigma^ {2}}{2 \gamma} \left(1 - e ^ {- 2 \gamma t}\right). \\ \end{array}
$$

These moments should be compared with the corresponding moments for $\log (S_t)$ in the previous example.

# The Black-Scholes Model

In these notes we will use Itô's Lemma and a replicating argument to derive the famous Black-Scholes formula for European options. We will also discuss the weaknesses of the Black-Scholes model and geometric Brownian motion, and this leads us directly to the concept of the volatility surface which we will discuss in some detail. We will also derive and study the Black-Scholes Greeks and discuss how they are used in practice to hedge option portfolios.

# 1 The Black-Scholes Model

We are now able to derive the Black-Scholes PDE for a call-option on a non-dividend paying stock with strike $K$ and maturity $T$. We assume that the stock price follows a geometric Brownian motion so that

$$ d S _ {t} = \mu S _ {t} dt + \sigma S _ {t} d W _ {t} \tag {1}
$$ where $W_{t}$ is a standard Brownian motion. We also assume that interest rates are constant so that 1 unit of currency invested in the cash account at time 0 will be worth $B_{t} \coloneqq \exp ($r_{t}$)$ at time $t$. We will denote by $C(S, t)$ the value of the call option at time $t$. By Ito's lemma we know that

$$ d C (S, t) = \left(\mu S _ {t} \frac {\partial C}{\partial S} + \frac {\partial C}{\partial t} + \frac {1}{2} \sigma^ {2} S ^ {2} \frac {\partial^ {2} C}{\partial S ^ {2}}\right) dt + \sigma S _ {t} \frac {\partial C}{\partial S} d W _ {t} \tag {2}
$$

Let us now consider a self-financing trading strategy where at each time $t$ we hold $x_{t}$ units of the cash account and $y_{t}$ units of the stock. Then $P_{t}$, the time $t$ value of this strategy satisfies

$$
P _ {t} = x _ {t} B _ {t} + y _ {t} S _ {t}. \tag {3}
$$

We will choose $x_{t}$ and $y_{t}$ in such a way that the strategy replicates the value of the option. The self-financing assumption implies that

$$
\begin{array}{l} d P _ {t} = x _ {t} d B _ {t} + y _ {t} d S _ {t} (4) \\ = rx _ {t} B _ {t} dt + y _ {t} \left(\mu S _ {t} dt + \sigma S _ {t} d W _ {t}\right) \\ = \left(rx _ {t} B _ {t} + y _ {t} \mu S _ {t}\right) dt + y _ {t} \sigma S _ {t} d W _ {t}. (5) \\ \end{array}
$$

Note that (4) is consistent with our earlier definition of self-financing. In particular, any gains or losses on the portfolio are due entirely to gains or losses in the underlying securities, i.e. the cash-account and stock, and not due to changes in the holdings $x_{t}$ and $y_{t}$.

Returning to our derivation, we can equate terms in (2) with the corresponding terms in (5) to obtain

$$ y _ {t} = \frac {\partial C}{\partial S} \tag {6}
$$

$$ rx _ {t} B _ {t} = \frac {\partial C}{\partial t} + \frac {1}{2} \sigma^ {2} S ^ {2} \frac {\partial^ {2} C}{\partial S ^ {2}}. \tag {7}
$$

If we set $C_0 = P_0$, the initial value of our self-financing strategy, then it must be the case that $C_t = P_t$ for all $t$ since $C$ and $P$ have the same dynamics. This is true by construction after we equated terms in (2) with the corresponding terms in (5). Substituting (6) and (7) into (3) we obtain

$$ r S _ {t} \frac {\partial C}{\partial S} + \frac {\partial C}{\partial t} + \frac {1}{2} \sigma^ {2} S ^ {2} \frac {\partial^ {2} C}{\partial S ^ {2}} - r C = 0, \tag {8}
$$ the Black-Scholes PDE. In order to solve (8) boundary conditions must also be provided. In the case of our call option those conditions are: $C(S, T) = \max(S - K, 0)$, $C(0, t) = 0$ for all $t$ and $C(S, t) \to S$ as $S \to \infty$. The solution to (8) in the case of a call option is

$$
C (S, t) = S _ {t} \Phi \left(d _ {1}\right) - e ^ {- r (T - t)} K \Phi \left(d _ {2}\right) \tag {9}
$$

$$
\mathrm {where} d _ {1} = \frac {\log \left(\frac {S _ {t}}{K}\right) + (r + \sigma^ {2} / 2) (T - t)}{\sigma \sqrt {T - t}}
$$

$$
\text {and} d _ {2} = d _ {1} - \sigma \sqrt {T - t}
$$ and $\Phi(\cdot)$ is the CDF of the standard normal distribution. One way to confirm (9) is to compute the various partial derivatives using (9), then substitute them into (8) and check that (8) holds. The price of a European put-option can also now be easily computed from put-call parity and (9).

The most interesting feature of the Black-Scholes PDE (8) is that $\mu$ does not appear<sup>1</sup> anywhere. Note that the Black-Scholes PDE would also hold if we had assumed that $\mu = r$. However, if $\mu = r$ then investors would not demand a premium for holding the stock. Since this would generally only hold if investors were risk-neutral, this method of derivatives pricing came to be known as risk-neutral pricing.

# 1.1 Martingale Pricing

It can be shown² that the Black-Scholes PDE in (8) is consistent with martingale pricing. In particular, if we deflate by the cash account then the deflated stock price process, $Y_{t} \coloneqq S_{t} / B_{t}$, must be a $\mathcal{Q}$ -martingale where $Q$ is the EMM corresponding to taking the cash account as numeraire. It can be shown that the $\mathcal{Q}$ -dynamics of $S_{t}$ satisfy³

$$ d S _ {t} = r S _ {t} dt + \sigma S _ {t} d W _ {t} ^ {Q} \tag {10}
$$ where $W_{t}^{Q}$ is a $Q$ -Brownian motion. Note that (10) implies

$$
S _ {T} = S _ {t} e ^ {(r - \sigma^ {2} / 2) (T - t) + \sigma (W _ {T} ^ {\mathcal {Q}} - W _ {t} ^ {\mathcal {Q}})}
$$ so that $S_T$ is log-normally distributed under $\mathcal{Q}$. It is now easily confirmed that the call option price in (9) also satisfies

$$
C \left(S _ {t}, t\right) = \mathrm {E} _ {t} ^ {\mathcal {Q}} \left[ e ^ {- r (T - t)} \max \left(S _ {T} - K, 0\right) \right] \tag {11}
$$ which is of course consistent with martingale pricing.

# 1.2 Dividends

If we assume that the stock pays a continuous dividend yield of $q$, i.e. the dividend paid over the interval $(t, t + d_{t}]$ equals $qS_{t}$d_{t}, then the dynamics of the stock price can be shown to satisfy

$$ d S _ {t} = (r - q) S _ {t} dt + \sigma S _ {t} d W _ {t} ^ {\mathcal {Q}}. \tag {12}
$$

In this case the total gain process, i.e. the capital gain or loss from holding the security plus accumulated dividends, is a $\mathcal{Q}$ -martingale. The call option price is still given by (11) but now with

$$
S _ {T} = S _ {t} e ^ {(r - q - \sigma^ {2} / 2) (T - t) + \sigma \left(W _ {T} ^ {\mathcal {Q}} - W _ {t} ^ {\mathcal {Q}}\right)}.
$$

In this case the call option price is given by

$$
C (S, t) = e ^ {- q (T - t)} S _ {t} \Phi \left(d _ {1}\right) - e ^ {- r (T - t)} K \Phi \left(d _ {2}\right) \tag {13}
$$

$$
\text {where} d _ {1} = \frac {\log \left(\frac {S _ {t}}{K}\right) + (r - q + \sigma^ {2} / 2) (T - t)}{\sigma \sqrt {T - t}}
$$

$$
\text {and} d _ {2} = d _ {1} - \sigma \sqrt {T - t}.
$$

Exercise 1 Follow the replicating argument given above to derive the Black-Scholes PDE when the stock pays a continuous dividend yield of $q$.

# 2 The Volatility Surface

The Black-Scholes model is an elegant model but it does not perform very well in practice. For example, it is well known that stock prices jump on occasions and do not always move in the continuous manner predicted by the GBM motion model. Stock prices also tend to have fatter tails than those predicted by GBM. Finally, if the Black-Scholes model were correct then we should have a flat implied volatility surface. The volatility surface is a function of strike, $K$, and time-to-maturity, $T$, and is defined implicitly

$$
C (S, K, T):= \mathsf {BS} (S, T, r, q, K, \sigma (K, T)) \tag {14}
$$ where $C(S, K, T)$ denotes the current market price of a call option with time-to-maturity $T$ and strike $K$, and $\mathrm{BS}(\cdot)$ is the Black-Scholes formula for pricing a call option. In other words, $\sigma(K, T)$ is the volatility that, when substituted into the Black-Scholes formula, gives the market price, $C(S, K, T)$. Because the Black-Scholes formula is continuous and increasing in $\sigma$, there will always be a unique solution, $\sigma(K, T)$. If the Black-Scholes model were correct then the volatility surface would be flat with $\sigma(K, T) = \sigma$ for all $K$ and $T$. In practice, however, not only is the volatility surface not flat but it actually varies, often significantly, with time.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/d22bf682d4fd3a3e4f010dd1ee67ceae1749517ca8dd94ce34fd9da4c7196d94.jpg)

Figure 1: The Volatility Surface

In Figure 1 above we see a snapshot of the $5^{\text{th}}$ volatility surface for the Eurostoxx 50 index on November $28^{th}$,
2007. The principal features of the volatility surface is that options with lower strikes tend to have higher implied volatilities. For a given maturity, $T$, this feature is typically referred to as the volatility skew or smile. For a given strike, $K$, the implied volatility can be either increasing or decreasing with time-to-maturity. In general, however, $\sigma(K, T)$ tends to converge to a constant as $T \to \infty$. For $T$ small, however, we often observe an inverted volatility surface with short-term options having much higher volatilities than longer-term options. This is particularly true in times of market stress.

It is worth pointing out that different implementations<sup>6</sup> of Black-Scholes will result in different implied volatility surfaces. If the implementations are correct, however, then we would expect the volatility surfaces to be very similar in shape. Single-stock options are generally American and in this case, put and call options will typically give rise to different surfaces. Note that put-call parity does not apply for American options.

Clearly then the Black-Scholes model is far from accurate and market participants are well aware of this. However, the language of Black-Scholes is pervasive. Every trading desk computes the Black-Scholes implied volatility surface and the Greeks they compute and use are Black-Scholes Greeks.

# Arbitrage Constraints On The Volatility Surface

The shape of the implied volatility surface is constrained by the absence of arbitrage. In particular:

1. We must have $\sigma(K, T) \geq 0$ for all strikes $K$ and expirations $T$.
2. At any given maturity, $T$, the skew cannot be too steep. Otherwise butterfly arbitrages will exist. For example fix a maturity, $T$ and consider put two options with strikes $K_{1} < K_{2}$. If there is no arbitrage then it must be the case (why?) that $P(K_{1}) < P(K_{2})$ where $P(K_{i})$ is the price of the put option with strike $K_{i}$. However, if the skew is too steep then we would obtain (why?) $P(K_{1}) > P(K_{2})$.
3. Likewise the term structure of implied volatility cannot be too inverted. Otherwise calendar spread arbitrages will exist. This is most easily seen in the case where $r = q = 0$. Then, fixing a strike $K$, we can let $C_t(T)$ denote the time $t$ price of a call option with strike $K$ and maturity $T$. Martingale pricing implies that $C_t(T) = \mathsf{E}_t[(S_T - K)^+]$. We have seen before that $(S_T - K)^+$ is a $Q$ -submartingale and now standard martingale results can be used to show that $C_t(T)$ must be non-decreasing in $T$. This would be violated (why?) if the term structure of implied volatility was too inverted.

In practice the implied volatility surface will not violate any of these restrictions as otherwise there would be an arbitrage in the market. These restrictions can be difficult to enforce, however, when we are "bumping" or "stressing" the volatility surface, a task that is commonly performed for risk management purposes.

# Why Is There A Skew?

For stocks and stock indices the shape of the volatility surface is always changing. There is generally a skew, however, so that for any fixed maturity, $T$, the implied volatility decreases with the strike, $K$. It is most pronounced at shorter expirations. There are two principal explanations for the skew.

1. Risk aversion which can appear as an explanation in many guises:

(a) Stocks do not follow GBM with a fixed volatility. Instead they often jump and jumps to the downside tend to be larger and more frequent than jumps to the upside.
(b) As markets go down, fear sets in and volatility goes up.
(c) Supply and demand. Investors like to protect their portfolio by purchasing out-of-the-money puts and so there is more demand for options with lower strikes.

2. The leverage effect which is due to the fact that the total value of company assets, i.e. debt + equity, is a more natural candidate to follow GBM. If so, then equity volatility should increase as the equity value decreases. To see this consider the following:

Let $V, E$ and $D$ denote the total value of a company, the company's equity and the company's debt, respectively. Then the fundamental accounting equations state that

$$
V = D + E. \tag {15}
$$

(Equation (15) is the basis for the classical structural models that are used to price risky debt and credit default swaps. Merton (1970's) recognized that the equity value could be viewed as the value of a call option on $V$ with strike equal to $D$.)

Let $\Delta V, \Delta E$ and $\Delta D$ be the change in values of $V, E$ and $D$, respectively. Then $V + \Delta V = (E + \Delta E) + (D + \Delta D)$ so that

$$
\begin{array}{l} {\frac {V + \Delta V}{V}} = {\frac {E + \Delta E}{V}} + {\frac {D + \Delta D}{V}} \\ = \frac {E}{V} \left(\frac {E + \Delta E}{E}\right) + \frac {D}{V} \left(\frac {D + \Delta D}{D}\right) \tag {16} \\ \end{array}
$$

If the equity component is substantial so that the debt is not too risky, then (16) implies

$$
\sigma_ {V} \approx \frac {E}{V} \sigma_ {E}
$$ where $\sigma_{V}$ and $\sigma_{E}$ are the firm value and equity volatilities, respectively. We therefore have

$$
\sigma_ {E} \approx \frac {V}{E} \sigma_ {V}. \tag {17}
$$

# Example 1 (The Leverage Effect)

Suppose, for example, that $V = 1$, $E =0.5$ and $\sigma_{V} = 20\%$. Then (17) implies $\sigma_{E} \approx 40\%$. Suppose $\sigma_{V}$ remains unchanged but that over time the firm loses $20\%$ of its value. Almost all of this loss is borne by equity so that now (17) implies $\sigma_{E} \approx 53\%$. $\sigma_{E}$ has therefore increased despite the fact that $\sigma_{V}$ has remained constant.

It is interesting to note that there was little or no skew in the market before the Wall street crash of
1987. So it appears to be the case that it took the market the best part of two decades before it understood that it was pricing options incorrectly.

# What The Volatility Surface Tells Us

To be clear, we continue to assume that the volatility surface has been constructed from European option prices. Consider a butterfly strategy centered at $K$ where you are:

1. long a call option with strike $K - \Delta K$
2. long a call with strike $K + \Delta K$
3. short 2 call options with strike $K$

The value of the butterfly, $B_0$, at time $t = 0$, satisfies

$$
\begin{array}{l} B _ {0} = C (K - \Delta K, T) - 2 C (K, T) + C (K + \Delta K, T) \\ \approx e ^ {- r T} \operatorname {P rob} (K - \Delta K \leq S _ {T} \leq K + \Delta K) \times \Delta K / 2 \\ \approx e ^ {- r T} f (K, T) \times 2 \Delta K \times \Delta K / 2 \\ = e ^ {- r T} f (K, T) \times (\Delta K) ^ {2} \\ \end{array}
$$ where $f(K, T)$ is the (risk-neutral) probability density function
(PDF) of $S_T$ evaluated at $K$. We therefore have

$$ f (K, T) \approx e ^ {r T} \frac {C (K - \Delta K, T) - 2 C (K, T) + C (K + \Delta K, T)}{(\Delta K) ^ {2}}. \tag {18}
$$

Letting $\Delta K\to 0$ in (18), we obtain

$$ f (K, T) = e ^ {r T} \frac {\partial^ {2} C}{\partial K ^ {2}}.
$$

The volatility surface therefore gives the marginal risk-neutral distribution of the stock price, $S_{T}$, for any time, $T$. It tells us nothing about the joint distribution of the stock price at multiple times, $T_{1},\ldots, T_{n}$

This should not be surprising since the volatility surface is constructed from European option prices and the latter only depend on the marginal distributions of $S_{T}$.

# Example 2 (Same Marginals, Different Joint Distributions)

Suppose there are two time periods, $T_{1}$ and $T_{2}$, of interest and that a non-dividend paying security has risk-neutral distributions given by

$$
S _ {T _ {1}} = e ^ {\left(r - \sigma^ {2} / 2\right) T _ {1} + \sigma \sqrt {T _ {1}} Z _ {1}} \tag {19}
$$

$$
S _ {T _ {2}} = e ^ {\left(r - \sigma^ {2} / 2\right) T _ {2} + \sigma \sqrt {T _ {2}} \left(\rho Z _ {1} + \sqrt {1 - \rho^ {2}} Z _ {2}\right)} \tag {20}
$$ where $Z_{1}$ and $Z_{2}$ are independent $\mathsf{N}(0,1)$ random variables. Note that a value of $\rho > 0$ can capture a momentum effect and a value of $\rho < 0$ can capture a mean-reversion effect. We are also implicitly assuming that $S_{0} = 1$.

Suppose now that there are two securities, $A$ and $B$ say, with prices $S_{t}^{(A)}$ and $S_{t}^{(B)}$ given by (19) and (20) at times $t = T_1$ and $t = T_2$, and with parameters $\rho = \rho_A$ and $\rho = \rho_B$, respectively. Note that the marginal distribution of $S_{t}^{(A)}$ is identical to the marginal distribution of $S_{t}^{(B)}$ for $t \in \{T_1, T_2\}$. It therefore follows that options on $A$ and $B$ with the same strike and maturity must have the same price. $A$ and $B$ therefore have identical volatility surfaces.

But now consider a knock-in put option with strike 1 and expiration $T_{2}$. In order to knock-in, the stock price at time $T_{1}$ must exceed the barrier price of 1.2. The payoff function is then given by

$$
\text {P ayoff} = \max \left(1 - S _ {T _ {2}}, 0\right) 1 _ {\left\{S _ {T _ {1}} \geq 1.2 \right\}}.
$$

Question: Would the knock-in put option on $A$ have the same price as the knock-in put option on $B$?

Question: How does your answer depend on $\rho_{A}$ and $\rho_{B}$?

Question: What does this say about the ability of the volatility surface to price barrier options?

# 3 The Greeks

We now turn to the sensitivities of the option prices to the various parameters. These sensitivities, or the Greeks are usually computed using the Black-Scholes formula, despite the fact that the Black-Scholes model is known to be a poor approximation to reality. But first we return to put-call parity.

# Put-Call Parity

Consider a European call option and a European put option, respectively, each with the same strike, $K$, and maturity $T$. Assuming a continuous dividend yield, $q$, then put-call parity states

$$ e ^ {- r T} K + \text {C all price} = e ^ {- q T} S + \text {P ut price}. \tag {21}
$$

This of course follows from a simple arbitrage argument and the fact that both sides of (21) equal $\max(S_T, K)$ at time $T$. Put-call parity is useful for calculating Greeks. For example<sup>7</sup>, it implies that $\text{Vega}(\text{Call}) = \text{Vega}(\text{Put})$ and that $\text{Gamma}(\text{Call}) = \text{Gamma}(\text{Put})$. It is also extremely useful for calibrating dividends and constructing the volatility surface.

# The Greeks

The principal Greeks for European call options are described below. The Greeks for put options can be calculated in the same manner or via put-call parity.

Definition: The delta of an option is the sensitivity of the option price to a change in the price of the underlying security.

The delta of a European call option satisfies

$$
\mathrm {delta} = \frac {\partial C}{\partial S} = e ^ {- q T} \Phi (d _ {1}).
$$

This is the usual delta corresponding to a volatility surface that is sticky-by-strike. It assumes that as the underlying security moves, the volatility of the option does not move. If the volatility of the option did move then the delta would have an additional term of the form $\text{vega} \times \frac{\partial \sigma(K, T)}{\partial S}$. In this case we would say that the volatility surface was sticky-by-delta. Equity markets typically use the sticky-by-strike approach when computing deltas. Foreign exchange markets, on the other hand, tend to use the sticky-by-delta approach. Similar comments apply to gamma as defined below.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/dfd793e7f3cb175f4d72aa5173f3ed7938b5638a83b969744d38310d23a6dfc4.jpg)

Figure 2: Delta for European Options

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/141d2b560e16ae44478ca09417b120a30e3a220eeeeb8ab80e88c5a6adb9641a.jpg)

By put-call parity, we have $\text{deltaput} = \text{deltacall} - e^{-qT}$. Figure 2(a) shows the delta for a call and put option, respectively, as a function of the underlying stock price. In Figure 2(b) we show the delta for a call option as a function of the underlying stock price for three different times-to-maturity. It was assumed $r = q = 0$. What is the strike $K$? Note that the delta becomes steeper around $K$ when time-to-maturity decreases. Note also that $\text{deltacall} = \Phi(d_1)$ is often loosely interpreted as the (risk-neutral) probability that the option will expire in the money. (This risk-neutral probability is in fact $\Phi(d_2)$.)

In Figure 3 we show the delta of a call option as a function of time-to-maturity for three options of different

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/28dd04ccaf1e42c3cd71ca0db3358743efb2430a5f88257824f556dcf5ea39db.jpg)

Figure 3: Delta for European Call Options as a Function of Time-To-Maturity money-ness. Are there any surprises here? What would the corresponding plot for put options look like?

Definition: The gamma of an option is the sensitivity of the option's delta to a change in the price of the underlying security.

The gamma of a call option satisfies

$$
\operatorname {gamma} = \frac {\partial^ {2} C}{\partial S ^ {2}} = e ^ {- q T} \frac {\phi (d _ {1})}{\sigma S \sqrt {T}}
$$ where $\phi (\cdot)$ is the standard normal PDF.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/16d843589f56609b64b566fa15d51aedde1bb980a5315128325fbf66e02ba22a.jpg)

(a) Gamma as a Function of Stock Price Figure 4: Gamma for European Options

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/250dac6c3105424c4521d20e5e58be6e3b85017fab2da2158a01cf19d1929f29.jpg)

(b) Gamma as a Function of Time-to-Maturity

In Figure 4(a) we show the gamma of a European option as a function of stock price for three different time-to-maturities. Note that by put-call parity, the gamma for European call and put options with the same strike are equal. Gamma is always positive due to option convexity. Traders who are long gamma can make money by gamma scalping. Gamma scalping is the process of regularly re-balancing your options portfolio to be delta-neutral. However, you must pay for this long gamma position up front with the option premium. In Figure 4(b), we display gamma as a function of time-to-maturity. Can you explain the behavior of the three curves in Figure 4(b)?

Definition: The vega of an option is the sensitivity of the option price to a change in volatility.

The vega of a call option satisfies

$$
\operatorname {vega} = \frac {\partial C}{\partial \sigma} = e ^ {- q T} S \sqrt {T} \phi (d _ {1}).
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/66bfd71732b9f82eca95af78bb9ed3b6d33c851b056dcf5c632c8c3bd2fd3f5e.jpg)

(a) Vega as a Function of Stock Price Figure 5: Vega for European Options

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/1e45c99c3df9c14ee3eed1c1de82a3a2961bc605151950763fd2e9244430439f.jpg)

(b) Vega as a Function of Time-to-Maturity

In Figure 5(b) we plot vega as a function of the underlying stock price. We assumed $K = 100$ and that $r = q = 0$. Note again that by put-call parity, the vega of a call option equals the vega of a put option with the same strike. Why does vega increase with time-to-maturity? For a given time-to-maturity, why is vega peaked near the strike? Turning to Figure 5(b), note that the vega decreases to 0 as time-to-maturity goes to
0. This is consistent with Figure 5(a). It is also clear from the expression for vega.

Question: Is there any "inconsistency" to talk about vega when we use the Black-Scholes model?

Definition: The theta of an option is the sensitivity of the option price to a negative change in time-to-maturity.

The theta of a call option satisfies

$$
\mathrm {the ta} = - \frac {\partial C}{\partial T} = - e ^ {- q T} S \phi (d _ {1}) \frac {\sigma}{2 \sqrt {T}} + qe ^ {- q T} S \mathsf {N} (d _ {1}) - r K e ^ {- r T} \mathsf {N} (d _ {2}).
$$

In Figure 6(a) we plot theta for three call options of different times-to-maturity as a function of the underlying stock price. We have assumed that $r = q = 0\%$. Note that the call option's theta is always negative. Can you explain why this is the case? Why does theta become more negatively peaked as time-to-maturity decreases to 0?

In Figure 6(b) we again plot theta for three call options of different money-ness, but this time as a function of time-to-maturity. Note that the ATM option has the most negative theta and this gets more negative as

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/ea163a4aa714def1212308705a97b4eb7c108666270dbeba1d8dcb0d4f66704b.jpg)

(a)Theta as a Function of Stock Price

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/723d9af0616b00a9b60e6fa647b1dd62ec46c0c270e605ebc283a369c6cb4d46.jpg)

(b)Theta as a Function of Time-to-Maturity Figure 6: Theta for European Options time-to-maturity goes to
0. Can you explain why?

Options Can Have Positive Theta: In Figure 7 we plot theta for three put options of different money-ness as a function of time-to-maturity. We assume here that $q = 0$ and $r = 10\%$. Note that theta can be positive for in-the-money put options. Why? We can also obtain positive theta for call options when $q$ is large. In typical scenarios, however, theta for both call and put options will be negative.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/5205f514d9abea9c5b82f15a0506ad75456f9a3140f9131b1ab5657511ec42dd.jpg)

Figure 7: Positive Theta is Possible

# Delta-Gamma-Vega Approximations To Option Prices

A simple application of Taylor's Theorem says

$$
\begin{array}{l} C (S + \Delta S, \sigma + \Delta \sigma) \approx C (S, \sigma) + \Delta S \frac {\partial C}{\partial S} + \frac {1}{2} (\Delta S) ^ {2} \frac {\partial^ {2} C}{\partial S ^ {2}} + \Delta \sigma \frac {\partial C}{\partial \sigma} \\ = C (S, \sigma) + \Delta S \times \delta + \frac {1}{2} (\Delta S) ^ {2} \times \Gamma + \Delta \sigma \times \text {vega} \\ \end{array}
$$ where $C(S, \sigma)$ is the price of a derivative security as a function of the current stock price, $S$, and the implied volatility, $\sigma$. We therefore obtain

$$
\begin{array}{l} \mathrm {P} \& \mathrm {L} = \delta \Delta S + \frac {\Gamma}{2} (\Delta S) ^ {2} + \text {vega} \Delta \sigma \\ = delta P \& L + gamma P \& L + vega P \& L \\ \end{array}
$$

When $\Delta \sigma = 0$, we obtain the well-known delta-gamma approximation. This approximation is often used, for example, in historical Value-at-Risk
(VaR) calculations for portfolios that include options. We can also write

$$
\begin{array}{l} \mathrm {P} \& \mathrm {L} = \delta S \left(\frac {\Delta S}{S}\right) + \frac {\Gamma S ^ {2}}{2} \left(\frac {\Delta S}{S}\right) ^ {2} + \text {vega} \Delta \sigma \\ = \text {ESP} \times \text {R eturn} + \mathbb {S} \text {G amma} \times \text {R eturn} ^ {2} + \text {vega} \Delta \sigma \\ \end{array}
$$ where ESP denotes the equivalent stock position or "dollar" delta.

# 4 Delta Hedging

In the Black-Scholes model with GBM, an option can be replicated exactly by delta-hedging the option. In fact the Black-Scholes PDE we derived earlier was obtained by a delta-hedging / replication argument. The idea behind delta-hedging is to re-balance the portfolio of the option and stock continuously so that you always have a total delta of zero after re-balancing. Of course it is not practical in to hedge continuously and so instead we hedge periodically. Periodic or discrete hedging then results in some replication error.

Let $P_{t}$ denote the time $t$ value of the discrete-time self-financing strategy that attempts to replicate the option payoff and let $C_0$ denote the initial value of the option. The replicating strategy is then given by

$$
P _ {0}:= C _ {0} \tag {22}
$$

$$
P _ {t _ {i + 1}} = P _ {t _ {i}} + \left(P _ {t _ {i}} - \delta_ {t _ {i}} S _ {t _ {i}}\right) r \Delta t + \delta_ {t _ {i}} \left(S _ {t _ {i + 1}} - S _ {t _ {i}} + q S _ {t _ {i}} \Delta t\right) \tag {23}
$$ where $\Delta t \coloneqq t_{i+1} - t_i$ is the length of time between re-balancing (assumed constant for all $i$ ), $r$ is the annual risk-free interest rate (assuming per-period compounding), $q$ is the dividend yield and $\delta_{t_i}$ is the Black-Scholes delta at time $t_i$. This delta is a function of $S_{t_i}$ and some assumed implied volatility, $\sigma_{imp}$ say. Note that (22) and (23) respect the self-financing condition. Stock prices are simulated assuming $S_t \sim \mathrm{GBM}(\mu, \sigma)$ so that

$$
S _ {t + \Delta t} = S _ {t} e ^ {(\mu - \sigma^ {2} / 2) \Delta t + \sigma \sqrt {\Delta t} Z}
$$ where $Z \sim \mathsf{N}(0,1)$. Note the option implied volatility, $\sigma_{imp}$, need not equal $\sigma$ which in turn need not equal the realized volatility (when we hedge periodically as opposed to continuously). This has interesting implications for the trading P&L which we may define as

$$
\mathsf {P} \& \mathsf {L}:= P _ {T} - (S _ {T} - K) ^ {+}
$$ in the case of a short position in a call option with strike $K$ and maturity $T$. Note that $P_{T}$ is the terminal value of the replicating strategy in (23). Many interesting questions now arise:

Question: If you sell options, what typically happens the total P&L if $\sigma < \sigma_{imp}$?

Question: If you sell options, what typically happens the total P&L if $\sigma >\sigma_{imp}$?

Question: If $\sigma = \sigma_{imp}$ what typically happens the total P&L as the number of re-balances increases?

# Some Answers To Delta-Hedging Questions

Recall that the price of an option increases as the volatility increases. Therefore if realized volatility is higher than expected, i.e. the level at which it was sold, we expect to lose money on average when we delta-hedge an option that we sold. Similarly, we expect to make money when we delta-hedge if the realized volatility is lower than the level at which it was sold.

In general, however, the payoff from delta-hedging an option is path-dependent, i.e. it depends on the price path taken by the stock over the entire time interval. In fact, we can show that the payoff from continuously delta-hedging an option satisfies

$$
\mathsf {P} \& \mathsf {L} = \int_ {0} ^ {T} \frac {S _ {t} ^ {2}}{2} \frac {\partial^ {2} V _ {t}}{\partial S ^ {2}} \left(\sigma_ {imp} ^ {2} - \sigma_ {t} ^ {2}\right) dt \tag {24}
$$ where $V_{t}$ is the time $t$ value of the option and $\sigma_{t}$ is the realized instantaneous volatility at time $t$.

The term $\frac{S_t^2}{2}\frac{\partial^2V_t}{\partial S^2}$ is often called the dollar gamma, as discussed earlier. It is always positive for a call or put option, but it goes to zero as the option moves significantly into or out of the money.

Returning to self-financing trading strategy of (22) and (23), note that we can choose any model we like for the security price dynamics. In particular, we are not restricted to choosing geometric Brownian motion and other diffusion or jump-diffusion models could be used instead. It is interesting to simulate these alternative models and to then observe what happens to the replication error in (24) where the $\delta_{t_i}$ 's are computed assuming
(incorrectly) a geometric Brownian motion price dynamics.

# Credit Modeling And Credit Derivatives

In these lecture notes we introduce the main approaches to credit modeling and we will largely follow the excellent development in Chapter 17 of the $2^{nd}$ edition of Luenberger's Investment Science. In recent years credit modeling has become an extremely important component in the derivatives industry and risk management in general. Indeed the development of credit-default-swaps
(CDSs) and other more complex credit derivatives are widely considered to have been one of the contributing factors to the global financial crisis of 2008 and beyond. These notes will also prove useful for studying certain aspects of corporate finance – a topic we will turn to at the end of the course.

# 1 Structural Models

The structural approach to credit modeling began with Merton in 1974 and was based on the fundamental accounting equation

$$
\text {A ssets} = \text {D ebt} + \text {E quity} \tag {1}
$$ which applies to all firms (in the absence of taxes). This equation simply states the obvious, namely that the asset-value of a firm must equal the value of the firm's debt and the firm's equity. This follows because all of the profits generated by a firm's assets will ultimately accrue to the debt- and equity-holders. While more complicated than presented here, the capital structure of a firm is such that debt-holders are more senior than equity holders. That means that in the event of bankruptcy debt-holders must be paid off in full before the equity-holders can receive anything. This insight allowed Merton<sup>1</sup> to write the value of the equity at time $T$, $E_{T}$, as a call option on the value of the firm, $V_{T}$ with strike equal to the face value of the debt, $D_{T}$. Merton's model therefore implies

$$
E _ {T} = \max \left(0, V _ {T} - D _ {T}\right) \tag {2}
$$ with default occurring if $V_{T} < D_{T}$. Note that (2) implicitly assumes that the firm is wound up at time $T$ and that default can only occur at that time. These assumptions are not very realistic and have been relaxed in many directions since Merton's original work. Nonetheless, we can gain many insights from working with (2). First of all, we can take $V_{t}$ to be the value of a traded asset (why?) so that risk-neutral pricing applies. If the firm does not pay dividends then we could assume, for example, that $V_{t} \sim \mathrm{GBM}(r,\sigma)$ so that $E_{t}$ is the corresponding Black-Scholes price of a call option with maturity $T$, strike $D_{T}$ and underlying security value $V_{t}$. From this we can compute other interesting quantities such as the (risk-neutral) probability of default.

# 1.1 Structural Lattice Models

While closed-form solutions can be obtained for the equity and debt values in Merton's model (as well as the Black-Cox extension we discuss below) it will be convenient to do much of our work in lattice models as they will allow us to concentrate on the financial rather than mathematical aspects of the modeling.

# The Merton Model

We assume the following parameters: $V_0 = 1,000$, $T = 7$ years, $\mu = 15\%$, $\sigma = 25\%$, $r = 5\%$ and the # of time periods $= 7$. The face value of the debt is 800 and the coupon on the debt is zero. The first task is to construct the lattice model for $V_t$ and we do this following our usual approach to lattice construction. That is, we take

$\nu = \left(\mu -\sigma^2 /2\right)$ $\ln u = \sqrt{\sigma^2\Delta t + (\nu\Delta t)^2}$ $d = 1 / u$ and risk-neutral probability of an up-move $q = (e^{r\Delta t} - d) / (u - d)$. The resulting lattice of firm values is displayed below with values at time $T$ corresponding to firm default marked with an asterisk.

Firm Value Lattice

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
 & & & & & & & 6940.6 \\ \hline
 & & & & & 3990.2 & 5262.6 & 3990.2 \\ \hline
 & & & & 3025.5 & 2294.0 & 1739.4 & 2294.0 \\ \hline
 & & & 2294.0 & 1739.4 & 1318.9 & 1000.0 & 1318.9 \\ \hline
 & & 1739.4 & 1318.9 & 1000.0 & 758.2 & 574.9 & 758.2* \\ \hline
 & 1318.9 & 1000.0 & 758.2 & 574.9 & 435.9 & 330.5 & 435.9* \\ \hline
1000.0 & 758.2 & 574.9 & 435.9 & 330.5 & 250.6 & 190.0 & 250.6* \\ \hline t = 0 & t = 1 & t = 2 & t = 3 & t = 4 & t = 5 & t = 6 & t = 7 \\ \hline
\end{tabular}
\end{document}
```

Now we are ready to price the equity and debt, i.e. corporate bonds, of the firm. We price the equity first by simply viewing it as a regular call option on $V_{T}$ with strike $K = 800$ and using the usual risk-neutral backward evaluation approach. The bond or debt price can then be computed similarly or by simply observing that it must equal the difference between the firm-value and equity value at each time and state.

Equity Lattice

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
 & & & & & & & 6140.6 \\ \hline
 & & & & 3266.4 & & 4501.6 & 3190.2 \\ \hline
 & & & 2336.9 & 1570.2 & 978.4 & 1494.0 & \\ \hline
 & & 1640.8 & 1054.7 & 603.6 & 258.0 & 518.9 & \\ \hline
 & 758.6 & 1127.8 & 687.1 & 358.4 & 128.3 & 0.0 & 0.0 \\ \hline
 & 435.7 & 207.1 & 63.8 & 0.0 & 0.0 & 0.0 & \\ \hline
499.7 & 269.9 & 117.4 & 31.7 & 0.0 & 0.0 & 0.0 & 0.0 \\ \hline t = 0 & t = 1 & t = 2 & t = 3 & t = 4 & t = 5 & t = 6 & t = 7 \\ \hline
\end{tabular}
\end{document}
```

Debt Lattice

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
 & & & & & & & 800.0 \\ \hline
 & & & & & 761.0 & 800.0 & \\ \hline
 & & & & 723.9 & 761.0 & 800.0 & \\ \hline
 & & & 688.6 & 723.9 & 761.0 & 800.0 & \\ \hline
 & & 653.2 & 684.7 & 715.3 & 742.0 & 758.2* & \\ \hline
 & 560.3 & 611.6 & 631.7 & 641.6 & 630.0 & 574.9 & 435.9* \\ \hline
 & 564.3 & 551.1 & 511.1 & 435.9 & 330.5 & 250.6* & \\ \hline
500.3 & 488.3 & 457.5 & 404.2 & 330.5 & 250.6 & 190.0 & 144.1* \\ \hline t = 0 & t = 1 & t = 2 & t = 3 & t = 4 & t = 5 & t = 6 & t = 7 \\ \hline
\end{tabular}
\end{document}
```

We see the initial values of the equity and debt are 499.7 and 500.3, respectively. The credit spread can also be computed as follows. The yield-to-maturity, $y$, of the bond satisfies $500.3 = e^{-yT} \times 800$ which implies

$y = 6.7\%$. The credit spread2 is then given by $c = y - r = 1.7\%$ or 170 basis points.

Note that we could also easily compute the true or risk-neutral probability of default by constructing an appropriate lattice. Note that it is also easy to handle coupons. If the debt pays a coupon of $C$ per period, then we write $E_{T} = \max (0, V_{T} - D_{T} - C)$ and then in any earlier period we have

$$
E _ {t} = \max \left(0, \left[ q E ^ {u} + (1 - q) E ^ {d} \right] / R - C\right)
$$ where $R = e^{r\Delta t}$ and $E^u$ and $E^d$ are the two possible successor nodes in the lattice corresponding to up- and down-moves, respectively. As before, the debt value at a given node will be given by the difference between the firm and equity values at that node.

# The Black-Cox Model

The Black-Cox model generalizes the Merton model by allowing default to also occur before time $T$. In our example we can assume default occurs the first time the firm value falls below the face value of the debt. In that case we can compute the value of the equity by placing 0 in those cells where default occurs and updating other cells using the usual backwards evaluation approach. As before the debt value at a given cell in the lattice is given by the difference between the firm and equity values in that cell. This results in the following equity and debt lattices:

Equity Lattice (Black-Cox)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
 & & & & & & & 6140.6 \\ \hline
 & & & & 3266.4 & 4501.6 & 3190.2 & \\ \hline
 & & & 2336.9 & 1570.2 & 2264.5 & 1494.0 & \\ \hline
 & & 1640.8 & 1054.7 & 603.6 & 258.0 & 518.9 & \\ \hline
 & 703.9 & 328.5 & 0.0 & 0.0 & 0.0 & 0.0 & \\ \hline
350.0 & 0.0 & 0.0 & 0.0 & 0.0 & 0.0 & 0.0 & \\ \hline t = 0 & t = 1 & t = 2 & t = 3 & t = 4 & t = 5 & t = 6 & t = 7 \\ \hline
\end{tabular}
\end{document}
```

Debt Lattice (Black-Cox)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
 & & & & & & & 800.0 \\ \hline
 & & & & & 761.0 & 800.0 & \\ \hline
 & & & & 688.6 & 723.9 & 761.0 & 800.0 \\ \hline
 & & & 653.2 & 684.7 & 715.3 & 742.0 & 800.0 \\ \hline
 & & 623.6 & 658.2 & 699.9 & 758.2* & 574.9* & 435.9* \\ \hline
 & 614.9 & 671.5 & 758.2* & 574.9* & 435.9* & 330.5* & 250.6* \\ \hline
650.0 & 758.2* & 574.9* & 435.9* & 330.5* & 250.6* & 190.0* & 144.1* \\ \hline t = 0 & t = 1 & t = 2 & t = 3 & t = 4 & t = 5 & t = 6 & t = 7 \\ \hline
\end{tabular}
\end{document}
```

We see that the debt-holders have benefitted from this new default regime with their value increasing from 500.3 to
650. Of course this increase has come at the expense of the equity holders whose value has fallen from 499.7 to
651. In this case the credit spread on the bond is -200 basis points! Negative credit spreads are generally not found in practice but have occurred in this case because the debt holders essentially own a down-and-in call option on the value of the firm with zero strike and barrier equal to the face value of the debt.

The unreasonable value of the credit spread in this case is evidence against the realism of the specific default assumption made here. While it is true that a firm can default at any time, the barrier would generally be much lower than the face value of the long-term debt of
800. Note that we could easily use a different and time-dependent default barrier to obtain a more realistic value of the credit spread.

# Other Structural Models

Structural models are very important in finance both for security pricing<sup>3</sup> purposes as well as for more theoretical purposes where the goal is to answer corporate finance questions such as determining the
(optimal) capital structure of the firm. In determining the optimal capital structure of the firm it is important to include other important features such as bankruptcy costs as well as the tax benefits of issuing debt. We may discuss some of these corporate finance questions later in the course. For now we simply note that there have been many refinements and generalizations of the Merton / Black-Cox approach to valuing corporate securities.

# 1.2 The Kmv Approach

A particularly successful implementation of structural credit modeling was developed by $\mathsf{KMV}^4$ and we will now give an overview of their approach. The main difficulty in applying structural models is in identifying the firm value, $V_{t}$. In principle, one can observe $V_{t}$ from the firm's balance sheet data but this process is noisy and very sensitive to assumptions. Instead, KMV inferred $V_{t}$ from the value of the debt – which is indeed taken from the balance sheet – and the market value of the equity, $E_{t}$. Ideally we would infer $V_{t}$ as the implicit solution to

$$
E _ {t} = \mathsf {BS} _ {\text {call}} \left(V _ {t}, T - t, r, \sigma, K\right) \tag {3}
$$ where $T$ is taken to be some weighted average, e.g. the duration, of the time-to-maturity of the firm's debt, and the strike, $K$, was chosen to be some value between the face value of the short-term debt and the face value of the total debt. But what value of $\sigma$ should we use in (3)? KMV tackled this problem by taking a time-series of recent equity-value observations, $E_1, \ldots, E_n$, and inverting (3) to obtain a time-series of firm valuations, $V_1 = g(E_1, \sigma), \ldots, V_n = g(E_n, \sigma)$, where $g(\cdot)$ is the inverse of $\mathsf{BS}_{\mathsf{call}}(\cdot)$. Note that $V_1, \ldots, V_n$ are functions of the unknown parameter, $\sigma$. Assuming $V_t$ follows a $\mathsf{GBM}(\mu, \sigma)$ process under the true distribution, $P$, we can now use maximum likelihood estimation
(MLE) methods to estimate $(\mu, \sigma)$ (and therefore the time series of firm values, $V_1, \ldots, V_n$ ).

Once the model had been fitted, we can compute the distance-to-default, $DD_{t}$, which is the number of yearly standard deviations, i.e. $\sigma$, by which $\log V_t$ exceeds $\log K$. That is

$$
DD _ {t}:= \frac {\log \left(V _ {t} / K\right)}{\sigma}.
$$

One could use the fitted GBM model to compute the so-called expected default frequency
(EDF) which is defined to be the probability of the firm defaulting within one year. Instead, however, KMV used their historical database of all firm default events to estimate the function $f(\cdot)$ for which EDF ≈ $f(DD)$. Note the same $f(\cdot)$ is used for all firms.

# 2 Ratings Models

An alternative approach to modeling default events is via ratings transitions. The main ratings agencies – Moody’s, Standard & Poors and Fitch – produce and publish ratings of financial instruments issued by firms and governments. These ratings are intended to signify the credit-worthiness of these instruments with safer securities having higher ratings. For example, a security rated AAA is believed to be very secure and have almost no risk of default. These ratings are updated periodically as the prospects of the firms (or governments!) change. One way to model these periodic updates is via a Markov chain. For example, we could use historical ratings transitions to estimate the transition matrix, $\mathbf{P}$, which applies to Standard & Poors ratings. An example of such a matrix is given below.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|c|c|}
\hline
 & End State & & & & & & & & \\ \hline
AAA & AA & A & BBB & BB & B & CCC & Default & & \\ \hline
Initial State & AAA & 90.81 & 8.33 & 0.68 & 0.06 & 0.12 & - & - & - \\ \hline
AA & 0.70 & 90.65 & 7.79 & 0.64 & 0.06 & 0.14 & 0.02 & - & \\ \hline
A & 0.09 & 2.27 & 91.05 & 5.52 & 0.74 & 0.26 & 0.01 & 0.06 & \\ \hline
BBB & 0.02 & 0.33 & 5.95 & 85.93 & 5.30 & 1.17 & 1.12 & 0.18 & \\ \hline
BB & 0.03 & 0.14 & 0.67 & 7.73 & 80.53 & 8.84 & 1.00 & 1.06 & \\ \hline
B & - & 0.11 & 0.24 & 0.43 & 6.48 & 83.47 & 4.07 & 5.20 & \\ \hline
CCC & 0.22 & - & 0.22 & 1.30 & 2.38 & 11.24 & 64.85 & 19.79 & \\ \hline
\end{tabular}
\end{document}
```

$\mathbf{P}_{i, j}$ is then the probability that a firm with rating $i$ will be rated $j$ one year or one quarter from now. Note that we have omitted the final row of the matrix since once a firm is in default it is assumed<sup>5</sup> to stay in default.

These ratings transition models were popularized by CreditMetrics and J. P. Morgan in the late 1990's. Their approach to credit risk was to assume that the credit rating of a company was well-modeled by a Markov chain with transition matrix $\mathbf{P}$ as above. It was then easy to compute the probability of default (or indeed losses / gains due to a deterioration / improvement in credit quality) over any period of time. For example, it is easily seen that the matrix $\mathbf{P}^k$ coincides with the transition matrix corresponding to $k$ time periods. More generally, we could use a database of ratings transitions to estimate a continuous-time Markov model so that ratings transitions could occur at any time instant. This of course is more realistic.

In order to compute risk measures such as Value-at-Risk
(VaR) for credit portfolios consisting of the securities of different firms, it is necessary to model the joint ratings transition of many companies. This can be achieved using copula methods. Monte-Carlo methods can then be used to estimate various quantities of interest.

# 3 Credit-Default Swaps

Credit default swaps (CDS's) are a very important class of derivative instrument that was developed in the late 1990's and is now ubiquitous in the financial markets. They allow investors (or speculators) to hedge (or take on) the risk of default of a firm or government.

A CDS is structured like an insurance policy between two parties. Party A agrees to pay party B a fixed amount every period (typically every quarter), in return for protection against the default of a third party, C. These payments constitute the premium leg and the size of the payments are proportional to the notional amount, $N$. When a default occurs, party B must pay party A the difference between $N$ and the market value of the reference bond (with notional $N$ ) issued by party C.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/59ca755bca174cdf089f98a763ad32c73cc26a9724a967a047201e9431e24c79.jpg)

(It is also possible to have physical settlement whereby upon default the protection buyer delivers the reference bond to the protection seller and receives the face value of the bond in return.) This payment constitutes the default leg of the CDS. The three parties (A, B and C) are referred to as the protection buyer, the protection seller and the reference entity, respectively. The CDS has a maturity date, $T$, and all payments cease at $\min(\tau, T)$ where $\tau$ is the default time of the reference entity, party C.

# 3.1 Pricing A Cds In General

We price a CDS by equating the risk-neutral value of the premium and default legs and from this we can determine the fair annual spread that the protection buyer must pay to the protection seller.

# The Premium Leg

Suppose the premium leg of the CDS has $n$ payment times, $t_1, \ldots, t_n = T$ and let us assume that default can only occur at one of these times. Then the fair value, $P_0$, of the premium leg at time $t = 0$ is given by

$$
P _ {0} = s _ {0} ^ {T} N \sum_ {i = 1} ^ {n} Z _ {0} ^ {t _ {i}} \alpha_ {i} P (\tau > t _ {i}) \tag {4}
$$ where $Z_0^{t_i}$ is the discount factor, i.e. the price of a riskless zero-coupon bond with face value 1 that matures at time $t_i$, $N$ is the notional and $\alpha_i = t_i - t_{i-1}$ is the accrual period (in years) between the $(i-1)^{th}$ and $i^{th}$ payments. The annualized CDS spread is $s_0^T$.

# The Default Leg

The fair value, $D_0$, at time $t = 0$ of the default leg satisfies

$$
D _ {0} = (1 - R) N \sum_ {i = 1} ^ {n} Z _ {0} ^ {t _ {i}} P (\tau = t _ {i}) \tag {5}
$$ where $R$ is the so-called recovery rate, i.e. the percentage of the face value of the reference bond that is recovered by a bond-holder upon default of the reference entity. It is common (though not necessarily advisable) to assume that $R$ is a fixed constant, e.g. $40\%$.

# Obtaining The Fair Cds Spread

The spread, $s_0^T$, is obtained by equating $P_0$ with $D_0$ so that the CDS has zero value for both parties at the beginning of the contract. This implies

$$ s _ {0} ^ {T} = \frac {\left(1 - R\right) \sum_ {i = 1} ^ {n} Z _ {0} ^ {t _ {i}} P (\tau = t _ {i})}{\sum_ {i = 1} ^ {n} Z _ {0} ^ {t _ {i}} \alpha_ {i} P (\tau > t _ {i})}. \tag {6}
$$

A plot of $s_0^T$ against $T$ then shows the term-structure of CDS spreads. Just like the term structure of interest rates moves in response to general economic conditions, the term structure of credit spreads will move in response to general economic conditions as well as changes in the general outlook for the reference entity.

# 3.2 Some Specific Models

In order to compute a specific value for $s_0^T$ we must have a (risk-neutral) default model in order to compute the various probabilities in (6). We now consider a few possible approaches before considering more general stochastic intensity models in Section 4.

# Structural Models

We can certainly compute $s_0^T$ using structural models as described in Section
1. Indeed one can use the lattice models there to compute the fair value of $s_0^T$ assuming default is possible at every time period and premia are also paid in every period. This is left as an exercise!

One of the main weaknesses of the structural approach to pricing CDS's is that the default event is said to be predictable. In particular, consider for example the Black-Cox model. Default is impossible in the next time period in that model unless the firm value is very close to the default boundary. And if the firm value is far from the default boundary then default in the next several periods will also be impossible. In contrast, if we let the length of a time period, $\Delta t$, go to zero and the firm value process is extremely close to the default boundary then default will happen for sure<sup>8</sup> very soon. This is what we mean when we say default is predictable. In the real-world, however, default is not predictable. The default of many firms can come as a complete surprise to the market. This is true for firms such as Enron and Parmalat where default was caused by the discovery of huge accounting frauds. Even when the market sees that a firm, e.g. Lehman Brothers, is in financial difficulty so that the CDS spreads of that firm have widened, the actual default event itself is still a surprise and (in a mathematical sense) unpredictable.

Intensity models are commonly used to circumvent this problem. These models do not model the economic value of the firm and hence are often termed reduced-form models. The
(inhomogeneous) Poisson process intensity models that we discuss next are examples of deterministic intensity models.

# Using A Poisson Process To Model Default

We now assume the arrival of default follows a Poisson process with parameter $\lambda$ so that $P(\tau \leq t) = 1 - e^{-\lambda t}$ we can clearly compute $s_0^T$ using (6) but with the term $P(\tau = t_i)$ in the numerator now replaced by

$P(t_{i - 1} < \tau \leq t_i)$. We can also compute the time $t = 0$ value, $V_0$, of a zero-coupon bond with face value $F$ and maturity $T$. If the recovery-rate upon default is a known value, $R$, that is paid at the time of default, $\tau$, then we have

$$
\begin{array}{l} {V _ {0}} = {\mathrm {E} _ {0} ^ {Q} \left[ e ^ {- r T} F 1 _ {\{\tau > T \}} + \int_ {0} ^ {T} e ^ {- rt} RF 1 _ {\{\tau = t \}} \right]} \\ = e ^ {- (r + \lambda) T} F + RF \int_ {0} ^ {T} \lambda e ^ {- (r + \lambda) t} dt \\ = e ^ {- (r + \lambda) T} F + RF \frac {\lambda}{r + \lambda} \left(1 - e ^ {- (r + \lambda) T}\right) \tag {7} \\ \end{array}
$$ where we have used the fact that time to default is exponentially distributed with parameter $\lambda$.

# Using An Inhomogeneous Poisson Process To Model Default

A clear weakness with the Poisson model is that there is just a single parameter, $\lambda$, that we are free to choose. In practice, however, there are typically liquid CDS spreads $s_0^T$, for several values of $T$. Typical values are $T = 1,3,5,7$ and 10 years. Unless the term structure of credit spreads is constant (which is almost never the case) then it will be impossible to choose $\lambda$ so that the model values of $s_0^T$ coincide with the corresponding market values for all values of $T$.

We can resolve this problem using an inhomogeneous Poisson process where the arrival rate, $\lambda_{t}$, is a deterministic function of time, $t$. For such a process, the probability of zero arrivals in the interval $(t, t + \Delta t)$ is then approximately $e^{-\lambda_t\Delta t}$. Using this we obtain the survival probability

$$
P (\tau > t) = e ^ {- \int_ {0} ^ {t} \lambda_ {s} ds}. \tag {8}
$$

We can now use (8) to compute CDS spreads according to (6) but with the term $P(\tau = t_i)$ in the numerator of (6) now replaced by $P(t_{i - 1} < \tau \leq t_i)$. We can also calibrate the inhomogeneous Poisson process model to the CDS spreads observed in the market. In particular, we can assume $\lambda_t$ is piecewise constant on the intervals $(0, T_1],[(T_1, T_2],\dots,(T_{n - 1}, T_n]$ where $T_{1} < T_{2} < \dots < T_{n}$ are the maturities of CDS spreads observed in the market. We can then use (6) to first calibrate $\lambda_{0, T_1}$ and to then calibrate each of $\lambda_{T_1, T_2},\ldots,\lambda_{T_{n - 1}, T_n}$ in turn.

# 4 Stochastic Intensity Models

While the inhomogeneous Poisson model can be calibrated to the CDS spreads seen in the market, it does have a glaring weakness: the credit spreads at all future times are known today at time $t = 0$. This is because the intensity, $\lambda_{t}$, is deterministic. In practice, however, credit spreads are stochastic and so we would like to consider models where the default intensity is stochastic. We will consider here one important and tractable class of stochastic intensity models, namely the doubly-stochastic or Cox process.

# Cox Processes

A Cox process is in fact an entire class of
(point) processes. Before defining such a process we let $N_{t}$ be the number of arrivals up to time $t$. When $N_{t}$ follows a Poisson (inhomogeneous Poisson) process we know $N_{t}$ has a Poisson distribution with parameter $\lambda t\left(\int_0^t\lambda_u du\right)$. A cox process generalizes this by allowing the intensity $\lambda_{u}$ to be stochastic. However, conditional on knowing $\{\lambda_u\}_{0\leq u\leq T}$ then the number of arrivals in the interval $[s, t]$ where $0\leq s < t\leq T$ has an inhomogeneous Poisson distribution with parameter $\int_s^t\lambda_u du$.

Such a process remains very tractable. For example, if $\tau$ is the first arrival of a Cox process then we can compute the survival probability $P(\tau > t)$ as

$$
\begin{array}{l} P (\tau > t) = \mathrm {E} \left[ 1 _ {\{\tau > t \}} \right] \\ = \mathrm {E} \left[ \mathrm {E} \left[ 1 _ {\{\tau > t \}} \mid \left\{\lambda_ {u} \right\} _ {0 \leq u \leq t} \right] \right] \\ = \mathrm {E} \left[ e ^ {- \int_ {0} ^ {t} \lambda_ {u} du} \right] \tag {9} \\ \end{array}
$$ where (9) follows from the fact that the point process is an inhomogeneous Poisson process on $[0, t]$ (and so $\tau$ has an exponential distribution) conditional on $\{\lambda_u\}_{0\leq u\leq t}$.

We can now generalize (7) to obtain the fair value of a defaultable zero-coupon bond with face value $F$ and recovery rate, $R$, that is payable upon default. In particular, under a (risk-neutral) Cox process model, we easily see that the time $t = 0$ value, $V_{0}$, of such a bond satisfies

$$
\begin{array}{l} V _ {0} = \mathrm {E} _ {0} ^ {Q} \left[ e ^ {- r T} F 1 _ {\{\tau > T \}} + \int_ {0} ^ {T} e ^ {- rt} RF 1 _ {\{\tau = t \}} \right] \\ = \mathrm {E} _ {0} ^ {Q} \left[ e ^ {- \int_ {0} ^ {T} (r + \lambda_ {u}) du} F \right] + RF \mathrm {E} _ {0} ^ {Q} \left[ \int_ {0} ^ {T} \lambda_ {t} e ^ {- \int_ {0} ^ {t} (r + \lambda_ {s}) ds} dt \right] \\ = \mathrm {E} _ {0} ^ {Q} \left[ e ^ {- \int_ {0} ^ {T} (r + \lambda_ {u}) du} F \right] + RF \int_ {0} ^ {T} \mathrm {E} _ {0} ^ {Q} \left[ \lambda_ {t} e ^ {- \int_ {0} ^ {t} (r + \lambda_ {s}) ds} \right] dt. \tag {10} \\ \end{array}
$$

A Cox process is only fully specified once we specify dynamics for $\lambda_{t}$. We will consider a lattice model for $\lambda_{t}$ below but we also note that there are continuous-time models, e.g. the CIR model, for which (10) can be computed analytically. (The parameters of these models would then be chosen so that the model CDS spreads, $s_0^T$, match those observed in the market for different maturities, $T$.)

# 4.1 Intensity-Based Lattice Models

We now build a lattice model for the intensity process. Following earlier interest rate models such as Ho-Lee or Black-Derman-Toy, we let $\lambda_{k, s}$ denote the intensity at time $k$ and state $s$. We will assume that

$$
\lambda_ {k, s} = a _ {k} + bs
$$ for some constants $a_{k}$ and $b$. (These constants can be used later to calibrate the model to CDS spreads and possibly other single-name credit derivatives such as CDS options.) At each node in the lattice there are actually 3 possible successor nodes corresponding to an up-move (in $\lambda$ ), a default (which is a "terminal" state) or a down-move. We only need to show the up- and down-moves when we actually draw the lattice. At any node, the (risk-neutral) probability of default, $q_{\mathrm{def}}$, is given by

$$ q _ {\mathrm {def}} = 1 - e ^ {- \lambda \Delta t}
$$ where $\Delta t$ is the length of a period and where $\lambda$ depends on the particular node. In order to include a degree of mean-reversion in the lattice we allow the probabilities of up- and down-moves to depend on $\lambda$. In particular, we will assume

$$ q _ {\mathrm {up}} = \frac {\lambda_ {0}}{\lambda + \lambda_ {0}} - \frac {1}{2} q _ {\mathrm {def}}
$$

$$ q _ {\text {down}} = 1 - \frac {\lambda_ {0}}{\lambda + \lambda_ {0}} - \frac {1}{2} q _ {\text {def}}
$$ where $\lambda_0$ is the intensity level about $^{10}$ which the intensity mean-reverts. Note that $q_{\mathrm{up}} + q_{\mathrm{down}} + q_{\mathrm{def}} = 1$. The intensity lattice (with $b$ chosen equal to0.002) as well as the lattice of $q_{\mathrm{up}}$ (with $\lambda_0$ chosen equal to $2\%$ ) are shown below.

# Pricing A Coupon-Paying Bond

Suppose now that we wish to price a 10-year bond with face value $100\mathrm{m}$, a $6\%$ coupon paid annually and a recovery-rate of $R = 0$. We assume that each period corresponds to 1 year and that the first coupon is paid 1 year from now. The risk-free rate is $5\%$. The valuation lattice for this bond can be seen below.

We construct the bond lattice beginning at time $t = 10$ by noting that the bond value at a node is given by the sum of two quantities:
(i) the survival probability for that node times the face value plus the coupon and
(ii) the default probability for that node times the face value times the recovery rate. Earlier nodes are computed via backwards evaluation and accounting for both the coupon and the possibility of default at each node. In particular, the value at any earlier node comes from two sources:

(i) if there is a default at that node then the value is simply the face value times the recovery rate.
(ii) if there is not a default at that node then the value is the coupon at that node plus the expected discounted value of the bond one period ahead.

We find<sup>11</sup> an initial value of 82.64m.

# Computing The Fair Spread Of A Cds

Once the lattice model has been constructed it is easy to compute the fair spread of a CDS on this bond (assuming payments for the premium leg are paid in every period, i.e. in every year). Buying a CDS essentially changes the recovery rate to $100\%$ at the cost of a reduced coupon. The size of the reduction in the coupon can be interpreted as the CDS spread. Therefore to find the fair CDS spread, $s_0^{10}$, we can set $R = 100\%$ and reduce the coupon $C$ until the fair value equals the original fair value of the bond, $82.64\mathrm{m}$. This leads to a fair CDS spread of $3.39\%$ or 339 basis points.

Figure 1: Intensity Process, $q_{up}$ Process and Bond Values in Reduced Form Model

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|c|c|c|}
\hline
Lambda Lattice & & & & & & & & & 0.043 & \\ \hline
 & & & & & & & & 0.042 & 0.041 & \\ \hline
 & & & & & & 0.041 & 0.04 & 0.039 & & \\ \hline
 & & & & & 0.04 & 0.039 & 0.038 & 0.037 & & \\ \hline
 & & & & 0.039 & 0.038 & 0.036 & 0.035 & 0.034 & 0.033 & \\ \hline
 & & & 0.039 & 0.037 & 0.036 & 0.034 & 0.033 & 0.032 & 0.031 & \\ \hline
 & & 0.037 & 0.037 & 0.035 & 0.034 & 0.032 & 0.031 & 0.03 & 0.029 & \\ \hline
 & 0.034 & 0.035 & 0.035 & 0.033 & 0.032 & 0.03 & 0.029 & 0.028 & 0.027 & \\ \hline t=0 & 0.026 & 0.032 & 0.033 & 0.033 & 0.031 & 0.03 & 0.028 & 0.027 & 0.026 & 0.025 \\ \hline
0.01 & 0.024 & 0.03 & 0.031 & 0.031 & 0.029 & 0.028 & 0.026 & 0.025 & 0.024 & 0.023 \\ \hline t=0 & t=1 & t=2 & t=3 & t=4 & t=5 & t=6 & t=7 & t=8 & t=9 & t=10 \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|c|c|}
\hline q_up Lattice & & & & & & & & & 0.296 \\ \hline
 & & & & & & & 0.308 & 0.308 & \\ \hline
 & & & & & & 0.314 & 0.320 & 0.326 & 0.333 \\ \hline
 & & & & & 0.314 & 0.326 & 0.333 & 0.339 & 0.346 \\ \hline
 & & & & 0.320 & 0.326 & 0.339 & 0.346 & 0.354 & 0.361 \\ \hline
 & & & 0.320 & 0.333 & 0.339 & 0.354 & 0.361 & 0.369 & 0.377 \\ \hline
 & & 0.333 & 0.333 & 0.346 & 0.354 & 0.369 & 0.377 & 0.385 & 0.394 \\ \hline
 & 0.354 & 0.346 & 0.346 & 0.361 & 0.369 & 0.385 & 0.394 & 0.403 & 0.412 \\ \hline
0.422 & 0.369 & 0.361 & 0.361 & 0.377 & 0.385 & 0.403 & 0.412 & 0.422 & 0.432 \\ \hline
0.662 & 0.385 & 0.377 & 0.377 & 0.394 & 0.403 & 0.422 & 0.432 & 0.443 & 0.454 \\ \hline t = 0 & t = 1 & t = 2 & t = 3 & t = 4 & t = 5 & t = 6 & t = 7 & t = 8 & t = 9 \\ \hline
\end{tabular}
\end{document}
```

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|c|c|c|}
\hline
Bond Lattice & & & & & & & & & 101.54 & \\ \hline
 & & & & & & & & 98.49 & 101.74 & \\ \hline
 & & & & & & & 95.92 & 98.88 & 101.95 & \\ \hline
 & & & & & & 93.76 & 96.46 & 99.26 & 102.15 & \\ \hline
 & & & & & 91.87 & 94.44 & 97.00 & 99.64 & 102.35 & \\ \hline
 & & & & 90.31 & 92.67 & 95.12 & 97.54 & 100.03 & 102.56 & \\ \hline
 & & & 88.94 & 91.21 & 93.47 & 95.80 & 98.09 & 100.41 & 102.76 & \\ \hline
 & & 87.91 & 89.94 & 92.13 & 94.28 & 96.49 & 98.64 & 100.80 & 102.97 & \\ \hline
 & 87.27 & 89.00 & 90.96 & 93.05 & 95.10 & 97.18 & 99.19 & 101.19 & 103.18 & \\ \hline
82.64 & 87.34 & 88.44 & 90.11 & 91.98 & 93.98 & 95.92 & 97.88 & 99.74 & 103.38 & \\ \hline
88.59 & 89.62 & 91.22 & 93.01 & 94.92 & 96.75 & 98.58 & 100.29 & 103.59 & & \\ \hline t = 0 & t = 1 & t = 2 & t = 3 & t = 4 & t = 5 & t = 6 & t = 7 & t = 8 & t = 9 & t = 10 \\ \hline
\end{tabular}
\end{document}
```

# Introduction To Real Options

We introduce real options and discuss some of the issues and solution methods that arise when tackling these problems. Our main example is the Simplico gold mine example from Luenberger. This contains many of the features typically found in real options applications – a non-financial setting, some financial uncertainty and an element of control. An important feature that is not contained in the Simplico example is non-financial uncertainty but other examples will include this. Real options analysis is an important aspect of capital budgeting, one of the central problems of corporate finance, where the goal is to figure out the fair risk-adjusted value of investment opportunities and to then decide which opportunities – if any – should be pursued.

# 1 Introduction To Real Options

The term "real options" is often used to describe investment situations involving non-financial, i.e. real, assets together with some degree of optionality. For example, an industrialist who owns a factory with excess capacity has an option to increase production that she may exercise at any time. This option might be of particular value when demand for the factory's output increases. The owner of an oilfield has an option to drill for oil that he may exercise at any time. In fact since he can drill for oil in each time period he actually holds an entire series of options. On the other hand if he only holds a lease on the oilfield that expires on a specified date, then he holds only a finite number of drilling options. As a final example, consider a company that is considering investing in a new technology. If we ignore the optionality in this investment, then it may have a negative NPV so that it does not appear to be worth pursuing. However, it may be the case that investing in this new technology affords the company the option to develop more advanced and profitable technology at a later date. As a result, the investment might ultimately be a positive NPV value project that is indeed worth pursuing.

In this section we describe some of the main ideas and issues that arise in the context of real options problems. It is perhaps unfortunate that the term "real options" has become such a buzzword in recent years, as this has helped fuel the exaggerated claims that are often made by 'practitioners' on its behalf. For example, proponents often claim<sup>1</sup> that the NPV investment criterion is flawed as it does not take optionality into account. This claim makes little sense, however, as there is no reason why a good NPV analysis would not account for optionality. The above criticisms notwithstanding, it is worth stating that real options problems arise in many important contexts, and that economics and financial engineering provide useful guidance towards solving these problems. The principal characteristics shared by real options problems are:

1. They involve non-financial assets, e.g. factory capacity, oil leases, commodities, technology from R&D etc. It is often the case, however, that financial variables such as foreign exchange rates, commodity prices, market indices etc. are also (sometimes implicitly) present in the problem formulation.
2. The natural framework for these problems is one of incomplete markets as the stochastic processes driving the non-financial variables will not be spanned² by the financial assets. For example, it is not possible to construct a self-financing trading strategy in the financial markets that replicates a payoff whose value depends on whether or not there is oil in a particular oilfield, or whether or not a particular manufacturing product will be popular with consumers. Because of the market incompleteness, we do not have a unique

EMM that we can use to evaluate the investment opportunities. We therefore use
(financial) economics theory to guide us in choosing a good EMM (or indeed a good set of EMM's) that we should work with. It is worth remarking again that choosing an EMM is equivalent to choosing a
(stochastic) discount factor. We can therefore see that the problem of choosing an EMM may be formulated in the traditional economics and corporate finance context as a problem of finding the correct way to discount cash-flows.

3. There are usually options available to the decision-maker. More generally, real options problems are usually control problems where the decision-maker can
(partially) control some of the quantities under consideration. Moreover, it is often inconvenient or unnecessary to explicitly identify all of the 'options' that are available. For example, in the Simplico gold mine example below, the owner of the lease has an option each year to mine for gold but in valuing the lease we don't explicitly consider these options and evaluate them separately.

Our first example of a real options problem concerns valuing a lease on a gold mine and an option to increase the rate at which gold can be extracted.

Example 1 (Luenberger's Simplico Gold Mine)

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|c|c|c|c|}
\hline
Gold Price Lattice & & & & & & & & & & & \\ \hline
 & & & & & & & & & & & 2476.7 \\ \hline
 & & & & & & & & & 1719.9 & 1547.9 & 1857.5 \\ \hline
 & & & & & & & 1433.3 & 1289.9 & 1161.0 & 1044.9 & 1393.1 \\ \hline
 & & & & & & 1194.4 & 1075.0 & 967.5 & 870.7 & 783.6 & \\ \hline
 & & & & & 995.3 & 895.8 & 806.2 & 725.6 & 653.0 & 587.7 & \\ \hline
 & & & & 829.4 & 746.5 & 671.8 & 604.7 & 544.2 & 489.8 & 440.8 & \\ \hline
 & & & 691.2 & 622.1 & 559.9 & 503.9 & 453.5 & 408.1 & 367.3 & 330.6 & \\ \hline
 & & 576.0 & 518.4 & 466.6 & 419.9 & 377.9 & 340.1 & 306.1 & 275.5 & 247.9 & \\ \hline
 & 480.0 & 432.0 & 388.8 & 349.9 & 314.9 & 283.4 & 255.1 & 229.6 & 206.6 & 186.0 & \\ \hline
400.0 & 360.0 & 324.0 & 291.6 & 262.4 & 236.2 & 212.6 & 191.3 & 172.2 & 155.0 & 139.5 & \\ \hline
Date 0 & 1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 & 9 & 10 & \\ \hline
\end{tabular}
\end{document}
```

Gold can be extracted from the simplicio gold mine at a rate of up to 10,000 ounces per year at a cost of C = $200 per ounce. The current market price of gold is $400 and it fluctuates randomly in such a way that it increases each year by a factor of 1.2 with probability0.75 or it decreases by a factor of0.9 with probability0.25, i.e. gold price fluctuations are described by a binomial model with each period corresponding to 1 year. Interest rates are flat at r = 10% per year. We want to compute the price of a lease on the gold mine that expires after 10 years. It is assumed that any gold that is extracted in a given year is sold at the end of the year at the price that prevailed at the beginning of the year. The gold price lattice is shown above.

Since gold is a traded commodity with liquid markets we can obtain a unique risk-neutral price for any derivative security dependent upon its price process. The risk-neutral probabilities are found to be $q = 2/3$ and $1 - q = 1/3$. The price of the lease is then computed by working backwards in the lattice below. Because the lease expires worthless the node values at $t = 10$ are all zero. The value 16.9 on the uppermost node at $t = 9$, for example, is obtained by discounting the profits earned at $t = 10$ back to the beginning of the year. We therefore obtain $16.94 = 10,000(2063.9 - 200)/1.1$. The value at a node in any earlier year is obtained by discounting the value of the lease and the profit obtained at the end of the year back to the beginning of the year and adding the two quantities together. For example, in year 6 the central node has a value of 12 million and this is obtained as

$$
1 2,000,000 = \frac {1 0,000 (503.9 - 200)}{1.1} + \frac {q \times 1 1,500,000 + (1 - q) \times 7,400,000}{1.1}.
$$

Note that in any year when the price of gold is less than $200, it is optimal to extract no gold and so no profits are recorded for that year. This simply reflects the fact that every year the owner of the lease has an option to extract gold or not, and will do so only when it is profitable to do so. Backwards evaluation therefore takes the form

$$
V _ {t}
(s) = \frac {1 0 k \times \max \left\{0, s - C \right\} + (q V _ {t + 1}
(us) + (1 - q) V _ {t + 1}
(ds) )}{1 + r}
$$ where $V_{t}(s)$ is the value of the lease at time $t$ when the gold price is $s$. We find the value of the lease at $t = 0$ is 24.1 million.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|c|c|c|}
\hline
Lease Value (in millions) & & & & & & & & & & \\ \hline
 & & & & & & & & & & 0.0 \\ \hline
 & & & & & & & & 27.8 & 16.9 & 0.0 \\ \hline
 & & & & & & 34.1 & 20.0 & 8.7 & 0.0 & \\ \hline
 & & & & & 37.1 & 24.3 & 14.1 & 6.1 & 0.0 & \\ \hline
 & & & & 36.5 & 26.2 & 17.0 & 9.7 & 4.1 & 0.0 & \\ \hline
 & & & 34.2 & 25.2 & 17.9 & 12.0 & 7.4 & 3.9 & 2.6 & 0.0 \\ \hline
 & & 31.2 & 23.3 & 16.7 & 11.5 & 7.4 & 4.3 & 2.1 & 0.7 & 0.0 \\ \hline
 & 27.8 & 20.7 & 15.0 & 10.4 & 6.7 & 4.0 & 2.0 & 0.7 & 0.1 & 0.0 \\ \hline
24.1 & 17.9 & 12.9 & 8.8 & 5.6 & 3.2 & 1.4 & 0.4 & 0.0 & 0.0 & 0.0 \\ \hline
Date & 0 & 1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 & 9 \\ \hline
\end{tabular}
\end{document}
```

Suppose now that it is possible to enhance the extraction rate to 12,500 ounces per year by purchasing new equipment that costs $4 million. Once the new equipment is in place then it remains in place for all future years. Moreover the extraction cost would also increase to $240 per year with the enhancement in place and at the end of the lease the new equipment becomes the property of the original owner of the mine. The owner of the lease therefore has an option to install the new equipment at any time and we wish to determine the value of this option. To do this, we first compute the value of the lease assuming that the new equipment is in place at t =
0. This is done in exactly the same manner as before and the values at each node and period are given in the following lattice:

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|c|c|c|}
\hline
Lease Value Assuming Enhancement in Place (in millions) & & & & & & & & & & \\ \hline
 & & & & & & & & & & 0.0 \\ \hline
 & & & & & & & & 33.9 & 20.7 & 0.0 \\ \hline
 & & & & & & 41.4 & 24.1 & 10.5 & 0.0 & \\ \hline
 & & & & & 44.8 & 29.2 & 16.8 & 7.2 & 0.0 & \\ \hline
 & & & & 45.2 & 31.2 & 20.0 & 11.3 & 4.7 & 0.0 & \\ \hline
 & & & 43.5 & 31.0 & 21.0 & 13.2 & 7.2 & 2.8 & 0.0 & \\ \hline
 & & 36.4 & 26.6 & 18.7 & 12.5 & 7.7 & 4.1 & 1.4 & 0.0 & \\ \hline
 & 31.8 & 23.3 & 16.3 & 10.8 & 6.5 & 3.4 & 1.3 & 0.2 & 0.0 & \\ \hline
27.0 & 19.5 & 13.5 & 8.6 & 4.9 & 2.3 & 0.8 & 0.1 & 0.0 & 0.0 & \\ \hline
Date & 0 & 1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 & 9 \\ \hline
\end{tabular}
\end{document}
```

We see that the value of the lease at t = 0 assuming that the new equipment is in place (the $4 million cost of the new equipment has not been subtracted) is $27 million. We let $V_{t}$ eq(s) denote the value of the lease at time t when the gold price is s and the new equipment is in place.

We now value the option to install the new equipment as follows. We construct yet another lattice (shown below) that, starting at $t = 10$, assumes the new equipment is not in place, i.e. we begin by assuming the original equipment and parameters apply. We work backwards in the lattice, computing the value of the lease at each node as before but now with one added complication: after computing the value of the lease at a node we compare this value, $A$ say, to the value, $B$ say, at the corresponding node in the lattice where the enhancement was assumed to be in place. If $B - $4$ million $\geq A$ then it is optimal to install the equipment at this node, if it has not already been installed. We also place $\max(B - $ 4m, A) $ at the node in our new lattice. More specifically, let us use $U_{t}(s)$ to denote the price of the lease at time $t$ when the gold price is $s$ and with the option to enhance in place. Then we can solve for $U_{t}(s)$ as follows:

$$
U _ {t}
(s) = \max \left\{V _ {t} ^ {\mathsf {eq}}
(s) - 4 \mathsf {m}, \frac {1 0 \mathsf {k} \times \max \left\{0, s - C \right\} + (q U _ {t + 1}
(us) + (1 - q) U _ {t + 1}
(ds) )}{1 + r} \right\}. \tag {1}
$$

We continue working backwards using (1), determining at each node whether or not the new equipment should be installed if it hasn't been installed already. The new lattice of $U_{t}(s)$ values is displayed below.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|c|c|c|}
\hline
Lease Value with Option for Enhancement (in millions) & & & & & & & & & & \\ \hline
 & & & & & & & & & & 0.0 \\ \hline
 & & & & & & & & & 16.9 & 0.0 \\ \hline
 & & & & & & & & 29.9* & 12.3 & 0.0 \\ \hline
 & & & & & & & 37.4* & 20.1* & 8.7 & 0.0 \\ \hline
 & & & & & & 40.8* & 25.2* & 14.1 & 6.1 & 0.0 \\ \hline
 & & & & & 41.2* & 27.2* & 17.0 & 9.7 & 4.1 & 0.0 \\ \hline
 & & & & 39.5* & 27.0* & 18.1 & 11.5 & 6.4 & 2.6 & 0.0 \\ \hline
 & & & 36.4* & 25.6 & 17.9 & 12.0 & 7.4 & 3.9 & 1.5 & 0.0 \\ \hline
 & & 32.6 & 23.5 & 16.7 & 11.5 & 7.4 & 4.3 & 2.1 & 0.7 & 0.0 \\ \hline
 & 28.6 & 20.9 & 15.0 & 10.4 & 6.7 & 4.0 & 2.0 & 0.7 & 0.1 & 0.0 \\ \hline
24.6 & 18.0 & 12.9 & 8.8 & 5.6 & 3.2 & 1.4 & 0.4 & 0.0 & 0.0 & 0.0 \\ \hline
Date & 0 & 1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 & 9 \\ \hline
\end{tabular}
\end{document}
```

We see that the value of the lease with the option is $24.6 million, slightly greater than the value of the lease without the option. Entries in the lattice marked with a ‘*’ denote nodes where it is optimal to install the new equipment. (Note that the values at these nodes are the same as the values at the corresponding nodes in the preceding lattice less $4 million.)

Example 1 is an interesting real options problem as there is no non-financial noise in the problem, implying in particular that the market is complete. As mentioned earlier, most real options problems have non-financial noise and therefore require an incomplete markets treatment. Example 1 could easily be generalized in this direction by introducing uncertainty regarding the amount of gold that can be extracted or by introducing stochastic storage or extraction costs for the gold. Note that for these generalizations the financial component of the problem, i.e. the binomial lattice for gold prices, would still be complete and so we would still have unique risk-neutral probabilities for the up- and down-moves in the price of gold. We would, however, need to use other economic considerations to help us determine<sup>3</sup> the risk-neutral dynamics of storage and extraction costs etc. When there is non-financial noise and the problem is therefore incomplete, it is often a good modelling technique to simply assume the financial market in your model is complete so that any random variable, i.e. contingent claim, that depends only on financial noise can indeed be replicated by a self-financing trading strategy in the financial assets.

Exercise 1 Compute the value of the enhancement option of Example 1 when the enhancement costs $5 million but raises the mine capability by 40% to 14,000 ounces at an operating cost of $240 per ounce. Moreover, due to technological considerations, you should assume that the enhancement (should it be required) will not be available until the beginning of the 5<sup>th</sup> year.

# 2 Pricing Methods For Real Options Problems

In Example 1 the market was complete and so there was only one valuation technique available, i.e. martingale pricing using the unique equivalent martingale measure. When markets are incomplete there are many pricing methods available. They include:

1. Zero-Level Pricing: Zero-level pricing is based on utility maximization for portfolio optimization problems. It is that security price that leaves the decision-maker indifferent between purchasing and not purchasing an infinitesimal amount of the security.
2. Utility Indifference Pricing: If the decision-maker is risk-averse and has a utility function then the problem may be recast as a portfolio optimization problem where the price of the real option is taken to be that price that leaves the agent indifferent between purchasing and not purchasing the entire project (while simultaneously allowing dynamic trading in the financial assets). This method might be suitable for a risk averse decision maker considering a project that could only be undertaken at the zero-level or in its entirety.
3. Super-Replication and Quadratic Hedging: These pricing methods are based on hedging cash-flows.
4. 'Good-Deal Bounds': This is a heuristic method based on the observation that expected returns on any security should be neither too 'high' nor too 'low'. The method simultaneously considers many plausible EMMs and constructs an interval of plausible prices for the real option.
5. Projection Methods: These methods work by projecting the real option's cash flows onto the space spanned by the financial assets. An EMM that prices this projection correctly is then used with the remaining part of the cash-flow priced using the true probability distribution and discounting with the cash account.

In general, these methods may be interpreted as selecting a particular EMM for pricing the cash-flow in question, and so they are consistent with martingale pricing theory. The 'good-deal bounds' method might also be interpreted as a robust pricing method as it
(effectively) considers many plausible EMMs and constructs an interval of plausible prices.

# Zero-Level Pricing With Private Uncertainty

We say that a source of uncertainty is private if it is independent of any uncertainty driving the financial markets and is specific to the problem at hand. For example, the success of an R&D project, the quantity of oil in an oilfield, the reliability of a vital piece of manufacturing equipment or the successful launch of a new product are all possible sources of private uncertainty. More generally, while the incidence of natural disasters or political upheavals would not constitute sources of private uncertainty, it would be very difficult<sup>4</sup>, if not impossible, to adequately hedge against these events using the financial markets. As a result, they could often be treated as if they did constitute private sources of uncertainty.

Economic considerations suggest that if we want to use zero-level pricing to compute real option prices when there is only private uncertainty involved, then we should use the true probability distribution to do so and discount by the risk-free interest rate. A CAPM-based argument can provide some intuition for this observation. In particular, the CAPM states

$$
\operatorname {E} \left[ r _ {o} \right] = r _ {f} + \beta_ {o} \left(\operatorname {E} \left[ r _ {m} \right] - r _ {f}\right)
$$ where $\beta_{o}:= \mathrm{Cov}(r_{m}, r_{o}) / \mathrm{Var}(r_{m})$ and $r_{m}$ is the return on the market portfolio. Therefore, if $r_{o}$ is the return on an investment that is only exposed to private uncertainty so that $\mathrm{Cov}(r_{m}, r_{o}) = 0$, the CAPM implies $\mathrm{E}[r_{o}] = r_{f}$. This implies the value, $P_{0}$, of the investment in a CAPM world is given by

$$
P _ {0} = \frac {\operatorname {E} [ P _ {1} ]}{1 + r _ {f}}
$$ where $P_{1}$ is the terminal payoff of the investment. This and other similar arguments have been used to motivate the practice of using risk-neutral probabilities to price the 'financial uncertainty' of an investment and the true probabilities to price the 'non-financial uncertainty' of the investment. Note that this practice is consistent with martingale pricing as the use of risk-neutral probabilities ensures that deflated
(financial) security prices are martingales. In particular, this methodology ensures that there are no arbitrage opportunities available if trading in the financial markets is also permitted as part of the problem formulation.

This practice (of using the true probability distribution to price private uncertainty) is much easier to justify if we can disentangle the financial uncertainty from the non-financial uncertainty. For example, consider a one period model where at t = 1 you will have X barrels of oil that you can then sell in the spot oil markets for $P per barrel. You therefore will earn XP at t =
1. If X is a random variable that is only revealed to you at t = 1, then it is impossible to fully hedge your oil exposure by trading at t = 0 as you do not know then how much oil you will have at t =
2. On the other hand if X is revealed to you at t = 0 then you can fully hedge at t = 0 your resulting oil exposure using the 1-period oil futures. Only non-financial uncertainty (which is revealed at t = 0) then remains and so the situation is similar to that in our CAPM argument above. The reasons for using the true probabilities to price the non-financial uncertainty (X in our example) is therefore more persuasive here. In the former case where X is not revealed until t = 1, the financial uncertainty cannot be perfectly hedged and the economic argument for using the true probabilities to price the non-financial uncertainty is not as powerful. Still it can be justified by considering, for example, a first order Taylor expansion of the payoff, XP, about the means, X̄ and P̄, to obtain

$$
\begin{array}{l} XP \approx \bar {X} \bar {P} + \bar {P} (X - \bar {X}) + \bar {X} (P - \bar {P}) \\ = \bar {P} X + \bar {X} P - \bar {X} \bar {P}. \tag {2} \\ \end{array}
$$

Note that the payoff approximation (2) does allow for the financial and non-financial uncertainties to be disentangled. The above CAPM argument can now be used to price the non-financial uncertainty, $\bar{P} X$, using the true probability distribution.

# 2.1 Real Options In Practice

In practice, real options problems are often too complex to be solved exactly, either analytically or numerically. There are many reasons for this:

1. High dimensionality due to the presence of many state variables, control variables and / or sources of uncertainty.
2. Complexity of real world constraints. For example, in Example 1 we assumed that the mine operator could choose not to extract gold when prices were unfavorable. However, political considerations might not allow such action to be taken as it would presumably result in the unemployment of most people associated with operating the mine.
3. Data uncertainty. Every model is limited by the quality of the data and in particular, the quality of parameter estimates. Real options problems are no different in this regard.
4. Game theoretic considerations. Sometimes it might be necessary to take the actions of competitors into account but this only complicates the analysis further.

Because of these complications, it often makes more sense to seek good approximate solutions to real options problems. There is a tradeoff between model complexity and tractability and finding the right balance between the two is more of an art than a science. While there has not been a lot of
(academic) work done in this area, techniques such as simulation and approximate dynamic programming methods should prove useful. Moreover, if the solution technique is utility independent, e.g zero-level pricing, then economic considerations should be used to guide the choice of the EMM or equivalently, the stochastic discount factor. More generally, by considering several 'plausible' EMMs it should be possible to construct an interval of plausible valuations. Such an interval might be more than adequate in many contexts.

# 2.2 The Incorrectness Of Using Deterministic Discount Factors

In practice, however, corporations often
(incorrectly) use a single deterministic discount factor to value cash-flows. While the corporate finance literature has long recognized that this is not appropriate, whether or not the resulting valuations are significantly skewed will depend on the problem in question.

In order to
(re) emphasize the necessity of using a stochastic discount factor, consider the Black-Scholes framework where the stock-price follows a geometric Brownian motion and there is a constant interest rate, $r$. In this model the stock price at time $T$ is given by

$$
S _ {T} = S _ {0} e ^ {\left(\mu - \sigma^ {2} / 2\right) T + \sigma B _ {T}}
$$ where $B_{T}$ is the time $T$ value of a standard Brownian motion. Note that the only deterministic discount factor that correctly prices the stock is $d = \exp(-\mu T)$. However using this discount factor to price options on the stock is incorrect and will produce arbitrage opportunities! In fact, the only way to price all securities depending on the underlying Brownian motion correctly is to use a stochastic discount factor or equivalently, an equivalent martingale measure. You can easily check that the same comments apply to pricing in the discrete-time models we have considered in this course. That said, if a particular payoff is very similar to $S_{T}$ then using the deterministic discount factor, $d = \exp(-\mu T)$, to price the payoff should lead to a reasonably accurate result.

# 3 Some Further Examples

We finish with a couple of further examples on pricing real options. The first example applies zero-level pricing to compute the value of a foreign venture whereas the second example requires a dynamic programming formulation as an optimal control strategy is required to figure out the value of the investment.

# Example 2 (Valuing A Foreign Venture)

A particular investment gives you the rights to the monthly profits of a foreign venture for a fixed period of time. The first payment will be made one month from now and the final payment will be in 5 months time after which the investment will be worthless. The monthly payments are denominated in Euro, and are IID random variables with expectation $\mu$. They are also independent of returns in both the domestic and foreign financial markets. You would like to determine the value of the investment.

Let us first assume that the domestic, i.e. US, interest rate is $5\%$ per annum, compounded monthly. This implies a gross rate of 1.0042 per month. Similarly, the annual interest rate in the Euro zone, i.e. the foreign interest rate, is assumed to be $10\%$, again compounded monthly. This implies a per month gross interest rate of 1.0083. We can construct a binomial lattice for the $/Euro$ exchange rate process if we view the foreign currency, i.e. the Euro, as an asset that pays dividends, i.e. interest, each period. Martingale pricing in a binomial model for the exchange rate with up- and down-factors, $u$ and $d$ respectively, implies that

$$
X _ {i} = \mathrm {E} _ {i} ^ {Q} \left[ \frac {X _ {i + 1} + r _ {f} X _ {i}}{1 + r _ {d}} \right] \tag {3}
$$ where $X_{i}$ is the $\mathbb{S} / \mathbb{E}$ euro exchange rate at time $i$, $r_{d}$ and $r_{f}$ are the domestic and foreign per-period interest rates, respectively, and the risk-neutral probability, $q$, of an up-move satisfies

$$ q = \frac {1 + r _ {d} - d - r _ {f}}{u - d}. \tag {4}
$$

The binomial lattice is given below with $X_0 = 1.20$, $u = 1.05$ and $d = 1 / u$.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|}
\hline
Dollar/Euro Exchange Rate & & & & & \\ \hline
 & & & & 1.53 & \\ \hline
 & & & 1.46 & 1.39 & \\ \hline
 & & 1.39 & 1.32 & 1.26 & \\ \hline
 & 1.26 & 1.26 & 1.20 & 1.14 & \\ \hline t=0 & t=1 & t=2 & t=3 & t=4 & t=5 \\ \hline
\end{tabular}
\end{document}
```

Valuing the investment using zero-level pricing (and therefore using the true probability measure, $P$, for the non-financial uncertainty) is now straightforward. At each time- $t$ node in the lattice we assume there is a cash-flow of $\mu X_{t}$. These cash-flows are valued as usual by backwards evaluation using the risk-neutral probabilities computed in (4). Can you see an easy way (that does not require backwards evaluation) to value the cash-flows?

Exercise 2 If the monthly cash-flows and the foreign financial market were dependent, how would you go about valuing the security? What assumptions would you need to make?

Example 19.5 of Luenberger $(2^{nd}$ ed.) provides another more complex example of zero-level pricing in the context of valuing the so-called rapido oil well. In that example the market uncertainty is the price of oil and risk-neutral probabilities are used to "value" that uncertainty. In contrast, true probabilities are used to "value" the private uncertainty which relates to the initial flow of oil and how quickly that flow reduces over time.

# Example 3 (Operating A Gas-Fired Power Plant)

A power company is considering renting a two-regime gas-fired power plant over the
(discrete) time $[0, T]$. In order to figure out whether or not this is worthwhile, the company must figure out the optimal operating policy for the plant. At any time $t$ the company can operate the plant in "shut-down" mode, low-capacity mode or high-capacity mode. The relevant details for each of these three operating states are:

- Shut-down mode: plant rent $K$
- Low capacity mode: output $Q$, gas consumption $\underline{H}$, plant rent $\underline{K}$
- High capacity mode: output $\overline{Q}$, gas consumption $\overline{H}$, plant rent $\overline{K}$

If the plant is currently in operation then shutting the plant down will incur a ramp-down cost of $C_d$. Similarly, if the plan is currently shut down, then moving it into a low/ high production mode will incur a ramp-up cost of $C_u$. We use $s_t \in \{0 \equiv \text{plant shut-down}, 1 \equiv \text{plant operating}\}$ to denote the time $t$ state of the plant. In each period there are two possible actions $a \in \{0 \equiv \text{operate in shut-down mode}, 1 \equiv \text{operate in production mode}\}$.

We let $V_{t}(s, P, G)$ denote the optimal profit of the plant over the horizon $[t, T]$ when the current state is $s$, the current price of electricity is $P$, and the current price of gas is $G$. We also have the following additional notation:

- $c(s, a)$: cost of taking action $a$ when the plant is in state $s$
- $u(s, a)$: new state of the plant when action $a$ is taken in state $s$

Specific values are:

$$ c (0,0) = K \quad u (0,0) = 0
$$

$$ c (0,1) = C _ {u} + K \quad u (0,1) = 1
$$

$$ c (1,0) = C _ {d} + K \quad u (1,0) = 0
$$

$$ c (1,1) = \min \left\{\overline {{K}} + G _ {t} \overline {{H}} - P _ {t} \overline {{Q}}, \underline {{K}} + G _ {t} \underline {{H}} - P _ {t} \underline {{Q}} \right\} u (1,1) = 1
$$

Note that when the plant is in production mode one has the choice to run it at the low or high capacity mode. We can now write the standard dynamic programming iteration:

$$
V _ {t} \left(s _ {t}, P _ {t}, G _ {t}\right) = \max _ {a \in \{0,1 \}} \left\{- c \left(s _ {t}, a\right) + e ^ {- r \Delta t} \mathrm {E} _ {t} ^ {Q} \left[ V _ {t + 1} \left(u \left(s _ {t}, a\right), P _ {t + 1}, G _ {t + 1}\right) \right] \right\} \tag {5}
$$ where $\mathrm{E}_t^Q [\cdot ]$ denotes the usual risk-neutral expectation conditional on all known-information at time $t$, $r$ is the continuously compounded risk-free rate and $\Delta t$ is the length of a period. There are two sources of uncertainty here: the price dynamics of electricity and gas. It is straightforward to construct lattices for these prices and solve (5) numerically beginning at time $T$ and working backwards.

Exercise 3 How should we choose the appropriate EMM, $Q$, to use in (5)?

## Other Topics In Quantitative Finance

These notes introduce other important topics in finance. In particular, we will briefly discuss important aspects of
(i) corporate finance
(ii) securitization
(iii) risk management and
(iv) algorithmic trading.

Corporate finance is an enormous sub-field of finance with many interesting associated problems including capital budgeting, determining the optimal capital structure of the firm and determining the optimal dividend policy of the firm. We will briefly discuss the famous Modigliani-Miller
(MM) theorems which address the latter two questions in an idealized economy. We will also discuss the very important incentive / principal-agent problems that arise throughout corporate finance. Our introduction to securitization will be via a simple one-period collateralized-debt-obligation
(CDO) . We will also briefly discuss mortgage-backed securities
(MBS) . Risk management is a key task in any financial company and we will discuss some of the main approaches to assessing risk. These approaches include the calculation of risk measures such as VaR and CVaR as well as scenario analysis. Finally we will end with an overview of algorithmic trading, an aspect of finance that has become increasingly important in recent years. Algorithmic trading is of interest because it relaxes the assumptions that economic agents are price-takers and assumes instead that their trading moves security prices adversely. Accounting for these adverse price moves is vital for both high-frequency trading as well as lower-frequency trading where large trades need to be executed in a relatively short period of time.

# 1 An Introduction To Corporate Finance

We begin this section with some examples of incentive problems that can arise between the equity-holders and debt-holders of a firm. These problems are very important in practice.

# 1.1 Incentive Problems In Corporate Finance

Recall Merton's structural lattice model of default that we saw earlier when we discussed credit modeling. Our example there assumes the following parameters: $V_0 = 1,000$, $T = 7$ years, $\mu = 15\%$, $\sigma = 25\%$, $r = 5\%$ and the # of time periods $= 7$. The face value of the debt was 800 and the coupon on the debt was zero. The lattice of firm values is displayed below with asterisk next to those values at time $T$ corresponding to firm default.

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
Firm Price Lattice & & & & & & & \\ \hline
 & & & & & & & 6940.6 \\ \hline
 & & & & & & 5262.6 & 3990.2 \\ \hline
 & & & & & 3990.2 & 3025.5 & 2294.0 \\ \hline
 & & & & 3025.5 & 2294.0 & 1739.4 & 1318.9 \\ \hline
 & & & 2294.0 & 1739.4 & 1318.9 & 1000.0 & 758.2* \\ \hline
 & & 1739.4 & 1318.9 & 1000.0 & 758.2 & 574.9 & 435.9* \\ \hline
 & 1318.9 & 1000.0 & 758.2 & 574.9 & 435.9 & 330.5 & 250.6* \\ \hline
1000.0 & 758.2 & 574.9 & 435.9 & 330.5 & 250.6 & 190.0 & 144.1* \\ \hline t = 0 & t = 1 & t = 2 & t = 3 & t = 4 & t = 5 & t = 6 & t = 7 \\ \hline
\end{tabular}
\end{document}
```

We used this model to price the equity and debt of the firm and obtained values of 499.7 and 500.3, respectively. The lattices are displayed below.

Equity Lattice

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
 & & & & & & & 6140.6 \\ \hline
 & & & & & 3266.4 & 4501.6 & 3190.2 \\ \hline
 & & & & 2336.9 & 1570.2 & 2264.5 & 1494.0 \\ \hline
 & & & 1640.8 & 1054.7 & 603.6 & 258.0 & 518.9 \\ \hline
 & & 1127.8 & 687.1 & 358.4 & 128.3 & 0.0 & 0.0 \\ \hline
 & 758.6 & 435.7 & 207.1 & 63.8 & 0.0 & 0.0 & 0.0 \\ \hline
499.7 & 269.9 & 117.4 & 31.7 & 0.0 & 0.0 & 0.0 & 0.0 \\ \hline t = 0 & t = 1 & t = 2 & t = 3 & t = 4 & t = 5 & t = 6 & t = 7 \\ \hline
\end{tabular}
\end{document}
```

Debt Lattice

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
 & & & & & & & 800.0 \\ \hline
 & & & & & 761.0 & 800.0 & \\ \hline
 & & & & 723.9 & 761.0 & 800.0 & \\ \hline
 & & & 688.6 & 723.9 & 761.0 & 800.0 & \\ \hline
 & & 653.2 & 684.7 & 715.3 & 742.0 & 758.2* & \\ \hline
 & 560.3 & 611.6 & 631.7 & 641.6 & 630.0 & 574.9 & 435.9* \\ \hline
 & 564.3 & 551.1 & 511.1 & 435.9 & 330.5 & 250.6* & \\ \hline
500.3 & 488.3 & 457.5 & 404.2 & 330.5 & 250.6 & 190.0 & 144.1* \\ \hline t = 0 & t = 1 & t = 2 & t = 3 & t = 4 & t = 5 & t = 6 & t = 7 \\ \hline
\end{tabular}
\end{document}
```

# Turning Down Good Investments

Suppose now the firm is offered a great(!) investment opportunity. The fair value of the investment is $X = 100$ but the cost to the firm will only be 90 which is substantially less than $X$. The firm has no cash currently available, however, and would have to raise the cash, i.e. 90 dollars, from the current equity holders.

Question: Will the equity holders invest?

Answer: This is clearly an excellent deal since $X$ is the fair risk-neutral value of the deal and yet it is available for only
90. We can model this situation by first adding $X$ to the initial value of the firm and computing the resulting firm-value lattice. We obtain (with the time $T$ default values again market with an asterisk):

Firm Value Lattice

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
 & & & & & & & 7634.7 \\ \hline
 & & & & & 5788.8 & & 4389.3 \\ \hline
 & & & & 4389.3 & 3328.1 & & 2523.4 \\ \hline
 & & & 3328.1 & 2523.4 & 1913.3 & & 1450.7 \\ \hline
 & & 2523.4 & 1913.3 & 1450.7 & 1100.0 & & 834.1 \\ \hline
 & 1913.3 & 1450.7 & 1100.0 & 834.1 & 632.4 & & 479.5* \\ \hline
1450.7 & 1100.0 & 834.1 & 632.4 & 479.5 & 363.6 & & 275.7* \\ \hline
1100.0 & 834.1 & 632.4 & 479.5 & 363.6 & 275.7 & & 158.5* \\ \hline t = 0 & t = 1 & t = 2 & t = 3 & t = 4 & t = 5 & & t = 7 \\ \hline
\end{tabular}
\end{document}
```

We can then compute the equity lattice in the usual manner:

Equity Lattice

```latex
\begin{document}
\begin{tabular}{|c|c|c|c|c|c|c|c|}
\hline
 & & & & & & & 6834.7 \\ \hline
 & & & & & 5027.8 & & 3589.3 \\ \hline
 & & & & 3665.4 & 2567.1 & & 1723.4 \\ \hline
 & & & 2639.5 & 1799.6 & 1152.4 & & 650.7 \\ \hline
 & & 1868.4 & 1224.8 & 726.9 & 339.0 & & 34.1 \\ \hline
 & 881.1 & 1296.5 & 809.4 & 441.4 & 176.2 & & 0.0 \\ \hline
 & 520.9 & 261.0 & 91.5 & 8.4 & & 0.0 & \\ \hline
586.9 & 327.7 & 151.3 & 47.4 & 4.2 & 0.0 & & 0.0 \\ \hline t = 0 & t = 1 & t = 2 & t = 3 & t = 4 & t = 5 & & t = 6 \\ \hline
\end{tabular}
\end{document}
```

Note that that equity value is now 586.9 which is an increase of $586.9 - 499.7 = 87.2$ dollars. Unfortunately, this increase is less than the 90 required to make the investment and so the equity-holders, if rational, would not make the investment! Of course what has happened is that some of the value has gone to the debt-holders (whose lattice we did not display). Their situation has improved since the injection of new equity has made default less likely than before.

This problem (of not making investments that make good economic sense from the overall firm's perspective) is known as the debt-overhang problem and can be very pronounced for firms that are relatively close to default.

Exercise 1
(a) Suppose instead the current equity-holders raised the cash by issuing $90 of new non-voting equity to outside investor. These new equity holders would own $90 / (90 + 499 / 7) = 15.26\%$ of the firm. Would the original equity holders now vote to make the investment?

(b) Is there anything wrong with the scenario in part
(a) ?
(c) What demands would rational outside investors make in order for them to inject $90 of new equity into the firm so that the good investment could be made? Would the current equity holders agree to those demands?
(d) What would have to happen in order for the equity holders to make the new investment?

# Taking On Bad Investments

In addition to the debt overhang problem, there are other incentive problems that can arise. Suppose for example, the fair value of the investment is again 100 but that it costs
110. Clearly from the perspective of the overall value of the firm this is a bad investment and should not be made. And yet from the point of view of the equity-holders it may actually be rational to do this if the investment increases the volatility of the firm. This makes sense if we recall that the equity-holders own a call option on the value of the firm and that the value of an option increases with volatility. It is possible that the increase in equity value due to the increase in volatility will exceed the decrease in equity value due to the poor quality of the investment. In that case it makes sense for the equity holders (who control the firm) to make the investment.

Exercise 2 How might you model this situation using Merton's structural model?

# Other Incentive Problems In Corporate Finance

Incentive problems such as those outlined above can be and often are mitigated in part by the presence of debt covenants. Covenants are contracts that specify certain performance criteria that must be met. They often specify a maximum debt-to-asset ratio, for example, or restrict the size of dividend payments relative to working capital etc. Failure to satisfy a covenant will generally make the debt come due immediately. Nonetheless, incentive problems remain and can be found throughout corporate finance.

In the world of banking, for example, it is widely believed that governments will bail out any “too big-to-fail” institutions that are in financial distress. Governments, i.e. tax-payers, therefore provide an implicit subsidy to these institutions as it lowers their cost of capital. Moreover the size of this subsidy increases as the debt-to-equity ratio increases. This as well as the debt-tax-shield (see below) encourages<sup>1</sup> banks to have very high leverage ratios which of course makes them much more likely to fail.

Incentive problems can also arise between the management and the equity-holders of a firm. Corporate governance laws are such that it can be very difficult for the equity holders (who actually own the firm) to exert control over the management of the firm. This has often been blamed for the very high levels of executive compensation in the US where there is often very little relationship between compensation and performance.

From a modeling perspective, these incentive problems are typically handled using game theory / contract theory and other tools from micro-economics.

# 1.2 Optimal Capital Structure And Dividend Policy

One of the most important problems in corporate finance is that of determining the optimal capital structure of a firm, i.e. determining the optimal combination of debt and equity that the firm uses to fund its operations and investments. A related problem is that of determining the optimal dividend / payout policy of the firm. In the 1950's Modigliani and Miller²
(MM) provided answers to these questions in an idealized world.

# Modigliani Miller Theorems

Consider an idealized world where there are no market frictions such as taxes, asymmetric information, bankruptcy costs etc. Then MM showed the value of the firm was independent of the capital structure. If we consider the fundamental equation of accounting

$$
V = D + E \tag {1}
$$ then the MM result states that the left-hand-side of (1) does not depend on the debt-equity split. This also implies that the investment decisions of the firm can be separated entirely from the financing decisions of the firm. The proof of this result is very straightforward and simply amounts to making the following argument. Suppose a firm is all-equity financed but that an investor would prefer to invest in a firm with identical cash-flows, i.e. assets, but that instead was partly financed with debt. The investor can achieve this desired investment by doing the borrowing herself rather than relying on the firm to do so. In particular, she can partly fund her investment in the all-equity financed firm by borrowing. The resulting cash-flows obtained by the investor will be identical to the cash-flow from a position in the firm partly financed with debt. It is then clear that the value of the firm should not depend on how it finances itself.

Similar simple arguments also imply that investors are indifferent to the dividend policy of the firm. Likewise a firm does not need to engage in risk management as individual investors can do so themselves. Of course these results only imply an idealized world that never holds in practice. So why do people care about these MM results? The answer is that these results help to clarify our thinking and understand what real-world market frictions imply for the optimal capital structure. For example, a very important and somewhat controversial feature of the U. S tax code is that debt interest payments are paid pre
(corporate) tax whereas dividend payments are made after tax. This has the effect of making debt more attractive than equity and this favorable treatment<sup>3</sup> of debt can encourage firms, e.g. banks(!), to be very highly leveraged. In order to account for this favorable tax treatment it is common to rewrite (1) as

$$
V _ {L} = V + \mathrm {PV} (\text {D ebttaxshield}) \tag {2}
$$ where $V$ is the value of the firm in a no-tax world and PV(Debt tax shield) is simply the present-value of the benefits to the firm of not having to pay tax on interest payments.

Other market frictions include bankruptcy costs. These costs are also significant and in addition to the direct costs, e.g. legal and administrative costs of bankruptcy, they also include indirect costs such as loss of business etc. resulting from bankruptcy or the fear of bankruptcy. In contrast to taxes, this friction encourages firms to hold more equity and therefore to be less leveraged. It is worth noting that in contrast to the Merton and Black-Cox models for pricing corporate debt, later models due to Leland, Leland and Toft etc, included both taxes and bankruptcy costs in evaluating corporate debt.

# 1.3 Capital Budgeting

Capital budgeting is one of the key problems in corporate finance. Simply put, capital budgeting is the process associated with figuring out what investments a firm should make and there are three key aspects to this:
(i) determining the fair value of each potential investment
(ii) determining what subset of these investments the firm should make and
(iii) determining how to fund the chosen subset of investments. In an idealized MM world step we could argue that steps
(ii) and
(iii) are irrelevant and can therefore be ignored. Of course we do not live in an MM world and therefore steps
(ii) and
(iii) are often important. For example, it may be the case that raising outside funds is too expensive for a firm in which case it may only be able to invest in a subset of the investments that satisfy some budget constraint.

Step
(i) is always necessary and there are many approaches. The martingale approach we used to price real options in an earlier set of lecture notes is certainly valid. In corporate finance it is common to focus on the appropriate choice of discount factor rather than an EMM, $Q$, and we will follow that line here. While the theory states that a stochastic discount factor is appropriate it is common to instead apply a deterministic discount factor. But what one? The risk-free rate is almost always inappropriate as it does not account for the riskiness of the cash-flows. It is common to use the weighted average cost of capital or WACC. The WACC is the expected return on a portfolio of all the companies securities and is given (in a MM world with no taxes) by

$$ r = r _ {D} \frac {D}{V} + r _ {E} \frac {E}{V} \tag {3}
$$ where $r_D$ and $r_E$ are the expected returns to the debt and equity, respectively. In a world with taxes where the tax regime favors debt, the WACC is adjusted accordingly

$$ r ^ {*} = r _ {D} \left(1 - T _ {c}\right) \frac {D}{V} + r _ {E} \frac {E}{V} \tag {4}
$$ where $T_{c}$ is the marginal corporate tax rate. In practice we cannot observe the WACC, $r$. Instead we observe $r_{D}$ and estimate $r_{E}$ and then use (4) to estimate $r^{*}$. It is important to note that WACC is an
(approximately) appropriate discount factor only for projects / investments that are similar to the overall business of the firm. In particular, investments that are "riskier" (less risky) than the firm's overall business should be valued with a higher
(lower) discount factor than the WACC.

# 2 Securitization

Securitization is the name given to the process of constructing new securities from the cash-flows generated by a pool of underlying securities. The main economic rationale behind securitization is that it enables the construction of new securities with a broad range of risk profiles. Different types of investors may therefore be interested in these new securities even if they had no interest in the underlying securities. If this is the case then there will be an increased demand for the underlying cash-flows and so the cost-of-capital is reduced for the issuers of the underlying securities.

Collateralized debt obligations
(CDOs) are a particular class of securities that are structured this way. CDOs are constructed from an underlying pool of fixed-income securities and they were first issued by banks in the mid-1990s. In contrast to the motivation given above, the original motivation for introducing CDO's was regulatory arbitrage. By keeping the equity tranche (see below) of the CDO a bank could effectively keep the entire economic risk of the underlying portfolio but because the notional principal of the tranch was much smaller, the bank faced must lighter capital requirements.

# 2.1 Collateralized Debt Obligations (Cdo'S)

We want to find the expected losses in a simple 1-period CDO with the following<sup>4</sup> characteristics:

- The maturity is 1 year.
- There are $N = 125$ bonds in the reference portfolio.
Each bond pays a coupon of one unit after 1 year if it has not defaulted.
- The recovery rate on each defaulted bond is zero.
- There are 3 tranches of interest: the equity, mezzanine and senior tranches with attachment points 0-3 defaults, 4-6 defaults and 7-125 defaults, respectively.

We make the simple assumption that the probability, $q$, of defaulting within 1 year is identical across all bonds $X_{i}$ is the normalized asset value of the $i^{th}$ credit, i.e. bond, and we assume

$$
X _ {i} = \sqrt {\rho} M + \sqrt {1 - \rho} Z _ {i} \tag {5}
$$ where $M, Z_1, \ldots, Z_N$ are IID normal random variables. Note that the correlation between each pair of asset values is identical. We assume also that the $i^{th}$ credit defaults if $X_i \leq \bar{x}_i$. Since the probability of default, $q$, is identical across all bonds we must therefore have

$$
\bar {x} _ {1} = \dots \bar {x} _ {N} = \Phi^ {- 1}
(q) . \tag {6}
$$

It now follows from (5) and (6) that

$$
\begin{array}{l} \mathrm {P} (\text {C redit} i \text {defaults} | M) = \mathrm {P} (X _ {i} \leq \bar {x} _ {i} | M) \\ = \mathrm {P} (\sqrt {\rho} M + \sqrt {1 - \rho} Z _ {i} \leq \Phi^ {- 1}
(q) \mid M) \\ = \mathsf {P} \left(Z _ {i} \leq \frac {\Phi^ {- 1}
(q) - \sqrt {\rho} M}{\sqrt {1 - \rho}} \mid M\right). \\ \end{array}
$$

Therefore conditional on $M$, the total number of defaults is $\operatorname{Binomial}(N, q_M)$ where

$$ q _ {M}:= \Phi \left(\frac {\Phi^ {- 1}
(q) - \sqrt {\rho} M}{\sqrt {1 - \rho}}\right).
$$

That is,

$$ p (k \mid M) = \left( \begin{array}{c} N \\ k \end{array} \right) q _ {M} ^ {k} (1 - q _ {M}) ^ {N - k}.
$$

The unconditional probabilities can be computed by integrating numerically the binomial probabilities with respect to $M$ so that

$$
\mathrm {P} (k \text {defaults}) = \int_ {- \infty} ^ {\infty} p (k \mid M) \phi
(M) d M
$$ where $\phi (\cdot)$ is the standard normal PDF. We can now compute the expected (risk-neutral) loss on each of the three tranches according to

$$
\mathrm {E} _ {0} ^ {Q} [ \text {E quitytrancheloss} ] = 3 \times \mathrm {P} (3 \text {ormoredefaults}) + \sum_ {k = 1} ^ {2} k \mathrm {P} (k \text {defaults})
$$

$$
\mathrm {E} _ {0} ^ {Q} [ \text {M ezzaninetrancheloss} ] = 3 \times \mathrm {P} (6 \text {ormoredefaults}) + \sum_ {k = 1} ^ {2} k \mathrm {P} (k + 3 \text {defaults})
$$

$$
\mathrm {E} _ {0} ^ {Q} [ \text {S eniortrancheloss} ] = \sum_ {k = 1} ^ {119} k \mathrm {P} (k + 6 \text {defaults}).
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/015b7d82fa391d0309471c1535e522822191ad59ced57c925f9717c34f0edfb6.jpg)

Figure 1: Expected Tranche Losses As a Function of $q$ and $\rho$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/e242cd9342e4de85bffab682e9b32ea094c07c11d6d20d4571e22a31443ba9cf.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/7ba6ef3f8ddbeda626eb685d3eb9782683c86b2744ffc21d6f0630304cdae289.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/49fd0a77ba5fb8afe895d7382107d64d1b3824835e62c8cac0752bf3b21b572e.jpg)

Results for various values of $\rho$ and $q$ are displayed in the figure below. Regardless of the individual default probability, $q$, and correlation, $\rho$, we see

$\mathrm{E}_0^Q$ [% Equity tranche loss] $\geq \mathrm{E}_0^Q$ [% Mezzanine tranche loss] $\geq \mathrm{E}_0^Q$ [% Senior tranche loss].

We also note that the expected losses in the equity tranche are always decreasing in $\rho$ while mezzanine tranches are often relatively insensitive to $\rho$. The expected losses in senior tranches (with upper attachment point of $100\%$ or 125 units in our example) are always increasing in $\rho$.

Exercise 3 How does the total expected loss in the portfolio vary with $\rho$?

Remark 1 The dependence structure we used in (5) to link the default events of the various bonds is the famous Gaussian-copula model.

Remark 2 In practice CDO's are multi-period securities and many CDO's are actually synthetic CDO's where the underlying portfolio is a synthetic portfolio of bonds. Synthetic CDO tranches trade like a CDS where one party sells protection on a tranche and another party buys protection.

# 2.2 Mortgage-Backed Securities

We briefly provide another example of how securitization can work by considering a standard level-payment mortgage. We assume the initial mortgage principal is $M_0 \coloneqq M$ and that equal periodic payments of size $B$ dollars are made. After $n$ such payments the mortgage principal and interest will have all been paid in full. Each payment, $B$, therefore pays both interest and some of the principal. If we assume the coupon rate is $c$ per period then we can solve for $B$. In particular, let $M_k$ denote the mortgage principal remaining after the $k^{th}$ period. Then

$$
M _ {k} = (1 + c) M _ {k - 1} - B \quad \text {for} k = 1,2, \dots, n \tag {7}
$$ with $M_{n} = 0$. We can iterate (7) to obtain

$$
\begin{array}{l} M _ {k} = (1 + c) ^ {k} M _ {0} - B \sum_ {p = 0} ^ {k - 1} (1 + c) ^ {p} \\ = (1 + c) ^ {k} M _ {0} - B \left[ \frac {(1 + c) ^ {k} - 1}{c} \right]. \tag {8} \\ \end{array}
$$

But $M_{n} = 0$ and so we obtain

$$
B = \frac {c (1 + c) ^ {n} M _ {0}}{(1 + c) ^ {n} - 1}. \tag {9}
$$

We can now substitute (9) back into (8) and obtain

$$
M _ {k} = M _ {0} \frac {(1 + c) ^ {n} - (1 + c) ^ {k}}{(1 + c) ^ {n} - 1}.
$$

Suppose now that we wish to compute the present value of the mortgage assuming a deterministic world with no possibility of defaults or prepayments. Then assuming a risk-free interest rate of $r$ per period, we obtain that the fair mortgage value as

$$
\begin{array}{l} F _ {0} = \sum_ {k = 1} ^ {n} \frac {B}{(1 + r) ^ {k}} \\ = \frac {c (1 + c) ^ {n} M _ {0}}{(1 + c) ^ {n} - 1} \times \frac {(1 + r) ^ {n} - 1}{r (1 + r) ^ {n}}. \tag {10} \\ \end{array}
$$

Note that if $r = c$ then (10) immediately implies that $F_0 = M_0$, as expected. In general, however, we will have $r < c$, to account for the possibility of default, prepayment, servicing fees, bank profits etc.

# Scheduled Principal And Interest Payments

Since we know $M_{k - 1}$ we can compute the interest

$$
I _ {k}:= c M _ {k - 1} \tag {11}
$$ on $M_{k-1}$ that would be due in the next period, i.e. period $k$. This also means we can interpret the $k^{th}$ payment as paying

$$
P _ {k}:= B - c M _ {k - 1} \tag {12}
$$ of the remaining principal, $M_{k-1}$. In any time period, $k$, we can therefore easily break down the payment $B$ into a scheduled principal payment, $P_k$, and a scheduled interest payment, $I_k$. Indeed we can take a large pool of these mortgages and assign all the interest payments (given by (11)) to an interest-only
(IO) mortgage-backed security
(MBS) , and all the principal payments (given by (12)) to a principal-only
(PO) MBS. There are many other classes of MBS including for example sequential CMO's (collateralized mortgage obligations), PAC CMO's etc.

# Prepayment Risk

It is important to note, however, that there is in fact uncertainty in the interest and principal payments. This is due to possible default by the mortgage holder as well as the possibility of prepayments. Many mortgage-holders in the US are allowed to pre-pay the mortgage principal earlier than scheduled. In fact payments in excess of the scheduled principal payments are called prepayments. There are many possible reasons for prepayments including default (in which case an agency-insured mortgage will prepay the entire mortgage), opportunities to refinance the mortgage at a better rate, requirements to prepay when selling the home underlying the mortgage etc. Prepayment modeling is therefore an important feature of pricing MBS. Indeed the value of some MBS's such as IO and PO MBS are very sensitive to prepayment modeling and assumptions.

Exercise 4 What do you think happens to the value of a PO / IO security when interest rates
(i) increase
(ii) decrease?

# Pricing Mortgage-Backed Securities

MBS are fixed-income securities with considerable exposure to interest-rates and (why?) interest-rate volatility. To price them it is therefore necessary to use a term-structure model that has been properly calibrated to an appropriate set of liquid fixed-income derivatives prices as well (of course) as the term structure of interest rates. The calibrated term structure model is then combined with a prepayment model (and possibly a mortgage default model) to construct (typically via Monte-Carlo simulation) MBS prices and associated risk numbers.

# 2.3 Other Asset-Backed Securities

Securities that are constructed by reassigning the cash-flows of some underlying group of securities are generally referred to as asset-backed securities
(ABS) . CDOs and MBSs are examples of these securities. Other common forms of ABS include collateralized loan obligations
(CLOs) and securities constructed from pools of credit card loans, students loans or car loans. In fact it is possible to form more complex ABS from an underlying pool of other ABS. This leads, for example, to ABS CDOs where the CDO is constructed from an underlying pool of ABS, or CDO-squared's where a CDO is constructed from an underlying pool of CDO tranches. The structured credit / ABS market was at the heart of the 2008 financial crisis and came in for considerable criticism. As a result, many of the more complex ABS are no longer actively traded.

# 3 Risk Management

Risk management is an extremely important topic and we can only briefly describe here some of the main approaches.

# 3.1 Factor Sensitivity Measures Or The "Greeks"

A factor sensitivity measure gives the change in the value of the portfolio for a given change in the "risk factors". Commonly used examples include the Greeks of an option portfolio or the duration and convexity of a bond portfolio. These measures are often used to set position limits on trading desks and portfolios. Consider for example an option that is written on an underlying security with price process $S_{t}$. We assume the time $t$ price, $C$, is a function of only $S_{t}$ and the implied volatility, $\sigma_{t}$. Then a simple application of Taylor's Theorem yields

$$
\begin{array}{l} C (S + \Delta S, \sigma + \Delta \sigma) \approx C (S, \sigma) + \Delta S \frac {\partial C}{\partial S} + \frac {1}{2} (\Delta S) ^ {2} \frac {\partial^ {2} C}{\partial S ^ {2}} + \Delta \sigma \frac {\partial C}{\partial \sigma} \\ = C (S, \sigma) + \Delta S \delta + \frac {1}{2} (\Delta S) ^ {2} \Gamma + \Delta \sigma \text {vega} \\ \end{array}
$$ where we have omitted the dependence of the various quantities on $t$. We therefore obtain

$$
\begin{array}{l} \mathrm {P} \& \mathrm {L} \quad \approx \quad \delta \Delta S + \frac {\Gamma}{2} (\Delta S) ^ {2} + \text {vega} \Delta \sigma \\ = \text {delta P} \& L + \text {gamma P} \& L + \text {vega P} \& L. \tag {13} \\ \end{array}
$$

When $\Delta \sigma = 0$, we obtain the well-known delta-gamma approximation which is often used, for example, in historical Value-at-Risk
(VaR) calculations. Note that we can also write (13)

$$
\begin{array}{l} \mathrm {P} \& \mathrm {L} \quad \approx \quad \delta S \left(\frac {\Delta S}{S}\right) + \frac {\Gamma S ^ {2}}{2} \left(\frac {\Delta S}{S}\right) ^ {2} + \operatorname {vega} \Delta \sigma \\ = \text {ESP} \times \text {R eturn} + \mathbb {S} \text {G amma} \times \text {R eturn} ^ {2} + \text {vega} \Delta \sigma \tag {14} \\ \end{array}
$$ where ESP denotes the equivalent stock position or "dollar" delta. Note that it is easy to extend this calculation to a portfolio of options on the same underlying security. It is also straightforward to extend these ideas to derivatives portfolios written with many different underlying securities.

Depending on the particular asset class, investors / traders / risk managers should always know their exposure to the Greeks, i.e. dollar delta, dollar gamma and vega etc. It is also very important to note that approximations such as (14) are local approximations as they are based (via Taylor's Theorem) on "small" moves in the risk factors. These approximations can and indeed do break down in violent markets where changes in the risk factors can be very large.

# 3.2 Scenario Analysis

The scenario approach defines a number of scenarios where in each scenario the various risk factors are assumed to have moved by some fixed amounts. For example, a scenario might assume that all stock prices have fallen by $10\%$ and all implied volatilities have increased by 5 percentage points. Another scenario might assume the same movements but with an additional steepening of the volatility surface. A scenario for a credit portfolio might assume that all credit spreads have increased by some fixed absolute amount, e.g. 100 basis points, or some fixed relative amount, e.g. $10\%$. The risk of a portfolio could then be defined as the maximum loss over all of the scenarios that were considered. A particular advantage of this approach is that it does not depend on probability distributions that are difficult to estimate.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/5e1b69b9b9501bd00282894201547d4785b9c40bd4e40bef79ae669fb10a9dab.jpg)

Figure 2: P&L for an Options Portfolio on the S&P 500 under Stresses to Underlying and Implied Volatility

Figure 2 shows the P&L under various scenarios of an options portfolio with the S&P 500 as the underlying security. The vertical axis represents percentage shifts in the price of the underlying security, i.e. the S&P 500, whereas the horizontal axis represents absolute changes in the implied volatility of each option in the portfolio. For example, we see that if the S&P 500 were to fall by $20\%$ and implied volatilities were to all rise by 5 percentage points, then the portfolio would gain 8.419 million dollars (assuming that the numbers in Figure 2 are expressed in units of 1,000 dollars). When constructing scenario tables as in Figure 2 we can use approximations like (14) to check for internal consistency and to help identify possible bugs in the software.

While scenario tables are a valuable source of information there are many potential pit-falls associated with using them. These include:

#
1. Identifying The Relevant Risk Factors

While it is usually pretty clear what the main risk factors for a particular asset class are, it is quite possible that a portfolio has been constructed so that it is approximately neutral to changes in those risk factors. Such a portfolio might then only have (possibly very large) exposures to secondary risk factors. It is important then to include shifts in these secondary factors in any scenario analysis. The upshot of this observation is that the relevant risk factors depend on the specific portfolio under consideration rather than just the asset class of the portfolio.

#
2. Identifying "Reasonable" Shifts For These Risk Factors

For example, we may feel that a shift of $-10\%$ is plausible for the S&P 500 because we know from experience that such a move, while extreme, is indeed possible in a very volatile market. But how do we determine plausible shifts for less transparent risk factors? The answer typically lies in the use of statistical techniques such as PCA, extreme-value theory, time series methods, common sense(!) etc.

A key role of any risk manager then is to understand what scenarios are plausible and what scenarios are not. For example, in a crisis we would expect any drop in the price of the underlying security to be accompanied by a rise in implied volatilities. We would therefore pay considerably less attention to the numbers in the upper left quadrant of Figure 2.

# 3.3 Value-$A_{T}$-Risk

Many risk measures such as value-at-risk
(VaR) are based on the loss distribution of the portfolio. Working with loss distributions makes sense as the distribution contains all the information you could possibly wish to know about possible losses. A loss distribution implicitly reflects the benefits of netting and diversification. Moreover it is easy to compare the loss distribution of a derivatives portfolio with that of a bond or credit portfolio, at least when the same time horizon is under consideration. However, it must be noted that it may be very difficult to estimate the loss distribution. This may be the case for a number of reasons including a lack of historical data, non-stationarity of risk-factors and poor model choice among others.

When we discuss the distribution of losses $L_{t + 1}$ (over the interval $t$ to $t + 1$ ) it is important to clarify exactly what we mean. In particular, we need to distinguish between the conditional and unconditional loss distributions. Consider the series $\mathbf{X}_{\mathbf{t}}$ of risk factor changes and assume that they form a stationary time series with stationary distribution $F_{\mathbf{X}}$. We also let $\mathcal{F}_t$ denote all information available in the system at time $t$, including $\{\mathbf{X}_{\mathbf{s}}: s \leq t\}$ in particular. We then have the following two definitions.

Definition 1 The unconditional loss distribution is the distribution of $L_{t + 1}$ given the time $t$ composition of the portfolio and assuming the CDF of $\mathbf{X}_{t + 1}$ is given by $F_{\mathbf{X}}$.

Definition 2 The conditional loss distribution is the distribution of $L_{t + 1}$ given the time $t$ composition of the portfolio and conditional on the information in $\mathcal{F}_t$.

For relatively short horizons, e.g. 1 day or 10 days, then the conditional loss distribution is clearly the appropriate distribution for risk management purposes. This would be particularly true in times of high market volatility when the unconditional distribution would bear little resemblance to the true conditional distribution.

# Value-$A_{T}$-Risk

Value-at-Risk
(VaR) is the most widely used risk measure in the financial industry. Despite the many weaknesses of VaR, financial institutions are required to use it under various regulatory frameworks. In addition, many institutions routinely report their VaR numbers to shareholders or investors. VaR is a risk measure based on the loss distribution and our discussion will not depend on whether we are dealing with the conditional or unconditional loss distribution. Nor will it depend on whether we are using the true loss distribution or some approximation to it. We will assume that the horizon, $\Delta$, has been fixed, e.g. 1 day or 10 days, and that the random variable $L$ represents the loss on the portfolio under consideration over the time interval $\Delta$. We will use $F_{L}(\cdot)$ to denote the cumulative distribution function
(CDF) of $L$. We first define the quantiles of a CDF.

Definition 3 Let $F: \mathbb{R} \to [0,1]$ be an arbitrary CDF. Then for $\alpha \in (0,1)$ the $\alpha$ -quantile of $F$ is defined by

$$ q _ {\alpha}
(F) := \inf \{x \in \mathbb {R}: F
(x) \geq \alpha \}.
$$

Note that if $F$ is continuous and strictly increasing, then $q_{\alpha}(F) = F^{-1}(\alpha)$. For a random variable $L$ with CDF $F_{L}(\cdot)$, we will write $q_{\alpha}(L)$ instead of $q_{\alpha}(F_{L})$.

Definition 4 Let $\alpha \in (0,1)$ be some fixed confidence level. Then the VaR of the portfolio loss at the confidence level, $\alpha$, is given by $V a R_{\alpha}:= q_{\alpha}(L)$, the $\alpha$ -quantile of the loss distribution.

# Example 1 (The Normal And T Distributions)

Because the normal and t CDFs are both continuous and strictly increasing, it is straightforward to calculate their $\mathsf{VaR}_{\alpha}$. If $L\sim \mathsf{N}(\mu,\sigma^2)$ then

$$
\mathrm {V a R} _ {\alpha} = \mu + \sigma \Phi^ {- 1} (\alpha) \quad \text {where} \Phi \text {is the st and ardnormal CDF.} \tag {15}
$$

By the previous lemma, this follows if we can show that $F_{L}(\mathsf{VaR}_{\alpha}) = \alpha$. But this follows immediately from (15).

If $L\sim \mathfrak{t}(\nu,\mu,\sigma^2)$ so that $(L - \mu) / \sigma$ has a standard $t$ distribution with $\nu >2$ degrees-of-freedom, then

$\mathsf{VaR}_{\alpha} = \mu + \sigma t_{\nu}^{-1}(\alpha)$ where $t_{\nu}$ is the CDF for the t distribution with $\nu$ degrees-of-freedom.

Note that in this case we have $\mathsf{E}[L] = \mu$ and $\operatorname{Var}(L) = \nu \sigma^2 / (\nu - 2)$.

VaR has several weaknesses:

1. VaR attempts to describe the entire loss distribution with a single number and so significant information is not captured in VaR. This criticism does of course apply to all scalar risk measures. One way around this is to report $\mathrm{VaR}_{\alpha}$ for several different values of $\alpha$.
2. There is significant model risk attached to VaR. If the loss distribution is heavy-tailed, for example, but a normal distribution is assumed, then $\mathrm{VaR}_{\alpha}$ will be severely underestimated as $\alpha$ approaches 1.3. VaR is not a sub-additive risk measure so that it doesn't lend itself to aggregation. For example, let $L = L_{1} + L_{2}$ be the total loss associated with two portfolios, each with respective losses, $L_{1}$ and $L_{2}$. Then

$$ q _ {\alpha} \left(F _ {L}\right) > q _ {\alpha} \left(F _ {L _ {1}}\right) + q _ {\alpha} \left(F _ {L _ {1}}\right) \quad \text {ispossible.} \tag {16}
$$

In the risk literature this is viewed as being an undesirable property as we would expect some diversification benefits when we combine two portfolios together. Such a benefit would be reflected by the combined portfolio having a smaller risk measure than the sum of the two individual risk measures.

# 4 Algorithmic Trading

The key motivation for algorithmic trading is that investors are no longer price-takers but instead are adversely affected by their trading. In particular, when they wish to buy
(sell) securities the price begins to rise
(fall) and so they end up paying more (receiving less) than the original price that prevailed at the beginning of their trading. Accounting for these adverse price moves by modeling the temporary and permanent price impact is important for both high-frequency trading as well as lower-frequency trading where large trades need to be executed in a relatively short period of time. The size of these price impacts depends on the liquidity of the security. While there is no strict definition of liquidity, we think of a security as being liquid if we can quickly trade large quantities of the security with little price impact, i.e. low slippage. Characteristics of the security itself, as well as other factors such as general market conditions, time of day etc. determine how liquid a security is.

# 4.1 Optimal Execution Of A Single Stock

We consider a simple model for selling a total of $X$ shares over the course of a single day and in order to execute this trade we will break the day up into a total of $T$ time periods. For example, if we take the duration of a time period to be 5 minutes, then we will have $T = 78$ time periods if we are trading on the NYSE<sup>8</sup>. We let $n_j$ denote the number of shares sold in the $j^{th}$ period and we let $\mathbf{n} \coloneqq (n_1, \ldots, n_T)$ denote the execution sequence for the $T$ periods. We define $x_k \coloneqq X - \sum_{j=1}^k n_j$ for $k = 1, \ldots, T$, so that $x_k$ denotes the number of shares that have yet to be sold after the $k^{th}$ period. We set $x_0 = X$ and note that we must have $X = \sum_{j=1}^T n_j$.

We let $S_{k}$ denote the pre-trade price for the $k^{th}$ period and let $\widehat{S}_{k}$ denote the realized price-per-share that is obtained for the $n_{k}$ shares sold at that time. We assume a temporary price impact function, $h(n)$, so that

$$
\widehat {S} _ {k} = S _ {k} - h \left(n _ {k}\right). \tag {17}
$$

We model the permanent price impact via the function, $g(n)$, so that

$$
S _ {k + 1} = S _ {k} + \sigma z _ {k} - g \left(n _ {k}\right) \tag {18}
$$ where the $z_{k}$ 's are IID standard normal random variables and $\sigma$ is a volatility parameter. Note that the temporary price impact, $h(n_{k})$, in period $k$ only affects the realized price in period $k$. In particular, it is clear from (18) that $h(n_{k})$ does not influence prices in later periods.

Using (17) and (18) we see that the total realized revenue of the execution strategy satisfies

$$
\begin{array}{l} \sum_ {k = 1} ^ {T} \widehat {S} _ {k} n _ {k} = \sum_ {k = 1} ^ {T} \left(S _ {k} - h (n _ {k})\right) n _ {k} \\ = \sum_ {k = 1} ^ {T} \left(S _ {1} + \sum_ {j = 1} ^ {k - 1} (\sigma z _ {j} - g (n _ {j})\right) n _ {k} - \sum_ {k = 1} ^ {T} h (n _ {k}) n _ {k} (19) \\ = S _ {1} X + \sigma \sum_ {k = 1} ^ {T} z _ {k} x _ {k} - \sum_ {k = 1} ^ {T} g \left(n _ {k}\right) x _ {k} - \sum_ {k = 1} ^ {T} h \left(n _ {k}\right) n _ {k}. (20) \\ \end{array}
$$

Note that in going from (19) to (20) we have switched the order of summation for the middle two terms and also used $x_{T} = 0$ so that the middle two sums in (20) can run from $k = 1$ to $T$ rather than $T - 1$. The expected cost of the execution strategy is

$$
C (\mathbf {n}) = XS _ {1} - \sum_ {k = 1} ^ {T} g (n _ {k}) x _ {k} - \sum_ {k = 1} ^ {T} h (n _ {k}) n _ {k}.
$$

If we measure riskiness by variance, then the risk of the execution strategy is $V(\mathbf{n}) \coloneqq \sigma^2 \sum_{k=1}^{T} x_k^2$. We can now formulate the optimal execution optimization problem as

$$
\min _ {\mathbf {n} \geq 0} C (\mathbf {n}) + \rho V (\mathbf {n}) \tag {21}
$$ where $\rho$ is a parameter we choose to tradeoff cost versus risk. Before solving (21) we also need to specify the price impact functions. A typical choice for $g$ is a linear permanent price impact so that $g(v) = \gamma v$, for some constant $\gamma$. The temporary price impact function is typically chosen to be non-linear. One possibility would be to use the Kissel-Glantz function

$$
h(n) = a _ {1} \left(\frac {100 | n |}{V}\right) ^ {\beta} + a _ {2} \sigma + a _ {3}
$$ where $V$ is the average daily traded volume and the $a_{i}$ 's are parameters that can be estimated via regression. The problem (21) can now be solved via standard non-linear optimization methods.

There are many other important features that can be incorporated into this execution problem. For example, we assumed $T$ is fixed but one can also include it as a decision variable to be optimized. In practice many of the parameters / impact functions are time-dependent. For example, it is well-known that there is considerably more market liquidity at the open and close every day and so trading at those times should incur a smaller price impact. It is also possible to include some predictability in the price dynamics in which case the resulting problem will then become a dynamic program (DP) rather than a static optimization problem. One can also formulate portfolio execution problems where the goal is to trade many different securities. Now trading in one security can alter the dynamics of the other securities and this is modeled via cross-price impacts. Estimating these cross-price impacts can be very difficult, however, and so it is common to collapse the portfolio execution problem into a series of single-stock execution problems.

# 4.2 Limit Order Books And Dark Pools

The execution model in Section 4.1 only accounts for one level of the overall trading strategy. Once we have determined $n_k$, the number of shares to be sold in period $k$, we must decide how to actually sell these shares. In particular, we need to construct another strategy for how to sell these shares in the current period. Such a strategy can consist of limit orders and market orders executed via the limit-order book but it could also include sending the trades to so-called dark-pools. The goal at all times is to obtain the best execution and to prevent other market participants from learning about your strategy and therefore front-running your trades.

A limit-order book is a database that keeps buy orders, i.e. bids, and sell orders, i.e. offers, on a price-time-priority basis. A limit order has an associated quantity and price at which the order (buy or sell) can be executed. Limit orders arrive regularly to the order book but the execution of a limit order is uncertain and may never occur.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-20/a9ef24ee-ca1f-42a8-a8d4-e2809ecde9ea/2902d2a0f56bb7131849d3d3548fb6b3a823a2bc6cdc40873c97790bc1940f38.jpg)

Taken from the article "Limit Order Books" (2013) by Gould, Porter, Williams, McDonald, Fenn and Howison.

This is in contrast to a market order. Consider, for example, a market order to buy $Q$ shares and let $p_o$ be the best, i.e. lowest, offer price in the limit order book. Let $Q_o$ be the number of shares offered at $p_o$. Then the market order will purchase $\min(Q, Q_o)$ shares at a price $p_o$. If $Q > Q_o$, then the remaining $Q - Q_o$ shares will be executed at successively higher offer prices in the order-book until all of the shares are purchased. Market orders to sell shares are transacted similarly by "hitting" the best bids in the order-book. The advantage of a market order over a limit order is that execution is guaranteed and immediate. The disadvantage is that the execution price is not as good and it is necessary to pay (at least) the bid-ask spread, which is the difference between the best bid and best offer in the order book.

In contrast to limit-order books, dark pools are trading venues where blocks of shares can be bought or sold without revealing either the size of the trade or the identity of the agents until the trade is filled. In contrast, regular exchanges (with limit-order books) are called lit pools. Consequently, dark pool trading hopes to avoid market impact but the volume of shares executed is uncertain. There is also some controversy associated with dark pools as they are said to hinder the "price-discovery" process.

Optimal execution in limit-order books and dark pools is currently a very active research area. It is also currently the focus of many market regulators who seek to understand and prevent adverse events such as the flash-crash of May 2010.

