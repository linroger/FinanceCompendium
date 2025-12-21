
---
title: "Discrete Probability Distributions"
parent_directory: "Probability Theory"
formatted: "2025-12-21 08:15:00 AM"
formatter_model: "claude-haiku-4-5-20251001"
cli-tool: "claude-code"
primary_tags:
  - discrete probability distributions
  - random variables
  - probability laws
  - binomial distribution
  - poisson distribution
secondary_tags:
  - bernoulli distribution
  - hypergeometric distribution
  - multinomial distribution
  - discrete uniform distribution
  - mean and variance
  - cumulative distribution function
  - stock price models
  - credit risk modeling
  - urn problems
  - binomial coefficients
cssclasses: academia
---

# Discrete Probability Distributions

MARKUS HÖCHSTÖTTER, PhD

Assistant Professor, University of Karlsruhe

SVETLOZAR T. RACHEV, PhD, Dr Sci

Frey Family Foundation Chair-Professor, Department of Applied Mathematics and Statistics, Stony Brook University, and Chief Scientist, FinAnalytica

FRANK J. FABOZZI, PhD, CFA, CPA

Professor of Finance, EDHEC Business School

Abstract: Discrete probability distributions are needed whenever the random variable is to describe a quantity that can assume values from a countable set, either finite or infinite. A discrete probability distribution (or law) is quite intuitive in that it assigns certain values positive probabilities adding up to one, while any other value automatically has zero probability. In general, neglecting some of the mathematical rigor, discrete distributions can be understood from the insight gained from descriptive statistics. For example, the random number of defaults in a bond portfolio inside of a given period of time can be modeled with a discrete probability distribution. Another example is given by sampling when we are interested in whether an observation belongs to a certain group. Also, simple stock price models are based on discrete laws where the stock price can only change to one of a finite number of possible values.

Discrete random variables are random variables on the countable space. We present the most important discrete random variables used in finance and their probability distribution (also called probability law): Bernoulli, binomial, hypergeometric, multinomial, Poisson, and discrete uniform.

Appendix A provides a summary of the discrete distributions covered.

# DISCRETE LAW

In order to understand the distributions discussed in this entry, we will explain the general concept of a discrete law. Based on the knowledge of countable probability spaces, we introduce the random variable on the countable space as the discrete random variable. To fully comprehend the discrete random variable, it is necessary to become familiar with the process of assigning probabilities to events in the countable case. Furthermore, the cumulative distribution function will be presented as an important representative of probability. It is essential to understand the mean and variance parameters. Wherever appropriate, we draw analogies to descriptive statistics for a facilitation of the learning process.


$$
P (E) = \sum_{\omega_{i} \in E} p_{i}
$$ with the  $p_i$  being the probabilities of the individual outcomes  $\omega_{i}$  in the event  $E$ . Remember that the random variable  $X$  is the mapping from  $\Omega$  into  $\Omega^{\prime}$  such that the state space  $\Omega^{\prime}$  is countable. (We denote random variables by capital letters, such as  $X$ , whereas the outcomes are denoted by small letters, such as  $x_{i}$ .) Thus, the probability of any event  $E^{\prime}$  in the state space has probability


$$
P (X \in E^{\prime}) = P^{X} (E^{\prime}) = \sum_{\omega_{i}: X (\omega_{i}) \in E^{\prime}} p_{i}
$$ since  $E^{\prime}$  is associated with the set


$$
\{\omega_{i}: X (\omega_{i}) \in E^{\prime} \}
$$ through  $X$ . The probability of each individual outcome of  $X$  yields the discrete probability law of  $X$ . It is given by  $P(X = x_{i}) = p_{i}^{X}$ , for all  $x_{i} \in \Omega'$ .

Only for individual discrete values  $x$  is the probability  $p^X$  positive. This is similar to the empirical frequency distribution with positive relative frequency  $f_i$  at certain observed values. If we sort the  $x_i \in \Omega$  in ascending order, analogous to the empirical relative cumulative frequency distribution

$$
F_{e m p}^{f} (x) = \sum_{x_{i} \leq x} f_{i}
$$ we obtain the discrete cumulative distribution (cdf) of  $X$ ,

$$
F^{X} (x) = P (X \leq x) = \sum_{x_{i} \leq x} p_{i}^{X}
$$

That is, we express the probability that  $X$  assumes a value no greater than  $x$ .

Suppose we want to know the probability of obtaining at most 3 dots when throwing a dice. That is, we are interested in the cdf of the random variable number of dots, at the value  $x = 3$ . We obtain it by

$$
F^{X} (3) = p_{1} + p_{2} + p_{3} = 1 / 6 + 1 / 6 + 1 / 6 = 0. 5
$$ where the $p_i$ denote the respective probabilities of the number of dots less than or equal to 3. A graph of the cdf is shown in Figure 1.


# Mean and Variance

The sample mean and variance are sample dependent statistics. Here we present the mean and variance of the distribution as parameters where the probability space can be understood as the analog to the population.

To illustrate, we use the random variable number of dots obtained by tossing a dice. Since we treat the numbers as numeric values, we are able to perform transformations and computations with them. By throwing a dice several times, we would be able to compute a sample average based on the respective outcome. So, a question could be: What number is theoretically expected? In our discussion below, we see how to answer that question.

# Mean

The mean is the population equivalent to the sample average of a quantitative variable. In order to compute the sample average, we sum up all observations and divide the resulting value by the number of observations, which we will denote by  $n$ . Alternatively, we sum over all values weighted by their relative frequencies.

This brings us to the mean of a random variable. For the mean of a random variable, we compute the accumulation of the outcomes weighted by their respective probabilities; that is,

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/d974c428b56bed771c12baac7b11044b36f67e9e1c93ad3b99f7fdf95d3497c0.jpg)
Figure 1 Cumulative Distribution Function of Number of Dots Appearing from Tossing a Dice


$$
E (X) = \sum_{x_{i} \in \Omega} x_{i} \cdot p_{i}^{X} \tag {1}
$$ given that equation (1) is finite. (Often, the mean is denoted as the parameter  $\mu$ .) If the mean is not finite, then the mean is said to not exist. The mean equals the expected value of the random variable  $X$ . However, as we will see in the following examples, the mean does not actually have to be equal to one of the possible outcomes.


For the number of dots on the dice example, the expected value is

$$
E (X) = \sum_{i = 1}^{6} i \cdot p_{i} \frac{1}{6} \sum_{i = 1}^{6} i = 21/6 = 3.5
$$

So, on average, one can expect a value of 3.5 for the random variable, despite the fact this is not an obtainable number of dots. How can we interpret this? If we were to repeat the dice tossing many times, record for each toss the number of dots observed, then, if we averaged over all numbers obtained, we would end up with an average very close if not identical to 3.5.

Let's move from the dice tossing example to look at a binomial stock price model. With the stock price S at the end of period 1 being either S_{1} = \18 or S_{1} = \22, we have only these two outcomes with positive probability each. We denote the probability measure of the stock price at the end of period 1 by P^{\mathrm{S}}(\cdot). At the beginning of the period, we assume the stock price to be S_{0} = \20. Furthermore, suppose that up-and down-movements are equally likely; that is, P^{\mathrm{S}}(18) = \frac{1}{2} and P^{\mathrm{S}}(22) = \frac{1}{2}. So we obtain


$$
E (S) = 1/2 \cdot \$18 + 1/2 \cdot \$22 = \$20
$$

This means on average, the stock price will remain unchanged even though 20 is itself not an obtainable outcome.

We can think of it this way. Suppose we observed some stock over a very long period of time and the probabilities for up- and down-movements did not change. Furthermore suppose that each time the stock price was \$20 at the beginning of some period, we recorded the respective end-of-period price. Then, we would finally end up with an average of these end-of-period stock prices very close to if not equal to \$20.

# Variance

Just like in the realm of descriptive statistics, we are interested in the dispersion or spread of the data. For this, we introduce the variance as a measure. Our focus is on the variance as a parameter of the random variable's distribution.


A sample measure of spread gives us information on the average deviation of observations from their sample mean. With the help of the variance, we intend to determine the magnitude we have to theoretically expect of the squared deviation of the outcome from the mean. Again, we use squares to eliminate the effect from the signs of the deviations as well as to emphasize larger deviations compared to smaller ones, just as we have done with the sample variance.

For the computation of the expected value of the squared deviations, we weight the individual squared differences of the outcomes from the mean with the probability of the respective outcome. So, formally, we define the variance of some random variable  $X$  to be

$$
\sigma_{X}^{2} = \operatorname{Va r} (X) = \sum_{x_{i} \in \Omega} \left(x_{i} - E (X)\right)^{2} p_{i}^{X} \tag {2}
$$

For example, for the number of dots obtained from tossing a dice, we obtain the variance

$$
\begin{array}{l} \sigma_{X}^{2} = \operatorname{Va r} (X) = \sum_{i = 1}^{6} (i - E (X))^{2} p_{i}^{X} \\ = \frac{1}{6} \left[ (1 - 3.5)^{2} + (2 - 3.5)^{2} + \dots + (6 - 3.5)^{2} \right] \\ = 2.9167 \\ \end{array}
$$

Thus, on average, we have to expect a squared deviation from the mean by roughly 2.9.

The standard deviation is simply the square root of the variance. Formally, the standard deviation is given by

$$
\sigma_{X} = \sqrt{\operatorname{Va r} (X)}
$$

The standard deviation appeals to intuition because it is a quantity that is of the same scale as the random variable  $X$ . In addition, it helps in assessing where the probability law assigns its probability mass. A rule of thumb is that at least  $75\%$  about the probability mass is assigned to a vicinity of the mean that extends two standard deviations in each direction from the mean. Furthermore, this rule states that in at least  $89\%$  of the times, a value will occur that lies in a vicinity of the mean of three standard deviations in each direction.

For the number of dots obtained from tossing a dice, since the variance is 2.9167, the standard deviation is

$$
\sigma_{X} = \sqrt{2.9167} = 1.7078
$$

In Figure 2, we display all possible outcomes 1 through 6 indicated by the  $\circ$  symbol, including the mean of  $E(X) = 3.5$ . We extend a vicinity about the mean of length  $\sigma_{X} = 1.7078$ , indicated by the "+" symbol, to graphically

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/eedbdbb532c0cd1454877fd3bd59fe8ac3c817020342ce7a8243e618bba7f4b0.jpg)
$E(X) = 3.5$ relate the magnitude of the standard deviation to the possible values of  $X$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/d61fff98fa0b84d4b7885550dcaad8c4a03285763edd60714f8b66ae3cb88b15.jpg)
Figure 2 Relation Between Standard Deviation  $(\sigma = 1.7078)$  and Scale of Possible Outcomes 1, 2, ..., 6 Indicated by the  $^{\circ}$  Symbol


# BERNOULLI DISTRIBUTION

In the remainder of this entry, we introduce the most common discrete distributions used in finance. We begin with the simplest one, the Bernoulli distribution.

Suppose we have a random variable  $X$  with two possible outcomes. That is, we have the state space  $\Omega^{\prime} = \{x_{1},x_{2}\}$ . The distribution of  $X$  is given by the probability for the two outcomes, that is,

$$ p_{1}^{X}=p \text{and} p_{2}^{X}=1-p
$$

Now, to express the random experiment of drawing a value for  $X$ , all we need to know is the two possible values in the state space and parameter  $p$  representing the probability of  $x_{1}$ . This situation is represented concisely by the Bernoulli distribution. This distribution is denoted  $B(p)$  where  $p$  is the probability parameter.

Formally, the Bernoulli distribution is associated with random variables that assume the values  $x_{1} = 1$  and  $x_{2} = 0$ , or  $\Omega' = \{0,1\}$ . That is why this distribution is sometimes referred to as the "zero-one distribution." One usually sets the parameter  $p$  equal to the probability of  $x_{1}$  such that

$$ p = P(X = x_{1}) = P(X = 1)
$$

The mean of a Bernoulli distributed random variable is

$$
E (X) = 0 \cdot (1 - p) + 1 \cdot p = p \tag {3}
$$ and the variance is


$$
\begin{array}{l} \operatorname{Va r} (X) = (0 - p)^{2} \cdot (1 - p) + (1 - p)^{2} \cdot p \\ = p \cdot (1 - p) \tag {4} \\ \end{array}
$$

The Bernoulli random variable is commonly used when one models the random experiment where some quantity either satisfies a certain criterion or not. For example, it is employed when it is of interest whether an item is intact or broken. In such applications, we assign the outcome "success" the numerical value 1 and the outcome "failure" the numerical value 0, for example. Then, we model the random variable  $X$  describing the state of the item as Bernoulli distributed.


Consider the outcomes when flipping a coin: head or tail. Now we set head equal to the numerical value 0 and tail equal to 1. We take  $X$  as the Bernoulli distributed random variable describing the side of the coin that is up after the toss. What should be considered a fair coin? It would be one where in  $50\%$  of the tosses, head should be realized and in the remaining  $50\%$  of the tosses, tail should be realized. So, a fair coin yields

$$ p = 1 - p = 0.5
$$

According to equation (3), the mean is then  $E(X) = 0.5$  while, according to equation (4), the variance is  $Var(X) = 0.25$ . Here, again, the mean does not represent a possible value  $x$  from the state space  $\Omega'$ . We can interpret it in the following way: Since 0.5 is halfway between one outcome (0) and the other outcome (1), the coin is fair because the mean is not inclined to either outcome.

As another example, we will take a look at credit risk modeling by considering the risk of default of a corporation. Default occurs when the corporation is no longer able to meet its debt obligations. a priori, default occurring during some period is uncertain and, hence, is treated as random. Here, we view the corporation's failure within the next year as a Bernoulli random variable  $X$ . When the corporation defaults,  $X = 0$  and in the case of survival,  $X = 1$ . For example, a corporation may default within the next year with probability

$$
P (X = 0) = 1 - p = 1 - e^{-0.04} = 0.0392
$$ and survive with probability


$$
P (X = 1) = p = e^{-0.04} = 0.9608
$$

We can, of course, extend the prerequisites of the Bernoulli distribution to a more general case; that is, we may choose values for the two outcomes,  $x_{1}$  and  $x_{2}$ , of the random variable  $X$  different from 0 and 1. Then, we set the parameter  $p$  equal to either one of the probabilities  $P(X = x_{1})$  or  $P(X = x_{2})$ . The distribution yields mean


$$
E (X) = x_{1} \cdot p + x_{2} \cdot (1 - p)
$$ and variance


$$
\operatorname{Va r} (X) = \left(x_{1} - E (X)\right)^{2} \cdot p + \left(x_{2} - E (X)\right)^{2} \cdot (1 - p)
$$ where we set  $p = P(X = x_{1})$


We illustrate this generalization of the Bernoulli distribution in the case of the binomial stock price model. Again, we denote the random stock price at time period 1 by  $S_{1}$ . Recall that the state space  $\Omega' = \{$ 18, \$22\} containing the two possible values for  $S_{1}$ . The probability of  $S_{1}$  assuming value \$18 can be set to

$$
P(S_{1} = \$18) = p
$$ so that


$$
P(S_{1} = \$22) = 1 - p
$$

Hence, we have an analogous situation to a Bernoulli random experiment; however, with  $\Omega^{\prime} = \{\mathbb{S}18,\mathbb{S}22\}$  instead of  $\Omega^{\prime} = \{0,1\}$ .

Suppose that

$$
P(S_{1} = \$18) = p = 0.4 \text{and}
$$

$$
P(S_{1} = \$22) = 1 - p = 0.6
$$

Then, the mean is

$$
E\left(S_{1}\right) = 0.4 \cdot \$18 + 0.6 \cdot \$22 = \$20.4
$$ and the variance


$$
\begin{array}{l} \operatorname{Var}\left(S_{1}\right) = (\$18 - \$20.4)^{2} \cdot 0.4 \\ + (\$22 - \$20.4)^{2} \cdot 0.6 = (\$3.84)^{2} \\ \end{array}
$$

# BINOMIAL DISTRIBUTION

Suppose that we are no longer interested in whether merely one single item satisfies a particular requirement such as success or failure. Instead, we want to know the number of items satisfying this requirement in a sample of  $n$  items. That is, we form the sum over all items in the sample by adding 1 for each item that is success and 0 otherwise. For example, it could be the number of corporations that satisfy their debt obligation in the current year from a sample of 30 bond issues held in a portfolio. In this case, a corporation would be assigned 1 if it satisfied its debt obligation and 0 if it did not. We would then sum up over all 30 bond issues in the portfolio.


Now, one might realize that this is the linking of  $n$  single Bernoulli trials. In other words, we perform a random experiment with  $n$  "independent" and identically distributed Bernoulli random variables, which we denote by  $B(p)$ . Note that we introduced two important assumptions: independent random variables and identically distributed random variables. Independent random variables or independence is an important statistical concept that requires a formal definition. We will not provide one here. Instead, we will simply relate independence to an intuitive interpretation such as uninfluenced by another factor or factors. So in the Bernoulli trials, we assume independence, which means that the outcome of a certain item does not influence the outcome of any others. By identical distribution we mean that the two random variables' distributions are the same. In our context, it implies that for each item, we have the same  $B(p)$  distribution.

This experiment is as if one draws an item from a bin and replaces it into the bin before drawing the next item. Thus, this experiment is sometimes referred to as drawing with replacement. All we need to know is the number of trials,  $n$ , and the parameter  $p$  related to each single drawing. The resulting sum of the Bernoulli random variables is distributed as a binomial distribution with parameters  $n$  and  $p$  and denoted by  $B(n,p)$ .

Let  $X$  be distributed  $B(n, p)$ . Then, the random variable  $X$  assumes values in the state space  $\Omega' = \{0, 1, 2, \dots, n\}$ . In words, the total  $X$  is equal to the number of items satisfying the particular requirement (i.e., having a value of 1).  $X$  has some integer value  $i$  of at least 0 and at most  $n$ .

To determine the probability of  $X$  being equal to  $i$ , we first need to answer the following question: How many different samples of size  $n$  can yield a total of  $i$  hits (i.e., realizations of the outcome  $i$ )? The notation to represent realizing  $i$  hits out of a sample of size  $n$  is

$$
\left( \begin{array}{c} n \\ i \end{array} \right) \tag {5}
$$

The expression in equation (5) is called the binomial coefficient and is explained in Appendix B of this entry.

Since in each sample the  $n$  individual  $B(p)$  distributed items are drawn independently, the probability of the sum over these  $n$  items is the product of the probabilities of the outcomes of the individual items. We illustrate this in the next example.

Suppose we flip a fair coin 10 times (i.e.,  $n = 10$ ) and denote by  $Y_{i}$  the result of the  $i$ -th trial. We denote by  $Y_{i} = 1$  that the  $i$ -th trial produced head and by  $Y_{i} = 0$  that it produced tail. Assume we obtain the following result

<table><tr><td>Y1</td><td>Y2</td><td>Y3</td><td>Y4</td><td>Y5</td><td>Y6</td><td>Y7</td><td>Y8</td><td>Y9</td><td>Y10</td></tr><tr><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>1</td><td>1</td><td>0</td></tr></table>

So, we observe  $X = 5$  times head. For this particular result that yields  $X = 5$ , the probability is

$$
\begin{array}{l} P (Y_{1} = 1, Y_{2} = 1, \dots , Y_{1 0} = 0) \\ = P \left(Y_{1} = 1\right) \cdot P \left(Y_{2} = 1\right) \dots \cdot P \left(Y_{1 0} = 0\right) \\ = p \cdot p \cdot \dots \cdot (1 - p) \\ = p^{5} \cdot (1 - p)^{5} \\ \end{array}
$$

Since we are dealing with a fair coin (i.e.,  $p = 0.5$ ), the above probability is

$$
\begin{array}{l} P(Y_{1} = 1, Y_{2} = 1, \dots, Y_{10} = 0) = 0.5^{5} \cdot 0.5^{5} \\ = 0.5^{10} \approx 0.0010 \\ \end{array}
$$

With

$$
\left( \begin{array}{c} 10 \\ 5 \end{array} \right) = 252
$$ different samples leading to  $X = 5$ , we compute the probability for this value of the total as


$$
\begin{array}{l} P(X = 5) = \left( \begin{array}{c} 10 \\ 5 \end{array} \right) p^{5} \cdot (1 - p)^{5} \\ = 252 \cdot 0.5^{10} = 0.2461 \\ \end{array}
$$

So, in roughly one fourth of all samples of  $n = 10$  independent coin tosses, we obtain a total of  $X = 5$  1s (or heads).

From the example, we see that the exponent for  $p$  is equal to the value of the total  $X$  (i.e.,  $i = 5$ ), and the exponent for  $1 - p$  is equal to  $n - i = 5$ .

Let  $p$  be the parameter from the related Bernoulli distribution (i.e.,  $P(X = 1) = p$ ). The probability of the  $B(n,p)$  random variable  $X$  being equal to some  $\mathbf{i} \in \Omega'$  is given by

$$
P(X = i) = \binom{n}{i} \cdot p^{i} \cdot (1 - p)^{n - i}, i = 1, 2, \dots, n \tag{6}
$$

For a particular selection of parameters, the probability distribution at certain values can be found in the four tables in Appendix A.

The mean of a  $B(n,p)$  random variable is

$$
E (X) = n \cdot p \tag {7}
$$ and its variance is


$$
\operatorname{Va r} (X) = n \cdot p \cdot (1 - p) \tag {8}
$$

Below we will apply what we have just learned to be the binomial stock price model and two other applications.

# Application to the Binomial Stock Price Model

Let's extend the binomial stock price model in the sense that we link  $T$  successive periods during which the stock price evolves. (The entire time span of length  $T$  is subdivided into the adjacent period segments  $(0,1], (1,2], \ldots, (T - 1, T])$ .) In each period  $(t, t + 1]$ , the price either increases or decreases by, say,  $10\%$ . The  $10\%$  can be intuitively thought of as the variability of the stock price  $S$ . Thus, the corresponding factor by which the price will change from the previous period is 0.9 (down movement) and 1.1 (up movement). Based on this assumption about the price movement for the stock each period, at the end of the period  $(t,t + 1]$ , the stock price is


$$
S_{t + 1} = S_{t} \cdot Y_{t + 1}
$$ where the random variable  $Y_{t + 1}$  assumes a value from \{0.9, 1.1\}, with 0.9 representing a price decrease of  $10\%$  and 1.1 a price increase of  $10\%$ . Consequently, in the case of  $Y_{t + 1} = 1.1$ , we have


$$
S_{t + 1} = S_{t} \cdot 1. 1
$$ while, in case of  $Y_{t + 1} = 0.9$ , we have


$$
S_{t + 1} = S_{t} \cdot 0. 9
$$

For purposes of this illustration, let's assume the following probabilities for the down movement and up movement, respectively,

$$
P(Y_{t+1} = 1.1) = p = 0.6
$$ and


$$
P(Y_{t+1} = 0.9) = 1 - p = 0.4
$$

After  $T$  periods, we have a random total of  $X$  up movements; that is, for all periods  $(0,1], (1,2],\ldots,$  and  $(T - 1,T]$ , we increment  $X$  by 1 if the period related factor  $Y_{t + 1} = 1.1$ ,  $t = 0, 1,\ldots,T - 1$ . So, the result is some  $x \in \{1,2,\ldots,T\}$ . The total number of up movements,  $X$ , is a binomial distributed  $B(T,p)$  random variable on the probability space  $(\Omega', \mathbb{A}', P^X)$  where

1. The state space is  $\Omega^{\prime} = \{1,2,\dots,T\}$
2.  $\sigma$ -algebra  $\mathbb{A}'$  is given by the power set  $2^{\Omega'}$  of  $\Omega'$ .
3.  $P^X$  is denoted by the binomial probability distribution given by

$$
P(X = k) = \left( \begin{array}{c} T \\ k \end{array} \right) p^{k} (1 - p)^{T - k}, k = 1, 2, \ldots, T
$$ with  $p = 0.6$


Consequently, according to equations (7) and (8), we have

$$
E(X) = 2 \cdot 0.6 = 1.2
$$ and


$$
\operatorname{Var}(X) = 2 \cdot 0.6 \cdot 0.4 = 0.48
$$

By definition of  $S_T$  and  $X$ , we know that the evolution of the stock price is such that

$$
S_{T} = S_{0} \cdot 1.1^{X} \cdot 0.9^{T - X}
$$

Let us next consider a random variable that is not binomial itself, but related to a binomial random variable. Now, instead of considering the  $B(T,p)$  distributed total  $X$ , we could introduce, as a random variable, the stock price at  $T$  (i.e.,  $S_T$ ). Using an illustration, we will derive the stock price independently of  $X$  and, then, emphasize the relationship between  $S_T$  and  $X$ . Note that  $S_T$  is not a binomial random variable.

Let us set T = 2. We may start with an initial stock price of S_0 = \$20. At the end of the first period, that is, (0,1], we have

$$
S_{1} = S_{0} \cdot Y_{1}
$$ either equal to


$$
S_{1} = \$ 2 0 \cdot 1. 1 = \$ 2 2
$$ or


$$
S_{1} = \$20 \cdot 0.9 = \$18
$$

At the end of the second period, that is, (1,2], we have

$$
S_{2} = S_{1} \cdot Y_{2} = \ 2 2 \cdot 1. 1 = \ 2 4. 2 0
$$ or


$$
S_{2} = S_{1} \cdot Y_{2} = \ 2 2 \cdot 0. 9 = \$ 1 9. 8 0
$$ in the case where S₁ = 22, and


$$
S_{2} = S_{1} \cdot Y_{2} = \ 1 8 \cdot 1. 1 = \$ 1 9. 8 0
$$ or


$$
S_{2} = S_{1} \cdot Y_{2} = \ 1 8 \cdot 0. 9 = \$ 1 6. 2 0
$$ in the case where S1 = 18.


That is, at time  $t + 1 = T = 2$ , we have three possible values for  $S_{2}$ , namely,  $\24.20$ ,  $\$ 19.80 , and 16.20. Hence, we have a new state space

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/deb3cedbcf4114bfe7f0ddd27b3d7fff533456d6e6cd7d63fac11f2ff1188963.jpg)
Figure 3 Binomial Stock Price Model with Two Periods Note: Starting price S_0 = \20. Upward factor u = 1.1, downward d = 0.9

that we will denote by Ω'S' = {{$16.2, $19.8,
\$24.2}}. Note that S2 = \$19.80 can be achieved in two different ways: (1) S1 = S0 · 1.1 · 0.9 and
(2) S1 = S0 · 0.9 1.1. The evolution of this pricing process, between time 0 and T = 2, can be
demonstrated using the binomial tree given in
Figure 3.

As  $\sigma$ -algebra, we use  $\mathbb{A} = 2^{\Omega_S'}$ , which is the power set of the state space  $\Omega_S'$ . It includes events such as, for example, "stock price in  $T = 2$  no greater than \$19.80," defined as  $E' = \{S_2 \leq \$19.80\}$ .

The probability distribution of  $S_{2}$  is given by the following

$$
\begin{array}{l} P \left(S_{2} = \$ 2 4. 2 0\right) = P \left(Y_{1} = 1. 1\right) \cdot P \left(Y_{2} = 1. 1\right) \\ = \left( \begin{array}{c} 2 \\ 2 \end{array} \right) p^{2} = 0. 6^{2} = 0. 3 6 \\ \end{array}
$$

$$
\begin{array}{l} P \left(S_{2} = \$ 1 9. 8 0\right) = P \left(Y_{1} = 0. 9\right) \cdot P \left(Y_{2} = 1. 1\right) \\ + P \left(Y_{1} = 1. 1\right) \cdot P \left(Y_{2} = 0. 9\right) \\ = 2 (1 - p) p = \left( \begin{array}{c} 2 \\ 1 \end{array} \right) \cdot 0. 4 \cdot 0. 6 \\ = 0. 4 8 \\ \end{array}
$$

$$
\begin{array}{l} P \left(S_{2} = \$ 1 6. 2 0\right) = P \left(Y_{1} = 0. 9\right) \cdot P \left(Y_{2} = 0. 9\right) \\ = \left( \begin{array}{c} 2 \\ 0 \end{array} \right) (1 - p)^{2} = 0. 4^{2} = 0. 1 6 \\ \end{array}
$$

We now have the complete probability space of the random variable  $S_{2}$ . One can see the connection between  $S_{2}$  and  $X$  by the congruency of the probabilities of the individual outcomes, that is,

$$
\begin{array}{l} P \left(S_{2} = \$ 2 4. 2 0\right) = P (X = 2) \\ P (S_{2} = \$ 1 9. 8 0) = P (X = 1) \\ P (S_{2} = \$ 1 6. 2 0) = P (X = 0) \\ \end{array}
$$

From this, we derive, again, the relationship

$$
S_{2} = S_{0} \cdot 1. 1^{X} \cdot 0. 9^{2 - X}
$$

Thus, even though  $S_{2}$ , or, generally  $S_{T}$ , is not distributed binomial itself, its probability distribution can be derived from the related binomial random variable  $X$ .

# Application to the Binomial Interest Rate Model

We next consider a binomial interest rate model of short rates, that is, one-period interest rates. Starting in  $t = 0$ , the short rate evolves over the subsequent two periods as depicted in Figure 4. In  $t = 0$ , we have  $r_0 = 4\%$ , which is the short rate for period 1. For the following period, period 2, the short rate is  $r_1$  while finally,  $r_2$  is valid for period 3, from  $t = 2$  through  $t = 3$ . Both  $r_1$  and  $r_2$  are unknown in advance and assume values at random.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/3bc09207652fe5b591340eadf480f041ebc7eeebcdcb44c6649681987326525f.jpg)
Figure 4 Binomial Interest Rate Model


As we see, in each of the successive periods, the short rate either increases or decreases by  $1\%$  (i.e., 100 basis points). Each movement is assumed to occur with a probability of  $50\%$ . So, in period  $i$ ,  $i = 1, 2$ , the change in interest rate,  $\Delta r_i$ , has  $P(\Delta r_i = 1\%) = p = 0.5$  for an up-movement and  $P(\Delta r_i = -1\%) = 1 - p = 0.5$  for a down-movement. For each period, we may model the interest rate change by some Bernoulli random variable where  $X_1$  denotes the random change in period 1 and  $X_2$  that of period 2. The  $X_i = 1$  in case of an up-movement and  $X_i = 0$  otherwise. The sum of both (i.e.,  $Y = X_1 + X_2$ ) is a binomially distributed random variable, precisely  $Y \sim B(2,0.5)$ , thus, assuming values 0, 1, or 2.

To be able to interpret the outcome of  $Y$  in terms of interest rate changes, we perform the following transformations. A value of  $X_{i} = 1$  yields  $\Delta r_{i} = 1\%$  while  $X_{i} = 0$  translates into  $\Delta r_{i} = -1\%$ . Hence, the relationship between  $Y$  and  $r_{2}$  is such that when  $Y = 0$ , implying two down-movements in a row,  $r_{2} = r_{0} - 2\% = 2\%$ . When  $Y = 1$ , implying one up- and down-movement each,  $r_{2} = r_{0} + 1\% - 1\% = 4\%$ . And finally,  $Y = 2$  corresponds to two up-movements such that  $r_2 = r_0 + 2\% = 6\%$ . So, we obtain the probability distribution:


<table><tr><td>r2</td><td>P(r2)</td></tr><tr><td>2\%</td><td>(2/0) 0.5^0 · 0.5^2 = 0.25</td></tr><tr><td>4\%</td><td>(2/1) 0.5^1 · 0.5^1 = 0.5</td></tr><tr><td>6\%</td><td>(2/2) 0.5^2 · 0.5^0 = 0.25</td></tr></table>

# HYPERGEOMETRIC DISTRIBUTION

Recall that the prerequisites to obtain a binomial  $B(n,p)$  random variable  $X$  is that we have  $n$  identically distributed random variables  $Y_{i}$ , all following the same Bernoulli law  $B(p)$  of which the sum is the binomial random variable  $X$ . We referred to this type of random experiment as "drawing with replacement" so that for the sequence of individual drawings  $Y_{i}$ , we always have the same conditions.

Suppose instead that we do not "replace." Let's consider the distribution of "drawing without replacement." This is best illustrated with an urn containing  $N$  balls,  $K$  of which are black and  $N - K$  are white. So, for the initial drawing, we have the chance of drawing a black ball equal to  $K / N$ , while we have the chance of drawing a white ball equal to  $(N - K) / N$ . Suppose the first drawing yields a black ball. Since we do not replace it, the condition before the second drawing is such that we have  $(K - 1)$  black balls and still  $(N - K)$  white balls. Since the number of black balls has been reduced by one and the number of white balls is unchanged, the chance of drawing a black ball has been reduced compared to the chance of drawing a white ball; the total is also reduced by one. Hence, the condition is different from the first drawing. It would be similar if instead we had drawn a white ball in the first drawing, however, with the adverse effect on the chance to draw a white ball in the second drawing.


Now suppose in the second drawing another black ball is selected. The chances are increasingly adverse against drawing another black ball in the third trial. This changing environment would be impossible in the binomial model of identical conditions in each trial.

Even if we had drawn first a black ball and then a white ball, the chances would not be the same as at the outset of the experiment before any balls were drawn because the total is now reduced to  $N - 2$  balls. So, the chance of obtaining a black ball is now  $(K - 1) / (N - 2)$ , and that of obtaining a white ball is  $(N - K - 1) / (N - 2)$ . Mathematically, this is not the same as the original  $K / N$  and  $(N - K) / (N)$ . Hence, the conditions are altering from one drawing (or trial) to the next.

Suppose now that we are interested in the sum  $X$  of black balls drawn in a total of  $n$  trials. Let's look at this situation. We begin our reasoning with some illustration given specific values, that is,

$$
N = 1 0
$$

$$
K = 4
$$

$$ n = 5
$$

$$ k = 3
$$

Figure 5 Drawing  $n = 5$  Balls without Replacement
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/e3dceafb8afe0cc1d73648058aad3054292472b83e704b085bd7cd11e8953bdb.jpg)
Note:  $N = 10$ ,  $K = 4$  (black),  $n = 5$ , and  $k = 3$  (black).

The urn containing the black and white balls is depicted in Figure 5. Let's first compute the number of different outcomes we have to consider when we draw  $n = 5$  out of  $N = 10$  balls regardless of any color. We have 10 different options to draw the first ball; that is, b1 through w6 in Figure 5. After the first ball has been drawn without replacement, the second ball can be drawn from the urn consisting of the remaining nine balls. After that, the third ball is one out of the remaining eight, and so on until five balls have been successively removed. In total, we have

$$
1 0 \times 9 \times 8 \times 7 \times 6 = 1 0! / 5! = 3 0, 2 4 0
$$ alternative ways to withdraw the five balls. For example, we may draw  $b4$ ,  $b2$ ,  $b1$ ,  $w3$ , and  $w6$ . However, this is the same as  $w6$ ,  $w3$ ,  $b4$ ,  $b2$ , and  $b1$  or any other combination of these five balls. Since we do not care about the exact order of the balls drawn, we have to account for that in that we divide the total number of possibilities (i.e., 30,240) by the number of possible combinations of the very same balls drawn. The latter is equal to


$$
5 \times 4 \times 3 \times 2 \times 1 = 5! = 1 2 0
$$

Thus, we have  $30,240 / 120 = 252$  different nonredundant outcomes if we draw five out of

10 balls. Alternatively, this can be written as

$$
2 5 2 = \frac{1 0 !}{5 ! \times 5 !} = \left( \begin{array}{c} 1 0 \\ 5 \end{array} \right) \tag {9}
$$

Consequently, the chance of obtaining exactly this set of balls (i.e.,  $\{b1,b2,b4,w3,w6\}$ ) in any order is given by the inverse of equation (9) which is

$$
\frac{1}{2 5 2} = \frac{1}{\left( \begin{array}{c} 1 0 \\ 5 \end{array} \right)} = 0. 0 0 4 \tag {10}
$$

Now recall that we are interested in the chance of obtaining a certain number  $k$  of black balls in our sample. So, we have to narrow down the number of possible outcomes given by equation (9) to all samples of size 5 that yield that number  $k$  which, here, is equal to 3. How do we do this?

We have a selection of four black balls (i.e.,  $b1, b2, b3$ , and  $b4$ ) to draw from. That gives us a total of  $4 \times 3 \times 2 = 4! = 24$  different possibilities to recover  $k = 3$  black balls out of the urn consisting of four balls. Again, we do not care about the exact order in which we draw the black balls. To us, it is the same whether we select them, for example, in the order  $b1 - b2 - b4$  or  $b2 - b4 - b1$ , as long as we obtain the set  $\{b1, b2, b4\}$ . So, we correct for this by dividing the total of 24 by the number of combinations to order these particular black balls; that is,

$$
3 \times 2 \times 1 = 3! = 6
$$

Hence, the number of combinations of drawing  $k = 3$  black balls out of four is

$$
2 4 / 6 = 4! / 3! = 4
$$

Next we need to consider the previous number of possibilities of drawing  $k = 3$  black balls in combination with drawing  $n - k = 2$  white balls. We apply the same reasoning as before to obtain two white balls from the collection of six (i.e.,  $\{w1, w2, w3, w4, w5, w6\}$ ). That gives us  $6 \times 5/2 = 6! / (2! \times 4!) = 15$  nonredundant options to recover two white balls, in our example.

In total, we have

$$
\begin{array}{l} 4 \times 1 5 = \frac{4 \times 3 \times 2 \times 1}{3 \times 2 \times 1} \times \frac{6 \times 5 \times 4 \times 3 \times 2 \times 1}{2 \times 1 \times 4 \times 3 \times 2 \times 1} \\ = \frac{4 !}{3 ! \times 1 !} \times \frac{6 !}{2 ! \times 4 !} = \left( \begin{array}{c} 4 \\ 3 \end{array} \right) \times \left( \begin{array}{c} 6 \\ 2 \end{array} \right) = 6 0 \\ \end{array}
$$ different possibilities to obtain three black and two white balls in a sample of five balls. All these 60 samples have the same implication for us (i.e.,  $k = 3$ ). Combining these 60 possibilities with a probability of 0.004 as given by equation (10), we obtain as the probability for a sum of  $k = 3$  black balls in a sample of  $n = 5$


$$
6 0 / 2 5 2 = 0. 2 3 8 1
$$

Formally, we have

$$
P (X = 3) = \frac{\binom {4} {3} \binom {6} {2}}{\binom {1 0} {5}} = 0. 2 3 8 1
$$

Then, for our example, the probability distribution of  $X$  is

$$
P (X = k) = \frac{\binom {4} {k} \binom {6} {n - k}}{\binom {1 0} {5}}, k = 1, 2, 3, 4 \tag {11}
$$

(Note that we cannot draw more than four black balls from  $b1$ ,  $b2$ ,  $b3$ , and  $b4$ .)

Let's advance from the special conditions of the example to the general case; that is, (1) at the beginning, some nonnegative integer  $N$  of black and white balls combined, (2) the overall number of black balls  $0 \leq K \leq N$ , (3) the sample size  $0 \leq n \leq N$ , and (4) the number  $0 \leq k \leq n$  of black balls in the sample.

In equation (11), we have the probability of  $k$  black balls in the sample of  $n = 5$  balls. We dissect equation (9) into three parts: the denominator and the two parts forming the product in the numerator. The denominator gives the number of possibilities to draw a sample of  $n = 5$  balls out of  $N = 10$  balls, no matter what the combination of black and white. In other words, we choose  $n = 5$  out of  $N = 10$ . The resulting number is given by the binomial coefficient. We can extend this to choosing a general sample of  $n$  drawings out of a population of an arbitrary number of  $N$  balls. Analogous to equation (9), the resulting number of possible samples of length  $n$  (i.e.,  $n$  drawings) is then given by


$$
\left( \begin{array}{c} N \\ n \end{array} \right) \tag {12}
$$

Next, suppose we have  $k$  black balls in this sample. We have to consider that in equation (11), we chose  $k$  black balls from a population of  $K = 4$  yielding as the number of possibilities for this the binomial coefficient on the left-hand side in the numerator. Now we generalize this by replacing  $K = 4$  by some general number of black balls  $(K \leq N)$  in the population. The resulting number of choices for choosing  $k$  out of the overall  $K$  black balls is then,

$$
\left( \begin{array}{c} K \\ k \end{array} \right) \tag {13}
$$

And, finally, we have to draw the remaining  $n - k$  balls, which have to be white, from the population of  $N - K$  white balls. This gives us

$$
\left( \begin{array}{c} N - K \\ n - k \end{array} \right) \tag {14}
$$ different nonredundant choices for choosing  $n - k$  white balls out of  $N - K$ .


Finally, all we need to do is to combine equations (12), (13), and (14) in the same fashion as equation (11). By doing so, we obtain

$$
P (X = k) = \frac{\binom {K} {k} \binom {N - K} {n - k}}{\binom {N} {n}}, \quad k = 1, 2, \dots , n \tag {15}
$$ as the probability to obtain a total of  $X = k$  black balls in the sample of length  $n$  without replacement.


Importantly, here, we start out with  $N$  balls of which  $K$  are black and, after each trial, we do not replace the ball drawn, so that the population is different for each trial. The resulting random variable is hypergeometric distributed with parameters  $(N, K, n)$ ; that is,  $Hyp(N, K, n)$ , and probability distribution given by equation (15).


The mean of a random variable  $X$  following a hypergeometric probability law is given by

$$
E (X) = n \cdot \frac{K}{N}
$$ and the variance of this  $X\sim \mathrm{Hyp}(N,K,n)$  is given by


$$
V a r (X) = \sigma^{2} = n \cdot \frac{K}{N} \cdot \frac{N - K}{N} \cdot \frac{N - n}{N - 1}
$$

The hypergeometric and the binomial distributions are similar, though not equivalent. However, if the population size  $N$  is large, the hypergeometric distribution is often approximated by the binomial distribution with equation (6) causing only little deviation from the true probabilities of equation (15).

# Application

Let's see how the hypergeometric distribution has been applied in a Federal Reserve Bank of Cleveland study by Humpage (1998) to assess whether U.S. exchange-rate intervention resulted in a desired depreciation of the dollar.

Consider the following scenario. The U.S. dollar is appreciating against a certain foreign currency. This might hurt U.S. exports to the country whose sovereign issues the particular foreign currency. In response, the U.S. Federal Reserve might be inclined to intervene by purchasing that foreign currency to help depreciate the U.S. dollar through the increased demand for foreign currency relative to the dollar. This strategy, however, may not necessarily produce the desired effect. That is, the dollar might continue to appreciate relative to the foreign currency. Let's let an intervention by the Federal Reserve be defined as the purchase of that foreign currency. Suppose that we let the random variable  $X$  be number of interventions that lead to success (i.e., depreciation of the dollar). Given certain conditions beyond the scope of this book, the random variable  $X$  is approximately distributed hypergeometric.


This can be understood by the following slightly simplified presentation. Let the number of total observations be  $N$  days of which  $K$  is the number of days with a dollar depreciation (with or without intervention), and  $N - K$  is the number of days where the dollar appreciated or remained unchanged. The number of days the Federal Reserve intervenes is given by  $n$ . Furthermore, let  $k$  equal the number of days the interventions are successful so that  $n - k$  accounts for the unsuccessful interventions. The Federal Reserve could technically intervene on all  $N$  days that would yield a total of  $K$  successes and  $N - K$  failures. However, the actual number of occasions  $n$  on which there are interventions might be smaller. The  $n$  interventions can be treated as a sample of length  $n$  taken from the total of  $N$  days without replacement.

The model can best be understood as follows. The observed dollar appreciations, persistence, or depreciations are given observations. The Federal Reserve can merely decide to intervene or not. Consequently, if it took action on a day with depreciation, it would be considered a success and the number of successes available for future attempts would, therefore, be diminished by one. If, on the other hand, the Federal Reserve decided to intervene on a day with appreciation or persistence, it would incur a failure that would reduce the number of available failures left by one. The  $N - n$  days there are no interventions are treated as not belonging to the sample.

The randomness is in the selection of the days on which to intervene. The entire process can be illustrated by a chain with  $N$  tags attached to it containing either a + or - symbol. Each tag represents one day. A + corresponds to an appreciation or persistence of the dollar on the associated day, while a - to a depreciation. We assume that we do not know the symbol behind each tag at this point.

In total, we have  $K$  tags with  $a +$  and  $N - K$  with  $a -$  tag. At random, we flip  $n$  of these tags, which is equivalent to the Federal Reserve taking action on the respective days. Upon turning the respective tag upside right, the contained symbol reveals immediately whether the associated intervention resulted in a success or not.

Suppose we have  $N = 3,072$  total observations of which  $K = 1,546$  represents the number of days with a dollar depreciation, while on  $N - K = 1,508$  days the dollar either became more valuable or remained steady relative to the foreign currency.

Again, let  $X$  be the hypergeometric random variable describing successful interventions. On  $n = 138$  days, the Federal Reserve saw reason to intervene, that is, purchase foreign currency to help bring down the value of the dollar which was successful on  $k = 51$  days and unsuccessful on the remaining  $n - k = 87$  days. Concisely, the values are given by  $N = 3,072$ ,  $K = 1,546$ ,  $N - K = 1,508$ ,  $n = 138$ ,  $k = 51$ , and  $n - k = 87$ .

So, the probability for this particular outcome  $k = 51$  for the number of successes  $X$  given  $n = 138$  trials is

$$
P (X = 5 1) = \frac{\left( \begin{array}{c} 1 5 4 6 \\ 5 1 \end{array} \right) \left( \begin{array}{c} 1 5 0 8 \\ 8 7 \end{array} \right)}{\left( \begin{array}{c} 3 0 7 2 \\ 1 3 8 \end{array} \right)} = 0. 0 0 0 1 3 4 2 9
$$ which is an extremely small probability.


Suppose we state the simplifying hypothesis that the Federal Reserve is overall successful if most of the dollar depreciations have been the result of interventions (i.e., purchase of foreign currency). Then, this outcome with  $k = 51$  successful interventions given a total of  $N - K$  depreciations shows that the decline of the dollar relative to the foreign currency might be the result of something other than a Federal Reserve intervention. Hence, the Federal Reserve intervention might be too vague a forecast of a downward movement of the dollar relative to the foreign currency.

# MULTINOMIAL DISTRIBUTION

For our next distribution, the multinomial distribution, we return to the realm of drawing with replacement so that for each trial, there are exactly the same conditions. That is, we are dealing with independent and identically distributed random variables. (Once again we note that we are still short of a formal definition of independence in the context of probability theory. We use the term in the sense of "uninfluenced by.") However, unlike the binomial distribution, let's change the population so that we have not only two different possible outcomes for one drawing, but a third or possibly more outcomes.

We extend the illustration where we used an urn containing black and white balls. In our extension, we have a total of  $N$  balls with three colors:  $K_{w}$  white balls,  $K_{b}$  black balls, and  $K_{r} = N - K_{w} - K_{b}$  red balls. The probability of each of these colors is denoted by

$$
P (Y = \text{wh it e}) = p_{w}
$$

$$
P (Y = \text{bl ac k}) = p_{b}
$$

$$
P (Y = \mathrm{re d}) = p_{r}
$$ with each of these probabilities representing the population share of the respective color:  $p_i = K_i / N$ , for  $i = \text{white}$ , black, and red. Since all shares combined have to account for all  $N$ , we set


$$ p_{r} = 1 - p_{b} - p_{w}
$$

For purposes of this illustration, let  $p_w = p_b = 0.3$  and  $p_r = 0.4$ . Suppose that in a sample of  $n = 10$  trials, we obtain the following result:  $n_w = 3$  white,  $n_b = 4$  black, and  $n_r = n - n_w - n_b = 3$  red. Furthermore, suppose that the balls were drawn in the following order

<table><tr><td>Y1</td><td>Y2</td><td>Y3</td><td>Y4</td><td>Y5</td><td>Y6</td><td>Y7</td><td>Y8</td><td>Y9</td><td>Y10</td></tr><tr><td>r</td><td>w</td><td>b</td><td>b</td><td>w</td><td>r</td><td>r</td><td>b</td><td>w</td><td>b</td></tr></table> where the random variable  $Y_{i}$  represents the outcome of the  $i$ -th trial. (We denote  $w = \text{white}$ ,


$b =$  black, and  $r =$  red.) This particular sample occurs with probability

$$
\begin{array}{l} P \left(Y_{1} = r, Y_{2} = w, \dots , Y_{1 0} = b\right) = p_{r} \cdot p_{w} \cdot \dots \cdot p_{b} \\ = p_{r}^{3} \cdot p_{w}^{3} \cdot p_{b}^{4} \\ \end{array}
$$

The last equality indicates that the order of appearance of the individual values, once again, does not matter.

We introduce the random variable  $X$  representing the number of the individual colors occurring in the sample. That is,  $X$  consists of the three components  $X_w$ ,  $X_b$ , and  $X_r$  or, alternatively,  $X = (X_w, X_b, X_r)$ . Analogous to the binomial case of two colors, we are not interested in the order of appearance, but only in the respective numbers of occurrences of the different colors (i.e.,  $n_w$ ,  $n_b$ , and  $n_r$ ). Note that several different sample outcomes may lead to  $X = (n_w, n_b, n_r)$ . The total number of different nonredundant samples with  $n_w$ ,  $n_b$ , and  $n_r$  is given by the multinomial coefficient introduced in Appendix B, which here yields

$$
\left( \begin{array}{c c c} & n \\ n_{w} & n_{b} & n_{r} \end{array} \right) = \left( \begin{array}{c c c} & 1 0 \\ 3 & 3 & 4 \end{array} \right) = 4, 2 0 0
$$

Hence, the probability for this value of  $X = (k_w, k_b, k_r) = (3,4,3)$  is then

$$
\begin{array}{l} P (X = (3, 4, 3)) = \left( \begin{array}{c c c} & 1 0 & \\ 3 & 3 & 4 \end{array} \right) \cdot p_{w}^{3} \cdot p_{b}^{4} \cdot p_{r}^{3} \\ = 4, 2 0 0 \cdot 0. 3^{3} \cdot 0. 3^{4} \cdot 0. 4^{3} \\ = 0. 0 5 8 8 \\ \end{array}
$$

In general, the probability distribution of a multinomial random variable  $X$  with  $k$  components  $X_{1}, X_{2}, \ldots, X_{k}$  is given by

$$
\begin{array}{l} P \left(X_{1} = n_{1}, X_{2} = n_{2}, \dots , X_{k} = n_{k}\right) \\ = \left( \begin{array}{c c} & n \\ n_{1} & n_{2} \dots n_{k} \end{array} \right) \cdot p_{1}^{n_{1}} \cdot p_{2}^{n_{2}} \cdot \dots \cdot p_{k}^{n_{k}} \tag {16} \\ \end{array}
$$ where, for  $j = 1,2,\dots ,k,n_{j}$  denotes the outcome of component  $j$  and the  $p_j$  the corresponding probability.


The means of the  $k$  components  $X_{1}$  through  $X_{k}$  are given by

$$
E (X_{1}) = p_{1} \cdot n
$$

$$
\begin{array}{c} \vdots \\ \vdots \\ \vdots \end{array}
$$

$$
E (X_{k}) = p_{k} \cdot n
$$ and their respective variances by


$$
\operatorname{Va r} \left(X_{1}\right) = \sigma_{1}^{2} = p_{1} \cdot \left(1 - p_{1}\right) \cdot n
$$

$$
\begin{array}{c} \vdots \\ \vdots \\ \vdots \end{array}
$$

$$
\operatorname{Va r} \left(X_{k}\right) = \sigma_{k}^{2} = p_{k} \cdot \left(1 - p_{k}\right) \cdot n
$$

# Multinomial Stock Price Model

We can use the multinomial distribution to extend the binomial stock price model described earlier. Suppose we are given a stock with price  $S_0$ , in  $t = 0$ . In  $t = 1$ , the stock can have either price

$$
S_{1}^{(u)} = S_{0} \cdot u
$$

$$
S_{1}^{(l)} = S_{0} \cdot l
$$

$$
S_{1}^{(d)} = S_{0} \cdot d
$$

Let the three possible outcomes be a  $10\%$  increase in price  $(u = 1.1)$ , no change in price  $(l = 1.0)$ , and a  $10\%$  decline in price  $(d = 0.9)$ . That is, the price either goes up by some factor, remains steady, or drops by some factor. Therefore,

$$
S_{1}^{(u)} = S_{0} \cdot 1. 1
$$

$$
S_{1}^{(l)} = S_{0} \cdot 1. 0
$$

$$
S_{1}^{(d)} = S_{0} \cdot 0. 9
$$

Thus, we have three different outcomes of the price change in the first period. Suppose the price change behaved the same in the second period, from  $t = 1$  until  $t = 2$ . So, we have

$$
S_{2}^{(u)} = S_{1} \cdot 1. 1
$$

$$
S_{2}^{(l)} = S_{1} \cdot 1. 0
$$

$$
S_{2}^{(d)} = S_{1} \cdot 0. 9
$$ at time  $t = 2$  depending on


$$
S_{1} \in \left\{S_{1}^{(u)}, S_{1}^{(l)}, S_{1}^{(d)} \right\}
$$

Let's denote the random price change in the first period by  $Y_{1}$  and the price change in the second period by the random variable  $Y_{2}$ . So, it is obvious that  $Y_{1}$  and  $Y_{2}$  independently assume some value in the set  $\{u,l,d\} = \{1.1,1.0,0.9\}$ . After two periods (i.e., in  $t = 2$ ), the stock price is

$$
S_{2} = S_{0} \cdot Y_{1} \cdot Y_{2} \in \left\{S_{2}^{(u)}, S_{2}^{(l)}, S_{2}^{(d)} \right\}
$$

Note that the random variable  $S_{2}$  is not multinomially distributed itself. However, as we will see, it is immediately linked to a multinomial random variable.

Since the initial stock price  $S_0$  is given, the random variable of interest is the product  $Y_{1} \cdot Y_{2}$ , which is in a one-to-one relationship with the multinomial random variable  $X = (n_u, n_l, n_d)$  (i.e., the number of up-, zero-, and down-movements, respectively). The state space of  $Y_{1} \cdot Y_{2}$  is given by  $\{uu, ul, ud, ll, ld, dd\}$ . This corresponds to the state space of  $X$ , which is given by

$$
\begin{array}{l} \Omega^{\prime} = \{(2, 0, 0), (0, 2, 0), (0, 0, 2), (1, 1, 0), (1, 0, 1), \\ (0, 1, 1) \} \\ \end{array}
$$

Note that since  $Y_{1} \cdot Y_{2}$  is a product, we do not consider, for example,  $(Y_{1} = u, Y_{2} = d)$  and  $(Y_{1} = d, Y_{2} = u)$  separately. With

$$
\begin{array}{l} P (Y_{i} = u) = p^{u} = 0. 2 5 \\ P (Y_{i} = l) = p^{l} = 0. 5 0 \\ P (Y_{i} = d) = p^{d} = 0. 2 5 \\ \end{array}
$$ the corresponding probability distribution of  $X$  is given in the first two columns of Table 1. We use the multinomial coefficient


$$
\left( \begin{array}{c c c} & n & \\ n_{u} & n_{l} & n_{d} \end{array} \right)
$$ where


$n =$  the number of periods

$n_u =$  the number of up-movements

$n_l =$  number of zero movements

$n_d =$  number of down-movements

Now, if  S_0 = \20 , then we obtain the probability distribution of the stock price in  t = 2  as shown in columns 2 and 3 in Table 1. Note that

Table 1 Probability Distribution of the Two-Period Stock Price Model

<table><tr><td>X=(nu,nl,nd)</td><td colspan="4">P(X=·)</td><td>S2=·</td></tr><tr><td>(2,0,0)</td><td>2</td><td>2</td><td>0</td><td>pu p^u = 0.0625</td><td>S0·u^2 = 20·1.1^2 = 24.2</td></tr><tr><td>(1,1,0)</td><td>1</td><td>2</td><td>1</td><td>pu p^l = 2·0.25·0.5 = 0.25</td><td>S0·u·l = 20·1.1·1.0 = 22</td></tr><tr><td>(1,0,1)</td><td>1</td><td>2</td><td>1</td><td>pu p^d = 2·0.25^2 = 0.125</td><td>S0·u·d = 20·1.1·0.9 = 19.8</td></tr><tr><td>(0,2,0)</td><td>0</td><td>2</td><td>0</td><td>p^l p^l = 0.5^2 = 0.25</td><td>S0·l·l = 20·1.0^2 = 20</td></tr><tr><td>(0,1,1)</td><td>0</td><td>2</td><td>1</td><td>p^l p^d = 2·0.5·0.25 = 0.25</td><td>S0·l·d = 20·1.0·0.9 = 18</td></tr><tr><td>(0,0,2)</td><td>0</td><td>2</td><td>2</td><td>p^d p^d = 0.25^2 = 0.0625</td><td>S0·d^2 = 20·0.9^2 = 16.2</td></tr></table>

In the first and second columns, we have the probability distribution of the two period stock price changes  $X = Y_{1} \cdot Y_{2}$  in the multinomial stock price model. In the third column, we have the probability distribution of the stock price  $S_{2}$ .

the probabilities of the values of  $S_{2}$  are associated with the corresponding price changes  $X$  and, hence, listed on the same lines of Table 1. It is now possible to evaluate the probability of events such as, "a stock price  $S_{2}$  of, at most, \$22," from the  $\sigma$ -algebra  $\mathbb{A}'$  of the multinomial probability space of  $X$ . This is given by

$$
\begin{array}{l} P (S_{2} \leq \$ 2 2) \\ = P \left(S_{2} = \$ 16. 2\right) + P \left(S_{2} = \$ 1 8\right) + P \left(S_{2} = \$ 1 9. 8\right) \\ + P (S_{2} = \$ 2 0) + P (S_{2} = \$ 2 2) \\ \end{array}
$$

$$
\begin{array}{l} = 0. 2 5 + 0. 1 2 5 + 0. 2 5 + 0. 2 5 + 0. 0 6 2 5 \\ = 1 - P \left(S_{2} = \$ 2 4. 2\right) \\ = 0. 9 3 7 5 \\ \end{array}
$$ where the second line is the result of the fact that the sum of the probabilities of all disjoint events has to add up to one. That follows since any event and its complement account for the entire state space  $\Omega^{\prime}$ .


In Figure 6, we can see the evolution of the stock price along the different paths.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/7ff2c76d063eae09f9c062d8c802d7540a4925fb26ec22d7191168d68b59ebae.jpg)
Figure 6 Multinomial Stock Price Model: Stock Price  $S_{2}$ , in  $t = 2$

From equation (1), the expected stock price in  $t = 2$  is computed as

$$
\begin{array}{l} E \left(S_{2}\right) = \sum_{s \in \Omega^{\prime}} s \cdot P \left(S_{2} = s\right) \\ = \$ 16.2 \cdot 0.0625 + \$ 18 \cdot 0.25 + \$ 19.8 \cdot 0.125 \\ + \mathbb {S} 2 0 \cdot 0. 2 5 + \mathbb {S} 2 2 \cdot 0. 2 5 + \mathbb {S} 2 4. 2 \cdot 0. 0 6 2 5 \\ = \$ 20 \\ \end{array}
$$

So, on average, the stock price will remain unchanged.

# POISSON DISTRIBUTION

To introduce our next distribution, consider the following situation. A property and casualty insurer underwrites a particular type of risk, say, automotive damage. Overall, the insurer is interested in the total annual dollar amount of the claims from all policies underwritten. The total is the sum of the individual claims of different amounts. The insurer has to have enough equity as risk guarantee. In a simplified way, the sufficient amount is given by the number of casualties  $N$  times the average amount per claim.

In this situation, the insurer's interest is in the total number of claims  $N$  within one year. Note that there may be multiple claims per policy. This number  $N$  is random because the insurer does not know its exact value at the beginning of the year. The insurer knows, however, that the minimum number of casualties possible is zero. Theoretically, although it is unlikely, there may be infinitely many claims originating from the year of interest.

So far, we have considered the number of claims over the period of one year. It could be of interest to the insurer, however, to know the behavior of the random variable  $N$  over a period of different length, say five years, or even the number of casualties related to one month could be of interest. It might be reasonable to assume that there will probably be fewer claims in one month than in one year or five years.

The number of claims,  $N$ , as a random variable should follow a probability law that accounts for the length of the period under analysis. In other words, the insurers want to assure that the probability distribution of  $N$  gives credit to  $N$  being proportional to the length of the period in the sense that if a period is  $n$  times as long as another, then the number of claims expected over the longer period should be  $n$  times as large, as well.

As a candidate that satisfies these requirements, we introduce the Poisson distribution with parameter  $\lambda$  formally expressed as  $Poi(\lambda)$ . We define that the parameter is a positive real number (i.e.,  $\lambda > 0$ ). A Poisson random variable  $N$  that is,  $X \sim Poi(\lambda)$  assumes nonnegative integer values. Formally,  $N$  is a function mapping the space of outcomes,  $\Omega$ , into the state space

$$
\Omega^{\prime} = \{0, 1, 2, \ldots \}
$$ which is the set  $\mathbb{N}$  of the nonnegative integer numbers.


The probability measure of a Poisson random variable  $N$  for nonnegative integers  $k = 0,1,$  2,... is defined as

$$
P (N = k) = \frac{\lambda^{k}}{k !} e^{- \lambda} \tag {17}
$$ where  $e = 2.7183$  is the Euler constant. Here, we have unit period length.


The mean of a Poisson random variable with parameter  $\lambda$  is

$$
E (N) = \lambda
$$ while its variance is given by


$$
V a r (N) = \sigma^{2} = \lambda \tag {18}
$$

So, both parameters, mean and variance, of  $N\sim Poi(\lambda)$  are given by the parameter  $\lambda$

For a period of general length  $t$ , equation (17) becomes

$$
P (N = k) = \frac{(\lambda t)^{k}}{k !} e^{- \lambda t} \tag {19}
$$

We can see that the new parameter is now  $\lambda_{t}$ , accounting for the time proportionality of the distribution of  $N$ , that is,  $N = N(t)$  is the number of jumps of size 1 in the interval  $(0, t)$ . The mean changes to

$$
E N (t) = \lambda t \tag {20}
$$ and analogous to the variance given by (18) is now


$$
\operatorname{Va r} (N (t)) = \sigma^{2} (t) = \lambda t \tag {21}
$$

We can see by equation (20) that the average number of occurrences is the average per unit of time,  $\lambda$ , times the length of the period,  $t$ , in units of time. The same holds for the variance given by equation (21).

The Poisson distribution serves as an approximation of the hypergeometric distribution when certain conditions are met regarding sample size and parameter  $p$ .

# Application to Credit Risk Modeling for a Bond Portfolio

The Poisson distribution is typically used in finance for credit risk modeling. For example, suppose we have a pool of 100 bonds issued by different corporations. By experience or empirical evidence, we may know that each quarter of a year the expected number to default is two; that is,  $\lambda = 2$ . Moreover, from prior research, we can approximate the distribution of  $N$  by the Poisson distribution, even though, theoretically, the Poisson distribution admits values  $k$  greater than 100. What is the number of bonds to default within the next year, on average? According to equation (3), since the mean is  $E_{\text{quarter}}(N) = \lambda = 2$  per quarter, the mean per year  $(t = 4)$  is

$$
E_{y e a r} (N) = \lambda t = 2 \cdot 4 = 8
$$

By equation (20), the variance is 8, from equation (19), the probability of, at most, 10 bonds to default is given by


$$
\begin{array}{l} P (N \leq 1 0) = P (N = 0) + P (N = 1) + \dots \\ + P (N = 1 0) \\ = e^{- 2 \times 4} \cdot \frac{(2 \times 4)^{0}}{0 !} + e^{- 2 \times 4} \cdot \frac{(2 \times 4)^{1}}{1 !} + \dots \\ + e^{- 2 \times 4} \cdot \frac{(2 \times 4)^{1 0}}{1 0 !} \\ = 0. 8 1 5 9 \\ \end{array}
$$

# DISCRETE UNIFORM DISTRIBUTION

Consider a probability space  $(\Omega', \mathbb{A}', P)$  where the state space is a finite set of, say  $n$ , outcomes, that is,  $\Omega' = \{x_1, x_2, \ldots, x_n\}$ . The  $\sigma$ -algebra  $\mathbb{A}'$  is given by the power set of  $\Omega'$ .

So far we have explained how drawings from this  $\Omega^{\prime}$  may be modeled by the multinomial distribution. In the multinomial distribution, the probability of each outcome may be different. However, suppose that the for our random variable  $X$ , we have a constant  $P(X = x_{j}) = 1 / n$ , for all  $j = 1,2,\ldots ,n$ . Since all values  $x_{j}$  have the same probability (i.e., they are equally likely), the distribution is called the discrete uniform distribution. We denote this distribution by  $X\sim$ $DU_{\Omega^{\prime}}$ . We use the specification  $\Omega^{\prime}$  to indicate that  $X$  is a random variable on this particular state space.

The mean of a discrete, uniformly distributed random variable  $X$  on the state space  $\Omega^{\prime} = \{x_{1}, x_{2}, \ldots, x_{n}\}$  is given by

$$
E (X) = \sum_{i = 1}^{n} p_{i} \cdot x_{i} = \frac{1}{n} \sum_{i = 1}^{n} x_{i} \tag {22}
$$

Note that equation (22) is equal to the arithmetic mean. The variance is

$$
\begin{array}{l} \operatorname{Va r} (X) = \sum_{i: x_{i} \in \Omega^{\prime}} p_{i} \cdot \left(x_{i} - E (X)\right)^{2} \\ = \frac{1}{n} \sum_{i: x_{i} \in \Omega^{\prime}} (x_{i} - E (X))^{2} \\ \end{array}
$$ with  $E(X)$  from equation (22).


A special case of a discrete uniform probability space is given when  $\Omega' = \{1, 2, \ldots, n\}$ . The resulting mean, according to equation (22), is then,

$$
\begin{array}{l} E (X) = \sum_{i = 1}^{n} p_{i} \cdot x_{i} = \frac{1}{n} \sum_{i = 1}^{n} i \\ = \frac{1}{n} \times \frac{n (n + 1)}{2} = \frac{n + 1}{2} \tag {23} \\ \end{array}
$$

For this special case of discrete uniform distribution of a random variable  $X$ , we use the notation  $X \sim DU(n)$  with parameter  $n$ .

Let's once more consider the outcome of a toss of a dice. The random variable number of dots,  $X$ , assumes one of the numerical outcomes 1, 2, 3, 4, 5, 6 each with a probability of  $1/6$ . Hence, we have a uniformly distributed discrete random variable  $X$  with the state space  $\Omega' = \{1, 2, 3, 4, 5, 6\}$ . Consequently, we express this as  $X \sim DU(6)$ .

Next, we want to consider several independent trials, say  $n = 10$ , of throwing the dice. By  $n_1, n_2, n_3, n_4, n_5$ , and  $n_6$ , we denote the number of occurrence of the values 1, 2, 3, 4, 5, and 6, respectively. With constant probability  $p_1 = p_2 = \ldots = p_6 = 1/6$ , we have a discrete uniform distribution, that is,  $X \sim DU(6)$ . Thus, the probability of obtaining  $n_1 = 1$ ,  $n_2 = 2$ ,  $n_3 = 1$ ,  $n_4 = 3$ ,  $n_5 = 1$ , and  $n_6 = 2$ , for example, is

$$
\begin{array}{l} P \left(X_{1} = 1, X_{2} = 1, \dots , X_{6} = 2\right) \\ = \left( \begin{array}{c c} & 1 0 \\ 1 & 2 \ldots 2 \end{array} \right) \left(\frac{1}{6}\right)^{1 0} \\ = \frac{1 0 !}{1 ! \times 2 ! \times \dots \times 2 !} \cdot \left(\frac{1}{6}\right)^{1 0} \\ = 1 5 1 2 0 0 \cdot 0. 0 0 0 0 0 0 1 6 5 3 8 \\ = 0. 0 0 2 5 \\ \end{array}
$$

# Application to the Multinomial Stock Price Model

Let us resume the stock price model where in  t = 0  we have a given stock price, say  S_0 = \20 , where there are three possible outcomes at the end of the period. In the first period, the stock price either increases to


$$
S_{1} = S_{0} \cdot 1.1 = \$22
$$
S_{1}^{(l)} = S_{0} \cdot 1. 0 = \$ 2 0
$$ or decreases to


$$
S_{1}^{(d)} = S_{0} \cdot 0. 9 = \$ 1 8
$$ each with probability  $1 / 3$ . Again, we introduce the random variable  $Y$  assuming the values  $u = 1.1$ ,  $l = 1.0$ , and  $d = 0.9$  and, thus, representing the percentage change of the stock price between  $t = 0$  and  $t + 1 = 1$ . The stock price in  $t + 1 = 1$  is given by the random variable  $S_{1}$  on the corresponding state space


$$
\Omega_{S} = \left\{S_{1}^{(u)}, S_{1}^{(l)}, S_{1}^{(d)} \right\}
$$

Suppose we have  $n = 10$  successive periods in each of which the stock price changes by the factors  $u, l,$  or  $d$ . Let the multinomial random variable  $X = (X_{1}, X_{2}, X_{3})$  represent the total of up-, zero-, and down-movements, respectively. Suppose, after these  $n$  periods, we have  $n_u = 3$  up-movements,  $n_l = 3$  zero-movements, and  $n_d = 4$  down-movements. According to equation (16), the corresponding probability is

$$
\begin{array}{l} P (X_{1} = 3, X_{2} = 3, X_{3} = 4) = \left( \begin{array}{c c c} 1 0 & \\ 3 & 3 & 4 \end{array} \right) \left(\frac{1}{3}\right)^{1 0} \\ = 4 2 0 0 \cdot 0. 0 0 0 0 1 9 3 5 \\ = 0. 0 7 1 1 \\ \end{array}
$$

This probability corresponds to a stock price in  $t = 10$  of

$$
S_{1 0} = S_{0} \cdot u^{3} \cdot l^{3} \cdot d^{4} = \\ \2 0 \cdot 1. 1^{3} \cdot 1 \cdot 0. 9^{4} = \\ \ 17. 4 7
$$

This stock price is a random variable given by

$$
S_{1 0} = S_{0} \cdot Y_{1} \cdot Y_{2} \cdot \dots \cdot Y_{1 0}
$$ where the  $Y_{i}$  are the corresponding relative changes (i.e., factors) in the periods  $i = 1,2,\ldots ,$  10.Note that  $S_{10}$  is not uniformly distributed even though it is a function of the random variables  $Y_{1},Y_{2},\ldots ,Y_{10}$  because its possible outcomes do not have identical probability.


APPENDIX A LIST OF DISCRETE DISTRIBUTIONS

<table><tr><td>Name</td><td></td><td>Probability Law</td><td>Mean</td><td>Variance</td><td>Description</td></tr><tr><td>Bernoulli</td><td>B(p)</td><td>P(X=1)=pP(X=0)=1-p</td><td>p</td><td>p·(1-p)</td><td>One drawing from Ω′={1,0}</td></tr><tr><td>Binomial</td><td>B(n,p)</td><td>P(X=k)=(nk)·pk·(1-p)n-k</td><td>n·p</td><td>n·p·(1-p)</td><td>n drawings with replacement from Ω′={1,0}</td></tr><tr><td rowspan="2">Hypergeometric</td><td rowspan="2">Hyp(N,K,n)</td><td rowspan="2">P(X=k)=(K(k)(N-kn-k)/(N/n)</td><td>nK/N</td><td>nK/N·N-K/N-N-1</td><td rowspan="2">n drawings without replacement from Ω′={1,0}</td></tr><tr><td>p1·n</td><td>p1·(1-p1)·n</td></tr><tr><td rowspan="2">Multinomial</td><td rowspan="2"></td><td rowspan="2">P(X1=n1,...,Xk=nk)= (nk...nk)·p1nk,...pkn</td><td>:</td><td>:</td><td rowspan="2">n drawings with replacement from Ω′={x1,...,xk}</td></tr><tr><td>pk·n</td><td>σk2=pk·(1-pk)·n</td></tr><tr><td rowspan="2">Poisson</td><td>Poi(λ)</td><td>P(N=k)=λke-λ</td><td>λ</td><td>λ</td><td>One drawing from Ω′={0,1,2,...} = N. Unit period length</td></tr><tr><td>Poi(λt)</td><td>P(N=k)=(λtk/k!)e-λt</td><td>λt</td><td>λt</td><td>One drawing from Ω′={0,1,2,...} = N. Period length t</td></tr><tr><td rowspan="2">Discrete Uniform</td><td>DUΩ&#x27;</td><td>P(X=x1)=...=P(X=xn)=1/n</td><td>(8.1)</td><td>(8.2)</td><td>One drawing from Ω′={x1,...,xk}</td></tr><tr><td>DU(n)</td><td>P(X=1)=...=P(X=n)=1/n</td><td>n+1/2</td><td>(8.2)</td><td>Equal probability Ω′={1,...,k}</td></tr></table>

Note: For the  $k$  components of a multinomial random variable, we have  $k$  means and variances.

$B(n,p)$  , Binomial Probability Distribution

$$
P (X = k) = \left( \begin{array}{c} n \\ k \end{array} \right) \cdot p^{k} \cdot (1 - p)^{n - k} \text{fo r} n = 5
$$

<table><tr><td>k</td><td>p</td><td>0.1</td><td>0.2</td><td>0.5</td><td>0.8</td><td>0.9</td></tr><tr><td>1</td><td></td><td>0.3281</td><td>0.4096</td><td>0.1563</td><td>0.0064</td><td>0.0005</td></tr><tr><td>2</td><td></td><td>0.0729</td><td>0.2048</td><td>0.3125</td><td>0.0512</td><td>0.0081</td></tr><tr><td>3</td><td></td><td>0.0081</td><td>0.0512</td><td>0.3125</td><td>0.2048</td><td>0.0729</td></tr><tr><td>4</td><td></td><td>0.0005</td><td>0.0064</td><td>0.1563</td><td>0.4096</td><td>0.3281</td></tr><tr><td>5</td><td></td><td>0</td><td>0.0003</td><td>0.0313</td><td>0.3277</td><td>0.5905</td></tr></table>

$B(n,p)$  , Binomial Probability Distribution

$$
P (X = k) = \left( \begin{array}{c} n \\ k \end{array} \right) \cdot p^{k} \cdot (1 - p)^{n - k} \text{fo r} n = 1 0
$$

<table><tr><td>k</td><td>p</td><td>0.1</td><td>0.2</td><td>0.5</td><td>0.8</td><td>0.9</td></tr><tr><td>1</td><td></td><td>0.3874</td><td>0.2684</td><td>0.0098</td><td>0</td><td>0</td></tr><tr><td>2</td><td></td><td>0.1937</td><td>0.3020</td><td>0.0439</td><td>0.0001</td><td>0</td></tr><tr><td>3</td><td></td><td>0.0574</td><td>0.2013</td><td>0.1172</td><td>0.0008</td><td>0</td></tr><tr><td>4</td><td></td><td>0.0112</td><td>0.0881</td><td>0.2051</td><td>0.0055</td><td>0.0001</td></tr><tr><td>5</td><td></td><td>0.0015</td><td>0.0264</td><td>0.2461</td><td>0.0264</td><td>0.0015</td></tr><tr><td>6</td><td></td><td>0.0001</td><td>0.0055</td><td>0.2051</td><td>0.0881</td><td>0.0112</td></tr><tr><td>7</td><td></td><td>0</td><td>0.0008</td><td>0.1172</td><td>0.2013</td><td>0.0574</td></tr><tr><td>8</td><td></td><td>0</td><td>0.0001</td><td>0.0439</td><td>0.3020</td><td>0.1937</td></tr><tr><td>9</td><td></td><td>0</td><td>0</td><td>0.0098</td><td>0.2684</td><td>0.3874</td></tr><tr><td>10</td><td></td><td>0</td><td>0</td><td>0.0010</td><td>0.1074</td><td>0.3487</td></tr></table>

$B(n,p)$  , Binomial Probability Distribution

$$
P (X = k) = \binom {n} {k} \cdot p^{k} \cdot (1 - p)^{n - k} \text{fo r} n = 5 0
$$

<table><tr><td>k</td><td>p</td><td>0.1</td><td>0.2</td><td>0.5</td><td>0.8</td><td>0.9</td></tr><tr><td>1</td><td></td><td>0.0286</td><td>0.0002</td><td>0</td><td>0</td><td>0</td></tr><tr><td>2</td><td></td><td>0.0779</td><td>0.0011</td><td>0</td><td>0</td><td>0</td></tr><tr><td>3</td><td></td><td>0.1386</td><td>0.0044</td><td>0</td><td>0</td><td>0</td></tr><tr><td>4</td><td></td><td>0.1809</td><td>0.0128</td><td>0</td><td>0</td><td>0</td></tr><tr><td>5</td><td></td><td>0.1849</td><td>0.0295</td><td>0</td><td>0</td><td>0</td></tr><tr><td>6</td><td></td><td>0.1541</td><td>0.0554</td><td>0</td><td>0</td><td>0</td></tr><tr><td>7</td><td></td><td>0.1076</td><td>0.0870</td><td>0</td><td>0</td><td>0</td></tr><tr><td>8</td><td></td><td>0.0643</td><td>0.1169</td><td>0</td><td>0</td><td>0</td></tr><tr><td>9</td><td></td><td>0.0333</td><td>0.1364</td><td>0</td><td>0</td><td>0</td></tr></table>

<table><tr><td>k</td><td>p</td><td>0.1</td><td>0.2</td><td>0.5</td><td>0.8</td><td>0.9</td></tr><tr><td>10</td><td></td><td>0.0152</td><td>0.1398</td><td>0</td><td>0</td><td>0</td></tr><tr><td>20</td><td></td><td>0</td><td>0.0006</td><td>0.0419</td><td>0</td><td>0</td></tr><tr><td>30</td><td></td><td>0</td><td>0</td><td>0.0419</td><td>0.0006</td><td>0</td></tr><tr><td>40</td><td></td><td>0</td><td>0</td><td>0</td><td>0.1398</td><td>0.0152</td></tr><tr><td>41</td><td></td><td>0</td><td>0</td><td>0</td><td>0.1364</td><td>0.0333</td></tr><tr><td>42</td><td></td><td>0</td><td>0</td><td>0</td><td>0.1169</td><td>0.0643</td></tr><tr><td>43</td><td></td><td>0</td><td>0</td><td>0</td><td>0.0870</td><td>0.1076</td></tr><tr><td>44</td><td></td><td>0</td><td>0</td><td>0</td><td>0.0554</td><td>0.1541</td></tr><tr><td>45</td><td></td><td>0</td><td>0</td><td>0</td><td>0.0295</td><td>0.1849</td></tr><tr><td>46</td><td></td><td>0</td><td>0</td><td>0</td><td>0.0128</td><td>0.1809</td></tr><tr><td>47</td><td></td><td>0</td><td>0</td><td>0</td><td>0.0044</td><td>0.1386</td></tr><tr><td>48</td><td></td><td>0</td><td>0</td><td>0</td><td>0.0011</td><td>0.0779</td></tr><tr><td>49</td><td></td><td>0</td><td>0</td><td>0</td><td>0.0002</td><td>0.0286</td></tr><tr><td>50</td><td></td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.0052</td></tr></table>

$B(n,p)$  , Binomial Probability Distribution

$$
P (X = k) = \left( \begin{array}{c} n \\ k \end{array} \right) \cdot p^{k} \cdot (1 - p)^{n - k} \text{fo r} n = 1 0 0
$$

<table><tr><td>k</td><td>p</td><td>0.1</td><td>0.2</td><td>0.5</td><td>0.8</td><td>0.9</td></tr><tr><td>1</td><td></td><td>0.0003</td><td>0</td><td>0</td><td>0</td><td>0</td></tr><tr><td>2</td><td></td><td>0.0016</td><td>0</td><td>0</td><td>0</td><td>0</td></tr><tr><td>3</td><td></td><td>0.0059</td><td>0</td><td>0</td><td>0</td><td>0</td></tr><tr><td>4</td><td></td><td>0.0159</td><td>0</td><td>0</td><td>0</td><td>0</td></tr><tr><td>5</td><td></td><td>0.0339</td><td>0</td><td>0</td><td>0</td><td>0</td></tr><tr><td>6</td><td></td><td>0.0596</td><td>0.0001</td><td>0</td><td>0</td><td>0</td></tr><tr><td>7</td><td></td><td>0.0889</td><td>0.0002</td><td>0</td><td>0</td><td>0</td></tr><tr><td>8</td><td></td><td>0.1148</td><td>0.0006</td><td>0</td><td>0</td><td>0</td></tr><tr><td>9</td><td></td><td>0.1304</td><td>0.0015</td><td>0</td><td>0</td><td>0</td></tr><tr><td>10</td><td></td><td>0.1319</td><td>0.0034</td><td>0</td><td>0</td><td>0</td></tr><tr><td>20</td><td></td><td>0.0012</td><td>0.0993</td><td>0</td><td>0</td><td>0</td></tr><tr><td>30</td><td></td><td>0</td><td>0.0052</td><td>0</td><td>0</td><td>0</td></tr><tr><td>40</td><td></td><td>0</td><td>0</td><td>0.0108</td><td>0</td><td>0</td></tr><tr><td>50</td><td></td><td>0</td><td>0</td><td>0.0796</td><td>0</td><td>0</td></tr><tr><td>60</td><td></td><td>0</td><td>0</td><td>0.0108</td><td>0</td><td>0</td></tr><tr><td>70</td><td></td><td>0</td><td>0</td><td>0</td><td>0.0052</td><td>0</td></tr><tr><td>80</td><td></td><td>0</td><td>0</td><td>0</td><td>0.0993</td><td>0.0012</td></tr><tr><td>90</td><td></td><td>0</td><td>0</td><td>0</td><td>0.0034</td><td>0.1319</td></tr><tr><td>91</td><td></td><td>0</td><td>0</td><td>0</td><td>0.0015</td><td>0.1304</td></tr><tr><td>92</td><td></td><td>0</td><td>0</td><td>0</td><td>0.0006</td><td>0.1148</td></tr><tr><td>93</td><td></td><td>0</td><td>0</td><td>0</td><td>0.0002</td><td>0.0889</td></tr><tr><td>94</td><td></td><td>0</td><td>0</td><td>0</td><td>0.0001</td><td>0.0596</td></tr><tr><td>95</td><td></td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.0339</td></tr><tr><td>96</td><td></td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.0159</td></tr><tr><td>97</td><td></td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.0059</td></tr><tr><td>98</td><td></td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.0016</td></tr><tr><td>99</td><td></td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.0003</td></tr><tr><td>100</td><td></td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td></tr></table>

$Poi(\lambda)$ , Poisson Probability Distribution

$P(X = k) = \frac{\lambda^k\cdot e^{-\lambda}}{x!}$  for Several Values of Parameter  $\lambda$

<table><tr><td>k</td><td>λ</td><td>0.1</td><td>0.5</td><td>1</td><td>2</td><td>5</td><td>10</td></tr><tr><td>1</td><td>0.0905</td><td>0.3033</td><td>0.3679</td><td>0.2707</td><td>0.0337</td><td>0.0005</td><td></td></tr><tr><td>2</td><td>0.0045</td><td>0.0758</td><td>0.1839</td><td>0.2707</td><td>0.0842</td><td>0.0023</td><td></td></tr><tr><td>3</td><td>0.0002</td><td>0.0126</td><td>0.0613</td><td>0.1804</td><td>0.1404</td><td>0.0076</td><td></td></tr><tr><td>4</td><td>0</td><td>0.0016</td><td>0.0153</td><td>0.0902</td><td>0.1755</td><td>0.0189</td><td></td></tr><tr><td>5</td><td>0</td><td>0.0002</td><td>0.0031</td><td>0.0361</td><td>0.1755</td><td>0.0378</td><td></td></tr><tr><td>6</td><td>0</td><td>0</td><td>0.0005</td><td>0.0120</td><td>0.1462</td><td>0.0631</td><td></td></tr><tr><td>7</td><td>0</td><td>0</td><td>0.0001</td><td>0.0034</td><td>0.1044</td><td>0.0901</td><td></td></tr><tr><td>8</td><td>0</td><td>0</td><td>0</td><td>0.0009</td><td>0.0653</td><td>0.1126</td><td></td></tr><tr><td>9</td><td>0</td><td>0</td><td>0</td><td>0.0002</td><td>0.0363</td><td>0.1251</td><td></td></tr><tr><td>10</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.0181</td><td>0.1251</td><td></td></tr><tr><td>11</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.0082</td><td>0.1137</td><td></td></tr><tr><td>12</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.0034</td><td>0.0948</td><td></td></tr><tr><td>13</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.0013</td><td>0.0729</td><td></td></tr><tr><td>14</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.0005</td><td>0.0521</td><td></td></tr><tr><td>15</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.0002</td><td>0.0347</td><td></td></tr><tr><td>16</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.0217</td><td></td></tr><tr><td>17</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.0128</td><td></td></tr><tr><td>18</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.0071</td><td></td></tr><tr><td>19</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.0037</td><td></td></tr><tr><td>20</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.0019</td><td></td></tr><tr><td>50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td></td></tr><tr><td>100</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td></td></tr></table>

# APPENDIX B BINOMIAL AND MULTINOMIAL COEFFICIENTS

In this appendix, we explain the concept of the binomial and multinomial coefficients used in discrete probability distributions.

# BINOMIAL COEFFICIENT

The binomial coefficient is defined as

$$
{\binom {n} {k}} = \frac{n !}{k ! (n - k) !}
$$ for some nonnegative integers  $k$  and  $n$  with  $0 \leq k \leq n$ . For the binomial coefficient, we use the factorial operator denoted by the "!" symbol. A factorial is defined in the set of natural numbers


$N$  that is  $k = 1,2,3,\ldots$  as

$$ k! = k \cdot (k - 1) \cdot (k - 2) \cdot \dots \cdot 1
$$

For  $k = 0$ , we define  $0! \equiv 1$ .

# Derivation of the Binomial Coefficient

In the context of the binomial distribution, we form the sum  $X$  of  $n$  independent and identically distributed Bernoulli random variables  $Y_{i}$  with parameter  $p$  or, formally,  $Y_{i} \stackrel{i\text{id}}{\sim} B(p)$ ,  $i = 1, 2, \ldots, n$ . The random variable is then distributed binomial with parameters  $n$  and  $p$ , i.e.,  $X \sim B(n, p)$ . Since the random variables  $Y_{i}$  have either value 0 or 1, the resulting binomial random variable (i.e., the sum  $X$ ) assumes some integer value between 0 and  $n$ . Let  $X = k$  for  $0 \leq k \leq n$ . Depending on the exact value  $k$ , there may be several alternatives to obtain  $k$  since, for the sum  $X$ , it is irrelevant in which order the individual values of the  $Y_{i}$  appear.

# Special Case  $n = 3$

We illustrate the special case where  $n = 3$  using a  $B(3,0.4)$  random variable  $X$ ; that is,  $X$  is the sum of three independent  $B(0.4)$  distributed random variables  $Y_{1}, Y_{2}$ , and  $Y_{3}$ . All possible values for  $X$  are contained in the state space  $\Omega' = \{0,1,2,3\}$ . As we will see, some of these  $k \in \Omega'$  can be obtained in different ways.

We start with  $k = 0$ . This value can only be obtained when all  $Y_{i}$  are 0, for  $i = 1,2,3$ . So, there is only one possibility.

Next we consider  $k = 1$ . A sum of  $X = 1$  can be the result of one  $Y_{i} = 1$  while the remaining two  $Y_{i}$  are 0. We have three possibilities for  $Y_{i} = 1$  since it could be either the first, the second, or the third of the Bernoulli random variables. Then we place the first 0. For this, we have two possibilities since we have two  $Y_{i}$  left that are not equal to 1. Next, we place the second 0, which we have to assign to the remaining  $Y_{i}$ . As an intermediate result, we have  $3 \cdot 2 \cdot 1 = 6$ possibilities. However, we do not need to differentiate between the two 0 values because it does not matter which of the zeros is assigned first and which second. So, we divide the total number of options by the number of possibilities to place the 0 values (i.e., 2). The resulting number of possible ways to end up with  $X = 1$  is

Figure B.1 Three Different Ways to Obtain a Total of  $X = \sum_{i=1}^{3} Y_i = 1$
![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/88aa06eaa274b92fd3c4d9601b3f4139f9d667211adb7ce6e3dd7581a2912fb6.jpg)
Note: The alternatives matched by the  $=$  symbol lead to the same outcome, respectively.


$$
\frac{3 \cdot 2 \cdot 1}{2} = \frac{3 !}{2 ! \cdot 1 !} = 3
$$

For reasons we will make clear later, we introduced the middle term in the above equation.

Let us illustrate this graphically. In Figure B.1, a black ball represents a value  $Y_{i} = 1$  at the  $i$ -th drawing while the white numbered circles represent a value of  $Y_{i} = 0$  at the respective  $i$ -th drawing with  $i$  matching the number in the circle.

Now let  $k = 2$ . To yield the sum  $X = 2$ , we need two  $Y_{i} = 1$  and one  $Y_{i} = 0$ . So, we have three different positions to place the 0, while the remaining two  $Y_{i}$  have to be equal to 1 automatically. Analogous to the prior case,  $X = 1$ , we do not need to differentiate between the two 1 values, once the 0 is positioned.

Finally, let  $k = 3$ . This is accomplished by all three  $Y_{i} = 1$ . So, there is only one possibility to obtain  $X = 3$ .

We summarize these results in Table B.1.

# Special Case  $n = 4$

We extend the prior case to the case where the random variable  $X$  is the sum of four Bernoulli distributed random variables—that is,  $\Upsilon_{i}\stackrel {iid}{\sim}B(p),i = 1,2,3,4$  assuming either value 0 or 1 for each. The resulting sum  $X$  is then binomial distributed  $B(4,p)$  assuming values  $k$  in the state space  $\Omega^{\prime} = \{0,1,2,3,4\}$ . Again, we will analyze how the individual values of the sum  $X$  can be obtained.

To begin, let us consider the case  $k = 0$ . As in the prior case  $n = 3$ , we have only one possibility (i.e., all four  $Y_{i}$  equal to 0, that is,  $Y_{1} = Y_{2} = Y_{3} = Y_{4} = 0$ ). This can be seen from the following. Technically, we have four positions to place the first 0. Then, we have three choices to place the second 0. For the third 0, we have two positions available, and one for the last 0. In total, we have

$$
4 \times 3 \times 2 \times 1 = 2 4
$$

Table B.1 Different Choices to Obtain  $X = k$  when  $n = 3$

<table><tr><td>k=0</td><td>k=1</td><td>k=2</td><td>k=3</td></tr><tr><td>1 = 3! / 0! × 3! = (3/0)</td><td>3 = 3! / 1! × 2! = (3/1)</td><td>3 = 3! / 2! × 1! = (3/2)</td><td>1 = 3! / 3! × 0! = (3/3)</td></tr></table>

$$
Y_{1} = Y_{2} = 1 \quad \begin{array}{l l l l l l l l} \bullet & \bullet & \bullet & \bullet & \bullet & \bullet & \bullet & \bullet \\ \bullet & \bullet & \bullet & \bullet & \bullet & \bullet & \bullet & \bullet \\ \bullet & \bullet & \bullet & \bullet & \bullet & \bullet & \bullet & \bullet \\ \bullet & \bullet & \bullet & \bullet & \bullet & \bullet & \bullet & \bullet \\ \bullet & \bullet & \bullet & \bullet & \bullet & \bullet & \bullet & \bullet \\ \bullet & 2 & 2 & 2 & 1 & 1 & 2 \end{array}
$$

$$
\mathrm{Y}_{1} = \mathrm{Y}_{2} = 1 \quad = \begin{array}{c c c c} \bullet & \bullet & \bullet \\ \bullet & \bullet & \bullet & \bullet \\ \bullet & \bullet & \bullet & \bullet \\ \bullet & \bullet & \bullet & \bullet \\ \bullet & \bullet & \bullet & \bullet \\ \bullet & \bullet & \bullet & \bullet \\ \bullet & \bullet & \bullet & \bullet \\ \bullet & \bullet & \bullet & \bullet \\ \bullet & \bullet & \bullet & \bullet \\ \bullet & \bullet & 1 \end{array}
$$

$$
\mathrm{Y}_{1} = \mathrm{Y}_{2} = 1 \quad = \begin{array}{c c c c c} \text{2} & \text{1} & \text{2} & \text{1} \end{array}
$$

$$
\begin{array}{c c c c c c c c} & \mathrm{Y}_{1} & \mathrm{Y}_{2} & \mathrm{Y}_{3} & \mathrm{Y}_{4} & \mathrm{Y}_{1} & \mathrm{Y}_{2} & \mathrm{Y}_{3} & \mathrm{Y}_{4} \\ \hline \end{array}
$$

Figure B.2 Four Different Ways to Obtain  $Y_{1} = Y_{2} = 1$

But due to the fact that we do not care about the order of the 0 values, we divide by the total number of options (i.e., 24) and then obtain

$$
\frac{4 \times 3 \times 2 \times 1}{4 \times 3 \times 2 \times 1} = \frac{4 !}{4 !} = 1
$$

Next, we derive a sum of  $k = 1$ . This can be obtained in four different ways. The reasoning is similar to that in the case  $k = 1$  for  $n = 3$ . We have four positions to place the 1. Once the 1 is placed, the remaining  $Y_{i}$  have to be automatically equal to 0. Again, the order of placing the 0 values is irrelevant, which eliminates the redundant options through division of the total number by  $3 \times 2 \times 1 = 6$ . Technically, we have

$$
\frac{4 \times 3 \times 2 \times 1}{3 \times 2 \times 1} = \frac{4 !}{3 !} = 4
$$

For a sum  $X$  equal to  $k = 2$ , we have four different positions to place the first 1. Then, we have three positions left to place the second 1. This yields  $4 \times 3 = 12$  different options. However, we do not care which one of the 1 values is placed first since, again, their order is irrelevant. So, we divide the total number by 2 to indicate that the order of the two 1 values is unimportant. Next, we place the first 0, which offers us two possible positions for the remaining  $Y_{i}$  that are not equal to 1 already. For this, we have two options. In total, we then have


$$
\frac{4 \times 3 \times 2 \times 1}{2 \times 1} = \frac{4 !}{2 !} = 1 2
$$ possibilities. Then, the second 0 is placed on the remaining  $Y_{i}$ . So, there is only one choice for this 0. Because we do not care about the order of placement of the 2 values, we divide by 2. The resulting number of different ways to yield a sum  $X$  of  $k = 2$  is


$$
\frac{4 \times 3 \times 2 \times 1}{2 \times 1 \times 2 \times 1} = \frac{4 !}{2 ! \times 2 !} = 6
$$ which is illustrated in Figures B.2 through B.7.


A sum of  $X$  equal to  $k = 3$  is achieved by three 1 values and one 0 value. So, since the order of the 1 values is irrelevant due to the previous reasoning, we only care about where to place the 0 value. We have four possibilities, that is,

$$
\frac{4 \times 3 \times 2 \times 1}{3 \times 2 \times 1} = \frac{4 !}{3 !} = 4
$$

$$
Y_{1} = Y_{3} = 1 \quad \boxed {1} \quad \boxed {1} \quad \boxed {2} = \boxed {2} \quad \boxed {1} \quad \boxed {1} \quad \boxed {2}
$$

$$
\mathrm{Y}_{1} = \mathrm{Y}_{3} = 1 \quad = \begin{array}{c c c c} \bullet & \bullet & \bullet & \bullet \\ \bullet & \bullet & \bullet & \bullet \\ \bullet & \bullet & \bullet & \bullet \\ \bullet & \bullet & \bullet & \bullet \\ \bullet & \bullet & \bullet & \bullet \\ \bullet & \bullet & \bullet & \bullet \\ \bullet & \bullet & \bullet & \bullet \\ \bullet & \bullet & \bullet & \bullet \\ \bullet & \bullet & \bullet & \bullet \\ \bullet & 1 & 2 & 3 \\ \bullet & 1 & 2 & 3 \\ \bullet & 1 & 2 & 3 \\ \bullet & 1 & 2 & 3 \\ \bullet & 1 & 2 & 3 \\ \bullet & 1 & 2 & 3 \\ \bullet & 1 & 2 & 3 \\ \bullet & 1 & 2 & 3 \\ \bullet & 1 & 2 & 3 \\ \bullet \end{array}
$$

$$
\mathrm{Y}_{1} = \mathrm{Y}_{3} = 1 \quad = \begin{array}{c c c c} \bullet & \bullet & \bullet & \bullet \\ \bullet & \bullet & \bullet & \bullet \\ \bullet & \bullet & \bullet & \bullet \\ \bullet & \bullet & \bullet & \bullet \\ \bullet & \bullet & \bullet & \bullet \\ \bullet & \bullet & \bullet & \bullet \\ \bullet & \bullet & \bullet & \bullet \\ \bullet & \bullet & \bullet & \bullet \\ \bullet & \bullet & \bullet & \bullet \\ \bullet & 2 & 2 & 1 \\ \bullet & 2 & 1 & 1 \\ \bullet & 2 & 1 & 1 \\ \bullet & 2 & 1 & 1 \\ \bullet & 2 & 1 & 1 \\ \bullet & 2 & 1 & 1 \\ \bullet & 2 & 1 & 1 \\ \bullet & 2 & 1 & 1 \\ \bullet & 2 & 1 & 1 \\ \bullet & 2 & 1 & 1 \end{array}
$$

$$
\begin{array}{c c c c c c c c} \mathrm{Y}_{1} & \mathrm{Y}_{2} & \mathrm{Y}_{3} & \mathrm{Y}_{4} & \mathrm{Y}_{1} & \mathrm{Y}_{2} & \mathrm{Y}_{3} & \mathrm{Y}_{4} \end{array}
$$

Figure B.3 Four Different Ways to Obtain  $Y_{1} = Y_{3} = 1$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/3414ce362d498723feebc048e1b2c2132eed8ae1b6763d515e386e35e7f88016.jpg)
Figure B.4 Four Different Ways to Obtain  $Y_{1} = Y_{4} = 1$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/6dd60deb2c1cb6abf96d6a973d1b983e1fe3d74ff00ea68b64e2ed312fade620.jpg)
Figure B.5 Four Different Ways to Obtain  $Y_{2} = Y_{3} = 1$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/a796d1a9a018911e4672f10fe5ef443544170a7e0dec57789dc578fc72534d1d.jpg)
Figure B.6 Four Different Ways to Obtain  $Y_{2} = Y_{4} = 1$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/f06b23a86541867428c3a58f60bef02a065dca8cf35a03e126ab627c018b1457.jpg)
Figure B.7 Four Different Ways to Obtain  $Y_{3} = Y_{4} = 1$

Table B.2 Different Choices to Obtain  $X = k$  when  $n = 4$

<table><tr><td>k=0</td><td>k=1</td><td>k=2</td><td>k=3</td><td>k=4</td></tr><tr><td>1=\frac{4!}{0!×4!}=\binom{4}{0}</td><td>4=\frac{4!}{1!×3!}=\binom{4}{1}</td><td>6=\frac{4!}{2!×2!}=\binom{4}{2}</td><td>4=\frac{4!}{3!×1!}=\binom{4}{3}</td><td>1=\frac{4!}{4!×0!}=\binom{4}{4}</td></tr></table>

Finally, to obtain  $k = 4$ , we only have one possible way to do so, as in the case where  $k = 0$ . Mathematically, this is

$$
\frac{4 \times 3 \times 2 \times 1}{4 \times 3 \times 2 \times 1} = \frac{4 !}{4 !} = 1
$$

We summarize the results in Table B.2.

# General Case

Now we generalize for any  $n \in N$  (i.e., some nonnegative integer number). The binomial random variable  $X$  is hence the  $B(n, p)$  distributed sum of  $n$  independent and identically distributed random variables  $Y_{i}$

From the two special cases (i.e.,  $n = 3$  and  $n = 4$ ), it seems that to obtain the number of choices for some  $0 \leq k \leq n$ , we have  $n!$  in the numerator to account for all the possibilities to assign the individual  $n$  values to the  $Y_{i}$ , no matter how many 1 values and 0 values we have. In the denominator, we correct for the fact that the order of the 1 values and 0 values is irrelevant. That is, we divide by the number of different orders to place the 1 values on the  $Y_{i}$  that are equal to 1, and also by the number of different orders to assign the 0 values to the  $Y_{i}$  being equal to 0. Therefore, we have  $n!$  in the numerator and  $k! \times (n - k)!$  in the denominator. The result is illustrated in Table B.3.


# MULTINOMIAL COEFFICIENT

The multinomial coefficient is defined as

$$
\left( \begin{array}{c c} & n \\ n_{1} & n_{2} \dots n_{k} \end{array} \right) = \frac{n !}{n_{1} ! \cdot n_{2} ! \cdot \ldots \cdot n_{k} !}
$$ for  $n_1 + n_2 + \ldots + n_k = n$ . Sometimes, the multinomial coefficient is referred to as the polynomial coefficient.


Assume we have some population of balls with  $k$  different colors. Suppose  $n$  times we draw some ball and return it to the population such that for each trial (i.e., drawing), we have the identical conditions. Hence, the individual trials are independent of each other. Let  $Y_{i}$  denote the color obtained in the  $i$ -th trial for  $i = 1,2,\ldots,n$ .

How many different possible samples of length  $n$  are there? Let us think of the drawings in a different way. That is, we draw one ball after another disregarding color and assign the drawn ball to the trials  $Y_{1}$  through  $Y_{n}$  in an arbitrary fashion.

Table B.3 Different Choices to Obtain  $X = k$  for General  $n$

<table><tr><td>k=0</td><td>k=1</td><td>k=2</td></tr><tr><td>1=n! / (0! × n! = (n/0)</td><td>n = n! / (1! × (n-1)! = (n/1)</td><td>n × (n-1)/2 = n! / 2! × (n-2)! = (n/2)</td></tr><tr><td>...</td><td>k=n-1</td><td>k=n</td></tr><tr><td>...</td><td>n = n! / (n-1)! × 1! = (n/n-1)</td><td>n = n! / n! × 0! = (n/n)</td></tr></table>

First, we draw a ball with any of the  $k$  colors and assign it to one of the  $n$  trials,  $Y_{i}$ . Next, we draw the second ball and assign it to one of the remaining  $n - 1$  possible trials  $i$  as outcome of  $Y_{i}$ . This yields

$$ n \times (n - 1)
$$ different possibilities. The third ball drawn is assigned to the  $n - 2$  trials left so that we have


$$ n \times (n - 1) \times (n - 2)
$$ possibilities, in total. This is continued until we draw the  $n$ th (i.e., the last), color, which can only be placed in the last remaining trial  $Y_{i}$ . In total this yields


$$ n \times (n - 1) \times (n - 2) \times \dots \times 2 \times 1 = n!
$$ different possibilities of drawing  $n$  balls.


The second question is how many different possibilities are there to obtain a sample with the number of occurrences  $n_1, n_2, \ldots, n_k$  of the respective colors. Let red be one of these colors and suppose we have a sample with a total of  $n_r = 3$  red balls from trials 2, 4, and 7 so that  $Y_2 = Y_4 = Y_7 = \text{red}$ . The assignment of red to these three trials yields

$$
3! = 3 \times 2 \times 1 = 6
$$ different orders of assignment. Now, we are indifferent with respect to which of the  $Y_{2}, Y_{4}$ , and  $Y_{7}$  was assigned red first, second, and third. Thus, we divide the total number  $n!$  of different samples by  $n_r! = 3!$  to obtain only nonredundant results with respect to a red ball. We proceed in the same fashion for the remaining colors and, finally, obtain for the total number of nonredundant samples containing  $n_1$  of color 1,  $n_2$  of color 2, ..., and  $n_k$  of color  $k$


$$
\binom {n!} {n_{1} n_{2} \ldots n_{k}} = \frac{n !}{n_{1} ! \times n_{2} ! \times \ldots \times n_{k} !}
$$ which is exactly the multinomial coefficient equation given above.


# KEY POINTS

- A discrete law or probability distribution is related to some discrete random variable, that is, a random variable that can assume values from a countable set of values. Typical examples include counts (i.e., the number of items meeting certain requirements) and number of hits.
- The most important discrete random variables used in finance and their probability distribution are the Bernoulli, binomial, hypergeometric, multinomial, Poisson, and discrete uniform.
- The Bernoulli distribution might be the most famous discrete law. It is applied when a random variable can only assume one of two values—0 or 1. A simple example would be the toss of a coin. In financial models, it is applied if it is of interest whether a certain event has occurred (1) or not (0).
- The binomial distribution is the extension of the Bernoulli distribution in the sense that it represents repeated trials where the respective outcomes are either 0 or 1, so that in total we can obtain any integer between 0 and  $n$ , where  $n$  is the number of Bernoulli trials. A typical example in finance would be given by the binomial stock price model where it is the objective to count the number of up-movements of some stock over a given number of periods.
- Drawing with replacement refers to the experiment of repeated trials where each individual trial is conducted under identical conditions as the others and without influencing each other. A prerequisite of the binomial distribution is drawing with replacement.
- The Poisson distribution is related to a discrete random variable that can assume any nonnegative integer value. A typical application is in risk theory when the number of defaults or occurrences of some undesirable event has to be modeled.

# NOTE

1. Note that the successive prices  $S_{1},\ldots ,S_{T}$  depend on their respective predecessors. They are said to be path-dependent. Only the changes, or factors  $Y_{t + 1}$ , for each period are independent. In this case, the price  $S_{t + 1}$  depends only on  $S_{t}$ , however, and not the en tire past. This is referred to as the Markov property.


# REFERENCE

Humpage, O. F. (1998). The Federal Reserve as an informed foreign exchange trader. *Federal Reserve Bank of Cleveland*, Working Paper 9815, September.
