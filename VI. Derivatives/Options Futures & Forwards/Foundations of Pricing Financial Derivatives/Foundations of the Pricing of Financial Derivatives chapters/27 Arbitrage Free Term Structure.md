---
title: "Fitting an Arbitrage-Free Term Structure Model"
parent_directory: "Foundations of the Pricing of Financial Derivatives"
formatted: "2025-12-20 07:00:00 PM"
formatter_model: "claude-sonnet-4"
cli-tool: "opencode"
primary_tags:
  - heath-jarrow-morton model
  - arbitrage free pricing
  - term structure models
  - forward rate models
secondary_tags:
  - interest rate derivatives
  - stochastic volatility
  - no arbitrage conditions
  - binomial tree modeling
  - drift restrictions
  - bond pricing
  - martingale measure
  - factor models
  - volatility structures
  - discrete time models
cssclasses: academia
---

# Fitting an Arbitrage-Free Term Structure Model

One of the most significant discoveries in modern finance research is the Heath-Jarrow-Morton term structure model. It has revolutionized the theory and practice of interest rate derivatives as well as interest rate products in general. The Heath-Jarrow-Morton (1992) model, or HJM as it is commonly known, stands at the head of a family tree of models that take the initial term structure as given, affix the conditions required to preclude arbitrage, and produce trading strategies that lead to the valuation of all interest-dependent claims. Hence, it is in the spirit of the Black-Scholes-Merton model, which takes the price of the underlying and volatility as given and derives the arbitrage-free condition that produces the price of the option.

The HJM model is somewhat similar to a predecessor model by Ho and Lee (HL) (1986). Both models are partial equilibrium models. There are some general equilibrium models of the term structure, such as Vasicek (1977) and Cox-Ingersoll-Ross (1985). Those models derive market equilibrium conditions leading to the prices of fixed-income securities, but they do not fit the current term structure. Hence, they can admit arbitrage if used in extant markets. By accommodating the existing term structure, HJM, as well as HL, can be used in real markets to actually trade. There are a handful of other models, such as in Black, Derman, and Toy (1990), Black and Karasinski (1991), and Brace, Gatarek, and Musiela (1997), that you can, and should, study if you want to become proficient in this subject, but we shall focus on HJM, because it is probably the most well-known, and it is relatively easy to implement assuming a single risk factor for the entire term structure.

What sets HJM apart from HL is the fact that the former admits a wide range of structures for the sources driving interest rates. We should think of an interest rate as being driven by one or more "factors," which are sources of noise or uncertainty. Although HL is a one-factor model, HJM can accommodate any finite number of factors, though with each factor there is a considerable increase in complexity and practicality. In addition, HJM admits an extremely flexible structure for the volatilities of the various interest rates. On the downside, many common versions of HJM are non-Markovian, meaning that they are path dependent, which increases the computational complexity. Also, because the distribution of interest rates is assumed to be normal, HJM models can theoretically allow negative interest rates, although that occurrence would not be common.<sup>1</sup>

## 27.1 Basic Structure of the HJM Model

In contrast to most other term structure models, which are based on movements in spot interest rates, the HJM model is driven by movements in forward interest rates. We start by specifying that the model applies over a period of time  $t \in [0,T]$ . Let  $B(t,T)$  be the price of a zero-coupon bond at time  $t$  that pays 1.0 at time  $T$ . Define  $f(t,T)$  as the continuously compounded forward rate observed at time  $t$  for an instantaneous transaction to begin at time  $T$ . That is, based on the term structure in existence at time  $t$ , we observe a forward rate for a transaction to start at  $T$  and end an instant later.

In a typical situation, we find the present value of a future amount by discounting at the spot rate. We start with a simple example using annual discrete compounding. For example, suppose we want to know the present value of 1.0 two years from today. We then would discount 1.0 by the operation  $1 / [1 + r(0,2)]^2$  where  $r(0,2)$  is the two-year spot rate. We can, however, discount by the one-year spot rate and the one-year ahead forward rate. That is, let  $f(0,1)$  be the forward rate observed at time 0 for a one-period transaction to start at time 1 and obviously end at time 2. Thus, we can find the present value of 1.0 paid at time 2, denoted  $B(0,2)$  by the calculation,

$$
B(0,2) = \frac{1}{[1 + r(0,1)][1 + f(0,1)]}.
$$

The substitution of the one-period spot rate and the one-period ahead forward rate is valid because

$$
f (0, 1) = \frac {[ 1 + r (0 , 2) ] ^ {2}}{1 + r (0 , 1)} - 1.
$$

So, in a continuous time world, the price at time  $t$  of a 1.0 face value zero-coupon bond maturing at  $T$  is given as

$$
B (t, T) = \exp \left(- \int_ {t} ^ {T} f (t, s) d s\right). \tag {27.1}
$$

That is, we can obtain the price of a zero-coupon bond by successively discounting at the forward rates. Note that we can extract a given forward rate by differentiating the previous equation with respect to  $T$ :

$$
f(t,T) = -\frac{\partial \log B(t,T)}{\partial T}. \tag{27.2}
$$

Although Equation (27.2) is a nice mathematical specification of a forward rate, it is not of much practical use without a formula that relates the spot price to its maturity. Such a formula can be obtained only for limited cases. This formula reminds us, however, that forward rates, specifically instantaneous forward rates, are derivatives of bond prices with respect to maturity. The shortest forward rate, the one defined as  $f(t,t)$ , is of special significance. It is a spot rate that is sometimes called the short rate,

$$
r(t) = f(t,t). \tag{27.3}
$$

In the HJM model, this is the only spot rate that commands our attention.

Starting from an initial state at time 0, HJM proposes that the forward rate observed at time 0 for period  $T$ ,  $f(0,T)$ , changes in the following manner during the time from 0 to  $T$ :

$$
f(t,T) - f(0,T) = \int_{0}^{t} \alpha(\nu,T) d\nu + \sum_{i=1}^{n} \int_{0}^{t} \sigma_{i}(\nu,T) dW_{i}(\nu). \tag{27.4}
$$

We must now carefully examine this important equation. The term  $\alpha(\nu, T)$  is the instantaneous drift term observed at time  $\nu$  for the forward rate at  $T$ . The second expression on the right-hand side begins with a summation of  $n$  terms, which means it is an  $n$ -factor model. These factors are captured by the terms,  $\sigma_i(\nu, T)$  and  $dW_i(\nu)$ . The term  $\sigma_i(\nu, T)$  is the volatility of factor  $i$  observed at time  $\nu$  for the forward rate at  $T$ . The term  $dW_i(\nu)$  is a Wiener process representing the source of uncertainty for factor  $i$  at time  $\nu$ . There are some formal mathematical restrictions required to uphold these assumptions, but we need not concern ourselves with them here. The expression in simple terms says that the forward rate started off at a value of  $f(0, T)$  and evolved over time to a value of  $f(t, T)$ . These changes in the forward rate reflected the accumulation, as indicated by the integrals, of the infinitesimal changes that consist of drift and volatility that have occurred over the period 0 to  $T$ .

HJM go on to show that even though we do not really need to know it, the spot rate process can be derived and is quite similar to that of the forward rate:

$$
r(t) = f(0,t) + \int_{0}^{t} \alpha(\nu,t) d\nu + \sum_{i=1}^{n} \int_{0}^{t} \sigma_{i}(\nu,t) dW_{i}(\nu). \tag{27.5}
$$

In addition, the process for the bond price is given as

$$
\frac{dB(t,T)}{B(t,T)} = [r(t) + b(t,T)] dt + \sum_{i=1}^{n} a_{i}(t,T) dW_{i}(t), \tag{27.6}
$$

where

$$
a_{i}(t,T) \equiv -\int_{t}^{T} \sigma_{i}(t,\nu) d\nu
$$

$$
b(t,T) \equiv -\int_{t}^{T} \alpha(t,v) dv + \frac{1}{2} \sum_{i=1}^{n} a_{i}(t,T)^{2}. \tag{27.7}
$$

This expression should look somewhat familiar because it resembles the stochastic process ordinarily used for an asset. Note that the drift, however, consists of the risk-free rate and another term, and that there are multiple volatilities representing the various factors.

HJM go on to derive their most important result, which is that the condition of no arbitrage implies that a martingale probability measure exists and implies a restriction on the drift coefficients of the forward rates. Specifically, for the  $n$ -factor model, we have

$$
\alpha(t,T) = \sum_{i=1}^{n} \sigma_{i}(t,T) \int_{t}^{T} \sigma(t,v) dv. \tag{27.8}
$$

This statement means that the drift is not independent of the volatility and is in fact a specific function of the volatility. At a given time point  $t$ , the drift for the forward rate to start at  $T$  is obtained by integrating, meaning to essentially add, all of the volatilities over the time periods from  $t$  to  $T$  and multiplying by the sum of the volatilities across all of the factors observed at  $t$  for the rate to start at  $T$ . Again, this restriction ensures that no arbitrage opportunities are possible. We do not explore the details of how this result is obtained in continuous time, but we will look at it more carefully in a discrete time framework later in this chapter and also in Chapter 28.

In general, the continuous time HJM model is written as

$$
df(t,T) = \alpha(t,T) dt + \sum_{i=1}^{n} \sigma_{i}(t,T) dW_{i}(t), \tag{27.9}
$$

with the drift restricted as given above in Equation (27.8).

In the HJM model, the volatility structure is an input. What we mean by a volatility structure is a concept with three dimensions. Consider one volatility,  $\sigma_{i}(a,b)$ . It has three parameters. The subscript  $i$  refers to the factor that we call  $i$ . There can be many factors, each of which should be thought of as a source of risk, meaning some effect that drives volatility. Examples of factors might be Federal Reserve policy, government fiscal policy, exchange rates, the stock market, and so on. The HJM model accommodates an unlimited number of factors. Jumping to the third parameter,  $b$  identifies the maturity or expiration of the forward contract to which the rate applies. If  $b$  is, say, five, it means that we are referring to the volatility of a forward contract on the one-period rate that matures in five periods. The other parameter,  $a$ , is a time series factor and reflects how a particular volatility varies over time. For example, for factor  $i$ , maturity five, we have  $\sigma_{i}(0,5)$ ,  $\sigma_{i}(1,5)$ ,  $\sigma_{i}(2,5)$ , …, and so on. These volatilities capture how the risk of that rate varies over time. There is clearly a lot of information in the volatility structure, and although this gives the model a great deal of flexibility, it also places heavy demands on the user. When we illustrate it, we shall use just one factor, a limited number of maturities, and just a few time periods.

There need not be any formal mathematical structure to these volatilities. In other words, they need not be related to each other mathematically. There are some special cases of HJM involving specific mathematical structures to the volatility, such as

$$
\sigma(t,T) = \sigma e^{-\lambda (T - t)}, \tag{27.10}
$$

which is called exponentially dampened volatility. In this case a single volatility,  $\sigma$ , is given and all successive volatilities are related to it. The specification results in volatilities declining at an exponential rate. This particular structure is especially convenient because it permits many closed-form solutions for options and other derivatives. For details see Jarrow and Turnbull (2000, Chapters 16 and 17).

Other volatility functions include the simple case of constant volatility

$$
\sigma(t,T) = \sigma, \tag{27.11}
$$

which makes this model equivalent to HL. Another case sometimes seen is the nearly proportional volatility,

$$
\sigma(t,T) = \eta(t,T) \min[f(t,T), M], \tag{27.12}
$$

where  $\eta(t, T)$  is a deterministic function and  $M$  is a large positive constant. This specification sets the volatility proportional to the current forward rate and caps it on the upper end so that it will not become unreasonably high. Two other structures seen are

$$
\sigma(t,T) = \sigma f(t,T)^{\gamma}
$$

$$
\sigma(t,T) = \sigma r(t)^{\gamma} e^{-\lambda (T - t)}. \tag{27.13}
$$

Note that these examples and the nearly proportional volatility case are examples of which the volatility is stochastic but completely dependent on the level of rates. Thus, although these are stochastic volatility models, they are not independent stochastic volatility models. Hence, they do not pose any additional problems not already present in the model. For more on volatility structures of the HJM model, see Jarrow (2002), Ritchken (1996), and Ritchken and Sankarasubramanian (1995).

## 27.2 Discretizing the HJM Model

With the exception of a few restrictive volatility structures, the HJM model does not produce closed-form solutions for the prices and risk measures of various instruments. $^{7}$  Hence, numerical methods are normally required. Here we will look at discretizing the HJM model for use in a binomial tree. In doing so, we shall gain a deeper understanding of the model and especially the drift restriction that prevents arbitrage. At this level, we shall focus exclusively on the one-factor version. Hence, we are given the stochastic process for the forward rate, Equation (27.9). Because we shall use only a one-factor model, Equation (27.4) becomes

$$
df(t,T) = \alpha(t,T) dt + \sigma(t,T) dW(t), \tag{27.14}
$$

where the arbitrage-free drift restriction, Equation (27.8), becomes

$$
\alpha(t,T) = \sigma(t,T) \int_{t}^{T} \sigma(t,v) dv. \tag{27.15}
$$

To generate a binomial version of the model, we must first consider the information with which we have to work. We shall need the prices of a set of bonds maturing at discrete time points,  $1, 2, 3, \ldots, T - 1, T$ . If  $T$  is the longest maturity available, that would mean we have  $T$  forward rates available,  $f(0,0), f(0,1), \ldots, f(0,T - 1)$ .<sup>8</sup> We would then need volatilities for maturities of  $1, 2, \ldots, T - 1$ . This set of information will be sufficient to build a binomial tree of  $T - 1$  time steps.<sup>9</sup> First, let us write the stochastic process for the forward rates in discrete form as

$$
\Delta f(t,T) = \alpha(t,T) \Delta t + \sigma(t,T) \Delta W(t). \tag{27.16}
$$

To convert a Wiener process to a binomial, we simply express the random variable as a binary variable with a value of  $+1$  or  $-1$  at each time step and assume martingale probabilities of  $\frac{1}{2}$ , as we did in Chapter 16. We assume each time step has a defined length of one unit. Hence, the stochastic process becomes

$$
\Delta f(t,T) = \alpha(t,T) \pm \sigma(t,T). \tag{27.17}
$$

Thus, at a given time, for a given forward rate  $f(t,T)$ , we move one step ahead to the next time in the following manner:

$$
f(t+1,T)^{+} = f(t,T) + \alpha(t,T) + \sigma(t,T)
$$

$$
f(t+1,T)^{-} = f(t,T) + \alpha(t,T) - \sigma(t,T). \tag{27.18}
$$

That is, we add the drift and add or subtract the volatility. Recall that to prevent arbitrage in a term structure, the local expectations hypothesis (LEH) must hold. The LEH says that the expected return on any financial instrument over the shortest time period must be the riskless rate, where expectations are taken using a special martingale probability measure that appeals to the local expectations hypothesis. That is,

$$
B(t,T) = B(t,t+h) E^{\mathcal{Q}} [B(t+h,T)], \tag{27.19}
$$

where the superscript  $Q$  means that expectations are taken using the martingale probabilities. The first term,  $B(t,t + h)$ , is the price of the bond with the shortest maturity. In multiplying by it, we are discounting at the riskless rate. The second term,  $E^Q [B(t + h,T)]$ , is the expectation of the bond price at time  $t + h$ . By discounting this expectation at the riskless rate, we obtain the current bond price.

Writing Equation (27.19) as

$$
\frac{B(t,T)}{B(t,t+b)} = E^{\mathcal{Q}} [B(t+b,T)], \tag{27.20}
$$

and using Equation (27.1), which states that the bond price can be found by discounting at the sequence of forward rates, we substitute and obtain

$$
\frac{B(t,T)}{B(t,t+b)} = e^{-\int_{t}^{T} f(t,v) dv} e^{\int_{t}^{t+b} f(t,v) dv} = e^{-\int_{t+b}^{T} f(t,v) dv}. \tag{27.21}
$$

This result must equal the expectation in Equation (27.20), which can be found by evaluating the following expression based on Equation (27.18):

$$
e^{-\int_{t+b}^{T} f(t,v) dv} = \frac{1}{2} e^{-\int_{t+b}^{T} [f(t,v) + \alpha(t,v) + \sigma(t,v)] dv} + \frac{1}{2} e^{-\int_{t+b}^{T} [f(t,v) + \alpha(t,v) - \sigma(t,v)] dv}. \tag{27.22}
$$

This expectation reflects the binomial probabilities of  $\frac{1}{2}$  and the integrals represent the discounting of the sequence of forward rates. In other words, the two terms that are multiplied by  $\frac{1}{2}$  are the next two possible bond prices, which themselves are obtained by discounting at the sequence of forward rates over the remaining lives of the bonds. After some additional math, we obtain

$$
\alpha(t,T) = \sigma(t,T) \int_{t}^{T} \sigma(t,v) dv, \tag{27.23}
$$

which is the result we obtained as Equation (27.15).

To actually work with the HJM model in discrete time, however, requires that we obtain a discretized version of the drift restriction. HJM (1991) provide a version of this

result, which they obtain in a clever way. Using a binomial model, they get a result that they extend to continuous time by letting the time step approach zero. They then use it to show the correct drift in a simple binomial example. Ritchken (1996: 579-580) notes this result but this is not correct for the binomial case. Starting with a binomial model, obtaining a result and taking the continuous time limit to that result is certainly correct. But the discrete time version of this continuous time limit is not correct, as shown by Grant and Vora (1999, 2006), who go on to derive the correct discrete time formula. They start with a variation of the expression we used:

$$
B(t,T) = E^{Q} [B(t+h,T)] B(t,t+h). \tag{27.24}
$$

They then make use of the fact that a Wiener process is a normal distribution, so the interaction of the volatilities has convenient properties, and the correlation between all forward rates in a one-factor model is 1.0. After considerable algebra, they find a simple expression for the drift,

$$
\alpha(t,T) = \frac{1}{2} [\sigma^{2}(t,T) + 2 \sigma(t,T) \sum_{j=t+1}^{T-1} \sigma(t,j)]. \tag{27.25}
$$

This value can be computed very easily from the covariance matrix of forward rate volatilities, which we shall demonstrate in a numerical example below. Grant and Vora refer to this term as the drift adjustment term though there is really no reason to call it anything other than the drift. Another good treatment of how this procedure unfolds is in Jarrow and Chatterjea (2013).

## 27.3 Fitting a Binomial Tree to the HJM Model

Let us now work a numerical example. We start with the following information for the term structure of forward rates:

$$
\begin{array}{l} f(0,0) = 0.068 \\ f(0,1) = 0.072 \\ f(0,2) = 0.08 \\ f(0,3) = 0.082. \\ \end{array}
$$

Of course, the shortest forward rate,  $f(0,0)$ , is the spot rate. These rates imply the following bond prices:

$$
\begin{array}{l} B(0,1) = e^{-0.068} = 0.9343 \\ B(0,2) = e^{-(0.068 + 0.072)} = 0.8694 \\ B(0,3) = e^{-(0.068 + 0.072 + 0.08)} = 0.8025 \\ B(0,4) = e^{-(0.068 + 0.072 + 0.08 + 0.082)} = 0.7393. \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/4bf688bae48615747b5f6430f2ad3e6b827d78198fe6c56601e10cac2c5d378e.jpg)  
FIGURE 27.1 Structural Layout of One-Period Binomial Tree of Forward Rates

The volatilities at time 0 are given as

$$
\sigma(0,1) = 0.02
$$

$$
\sigma(0,2) = 0.015
$$

$$
\sigma(0,3) = 0.01.
$$

Figure 27.1 shows the structure of the problem. The volatilities are known, as just given, and could be filled in, but we use symbols here so the reader can see the distinction between the original forward rates, the drifts, and the volatilities.

We need to find the drifts,  $\alpha(0,1)$ ,  $\alpha(0,2)$ , and  $\alpha(0,3)$  to determine the rates at time 1 that will guarantee no arbitrage. When we have that done, we can move ahead to time 2.

The Grant-Vora formula was given as Equation (27.25). Unfortunately, this formula will be a little confusing when  $t = 0$  and  $T = 1$ , because then we would be summing from  $j = 1$  to 0. What happens is that this whole term drops out. To avoid this confusion, there is an alternative equivalent formula:

$$
\alpha(t,T) = \sigma(t,T) \sum_{j=t+1}^{T} \sigma(t,j) - \frac{\sigma^{2}(t,T)}{2}. \tag{27.26}
$$

Because we are used to working with variances and covariances, these formulas may look familiar. Consider any two forward rates  $f(t,T)$  and  $f(t,T - 1)$ . The covariance at  $t$  between these rates is  $\sigma (t,T)\sigma (t,T - 1)\rho (t,T - 1)$ , where  $\rho (t,T - 1)$  is the correlation between the two forward rates. The use of a linear one-factor model, however, means that these rates are perfectly correlated. Hence, the covariance is simply the product of the volatilities, that is,  $\sigma (t,T)\sigma (t,T - 1)$ . Thus, the covariance matrix will be of the form,

<table><tr><td></td><td>1</td><td>2</td><td>3</td></tr><tr><td>1</td><td>σ2(0,1)</td><td>σ(0,1)σ(0,2)</td><td>σ(0,1)σ(0,3)</td></tr><tr><td>2</td><td>σ(0,2)σ(0,1)</td><td>σ2(0,2)</td><td>σ(0,2)σ(0,3)</td></tr><tr><td>3</td><td>σ(0,3)σ(0,1)</td><td>σ(0,3)σ(0,2)</td><td>σ2(0,3).</td></tr></table>

In other words, by knowing the volatility structure we know the variances and covariances of all of the forward rates for all time points up to the final one. Grant and Vora show that the drift for any maturity  $T$  will be one-half the sum of the elements in the  $i^{th}$  row and  $j^{th}$  column. For our example, the values in the covariance matrix are

<table><tr><td></td><td>1</td><td>2</td><td>3</td></tr><tr><td>1</td><td>0.0004</td><td>0.0003</td><td>0.0002</td></tr><tr><td>2</td><td>0.0003</td><td>0.000225</td><td>0.00015</td></tr><tr><td>3</td><td>0.0002</td><td>0.00015</td><td>0.0001.</td></tr></table>

Let us begin to derive the term structure with maturity  $T = 1$ . We can use the formula

$$
\begin{array}{l} \alpha(0,1) = \sigma(0,1) \sum_{j=1}^{1} \sigma(0,1) - \frac{\sigma^{2}(0,1)}{2} \\ = \sigma(0,1) \sigma(0,1) - \frac{\sigma^{2}(0,1)}{2} = \frac{\sigma^{2}(0,1)}{2} \\ = \frac{0.0004}{2} = 0.0002, \\ \end{array}
$$

or using the covariance matrix

$$
\alpha(0,1) = \frac{0.0004}{2} = 0.0002.
$$

For maturity  $T = 2$ , we obtain the drift by the formula

$$
\begin{array}{l} \alpha(0,2) = \sigma(0,2) \sum_{j=1}^{2} \sigma(0,j) - \frac{\sigma^{2}(0,2)}{2} \\ = \sigma(0,2) [\sigma(0,1) + \sigma(0,2)] - \frac{\sigma^{2}(0,2)}{2} \\ = 0.015 (0.02 + 0.015) - \frac{0.000225}{2} = 0.0004125, \\ \end{array}
$$

or using the covariance matrix,

$$
\alpha(0,2) = \frac{0.0003 + 0.000225 + 0.0003}{2} = 0.0004125.
$$

For maturity  $T = 3$ , we have the formula

$$
\begin{array}{l} \alpha(0,3) = \sigma(0,3) \sum_{j=1}^{3} \sigma(0,j) - \frac{\sigma^{2}(0,3)}{2} \\ = \sigma(0,3) [\sigma(0,1) + \sigma(0,2) + \sigma(0,3)] - \frac{\sigma^{2}(0,3)}{2} \\ = 0.01 (0.02 + 0.015 + 0.01) - \frac{0.0001}{2} = 0.0004, \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/39919fe25c6f67b34e222d8e09242bea85565f1cc8208ba34dd3aa3d1d286619.jpg)  
FIGURE 27.2 Numerical Illustration of One-Period Binomial Tree of Forward Rates

or from the covariance matrix,

$$
\alpha(0,3) = \frac{0.0002 + 0.00015 + 0.0001 + 0.0002 + 0.00015}{2} = 0.0004.
$$

So now we can fill in the first time step of the tree, which is Figure 27.2.

Now suppose we wanted to move forward another time step. If we position ourselves at the top step at time 1, where the rates are  $f(1,1)^{+}$ ,  $f(1,2)^{+}$ , and  $f(1,3)^{+}$ , we can then imagine moving forward to time step 2 in the manner shown in Figure 27.3.

Note that we now require not only new drift terms but also we see volatility terms not previously seen. That is, we started with a term structure of volatility of  $\sigma(0,1)$ ,  $\sigma(0,2)$ , and  $\sigma(0,3)$ . These were the volatilities from time point 0. Now, having moved forward to time point 1, we have a new set of volatilities:  $\sigma(1,2)$  and  $\sigma(1,3)$ . Recall that  $\sigma(0,2)$  was our value at time 0 of the volatility of the forward rate for time 2. Now, at time 1,  $\sigma(1,2)$  is our value of that volatility. Should it be different? In HJM it can indeed be different. In this model, volatility can change over time, but it cannot change stochastically. That is,

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/18f1a28032844e178d7d65d0cd90167578549f84c915503995e9bfa79874573c.jpg)  
FIGURE 27.3 Binomial Tree of Forward Rates from Time 1 Up State

although  $\sigma(1,2)$  can be different from  $\sigma(0,2)$ , we had to have known both values at time 0. In other words, volatility can change, but we have to know to what value it will change.

If we do not impose any time series changes on volatility then we simply use the value  $\sigma(0,2)$  for  $\sigma(1,2)$  and use  $\sigma(0,3)$  for  $\sigma(1,3)$ . Then we would be able to calculate the drift and fit the tree. We would then step down to the lower state at time 1 and determine the rates in the next two states at time 2. As long as we make the assumption that  $\sigma(0,2) = \sigma(1,2)$  and  $\sigma(0,3) = \sigma(1,3)$ , the tree will recombine. In other words, we require constant time series volatility. We do not, however, require equivalent cross-sectional volatility. That is, all rates do not have to have the same volatility for the tree to recombine, but a given rate must have the same volatility across time for the tree to recombine. Also, note that as we move to time step 3, we would require  $\sigma(2,3)$ , which might also be assumed equal to  $\sigma(0,3)$  or could be treated as a different but known value.

Once we have the entire tree filled in, we have all of the information we need to price any bond or derivative. The remainder of the problem is illustrated in the next section. Recall that we never really worked with spot rates. They are related to the forward rates, but all instruments can be priced off of the forward rates as easily as off of the spot rates. In other words, there is no more information in the spot rates that we do not already have with the forward rates.

We should also note that because of the assumption of a normal distribution of interest rates, it is possible to obtain negative interest rates. This problem, as well as the problem of the tree not recombining, can be addressed in certain versions of the model. Further, negative interest rates have sometimes occurred in practice so the normal distribution may be adequate.

Here we have worked only with one-factor models. In the language of term structure movements, single-factor models seem to capture only changes in the general level of interest rates but do not reflect changes in the slope or curvature of the term structure. To capture these effects, multifactor models are required. Multifactor models are much more complex. For example, a tree version of a two-factor HJM model requires a trinomial, and the number of paths for  $T$  time steps is  $3T$ . Clearly some trade-offs are required before deciding to go to models of more than one factor.

So, now let us complete the tree based on all of the information we have.

## 27.4 Filling in the Remainder of the HJM Binomial Tree

Recall that we started with the rates

$$
f (0, 0) = 0. 0 6 8
$$

$$
f (0, 1) = 0. 0 7 2
$$

$$
f (0, 2) = 0. 0 8
$$

$$
f (0, 3) = 0. 0 8 2.
$$

From the volatilities and the no-arbitrage condition, we obtained the following rates:

$$
f(1,1)^{+} = f(0,1) + \alpha(0,1) + \sigma(0,1) = 0.072 + 0.0002 + 0.02 = 0.0922
$$

$$
f(1,2)^{+} = f(0,2) + \alpha(0,2) + \sigma(0,2) = 0.08 + 0.0004125 + 0.015 = 0.0954125
$$

$$
f(1,3)^{+} = f(0,3) + \alpha(0,3) + \sigma(0,3) = 0.082 + 0.0004 + 0.01 = 0.0924
$$

$$
f(1,1)^{-} = f(0,1) + \alpha(0,1) - \sigma(0,1) = 0.072 + 0.0002 - 0.02 = 0.0522
$$

$$
f(1,2)^{-} = f(0,2) + \alpha(0,2) - \sigma(0,2) = 0.08 + 0.0004125 - 0.015 = 0.0654125
$$

$$
f(1,3)^{-} = f(0,3) + \alpha(0,3) - \sigma(0,3) = 0.082 + 0.0004 - 0.01 = 0.0724.
$$

We will extend the tree and add the following rates:

$$
f (2, 2) ^ {+ +} = f (1, 2) ^ {+} + \alpha (1, 2) + \sigma (1, 2)
$$

$$
f (2, 3) ^ {+ +} = f (1, 3) ^ {+} + \alpha (1, 3) + \sigma (1, 3)
$$

$$
f (2, 2) ^ {+ -} = f (1, 2) ^ {+} + \alpha (1, 2) - \sigma (1, 2)
$$

$$
f (2, 3) ^ {+ -} = f (1, 3) ^ {+} + \alpha (1, 3) - \sigma (1, 3)
$$

$$
f (2, 2) ^ {- +} = f (1, 2) ^ {-} + \alpha (1, 2) + \sigma (1, 2)
$$

$$
f (2, 3) ^ {- +} = f (1, 3) ^ {-} + \alpha (1, 3) + \sigma (1, 3)
$$

$$
f (2, 2) ^ {- -} = f (1, 2) ^ {-} + \alpha (1, 2) - \sigma (1, 2)
$$

$$
f (2, 3) ^ {- -} = f (1, 3) ^ {-} + \alpha (1, 3) - \sigma (1, 3)
$$

$$
f (3, 3) ^ {+ + +} = f (2, 3) ^ {+ +} + \alpha (2, 3) + \sigma (2, 3)
$$

$$
f (3, 3) ^ {+ + -} = f (2, 3) ^ {+ +} + \alpha (2, 3) - \sigma (2, 3)
$$

$$
f (3, 3) ^ {+ - +} = f (2, 3) ^ {+ -} + \alpha (2, 3) + \sigma (2, 3)
$$

$$
f (3, 3) ^ {+ - -} = f (2, 3) ^ {+ -} + \alpha (2, 3) - \sigma (2, 3)
$$

$$
f (3, 3) ^ {- + +} = f (2, 3) ^ {- +} + \alpha (2, 3) + \sigma (2, 3)
$$

$$
f (3, 3) ^ {- + -} = f (2, 3) ^ {- +} + \alpha (2, 3) - \sigma (2, 3)
$$

$$
f (3, 3) ^ {- - +} = f (2, 3) ^ {- -} + \alpha (2, 3) + \sigma (2, 3)
$$

$$
f (3, 3) ^ {- - -} = f (2, 3) ^ {- -} + \alpha (2, 3) - \sigma (2, 3).
$$

In order to obtain the drifts at times 1 and 2, we will need to know the volatilities  $\sigma(1,2)$ ,  $\sigma(1,3)$ , and  $\sigma(2,3)$ . Making the assumption that the volatilities do not change, then

$$
\sigma (0, 2) = \sigma (1, 2)
$$

$$
\sigma (0, 3) = \sigma (1, 3) = \sigma (2, 3).
$$

The covariance matrix at time 1 is as follows:

<table><tr><td></td><td>2</td><td>3</td></tr><tr><td>2</td><td>σ2(1,2)</td><td>σ(1,2)σ(1,3)</td></tr><tr><td>3</td><td>σ(1,3)σ(1,2)</td><td>σ2(1,3).</td></tr></table>

The term  $\sigma^2 (1,2)$  is the variance of the one-period-ahead forward rate at time 1, and  $\sigma^2 (1,3)$  is the variance of the two-period-ahead forward rate at time 1. The off-diagonal

term  $\sigma(1,2)\sigma(1,3)$ , which equals the other off-diagonal term  $\sigma(1,3)\sigma(1,2)$ , is the covariance of the oneand two-period-ahead forward rates at time 1. Filling in the numbers we have

2

3

2  $\sigma^2 (1,2) = 0.00025$

$$
\sigma (1, 2) \sigma (1, 3) = (0. 0 1 5) (0. 0 1) = 0. 0 0 0 1 5
$$

3  $\sigma (1,3)\sigma (1,2) = (0.01)(0.015) = 0.00015$

$$
\sigma^ {2} (1, 3) = 0. 0 0 0 1.
$$

Recall that we explained that the drift can be obtained by taking half of the sum of the terms in the appropriate row and column. That is, if we want the drift  $\alpha(i,j)$ , we take half the sum of the elements in the  $i^{th}$  row and  $j^{th}$  column, counting element  $ij$  only once. Thus, the drifts are obtained as

$$
\begin{array}{l} \alpha (1, 2) = \frac {0 . 0 0 0 2 2 5}{2} = 0. 0 0 0 1 1 2 5 \\ \alpha (1, 3) = \left(\frac {1}{2}\right) (0. 0 0 0 1 5 + 0. 0 0 0 1 + 0. 0 0 0 1 5) = 0. 0 0 0 2. \\ \end{array}
$$

Then the rates at time 2 will be

$$
\begin{array}{l} f (2, 2) ^ {+ +} = f (1, 2) ^ {+} + \alpha (1, 2) + \sigma (1, 2) = 0. 0 9 5 4 1 2 5 + 0. 0 0 0 1 1 2 5 + 0. 0 1 5 = 0. 1 1 0 5 2 5 \\ f (2, 3) ^ {+ +} = f (1, 3) ^ {+} + \alpha (1, 3) + \sigma (1, 3) = 0. 0 9 2 4 + 0. 0 0 0 2 + 0. 0 1 = 0. 1 0 2 6 \\ f (2, 2) ^ {+ -} = f (1, 2) ^ {+} + \alpha (1, 2) - \sigma (1, 2) = 0. 0 9 5 4 1 2 5 + 0. 0 0 0 1 1 2 5 - 0. 0 1 5 = 0. 0 8 0 5 2 5 \\ f (2, 3) ^ {+ -} = f (1, 3) ^ {+} + \alpha (1, 3) - \sigma (1, 3) = 0. 0 9 2 4 + 0. 0 0 0 2 - 0. 0 1 = 0. 0 8 2 6 \\ f (2, 2) ^ {- +} = f (1, 2) ^ {-} + \alpha (1, 2) + \sigma (1, 2) = 0. 0 6 5 4 1 2 5 + 0. 0 0 0 1 1 2 5 + 0. 0 1 5 = 0. 0 8 0 5 2 5 \\ f (2, 3) ^ {- +} = f (1, 3) ^ {-} + \alpha (1, 3) + \sigma (1, 3) = 0. 0 7 2 4 + 0. 0 0 0 2 + 0. 0 1 = 0. 0 8 2 6 \\ f (2, 2) ^ {- -} = f (1, 2) ^ {-} + \alpha (1, 2) - \sigma (1, 2) = 0. 0 6 5 4 1 2 5 + 0. 0 0 0 1 1 2 5 - 0. 0 1 5 = 0. 0 5 0 5 2 5 \\ f (2, 3) ^ {- -} = f (1, 3) ^ {-} + \alpha (1, 3) - \sigma (1, 3) = 0. 0 7 2 4 + 0. 0 0 0 2 - 0. 0 1 = 0. 0 6 2 6. \\ \end{array}
$$

Note that because of the constant volatility assumption, some of these rates are duplicates. This is a reflection of the fact that the tree recombines. For example, we have  $f(2, 2)^{+ - - } = f(2, 2)^{- - +}$  and  $f(2, 3)^{+ - - } = f(2, 3)^{- - +}$ .

Moving on to extend our tree to time 3, the covariance matrix of rates at time 2 is simple. We have only the rate  $\sigma^2 (2,3)$ , which is 0.0001. Then the drift,  $\alpha (2,3) = 0.0001 / 2 = 0.00005$ . The rates we need will be

$$
f (3, 3) ^ {+ + +} = f (2, 3) ^ {+ +} + \alpha (2, 3) + \sigma (2, 3) = 0. 1 0 2 6 + 0. 0 0 0 5 + 0. 0 1 = 0. 1 1 2 6 5
$$

$$
f (3, 3) ^ {+ + -} = f (2, 3) ^ {+ +} + \alpha (2, 3) - \sigma (2, 3) = 0. 1 0 2 6 + 0. 0 0 0 5 - 0. 0 1 = 0. 0 9 2 6 5
$$

$$
f (3, 3) ^ {+ - +} = f (2, 3) ^ {+ -} + \alpha (2, 3) + \sigma (2, 3) = 0. 0 8 2 6 + 0. 0 0 0 5 + 0. 0 1 = 0. 0 9 2 6 5
$$

$$
f (3, 3) ^ {+ - -} = f (2, 3) ^ {+ -} + \alpha (2, 3) - \sigma (2, 3) = 0. 0 8 2 6 + 0. 0 0 0 5 - 0. 0 1 = 0. 0 7 2 6 5
$$

$$
f (3, 3) ^ {- + +} = f (2, 3) ^ {- +} + \alpha (2, 3) + \sigma (2, 3) = 0. 0 8 2 6 + 0. 0 0 0 5 + 0. 0 1 = 0. 0 9 2 6 5
$$

$$
f (3, 3) ^ {- + -} = f (2, 3) ^ {- +} + \alpha (2, 3) - \sigma (2, 3) = 0. 0 8 2 6 + 0. 0 0 0 5 - 0. 0 1 = 0. 0 7 2 6 5
$$

$$
f (3, 3) ^ {- - +} = f (2, 3) ^ {- -} + \alpha (2, 3) + \sigma (2, 3) = 0. 0 6 2 6 + 0. 0 0 0 5 + 0. 0 1 = 0. 0 7 2 6 5
$$

$$
f (3, 3) ^ {- - -} = f (2, 3) ^ {- -} + \alpha (2, 3) - \sigma (2, 3) = 0. 0 6 2 6 + 0. 0 0 0 5 - 0. 0 1 = 0. 0 5 6 2 5.
$$

Again, note that the recombining tree means that  $f(3, 3)^{+ + - - } = f(3, 3)^{+ - - + } = f(3, 3)^{- - + + }$  and  $f(3, 3)^{+ - - - } = f(3, 3)^{- - + - } = f(3, 3)^{- - - + }$ .

We now have the tree filled in through time 3, and it is illustrated in Figure 27.4.

Now we have fit the entire term structure through three periods. If we have done this correctly, which is guaranteed by using the proper drifts, the tree will be arbitrage free. If that is the case, then we should be able to derive a tree for the price of any instrument, such that each price is the discounted value of the expected price the next period, where expectations are taken using the martingale probability of  $\frac{1}{2}$ . We shall illustrate this point for a four-period zero-coupon bond. First, let us establish its price at time 0. The initial information given is the set of forward rates  $f(0,0)$ ,  $f(0,1)$ ,  $f(0,2)$ , and  $f(0,3)$ . They imply that the price of the bond at time zero should be

$$
B (0, 4) = e ^ {- (0. 0 6 8 + 0. 0 7 2 + 0. 0 8 + 0. 0 8 2)} = 0. 7 3 9 3.
$$

This is the price of a four-year bond at time 0, and we can verify that by going back to the initial set of bond prices. Now, we should also be able to find this price by applying the equivalent approach of rolling through the tree from maturity back to time 0. We start by pricing this bond at time 3, then working backwards. When we arrive at time zero, we should get this price, subject to perhaps a small round-off error.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/e975bc24fe6f37da0b8bb49e6ed03a334e3ab3ab00175c193d3292a486ea4346.jpg)  
FIGURE 27.4 Binomial Tree over Four Periods

The price at time 3 is obtained by discounting the 1.0 face value at the spot rate at time 3,  $f(3,3)$ . There are, of course, four states at time 3. Thus, the prices in the four states are

$$
B (3, 4) ^ {+ + +} = e ^ {- f (3, 3) ^ {+ + +}} = e ^ {- 0. 1 1 2 6 5} = 0. 8 9 3 5
$$

$$
B (3, 4) ^ {+ + -} = e ^ {- f (3, 3) ^ {+ + -}} = e ^ {- 0. 0 9 2 6 5} = 0. 9 1 1 5
$$

$$
B (3, 4) ^ {- - +} = e ^ {- f (3, 3) ^ {- - +}} = e ^ {- 0. 0 7 2 6 5} = 0. 9 2 9 9
$$

$$
B (3, 4) ^ {- - -} = e ^ {- f (3, 3) ^ {- - -}} = e ^ {- 0. 0 5 2 6 5} = 0. 9 4 8 7.
$$

The prices of this bond at time 2 are found by weighting each of the next two possible outcomes by 0.5 and discounting by the one-period spot rate at time 2,  $f(2,2)^{++}$ ,  $f(2,2)^{+-}$ , and  $f(2,2)^{--}$ , depending on which state we are in:

$$
B (2, 4) ^ {+ +} = [ 0. 5 (0. 8 9 3 5) + 0. 5 (0. 9 1 1 5) ] e ^ {- 0. 1 1 0 5 2 5} = 0. 8 0 8 1
$$

$$
B (2, 4) ^ {+ -} = [ 0. 5 (0. 9 1 1 5) + 0. 5 (0. 9 3 0 0) ] e ^ {- 0. 0 8 0 5 2 5} = 0. 8 4 9 5
$$

$$
B (2, 4) ^ {- -} = [ 0. 5 (0. 9 3 0 0) + 0. 5 (0. 9 4 8 7) ] e ^ {- 0. 0 5 0 5 2 5} = 0. 8 9 3 1.
$$

Stepping back to time 1, we weight each of the next two values by 0.5 and discount by the one-period spot rate at time 1,  $f(1,1)^{+}$  and  $f(1,1)^{-}$ , depending on the state:

$$
B (1, 4) ^ {+} = [ 0. 5 (0. 8 0 8 1) + 0. 5 (0. 8 4 9 5) ] e ^ {- 0. 0 9 2 2} = 0. 7 5 5 8
$$

$$
B (1, 4) ^ {-} = [ 0. 5 (0. 8 4 9 5) + 0. 5 (0. 8 9 3 1) ] e ^ {- 0. 0 5 2 2} = 0. 8 2 7 0.
$$

The price at time 0 is found by weighting each of the next two values by 0.5 and discounting by the one-period spot rate at time 0,  $f(0,0)$ :

$$
B (0, 4) = [ 0. 5 (0. 7 5 5 8) + 0. 5 (0. 8 2 7 0) ] e ^ {- 0. 0 6 8} = 0. 7 3 9 3.
$$

This value differs from the value we originally computed by only a round-off error. Hence, the model is arbitrage free.

## 27.5 Recap and Preview

In this chapter, we developed the continuous time version of the multifactor Heath-Jarrow-Morton model. We then illustrated how the model can be implemented in a binomial world with one factor. We showed that the tree is free of arbitrage.

In Chapter 28, we shall illustrate how this tree can be used to price a wide range of interest rate derivatives.

