---
title: "Understanding the Building Blocks for OAS Models"
parent_directory: "III. Markets and Institutions/Encyclopedia of Financial Models/Volume I/Bond Valuation"
formatted: "2025-12-21 10:30:45 AM"
formatter_model: "kimi-k2-turbo"
cli-tool: "claude-code"
primary_tags:
  - "option adjusted spread"
  - "mortgage backed securities"
  - "asset backed securities"
  - "prepayment modeling"
  - "term structure models"
secondary_tags:
  - "bond valuation"
  - "interest rate models"
  - "arbitrage pricing"
  - "stochastic processes"
  - "lattice methods"
  - "monte carlo simulation"
  - "cash flow modeling"
  - "yield curve dynamics"
  - "hedge fund strategies"
  - "fixed income derivatives"
  - "volatility modeling"
  - "risk neutral pricing"
  - "martingale measures"
  - "prepayment options"
cssclasses: academia
---

# Understanding the Building Blocks for OAS Models

**PHILIP O. OBAZEE**  
Senior Vice President and Head of Derivatives, Delaware Investments

**Abstract:** Ubiquity of option-adjusted spread (OAS) in finance practice is remarkable, in light of the fact that there is no general consensus on its implementation. Investors in mortgage-backed (MBS) and asset-backed (ABS) securities hold a long position in noncallable bonds and short positions in prepayment (call) options. The noncallable bond is a bundle of zero coupon bonds, and the call option gives the borrower the right to prepay the loan at any time prior to the scheduled principal repayment dates. The call option component of the valuation consists of intrinsic and time values. To the extent that the option embedded in ABS/MBS is a delayed American exercise style, the time value component associated with prepayment volatility needs to be evaluated. To evaluate this option, OAS analysis uses an option-based technique to price ABS/MBS under different interest rate scenarios. Hence, OAS is the spread differential between the zero volatility spread and option value components of an ABS/MBS.

Investors and analysts continue to wrestle with the differences in option-adjusted-spread (OAS) values for securities they see from competing dealers and vendors. And portfolio managers continue to pose fundamental questions about OAS with which we all struggle in the financial industry. Some of the frequently asked questions are:

- How can we interpret the difference in dealers' OAS values for a specific security?
- What is responsible for the differences?
- Is there really a correct OAS value for a given security?

In this entry, we examine some of the questions about OAS analysis, particularly the basic building block issues about OAS implementation. Because some of these issues determine "good or bad" OAS results, we believe there is a need to discuss them. To get at these fundamental issues, we hope to avoid sounding pedantic by relegating most of the notations and expressions to the endnotes.


Clearly, it could be argued that portfolio managers do not need to understand the OAS engine to use it but that they need to know how to apply it in relative value decisions. This argument would be correct if there were market standards for representing and generating interest rates and prepayments. In the absence of a market standard, investors need to be familiar with the economic intuitions and basic assumptions made by the underlying models. More important, investors need to understand what works for their situation and possibly identify those situations in which one model incorrectly values a bond. Although pass-throughs are commoditized securities, OAS results still vary considerably from dealer to dealer and vendor to vendor. This variance is attributable to differences in the implementation of the respective OAS models.

Unlike other market measures, for example, yield to maturity and the weighted average life of a bond, which have market standards for calculating their values, OAS calculations suffer from the lack of a standard and a black-box mentality. The lack of a standard stems from the required inputs in the form of interest rate and prepayment models that go into an OAS calculation. Although there are many different interest rate models available, there is little agreement on which one to use. Moreover, there is no agreement on how to model prepayments. The black-box mentality comes from the fact that heavy mathematical machinery and computational algorithms are involved in the development and implementation of an OAS model. This machinery is often so cryptic that only a few initiated members of the intellectual tribe can decipher it. In addition, dealers invest large sums in the development of their term structures and prepayment models and, consequently, they are reluctant to share it.

In this entry, we review some of the proposed term structures and prepayments. Many of the term structure models describe "what is" and only suggest that the models could be used. Which model to use perhaps depends on the problem at hand and the resources available. In this entry, we review some of the popular term structure models and provide some general suggestions on which ones should not be used.

Investors in asset-backed securities (ABS) and mortgage-backed securities (MBS) hold long positions in noncallable bonds and short positions in call (prepayment) options. The noncallable bond is a bundle of zero-coupon bonds (e.g., Treasury strips), and the call option gives the borrower the right to prepay the mortgage at any time prior to the maturity of the loan. In this framework, the value of MBS is the difference between the value of the noncallable bond and the value of the call (prepayment) option. Suppose a theoretical model is developed to value the components of ABS/MBS. The model would value the noncallable component, which we loosely label the zero volatility component, and the call option component. If interest rate and prepayment risks are well accounted for, and if those are the only risks for which investors demand compensation, one would expect the theoretical value of the bond to be equal to its market value. If these values are not equal, then market participants demand compensation for the unmodeled risks. One of these unmodeled risks is the forecast error associated with the prepayments. By this, we mean the actual prepayment may be faster or slower than projected by the model. Other unmodeled risks are attributable to the structure and liquidity of the bond. In this case, OAS is the market price for the unmodeled risks.


To many market participants, however, OAS indicates whether a bond is mispriced. All else being equal, given that interest rate and prepayment risks have been accounted for, one would expect the theoretical price of a bond to be equal to its market price. If these two values are not equal, a profitable opportunity may exist in a given security or a sector. Moreover, OAS is viewed as a tool that helps identify which securities are cheap or rich when the securities are relatively priced.

The zero volatility component of ABS/MBS valuation is attributable to the pure interest rate risk of a known cash flow—a noncallable bond. The forward interest rate is the main value driver of a noncallable bond. Indeed, the value driver of a noncallable bond is the sum of the rolling yield and the value of the convexity. The rolling yield is the return earned if the yield curve and the expected volatility are unchanged. Convexity refers to the curvature of the price-yield curve. A noncallable bond exhibits varying degrees of positive convexity. Positive convexity means a bond's price rises more for a given yield decline than it falls for the same yield. By unbundling the noncallable bond components in ABS/MBS to their zero-coupon bond components, the rolling yield becomes dominant. Hence, it is called the zero volatility component—that is, the component of the yield spread that is attributable to no change in the expected volatility.


The call option component in ABS/MBS valuation consists of intrinsic and time values. To the extent the option embedded in ABS/MBS is the delayed American exercise style—in other words, the option is not exercised immediately but becomes exercisable any time afterward—the time value component dominates. Thus, in valuing ABS/MBS, the time value of the option associated with the prepayment volatility needs to be evaluated. To evaluate this option, OAS analysis uses an option-based technique to evaluate ABS/MBS prices under different interest rate scenarios. OAS is the spread differential between the zero volatility and option value components of MBS. These values are expressed as spreads measured in basis points.

The option component is the premium paid (earned) from going long (shorting) a prepayment option embedded in the bond. The bondholders are short the option, and they earn the premium in the form of an enhanced coupon. Mortgage holders are long the prepayment option, and they pay the premium in spread above the comparable Treasury. The option component is the cost associated with the variability in cash flow that results from prepayments over time.

The two main inputs into the determination of an OAS of a bond are as follows:

- Generate the cash flow as a function of the principal (scheduled and unscheduled) and coupon payments.
- Generate interest rate paths under an assumed term structure model.

At each cash flow date, a spot rate determines the discount factor for each cash flow. The present value of the cash flow is equal to the sum of the product of the cash flow and the discount factors. When dealing with a case in which uncertainty about future prospects is important, the cash flow and the spot rate need to be specified to account for the uncertainty. The cash flow and spot rate become a function of time and the state of the economy. The time consideration is that a dollar received now is worth more than one received tomorrow. The state of the economy consideration accounts for the fact that a dollar received in a good economy may be perceived as worth less than a dollar earned in a bad economy. For OAS analysis, the cash flow is run through different economic environments represented by interest rates and prepayment scenarios. The spot rate, which is used to discount the cash flow, is run through time steps and interest rate scenarios. The spot rate represents the instantaneous rate of risk-free return at any time, so that  \$1 invested now will have grown by a later time to\$ 1 multiplied by a continuously compounded rollover rate during the time period. Arbitrage pricing theory stipulates the price one should pay now to receive 1 at later time is the expected discount of the payoff. So by appealing to the arbitrage pricing theory, we are prompted to introduce an integral representation for the value equation; in other words, the arbitrage pricing theory allows us to use the value additivity principle across all interest rate scenarios.

## Is It Equilibrium or an Arbitrage Model?

Market participants are guided in their investment decision making by received economic philosophy or intuition. Investors, in general, look at value from either an absolute or relative value basis. Absolute value basis proceeds from the economic notion that the market clears at an exogenously determined price that equates supply-and-demand forces. Absolute valuation models are usually supported by general or partial equilibrium arguments. In implementing market measure models that depend on equilibrium analysis, the role of an investor's preference for risky prospects is directly introduced. The formidable task encountered with respect to preference modeling and the related aggregation problem has rendered these types of models useless for most practical considerations. One main exception is the present value rule that explicitly assumes investors have a time preference for today's dollar. Where the present value function is a monotonically decreasing function of time, today's dollar is worth more than a dollar earned tomorrow. Earlier term structure models were supported by equilibrium arguments, for example, the Cox-Ingersoll-Ross (CIR) model. In particular, CIR provides an equilibrium foundation for a class of yield curves by specifying the endowments and preferences of traders, which, through the clearing of competitive markets, generates the proposed term structure model.


Relative valuation models rely on arbitrage and dominance principles and characterize asset prices in terms of other asset prices. A well-known example of this class is the Black-Scholes $^{6}$  and Merton $^{7}$  option pricing model. Modern term structure models, for example, Hull-White, $^{8}$  Black-Derman-Toy (BDT), $^{9}$  and Heath-Jarrow-Morton (HJM), $^{10}$  are based on arbitrage arguments. Although relative valuation models based on arbitrage principles do not directly make assumptions about investors' preferences, there remains a vestige of the continuity of preference, for example, the notion that investors prefer more wealth to less. Thus, whereas modelers are quick in attributing "arbitrage-freeness" to their models, assuming there are no arbitrage opportunities implies a continuity of preference that can be supported in equilibrium. So, if there are no arbitrage opportunities, the model is in equilibrium for some specification of endowments and preferences. The upshot is that the distinct tion between equilibrium models and arbitrage models is a stylized fetish among analysts to demarcate models that explicitly specify endowment and preference sets (equilibrium) and those models that are outwardly silent about the preference set (arbitrage). Moreover, analysts usually distinguish equilibrium models as those that use today's term structure as an output and no-arbitrage models as those that use today's term structure as an input.


Arbitrage opportunity exists in a market model if there is a strategy that guarantees a positive payoff in some state of the world with no possibility of negative payoff and no initial net investment. The presence of arbitrage opportunity is inconsistent with economic equilibrium populated by market participants that have increasing and continuous preferences. Moreover, the presence of arbitrage opportunity is inconsistent with the existence of an optimal portfolio strategy for market participants with nonsatiated preferences (prefer more to less) because there would be no limit to the scale at which they want to hold an arbitrage position. The economic hypothesis that maintains two perfect substitutes (two bonds with the same credit quality and structural characteristics issued by the same firm) must trade at the same price is an implication of no arbitrage. This idea is commonly referred to as the law of one price. Technically speaking, the fundamental theorem of asset pricing is a collection of canonical equivalent statements that implies the absence of arbitrage in a market model. The theorem provides for weak equivalence between the absence of arbitrage, the existence of a linear pricing rule, and the existence of optimal demand from some market participants who prefer more to less. The direct consequence of these canonical statements is the pricing rule: the existence of a positive linear pricing rule, the existence of positive risk-neutral probabilities, and associated riskless rate or the existence of a positive state price density.

In essence, the pricing rule representation provides a way of correctly valuing a security when the arbitrage opportunity is eliminated. A fair price for a security is the arbitrage-free price. The arbitrage-free price is used as a benchmark in relative value analysis to the extent that it is compared with the price observed in actual trading. A significant difference between the observed and arbitrage-free values may indicate the following profit opportunities:


- If the arbitrage price is above the observed price, all else being equal, the security is cheap and a long position may be called for.
- If the arbitrage price is below the observed price, all else being equal, the security is rich and a short position may be called for.

In practice, the basic steps in determining the arbitrage-free value of the security are as follows:

- Specify a model for the evolution of the underlying security price.
- Obtain a risk-neutral probability.
- Calculate the expected value at expiration using the risk-neutral probability.
Discount this expectation using the risk-free rates.

In studying the solution to the security valuation problem in the arbitrage pricing framework, analysts usually use one of the following:

- Partial differential equation (PDE) framework
- Equivalent martingale measure framework

The PDE framework is a direct approach and involves constructing a risk-free portfolio, then deriving a PDE implied by the lack of arbitrage opportunity. The PDE is solved analytically or evaluated numerically.[11]

Although there are few analytical solutions for pricing PDEs, most of them are evaluated using numerical methods such as lattice, finite difference, and Monte Carlo. The equivalent martingale measure framework uses the notion of arbitrage to determine a probability measure under which security prices are martingales once discounted. The new probability measure is used to calculate the expected value of the security at expiration and discounting with the risk-free rate.


## Which Is the Right Model of the Interest Rate Process?

The bare essential of the bond market is a collection of zero-coupon bonds for each date, for example, now, that mature later. A zero-coupon bond with a given maturity date is a contract that guarantees the investor 1 to be paid at maturity. The price of a zero-coupon bond at time t with a maturity date of T is denoted by P(t,T). In general, analysts make the following simplifying assumptions about the bond market:

- There exists a frictionless and competitive market for a zero-coupon bond for every maturity date. By a frictionless market, we mean there is no transaction cost in buying and selling securities and there is no restriction on trades such as a short sale.
- For every fixed date, the price of a zero-coupon bond, $\{P(t,T); 0 \leq t \leq T\}$, is a stochastic process with $P(t,t) = 1$ for all $t$. By stochastic process, we mean the price of a zero-coupon bond moves in an unpredictable fashion from the date it was bought until it matures. The present value of a zero-coupon bond when it was bought is known for certain and it is normalized to equal one.
- For every fixed date, the price for a zero-coupon bond is continuous in that at every trading date the market is well bid for the zero-coupon bond.

In addition to zero-coupon bonds, the bond market has a money market (bank account) initialized with a unit of money. The bank account serves as an accumulator factor for rolling over the bond.

A term structure model establishes a mathematical relationship that determines the price of a zero-coupon bond, $\{P(t,T); 0 \leq t \leq T\}$, for all dates $t$ between the time the bond is bought (time 0) and when it matures (time $T$). Alternatively, the term structure shows the relationship between the yield to maturity and the time to maturity of the bond. To compute the value of a security dependent on the term structure, one needs to specify the dynamic of the interest rate process and apply an arbitrage restriction. A term structure model satisfies the arbitrage restriction if there is no opportunity to invest risk-free and be guaranteed a positive return.[13]

To specify the dynamic of the interest rate process, analysts have always considered a dynamic that is mathematically tractable and anchored in sound economic reasoning. The basic tenet is that the dynamic of interest rates is governed by time and the uncertain state of the world. Modeling time and uncertainty are the hallmarks of modern financial theory. The uncertainty problem has been modeled with the aid of the probabilistic theory of the stochastic process. The stochastic process models the occurrence of random phenomena; in other words, the process is used to describe unpredictable movements. The stochastic process is a collection of random variables that take values in the state space. The basic elements distinguishing a stochastic process are state space and index parameter, and the dependent relationship among the random variables (e.g., $X_{t}$).  The Poisson process and Brownian motion are two fundamental examples of continuous time stochastic processes.

In everyday financial market experiences, one may observe, at a given instant, three possible states of the world: Prices may go up a tick, decrease a tick, or do not change. The ordinary market condition characterizes most trading days; however, security prices may from time to time exhibit extreme behavior. In financial modeling, there is the need to distinguish between rare and normal events. Rare events usually bring about discontinuity in prices. The Poisson process is used to model jumps caused by rare events and is a discontinuous process. Brownian motion is used to model ordinary market events for which extremes occur only infrequently according to the probabilities in the tail areas of normal distribution.[17]


Brownian motion is a continuous martingale. Martingale theory describes the trend of an observed time series. A stochastic process behaves like a martingale if its trajectories display no discernible trends.

- A stochastic process that, on average, increases is called a submartingale.
- A stochastic process that, on average, declines is called a supermartingale.

Suppose one has an interest in generating a forecast of a process (e.g., $R_{t}$ - interest rate) by expressing the forecast based on what has been observed about $R$ based on the information available (e.g., $F_{t}$) at time $t$. This type of forecast, which is based on conditioning on information observed up to a time, has a role in financial modeling. This role is encapsulated in a martingale property. A martingale is a process, the expectation for which future values conditional on current information are equal to the value of the process at present. A martingale embodies the notion of a fair gamble: The expected gain from participating in a family of fair gambles is always zero and, thus, the accumulated wealth does not change in expectation over time. Note the actual price of a zero-coupon bond does not move like a martingale. Asset prices move more like sub-martingales or supermartingales. The usefulness of martingales in financial modeling stems from the fact that one can find a probability measure that is absolutely continuous with objective probability such that bond prices discounted by a risk-free rate become martingales. The probability measures that convert discounted asset prices into martingales are called equivalent martingale measures. The basic idea is that, in the absence of an arbitrage opportunity, one can find a synthetic probability measure  $Q$  absolutely continuous with respect to the original measure  $P$  so that all properly discounted asset prices behave as martingales. A fundamental theorem that allows one to transform  $R_{t}$  into a martingale by switching the probability measure from  $P$  to  $Q$  is called the Girsanov theorem.


The powerful assertion of the Girsanov theorem provides the ammunition for solving a stochastic differential equation driven by Brownian motion in the following sense: By changing the underlying probability measure, the process that was driving the Brownian motion becomes, under the equivalent measure, the solution to the differential equation. In financial modeling, the analog to this technical result says that in a risk-neutral economy assets should earn a risk-free rate. In particular, in the option valuation, assuming the existence of a risk-neutral probability measure allows one to dispense with the drift term, which makes the diffusion term (volatility) the dominant value driver.

To model the dynamic of interest rates, it is generally assumed the change in rates over instantaneous time is the sum of the drift and diffusion terms (see Figure 1).20 The drift term could be seen as the average movement of the process over the next instants of time, and the diffusion is the amplitude (width) of the movement. If the first two moments are sufficient to describe the distribution of the asset return, the drift term accounts for the mean rate of return and the diffusion accounts for the standard deviation (volatility). Empirical evidence has suggested that interest rates tend to move back to some long-term average, a phenomenon known as mean reverting that corresponds to the Ornstein-Ulthenbeck process (see Figure 2).[21] When rates are high, mean reversion tends to cause interest rates to have a negative drift; when rates are low, mean reversion tends to cause interest rates to have a positive drift.


The highlights of the preceding discussion are as follows:

- The modeler begins by decomposing bonds to their bare essentials, which are zero-coupon bonds.
- To model a bond market that consists of zero-coupon bonds, the modeler makes some simplifying assumptions about the structure of the market and the price behaviors.
- A term structure model establishes a mathematical relationship that determines the price of a zero-coupon bond and, to compute the value of a security dependent on the term structure, the modeler needs to specify the dynamic of the interest rate process and apply arbitrage restriction.
- The stochastic process is used to describe the time and uncertainty components of the price of zero-coupon bonds.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/908cfd17222a1f365ad0898ce1c9613a66c5cbd7f38049e4a3f3c929465b6f81.jpg)
Figure 1 Drift and Diffusion

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/ab76da4a3a072ed6f45c931313593ab4e551c00e631227be602d187097355b2a.jpg)
Figure 2 Process with Mean Reversion (Ornstein-Uhlenbeck Process)

- There are two basic types of stochastic processes used in financial modeling: The Poisson process is used to model jumps caused by rare events, and Brownian motion is used to model ordinary market events for which extremes occur only infrequently.
- We assume the market for zero-coupon bonds is well bid, that is, the zero-coupon price is continuous. Brownian motion is the suitable stochastic process to describe the evolution of interest rates over time. In particular, Brownian motion is a continuous martingale. Martingale theory describes the trend of the observed time series.
- Once we specify the evolution of interest rate movements, we need an arbitrage pricing theory that tells us the price one should pay now to receive 1 later is an expected discounted payoff. The issue to be resolved is, What are the correct expected discount factors to use? The discount must be determined by the market and based on risk-adjusted probabilities. In particular, when all bonds are properly risk-adjusted, they should earn risk-free rates; if not, arbitrage opportunity exists to earn riskless profit.
- The risk-adjusted probability consistent with the no-arbitrage condition is the equivalent martingale measure; it is the probability mea sure that converts the discounted bond price to a martingale (fair price). The elegance of the martingale theory is the "roughs and tumbles" one finds in the world of partial differentiation are to some extent avoided and the integral representation it allows fits nicely with Monte Carlo simulations.


Several term structure models have been proposed with subtle differences. However, the basic differences amount to how the dynamic of the interest rate is specified, the number of factors that generate the rate process, and whether the model is closed by equilibrium or arbitrage arguments.

Which of these models to use in OAS analysis depends on the available resources. Where resource availability is not an issue, we favor models that account for the path-dependent nature of mortgage cash flows. Good rules-of-thumb in deciding which model to use are as follows:

- Flexibility: How flexible is the model?
- Simplicity: Is the model easy to understand?
- Specification: Is the specification of the interest rate process reasonable?
Realism: How real is the model?
- Good fit: How well does the result fit the market data?

- Internal consistency rule: A necessary condition for the existence of market equilibrium is the absence of arbitrage, and the external consistency rule requires models to be calibrated to market data.

## Term Structure Models: Which Is the Right Approach for OAS?

Numerical schemes are constructive or algorithmic methods for obtaining practical solutions to mathematical problems. They provide methods for effectively finding practical solutions to asset pricing PDEs.

The first issue in a numerical approach is discretization. The main objective for discretizing a problem is to reduce it from continuous parameters formulation to an equivalent discrete parameterization in a way that makes it amenable to practical solution. In financial valuation, one generally speaks of a continuous time process in an attempt to find an analytical solution to a problem; however, nearly all the practical solutions are garnered by discretizing space and time. Discretization involves finding numerical approximations to the solution at some given points rather than on a continuous domain.

Numerical approximation may involve the use of a pattern, lattice, network, or mesh of discrete points in place of the (continuous) whole domain, so that only approximate solutions are obtained for the domain in the isolated points, and other values such as integrals and derivatives can be obtained from the discrete solution by the means of interpolation and extrapolation.

With the discretization of the continuous domain come the issues of adequacy, accuracy, convergence, and stability. Perhaps how these issues are faithfully addressed in the implementation of OAS models speaks directly to the type of results achieved. Although these numerical techniques—lattice methods, finite difference methods, and Monte Carlo methods—have been used to solve asset pricing PDEs, the lattice and Monte Carlo methods are more in vogue in OAS implementations.


### Lattice Method

The most popular numerical scheme used by financial modelers is the lattice (or tree) method. A lattice is a nonempty collection of vertices and edges that represent some prescribed mathematical structures or properties. The node (vertex) of the lattice carries particular information about the evolution of a process that generates the lattice up to that point. An edge connects the vertices of a lattice. A lattice is initialized at its root, and the root is the primal node that records the beginning history of the process.

The lattice model works in a discrete framework and calculates expected values on a discrete space of paths. A node in a given path of a nonrecombining lattice distinguishes not only the value of the underlying claim there but also the history of the path up to the node. A bushy tree represents every path in the state space and can numerically value path-dependent claims. A node in a given path of a bushy tree distinguishes not only the value of the underlying claim there but also the history of the path to the node. There is a great cost in constructing a bushy tree model. For example, modeling a 10-year Treasury rate in a binary bushy tree with each time period equal to one coupon payment would require a tree with  $2^{20}$  (1,048,576) paths. Figure 3 shows a schematic of a bushy tree.

In a lattice construction, it is usually assumed the time to maturity of the security, $T$, can be divided into discrete (finite and equal) timesteps $M$, $\Delta t = T / M$. The price of the underlying security is assumed to have a finite number of "jumps" (or up-and-down movements) $N$ between the time-steps $\Delta t$. In a recombining lattice, the price or yield of the underlying security is assumed to be affected by  $N$  and not the sequences of the jumps. For computational ease,  $N$  is usually set to be two or three; the case where  $N = 2$  is called binomial lattice (or tree), and  $N = 3$  is the trinomial lattice. Figures 4 and 5 show the binomial and trinomial lattices, respectively, for the price of a zero-coupon bond.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/97ddd184025ef2d892bbf3ee913eb4c833844fcedb1e75555648bbc39781cc30.jpg)
Figure 3 Bushy or Nonrecombining Tree


### Monte Carlo Method

The Monte Carlo method is a numerical scheme for solving mathematical models that involve random sampling. This scheme has been used to solve problems that are either deterministic or probabilistic in nature. In the most common application, the Monte Carlo method uses random or pseudo-random numbers to simulate random variables. Although the Monte Carlo method provides flexibilities in dealing with a probabilistic problem, it is not precise especially when one desires the highest level of accuracy at a reasonable cost and time.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/55687ea87a6e2db725fdf8ca8bbd5f906f328773ddaebbe260df633f230b8e09.jpg)
Figure 4 Binomial Lattice for the Price of a Zero-Coupon Bond

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/dfb71bd1-5f41-4321-b6ab-8e2a5e20500e/673ab506e2429dd8262b6e43ad62ea48ec77e66e59ab42ccae748290edec6dd6.jpg)
Figure 5 Trinomial Lattice for the Price of a Zero-Coupon Bond


Aside from this drawback, the Monte Carlo method has been shown to offer the following advantages:

- It is useful in dealing with multidimensional problems and boundary value problems with complicated boundaries.
- Problems with random coefficients, random boundary values, and stochastic parameters can be solved.
- Solving problems with discontinuous boundary functions, nonsmooth boundaries, and complicated right-hand sides of equations can be achieved.

The application of the Monte Carlo method in computational finance is predicated on the integral representation of security prices. The approach taken consists of the following:

- Simulating in a manner consistent with a risk-neutral probability (equivalent martingale) measure the sample path of the underlying state variables
- Evaluating the discounted payoff of the security on each sample path
- Taking the expected value of the discounted payoff over the entire sample paths

The Monte Carlo method computes a multidimensional integral—the expected value of discounted cash flows over the space of sample paths. For example, let  $f(x)$  be an integral function over  $d$ -dimensional unit hypercube, then a simple (or crude) estimate of the integral is equal to the average value of the function  $f$  over  $n$  points selected at random (more appropriately, pseudorandom) from the unit hypercube. By the law of large numbers,[22] the Monte Carlo estimate converges to the value as  $n$  tends to infinity. Moreover, we know from the central limit theorem that the standard error of estimate tends toward zero as  $1 / (\sqrt{n})$ . To improve on the computational efficiency of the crude Monte Carlo method, there are several variance-reduction techniques available.

## Is There a Right Way to Model Prepayments?

Because cash flows are one of the most important inputs in determining the value of a security, there has to be a model for cash flow. The cash flow model consists of a model for distributing the coupon and scheduled principal payments to the bondholders, as contained in the deal prospectus, and a prepayment model that projects unscheduled principal payments. The basic types of prepayment models are as follows:

- Rational prepayment models. These models apply an option-theoretic approach and link prepayment and valuation in a single unified framework.
- Econometric prepayment models. This class of models is based on econometric and statistical analysis.
- Reduced-form prepayment models. This type of model uses past prepayment rates and other endogenous variables to explain current prepayment. It fits the observed prepayment data, unrestricted by theoretical consideration.

The reduced-form prepayment model is the most widely used approach among dealers and prepayment vendors because of its flexibility and unrestricted calibration techniques. The basic determinants of the voluntary and involuntary components of total prepayments are collateral and market factors. Collateral factors are the origination date, weighted average coupon (WAC), and weighted average maturity, and the market-related factors are benchmark rates and spreads.

## Key Points

- There are foundational issues that explain (1) why there is a difference in dealers' OAS values for a specific bond, (2) what may be responsible for the differences, and (3) why one OAS value may be more correct than another.
- As a general guideline, portfolio managers should become familiar with the economic intuitions and basic assumptions made by the models.
- The reasonableness of the OAS values produced by different models should be considered. Moreover, because prepayment options are not traded in the market, calibrating OAS values using the prices of these options is not possible.
- Interest rate models, which are closed by precluding arbitrage opportunities, are more tractable and realistic.
- Interest rate models that account for the path-dependent natures of ABS and MBS cash flows are more robust.
- With the path-dependent natures of ABS and MBS cash flows come the difficulties of implementation, in particular, the speed of calculation; the toss-up here is between the lattice and Monte Carlo schemes.
- There is a tendency for market participants to believe that because we are talking about interest rate scenarios, the ideal candidate for the job would be Monte Carlo techniques, but this should not necessarily be the case. Although lattice implementation could do a good job, the success of this scheme depends highly on ad hoc techniques that have not been time-tested. Hence, whereas the OAS implementation scheme is at the crux of what distinguishes good or bad results, the preferred scheme is an open question that critically depends on available resources.


- Reduced-form prepayment models should be favored because of their flexibility and unrestricted calibration techniques. In particular, a model that explicitly identifies its control parameters and is amenable to the perturbation of these parameters is more robust and transparent.
- With respect to how to interpret the differences in dealers' OAS value for a specific security, decisions by dealers, vendors, and portfolio managers to choose one interest rate and prepayment model over others and the different approaches they take in implementing these models largely account for the wide variance in OAS results. Moreover, to complicate the issue, the lack of a market for tradable prepayment options makes calibrating the resulting OAS values dicey at best.
- As for whether there is a correct OAS value for a given security, examining the change in OAS value over time, the sensitivity of OAS parameters, and their implications to relative value analysis are some of the important indicators of the reasonableness of the OAS value.

