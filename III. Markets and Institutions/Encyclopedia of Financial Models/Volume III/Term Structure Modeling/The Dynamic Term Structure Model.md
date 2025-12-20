
# The Dynamic Term Structure Model

DAVID AUDLEY, PhD

Senior Lecturer, The Johns Hopkins University

RICHARD CHIN

Investment Manager, New York Life Investments

PETER C. L. LIN

PhD Candidate, The Johns Hopkins University

SHRIKANT RAMAMURTHY

Consultant, New York, NY

Abstract: The term structure of interest rates represents the cost of (return from) borrowing (lending/investing) for different terms at any one moment in time. The term structure is most often specified for a specific market such as the U.S. Treasury market, the bond market for double A rate financial institutions, the interest rate market for LIBOR and swaps, and so on. The term structure is usually specified via a rate or yield for a given term or the discount to a cash payment at some time in the future. These are often summarized mathematically through a wide variety of models. In addition, term structure models are fundamental to expressing value, risk, and establishing relative value across the spectrum of instruments found in the various interest-rate or bond markets. Dynamic models of the term structure are characterizations that are specifically established to consider future market scenarios where there is uncertainty. As such they are rooted in probability, stochastic process, and martingale theory. Standard models include those derived from assumptions that include a short-rate or a forward rate process as an explanatory factor for the evolution of markets. Instantiations of these models include a general zero-coupon bond pricing equation and the LIBOR market model. An important consideration includes expressing the market price of risk that allows for the complexity of the term structure of interest rates to exist without arbitrage, as found from the traded markets. This consideration provides a platform to analyze bond and interest rate derivatives in the risk-neutral setting or with a real-world/objective probability measure.

Modern financial markets are predicated on the notions of contingency and uncertainty. Many recent financial innovations are directed at coping with the uncertainty of markets and the contingency of obligations. As part of this evolutionary process, dynamic models of securities and their behavior in the markets are at the forefront of financial economic research and application. In the fixed-income markets, this condition dominates and


drives the need for dynamic term structure models.

The dynamic term structure model of a market sector, as defined by a reference set of securities, is a mathematical set of relationships that can be used to characterize any security in that market sector in which market uncertainty dominates the expected timing and receipt of cash flows. There are several qualitative essentials that need to be accommodated by a useful modeling approach. The ability to value fixed-income securities at any point in time (present or future) for conventional or forward settlement is a necessary first step. This is especially true in the valuation of compound or derivative instruments. Indeed, before the value of a bond option may be determined, the ability to calculate the (probabilistic) expected value of the bond on the future exercise date (conditioned on current market condition) is needed. Complementing this, reasonable variations from this expectation also need to be determined and weighed relative to the expected outcome. It is essentially this same idea that allows for the analysis of a futures contract, an interest-rate cap, or an option on a swap. In addition, to determine the performance risk that results from market moves, a rationale for incorporating market changes needs to be embedded into the modeling process.

With these premises in mind, the following assertions regarding dynamic models for the term structure of interest rates are postulated:

- The model must have the capability to extrapolate into the future an equilibrium evolution of the term structure of interest rates, given its form on a specified day, and must preclude riskless arbitrage.
- The model must allow a probabilistic description of how the term structure may deviate from its expected extrapolation while maintaining the model's equilibrium assumption.
- The model must embody a rationale to incorporate perturbations from the equilibrium that correspond to the economic fundamentals that drive the financial markets.

A technical discussion of term structure models is really equivalent to a discussion of the (zero-coupon or) spot-yield curve. The theory of the term structure of interest rates focuses on a term structure model that models the movement of the spot (zero-coupon) yield over time. Such term structure models are developed where any coupon-paying bond may be viewed in terms of its constituent zero-coupon bonds and analyzed in the context of this term structure model.

In this entry we focus on arriving at dynamic term structure models that respond to these imperatives. We first describe a dynamic term structure model in the case of objective (or real-world) probability measures. The assumptions, derivation, and parameterizations of the general model are described. We then indicated how this dynamic term structure model represents zero-coupon bonds, coupon-paying bonds, and determines par-coupon and horizon yield curves. It can also be used to model option-laden bonds and derivatives. The key feature of this model is dependence on a short-rate model as the (single) explanatory factor.

Next, a dynamic term structure model in a risk-neutral measure is presented. It is here that connections between the risk-neutral and the real-world setting are made; the importance of the forward rate model as the key explanatory factor is identified; and the implementation of computational imperatives in the context of applying the model to interest rate derivatives are identified.

# KEY ELEMENTS IN A DYNAMIC TERM STRUCTURE MODEL

The following key ideas guide the development of dynamic term structure models:

Equilibrium
- Arbitrage-free
- Continuous time/continuous state
- Spot rate/forward rates as underlying variable
- Completeness of markets

These five principles not only provide an elegant mathematical formulation of the term structure of interest rates, but also one that is applicable to a number of different market sectors and situations. Later we look at alternatives to the spot rate as the underlying variable and introduce a concept that highlights the market-clearing consequence of equilibrium—namely, the consensus of a fair market as embodied in the idea of a martingale in probability theory and forward rates as the underlying variable.

# EQUILIBRIUM

General equilibrium models of the economy describe the basic workings of the macro economy as a function of a given "state variable." This implies that the production processes and assets that constitute the economy are determined by the value of the state variable. Cox, Ingersoll, and Ross (CIR; 1985) showed that this general equilibrium model of the economy may be used to derive a model for the term structure of interest rates in terms of this state variable. Such an approach is considered to be a general equilibrium model of interest rates in that the interest-rate model is a consequence of a general economic model.

In contrast to general equilibrium models, "partial equilibrium" models assume a particular form of the interest-rate process as a given. This type of approach does not require the particular interest-rate process to be a result of some greater underlying theory. Examples of partial equilibrium models are those of Vasicek (1977), Ho and Lee (1986), and Black, Derman, and Toy (1990), among others. In addition, partial equilibrium models are calibrated exogenously to the current term structure of interest rates. Without this exogenous information, partial equilibrium models cannot quantify the term structure.

On the other hand, general equilibrium models theoretically can specify a term structure independently of any bond-market information. It has been observed, though, that such a term structure (as provided by earlier general equi librium models) may not be consistent with the entire market term structure. For this reason and due to the difficulty that some term structure practitioners have had in quantifying the parameters in the CIR model, many implementers of term structure models have pursued the development of partial equilibrium models.


We approached these issues in the development of this term structure model in a variety of ways. While the model described herein is not purely a general equilibrium model, we began with the basic CIR model as a starting point and then further generalized that model's stochastic interest-rate process. Furthermore, we developed an approach for the specification of CIR-type model parameters such that the derived term structure was consistent with the observed market term structure. Thus, drawing upon a cornerstone in term structure theory, we developed an extension to the CIR model that can be readily applied to the financial marketplace.

# ARBITRAGE-FREE

One underlying principle that the term structure model under discussion shares with many of the above-mentioned references is that the term structure is arbitrage-free. This concept, an extension of the arbitrage-free principles found in the Black-Scholes options theory for commodity and equity markets, states that the term structure observes a given relationship among its constituent parts and that purely arbitrary yield-curve shapes do not occur. Given today's yield curve, subsequent yield curves are assumed to evolve in a "rational" manner that precludes riskless arbitrage. This indicates that the prices of bonds defining the yield curve move in such a way that it is not possible to create a portfolio of securities that always will outperform another portfolio without entailing any risk or net investment; in other words, there is no "free lunch." The arbitrage-free principle plays an important role in the mathematical pricing of fixed-income securities.

# CONTINUOUS TIME/CONTINUOUS STATE

Another distinguishing feature of this term structure model is the strict adherence to the continuous-time/continuous-state approach to the modeling of stochastic processes. This assumes that interest rates and bond prices move in a continuous fashion over time, rather than in discrete jumps. Thus a spot-yield curve may be found for any point in time during the life of a bond, rather than only at specific points (such as a coupon payment date). This concept is consistent with the notion of a continuous yield curve and allows for the use of continuous stochastic calculus.

# Continuous Probability Distributions

Furthermore, the generality of the transitional probability density function, as a complete specification of the statistical properties of the rate process, is maintained throughout the term of the bond. This is in contrast to the common approach of describing individual sample paths or scenarios, as found in Monte Carlo approaches to security analysis. The ability to extend the analyses to compound, derivative instruments is unimpaired through the use of this transitional probability density function. Moreover, the continuous-time/continuous-state approach avoids the computational issues associated with the number of sample paths analyzed. Since the complete specification of the statistical properties is maintained, it is as if an infinite number of sample paths are run.

# Numerical Solution Technique

The computer numerical solution technique that accompanies the continuous-time formulation is one that is well known in the engineering and physical sciences as the Crank-Nicholson finite-difference method for the solution of partial differential equations (PDEs).

This solution technique has been used extensively in the study of aerodynamics and fluid flow, and has the flexibility to focus its computational efforts in areas that require greater numerical precision, such as the time period surrounding an option exercise period. This is in contrast to binomial interest-rate lattices, which are constrained to jump, for example, in six-month intervals, such as in some commercially available applications.

# COMPLETENESS OF MARKETS

One of the key ideas in developing financial models—especially term structure models—is formulating valuation in the context of a replicating portfolio. That is, for a given structure, a portfolio is formed that replicates or hedges the instrument with the same risk-return properties. Then the replicating portfolio dictates the value of the given structure. Otherwise, a self-financing riskless arbitrage can be engaged. Presumably, price convergence would result given sufficient market awareness. Essentially, a market is complete if this can be always done with a certain characterization of uniqueness.

# DYNAMIC TERM STRUCTURE MODEL

The formulation and implementation of the term structure model needs to be completely general so as to be applicable across a broad range of fixed-income markets in a straightforward and consistent manner. For example, once the value of the fixed-income instrument is found, the value of its derivative (such as its futures contract) also may be found. Furthermore, it is possible to value the quality and delivery options within the bond futures contract. These effects also can be incorporated when valuing an option on the bond futures contract.

# General Assumptions

The analytical model that describes spot-rate movement is a one-factor, mean-reverting, diffusion process model. The model assumes:

1. The evolution of interest rates is a continuous process and may be described by a single variable, that is, by the instantaneous spot rate, which is the return on an investment over an infinitesimally short period of time. This allows for the use of continuous-time mathematics, which requires greater technical sophistication, but which increases the flexibility of the mathematical modeling process.
2. The model assumes that interest rates move in a random fashion, which is known as Brownian motion or a Wiener process. The Weiner process has been used in the physical sciences to describe the motion of molecular particles as they diffuse (or spread) over time and space.
3. The term structure of interest rates is assumed to be represented by a Markov process, which states that the future movement in interest rates depends only on the current term structure and that all past information is embodied in the current term structure.
4. The term structure is arbitrage free in that a portfolio of securities derived from the term structure is constrained to have an instantaneous rate of return that is equal to the risk-free rate. Future movements in interest rates are similarly constrained so that the possibility of riskless profit is precluded. This implies that there are a sufficient number of sophisticated investors who will take advantage of any temporary mispricing in the marketplace, thus quickly diluting any arbitrage opportunities that exist.

Technically, an arbitrage-free term structure indicates that a portfolio of securities derived from the term structure may be constructed such that the portfolio instantaneously returns the risk-free rate. Since the above holds true for any arbitrary set of maturities in this portfolio of securities, it is said to be true for all maturities. This indicates that all securities that comprise the term structure are related in a common fashion. This commonality is expressed through the concept of the market price of risk, which is the incremental return over the risk-free rate that is required for incurring a given amount of additional risk. In this context, risk is measured by the variance of a bond's rate of return. A result of the arbitrage-free nature of the term structure is that all securities share the same market price of risk. As we demonstrate at the end of the entry, the risk premium is one component of the market price of risk.


1. The price of a default-free, zero-coupon (discount) bond at any point in time continuously depends on the spot rate, time, and maturity of the bond. This models the interaction between the bond's price and the probabilistic movement in the spot rate. This is an extension of the point discussed earlier that stated the yield of a discount bond is a function of the spot rate.
2. The market is efficient in that all investors have the same timely access to relevant market information. Furthermore, investors are rational and there are no transaction costs.

# SPOT-RATE MODEL

As a result of assumptions 1 through 3 above, the equation that describes the diffusion process for the movement in the spot rate is given by equation (1)

$$ d r = k (\theta - r) d t + \sigma \sqrt{r} d z \tag {1}
$$ where


$r =$  spot rate, the instantaneous rate of return

$dr =$  infinitesimal change in the spot rate

$k =$  mean reversion constant

$\theta =$  "target" spot rate, which will be expressed as a function of time

$dt =$  infinitesimal change in time

$$
\sigma = \text{vo la ti li ty} r
$$

$dz =$  infinitesimal change in the random variable  $z$  (a characterization of the Weiner process)

There are many alternatives to the form (1) (see, for example, Hull, 2009) and while this model has some attractive features, we in no way argue that it is "best." It is just useful and has been shown to work well in practice. Its features include the following.

# Mean Reversion

Equation (1) states that the rate  $r$  changes with respect to time and the degree of randomness. The first term on the right-hand side of equation (1) states that the "drift" in the spot rate over time is proportional to the difference between the rate  $r$  and  $\theta$ . As  $r$  deviates from  $\theta$ , the change in  $r$  is such that  $r$  has a tendency to revert back to  $\theta$ , a feature that is known as mean reversion. The presence of mean reversion imposes a centralizing tendency such that rates are not expected to go to extremely high or low levels. In addition, mean reversion precludes the existence of negative interest rates in our interest-rate model, given that the initial interest rates are positive.

One can easily derive a closed-form expression for  $\theta$  as a function of time. Note that  $\theta$  is not assumed to be constant, which is usually the case for the traditional CIR approach.

# Effect of Randomness

The second term on the right-hand side of equation (1) states that the contribution to the change in  $r$  due to randomness is driven by movements in the random variable  $z$ . The variable  $z$  is normally distributed with a mean of zero and a variance that is proportional to time. This indicates that the amount of random "noise," as represented by the variable  $z$ , may be any positive or negative value, but that its expected value is zero. In addition, as time passes, the variance increases so that the "amplitude" of the noise also increases. The variables  $\sigma$  and  $r$ , which are coefficients of  $dz$  in equation (1), show that the change in  $r$  also depends on the level of volatility and interest rates. The variable  $z$  has its own defined level of uncertainty so that as volatility and rate change, the overall degree of uncertainty is influenced by the level of these variables.


# Endogenous Parameterization (Tuning the Model)

Equation (1) describes the rate in terms of the parameters  $k, \sigma$ , and  $\theta$ . The volatility parameter  $\sigma$  is specified externally so that it reflects either the historical level of volatility or the volatility that is currently present in the market. Secondly,  $\theta$  reflects the current term structure such that the future movements in  $r$  are influenced by today's term structure. Finally, the mean reversion constant  $k$  determines the speed of adjustment of  $r$  back to  $\theta$ . In order for the interest-rate model to be of any utility, the parameter  $k$  is chosen to be consistent with the observed market prices of bonds comprising the current yield curve, while  $\theta$  is derived directly from the current yield curve. This process of determining  $k$  and  $\theta$  "parameterizes" the model to the observed yield curve.

There are several variations of equation (1) that exist within the academic literature that appear to be similar to equation (1); see, for example, Chan et al. (1992). However, the details surrounding the functional form of each term in equation (1) and the associated parameterization process can result in very different models. The specification of parameters for this term structure model is driven by the requirement to be able to precisely reprice the set of securities that constitute the reference yield curve. A properly calibrated term structure model needs to be able to define a bond whose cash flow characteristics match those of an on-the-run issue exactly and then have the price of that constructed bond match exactly the market price of the Treasury issue. By repeating this process for each of the on-the-run issues, the mean reversion constant and the risk premium that are appropriate over the range of reference issues may be quantified.


As a technical side note, the term structure model needs to satisfy internal consistency checks, and the parameter specification process plays a part in the internal system for checks and balances. For the set of chosen parameters, the price furnished by the term structure model—as the solution to a PDE—needs to be equal to that provided by applying the discount function to the cash flows of the specific on-the-run issue, as explained earlier. Thus the discount function is a direct means of verifying the results of the term structure model. In fact, the PDE may be decomposed into two coupled ordinary differential equations (ODE) in the absence of any embedded options. Thus prices obtained from the PDE, ODE, and discount-function approaches all need to be identical.

# Calculation of the Spot Rate

The solution to equation (1) is obtained through computer numerical solution techniques and accounts for the current value of the spot rate (as an initial condition) and its level of volatility. As time moves forward, the solution expresses the probable distribution of the spot rate as the spot rate propagates through time. Thus, at any point in time, it is possible to calculate the probability distribution of the spot rate. It was discussed previously that the price of a bond depends on the spot rate so that the spot-rate probability distribution is also the probability distribution for the bond price. This is useful in calculating the probability that an embedded call or put option will be exercised, which is the probability that the price of a particular bond is greater than or less than, respectively, the specified strike price at exercise.

The calculation of the probabilities is made possible by assuming a specific mathematical form for the random variable  $z$ , or a Wiener process. Generally, a probability distribution func tion is described by its mean and variance as functions of time. If these quantities are known, then the probability of different spot rates is known. The Wiener process assumption states that the statistical variance for the random variable  $z$  varies with the length of time under consideration. As time increases, the variance of  $z$  also increases. The known change in the variance of  $z$  is subsequently translated (in a known fashion) to the change in the variance of the rate  $r$ , which may be used to obtain the desired probability in terms of  $r$ . In general, we use the solution of the Kolmogorov (forward or backward) equation to establish an expression for the probability density of the short rate.


# BOND-PRICE VALUATION MODEL

As a consequence of assumptions 4 and 5 (the price of a default-free discount bond depends continuously on the spot rate), it can be shown that the price of a discount bond of term  $T$  is expressed as

$$
\frac{\partial P}{\partial t} = r P - \left[ k (\theta - r) + \lambda \sigma r \right] \frac{\partial P}{\partial r} - \frac{1}{2} \sigma^{2} r \frac{\partial^{2} P}{\partial r^{2}} \tag {2}
$$ where


$P =$  price of zero-coupon bond for time  $t$  and rate  $r$

$\partial P / \partial t =$  partial derivative of price with respect to time

$\partial P / \partial r =$  partial derivative of price with respect to rate

$\partial^2 P / \partial r^2 =$  second partial derivative of price with respect to rate

$\lambda =$  "risk premium"

The "risk premium" is the variable that represents the additional return over the risk-free rate that the market requires for holding a longer-term instrument. This is determined from the current term structure. In addition to the bond price equation, to represent the behavior of the instrument, boundary conditions on the solution to (2) need to be prescribed. These conform to given circumstances, but in the simplest case, they include cash flows and constraints on  $\mathrm{P}$  as  $\mathbf{r}$  converges toward zero or becomes arbitrarily large.


# Developing the Bond-Price Equation

A development of the bond-price valuation model (for the zero-coupon bond) follows in a straightforward manner. Arguments of variables are suppressed except when needed to clarify dependencies.

Equation (1) describes the process for the propagation of the spot rate and is given by

$$ d r = k (\theta - r) d t + \sigma \sqrt{r} d z
$$

If we assume that  $P$  is a function of the two variables  $r$  and  $t$  expressed as the following  $P = P(r,t)$ , then Ito's lemma (see Shreve, 2004) provides that

$$
\begin{array}{l} d P = \left[ k (\theta - r) \frac{\partial P}{\partial r} + \frac{\partial P}{\partial t} + \frac{1}{2} \sigma^{2} r \frac{\partial^{2} P}{\partial r^{2}} \right] d t \\ + \sigma \sqrt{r} \frac{\partial P}{\partial r} d z \\ \end{array}
$$

To apply the principal of an arbitrage-free term structure, consider the representation of evolutions of the price to be

$$ d P = \mu P d t - \rho P d z
$$ where


$$
\mu = \frac{1}{P} \left[ a \frac{\partial P}{\partial r} + \frac{\partial P}{\partial t} + \frac{1}{2} b^{2} \frac{\partial^{2} P}{\partial r^{2}} \right]
$$

$$
\rho = - \frac{1}{P} b \frac{\partial P}{\partial r}
$$

Any security  $W_{i}$  with maturity  $s_i$  is subject to the same relationship such that

$$ d W_{i} = \mu_{i} W_{i} d t - \rho_{i} W_{i} d z
$$

Consider a portfolio  $W$  consisting of owning an amount of  $W_{1}$  and shorting an amount of  $W_{2}$  such that

$$
W = W_{2} - W_{1}
$$ where


$$
W_{2} = \left[ \frac{\rho_{1}}{\rho_{1} - \rho_{2}} \right] W
$$ and


$$
W_{1} = \left[ \frac{\rho_{2}}{\rho_{1} - \rho_{2}} \right] W
$$

Thus

$$ d W = d W_{2} - d W_{1}
$$

Substituting for  $dW_{1}$  and  $dW_{2}$  yields

$$
\begin{array}{l} d W = \left[ \frac{\mu_{1} \rho_{2}}{\rho_{1} - \rho_{2}} \right] W d t - \left[ \frac{\rho_{2} \rho_{1}}{\rho_{1} - \rho_{2}} \right] W d z \\ - \left[ \frac{\mu_{1} \rho_{2}}{\rho_{1} - \rho_{2}} \right] W d z + \left[ \frac{\rho_{1} \rho_{2}}{\rho_{1} - \rho_{2}} \right] W d z \\ = \left[ \frac{\mu_{2} \rho_{1} - \mu_{1} \rho_{2}}{\rho_{1} - \rho_{2}} \right] W d t \\ \end{array}
$$

Since the stochastic element  $dz$  disappears, the rate of return on the portfolio  $W$  is equal to the riskless rate  $r$ . Therefore,

$$ d W = r W d t
$$ where we see it must be that


$$ r = \frac{\mu_{2} \rho_{1} - \mu_{1} \rho_{2}}{\rho_{1} - \rho_{2}}
$$

This gives the following relationship

$$ r \rho_{1} - r \rho_{2} = \mu_{2} \rho_{1} - \mu_{1} \rho_{2}
$$ or, equivalently,


$$
\frac{\mu_{2} - r}{\rho_{2}} = \frac{\mu_{1} - r}{\rho_{1}}
$$

Since the maturities  $s_1$  and  $s_2$  were chosen arbitrarily, the above is true for any maturity  $s$ . Therefore, the term

$$
\frac{\mu - r}{\rho}
$$ is not a function of maturity and may be written as


$$
\frac{\mu - r}{\rho} = q (t, r)
$$ where  $q(t,r)$  is the market price of risk.


Applying separation of variables, we choose  $q(t,r)$  to be the following

$$ q (t, r) = \lambda (t) \sqrt{r}
$$ where  $\lambda (t)$  is the risk premium, which can be shown to be


$$
\lambda (t) = \frac{1}{2} \frac{\sigma}{k} \left[ 1 - e^{- k t} \right]
$$

(As the term extends, the premium is higher.) We see, therefore, that

$$
\frac{\mu - r}{\rho} = q (t, r) \Rightarrow \mu = r + \lambda (t) \sqrt{r} \rho
$$ or that the expected return of a bond is equal to the riskless rate plus another term related to the risk premium.


With  $\rho = -\frac{1}{P} b\frac{\partial P}{\partial r}$ , the above becomes

$$
\mu = r + \lambda \sqrt{r} \left(- \sigma \sqrt{r} \frac{\partial P}{\partial r} \frac{1}{P}\right)
$$

Substituting the above into  $dP = \mu Pdt - \rho Pdz$  gives (where  $\frac{\partial P}{\partial r} < 0$ )

$$ d P = \left(r - \lambda \sigma r \frac{\partial P}{\partial r} \frac{1}{P}\right) P d t - \rho P d z
$$

Equating the coefficients of  $dt$  between the above and

$$
\begin{array}{l} d P = \left[ k (\theta - r) \frac{\partial P}{\partial r} + \frac{\partial P}{\partial t} + \frac{1}{2} \sigma^{2} r \frac{\partial^{2} P}{\partial r^{2}} \right] d t \\ + \sigma \sqrt{r} \frac{\partial P}{\partial r} d z \\ \end{array}
$$ gives


$$
\frac{\partial P}{\partial t} = r P - [ k (\theta - r) + \lambda \sigma r ] \frac{\partial P}{\partial r} - \frac{1}{2} \sigma^{2} r \frac{\partial^{2} P}{\partial r^{2}}
$$ where, at maturity, we have the boundary condition


$$
P (r. t) = 1
$$

This completes the derivation of equation (2).

Next, if we assume a separation of variables for  $P(r,t)$  of the form

$$
P (r, t) = \exp{[ C (t) - B (t) r ]}
$$ it can be derived that the target spot rate,  $\theta (t)$  is of the form


$$
\theta (t_{0} + T) = - \frac{d}{d T} \ln d (t_{0}, T) - \frac{1}{k} \frac{d^{2}}{d T^{2}} \ln d (t_{0}, T)
$$ or


$$
\theta \left(t_{0} + T\right) = F \left(t_{0}, t_{0} + T\right) + \frac{1}{k} \frac{d}{d T} F \left(t_{0}, t_{0} + T\right)
$$ which will provide a solution to equation (2) that will exactly reprice the reference set where the discount function  $d(t_0, T)$  and the forward rates  $F(t_0, t_0 + T)$  are derived from the reference set using spline functions. Furthermore, this property is true for all volatilities when the above-specified risk premium is used.


# THE TERM STRUCTURE

Equation (2) is a PDE whose solution is obtained through a numerical finite-difference technique. The solution gives the price  $P$  of the bond for different times and spot rates, and can be visualized as a three-dimensional surface for which the height of the surface is the price of the bond and the location of the point (i.e., longitude and latitude) is given by the time and spot rate. The solution takes into account that the bond's price is par at maturity, regardless of the level of interest rates. As the solution steps back from the maturity date, the price of the bond may be calculated for varying levels of the spot rate and the familiar price/rate graph may be drawn for this time-step. (Not all bond prices are equally likely to occur since interest-rate movements and the probabilities associated with these movements are described by equation (1).)

As the solution process continues backward from maturity to the present day, the theoretical price corresponding to today's spot rate can be calculated. Once the price behavior of a bond is known, the value of an option on that bond may also be calculated. In general, the expected value of the bond may be determined at any time from the present to maturity under the expectation operation over the solution to (2) and the probability density function for  $r$ .

Since the solution to equation (2) furnishes the price as a function of time and rate, equation (14) of the previous section may be solved to provide the zero-coupon yield for a bond with the term-to-maturity  $T$ . As the term  $T$  is varied, the entire term structure may be obtained.

(The obtained term structure, in general, can take a variety of shapes. If the current spot rate is below the current value of the long-term rate,  $\theta$ , the obtained term structure will be upward sloping. If the current spot rate is substantially above the long-term rate, the obtained term structure will be inverted to downward sloping. For spot-rate values in between, the term structure will be humped, displaying both upward sloping and downward sloping segments. Thus an attractive feature of the term structure model is the ability to obtain term structure specifications that are consistent with those that have been observed historically.)

# APPLICATIONS OF THE TERM STRUCTURE MODEL

We conclude this entry with a description of the application of the term structure model developed in the previous section in the valuation of fixed-income securities. For the simple case of noncallable bonds, many term structure models can be used to determine value. In fact, the spline-fit discount function is a very straightforward method of calculating the value of such a bond. However, when option-embedded bonds or compound instruments are considered, using the PDE approach is opportune to reflect the specific nature of the option features. As this entry demonstrates, the PDE-based term structure model is but the first step that leads to a greater assortment of analytical financial tools.

# Zero-Coupon Bonds

Most yield curves, such as the U.S. Treasury curve, are expressed in terms of the yields of coupon-bearing bonds, not zero-coupon bonds. Thus a procedure is required to translate the current-coupon yield curve to an initial zero curve (i.e., the current term structure) expressed in terms of a spot-yield curve. One of several methods may be employed; see Vasicek and

Fong (1982). In summary, a reference set of securities is chosen to represent the yield curve, and each of the cash flows from this set of securities is treated as a zero-coupon bond that is part of the term structure. Since each of the reference securities has a known market price, the price/yield relationship, along with a curve-fitting process, is applied sequentially to each of the cash flows to derive the current term structure. This process establishes the set of initial conditions necessary to predict the evolution of the term structure.

If the actual zero-coupon yields are compared to the theoretical zero-coupon yields, then the richness or cheapness of the zero-coupon market may be gauged. Since the discount function may be constructed from any reasonable set of reference bonds, if the reference bonds consisted of off-the-run Treasury issues that are commonly stripped and/or reconstituted, then the corresponding theoretical zero curve should be indicative of the shape and level of the market strip curve.

Additionally, as the Treasury curve flattens or steepens, the theoretical zero curve changes accordingly to reflect the new shape of the Treasury curve. Consequently, as the Treasury curve steepens or flattens, the degree of anticipated yield-spread widening or tightening in the zero market may be estimated.

# Coupon-Paying Bonds

While our discussion thus far applies mainly to the price of a zero-coupon bond, it is more common to encounter coupon-paying bonds. To value coupon-paying bonds, we simply sum the present values of each of the coupon payments to determine the price. As discussed earlier, each coupon is treated as an individual zero-coupon bond.

# Determination of the Theoretical Fair Value

Once the term structure is defined, it may be used to value any collection of cash flows and serves as the standard of fair value. The theoretical price of a security that is calculated in this manner may be compared to its actual market price. Any difference in price that results indicates whether the security is rich or cheap relative to its fair value. If the market price is equal to the fair value, then the security is said to be fairly priced.


Generally, Treasury securities are chosen to represent the basis for fair value and most securities (such as corporate and government-agency debt obligations) are cheap to Treasuries. However, if there are a sufficient number of securities from a particular sector or issuer, these issues may be used as the reference set of securities and a new yield curve may be defined to be the standard of fair value. Thus corporate, agency, or municipal debt issues may be compared to their own family of securities or to their own sector to determine their relative value within the specified sector.

# Determination of Par-Coupon and Horizon Yield Curves

A par-coupon yield curve is a theoretical yield curve comprised of par-priced bonds along the maturity spectrum. Each of these par-priced bonds is constructed from the same discount function, which in turn is derived from a specified set of reference bonds. Since the discount function is defined continuously at different maturity points and cash-flow dates (via a spline-fitting procedure, for example), the par-coupon bonds corresponding to these same points may be determined.

The procedure for constructing a par-coupon bond involves an iterative process in which an initial coupon is assumed. For a given maturity date and associated coupon-payment dates, the cash flows and cash-flow dates are known for the assumed coupon level. The present value of each of the cash flows is found through the discount function, and the sum of the present values is compared to a price of par. The coupon then is varied until a par-priced bond is found. The process may be repeated for as many ma turity points as desired to construct an entire par-coupon yield curve.


A par-coupon yield curve is helpful in pricing bonds with off-the-run maturities. Often the question arises as to what exactly is the comparable Treasury yield when pricing off-the-run bonds. Depending on the fixed-income market sector, the comparable Treasury yield may be that of a specific Treasury note, or it may be an interpolated yield. The par-coupon curve provides a more technically rigorous means of calculating the interpolated yield, as opposed to a simple straight-line interpolation scheme.

Another application of the concept of the par-coupon yield curve is the horizon yield curve, the par-coupon yield curve for a future horizon date. Since the discount function may be determined as a function of time, the corresponding horizon yield curves at various points in time also may be found. The horizon yield curve is one way to help visualize how the present yield curve may evolve in the future in an arbitrage-free environment. (Of course, as new information is incorporated into the marketplace as time passes, the actual yield curve may deviate from the horizon yield curve. However, a horizon yield curve may still be calculated that reflects particular views about the future movements in both short-term and long-term rates.)

# Yield-Curve Shocks and Shifts

The shape of the yield curve is governed by exogenous (real-world) factors. As the Federal Reserve alters its monetary policy, or as the inflation outlook changes, the yield curve responds accordingly. These perturbations to the curve can be characterized as "shocks" to short-term rates and as "shifts" to long-term rates. A shock can occur when there is a sudden and unexpected event that causes short-term rates to jump, even though the overall economic fundamentals have not changed.

The clearest example of a shock is the crash of 1987, during which investors fled to the safety of the Treasury market. During October 19, short-term rates dropped by approximately 90 to 100 basis points as investors sought a temporary safe haven. At the same time, long-term rates fell by about 20 to 30 basis points. Since the crash was a market phenomenon, rather than an altering of economic fundamentals, it is characterized as a shock to the system. (This is described mathematically within the term structure model as a change to the initial condition of the differential equation, where the differential equation remains the same. The solution to the differential equation shows how the entire yield curve responds to a shock in short-term rates.)


A shift in the yield curve results from a change in the economic landscape where federal budgetary concerns or inflation outlooks can affect the view on long-term interest rates. (In contrast to a shock, the term structure model represents a shift as a respecification of the parameters to the differential equation, while the initial condition has remained unchanged. The most general situation can consist of a combination of shocks and shifts.)

The basic premise underlying the shocked and/or shifted horizon yield curve is that the curve evolves in an arbitrage-free manner as prescribed by the term structure model despite alterations to the curve. Thus, even though a shock or a shift has occurred, the entire yield curve responds in such a way as to preclude arbitrage. As a result of different combinations of shocks and shifts of varying magnitudes, a series of horizon yield curves can be found for different yield-curve steepening and flattening scenarios.

# TERM STRUCTURE OF FORWARD RATES

The financial markets can be viewed as a "game" with bids and offers between participants. To characterize fairness among the participants, the concept of a martingale (from probability theory) is introduced. Briefly, a martingale  $M(t)$  is a stochastic process with finite first moment for any  $t$  and where

$$
E \left[ M (s) \mid F_{t} \right] = M (t) \text{fo r} s > t
$$ with  $F_{t}$  denoting that the conditioning is on a given filtration or data set. Additionally, a portfolio may be thought of as a quantity vector representing a particular set of positions (Øksendal, 2007). If the market is fair, then the discounted future value of any portfolio should be the same as today's portfolio value when an appropriate discounting methodology is employed. However, in the objective (or real) world, equipped with the real-world measure, discount functions vary according to individual risk preferences, each associated with its own sector/market consensus. It is tedious to quantify these preferences for every case. So, instead of working under the real-world measure, we seek to explore an artificial probability measure under which every situation is risk-neutral. This probability measure is called the risk-neutral measure.


Modern pricing theory for financial derivatives is based on replicating a given derivative's payoff by putting together a self-financing portfolio consisting of the underlying assets and risk-free bonds. By buying a derivative and selling its replicated portfolio (or vice versa), the self-financing portfolio is found to be risk-free. Constructing such a risk-free portfolio is beyond the scope of this discussion, but understanding and utilizing the existence and uniqueness of this replicating strategy is the key for what follows (see Björk, 2009). Next, we first examine the derivation of a risk-neutral probability measure from a forward-rate model. Then we look at a general no-arbitrage condition for the bond market. Finally, we address some practical issues and solutions in a conceptual fashion.

# HEATH, JARROW, AND MORTON MODEL OF THE TERM STRUCTURE

Heath, Jarrow, and Morton (1992) proposed a general condition for no-arbitrage using the instantaneous forward-rate curve dynamics. The instantaneous forward-rate is defined as


$$
F (t, T) := - \frac{\partial \ln B (t , T)}{\partial T}
$$ where  $B(t,T)$  is the zero-coupon bond price at time t and maturity  $T$ . This stochastic process is usually written in a differential form


$$ d F (t, T) = \alpha (t, T) d t + \sigma (t, T) d W (t)
$$ where  $\alpha$  and  $\sigma$  satisfy the usual conditions for an Ito process and  $W(t)$  is a standard Brownian motion (under the real-world measure). Here,  $F(0,T)$  is the initial forward-rate term structure. In many situations, instantaneous forward rates are fundamental building blocks for modeling fixed-income contingent claims. For example, a bond price process can be derived from Ito's lemma such that


$$
\begin{array}{l} \frac{d B (t , T)}{B (t , T)} = \left[ F (t, t) - \int_{t}^{T} \alpha (t, u) d u \right. \\ \left. + \frac{1}{2} \left(\int_{t}^{T} \sigma (t, u) d u\right)^{2} \right] d t \\ - \int_{t}^{T} \sigma (t, u) d u d W (t) \\ \end{array}
$$

Details can be found in Shreve (2004). Also, the money market account can be written as

$$
\begin{array}{l} \frac{d M (t)}{M (t)} = F (t, t) d t \text{(or eq ui va le nt ly ,} \\ M (t) = e^{J_{0}^{t} F (u, u) d u}) \\ \end{array}
$$

A discount factor,  $D(t) = M^{-1}(t)$ , is defined similarly. A variation of this setting is one where we use the notation  $T$  to represent time-to-maturity (also called term). This alternative model is closer to the market reality because the curve won't shorten and will validate rolling-over trading strategies. For simplicity we set  $T$  to be maturity in the rest of this entry.

Let's first assume the existence of a risk-neutral probability measure, which is equivalent to imposing the local expectations hypothesis, that is,


$$
\widehat {E} \left[ \frac{d B (t , T)}{B (t , T)} | F_{t} \right] = F (t, t) d t
$$ where the expectations  $\hat{E}[]$  is taken under this risk-neutral measure. Therefore the discounted bond-price processes  $D(t)B(t,T)$  is a martingale for all  $T$ , that is,


$$
\tilde {E} [ D (s) B (s, T) | F_{t} ] = D (t) B (t, T) \text{fo r} t \leq s \leq T
$$

This hypothesis also implies that the short rate evolves along today's instantaneous forward rate curve. Refer to Björk (2009) or Shreve (2004) for more details. Based on the martingale property we can then derive the HJM no-arbitrage condition shown in Heath et al. (1992) that

$$
\alpha (t, T) = \sigma (t, T) \int_{t}^{T} \sigma (t, u) d u
$$

That is, the drift term of the instantaneous forward-rate curve process is tightly defined by the volatility term. This remarkable result tells us that only volatilities matter when modeling interest rates under a risk-neutral measure. Since the martingale property is imposed on all zero-coupon bonds to ensure fairness, arbitrage trades are precluded. If a pricing model is designed only for a derivatives pricing purpose, further investigation on risk premium is not necessary. This is an important point. For once the HJM no-arbitrage condition is applied to a particular model, the existence of a risk-neutral measure is assumed and the risk premium is zero. Nonetheless, not every modeler appreciates the consequence of ignoring the risk premium—especially when an asset and its derivative are priced congruently. For example, mortgage-backed derivatives usually involve prepayment statistics, which cannot be quantified under a risk-neutral measure, and the risk premium is usually given exogenously. The answer of which model should be used is based on the modeler's discretion involving calibration, implementation, and market assumptions, which we will talk about a bit more below.

# MARKET PRICE OF RISK

Let the market price of risk be denoted by  $\Theta (t)$  By the HJM no-arbitrage condition

$$
\alpha (t, T) - \sigma (t, T) \Theta (t) = \sigma (t, T) \int_{t}^{T} \sigma (t, u) d u
$$ which shows that the risk premium can be written as


$$
\Theta (t) = \frac{\alpha (t , T)}{\sigma (t , T)} - \int_{t}^{T} \sigma (t, u) d u
$$

If  $\Theta$  exists, then the market is arbitrage-free. Moreover if  $\Theta$  is unique, then the market is complete. For a multifactor model, completeness can be shown by nonsingularity of the volatility matrix. A remark can be made here that risk premiums are determined endogenously by the HJM no-arbitrage condition following from the local expectations hypothesis. This market price of risk identified in the HJM model is, however, a constant function of all maturities. The lack of flexibility limits the interest rate curve evolution under the real-world measure. In other words, if the curve dynamic is initially set up under a risk-neutral measure, then  $\Theta(t)$  is usually impossible to find so that the "model-derived" real-world interest rates could satisfy the "real" real-world statistics.

# BOND PRICING

When the market is assumed to be arbitrage-free and complete, zero-coupon bonds can then be derived under a unique risk-neutral measure that

$$
\frac{d B (t , T)}{B (t , T)} = F (t, t) d t - \int_{t}^{T} \sigma (t, u) d u d \tilde {W} (t)
$$

The rate of return for any bond is the same as the short rate; nonetheless, the bond-price process is not Markov for a general forward-rate model. This result is critical when it comes to derivatives pricing since Monte Carlo simulation is often the only approach, and it can be slow and imprecise. Furthermore, no closed-form solution for bond dynamics can be given, thus there is no closed-form solution for bond derivatives. Besides the computational issues due to the complexity in bond dynamics, the HJM framework cannot be used for lognormally distributed forward rates since, under the continuous compounding environment, the process "explodes" with positive probability. Therefore, practitioners seek eclectic methods to resolve the issues. A powerful tool invented for interest-rate derivatives pricing is the technique of "changing the numeraire," discussed next.


# CHANGE OF NUMERAIRE

The numeraire is a traded asset used for measuring value. Given a numeraire, all other prices are measured relative to this asset. In general, risk-neutral measures can have various forms in terms of different numeraires. For instance, if a money market account is used as a numeraire, it is the tradition risk-neutral measure as we see in the Black-Scholes option pricing setting. In a traditional risk-neutral world, the general evaluation form is written as

$$
V (t) = \hat {E} [ D (T) V (T) | F_{t} ]
$$ where  $V(T)$  is the payoff of a contingent claim maturing at time  $T$ , and  $V(0)$  is its price at time 0. Normally interest rates and underlying assets are assumed to be uncorrelated. This assumption makes the evaluation of the expectations above easier, but it is obviously invalid when a derivative  $V$  is based on interest rates. Further investigation in separating the derivative value process and the discount factor has been established by Geman et al. (1995).


In a traditional risk-neutral world, every discounted traded-asset price process is a martingale. When we take, for example, a zero-coupon bond with maturity  $T$  as our numeraire, the drift term of any other discounted traded-asset price process is adjusted according to this zero-coupon bond volatility. The new measure based on the zero-coupon bond numeraire is the  $T$ -forward risk-neutral measure. Consequently we have


$$
V (t) = B (t, T) E^{T} \left[ V (s) | F_{t} \right]
$$ where  $E^T[]$  is the expectation under the  $T$ -forward risk-neutral measure. When the money market account is used as the numeraire, this adjustment to the drift term is unnecessary since the money market account process has zero volatility. In this new pricing equation the discount factor is taken out of the bracket and replaced with the zero-coupon bond discount. Therefore, the expectation is performed solely on the derivative  $V$ .


# MARKET MODELS

For practitioners, the continuous compounding framework is unnecessary since most interest rates, such as LIBOR, for example, have only 1-week, 1-month, 3-month, 6-month, and 1-year investing intervals. Therefore, adopting the general no-arbitrage condition under the HJM framework, Brace et al. (1997) created a model for simple forward rates, which are compounded under a discrete-time framework. Based on the change of numeraire technique, forward rate processes are martingales under specific forward risk-neutral measures. This phenomenon can be justified via analyzing a bond portfolio used to create the payoff of a forward rate agreement: Let  $\hat{F}(t,T,T + \tau)$  denote the process of a simple forward rate for the period  $[t,T]$  with tenor  $\tau$ . Then

$$
\hat {F} (t, T, T + \tau) = \frac{B (t , T) - B (t , T + \tau)}{\tau B (t , T + \tau)}
$$

Here  $B(t,T + \tau)$  serves as the numeraire and transforms the traditional risk-neutral probability into a forward risk-neutral probability. By Ito's lemma, the forward rate dynamic can therefore be written as

$$
\frac{d \hat {F} (t , T , T + \tau)}{\hat {F} (t , T , T + \tau)} = \gamma (t, T, T + \tau) d \tilde {W}^{T + \tau} (t)
$$ where


$$
\begin{array}{l} \gamma (t, T, T + \tau) = \frac{1 + \tau \hat {F} (t , T , T + \tau)}{\tau \hat {F} (t , T , T + \tau)} \\ \times \left[ \int_{T}^{T + \tau} \sigma (t, u) d u \right] \\ \end{array}
$$

The main advantage of the LIBOR market model is set on the practical side. First, if  $\gamma$  are assumed to be nonstochastic, then forward rates are log-normal, which coincides with Black's pricing formula. Moreover, the consequence that interest rates are nonnegative and zero-coupon bond prices are nonzero under Monte Carlo simulations makes the model widely accepted. Therefore, for the past two decades, the LIBOR market model has been highly developed for various applications including the LIBOR swap market. Derivations and implementations of these market models can be found in Brigo and Mercurio (2006) and Rebonato (2002, 2004).

# INTEREST RATE DERIVATIVES

An interest-rate cap consists of a portfolio of caplets that provide insurance against rising borrowing costs. Let  $C(T)$  denote a caplet with maturity  $T$  on a simple  $\tau$ -LIBOR forward rate  $\hat{F}$  over time interval  $[t, T]$ . The payoff of this LIBOR caplet is

$$
C (T, T) = L \left(\hat {F} (T, T, T + \tau) - K\right)^{+}
$$ where  $L$  is the principal amount and  $K$  is the strike rate. Under the market model setting with deterministic forward-rate volatilities, the caplet price can be written in Black's formula by


$$
\begin{array}{l} C (0, T) = B (0, T) L \left[ \hat {F} (0, T, T + \tau) N (d_{1}) - K N (d_{2}) \right] \\ d_{1} = \frac{\ln \left(\frac{\hat {F} (0 , T , T + \tau)}{K}\right) + \frac{1}{2} \int_{0}^{T} \gamma^{2} (u , T , T + \tau) d u}{\sqrt{\int_{0}^{T} \gamma^{2} (u , T , T + \tau) d u}} \\ d_{2} = d_{1} - \sqrt{\int_{0}^{T} \gamma^{2} (u , T , T + \tau) d u} \\ \end{array}
$$ in which the volatility structure is flat with respect to the caplet strike prices. Despite this limitation, the model becomes the building block for replicating exotic interest-rate derivatives since the implied volatilities can be derived from several plain-vanilla traded derivatives. The information determined from this smaller scale market is then extended to characterize the whole-market dynamic. The operation usually involves interpolating, and many techniques are introduced in Rebonato (2002).


For pricing exotic interest-rate derivatives, interpolation on implied volatilities is often necessary, though undesirable because the HJM no-arbitrage condition cannot hold in most cases. LIBOR serial options, for example, are not as actively traded, so the prices are calculated based on the LIBOR cap/floor market. A serial option has two different maturities for the underlying forward rate agreement different from the option itself. Despite the availability of a closed-form solution, the needed volatility input for Black's formula turns out to be a partial integration from time 0 to the option maturity, and this information is not available from the cap/floor market. Therefore, further heuristic treatment is usually undertaken to connect the dots, in which case the curve would behave in explicit patterns and allow arbitrage.

# DESIGNING YOUR NEXT MODEL

No single model is perfect in general for all assets in any market environment. The trade-offs between convenience and accuracy are evaluated by individual trading desks, quantitative analysts, and ultimately validated by the market. Nonetheless, when presenting a new model, three aspects are usually evaluated.

From a financial aspect, a model must be able to price the underlying asset(s) and its derivatives simultaneously. The market for an asset and its derivatives are congruent, and there is no logic in pricing them separately, thereby risking "model" arbitrage. For example, we construct an interest-rate model for LIBOR-swaps curve in the real world and organically embed it in the model to price LIBOR derivatives such as LIBOR caps, floors, or even serial options in a risk-neutral world. Another example is for an underlying bullet bond and its callable counterpart. A callable bond is a bullet bond with an issuer-long, embedded American-style call option; however, the bullet bond price is determined under the real-world measure and the embedded option can be priced in the risk-neutral world. Therefore, a good model should be able to value a callable bond by valuing the bullet bond and the embedded American-style call option simultaneously.


From a mathematical standpoint, a model must be able to exhibit equivalency under different measures by explicitly characterizing the market price of risk. This mathematical component builds the bridge connecting the real world and a risk-neutral world. A complete financial market infers the existence of a unique market price of risk; but we should emphasize that whether a market is complete or not does not depend on the existence of a set of complete traded assets, but on the existence of an entity that can make the market if an arbitrage opportunity is revealed. Therefore, modern financial markets create not only hedging tools but an intangible equilibrium, which validates the underlying mathematical assumptions.

Finally, as we employ computation, this aspect demands that models/derivatives that require Monte Carlo analysis must be simulated by the same algorithm efficiently under different measures. This issue is more important in interest-rate modeling since there may be a trade-off between satisfying the mathematical requirements of a model and employing a computational implementation. Finding a model that satisfies both criteria is not trivial even though the markets are assumed to be complete. We specifically use the word "efficiently" to implicitly indicate that a model can be simulated by a recombination tree for American-style options.


Dynamic term structure models represent a highly developed condition where finance, mathematics, and computation come together. As opposed to the case with static term structure models where the term structure appears explicitly, for dynamic models the term structure of interest rates is usually implicitly embedded in models that engage in representing risk/value relative to current conditions for lending and borrowing over the spectrum of terms available in the market. Preclusion of arbitrage is fundamental for these models. We have shown two approaches to dynamic term structure models, one depending on a representation through the spot rate, the other depending on a representation through implied forward rates. In each case the relationship between the objective and risk-neutral world (measure) has been exploited to ensure coherence between underlying asset prices and any resulting derivative. Here, the value of the asset and the derivative each depend on a representation of the same determining condition of interest rates.

# KEY POINTS

- Dynamic term structure models of interest rates readily admit uncertainty in valuation/ risk analyses requiring a characterization of future market scenarios.
- In building dynamic term structure models it is important that equilibrium, in an arbitrage-free sense, is represented and that variations from the equilibrium may be represented in an appropriate, probabilistic sense through a choice of stochastic processes and probability measures.

- Two approaches in explaining the future course of interest rates embody the short-rate model or an evolution of forward rates.
- Common methods for analyzing fixed-income/interest-rate instruments include formulation through a risk-neutral measure or by maintaining a real-world (objective) probability measure. Each has its own merit.
- The market price of risk is the key link between the risk-neutral and objective probability measures.

# REFERENCES

Björk, T. (2009). Arbitrage Theory in Continuous Time, 3rd ed. Oxford: Oxford University Press.
Black, F., Derman, E., and Toy, W. (1990). A one-factor model of interest rates and its application to Treasury bond options. *Financial Analysts Journal* (January/February): 33-39.
Brace, A., Gatarek, D., and Musiela, M. (1997). The market model of interest rate dynamics. Mathematical Finance 4: 127-155.
Brigo, D., and Mercurio, F. (2006). *Interest Rate Models—Theory and Practice*, 2nd ed. New York: Springer.
Chan, K. C., Karolyi, G. A., Longstaff, F. A., and Sanders, A. B. (1992). An empirical comparison of alternative models of the short-term interest rate. Journal of Finance (July): 1209-1227.
Cox, J. C., Ingersoll, J. E., Jr., and Ross, S. A. (1985). A theory of the term structure of interest rates. Econometrica (March): 385-407.
Geman, H., El Karoui, N., and Rochet, J-C. (1995). Changes of numétaire, changes of probability measure and option pricing. Journal of Applied Probability 32: 443-458.
Heath, D., Jarrow, R. A., and Morton, A. (1992). Bond pricing and the term structure of interest rates: A new methodology. *Econometrica* 60, 1: 77-105.
Ho, T. S. Y., and Lee, S. B. (1986). Term structure movements and pricing interest rate contingent claims. Journal of Finance (December): 1011-1029.
Hull, J. C. (2009). Interest rate derivatives: Models of the short rate. Chapter 30 in Options, Futures, and Other Derivatives. Upper Saddle River, NJ: Pearson.

Oksendal, B. (2007). Stochastic Differential Equations, 6th ed. New York: Springer.
Rebonato, R. (2002). Modern Pricing of Interest-Rate Derivatives. Princeton, NJ: Princeton University Press.
