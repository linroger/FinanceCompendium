
# Arbitrage Pricing: Continuous-State, Continuous-Time Models

Partner, The Intertek Group

Professor of Finance, EDHEC Business School

Abstract: The principle of absence of arbitrage is perhaps the most fundamental principle of finance theory. In the presence of arbitrage opportunities, there is no trade-off between risk and returns because it is possible to make unbounded risk-free gains. The principle of absence of arbitrage is fundamental for understanding asset valuation in a competitive market. Arbitrage pricing can be developed in a finite-state, discrete-time setting and a continuous-time, continuous-state setting.

In this entry, we describe arbitrage pricing in the continuous-state, continuous-time setting. There are a number of important conceptual changes in going from a discrete-state, discrete-time setting (as described in the entry "Arbitrage Pricing: Finite-State Models") to a continuous-state, continuous-time setting. First, each state of the world has probability zero. This precludes the use of standard conditional probabilities for the definition of conditional expectation and requires the use of filtrations (rather than of information structures) to describe the propagation of information. Second, the tools of matrix algebra are inadequate; the more complex tools of calculus and stochastic calculus are required. Third, simple generalizations are rarely possible as many pathological cases appear in connection with infinite sets.

# THE ARBITRAGE PRINCIPLE IN CONTINUOUS TIME

Let's start with the definition of basic concepts. The economy is represented by a probability space  $(\Omega, \mathfrak{I}, P)$  where  $\Omega$  is the set of possible states,  $\mathfrak{I}$  is the  $\sigma$ -algebra of events, and  $P$  is a probability measure. Time is a continuous variable in the interval  $[0, T]$ . The propagation of information is represented by a filtration  $\mathfrak{I}_t$ . The latter is a family of  $\sigma$ -algebras such that  $\mathfrak{I}_t \subseteq \mathfrak{I}_s, t < s$ .

Each security  $i$  is characterized by a payoff rate process  $\delta_t^i$  and by a price process  $S_{t}^{i}$ . In this continuous-state setting,  $\delta_t^i$  and  $S_{t}^{i}$  are real variables with a continuous range such that  $\delta_t^i (\omega)$  and  $S_{t}^{i}(\omega)$  are, respectively, the payoff-rate and the price of the  $i$ -th asset at time  $t$ ,  $0\leq t\leq T$ and in state  $\omega \in \Omega$ . Note that  $\delta_t^i$  represents a rate of payoff and not a payoff as was the case in the discrete-time setting. The payoff-rate process must be interpreted in the sense that the cumulative payoff of each individual asset is


$$
D_{t}^{i} = \int_{0}^{t} \delta_{\mathrm{s}}^{i} d s
$$

We assume that the number of assets is finite. We can therefore use the vector notation to indicate a set of processes. For example, we write  $\delta_t$  and  $S_t$  to indicate the vector process of payoff rates and prices respectively. All payoff-rates and prices are stochastic processes adapted to the filtration  $\Im$ . One can make assumptions about the price and the payoff-rate processes. For example, it can be assumed that price and payoff-rate processes satisfy a set of stochastic differential equations or that they exhibit finite jumps. Later in this entry we will explore a number of these processes.

Conditional expectations are defined as partial averaging. In fact, given a variable  $X_{s}, s > t$ , its conditional expectation  $E_{t}[X_{s}]$  is defined as a variable that is  $\Im_t$ -measurable and whose average on each set  $A \in \mathfrak{I}_t$  is the same as that of  $X$ :

$$
Y_{t} = E_{t} \left[ X_{s} \right] \Leftrightarrow E \left[ Y_{t} (\omega) \right] = E \left[ X_{s} (\omega) \right]
$$ for  $\omega \in A, \forall A \in \mathfrak{I}_t$  and  $Y$  is  $\mathfrak{I}_t$ -measurable.


The law of iterated expectations applies as in the finite-state case:

$$
E_{t} [ E_{u} (X_{s}) ] = E_{t} [ X_{s} ]
$$

In a continuous-state setting, conditional expectations are variables that assume constant values on the sets of infinite partitions. Imagine the evolution of a variable  $X$ . At the initial date,  $X_0$  identifies the entire space  $\Omega$ . At each subsequent date  $t$ , the space  $\Omega$  is partitioned into an infinite number of sets, each determined by one of the infinite values of  $X_t$ . However, these sets have measure zero. In fact, they are sets of the type:  $\{A : \omega \in A \Leftrightarrow X_t(\omega) = x\}$  determined by specific values of the variable  $X_t$ . These sets have probability zero as there is an infinite number of values  $X_{t}$ . As a consequence, we cannot define conditional expectation as expectation under the usual definition of conditional probabilities the same way we did in the case of finite-state setting.


# Trading Strategies and Trading Gains

We have to define the meaning of trading strategies in the continuous-state, continuous-time setting; this requires the notion of continuous trading. Mathematically, continuous trading means that the composition of portfolios changes continuously at every instant and that these changes are associated with trading gains or losses. A trading strategy is a (vector-valued) process  $\theta = \{\theta^i\}$  such that  $\theta_t = \{\theta_t^t\}$  is the portfolio held at time  $t$ . To ensure that there is no anticipation of information, each trading strategy  $\theta$  must be an adapted process.

Given a trading strategy, we have to define the gains or losses associated with it. In discrete time, the trading gains equal the sum of payoffs plus the change of a portfolio's value

$$
\sum_{t = 0}^{T} \left(\sum_{t} d_{t}^{i} \theta_{t}^{i}\right) + \sum_{i} S_{T}^{i} \theta_{T}^{i} - \sum_{i} S_{0}^{i} \theta_{0}^{i}
$$ over a finite interval  $[0, T]$ .


We must define trading gains when time is a continuous variable. It is not possible to replace finite sums of stochastic increments with pathwise Riemann-Stieltjes integrals after letting the time interval go to zero. The reason is that, though we can assume that paths are continuous, we cannot assume that they have bounded variation. As a consequence, pathwise Riemann-Stieltjes integrals generally do not exist. However, we can assume that paths are of bounded quadratic variation. Under this latter assumption, using Ito isometry, we can define pathwise Ito integrals and stochastic integrals.

Let's first assume that the payoff-rate process is zero, so that there are only price processes. Under this assumption, the trading gain

$T_{t}$  of a trading strategy can be represented by a stochastic integral:

$$
T_{t} = \int_{0}^{t} \theta_{s} d S_{s} = \sum_{i} \int_{0}^{t} \theta_{s}^{i} d S_{s}^{i}
$$

In the rest of this section, we will not strictly adhere to the vector notation when there is no risk of confusion. For example, we will write  $\theta \cdot S$  to represent the scalar product  $\theta \cdot S$ . If a payoff rate process is associated with each asset, we have to add the gains consequent to the payoff rate process. We therefore define the gain process

$$
G_{t}^{i} = S_{t}^{i} + D_{t}^{i}
$$ as the sum of the price processes plus the cumulative payoff-rate processes, and we define the trading gains as the stochastic integral


$$
T_{t} = \int_{0}^{t} \theta_{s} d G_{s} = \sum_{i} \int_{0}^{t} \theta_{s}^{i} d G_{s}^{i}
$$

How can we match the abstract notion of a stochastic integral with the buying and selling of assets? In discrete time, trading gains have a meaning that is in agreement with the practical notion of buying a portfolio of assets, holding it for a period, and then selling it at market prices, thus realizing either a gain or a loss. One might object that in continuous time this meaning is lost. How can a process where prices change so that their total variation is unbounded be a reasonable representation of financial reality? This is a question of methodology that is relevant to every field of science. In classical physics, the use of continuous models was assumed to reflect reality; time and space, for example, were considered continuous. Quantum physics upset the conceptual cart of classical physics, and the reality of continuous processes has since been questioned at every level. In quantum physics, a theory is considered to be nothing but a model useful as a mathematical device to predict measurements. This is, in essence, the theory set forth in the 1930s by Niels Bohr and the school of Copenhagen; it has now become mainstream methodology in physics. It is also, ultimately, the point of view of positive economics. In a famous and widely quoted essay, Milton Friedman (1953) wrote:


The relevant question to ask about the "assumptions" of a theory is not whether they are descriptively "realistic," for they never are, but whether they are sufficiently good approximations for the purpose in hand. And this question can be answered only by seeing whether the theory works, which means if it yields sufficiently accurate predictions.

In the spirit of positive economics, continuous-time financial models are mathematical devices used to predict, albeit in a probabilistic sense, financial observations made at discrete intervals of time. Stochastic gains predict trading gains only at discrete intervals of time—the only intervals that can be observed. Continuous-time finance should be seen as a logical construction that meets observations only at a finite number of dates, not as a realistic description of financial trading.

Let's consider processes without any intermediate payoff. A self-financing trading strategy is a trading strategy such that the following relationships hold:

$$
\theta_{t} S_{t} = \sum_{i} \theta_{t}^{i} S_{t}^{i} = \sum_{i} \left(\theta_{0}^{i} S_{0}^{i} + \int_{0}^{t} \theta_{t}^{i} d S_{t}^{i}\right), t \in [ 0, T ]
$$

We first define arbitrage in the absence of a payoff-rate process. An arbitrage is a self-financing trading strategy such that:  $\theta_0S_0 < 0$  and  $\theta_T S_T \geq 0$ , or  $\theta_0S_0 \leq 0$  and  $\theta_T S_T > 0$ . If there is a payoff-rate process, a self-financing trading strategy is a trading strategy such that the following relationships hold:

$$
\theta_{t} S_{t} = \sum_{i} \theta_{t}^{i} S_{t}^{i} = \sum_{i} \left(\theta_{0}^{i} S_{0}^{i} + \int_{0}^{t} \theta_{t}^{i} d G_{t}^{i}\right), t \in [ 0, T ]
$$ where  $G_{t}^{i} = S_{t}^{i} + D_{t}^{i}$  is the gain process as previously defined. An arbitrage is a self-financing trading strategy such that:  $\theta_0S_0 < 0$  and  $\theta_{\mathrm{T}}S_{T}\geq 0$ , or  $\theta_0S_0\leq 0$  and  $\theta_{\mathrm{T}}S_{T} > 0$ .


# ARBITRAGE PRICING IN CONTINUOUS-STATE, CONTINUOUS-TIME

The abstract principles of arbitrage pricing are the same in a discrete-state, discrete-time setting as in a continuous-state, continuous-time setting. Arbitrage pricing is relative pricing. In the absence of arbitrage, the price and payoff-rate processes of a set of basic assets fix the prices of other assets given the payoff-rate process of the latter. If markets are complete, every price process can be computed in this way. In a discrete-state, discrete-time setting, the computation of arbitrage pricing is done with matrix algebra. In fact, in the absence of arbitrage, every price process can be expressed in two alternative ways:

1. Prices  $S_{t}^{i}$  are equal to the normalized conditional expectation of payoffs deflated with state prices under the real probabilities:

$$
S_{t}^{i} = \frac{1}{\pi_{t}} E_{t} \left[ \sum_{j = t + 1}^{T} \pi_{j} d_{j}^{i} \right]
$$

2. Prices  $S_{t}^{i}$  are equal to the conditional expectation of discounted payoffs under the risk-neutral probabilities

$$
S_{t}^{i} = E_{t}^{Q} \left[ \sum_{j = t + 1}^{T} \frac{d_{j}^{i}}{R_{t , j}} \right]
$$

State-price deflators and risk-neutral probabilities can be computed solving systems of linear equations for a kernel of basic assets. The above relationships are algebraic linear equations that fix all price processes.

In a continuous-state, continuous-time setting, the principle of arbitrage pricing is the same. In the absence of arbitrage, given a number of basic price and payoff stochastic processes, other processes are fixed. The latter are called redundant securities as they are not necessary to fix prices. If markets are complete, every price process can be fixed in this way. In order to make computations feasible, some additional assumptions are made, in particular, all payoff-rate and price processes are assumed to be Ito processes.


The theory of arbitrage pricing in a continuous-state, continuous-time setting uses the same tools as in a discrete-state, discrete-time setting. Under an equivalent martingale measure, all price processes become martingales. Therefore prices can be determined as discounted present value relationships. Equivalent martingale measures are the same concept as state-price deflators: After appropriate deflation, all processes become martingales. The key point of arbitrage pricing theory is that both equivalent martingale measures and state-price deflators can be determined from a subset of the market. All other processes are redundant.

In the following sections we will develop the theory of arbitrage pricing in steps. First, we will illustrate the principles of arbitrage pricing in the case of options, arriving at the Black-Scholes option pricing formula. We will then extend this theory to more general derivative securities. Subsequently, we will state arbitrage pricing theory in the context of equivalent martingale measures and of state-price deflators.

# OPTION PRICING

We will now apply the concepts of arbitrage pricing to option pricing in a continuous-state, continuous-time setting. Suppose that a market consists of three assets: a risk-free asset (which allows risk-free borrowing and lending at the risk-free rate of interest), a stock, and a European option. We will show that the price processes of a stock and of a risk-free asset fix the price process of an option on that stock.

Suppose the risk-free rate is a constant  $r$ . The value  $V_{t}$  of a risk-free asset with constant rate  $r$  evolves according to the deterministic differential equation of continually compounding interest rates:

$$ d V_{t} = r V_{t} d t
$$

The above is a differential equation with separable variables. After separating the variables, the equation can be written as

$$
\frac{d V_{t}}{V_{t}} = r d t
$$ which admits the solution  $V_{t} = V_{0}e^{rt}$  where  $V_{0}$  is the initial value of the bank account. This formula can also be interpreted as the price process of a risk-free bond with deterministic rate  $r$ .


# Stock Price Processes

Let's now examine the price process of the stock. Consider the process  $y = \alpha t + \sigma B_{t}$  where  $B_{t}$  is a standard Brownian motion. From the definition of Ito integrals, it can be seen that this process, which is called an arithmetic Brownian motion, is the solution of the following diffusion equation:

$$ d y_{t} = \alpha d t + \sigma d B_{t}
$$ where  $\alpha$  is a constant called the drift of the diffusion and  $\sigma$  is a constant called the volatility of the diffusion.


Consider now the process  $S_{t} = S_{0}e^{(\alpha t + \sigma B_{t})}$ $t\geq$  0. Applying Ito's lemma it is easy to see that this process, which is called a geometric Brownian motion, is an Ito process that satisfies the following stochastic differential equation:

$$ d S_{t} = \mu S_{t} d t + \sigma S_{t} d B_{t}; S_{0} = x
$$ where  $x$  is an initial value,  $\mu = \alpha + 1/2\sigma^2$  and  $B_t$  is a standard Brownian motion. We assume that the stock price process follows a geometric Brownian motion and that there is no payoff rate process.


Now consider a European call option, which gives the owner the right but not the obligation to buy the underlying stock at the exercise price  $K$  at the expiry date  $T$ . Call  $Y_{t}$  the price of the option at time  $t$ . The price of the option as a function of the stock price is known at the final expiry date. If the option is rationally exercised, the final value of the option is


$$
Y_{T} = \max  (S_{T} - K, 0)
$$

In fact, the option can be rationally exercised only if the price of the stock exceeds  $K$ . In that case, the owner of the option can buy the underlying stock at the price  $K$ , sell it immediately at the current price  $S_{t}$  and make a profit equal to  $(S_{T} - K)$ . If the stock price is below  $K$ , the option is clearly worthless. After  $T$ , the option ceases to exist.

How can we compute the option price at every other date? We can arrive at the solution in two different but equivalent ways: (1) through hedging arguments and (2) the equivalent martingale measures. In the following sections we will introduce hedging arguments and equivalent martingale measures.

# Hedging

To hedge means to protect against an adverse movement. The seller of an option is subject to a liability as, from his point of view, the option has a negative payoff in some states. In our context, hedging this option means to form a self-financing trading strategy formed with the stock plus the risk-free asset in appropriate proportions such that the option plus this hedging portfolio is risk free. Hedging the option implies that the hedging portfolio perfectly replicates the option payoff in every possible state.

A European call option has only one payoff at the expiry date. It therefore suffices that the hedging portfolio replicates the option payoff at that date. Suppose that there is a self-financing trading strategy  $(\theta_t^1,\theta_t^2)$  in the bond and the stock such that

$$
\theta_{t}^{1} V_{T} + \theta_{t}^{2} S_{T} = Y_{T}
$$

To avoid arbitrage, the price of the option at any moment must be equal to the value of the hedging self-financing trading strategy. In fact, suppose that at any time  $t < T$  the self-financing strategy  $(\theta_t^1,\theta_t^2)$  has a value lower than the option:


$$
\theta_{t}^{1} V_{t} + \theta_{t}^{2} S_{t} <   Y_{t}
$$

An investor could then sell the option for  $Y_{t}$ , make an investment  $\theta_t^1 V_t + \theta_t^2 S_t$  in the trading strategy, and at time  $T$  liquidate both the option and the trading strategy. As  $\theta_T^1 V_T + \theta_T^2 S_T = Y_T$  the final liquidation has value zero in every state of the world, so that the initial profit  $Y_{t} - \theta_{t}^{1}V_{T} + \theta_{t}^{2}S_{T}$  is a risk-free profit. A similar reasoning could be applied if, at any time  $t < T$ , the strategy  $(\theta_t^1,\theta_t^2)$  had a value higher than the option. Therefore, we can conclude that if there is a self-financing trading strategy that replicates the option's payoff, the value of the strategy must coincide with the option's price at every instant prior to the expiry date.

Observe that the above reasoning is an instance of the law of one price. If two portfolios have the same payoffs at every moment and in every state of the world, their price must be the same. In particular, if a trading strategy has the same payoffs of an asset, its value must coincide with the price of that asset.

# The Black-Scholes Option Pricing Formula

Let's now see how the price of the option can be computed. Assume that the price of the option is a function of time and of the price of the underlying stock:  $Y_{t} = C(S_{t}, t)$ . This assumption is reasonable but needs to be justified; for the moment it is only a hint as to how to proceed with the calculations. It will be justified later by verifying that the pricing formula produces the correct final payoff.

As  $S_{t}$  is assumed to be an Itô process, in particular a geometric Brownian motion,  $Y_{t} = C(S_{t}, t)$  which is a function of  $S_{t}$  is an Itô process as well. Therefore, using Itô's formula, we can write down the stochastic equation that  $Y_{t}$ must satisfy. Itô's formula prescribes that:


$$
\begin{array}{l} d Y_{t} = \left[ \frac{\partial C (S_{t} , t)}{\partial t} + \frac{\partial C (S_{t} , t)}{\partial S_{t}} S_{t} \mu \right. \\ \left. + \frac{1}{2} \frac{\partial^{2} C (S_{t} , t)}{\partial S_{t}^{2}} S_{t}^{2} \sigma^{2} \right] d t + \frac{\partial C (S_{t} , t)}{\partial S_{t}} \sigma S_{t} d B \\ \end{array}
$$

Suppose now that there is a self-financing trading strategy  $Y_{t} = \theta_{t}^{1}V_{t} + \theta_{t}^{2}S_{t}$ . We can write this equation as

$$
\int_{0}^{t} d Y_{t} = \theta_{t}^{1} \int_{0}^{t} d V_{t} + \theta_{t}^{2} \int_{0}^{t} d S_{t}
$$ or, in differential form, as


$$
\begin{array}{l} d Y_{t} = \theta_{t}^{1} d V_{t} + \theta_{t}^{2} d S_{t} \\ = (\theta_{t}^{1} r V_{t} + \theta_{t}^{2} \mu S_{t}) d t + \theta_{t}^{2} \sigma S_{t} d B_{t} \\ \end{array}
$$

If the trading strategy replicates the option price process, the two expressions for  $dY_{t}$  - the one obtained through Ito's lemma and the other obtained through the assumption that there is a replicating self-financing trading strategy-must be equal:

$$
\begin{array}{l} \left(\theta_{t}^{1} r V_{t} + \theta_{t}^{2} \mu S_{t}\right) d t + \theta_{t}^{2} \sigma S_{t} d B_{t} \\ = \left[ \frac{\partial C (S_{t} , t)}{\partial t} + \frac{\partial C (S_{t} , t)}{\partial S_{t}} S_{t} \mu + \frac{1}{2} \frac{\partial^{2} C (S_{t} , t)}{\partial S_{t}^{2}} S_{t}^{2} \sigma^{2} \right] d t \\ + \frac{\partial C (S_{t} , t)}{\partial S_{t}} \sigma S_{t} d B_{t} \\ \end{array}
$$

The equality of these two expressions implies the equality of the coefficients in  $dt$  and  $dB$  respectively. Equating the coefficients in  $dB$  yields

$$
\theta_{t}^{2} = \frac{\partial C (S_{t} , t)}{\partial S_{t}}
$$

As  $Y_{t} = C(S_{t},t) = \theta_{t}^{1}V_{t} + \theta_{t}^{2}S_{t}$ , substituting, we obtain

$$
\theta_{t}^{1} = \frac{1}{V_{t}} \left[ C (S_{t}, t) - \frac{\partial C (S_{t} , t)}{\partial S_{t}} S_{t} \right]
$$

We have now obtained the self-financing trading strategy in function of the stock and option prices. Substituting and equating the coefficients of  $dt$  yields


$$
\begin{array}{l} \frac{1}{V_{t}} \left[ C (S_{t}, t) - \frac{\partial C (S_{t} , t)}{\partial S_{t}} S_{t} \right] r V_{t} + \frac{\partial C (S_{t} , t)}{\partial S_{t}} \mu S_{t} \\ = \frac{\partial C (S_{t} , t)}{\partial t} + \frac{\partial C (S_{t} , t)}{\partial S_{t}} S_{t} \mu + \frac{1}{2} \frac{\partial^{2} C (S_{t} , t)}{\partial S_{t}^{2}} S_{t}^{2} \sigma^{2} \\ \end{array}
$$

Simplifying and eliminating common terms, we obtain

$$
\begin{array}{l} - r C (S_{t}, t) + r \frac{\partial C (S_{t} , t)}{\partial S_{t}} S_{t} + \frac{\partial C (S_{t} , t)}{\partial t} \\ + \frac{1}{2} \frac{\partial^{2} C (S_{t} , t)}{\partial S_{t}^{2}} S_{t}^{2} \sigma^{2} = 0 \\ \end{array}
$$

If the function  $C(S_{t}, t)$  satisfies this relationship, then the coefficients in  $dt$  match. The above relationship is a partial differential equation (PDE). This equation can be solved with suitable boundary conditions. Boundary conditions are provided by the payoff of the option at the expiry date:

$$
Y_{T} = C \left(S_{T}, T\right) = \max  \left(S_{T} - K, 0\right)
$$

The closed-form solution of the above PDE with the above boundary conditions was derived by Black and Scholes (1973) and referred to as the Black-Scholes option pricing formula:

$$
C (S_{t}, t) = x \Phi (z) - e^{- r (T - t)} K \Phi (z - \sigma \sqrt{T - t})
$$ with


$$ z = \frac{\log (S_{t} / K) + (r + \frac{1}{2} \sigma^{2}) (T - t)}{\sigma \sqrt{T - t}}
$$ and where  $\Phi$  is the cumulative normal distribution.


Let's stop for a moment and review the logical steps we have followed thus far. First, we defined a market made by a stock whose price process follows a geometric Brownian motion and a bond whose price process is a deterministic exponential. We introduced into this market a European call option. We then made two assumptions: (1) The option's price process is a deterministic function of the stock price process; and (2) the option's price process can be replicated by a self-financing trading strategy.

If the above assumptions are true, we can write a stochastic differential equation for the option's price process in two different ways: (1) Using Ito's lemma, we can write the option price stochastic process as a function of the stock stochastic process; and (2) using the assumption that there is a replicating trading strategy, we can write the option price stochastic process as the stochastic process of the trading strategy. As the two equations describe the same process, they must coincide. Equating the coefficients in the deterministic and stochastic terms, we can determine the trading strategy and write a deterministic PDE that the pricing function of the option must satisfy. The latter PDE together with the boundary conditions provided by the known value of the option at the expiry date uniquely determine the option pricing function.

Note that the above is neither a demonstration that there is an option pricing function, nor a demonstration that there is a replicating trading strategy. However, if both a pricing function and a replicating trading strategy exist, the above process allows one to determine both by solving a partial differential equation. After determining a solution to the PDE, one can verify if it provides a pricing function and if it allows the creation of a self-financing trading strategy. Ultimately, the justification of the existence of an option's pricing function and of a replicating self-financing trading strategy resides in the possibility of actually determining both. Absence of arbitrage ensures that this solution is unique.

# Generalizing the Pricing of European Options

We can now generalize the above pricing methodology to a generic European option and to more general price processes for the bond and for the underlying stock. In the most general case, the process underlying a derivative need not be a stock price process. However, we

Suppose that the underlying is a stock price process so that replicating portfolios can be formed. We generalize in three ways:

- The option's payoff is an arbitrary finite-variance random variable.
- The stock price process is an Itô process.
- The short-rate process is stochastic.

Following the definition given in the finite-state setting, we define a European option on some underlying process  $S_{t}$  as an asset whose payoff at time  $T$  is given by the random variable  $Y_{T} = g(S_{T})$  where  $g(x), x \in R$  is a continuous real-valued function. In other words, a European option is defined as a security whose payoff is determined at a given expiry date  $T$  as a function of some underlying random variable. The option has a zero payoff at every other date  $t \in [0, T]$ . This definition clearly distinguishes European options from American options, which yield payoffs at random stopping times.

Let's now generalize the price process of the underlying stock. We represent the underlying stock price process as a generic Ito process. A generic univariate Ito process can be represented through the differential stochastic equation:

$$ d S_{t} = \mu (S_{t}, t) d t + \sigma (S_{t}, t) d B_{t}; S_{0} = x
$$ where  $x$  is the initial condition,  $B$  is a standard Brownian motion, and  $\mu(S_t, t)$  and  $(S_t, t)$  are given functions  $R \times (0, \infty) \to R$ . The geometric Brownian motion is a particular example of an Ito process.


Let's now define the bond price process. We retain the risk-free nature of the bond but let the interest rate be stochastic. Recall that in a discrete-state, discrete-time setting, a bond was defined as a process that, at each time step, exhibits the same return for each state though the return can be different in different time steps. Consequently, in continuous-time we define a bond price process as the following integral:

$$
V_{t} = V_{0} e^{\int_{0}^{t} r (S_{u}, u) d u}
$$ where  $r$  is a given function that represents the stochastic rate. In fact, the rate  $r$  depends on the time  $t$  and on the stock price process  $S_{t}$ . Application of Ito's lemma shows that the bond price process satisfies the following equation:


$$ d V_{t} = V_{t} r \left(S_{t}, t\right) d t
$$

We can now use the same reasoning that led to the Black-Scholes formula. Suppose that there are both an option pricing function  $Y_{t} = C(S_{t},t)$  and a replicating self-financing trading strategy

$$
Y_{t} = \theta_{t}^{1} V_{t} + \theta_{t}^{2} S_{t}
$$

We can now write a stochastic differential equation for the process  $Y_{t}$  in two ways:

- Applying Ito's lemma to  $Y_{t} = C(S_{t}, t)$
- Directly to  $Y_{t} = \theta_{t}^{1}V_{t} + \theta_{t}^{2}S_{t}$

The first approach yields

$$
\begin{array}{l} d Y_{t} = \left[ \frac{\partial C (S_{t} , t)}{\partial t} + \frac{\partial C (S_{t} , t)}{\partial S_{t}} \mu (S_{t}, t) \right. \\ \left. + \frac{1}{2} \frac{\partial^{2} C (S_{t} , t)}{\partial S_{t}^{2}} \sigma^{2} (S_{t}, t) \right] d t \\ + \frac{\partial C (S_{t} , t)}{\partial S_{t}} \sigma (S_{t}, t) d B_{t} \\ \end{array}
$$

The second approach yields

$$ d Y_{t} = [ \theta_{t}^{1} r (S_{t}, t) V_{t} + \theta_{t}^{2} \mu (S_{t}, t) ] d t + \theta_{t}^{2} \sigma (S_{t}, t) d B_{t}
$$

Equating coefficients in  $dt$ ,  $Db$  we obtain the trading strategy

$$
\theta_{t}^{1} = \frac{1}{V_{t}} \left[ C (S_{t}, t) - \frac{\partial C (S_{t} , t)}{\partial S_{t}} S_{t} \right]
$$

$$
\theta_{t}^{2} = \frac{\partial C (S_{t} , t)}{\partial S_{t}}
$$ and the PDE


$$
\begin{array}{l} - r (x, t) C (x, t) + r (x, t) \frac{\partial C (x , t)}{\partial x} x \\ + \frac{\partial C (x , t)}{\partial t} + \frac{1}{2} \frac{\partial^{2} C (x , t)}{\partial x^{2}} \sigma^{2} (x, t) = 0 \\ \end{array}
$$ with the boundary conditions  $C(S_T, T) = g(S_T)$ . Solving this equation we obtain a candidate option pricing function. In each specific case, one


can then verify that the option pricing function effectively solves the option pricing problem.

# STATE-PRICE DEFLATORS

We now extend the concepts of state prices and equivalent martingale measures to a continuous-state, continuous-time setting. As in the previous sections, the economy is represented by a probability space  $(\Omega, \mathfrak{I}, P)$  where  $\Omega$  is the set of possible states,  $\mathfrak{I}$  is the  $\sigma$ -algebra of events, and  $P$  is a probability measure. Time is a continuous variable in the interval  $[0, T]$ . The propagation of information is represented by a filtration  $\mathfrak{I}_t$ . A multivariate standard Brownian motion  $B = (B_1, \ldots, B_D)$  in  $R^D$  adapted to the filtration  $\mathfrak{I}_t$  is defined over this probability space. We know that there are mathematical subtleties that we will not take into consideration, as regards whether (1) the filtration is given and the Brownian motion is adapted to the filtration or (2) the filtration is generated by the Brownian motion.

Suppose that there are  $N$  price processes  $\mathbf{X} = (X^{1},\dots ,X^{\mathrm{N}})$  that form a multivariate Itô process in  $R^{\mathrm{N}}$ . Trading strategies are adapted processes  $\theta = (\theta^{1},\dots ,\theta^{N})$  that represent the quantity of each asset held at each instant. In order to ensure the existence of stochastic integrals, we require the processes  $(X^{1},\dots ,X^{\mathrm{N}})$  and any trading strategy to be of bounded variation. Let's first suppose that there is no payoff-rate process. This assumption will be relaxed in a later section. Suppose also that one of these processes, say  $X_{t}^{1}$ , is defined by a short-rate process  $r$ , so that

$$
X_{t}^{1} = e^{\int_{0}^{t} r_{u} d u}
$$ or


$$ d X_{t}^{1} = r_{t} X_{t}^{1} d t
$$ where  $r_t$  is a deterministic function of  $t$  called the short-rate process. Note that  $X_t^1$  could be replaced by a trading strategy. We can think of  $r_t$  as the risk-free short-term continuously compounding interest rate and of  $X_t^1$


as a risk-free continuously compounding bank account.

The concept of arbitrage and of trading strategy was defined in the previous section. We now introduce the concept of deflators in a continuous-time continuous-state setting. Any strictly positive Ito process is called a deflator. Given a deflator  $Y$  we can deflate any process  $X$ , obtaining a new deflated process

$$
X_{t}^{Y} = X_{t} Y_{t}
$$

For example, any stock price process of a non-defaulting firm or the risk-free bank account is a deflator. For technical reasons it is necessary to introduce the concept of regular deflators. A regular deflator is a deflator that, after deflation, leaves unchanged the set of admissible bounded-variation trading strategies.

We can make the first step towards defining a theory of pricing based on equivalent martingale measures. It can be demonstrated that if  $Y$  is a regular deflator, a trading strategy  $\theta$  is self-financing with respect to the price process  $X = (X^{1},\ldots ,X^{N})$  if and only if it is self-financing with respect to the deflated price process

$$
\mathbf {X}^{Y} = \left(Y_{t} X_{t}^{1}, \ldots , Y_{t} X_{t}^{\mathrm{N}}\right)
$$

In addition, it can be demonstrated that the price process  $\mathbf{X} = (X^{1},\dots,X^{N})$  admits no arbitrage if and only if the deflated price process

$$
\mathbf {X}^{Y} = \left(Y_{t} X_{t}^{1}, \ldots , Y_{t} X_{t}^{N}\right)
$$ admits no arbitrage.


A state-price deflator is a deflator  $\pi$  with the property that the deflated price process  $X^{\pi}$  is a martingale. A martingale is a stochastic process  $M_{t}$  such that its current value equals the conditional expectation of the process at any future time:  $M_{t} = E_{t}[M_{s}], s > t$ . For each price process  $X_{t}^{i}$ , the following relationship therefore holds:

$$
\pi_{t} X_{t}^{i} = E_{t} \left[ \pi_{s} X_{s}^{i} \right], s > t
$$

This definition is the equivalent in continuous time of the definition of a state-price deflator in discrete time. In fact, a state-price deflator is defined as a process  $\pi$  such that


$$
S_{t}^{i} = \frac{1}{\pi_{t}} E_{t} \left[ \sum_{j = t + 1}^{T} \pi_{j} d_{j}^{i} \right]
$$

If there is no intermediate payoff, as in our present case, the previous relationship can be written as

$$
\begin{array}{l} \pi_{t} S_{t}^{i} = E_{t} [ \pi_{T} S_{T}^{i} ] = E_{t} [ E_{t + 1} [ \pi_{T} S_{T}^{i} ] ] \\ = E_{t} [ \pi_{t + 1} S_{t + 1}^{i} ] \\ \end{array}
$$

The next proposition states that if there is a regular state-price deflator, then there is no arbitrage. The demonstration of this proposition hinges on the fact that, as the deflated price process is a martingale, the following relationship holds:

$$
E \left[ \int_{0}^{T} \theta_{u} d S_{u}^{\pi} \right] = 0
$$ and therefore any self-financing trading strategy is a martingale. We can thus write


$$
\pmb {\theta}_{0} \pmb {S}_{0}^{\pi} = E [ \pmb {\theta}_{T} S_{T}^{\pi} ]
$$

If

$$
\begin{array}{l} \theta_{T} S_{T}^{\pi} \geq 0 \quad \text{th en} \quad \theta_{0} S_{0}^{\pi} \geq 0 \\ \text{an di f} \quad \theta_{T} S_{T}^{\pi} > 0 \quad \text{th en} \quad \theta_{0} S_{0}^{\pi} > 0 \\ \end{array}
$$ which shows that there cannot be any arbitrage.


We have now stated that the existence of state-price deflators ensures the absence of arbitrage. The converse of this statement in a continuous-state, continuous-time setting is more delicate and will be dealt with later. We will now move on to equivalent martingale measures.

# EQUIVALENT MARTINGALE MEASURES

In the previous section we saw that if there is a regular state-price deflator then there is no arbitrage. A state-price deflator transforms every price process and every self-financing trading strategy into a martingale. We will now see that, after discounting by an appropriate process, price processes become martingales through a transformation of the real probability measure into an equivalent martingale measure.2 This theory parallels the theory of equivalent martingale measures developed in the discrete-state, discrete-time setting in the entry "Arbitrage Pricing: Finite-State Models." First some definitions must be discussed.


Given a probability measure  $P$ , the probability measure  $Q$  is said to be equivalent to  $P$  if both assign probability zero to the same events, that is, if  $P(A) = 0$  if and only if  $Q(A) = 0$  for every event  $A$ . The equivalent probability measure  $Q$  is said to be an equivalent martingale measure for the process  $X$  if  $X$  is a martingale with respect to  $Q$  and if the Radon-Nikodym derivative

$$
\xi = \frac{d Q}{d P}
$$ has finite variance. The definition of the Radon-Nikodym derivative is the same here as it is in the finite-state context. The Radon-Nikodym derivative is a random variable  $\xi$  such that  $Q(A) = E^{P}[\xi I_{A}]$  for every event  $A$  where  $I_{A}$  is the indicator function of the event  $A$ .


To develop an intuition for this definition, consider that any stochastic process  $X$  is a time-dependent random variable  $X_{t}$ . The latter is a family of functions  $\Omega \to R$  from the set of states to the real numbers indexed with time such that the sets  $\{X_t(\omega) \leq x\}$  are events for any real  $x$ . Given the probability measure  $P$ , the finite-dimension distributions of the process  $X$  are determined. The equivalent measure  $Q$  determines another set of finite-dimension distributions. However, the correspondence between the process paths and the states remains unchanged.

The requirement that  $P$  and  $Q$  are equivalent is necessary to ensure that the process is effectively the same under the two measures. There is no assurance that given an arbitrary process an equivalent martingale measure exists. Let's assume that an equivalent martingale measure does exist for the  $N$ -dimensional price process

$\mathbf{X} = (X^{1},\ldots ,X^{N})$  . It can be demonstrated that if the price process  $\mathbf{X} = (X^{1},\dots,X^{\mathrm{N}})$  admits an equivalent martingale measure, then there is no arbitrage.

The proof is similar to that for state-price deflators as discussed above. Under the equivalent martingale measure  $Q$ , which we assume exists, every price process and every self-financing trading strategy becomes a martingale. Using the same reasoning as above it is easy to see that there is no arbitrage.

This result can be generalized; here is how. If there is a regular deflator  $Y$  such that the deflated price process  $\mathbf{X}^{Y} = (Y_{t}X_{t}^{1},\dots,Y_{t}X_{t}^{N})$  admits an equivalent martingale measure, then there is no arbitrage. The proof hinges on the result established in the previous section that, if there is a regular deflator  $Y$ , the price process  $\mathbf{X}$  admits no arbitrage if and only if the deflated price process  $\mathbf{X}^{Y}$  admits no arbitrage.

Note that none of these results is constructive. They only state that the existence of an equivalent martingale measure with respect to a price process ensures the absence of arbitrage. Conditions to ensure the existence of an equivalent martingale measure with respect to a price process are given in the next section.

# EQUIVALENT MARTINGALE MEASURES AND GIRSANOV'S THEOREM

We first need to establish an important mathematical result known as Girsanov's theorem. This theorem applies to Itô processes. Let's first state Girsanov's theorem in simple cases. Let  $X$  be a single-valued Itô process where  $B$  is a single-valued standard Brownian motion:

$$
X_{t} = x + \int_{0}^{t} \mu_{s} d s + \int_{0}^{t} \sigma_{s} d B_{s}
$$

Suppose that a process  $\nu$  and a process  $\theta$  such that  $\sigma_t\theta_t = \mu_t - \nu_t$  are given. Suppose, in addition, that the process  $\theta$  satisfies the Novikov condition which requires


$$
E \left[_{e} \left(\frac{1}{2} \int_{0}^{t} \theta_{s}^{2} d s\right) \right] <   \infty
$$

Then, there is a probability measure  $Q$  equivalent to  $P$  such that the following integral

$$
\hat {B}_{t} = B_{t} + \int_{0}^{t} \theta_{s} d s
$$ defines a standard Brownian motion  $\hat{B}_t$  in  $R$  on  $(\Omega, \mathfrak{I}, Q)$  with the same standard filtration of the original Brownian motion  $B_t$ . In addition, under  $Q$  the process  $X$  becomes


$$
X_{t} = x + \int_{0}^{t} v_{s} d s + \int_{0}^{t} \sigma_{s} d \hat {B}_{s}
$$

Girsanov's theorem states that we can add drift to a standard Brownian motion and still obtain a standard Brownian motion under another probability measure. In addition, by changing the probability measure we can arbitrarily change the drift of an Ito process.

The same theorem can be stated in multiple dimensions. Let  $X$  be an  $N$ -valued Itô process:

$$
X_{t} = x + \int_{0}^{t} \mu_{s} d s + \int_{0}^{t} \sigma_{s} d B_{s}
$$

In this process,  $\mu_{S}$  is an  $N$ -vector process and  $\sigma_{s}$  is an  $N\times D$  matrix. Suppose that there are both a vector process  $\nu = (\nu^{1},\dots,\nu^{\mathrm{N}})$  and a vector process  $\theta = (\theta^{1},\dots,\theta^{\mathrm{N}})$  such that  $\sigma_t\theta_t = \mu_t - \nu_t$  where the product  $\sigma_t\theta_t$  is not a scalar product but is performed component by component. Suppose, in addition, that the process  $\theta$  satisfies the Novikov condition:

$$
E \left[_{e} \left(\frac{1}{2} \int_{0}^{t} \theta \cdot \theta d s\right) \right] <   \infty
$$

Then there is a probability measure  $Q$  equivalent to  $P$  such that the following integral

$$
\hat {B}_{t} = B_{t} + \int_{0}^{t} \theta_{s} d s
$$ defines a standard Brownian motion  $\hat{B}_t$  in  $R^D$  on  $(\Omega, \Im, Q)$  with the same standard filtration of the original Brownian motion  $B_t$ . In addition, under  $Q$  the process  $X$  becomes


$$
X_{t} = x + \int_{0}^{t} v_{s} d s + \int_{0}^{t} \sigma_{s} d \hat {B}_{s}
$$

Girsanov's theorem essentially states that under technical conditions (the Novikov condition) by changing the probability measure, it is possible to transform an Itô process into another Itô process with arbitrary drift. Prima facie, this result might seem unreasonable. In the end the drift of a process seems to be a fundamental feature of the process as it defines, for example, the average of the process. Consider, however, that a stochastic process can be thought as the set of all its possible paths. In the case of an Itô process, we can identify the process with the set of all continuous and square integrable functions. As observed above, the drift is an average, and it is determined by the probability measure on which the process is defined. Therefore, it should not be surprising that by changing the probability measure it is possible to change the drift.

# The Diffusion Invariance Principle

Note that Girsanov's theorem requires neither that the process  $X$  be a martingale nor that  $Q$  be an equivalent martingale measure. If  $X$  is indeed a martingale under  $Q$ , an implication of Girsanov's theorem is the diffusion invariance principle, which can be stated as follows. Let  $X$  be an Itô process:

$$ d X_{t} = \mu_{t} d t + \sigma_{t} d B_{t}
$$

If  $X$  is a martingale with respect to an equivalent probability measure  $Q$ , then there is a standard Brownian motion  $\hat{B}_T$  in  $R^{\mathrm{D}}$  under  $Q$  such that

$$ d X_{t} = \sigma_{t} d \hat {B}_{t}
$$

Let's now apply the previous results to a price process  $X = (V, S^1, \ldots, S^{N-1})$  where

$$ d S_{t} = \mu_{t} d t + \sigma_{l} d B_{t}
$$ and


$$ d V_{t} = r_{t} V_{t} d t
$$

If the short-term rate  $r$  is bounded,  $V_{t}^{-1}$  is a regular deflator. Consider the deflated processes:

$$
Z_{t} = S_{t} V_{t}^{- 1}
$$

By Ito's lemma, this process satisfies the following stochastic equation:

$$ d Z_{t} = \left(- r_{t} Z_{t} + \frac{\mu_{t}}{V_{t}}\right) d t + \frac{\sigma_{t}}{V_{t}} d B_{t}
$$

Suppose there is an equivalent martingale measure  $Q$ . Under the equivalent martingale measure  $Q$ , the discounted price process

$$
Z_{t} = S_{t} \mathrm{V}_{t}^{- 1}
$$ is a martingale. In addition, by the diffusion invariance principle there is a standard Brownian motion  $\hat{B}_t$  in  $R^D$  under  $Q$  such that:


$$ d Z_{t} = \frac{\sigma_{t}}{V_{t}} d \hat {B}_{t}
$$

Applying Ito's lemma, given that  $Z_{t}V_{t} = S_{t}$  we obtain the fundamental result:

$$ d S_{t} = r_{t} d t + \sigma_{t} d \hat {B}_{t}
$$

This result states that, under the equivalent martingale measure, all price processes become Ito processes with the same drift.

# Application of Girsanov's Theorem to Black-Scholes Option Pricing Formula

To illustrate Girsanov's theorem, let's see how the Black-Scholes option pricing formula can be obtained from an equivalent martingale measure. In the previous setting, let's assume that  $N = 3$ ,  $d = 1$ ,  $r_t$  is a constant and

$$
\sigma_{t} = \sigma S_{t}
$$ with  $\sigma$  constant. Let  $S$  be the stock price process and  $C$  be the option price process. The option's price at time  $T$  is


$$
C = \max  \left(S_{T}^{1} - K\right)
$$

In this setting, therefore, the following three equations hold:

$$ d S_{t} = \mu_{t}^{S} d t + \sigma S_{t}^{S} d B_{t}
$$

$$ d C_{t}^{2} = \mu_{t}^{c} d t + \sigma_{t}^{c} d B_{t}
$$

$$ d V_{t} = r V_{t} d t
$$

Given that  $C_t V_t^{-1}$  is a martingale, we can write

$$
C_{t} = V_{t} E_{t}^{Q} \left[ \frac{C_{T}^{2}}{V_{t}} \right] = E_{t}^{Q} \left[ e^{- r (T - t)} \max  \left(S_{T} - K\right) \right]
$$

It can be demonstrated by direct computation that the above formula is equal to the Black-Scholes option pricing formula presented earlier in this entry.

# EQUIVALENT MARTINGALE MEASURES AND COMPLETE MARKETS

In the continuous-state, continuous-time setting, a market is said to be complete if any finite-variance random variable  $Y$  can be obtained as the terminal value at time  $T$  of a self-financing trading strategy  $\theta: Y = \theta_T X_T$ . A fundamental theorem of arbitrage pricing states that, in the absence of arbitrage, a market is complete if and only if there is a unique equivalent martingale measure. This condition can be made more specific given that the market is populated with assets that follow Ito processes. Suppose that the price process is  $\mathbf{X} = (V, S^1, \ldots, S^{N-1})$  where, as in the previous section:

$$ d S_{t} = \mu_{t} d t + \sigma_{t} d B_{t}
$$

$$ d V_{t} = r V_{t} d t
$$ and  $\mathbf{B}$  is a standard Brownian motion  $B = (B^{1},\ldots ,B^{D})$  in  $R^D$


It can be demonstrated that markets are complete if and only if  $\mathrm{rank}(\sigma) = d$  almost everywhere. This condition should be compared with the conditions for completeness we established in the discrete-state setting. In that setting, we demonstrated that markets are complete if and only if the number of linearly independent price processes is equal to the maximum number of branches leaving a node. In fact, market completeness is equivalent to the possibility of solving a linear system with as many equations as branches leaving each node.


In the present continuous-state setting, there are infinite states and so we need different types of considerations. Roughly speaking, each price process (which is an Ito process) depends on  $D$  independent sources of uncertainty as we assume that the standard Brownian motion is  $D$ -dimensional. In a finite-state setting this means that, if processes are Markovian, at each time step any process can jump to  $D$  different values. The market is complete if there are  $D$  independent price processes. Note that the number  $D$  is arbitrary.

# EQUIVALENT MARTINGALE MEASURES AND STATE PRICES

We will now show that equivalent martingale measures and state prices are the same concept. We use the same setting as in the previous sections. Suppose that  $Q$  is an equivalent martingale measure after deflation by the process

$$
\frac{1}{V_{t}^{1}} = e^{\int_{0}^{t} - r_{u} d u}
$$ where  $r$  is a bounded short-rate process. The density process  $\xi_{t}$  for  $Q$  is defined as


$$
\xi_{t} = E_{r} \left[ \frac{d Q}{d P} \right], t \in [ 0, T ]
$$ where


$$
\left[ \frac{d Q}{d P} \right]
$$ is the Radon-Nikodym derivative of  $Q$  with respect to  $P$ . As in the discrete-state setting, the Radon-Nikodym derivative of  $Q$  with respect


to  $P$  is a random variable

$$
\xi = \left[ \frac{d Q}{d P} \right]
$$ with average value on the entire space equal to 1 and such that, for every event  $A$ , the probability of A under  $Q$  is the average of  $\xi$ :


$$
P^{Q} (A) = E_{A} [ \xi ]
$$

It can be demonstrated that, given any  $\mathfrak{S}_t$ -measurable random variable  $W$ , the density process  $\xi_t$  for  $Q$  has the following property:

$$
E_{t}^{Q} [ W ] = \frac{E_{t} [ W \xi_{t} ]}{\xi_{t}}
$$

To gain an intuition for the Radon-Nikodym derivative in a continuous-state setting, let's assume that the probability space is the real line equipped with the Borel  $\sigma$ -algebra and with a probability measure  $P$ . In this case,  $\xi = \xi(x)$ ,  $R \to R$  and we can write

$$
Q (A) = \int_{A} \xi d P
$$ or,  $dQ = \xi dP$ . Given any random variable  $X$  with density  $f$  under  $P$  and density  $q$  under  $Q$ , we can then write


$$
E^{Q} [ X ] = \int_{R} x q (x) d x = \int_{R} x \xi (x) f (x) d x
$$

In other words, the random variable  $\xi$  is a function that multiplies the density  $f$  to yield the density  $q$ .

We can now show the following key result. Given an equivalent martingale measure with density process  $\xi_{t}$  a state-price deflator is given by the process

$$
\pi_{t} = \xi_{t} e^{\int_{0}^{t} - r_{u} d u}
$$

Conversely, given a state-price deflator  $\pi_t$ , the density process

$$
\xi_{t} = e^{\intop_{0}^{t} r_{u} d u} \frac{\pi_{t}}{\pi_{0}}
$$ defines an equivalent martingale measure. In fact, suppose that  $Q$  is an equivalent martingale


measure for  $X^Y$  with  $\pi_t = \xi_t Y_t$  where

$$
Y_{t} = e^{\int_{0}^{t} - r_{u} d u}
$$

Then, using the above relationship we can write:

$$
\begin{array}{l} E_{t} [ \pi_{t} X_{t} ] = E_{t} [ \xi_{t} X_{t}^{Y} ] = \xi_{t} E_{t}^{Q} [ \xi_{t} X_{t}^{Y} ] = \xi_{t} X_{t}^{Y} \\ = \pi_{t} X_{t} \\ \end{array}
$$ which shows that  $\pi_t$  is a state-price deflator. The same reasoning in reverse order demonstrates that if  $\pi_t$  is a state-price deflator then:


$$
\xi_{t} = e^{\intop_{0}^{t} r_{u} d u} \frac{\pi_{t}}{\pi_{0}}
$$ is a density process for  $Q$ .


# ARBITRAGE PRICING WITH A PAYOFF RATE

In the analysis thus far, we assumed that there is no intermediate payoff. The owner of an asset makes a profit or aloss due only to the changes in value of the asset. Let's now introduce a payoff-rate process  $\delta_t^i$  for each asset  $i$ . The payoff-rate process must be interpreted in the sense that the cumulative payoff of each individual asset is

$$
D_{t}^{i} = \int_{0}^{t} \delta_{s}^{i} d s
$$

We define a gain process

$$
G_{t}^{i} = S_{t}^{i} + D_{t}^{i}
$$

By the linearity of the Ito integrals, we can write any trading strategy as

$$
\int_{0}^{t} \theta_{t} d G_{t} = \int_{0}^{t} \theta_{t} d X_{t} + \int_{0}^{t} \theta_{t} d D_{t}
$$

If there is a payoff-rate process, a self-financing trading strategy is a trading strategy such that the following relationship holds:


$$
\begin{array}{l} \theta_{t} \mathbf {S}_{t} = \sum_{i} \theta_{t}^{i} S_{t}^{i} = \sum_{i} \left(\theta_{t}^{i} S_{t}^{i} \right. \\ + \int_{0}^{t} \theta_{t}^{i} d G_{t}^{i}), t \in [ 0, T ] \\ \end{array}
$$

An arbitrage is, as before, a self-financing trading strategy such that

$$
\theta_{0} \mathbf {S}_{0} <   0 \text{an d} \theta_{T} \mathbf {S}_{T} \geq 0, \text{or} \theta_{0} \mathbf {S}_{0} \leq 0 \text{an d} \theta_{T} \mathbf {S}_{T} > 0
$$

The previous arguments extend to this case. An equivalent martingale measure for the pair  $(D, S)$  is defined as an equivalent probability measure  $Q$  such that the Radon-Nikodym derivative

$$
\xi = \left[ \frac{d Q}{d P} \right]
$$ has finite variance and the process  $G = S + D$  is a martingale. Under these conditions, the following relationship holds:


$$
S_{t} = E_{t}^{Q} \left[ e^{\int_{r}^{T} - r_{u} d u} + \int_{t}^{T} e^{\int_{t}^{S} - r_{u} d u} d D_{s} \right]
$$

# IMPLICATIONS OF THE ABSENCE OF ARBITRAGE

We saw that the existence of an equivalent martingale measure or of state-price deflators implies absence of arbitrage. We have also seen that, in the absence of arbitrage, markets are complete if and only if there is a unique equivalent martingale measure.

In a discrete-state, discrete-time context we could establish the complete equivalence between the existence of state-price deflators, equivalent martingale measures and absence of arbitrage, in the sense that any of these conditions implies the other two. In addition, the existence of a unique equivalent martingale measure implies absence of arbitrage and market completeness.

In the present continuous-state context, however, absence of arbitrage implies the existence of an equivalent martingale measure and of state price deflators only under rather restrictive and complex technical conditions. If we want to relax these conditions, the condition of absence of arbitrage has to be slightly modified. These discussions are quite technical and will not be presented in this entry.


# WORKING WITH EQUIVALENT MARTINGALE MEASURES

The concepts established in the preceding sections of this entry might seem very complex, abstract, and scarcely useful. On the contrary, they entail important simplifications in the computation of derivative prices. Applications of these computations can be found in the pricing of bonds and credit derivatives. Here we want to make a few general comments on how these tools are used.

The key result of the arbitrage pricing theory is that, under the equivalent martingale measure, all discounted price processes become martingales and all price processes have the same drift. Therefore, all calculations can be performed under the assumption that the change to an equivalent martingale measure has been made. This environment allows important simplifications. For example, as we have seen, the option pricing problem becomes a problem of computing the present value of simpler processes.

Obviously one has to go back to a real environment at the end of the pricing exercise. This is essentially a calibration problem, as risk-neutral probabilities have to be estimated from real probabilities. Despite this complication, the equivalent martingale methodology has proved to be an important tool in derivative pricing.

# KEY POINTS

- A trading strategy is a vector-valued process that represents portfolio weights at each moment.

- Trading gains are defined as stochastic integrals.
- A self-financing trading strategy is one whose value at every moment is the initial value plus the trading gains at that moment.
- An arbitrage is a self-financing trading strategy whose initial value is either negative and the final value nonnegative or the initial value non-negative and the final value positive.
- The Black-Scholes option pricing formula can be established by replicating self-financing trading strategies.
- The Black-Scholes pricing argument is based on constructing a self-financing trading strategy that replicates the option price in each state and for each time.
- Absence of arbitrage implies that a replicating self-financing trading strategy must have the same price as the option.
- The Black-Scholes option pricing formula is obtained by solving the partial differential equation implied by the equality of the replicating self-financing trading strategy and the option price process.
- A deflator is any strictly positive Itô process; a state-price deflator is a deflator with the property that the deflated price process is a martingale.
- If there is a (regular) state-price deflator, then there is no arbitrage; the converse is true only under a number of technical conditions.
- Two probability measures are said to be equivalent if they assign probability zero to the same event.
- Given a process  $X$  on a probability space with probability measure  $P$ , the probability measure  $Q$  is said to be an equivalent martingale measure if it is equivalent to  $P$  and  $X$  is a martingale with respect to  $Q$  (plus other conditions).
- If there is a regular deflator such that the deflated price process admits an equivalent martingale measure, then there is no arbitrage.

- Under the equivalent martingale measure, all Itô price processes have the same drift.
- In the absence of arbitrage, a market is complete if and only if there is a unique equivalent martingale measure.

