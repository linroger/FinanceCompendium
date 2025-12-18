---
aliases:
  - Monte Carlo Simulation
tags:
key_concepts:
parent_directory: Foundations of the Pricing of Financial Derivatives chapters
cssclasses: academia
title: "Chapter 23: Monte Carlo Simulation"
linter-yaml-title-alias: "Chapter 23: Monte Carlo Simulation"
---

# Numerical Methods

# Monte Carlo Simulation

Simulation is a procedure in which random numbers are generated according to probabilities assumed to be associated with a source of uncertainty, such as the sales of a new product or, more appropriately for our purposes, stock prices, interest rates, exchange rates, or commodity prices. Outcomes associated with these random drawings are then analyzed to determine the likely results and the associated risk. Oftentimes this technique is called Monte Carlo simulation, being named for the city of Monte Carlo, which is noted for its casinos.

Gambling analogy notwithstanding, Monte Carlo simulation is a powerful and widely used technique for dealing with uncertainty in many aspects of business operations. For our purposes, it has been shown to be an accurate method of pricing options and particularly useful for types of options for which no known formula exists.

To facilitate an understanding of the technique, we shall look at how Monte Carlo simulation has been used to price standard European options. Of course, we know that under the appropriate assumptions, the Black-Scholes-Merton model is the correct method of pricing these options, so Monte Carlo simulation is not really needed. It is useful, however, to conduct this demonstration under the assumptions of the Black-Scholes-Merton model, because it shows the accuracy of the technique for a simple option of which the exact price is easily obtained from a known formula. That is, it gives us a benchmark from which to judge the accuracy of the simulation.

Unfortunately, Monte Carlo simulation is not very practical for American options because it works by simulating prices forward, whereas the early exercise decision is best valued by positioning oneself at expiration and working backwards, as we do in the binomial model.

# 23.1 STANDARD MONTE CARLO SIMULATION OF THE LOGNORMAL DIFFUSION

Recall that the Black-Scholes-Merton model is based on geometric Brownian motion with risk-neutral growth of the underlying asset,

$$
d S _ {t} = S _ {t} r _ {c} d t + S _ {t} \sigma d W _ {t}, \tag {23.1}
$$

where the stochastic integral solution can be expressed as<sup>2</sup>

$$
S _ {T} = S _ {t} e ^ {\left[ \left(r _ {c} - \frac {\sigma^ {2}}{2}\right) \tau + \sigma \sqrt {\tau} \varepsilon \right]}, \tag {23.2}
$$

where, as we have previously shown, the term  $\varepsilon$  is a normally distributed random number with mean equal to 0 and standard deviation equal to 1. Note that we do not add a time subscript to this epsilon because it is generic within the simulator and time to expiration is handled separately.

The objective of Monte Carlo simulation is to generate a sample of terminal asset prices,  $S_{T}$ . Following Boyle (1977), we desire a simulation that converges quickly to the annualized, continuously compounded rates of return satisfying the following two conditions:

$$
r _ {c} = \frac {E _ {t} \left[ \ln \left(\frac {S _ {T}}{S _ {t}}\right) \right]}{\tau} \text {a n d} \tag {23.3}
$$

$$
\sigma^ {2} = \frac {\operatorname {v a r} _ {t} \left[ \ln \left(\frac {S _ {T}}{S _ {t}}\right) \right]}{\tau}. \tag {23.4}
$$

Note also that by using the risk-free rate as the expected return, we are operating under the risk-neutral measure. We shall ultimately be consistent with that assumption by discounting simulated values at the risk-free rate.

What we want to do is generate future asset prices from Equation (23.2). It is actually quite easy. We learned how to do this in Chapter 10, where we simulated Brownian motion. A standard normal random variable, denoted here as  $\varepsilon$ , can be approximated with a slight adjustment to Excel's Rand() function, which produces a uniform random number between 0 and 1, meaning that it generates numbers between 0 and 1 with equal probability. A good approximation for a standard normal variable is obtained by the Excel formula,  $= \text{Rand}() + \text{Rand}() + \text{Rand}() + \text{Rand}() + \text{Rand}() + \dots$  or simply 12 uniform ran

\[

\frac{R a n d() + R a n d() + R a n d() + R a n d() + R a n d() + R a n d() + R a n d() + R a n d() + R a n d() + R a n d() + R a n d() + R a n d() + R a n d() + R a n d() + R a n d() + R a n d() + R a n d() + R a n d()

}{\text{dom numbers minus } 6.0}

\]

After generating one standard normal random variable, we then simply insert it into the right-hand side of the above formula for  $dS$ . But the key question is over what period of time this price change applies. Note in Equation (23.1) the continuous increment,  $dt$ . That means the price change is instantaneous, which means an infinitesimally small unit of time. We cannot do simulation in continuous time, so we have to choose a unit of time. Let us choose one day. That is, we change Equation (23.2) to

$$
S _ {\Delta t} = S _ {t} e ^ {\left[ \left(r _ {c} - \frac {\sigma^ {2}}{2}\right) \Delta t + \sigma \sqrt {\Delta t} \varepsilon \right]} \tag {23.5}
$$

and let  $\Delta t = 1/365$ , or approximately 0.0027. So, assuming  $N$  days in the life of the option, the expiration is  $\tau = N/365$ . Recall from Chapter 2, there is some debate on whether to use trading days rather than calendar days. In the US, there are approximately 252 trading days in a year. We then simulate the price change for day 1, which generates a new price, which forms the base of the price change for day 2. We continue this until we have reached the expiration, day  $N$ . Now, we have an estimate of the asset price at expiration,  $S_{T}$ . We then compute the price of the option at expiration according to the standard formulas,  $\max(0, S_{T} - X)$  for a call or  $\max(0, X - S_{T})$  for a put, where  $X$  is the exercise price and  $S_{T}$  is the asset price at expiration. This operation produces one possible option value at expiration. We then repeat this procedure many thousands of times, take the average value of the call at expiration, and discount that value at the risk-free rate. Some users also compute

the standard deviation of the call prices in order to obtain a feel for the possible error in estimating the price.

Alternatively, we can simply simulate the terminal asset price directly rather than the entire path. Thus, we deploy a Monte Carlo simulation and apply it within Equation (23.2). So now let us price a call option on an asset. The asset price is 55, the exercise price is 50, the continuously compounded risk-free rate is 0.05, the volatility is 0.40, and the time to expiration is 0.75; that is, the option expires in nine months, or three-quarters of a year. Inserting the previous approximation formula for a standard normal random variable in any cell in an Excel spreadsheet produces a random number. Suppose that number is 0.733449. Inserting into Equation (23.2), we obtain

$$
S _ {0. 7 5} = 5 5 e ^ {\left[ \left(0. 0 5 - \frac {0 . 4 ^ {2}}{2}\right) 0. 7 5 + 0. 4 \sqrt {0 . 7 5} (0. 7 3 3 4 4 9) \right]} = 6 9. 3 3.
$$

Thus, the simulated value of the asset at expiration is  $69.33. At that price, the option will be worth \max (0, 69.33 - 50) = 19.33$  at expiration. We then draw another random number. Suppose we get  $-0.18985$ . Inserting into Equation (23.2), we obtain

$$
S _ {0. 7 5} = 5 5 e ^ {\left[ \left(0. 0 5 - \frac {0 . 4 ^ {2}}{2}\right) 0. 7 5 + 0. 4 \sqrt {0 . 7 5} (- 0. 1 8 9 8 5) \right]} = 5 0. 3 5.
$$

This gives us an asset price of \$50.35 and an option payoff of max(0, 50.35 - 50) = 0.35. Both of these cases are in-the-money, but many will be out-of-the-money, leading to an option value of zero. We repeat this procedure several thousand times, after which we take an average of the simulated option prices and then discount that average to the present using the present value formula  $e^{-0.05(0.75)}$ .

Recall one way to represent the call value is the present value of the expected terminal payout, where the discounting is based on the risk-free rate and the expected terminal value is based on the underlying asset growing at the risk-free rate. With Monte Carlo simulation, we replace the expected terminal value with the average terminal value or

$$
c _ {t} = P V _ {r} [ E _ {t} (c _ {T}) ] = e ^ {- r _ {c} (T - t)} \left[ \frac {1}{n} \sum_ {i = 1} ^ {n} \max \left(0, S _ {t} e ^ {\left[ \left(r _ {c} - \frac {\sigma^ {2}}{2}\right) \Delta t + \sigma \sqrt {\Delta t} \varepsilon_ {i} \right]} - X\right) \right].
$$

Naturally every simulation is different because each set of random numbers is different. A Monte Carlo procedure written in the R programming language produced Table 23.1 values for this call, whose actual Black-Scholes-Merton price is 11.02, where the number of random drawings is the sample size,  $n$ .

If we reran each simulation, we would obtain different values. As the number of simulations increase, the variation declines, and we get very close to the Black-Scholes-Merton value of 11.02.

To illustrate further, we show several figures with a new set of parameters. Consider now a stock trading at  \$100 with exercise price of\$ 100. Further, assume a 5% interest rate, 30% volatility, and one year to expiration. Figure 23.1 illustrates 200 separate sets of simulations where the sample size increases by a factor of 10. Panel A demonstrates moving from a sample size of 10 to 100 we observe a significant decline in the variation of simulated call prices when compared to the BSM model price of \$14.23. Clearly, as we

TABLE 23.1 Monte Carlo Price of Standard European Call Option  

<table><tr><td>n (number of simulations)</td><td>Option Price</td></tr><tr><td>1,000</td><td>11.42</td></tr><tr><td>5,000</td><td>10.75</td></tr><tr><td>10,000</td><td>11.11</td></tr><tr><td>25,000</td><td>11.02</td></tr><tr><td>50,000</td><td>10.94</td></tr><tr><td>100,000</td><td>11.05</td></tr><tr><td>1,000,000</td><td>11.02</td></tr></table>

move from 10 to 10,000 illustrated in Panel A the variation consistently declines. Note that in Panel B at 100,000 (1e+05), we rescale the  $y$ -axis, enabling you to see the further decline in variation. Without rescaling, the call values would appear constant as the slight variations would be undetectable.

Given the computational time required for large sample sizes, there are several ways to reduce the errors encountered with simulation. We explore several of these methods next.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/87a7954f72e11484176b4fa3b6cd8475c9b542a60e252c4b950c9faf5b5a9942.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/261dc8a9e5758b3614871c4de7753db2fcbb9f6eeecd6ae3ff3ccb97aae99bb7.jpg)

FIGURE 23.1 Sample Error and Monte Carlo Price of Standard European Call Option  
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/ddc89de2bbb4aa63977d352ad62e8596cc01dd1d3becb02ffacf1b16da7e070c.jpg)  
Panel A. y-Axis Scale from  $0 to$  40

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/ad92ce15a312286fea2190e38bdb349fe2b4da5d58c3a43ad7ac36aa2470bf7a.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/2893693f99c96582cb7009caf74e013798076a1583f03005e7e1f296b9ee6b45.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/253c326e8fbd45674a794a9f11e7e0e1d866bd721f1a112206ea6d937c55ad2c.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/af819c210f3f303d586f82c8b430c5fe01ce910545e76f6f801999fb419d13a4.jpg)  
Panel B. y-Axis Scale from  $14.0 to$ 14.5  
FIGURE 23.1 Continued

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/88bedf8fb2a5398feffcbf2326a813220148d95da7025c68c22e5247db81a64a.jpg)

# 23.2 REDUCING THE STANDARD ERROR

The option price obtained from a Monte Carlo simulation is a sample average. Thus, its standard deviation is the standard deviation of the sample divided by the square root of the sample size. Consequently, the error reduces at the rate of 1 over the square root of the sample size. Notice what this means for increasing the sample accuracy by increasing the sample size. Suppose  $\sigma_{S}$  is the sample standard deviation. We first conduct a Monte Carlo simulation using  $n_1$  random drawings. Because the option value is a sample mean, the standard deviation of our estimate of the option value is  $\sigma_{S} / \sqrt{n_{1}}$ , where  $n_1$  is the sample size. Now suppose we wanted to reduce that standard deviation in half. How much larger must the sample be? Let this new sample size be  $n_2$ . Then its standard deviation of the estimate of the option price is  $\sigma_{S} / \sqrt{n_{2}}$ . Now note that the following specification, which reduces the standard deviation of the average in half:

$$
\frac {1}{2} \frac {\sigma_ {S}}{\sqrt {n _ {1}}} = \frac {\sigma_ {S}}{\sqrt {n _ {2}}},
$$

if and only if

$$
n _ {2} = 4 n _ {1}.
$$

TABLE 23.2 Monte Carlo Price of Standard European Call Option  

<table><tr><td rowspan="2">Parameters for 20 samples</td><td colspan="4">Number of Trials</td></tr><tr><td>1,000 (base case)</td><td>4,000</td><td>16,000</td><td>100,000</td></tr><tr><td>Average</td><td>2.9721</td><td>3.0007</td><td>2.9774</td><td>2.9795</td></tr><tr><td>Standard deviation</td><td>0.0921</td><td>0.0561</td><td>0.0219</td><td>0.0126</td></tr><tr><td>Percentage reduction from base case</td><td>NA</td><td>39.09%</td><td>76.22%</td><td>86.32%</td></tr></table>

Thus, to achieve a  $50\%$  reduction in error, that is, a  $50\%$  increase in accuracy, we must quadruple the number of random drawings. The standard error reduces only at the rate of the square root of the sample size, not at the rate of the sample size itself.

Table 23.2 provides an example of this effect. Consider a European call with an asset price of 42, an exercise price of 40, a volatility of 0.35, a risk-free rate of  $5\%$ , and a time to expiration of one month, which is  $1/12 = 0.0833$ . The table presents the results of simulations of 1,000, 4,000, 16,000, and 100,000 trials. For each set of these trials, the simulation is run 20 times. In other words, there are 20 simulations of 1,000 trials, 20 simulations of 4,000 trials, and so on. The mean and standard deviation of each group of 20 simulations of 1,000, 4,000, 16,000, and 100,000 trials is shown in the table. Starting off with the 1,000-trial case, the average value is 2.9721 with a standard deviation of 0.0921 across the 20 runs of 1,000 trials each. Now, suppose we want to cut that standard deviation in half. As noted, we need to quadruple the number of trials. Hence, we do 20 runs of 4,000 trials. The average is shown as 3.0007 and the standard deviation is 0.0561. This is a reduction of about  $39\%$ , which is not the  $50\%$  reduction we hoped for, but the formula is not an exact result. It is a sample result and will get more accurate with larger samples. If we want to cut the standard deviation by  $75\%$ , the formula above would say that we need 16,000 trials. In the next column, notice that the reduction in standard deviation is  $76\%$ . The final column is the case of 100,000 trials, which is the number required to cut the standard deviation by  $90\%$ . Note that it does a pretty good job, as the standard deviation is reduced by  $86\%$ .

But still, it can take a lot of trials to get a high degree of accuracy. Notice with 100,000 trials, the standard deviation in this problem is about 1.3 cents. Because the sample average is normally distributed by the central limit theorem, we can say that the mean estimate of 2.9795 is bracketed with  $95\%$  confidence in a range of plus or minus two standard deviations, which is  $2(0.0126) = 0.0252$ . That means the confidence interval is 2.9543 to 3.0047. For an institution with a lot of volume, a five-cent interval can be quite large.

# 23.2.1 The Antithetic Variate Method

With this problem in mind, it behooves the user of Monte Carlo simulation to attempt to achieve greater accuracy through other means. One method of doing so is quite simple and automatically doubles the sample size with only a minimum increase in computational time. This approach is called the antithetic variate method. Remember that in the standard Monte Carlo simulation, we are generating observations of a standard normal random variable. The standard normal random variable is distributed with a mean of zero, a variance of 1.0, and is symmetric. Thus, for each value we draw, there is an equally likely chance of having drawn the observed value times  $-1$ . Consequently, for each value of  $\varepsilon$  we

draw, we can legitimately create an artificially observed companion observation of  $-\varepsilon$ . This paired drawing is the antithetic variate. We simply use it the same way we use the value we drew, that is, in computing a sequence of asset prices from which we compute an option price based on the price at expiration. This procedure automatically doubles our sample size without having increased the number of random drawings. To take advantage of the antithetic variate method, we should average the option price from the standard result with the option price from the antithetic variate result. We get two observations for the price of one as well as a more accurate average.

In the case of Black-Scholes-Merton, which converges rapidly in a simulation, this may not matter that much.

# 23.2.2 The Control Variate Method

Another method that can be used with certain types of options is called the control variate method, which in this context is a somewhat similar option whose value is known. We then obtain a simulated value of that option. The difference between the value of the control variate and its simulated value is then added to the simulated value of the option we are trying to price. In this manner, the error in the control variate is added to the simulated value of the option of interest. Let us see how this method works.

Let  $c_{s}$  be the simulated price of the option we are trying to price. Let  $\nu_{t}$  be the value of another similar option and  $\nu_{s}$  be its simulated value. Our control variate estimate of the option price is then found as

$$
c _ {s} + (\nu_ {t} - \nu_ {s}).
$$

What we are doing is running a simulation of  $c_{s} - \nu_{s}$  and adding  $\nu_{t}$  to try to obtain a better estimate. Note the following result for the variance:

$$
\operatorname {v a r} \left(c _ {s} - v _ {s}\right) = \operatorname {v a r} \left(c _ {s}\right) + \operatorname {v a r} \left(v _ {s}\right) - 2 \operatorname {c o v} \left(c _ {s}, v _ {s}\right).
$$

This will be less than  $\operatorname{var}(c_s)$  if  $\operatorname{var}(\nu_s) < 2\operatorname{cov}(c_s, \nu_s)$ , meaning that the control variate method relies on the assumption of a large covariance between  $c_s$  and  $\nu_s$ . The control variate chosen should be one that is very highly correlated with the option we are pricing.

The control variate method is somewhat appropriate when pricing complex and path-dependent options. It can be challenging to use, however, in that we must know a great deal about the relationship of the price of the control variate to the price of the option of interest. Often it is difficult to know something about that relationship without knowing how to price the option of interest.

# 23.2.3 Other Methods for Improved Simulation

There are a number of methods for improving the accuracy of Monte Carlo simulation. Some methods improve the sampling process so that random but unusual results are balanced with more typical outcomes. These methods belong to a family called low discrepancy sequences. For example, if a random sample is generated, it is quite possible that numbers that ought to appear with a given frequency within a specific range might not appear with the expected frequency. Some common techniques from this family are Halton sequences and Sobol numbers, which are used to supply random outcomes that result in the sample of random numbers being much closer to a truly random sample with observed outcomes as expected.

# 23.3 SIMULATION WITH MORE THAN ONE RANDOM VARIABLE

In some cases, we wish to simulate more than one random variable. In certain situations, these variables are independent; in others, the two variables are related. Independent random variables are similar to rolling a pair of dice. What happens on one die is unrelated to what happens on another die. If the random variables of interest have that characteristic, it is a simple matter to run two parallel simulations, each generating random variables that are completely unrelated to each other. In some cases, however, the random variables are related, most often in a linear manner. The linear relationship between random variables is captured by the correlation.<sup>5</sup>

Suppose we wish to generate two normal random values that have correlation of  $\rho$ , which could be two asset prices or interest rates. First, we generate two independent, standard normal random values  $x_{1}$  and  $x_{2}$ . We set  $\varepsilon_{1}$  equal to  $x_{1}$  and obtain  $\varepsilon_{2}$  in the following manner:

$$
\varepsilon_ {2} = \rho x _ {1} + x _ {2} \sqrt {1 - \rho^ {2}}. \tag {23.6}
$$

The reason this formula works is simple.

$$
E (\varepsilon_ {1}) = E (x _ {1}) = 0
$$

$$
E (\varepsilon_ {2}) = E \left(\rho x _ {1} + x _ {2} \sqrt {1 - \rho^ {2}}\right) = p E \left(x _ {1}\right) + \sqrt {1 - \rho^ {2}} E \left(x _ {2}\right) = 0
$$

$$
\operatorname {v a r} \left(\varepsilon_ {1}\right) = \operatorname {v a r} \left(x _ {1}\right) = 1
$$

$$
\begin{array}{l} \operatorname {v a r} \left(\varepsilon_ {2}\right) = \operatorname {v a r} \left(\rho x _ {1} + x _ {2} \sqrt {1 - \rho^ {2}}\right) \\ = \rho^ {2} \operatorname {v a r} \left(x _ {1}\right) + \left(1 - \rho^ {2}\right) \operatorname {v a r} \left(x _ {2}\right) + 2 \rho \sqrt {1 - \rho^ {2}} \operatorname {c o v} \left(x _ {1}, x _ {2}\right) \\ = \rho^ {2} + 1 - \rho^ {2} + 0 = 1 \\ \end{array}
$$

$$
\begin{array}{l} \operatorname {c o r r} \left(\varepsilon_ {1}, \varepsilon_ {2}\right) = \operatorname {c o r r} \left(x _ {1}, \rho x _ {1} + x _ {2} \sqrt {1 - \rho^ {2}}\right) \\ = \frac {\operatorname {c o v} \left(x _ {1} , \rho x _ {1} + x _ {2} \sqrt {1 - \rho^ {2}}\right)}{\operatorname {v a r} \left(\varepsilon_ {1} , \varepsilon_ {2}\right)} = \operatorname {c o v} \left(x _ {1}, \rho x _ {1} + x _ {2} \sqrt {1 - \rho^ {2}}\right) \\ = \operatorname {c o v} \left(x _ {1}, \rho x _ {1}\right) + \operatorname {c o v} \left(x _ {1}, x _ {2} \sqrt {1 - \rho^ {2}}\right) = \rho \operatorname {c o v} \left(x _ {1}, x _ {1}\right) + \sqrt {1 - \rho^ {2}} \operatorname {c o v} \left(x _ {1}, x _ {2}\right) \\ = \rho \operatorname {v a r} \left(x _ {1}\right) + 0 = \rho \operatorname {v a r} \left(x _ {1}\right) \\ = \rho . \\ \end{array}
$$

These proofs show that the two independent random variables have expected values of 0, variances of 1, and a correlation of  $\rho$ . Thus, they meet our requirements. Now, armed with values of  $\varepsilon_{1}$  and  $\varepsilon_{2}$ , we can proceed by inserting into the analog of Equation (23.5) for each of the two assets, using the respective values of the expected change and volatility of each asset we are simulating.

# 23.4 RECAP AND PREVIEW

In this chapter, we examined the method of Monte Carlo simulation, which can be used to price options by generating a large sample of outcomes for the underlying, calculating

the corresponding option payoff, averaging that payoff, and discounting by the risk-free rate. We illustrated it for the standard Black-Scholes-Merton case, but the benefit of Monte Carlo lies in its ability to handle more complex cases.

In Chapter 24, we look at one more numerical procedure, the finite difference method, which solves the partial differential equation in a numerical manner.

# QUESTIONS AND PROBLEMS

1 Let  $x_{1}$  and  $x_{2}$  denote two independent standard normal random variables with mean 0 and variance 1. Explain how to generate two dependent standard normal random variables. Prove your approach works.  
2 Explain how one transforms correlated standard normal random variables to correlated normal random variable with nonzero means and variance not equal to one.  
3 Identify and discuss two ways to reduce the standard error of the estimate when pricing options with Monte Carlo simulation.  
4 The following two figures were generated with Monte Carlo simulation. One figure is based on geometric Brownian motion (GBM) and one figure is based on arithmetic Brownian motion (ABM). Identify each figure and defend your answer.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/b8228211cc42d1bfd0f7560925e03f421594cc7ca073c2a1a962deb00db54fa1.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/c45e5d7ba820605d86f0178130f4d0766f440f4183b45de13b50cf0386a2ce43.jpg)

5 The option price obtained from a Monte Carlo simulation is a sample average. Distinguish between the standard deviation of a sample and the standard deviation of the sample mean estimate and explain the implication of this point for Monte Carlo simulation.  
[Contributed by Jeremy Vasseur] Suppose you wish to use the antithetic variate method to increase the number of observations in a Monte Carlo simulation. You are not, however, using a normal distribution but rather an asymmetric distribution to generate the random values. Explain whether you can use the antithetic variate method to conduct this simulation.

# NOTES

1. The seminal work on the use of Monte Carlo simulation in option pricing is Boyle (1977).  
2. See, for example, Chapter 12, Section 4. Also, a dividend yield could easily be incorporated.  
3. This approximation is based on the fact that the distribution of the sum of 12 uniformly distributed random numbers between 0 and 1 will have a mean of 6.0 and a standard deviation of 1. By subtracting 6.0, we shift the mean to zero without changing the standard deviation. What we obtain is technically not normally distributed, but it is symmetric, with mean zero and standard deviation of 1.0, which are three properties associated with the normal distribution. The procedure is widely accepted as a quick and reasonable approximation but might not pass the most demanding tests for normality. However, many other random number generators would also not pass the most demanding tests either. The Excel nested function normsinvrand() will also generate a standard normal directly from the uniform random number.
4. Although this is a point from the most elementary principles of statistics, it is important to distinguish between the standard deviation of a sample and the standard deviation of the sample mean estimate. The latter is the former divided by the square root of the sample size. Hence, the sample mean is much less volatile than the sample values themselves.
5. Although we covered this point in Chapter 4, it is worth repeating that two variables that are independent will have zero correlation, but two variables that have zero correlation can be highly dependent. As an example, the relationship  $y = \sin(x)$  expresses the familiar sine function, a repeating wave in which  $y$  goes up and then down alternatively as  $x$  increases. The variable  $y$  is completely dependent on  $x$ , but the relationship is nonlinear. A graph shows a very obvious curve, not a straight line. Calculation of the correlation between  $y$  and  $x$  would result in a value of approximately zero, even though  $y$  and  $x$  are highly related, of course, in a nonlinear manner.

