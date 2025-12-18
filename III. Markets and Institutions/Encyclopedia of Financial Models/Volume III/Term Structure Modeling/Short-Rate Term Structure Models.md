
# Short-Rate Term Structure Models

ALEXANDER LEVIN, PhD

Director, Financial Engineering, Andrew Davidson & Co., Inc.

Abstract: Market randomness makes the fair value of a financial instrument an expectation. It also requires a rigorous quantification of the dynamics of interest rates; that is, a well-defined interest rate model. Prices of interest rate options and options embedded in bonds such as corporate or agency callable debts, mortgage-backed securities, and asset-backed securities will firmly depend on this modeling work. Contemporary interest rate models employ the available information about currently observed forward rates and vanilla European options and are "calibrated" to them. The relationships between bond rates should preclude arbitrage. Some analytically tractable models ensure these properties explicitly. Selecting the "best" term structure model is becoming more a conscientious task and less a matter of taste. Measuring "volatility skew" for widely traded swaptions is a simple technique that yields rich results. Another method is computing volatility indexes produced by different models and tracking their stability. Recent trading history confirms normalization of the swaption market making the Hull-White model, the extended Cox-Ingersoll-Ross model, or the squared Gaussian model more attractive than formerly popular lognormal models. Single-factor models cannot value accurately curve options or some exotic derivatives that are exposed to the yield curve shape and require multifactor modeling work. The affine theory offers a systematic method of constructing such models. It also allows for jump-diffusion extensions that may be necessary to explain volatility smile; that is, an excessive convexity of the Black volatility as a function of strike.

This entry introduces a family of models for stochastic behavior of interest rates and the principles of their design widely used by market participants.

# THE CONCEPT OF SHORT-RATE MODELING

Why do we call interest rate models termstructure models? Aren't there too many rates for one model? The tree-based valuation ex amples found in many books and research papers show us that we can value an any-maturity bond and thereby reconstruct the entire term structure using only dynamics of one-period rate (see, for example, Davidson et al., 2003 [Chapter 12], and Fabozzi, 1994). Interest rate models operating with the short (one-period) rate  $r(t)$  as their main object are commonly referred to as "short-rate models." They are different by construction from so-called "forward rate models," such as the Heath-Jarrow-Morton model (Heath, Jarrow,


and Morton, 1992) or the Brace-Gatarek-Musiela model (Brace, Gatarek, and Musiela, 1997). Both types of interest rate modeling are designed to solve the same problems and are widely used for valuation of fixed income options and embedded option bonds, but operate with different objects. Unlike the short-rate modeling family, forward rate models employ and randomly evolve the entire forward curve of the short rate,  $f(t,T)$ , in which the  $t$  is time and  $T$  is the forward time, to which the short rate applies.

We restrict our attention solely to the short-rate modeling. This term does not assume that any short-rate term structure model is a one-factor model or depends only on the short rate.

# The Arbitrage-Free Integrate Relationship

Let us assume that we have a stochastic process, possibly multifactor, describing the short rate dynamics  $r(t)$ . Let us denote  $P_{T}(t)$  to be the market price observed at time  $t$  of a  $T$ -maturity zero-coupon bond; that is, a bond paying $1 at  $t + T$ . This price is exponential to the yield to maturity ("rate")  $r_{T}(t)$  of this bond:  $P_{T}(t) = \exp[-r_{T}(t)T]$ . However, we can use the arbitrage argument claiming that, once prices of instruments reflect rate expectations and risks, there should exist no advantage or disadvantage in investing in the zero-coupon bond over continuous reinvesting into the short rate. Hence, the same price should be equal to

$$
P _ {T} (t) = E \left[ \exp \left[ - \int_ {t} ^ {t + T} r (\tau) d \tau \right] \right]
$$ where  $E$  denotes the arbitrage-free expectation.


Equating these two expressions, we get

$$ r _ {T} (t) = - \frac {1}{T} L n E \left[ \exp \left[ - \int_ {t} ^ {t + T} r (\tau) d \tau \right] \right] \tag {1}
$$

Formula (1) allows us to compute any-maturity zero-coupon rates via some expectation involving random behavior of the short rate. Of course, once we establish the entire zero-coupon curve, we can restore a yield for any other bond including a coupon-paying one. To compute the expectation in (1), we must know two things: stochastic equation (or equations) for  $r(\tau)$  and initial (time  $t$ ) conditions. The latter represents public information about the market at time  $t$  and includes every factor affecting the short rate. Therefore, it would be correct to state that an any-maturity rate can be recovered using only factors that determine the evolution of the short rate. In particular, if only one Brownian motion drives the short rate dynamics, it will define the entire yield curve as well.

# Consistency with the Initial Yield Curve

Let us apply the interrate relationship (1) to the initial point of time,  $t = 0$ :

$$ r _ {T} (0) = - \frac {1}{T} L n E \left[ \exp \left[ - \int_ {0} ^ {T} r (\tau) d \tau \right] \right] \tag {2}
$$

The left-hand side of this formula is known from today's term structure of interest rates. Hence, the short rate dynamics  $r(t)$  must be such as to ensure (2) holds. In practical terms, adjusting a rate process to fit the initial yield curve is part of a more general task often termed "calibration." Without this necessary step, an interest rate model can't be used to value even simple, option-free bonds. Computation of expectation in formulas (1) and (2) can be done numerically or, in some models, analytically.

# Consistency with European Option Values

If a term structure model is built to value complex derivative instruments, it must value, at minimum, simple European options. Suppose we have an option that is exercised at a future point of time  $t$  and generates a cash flow that we denote  $g[r(t)]$ ; that is, some nonlinear function of the short rate observed at  $t$ . Note that the actual option's exercise may be triggered by a long, rather than the short, rate; nevertheless, it will depend either on  $r(t)$  (single-factor models) or all market factors (multifactor models) known at  $t$ . The value of the option is going to be


$$ o p t i o n = E \left[ g [ r (t) ] \exp \left[ - \int_ {0} ^ {t} r (\tau) d \tau \right] \right] \tag {3}
$$ where  $E$  denotes the same expectation as before.


We may now demand that the short rate process  $r(t)$  produces options values (3) that match market prices. Most commonly, term structure models are calibrated to LIBOR caps, or European options on swaps (swaptions), or both. These are standard, widely traded European options. For example, a call option on a  $T$ -maturity swap will generate cash flow equal to  $g[r(t)] = A_T(t)[K - c_T(t)]^+$  where  $A$  denotes annuity,  $c$  denotes the swap rate, both measured at  $t$ , and superscript "+" indicates that only a positive value is taken. Another standard derivative is the LIBOR cap made of "caplets," that is, European calls on some relatively short rate. A  $T$ -maturity LIBOR caplet ( $T = 3$  months for standard caps) expiring at  $t$  pays  $[r_T(t) - K]^+$  at  $t + T$ . To recognize the time difference  $T$  between the caplet's expiry and the actual pay, we can move the payoff from  $t + T$  to  $t$  and express it as  $g[r(t)] = [r_T(t) - K]^+ / (1 + Tr_T(t)]$ . We then have to make sure that formula (3) yields correct values for the caplets. Note that the cap market does not usually quote caplets directly; however, their values can be assessed by bootstrapping.

# SINGLE-FACTORSHORT-RATE MODELS

In the this section, we describe several different single-factor models, which employ the short rate as the only factor. We also give some evidence on the relative performance of the models. For each of the models, we emphasize three key aspects: the model's formulation, its arbitrage-free calibration, and the interrate relationship that recovers the entire term structure contingent on the dynamics of the short rate.


# The Hull-White/Vasicek Model

The Hull-White (HW) model (Hull and White, 1994) describes the dynamics of the short rate  $r(t)$  in the form given by

$$ d r = a (t) (\theta (t) - r) d t + \sigma (t) d z \tag {4}
$$

Here,  $a(t)$  denotes mean reversion,  $\sigma (t)$  stands for volatility; both can be time-dependent. Function  $\theta (t)$  is sometimes referred to as "arbitrage-free" drift. This terminology is caused by the fact that, by selecting proper  $\theta (t)$ , we can match any observed yield curve. The HW model was preceded by the Vasicek model having  $\theta (t) = 0$ . The short rate is normally distributed in this model, so the volatility represents absolute rather than relative changes.

This can be seen mathematically as (4) is a linear equation disturbed by the Brownian motion (a normally distributed variable); the short rate is normally distributed as well. Therefore, its integral is normally distributed too, and the expectation found in the right-hand side of formulas (1), (2), and, in some cases, (3) can be computed in a closed form. Without going through the math we provide here the analytical calibration results to the observed short forward curve  $f(t)$  for the constant-parameter case:

$$
\theta (t) = f (t) + \frac {1}{a} \frac {d f (t)}{d t} + \frac {\sigma^ {2}}{2 a ^ {2}} \left(1 - e ^ {- 2 a t}\right) \tag {5}
$$

The short rate's expectation is found as

$$
E [ r (t) ] = f (t) + \frac {\sigma^ {2}}{2 a ^ {2}} (1 - e ^ {- a t}) ^ {2} \tag {6}
$$

The last term in (6) is called the convexity adjustment; that is, the difference between mathematically expected short rates in the future and the forward short rates. This adjustment is proportional to volatility squared; for zero mean reversion, it is simply equal to  $\frac{1}{2}\sigma^2 t$ . It is therefore up to financial engineers to make sure the convexity adjustment is properly implemented in a pricing system; it is very volatility sensitive.


The expected value for any long,  $T$ -maturity, zero-coupon rate is proven to be in the same form: forward rate + convexity adjustment. This time, the exact formula for this relation is

$$
\begin{array}{l} E \left[ r _ {T} (t) \right] = f _ {T} (t) \\ + \frac {\sigma^ {2}}{4 a ^ {3} T} (1 - e ^ {- a T}) [ 2 (1 - e ^ {- a t}) ^ {2} \\ + (1 - e ^ {- 2 a t}) \left(1 - e ^ {- a T}\right) \tag {7} \\ \end{array}
$$

Any long zero-coupon rate is normally distributed too and proven to be linear in the short rate; deviations from their respective mean levels are related as

$$
\frac {\Delta r _ {T}}{\Delta r} \equiv \frac {r _ {T} (t) - E \left[ r _ {T} (t) \right]}{r (t) - E [ r (t) ]} = \frac {1 - e ^ {- a T}}{a T} \equiv B _ {T} \tag {8}
$$

The function  $B_{T}$  of maturity  $T$  plays an important role in the HW model. It helps, for example, to link the short-rate volatility to the long-rate one and explicitly calibrate it to the market. If  $a = 0$ , this function becomes identical to 1, regardless the maturity  $T$ . This important special case allows for a pure parallel change in the entire curve (every point moves by the same amount). This particular specification can be suitable for standardized risk measurement tests.

The HW model is a very tractable arbitrage-free model, which allows for the use of analytical solutions as well as Monte Carlo simulation. The volatility  $\sigma$  and mean reversion  $a$  can be analytically calibrated to European options on zero-coupon bonds. Most commonly, the HW model is calibrated to either a set of short-rate options (LIBOR caps) or swaptions. In the later case, very good approximations can be constructed (see Levin, 2001; Musiela and Rutkowski, 2000). The model's chief drawback is that it produces negative interest rates. However, with mean reversion, the effect of negative rates is reduced. The rate history of the 1990s and 2000s supports this type of formulation of a term structure model.


# The Cox-Ingersoll-Ross Model

The Cox-Ingersoll-Ross model (CIR model) is a unique example of a model supported by the general equilibrium arguments (see Cox, Ingersoll, and Ross, 1985). CIR argued that the fixed income investment opportunities should not be dominated by neither expected return (the rate), nor the risk. The latter was associated with the return variance, thus suggesting that volatility-squared should be of the same magnitude as the rate:

$$ d r = a (t) (\theta (t) - r) d t + \sigma (t) \sqrt {r} d z \tag {9}
$$

Equation (9) is actually a no-arbitrage extension to the "original CIR" that allows fitting the initial rate and volatility curves. Since the volatility term is proportional to the square root of the short rate, the latter is meant to remain positive. The extended CIR model is analytically tractable, but to a lesser extent than the HW model. Perhaps the most important result of CIR is that the long zero-coupon rates are also proven linear in the short rate—in line with (8). However, the slope function has now a quite different form; it depends on both maturity  $T$  and time  $t$  and is found as  $B_{T}(t) = -b(t,t + T) / T$ . Function  $b(t,T)$  used in this expression solves a Ricatti-type differential equation, considered for any fixed maturity  $T$ :

$$
\frac {d b (t , T)}{d t} = a (t) b (t, T) - \frac {1}{2} \sigma^ {2} (t) b ^ {2} (t, T) + 1 \tag {10}
$$ subject to terminal condition  $b(T,T) = 0$ .


If the mean reversion  $a$  and "CIR volatility"  $\sigma$  are constant (the "original CIR"), equation (10) allows for an explicit solution. In this case,  $b(t,T)$  is a function of  $T - t$  only, and  $B_{T}$  is appeared to be time-independent:

$$
B _ {T} = \frac {2 \left(e ^ {\gamma T} - 1\right)}{\left(\gamma T + a T\right) \left(e ^ {\gamma T} - 1\right) + 2 \gamma T} \tag {11}
$$ where  $\gamma = \sqrt{a^2 + 2\sigma^2}$


Without a mean reversion, this formula reduces to a more concise

$$
B _ {T} = \frac {\tanh  (\gamma T / 2)}{(\gamma T / 2)}
$$

Note that this ratio is always less than 1. This means that the long rates are less volatile than the short one, even without a mean reversion. This is in contrast to the HW model where, with  $a = 0$ , the yield curve would experience a strictly parallel reaction to a short rate shock.

Generally speaking, calibration to the currently observed short forward curve  $f(T)$  cannot be done as elegantly and explicitly as in the HW model. Once the  $b(t,T)$  function is found, the calibrating function  $\theta (t)$  satisfies an integral equation:

$$
- f (T) = \int_ {0} ^ {T} \frac {d b (t , T)}{d T} \theta (t) a (t) d t + \frac {d b (0 , T)}{d T} r _ {0} \tag {12}
$$

Numerical methods, well developed for integral equations, should be employed.

It is established that all zero-coupon rates, under the CIR model, have noncentral  $\chi^2$  distributions and remain positive. Economic rationale, nonnegative rates, and analytic tractability have made the CIR model deservedly popular; it is one of the most attractive and useful interest rate models. It is also consistent with the Japanese market and some periods of the U.S. rate history when rates were very low.

# The Squared Gaussian Model

To describe the squared Gaussian model (SqG model, and also known as the quadratic model), we employ a linear differential equation (4) only to define an auxiliary variable  $x(t)$ ; we then define the short rate in a form of its square:

$$ d x = - a (t) x d t + \sigma (t) d z
$$

$$ r (t) = [ R (t) + x (t) ] ^ {2} \tag {13}
$$

For convenience, we removed previously used arbitrage-free function  $\theta(t)$  from the first equation and introduced a deterministic calibrating function  $R(t)$  to the second equation serving the same purpose. Note that we could have introduced the HW model similarly by defining the short rate as  $r(t) = R(t) + x(t)$ . Ito's lemma allows us to convert model (13) to a single stochastic differential equation for the short rate:


$$
\begin{array}{l} d r = \left[ 2 R ^ {\prime} \sqrt {r} - 2 a (r - R \sqrt {r}) + \sigma^ {2} \right] d t \\ + 2 \sigma \sqrt {r} d z \tag {14} \\ \end{array}
$$ where  $R'$  stands for  $dR / dt$ . The SqG model has an apparent similarity to the CIR model in that its volatility term is proportional to the square root of the short rate, too. However, comparing stochastic equations (14) and (9) we see that they have different drift terms.


The SqG model has been studied by Beagle-hole and Tenney (1991), Jamshidian (1996), and Pelsser (1997), among others. The most notable fact established for the SqG model is that any zero-coupon rate  $r_T(t)$  is quadratic in  $x(t)$  that is linear in the short rate  $r(t)$  and its square root  $\sqrt{r(t)}$ :

$$
\begin{array}{l} (T - t) r _ {T} (t) = A (t, T) - B (t, T) \sqrt {r (t)} \\ - C (t, T) r (t) \tag {15} \\ \end{array}
$$

Functions  $A$ ,  $B$ , and  $C$  satisfy a system of ordinary differential equations:

$$
A ^ {\prime} = B R ^ {\prime} + \sigma^ {2} \left(\frac {1}{2} B ^ {2} + C\right) + a R B \tag {16a}
$$ with  $A(T,T) = 0$


$$
B ^ {\prime} = a B - 2 C R ^ {\prime} - 2 a C R - 2 \sigma^ {2} B C \tag {16b}
$$ with  $B(T,T) = 0$


$$
C ^ {\prime} = 1 + 2 a C - 2 \sigma^ {2} C ^ {2} \tag {16c}
$$ with  $C(T,T) = 0$


where, for brevity,  $A^{\prime}$  and the like denote derivatives with respect to time  $t$  and the dependence of all functions on  $t$  and  $T$  is omitted. Note that all the terminal conditions are set to zero. Indeed, once  $t$  is equal to  $T$ , both sides of the relationship (15) must become zero for any value of  $r$ ; this is possible if and only if functions  $A$ ,  $B$ , and  $C$  turn to zero. Much like in the CIR model, equation (16c) for the linear term's slope, this time denoted via  $C$ , is of a Riccati type (see Boyle, Tian, and Guan, 2002) and can be solved in a closed-end form. In fact, it is identical to already solved equation (10) except it operates with a doubled mean reversion and a doubled volatility. Other equations in (16) and calibration to the initial yield curve can be solved numerically.


The short rate has a noncentral  $\chi^2$  distribution with 1 degree of freedom. Long rates are mixtures of normal and  $\chi^2$  deviates. Like the CIR model, the SqG model ensures positive rates; the square-root specification of volatility is suitable for many options. Due to some analytical tractability and known form for long rates, the volatility function and mean reversion can be quite accurately calibrated to traded options.

# The Black-Karasinski Model

Once a very popular model, the Black-Karasinski model (BK model) expresses the short rate as  $r(t) = R(t)\exp [x(t)]$ , where, as in the previous case, random process  $x(t)$  is normally distributed (see Black and Karasinski, 1991). The short rate is, therefore, lognormally distributed. Assuming the same process for  $x(t)$  we can write the stochastic differential equation for the short rate as

$$ d r = r \left(\frac {R ^ {\prime}}{R} + \frac {1}{2} \sigma^ {2} - a \ln \frac {r}{R}\right) d t + r \sigma d z \tag {17}
$$

The rate's absolute volatility is therefore proportional to the rate's level. Although the entire short-rate distribution is known (including the mean and variance), no closed-form pricing solution is available. This is because the cumulative discount rate, the integral of  $r$ , has an unknown distribution. Traditionally, the BK model is implemented on a tree. Calibration to the yield curve and volatility curve can be done using purely numeric procedures. For example, one could iterate to find  $R(t)$  period-by-period until all the coupon bonds or zero-coupon bonds (used as input) are priced exactly. Alternatively, one could find approximate formulas and build a faster, but approximate scheme.


Despite its past popularity, the BK model's main assumption, the rate's lognormality, is not supported by the recent rate history. The volatility parameter  $\sigma$  entering the BK model is not the same as the Black volatility typically quoted for swaptions or LIBOR caps. For example, selecting  $\sigma = 0.15$ ,  $a = 0$  does not ensure  $15\%$  volatility even for European options on short rates (caplets). Hence, calibration of the model to volatilities found in the option market is not an easy task.

# The Flesaker-Hughston Model

The Flesaker-Hughston model (FH) is an interesting model because it is different from all previously described ones in that it allows for computing the coupon rates analytically (see Flesaker and Hughston, 1996). The model starts with defining a random process  $M(t)$ , which is any martingale starting from 1, and two deterministic positive functions  $A(t)$  and  $B(t)$ , decreasing with time  $t$ . Then, at any point of time  $t$ , a zero-coupon bond maturing at  $T$  has its price in a rational functional form of  $M(t)$ :

$$
P (t, T) = \frac {A (T) + B (T) M (t)}{A (t) + B (t) M (t)} \tag {18}
$$

Taking the natural logarithm of this expression, changing the sign, and dividing it by  T - t  gives us, of course, the zero-coupon rate. In order to derive a coupon rate  c(t,T) , let us recall that a coupon-bearing bond generates periodic payments at a rate of  c  and returns the principal amount (1) at maturity. Let us denote the time-t value of this bond as  P^c (t,T) :

$$
P ^ {c} (t, T) = \sum_ {i = 1} ^ {n} c P (t, t _ {i}) + P (t, T)
$$ where  $t_i$  are the timings of coupon payments, with  $t_n = T$ . To express the par coupon rate  $c$ , let us equate this  $P^c(t,T)$  to 1 and substitute


postulated expression (18) for all discount factors:

$$
\begin{array}{l} c (t, T) = \frac {A (t) - A (T) + [ B (t) - B (T) ] M (t)}{\sum_ {i = 1} ^ {n} [ A (t _ {i}) + B (t _ {i}) M (t) ]} \\ r (t) = - \frac {A ^ {\prime} (t) + B ^ {\prime} (t) M (t)}{A (t) + B (t) M (t)} \tag {19} \\ \end{array}
$$

Hence, all coupon rates and the short rate are too rational functions of  $M(t)$ . If we select a positive martingale process  $M(t)$ ; for example, a lognormal one,  $dM = \sigma Mdz$ , then all rates will stay positive. Functions  $A(t)$  and  $B(t)$  can fit the initial term structure of rates and volatilities. (See Flesaker and Hughston, 1996, or James and Webber, 2000, for additional details.)

# Other Single-Factor Models

There exists a fair amount of "named" models not mentioned in this entry thus far. They differ in specifications of drift and volatility functions. They include the Ho-Lee model, the Black-Derman-Toy model, and the Brennan-Schwartz model. We will briefly review some of them.

A predecessor to the HW model, the Ho-Lee model (HL model) was offered as a discrete-time, arbitrage-free, model (see Ho and Lee, 1986). Its continuous version is equivalent to the HW model with zero mean reversion. Hence, all analytical statements made for the HW model are valid for the HL model.

The Black-Derman-Toy model (BDT model) is a lognormal short-rate model with endogenously defined mean reversion term equal to  $\sigma'(t) / \sigma(t)$  (see Black, Derman, and Toy, 1990). This specification means that a constant volatility leads to a zero mean reversion; a growing short-rate volatility function  $\sigma(t)$  causes a negative mean reversion, thereby destabilizing the process. Once very popular in financial industry, BDT was replaced by the BK model; both of these models are now recognized as outdated.

The Brennan-Schwartz model is a proportional volatility, mean-reverting, short-rate model (see Brennan and Schwartz, 1979). Introduced in 1979 as an equilibrium model, it has some similarity in its volatility specification to lognormal models; however, rates are not lognormally distributed.


# Calibration Issues

The Vasicek model and the original Cox-Ingersoll-Ross model laid the foundation of term structure modeling. Despite their unquestionable historical importance, traders almost never employ them today. The reason is fairly simple: Built with constant parameters, these models can't be calibrated to the market accurately enough. The extensions, known as the Hull-White ("extended Vasicek") model and the extended CIR model, allow for selecting time-dependent functions  $a(t)$ ,  $\sigma(t)$ , and  $\theta(t)$  so that the model produces exact or very close prices for a large set of widely traded fixed income instruments, ranging from option-free bonds (or swaps) to European ("vanilla") options on them and more. In particular, function  $\theta(t)$  [or  $R(t)$ ] is normally selected to fit the entire option-free yield curve as formula (5) demonstrates. In contrast, functions  $a(t)$ ,  $\sigma(t)$  are usually found to match prices of European options. For example, using just a pair of constants  $(a, \sigma)$  one can match exactly prices of two options, for example, a 1-year swaption on the 2-year swap and 10-year swap. Clearly, we can match many more expiration points if we make  $a(t)$ ,  $\sigma(t)$  time dependent. In some systems, volatility function is allowed to be time dependent, but mean reversion remains a positive constant. This way, one can fit options' expiration curve only on average, but the model remains stable and robust. Note that a negative mean reversion may destabilize the dynamic process.

As we pointed out, single-factor models possess various degrees of analytical tractability. When using the HW model, a large portion of calibration work can be done analytically—starting from formula (5). The CIR model and the SqG model are somewhat analytical, but, practically speaking, require numerical solutions to ordinary differential equations. The BK model has no known solution at all. A lack of analytical tractability doesn't preclude using numerical methods or efficient analytical approximations that are beyond this entry.


Single-factor models can't be calibrated to all market instruments. For example, each of the models we have considered thus far creates certain dependence of a European option's value (hence the implied volatility) on an option's strike known as volatility skew. Once a model is selected, luckily or not (see the next section), the skew implied by it cannot be changed by the model's parameters. Another problem is that all rates are perfectly correlated in any single-factor model. Hence, none of them can replicate values of "spread options" or "curve options," that is, special derivatives that are exercised when the yield curve flattens or steepens. The solution may lie in using multifactor models as discussed further in this entry.

# WHICH MODEL IS BETTER?

The HW model, the CIR model, the SqG model, and the BK model are special cases of a more general class of "CEV models" introduced in 1980s:

$$ d r = (D r i f t) d t + \sigma r ^ {\gamma} d z \tag {20}
$$

Parameter  $\gamma$  is called constant elasticity of variance (CEV). For  $\gamma = 0$  we may have the HW model; for  $\gamma = 0.5$ , the CIR model or the SqG model; for  $\gamma = 1$ , the BK model. There exist no specific economic arguments supporting the  $r^{\gamma}$  functional form for volatility. Often, the CEV constant lies between 0 and 1, but it is not necessary.

# Measuring Volatility Skew

Blyth and Uglum (1999) linked the CEV constant to the volatility skew; that is, its dependence of the Black volatility (also called implied volatility) on the option's strike, found in the swaption market. They argue that market participants should track the Black volatility ac cording to the following simple formula:


$$
\frac {\sigma_ {K}}{\sigma_ {F}} \approx \left(\frac {F}{K}\right) ^ {\frac {1 - \gamma}{2}} \tag {21}
$$ where  $\sigma_{K}$  is the Black volatility for the option struck at  $K$ ,  $\sigma_{F}$  is the Black volatility for the "at-the-money" option struck at today's forward rate,  $F$ . Importantly, one can recover the best CEV constant to use in the model by simply measuring the observed skew.


The skew measured for the 5-year option on the 10-year swap quoted for the period of 1998 to 2004 suggests  $\gamma = 0.14$  being optimal, on average. This means that the most suitable model lies between the HW model and the CIR/SqG model (Figure 1). It is also seen that low-struck options are traded with a close-to-normal volatility, while high-struck options are traded with a square-root volatility profile. This fact may be a combination of the "smile" effect discussed at the end of this entry and the broker commission demand. As shown a little further, the square-root volatility specification becomes very suitable in a low-rate environment.

The most recent tendency has been clearly toward  $\gamma = 0$ , that is, normality (Figure 2), thereby making the HW model the best single-factor model choice currently. Note that neither the rate history of the 20-year period from 1991 to 2010, nor the available swaption volatility skew data support lognormality, although earlier rate history did appear to support  $\gamma > 1$ .

# Using the Volatility Index

To compare rate models, it is useful to design a market volatility index—a single number reflecting the overall level of option volatility deemed relevant to the interest rate market. Levin (2004) describes a method of constructing such an index by first designating a family of at-themoney (ATM) swaptions ("surface"); that is, options on swaps struck exactly at current forward rate. Then, assuming zero mean reversion, one can optimize for the single short-rate volatility constant  $\sigma$  (volatility index) best matching the swaptions' volatility surface, on average. This

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/66256f4b-1176-4bdd-adf3-458dec1636a0/44f30a120f6e8e191f5682da14310b01fdd68c230a8d8dd445b5c7fbf9a16202.jpg)
Figure 1 Implied Volatility Skew on 5-Year-into-10-Year Swap (1998-2004 Average)
*Source of actual volatility: Bank of America; volatility for 200 bps ITM/OTM was not quoted.

measure is model-specific; unlike some other volatility indexes, it is not a simple average of swaption volatilities. The internal analytics of each model, exact or approximate, are used to translate the short rate volatility constant into swaption volatilities used for calibration. Note that this constant-volatility, zero mean rever sion setup is employed only to define the index; it is not a recommended setup for pricing complex instruments.


Figure 3 depicts the history of three volatility indexes (sigmas) computed from the beginning of 2000 for the HW model, the BK model, and the squared Gaussian model. Each index is calibrated to the same family of equally weighted ATM swaptions on the 2-year swap and the 10-year swap with expirations ranging from 6 months to 10 years. We add for comparison a line for the 7-year rate level, and scale all four lines so that they start from 1.0.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/66256f4b-1176-4bdd-adf3-458dec1636a0/fdfb6b9e97beb8128af6676a3c317e7b5695476d58e2bfb453d2bfffbe2f280e.jpg)
Figure 2 Historical CEV Values

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/66256f4b-1176-4bdd-adf3-458dec1636a0/638fcc07826d7f83df34f28822f11751868195d52833c345e8cf6861accd2f57.jpg)
Figure 3 Which Volatility Index Is Most Stable?


Figure 3 strongly confirms the normalization of the interest rate market; the volatility index constructed for the HW model has gradually become the most stable one. For example, the swap rate plunged a good  $60\%$  between January 2000 and June 2003, but the HW volatility index barely changed. The two other models produced volatility indexes that looked mirror-reflective of the rate level (the lognormal model does by far the worst job). A similar observation applies to the 2007-2010 period.

Interestingly enough, the SqG index was stable for most of 2003 and could handle the record-setting rate plunge. This confirms that the square root volatility pattern may outper form others when the rates are very low. These findings are consistent with the swaption skew measures we have discussed. This is not a coincidence at all. People who set the market for the ATM swaptions are the same ones who trade out-of- and in-the-money options.


In the sections to follow we will discuss how to extend the short-rate modeling framework to multifactor models and jump-diffusion models, which are often constructed in so-called affine analytical form.

# ADDING A SECOND FACTOR TO SHORT-RATE MODELS

Let us consider a fixed income instrument that pays floating coupons indexed to some short rate (such as the 3-month LIBOR). The payer does not want to pay too much in case the curve inverts, so a cap is established equal to the level of some long, say 10-year, rate.

How much is this cap worth? Practically speaking, the curve's inversion is not so rare a phenomenon of the fixed income market. However, if the initial curve is steep, we will greatly undervalue the cap using any of the single-factor models described above. This example highlights the limitation of single-factor modeling: All rates change in unison. Instruments that contain "curve options," that is, asymmetric response to a curve's twist or butterfly moves, cannot be valued using single-factor term structures. Much more complex examples requiring multifactor modeling include American or Bermudan options, certain collateralized mortgage obligations (CMOs) that are much shorter or longer than the collateral itself.

Mathematically, a two-factor normal model can be constructed in a fairly simple way. Suppose that, instead of having one auxiliary Gaussian variable  $x(t)$ , we have two,  $x_{1}(t)$  and  $x_{2}(t)$ , that follow linear stochastic differential equations:

$$
\begin{array}{l} d x _ {1} = - a _ {1} (t) x _ {1} d t + \sigma_ {1} (t) d z _ {1} \\ d x _ {2} = - a _ {2} (t) x _ {2} d t + \sigma_ {2} (t) d z _ {2} \tag {22} \\ \end{array}
$$

Brownian motions  $z_{1}(t)$  and  $z_{2}(t)$  may have correlated increments,  $corr[dz_1,dz_2] = \rho$ . Let us assume that  $\rho$  is equal to neither  $+1$  nor  $-1$ , and mean reversions  $a_{1}(t)$  and  $a_{2}(t)$  are positive and not identical to one another. These conditions ensure that the system (22) is stable and cannot be reduced to single-factor diffusion.

We now define the short rate simply as  $r(t) = R(t) + x_1(t) + x_2(t)$  where deterministic function  $R(t)$  is chosen to fit the initial yield curve. The short rate will be normally distributed; it can be shown that such a model possesses analytical tractability similar to the Hull-White single-factor model, see Levin (1998). In particular, the calibrating function  $R(t)$  can be computed in a closed-end form given the forward curve,  $f(t)$ . The long zero-coupon rates are linear in  $x_1(t)$  and  $x_2(t)$ ,

$$ r _ {T} (t) = A (t, T) + B _ {1 T} (t) x _ {1} (t) + B _ {2 T} (t) x _ {2} (t)
$$

Functions  $B^{\prime}$  s depend on time  $t$  only if the mean reversions  $a^\prime$  s do. If  $a^\prime$  s are constant, then  $B^{\prime}$  s depend only on maturity  $T$  and have a familiar form:  $B_{iT} = (1 - e^{-a_i T}) / a_i T$ ,  $i = 1$  or 2.

The normal deviates,  $x_{1}(t)$  and  $x_{2}(t)$ , bear no financial meaning. However, we can complement the short rate with an independent "slope" variable,  $v = x_{1} + \beta x_{2}$  with

$$
\beta = - \sigma_ {1} (\sigma_ {1} + \rho \sigma_ {2}) / \sigma_ {2} (\sigma_ {2} + \rho \sigma_ {1}) \neq 1
$$

The new variable has increments  $dv$  mathematically uncorrelated to  $dr$ ; it therefore can be interpreted as the driver of long rates independent of the short rate. The underlying processes,  $x_{1}(t)$  and  $x_{2}(t)$ , can be transformed differently, thereby creating a pair of state variables with desired financial meanings, see Levin (2001). Levin (1998) developed a three-point calibration method that analytically computes parameters of the two-factor model using volatility of and correlation between the short rate and two arbitrary long rates. The method allows for constructing term structure models with interrate correlations selected by the user and maintained steadily over time. The latter property can be achieved by constructing a model with constant mean reversion parameters  $a_{1}$  and  $a_{2}$ , and a constant  $\sigma_{1}(t) / \sigma_{2}(t)$  ratio.

Interestingly enough, all stable two-factor normal models having two real eigenvalues can be presented in the above-written form. Hull and White (1994) introduced a two-factor model that was designed in the form of a single-factor HW model for the short rate (factor 1) with a random long-term equilibrium rate (factor 2). Their approach draws on Brennan and Schwartz (1979). It is now clear that such an appeal to the financial meaning was unnecessary, and the general mathematical approach is as good or even better.

If we transform  $x_{1}(t)$  and  $x_{2}(t)$  nonlinearly, we will get multifactor versions of other previously considered models. For example, we could define the short rate as  $r(t) = R(t)\exp [x_1(t) + x_2(t)]$ , thereby creating a two-factor lognormal model. As one would expect, these models inherit main properties of the single-factor parents, but add a greater freedom in changing the curve's shape and calibrating to volatility and correlation structures.


# THE CONCEPT OF AFFINE MODELING

Affine modeling is a term introduced by Duffie and Kan (1996). It is a class of term structure models, often multifactor, where all zero-coupon rates are linear functions of factors. Therefore, the zero-coupon bond pricing has an exponential-linear form. Let us revisit the general stochastic model given by

$$ d r = (D r i f t) d t + (V o l a t i l i t y) d z
$$

Duffie and Kan showed that the model will be affine if drift and the square of volatility are both linear in rate  $r$ , or, more generally, in all market factors. In order to illustrate the main idea, let us denote the drift term as  $\mu(x,t)$ , the volatility term as  $\sigma(x,t)$ , and assume for the sake of simplicity that  $r = x$ , the lone market factor.

Every financial derivative satisfies a partial differential equation, see Duffie (1996). The left-hand side of this equation is equal to the investment's arbitrage-free expected return, which is the product of price  $(P)$  by the short rate  $(r)$ . The right-hand side collects all the terms arising in the course of random behavior of  $P(x,t)$ : the decay, the drift, the diffusion, and cash received. In particular, a zero-coupon bond receives no cash; its equation is

$$
\begin{array}{l} r P (x, t) = \frac {\partial P (x , t)}{\partial t} + \mu (x, t) \frac {\partial P (x , t)}{\partial x} \\ + \frac {1}{2} \sigma^ {2} (x, t) \frac {\partial^ {2} P (x , t)}{\partial x ^ {2}} \tag {23} \\ \end{array}
$$ subject to the terminal condition,  $P(x,T) = 1$  (bond pays sure \$1 at maturity regardless of the market conditions). Suppose now that functions  $\mu(x,t)$  and  $\sigma^2(x,t)$  are linear in  $x$ :


$$
\begin{array}{l} \mu (x, t) = \alpha_ {1} (t) + \alpha_ {2} (t) x; \\ \sigma^ {2} (x, t) = \beta_ {1} (t) + \beta_ {2} (t) x \\ \end{array}
$$

It turns out that the solution to equation (23) will have an exponential-linear form:

$$
P (x, t) = \exp [ a (t, T) + b (t, T) x ]
$$

To prove this conjecture, we place the above expressions into equation (23), take all derivatives, and observe that all the terms are either independent of  $x$  or linear in  $x$ . Collecting them, we get two ordinary differential equations defining unknown functions  $a(t,T)$  and  $b(t,T)$ :

$$ b _ {t} ^ {\prime} (t, T) = - \alpha_ {2} (t) b (t, T) - \frac {1}{2} \beta_ {2} (t) b ^ {2} (t, T) + 1
$$

$$ b (T, T) = 0 \tag {24}
$$

$$ a _ {t} ^ {\prime} (t, T) = - \alpha_ {1} (t) b (t, T) - \frac {1}{2} \beta_ {1} (t) b ^ {2} (t, T)
$$

$$ a (T, T) = 0 \tag {25}
$$

The terminal conditions for  $a(t,T)$  and  $b(t,T)$  are dictated by the terminal condition for the price function,  $P(x,T) = 1$ . Note that equation (24) defines function  $b(t,T)$ ; once it is solved, we can solve (25) for  $a(t,T)$ .

It is clear that the HW model and the CIR model we considered earlier in the entry were affine. Indeed, in the HW model,  $\beta_{2}$  is zero,  $\alpha_{2}$  is  $-a$ ,  $\beta_{1}$  is  $\sigma^{2}$ , and (24) becomes a linear differential equation. In the CIR model,  $\beta_{1}$  is zero,  $\alpha_{2}$  is again  $-a$ , and  $\beta_{2}$  is  $\sigma^{2}$ ; (24) becomes the Ricatti equation (10). In fact, these two models cover all most important specifications of the affine modeling, for the single-factor case. The concept of affine modeling lets us build multifactor models systematically. The two-factor Gaussian model we introduced above was affine, too. Much more complex three-factor affine models were analyzed by Balduzzi et al. (1996) and by Dai and Singleton (2000). Among early works we should mention the model of Longstaff and Schwartz (1992). In their model, both the short rate and its volatility are affine in two factors that follow CIR-like processes.

# The Jump-Diffusion Case

All term structure models considered thus far are based on diffusion—a continuous random disturbance known as Brownian motion (Wiener process),  $z(t)$ . Short rates are somewhat jumpy and may require an addition of the Poisson process for modeling. The jump-diffusion extension to the affine modeling concept has been considered by many researchers (see Duffie and Kan, 1996; Das et al., 1996; and Das, 2000). The key point is that, under certain conditions, addition of jumps does not change the complexity of the problem; long rates remain affine in factors and even equation (24) for  $b(t,T)$  remains unaffected.


Under the presence of jumps, the main stochastic differential equation for the short rate (or other market factors) gets an additional term as shown below:

$$ d r = (D r i f t) d t + (V o l a t i l i t y) d z + (J u m p V o l a t i l i t y) d N
$$ where  $N$  is the Poisson-Merton jump variable having intensity of  $\lambda$ . When a jump occurs,  $dN$  is drawn from the standard normal distribution  $N_{[0,1]}$ ; it stays 0 otherwise. Continuing our affine-model notational style, let us denote the jump volatility term as  $\sigma_j(t)$  and the jump intensity as  $\lambda(x,t)$ . Note that we allow jump's intensity, but not the size, to be factor dependent.


With jumps, the partial differential equation (23) will get one additional term to its right-hand side. If a jump of size  $\delta$  occurs, the price of a zero-coupon bond,  $P(x,t)$  before the jump, will become  $P(x + \delta ,t)$ . The expected change of price can be written as

$$
\int_ {- \infty} ^ {\infty} [ P (x + \delta , t) - P (x, t) ] n _ {[ 0, \sigma_ {j} ]} (\delta) d \delta
$$ where, as usual,  $n$  denotes a normal density function. This expression captures the randomness of the jump's size, not the randomness of the jump's occurrence. Multiplying it by the probability of a jump to occur between  $t$  and  $t + dt$  (that is,  $\lambda dt$ ) we get the cumulative expected effect of price change. Finally, dividing by  $dt$  we get the annualized return component caused by the jumps. Therefore, the partial


differential equation (23) will now become a partial integral-differential equation:

$$
\begin{array}{l} r P (x, t) = \frac {\partial P (x , t)}{\partial t} + \mu (x, t) \frac {\partial P (x , t)}{\partial x} + \frac {1}{2} \sigma^ {2} (x, t) \frac {\partial^ {2} P (x , t)}{\partial x ^ {2}} \\ + \lambda (x, t) \int_ {- \infty} ^ {\infty} [ P (x + \delta , t) - P (x, t) ] n _ {[ 0, \sigma_ {j} ]} (\delta) d \delta \tag {26} \\ \end{array}
$$

For the diffusion case, we required functions  $\mu (x,t)$  and  $\sigma^2 (x,t)$  to be linear in  $x$ . Let us extend this condition to the jump's intensity:  $\lambda (x,t) = \gamma_{1}(t) + \gamma_{2}(t)x$ . It turns out that the exponential-linear form  $P(x,t) = \exp [a(t,T) + b(t,T)x]$  still fits the equation. Again, collecting terms, we get two ordinary differential equations defining unknown functions  $a(t,T)$  and  $b(t,T)$ :

$$
\begin{array}{l} b _ {t} ^ {\prime} (t, T) = - \alpha_ {2} (t) b (t, T) - \frac {1}{2} \beta_ {2} (t) b ^ {2} (t, T) \\ - \gamma_ {2} (t) [ e ^ {\frac {1}{2} b ^ {2} (t, T) \sigma_ {f} ^ {2} (t)} - 1 ] + 1 \\ \end{array}
$$

$$ b (T, T) = 0 \tag {27}
$$

$$
\begin{array}{l} a _ {t} ^ {\prime} (t, T) = - \alpha_ {1} (t) b (t, T) - \frac {1}{2} \beta_ {1} (t) b ^ {2} (t, T) \\ - \gamma_ {1} (t) \left[ e ^ {\frac {1}{2} b ^ {2} (t, T) \sigma_ {j} ^ {2} (t)} - 1 \right] \\ \end{array}
$$

$$ a (T, T) = 0 \tag {28}
$$

Notably, equation (27) defining function  $b(t,T)$  will coincide with previously discussed equation (24) if  $\gamma_{2} = 0$ . If we have a single-factor model, the linear relationship between long rates and the short rate will have a slope of  $b(t,t + T) / T$ . This slope, found for an affine diffusive model, won't change if we add jumps of factor-independent intensity and size. Hence, in such affine models, jumps and diffusions are equally propagated from the short rate to long rates. Knowing that actually observed long rates are chiefly diffusive and the short rate is notably jumpy, one can conclude that the jump-diffusive setting makes more practical sense within the frame of multifactor modeling.

Using jump-diffusion models may be required when valuing options struck away from the current forward rate (that is, the ATM point). Aside from the volatility skew, option pricing features volatility smile, or simply an

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/66256f4b-1176-4bdd-adf3-458dec1636a0/d312637023ff4542b2e836340138feba8b1a53d837fc297903d315e8fe3c5f14.jpg)
A. 1-month Expiration on Various Swap Tenors

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/66256f4b-1176-4bdd-adf3-458dec1636a0/7674e3fc69e2b24f74dd26f3c2f361bbfdda710d93d8379f9bb8dcdc6a4ead72.jpg)
B. 6-month Expiration on Various Swap Tenors

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/66256f4b-1176-4bdd-adf3-458dec1636a0/c38bcc18213e469dbfc2330c634deb03a12a2b042c30b7ad0fa28545fab54fd0.jpg)
C. 2-year Expiration on Various Swap Tenors excessive convexity in  $\sigma_{K}$ . Revisiting Figure 1, one can notice that the actual dependence of volatility on the strike is more convex than even the optimal CEV model predicts. This is the smile effect, albeit fairly moderate for options on long rates. Smiles for options on shorter rates are very apparent, especially for short ex
Figure 4 Daily Normalized Volatility Smile for Traded Swaptions (bp/day) Data are courtesy of Bear Stearns, January 2007.


pirations. Figure 4 depicts swaption volatility measured in basis points per day, as a function of strike.

In this normalized scale, all panels of Figure 4 exhibit similar volatility skews, the ones close to normal  $(\mathrm{CEV} = 0)$ . However, the smile effect looks very different in panels A, B, and C; it clearly fades with maturity of the underlying rate and the option's expiry. The presence of jumps fattens the distribution tails and inflates out-of-the money or in-the money option values relatively to the ATM values. Therefore, jump modeling can capture the smile effect and explains its dependence on the swap's maturity and the option's expiry: Jumps allowed to occur over a longer time horizon look more like diffusion.


# KEY POINTS

- The concept of short-rate modeling serves as a foundation for the fixed-income derivatives market.
- Short-rate models can be single- or multifactor, but their central object is a theoretical risk-free rate. Models employed in the financial markets have to be calibrated to the initial yield curve and simple options; some models let us solve this task analytically.
- There are a number of single-factor models that differ with respect to their distribution of rates, interrate relationships, and ability to fit the swaption market; the Hull-White (normal) model seems to fit the observed volatility skew the best.
- A two-factor normal model can be constructed by borrowing the recipes of so-called "affine" models; such a model can be used to price complex derivatives that are asymmetrically exposed to changes in the yield curve's shape.
- With jumps included, models can be employed to capture volatility "smile," that is, value options struck far out-of- or in-the-money.

# ACKNOWLEDGMENTS

The author wishes to thank Andrew Davidson for his help in shaping this material, Will Searle for his comments, and Nancy Davidson for her editorial work.

# REFERENCES

Balduzzi, P., Das, S., Foresi, S., and Sundaram, R. (1996). A simple approach to three factor affine term structure of interest rates. Journal of Fixed Income 6: 43-53.
Beaglehole, D., and Tenney, M. (1991). General solution of some interest rate contingent claim pricing. Journal of Fixed Income 1: 69-83.
Black, F., Derman, E., and Toy, W. (1990). A one factor model of interest rates and its application to the Treasury bond option. Financial Analyst Journal (January–February 1990): 33–39.
Black, F., and Karasinski, P. (1991). Bond and option pricing when short rates are lognormal. Financial Analysts Journal (July-August): 52-59.
Blyth, S., and Uglum, J. (1999). Rates of skew. Risk (July): 61-63.
Boyle, P., Tian, W., and Guan, F. (2002). The Riccati equation in mathematical finance. Journal of Symbolic Computation 22, 3: 343-356.
Brace, A., Gatarek, D., and Musiela, M. (1997). The market model of interest rate dynamics. Mathematical Finance 7: 127-155.
Cox, J. C., Ingersoll, J. E., and Ross, S. A. (1985). A theory of the term structure of interest rates. Econometrica 53: 385-407.
Cox, J.C., J.E. Ingersoll and S.A. Ross (1985). 'A Theory of the Term Structure of Interest Rates', Econometrica 53: 385-407.
Dai, Q., and Singleton, K. (2000). Specification analysis of affine term structure models. Journal of Finance 55, 5: 1943-1978.
Davidson, A., Sanders, A., Wolff, L., and Ching, A. (2003). Securitization: Structuring and Investment Analysis. Hoboken, NJ: John Wiley & Sons.
Das, S. (2000). Interest rate modeling with jump-diffusion processes. In N. Jegadeesh and B. Tuckman (eds.), Advanced Fixed-Income Valuation Tools (pp. 162-189). Hoboken, NJ: John Wiley & Sons.
Das, S., Balduzzi, P., Foresi, S., and Sundaram, R. (1996). A simple approach to three factor affine models of the term structure. Journal of Fixed Income 6, 3: 43-53.
