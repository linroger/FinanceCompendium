---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Elementary Review of Probability for Finance
linter-yaml-title-alias: Elementary Review of Probability for Finance
---

# Elementary Review of Probability for Finance

People with an interest in finance are frequently required to apply concepts from probability and statistics. Corporate cash flows, exchange rates, commodity prices, stock prices, and interest rates are all random variables that can be usefully modeled by using probability and statistics. Unfortunately, you never have the luxury of observing the actual, objective probability distribution in the social science field of finance. The closest alternative is your perceived, subjective probability distribution. Historical frequencies of an event are never an exact representation of future outcome. Thus, we must be cognizant of the well-known disclaimer, "Please remember that past performance may not be indicative of future results." Market participants learn from the past and make behavioral adjustments that influence future observations.

This chapter provides a brief introductory review of the key foundational concepts in probability that have proven useful in financial analysis. More depth is found in almost any good book on probability.<sup>1</sup>

# 4.1 MARGINAL, CONDITIONAL, AND JOINT PROBABILITIES

Probability is a measure, meaning a numerical description or quantification, of the relative frequency of an event. The probability of observing heads in one toss of a fair coin is obviously  $1/2$ . There are two possibilities and one fits the definition of the desired event. Technically this concept is called the marginal probability, which distinguishes it from the conditional probability, which is the probability that something will happen, given that something else has already happened. Finally, we have the concept of joint probability, which is the probability that two or more events will happen.

To illustrate these concepts, consider the following information. A sample of 100 people, 55 female and 45 male, is collected and examined for the frequency of brown hair. Of the 55 females, 31 have brown hair and 24 have some other color. Of the 45 males, 28 have brown hair and 17 have some other color. If this is a reliable sample, what is the probability that a person selected at random will have brown hair? This is the unconditional probability, sometimes called the marginal probability, and it is 0.59, given that 59 out of 100 have brown hair. Note that we did not condition on whether the person is male or female.

Now suppose you know that you selected a male. Then what would be the probability that the subject has brown hair? This concept is the conditional probability, specifically the probability that the subject would have brown hair, given that it is a male. Then the answer would be  $28 / 45 = 0.62$  because  $62\%$  of the males have brown hair.

Now suppose you selected someone at random and you wanted to know the probability that it would be a female with a hair color other than brown. Out of 100 subjects, 24 are females with a hair color other than brown. So, on that basis alone, we know that the joint probability would be 0.24. The joint probability is equal to the conditional probability times the marginal probability of the condition. In our example this means that we want the probability that the subject will be a female with a hair color other than brown and this will be the probability that the subject will be female, given that you know the subject does not have brown hair, times the probability that the subject does not have brown hair. The probability that the subject will be female, given that we know that the subject does not have brown hair is 24/41 because there are 41 people with a hair color other than brown and 24 are female. This is the conditional probability. The probability that the subject does not have brown hair is 41/100 because you know that out of 100 people, 41 do not have brown hair. This is the marginal probability. Multiplying the conditional probability times the marginal probability gives us  $(24 / 41)(41 / 100) = 24 / 100$ .

Alternatively, we could have found the conditional probability that the subject will not have brown hair given that we know it is a female, which will be 24/55, times the probability that the subject is female, 55/100, giving us the correct answer of 24/100.

Now, let us consider another simple event, such as the probability of a head on one toss of a coin being  $1/2$ . Now suppose we toss two coins. What is the probability of a head? Now we have to define more precisely what we mean. Do we mean one head, two heads, or at least one head? We also have to be assured that the coins are independent, for if not, it does affect our answer. Let us focus on the probability of exactly one head. Assuming the two coins are independent, consider the probability of one head as restricted to the probability that we toss a head on coin one and a tail on coin two, which is  $(1/2)(1/2) = 1/4$ . This is what we mean by the joint probability with independent events. There are two ways to toss one head, however: a head on the first and a tail on the second or a tail on the first and a head on the second. So, the probability of exactly one head is really  $1/4 + 1/4 = 1/2$ . If we want the probability of two heads, then we must toss a head on both coins. Because the events are independent, the joint probability is the product of the marginal probabilities. Thus, the probability of two heads is  $(1/2)(1/2) = 1/4$ . If we want the probability of at least one head, we require the probability of exactly one head plus the probability of two heads, which is  $1/2 + 1/4 = 3/4$ . Interestingly, there is another way of solving the "at least one" case. Its probability is one minus the probability of no heads. The probability of no heads is  $(1/2)(1/2) = 1/4$ . So, the probability of at least one head is  $1 - 1/4 = 3/4$ .

We can easily verify these results by summarizing all possible outcomes:

Head on first coin, head on second coin  
Head on first coin, tail on second coin  
Tail on first coin, head on second coin  
Tail on first coin, tail on second coin

These are equally likely events so each has a probability of  $1/4$ . The outcome of one head is represented by the second and third events so the probability is  $1/4 + 1/4 = 1/2$ . For two heads, there is just one way to do it, the first event. So that probability is  $1/4$ . If we want the probability of at least one head, we include the first three events, so that probability is  $1/4 + 1/4 + 1/4 = 3/4$ . Alternatively, the probability of at least one head can be restated as 1 minus the probability of no heads. There is only one event here with no heads, the fourth event, so the answer is  $1 - 1/4 = 3/4$  or alternatively, 1 – the probability of a tail on both tosses, which is  $1 - 1/4 = 3/4$ .

The probability of two events occurring, as noted, is called the joint probability. Defining the events as  $A$  and  $B$  and denoting probability as  $\Pr$ , we state the joint probability for independent events in the following manner:

$\operatorname{Pr}(A \text{ and } B) = \operatorname{Pr}(A) \operatorname{Pr}(B)$ , given independence of  $A$  and  $B$ .

For events that are dependent, we must make some modifications. First, let us ask what we mean by independence and dependence. The coin tosses are clearly independent. The outcome of one coin is unrelated to the outcome of the other. We can, however, map the coin tosses into values that are not independent. Consider the following experiment. Toss a coin one time. If heads occur, record the value  $+1$ ; if tails occurs, record the value  $-1$ . Then toss the coin again. Once again record  $+1$  or  $-1$  and add it to the amount recorded after the first coin toss. We are interested in the probabilities of the numerical outcomes. Here are the equally likely possibilities:

Head on first coin, head on second coin: sum = +2  
Head on first coin, tail on second coin: sum = 0  
Tail on first coin, head on second coin: sum = 0  
Tail on first coin, tail on second coin: sum = -2

Thus, the probability distribution is as follows:

<table><tr><td>Outcome</td><td>Probability</td></tr><tr><td>+2</td><td>1/4</td></tr><tr><td>0</td><td>1/2</td></tr><tr><td>-2</td><td>1/4</td></tr></table>

These are the marginal probabilities. We might also want to know the conditional probabilities. For example, we might wish to know the probabilities of  $+2$ , 0, and  $-2$  given that a head occurred on the first toss. These probabilities are as follows:

<table><tr><td>Outcome</td><td>Probability3</td></tr><tr><td>+2</td><td>1/2</td></tr><tr><td>0</td><td>1/2</td></tr><tr><td>-2</td><td>0</td></tr></table>

If a tail occurs on the first toss, the probabilities are as follows:4

<table><tr><td>Outcome</td><td>Probability</td></tr><tr><td>+2</td><td>0</td></tr><tr><td>0</td><td>1/2</td></tr><tr><td>-2</td><td>1/2</td></tr></table>

The probabilities of  $+2$  and  $-2$  outcomes are quite different if a head or tail has occurred on the first toss. This is what we mean by the conditional probability. The events, defined specifically as the sum of the  $+1$  or  $-1$  assigned to the head or tail tossed, are not independent. The occurrence of a head or a tail, however, is independent from one toss to the other. It is interesting to note how the same sample experiment can give rise to a quite different set of probabilities for different events.

In general, we have the following result, where  $\mathcal{O}$  denotes and:

$$
\Pr (A \& B) = \Pr (B | A) \Pr (A) = \Pr (A | B) \Pr (B).
$$

Note that  $\operatorname{Pr}(.)$  stands for the probability of the event(s) in the parentheses. When a vertical line appears in parentheses it means conditional on the event following the vertical line. To cast our event in this context, think of the two tosses as two coins, coin1 and coin2. The outcome of a  $+2$  can occur only in the joint condition that both coins come up heads. The probability of this occurring is obtained from the conditional probabilities as follows: the probability of a head on the second coin conditional on a head on the first coin  $(1/2)$  times the probability of a head on the first coin  $(1/2)$ . Alternatively, it is the probability of a head on the first coin conditional on a head on the second coin  $(1/2)$  times the probability of a head on the second coin  $(1/2)$ .

A probability distribution is a mathematical specification of the probabilities associated with events. For the examples shown, we easily laid out the probability distribution. Many types of random outcomes can be characterized with an exact mathematical formulation that gives either the probability of an event occurring or the probability of a range of events occurring. Coin tosses are outcomes from what is called a binomial probability distribution. This distribution is one of a family of distributions that are called discrete, which means that only a finite number of outcomes can occur. Another family of distributions is referred to as continuous, meaning that the number of possible outcomes is infinite. Anything that can be measured with fractional precision is continuous. For example, the return on an asset is continuous. An asset bought at 99.75 and sold at 102.5 has a return of  $2.757\ldots\%$ . There are an infinite number of possible returns, provided the return is measured with decimal precision and not rounded off to a certain number of decimal places. One major example of a continuous distribution is the familiar normal or bell-shaped distribution.

Consider a random variable,  $x$ . An expression such as  $\operatorname{Pr}(x = a)$ , representing the probability that an outcome of  $x$  is a value of  $a$ , is one example of information revealed by a discrete probability distribution. In some cases, we wish to know the cumulative probability,  $\operatorname{Pr}(x \leq a)$ . For example, consider the previous problem in which we wish to know

the probability of achieving a specific total after two coin tosses where a head counts as  $+1$  and a tail counts as  $-1$ . Suppose we wish to know the probability that the total is non-negative. Then we have  $\operatorname{Pr}(x \geq 0)$ , which equals  $\operatorname{Pr}(x = 0) + \operatorname{Pr}(x = 2) = 1/2 + 1/4 = 3/4$ . Alternatively, we could calculate using the complement,  $\operatorname{Pr}(x \geq 0) = 1 - \operatorname{Pr}(x < 0) = 1 - \operatorname{Pr}(x = -2) = 1 - 1/4 = 3/4$ . Note that it is not possible to obtain a total of  $+1$  or  $-1$ . The outcomes are either  $+2$ ,  $0$ , or  $-2$ .

If a random variable is continuous, we cannot specify a probability in terms of a specific value. For example, in the standard normal distribution we cannot specify  $\operatorname{Pr}(x = 0)$ . Because there are an infinite number of outcomes, the probability of any one outcome occurring is zero. We can, however, specify the probability of a range of outcomes occurring. Statements like  $\operatorname{Pr}(x > 0)$  are quite acceptable. The answer is 0.5, owing to the symmetry of the distribution and the fact that its expected value is zero. Likewise, we can use statements like  $\operatorname{Pr}(b < x < a)$ , which is easily found as  $\operatorname{Pr}(x < a) - \operatorname{Pr}(x < b)$ .

Because the probability of a specific value of the random variable occurring is zero in the continuous case, there is no mathematical specification that gives such results as  $\operatorname{Pr}(x = a)$ . There is, however, a mathematical specification that can lead to such statements as  $\operatorname{Pr}(x < a)$ . We start with a mathematical function referred to as the probability density function. If we plot such a function, specified as  $f(x)$ , we observe a graph of values of a variable  $f(x)$  in terms of the random variable  $X$ . The specific value of  $f(x)$  has no particular interpretation in a continuous distribution, but the area under the curve generated by  $f(x)$  is the probability we seek. Thus, the area under the curve and to the left of a particular value  $f(a)$  is  $\operatorname{Pr}(x < a)$ . Integrating the function, meaning to accumulate its values over a range of values of  $x$ , gives us the desired probability. These concepts are discussed in more detail later in this chapter. Such a function is called the probability distribution function, or just the distribution function, and sometimes the cumulative density function. $^8$

Probability distributions are often characterized not only with a density or distribution function but also with a moment-generating function. This is a mathematical specification that incorporates the density or distribution function and yields what are called the moments of the distribution. The  $k^{th}$  raw moment of a distribution is defined as  $E(x^k)$ . As we shall see in the next section, the first moment  $(k = 1)$  is the expected value and the second moment  $(k = 2)$  is closely related to the variance. The third moment,  $E(x^3)$ , is closely related to the concept of skewness, which measures the symmetry of a probability distribution. The fourth moment,  $E(x^4)$ , is closely related to the concept of kurtosis, which measures the extent to which a distribution is peaked or flat.

Not all probability distributions have a moment-generating function, but all have a characteristic function, which, although requiring use of complex numbers, can be used to yield many useful results. Characteristic functions and to some extent moment-generating functions are occasionally used in finance.

These paragraphs provide only a brief treatment but should be sufficient to refresh our memory of previous encounters with this material. In some cases, certain concepts are being encountered for the first time. The reader will in all likelihood be required to refer to more specific material to fill in gaps and extend knowledge. We now turn to the primary operations used with random variables in finance concepts, which are the determination of expectations, variances, and covariances.

# 4.2 EXPECTATIONS, VARIANCES, AND COVARIANCES OF DISCRETE RANDOM VARIABLES

A random variable is a variable that can take on many possible values representing uncertain outcomes whose frequencies of occurrence are governed by a probability distribution. A discrete random variable can take on only a finite number of values. For example, the number of people who respond yes to a survey or the number of laboratory mice who died following an experiment are examples of a discrete random variable. By contrast, a continuous random variable can take on an infinite number of values. For example, the height of a person selected randomly or the amount of time following an event can always be expressed with decimal places. For however many decimal places chosen, one can always add one more. Let us look at the expectations, variances, and covariances of both of these types of variables. We address discrete random variables first.

For a discrete random variable there are a finite number of outcomes that we often call states or states of the world. For example, if the event is the selection of a person and we are interested in whether that person is male or female, we would have two states. Let  $x = x_{m}$  if that person is male and  $x = x_{f}$  if that person is female. In general, we specify  $n$  states and  $n$  possible values of  $x: x_{1}, x_{2}, \ldots, x_{n}$ . We often need to characterize the properties of this random variable  $x$ . We let  $p_{i}$  be the probability that state or outcome  $i$  occurs. Note that by definition  $\sum_{i=1}^{n} p_{i} = 1$ . It may well be the case that  $p_{i}$  is given by some mathematical function that might more appropriately be written as  $f(x)$ , but here we shall just leave the probability specification in the form  $p_{i}$ .

# 4.2.1 The Expectation of a Discrete Random Variable

The expected value, sometimes called the mean, is the probability-weighted average value of  $x$ . The expected value for a discrete distribution is the following specification:

$$
E (x) = \sum_ {i = 1} ^ {n} x _ {i} p _ {i}. \tag {4.1}
$$

Occasionally we shall have to work with a constant such as  $a$  in the following operations:

$$
E (a) = \sum_ {i = 1} ^ {n} a p _ {i} = a \sum_ {i = 1} ^ {n} p _ {i} = a. \tag {4.2}
$$

The expected value of a constant is simply the constant. Next, we multiply the constant times the random variable and are able to pull the constant out of the expectation sign,

$$
E (a x) = a \sum_ {i = 1} ^ {n} x _ {i} p _ {i} = a E (x). \tag {4.3}
$$

The Greek letter  $\mu$  is often used for the expected value, but other Greek letters and many other symbols are also sometimes used as the expected value.

For example, Table 4.1 provides an analyst's forecast of potential rates of return from holding a particular tech company stock over the next year.

TABLE 4.1 Potential Rates of Return  

<table><tr><td>Probability (%)</td><td>Rate of Return (%)</td></tr><tr><td>10</td><td>-25</td></tr><tr><td>20</td><td>-5</td></tr><tr><td>40</td><td>10</td></tr><tr><td>20</td><td>20</td></tr><tr><td>10</td><td>55</td></tr></table>

Based on Equation (4.1), we have

$$
E (R) = \sum_ {i = 1} ^ {n} R _ {i} p _ {i} = - 2 5 (0. 1) - 5 (0. 2) + 1 0 (0. 4) + 2 0 (0. 2) + 5 5 (0. 1) = 1 0,
$$

or an expected rate of return of  $10\%$ .

# 4.2.2 The Variance of a Discrete Random Variable

The variance is a measure of the dispersion of the distribution. It is defined as the probability-weighted squared deviation of each possible value from the expected value. Using that construction, we see that the variance can be converted to another useful specification:

$$
\begin{array}{l} \operatorname {v a r} (x) = \sum_ {i = 1} ^ {n} \left[ x _ {i} - E (x) \right] ^ {2} p _ {i} = \sum_ {i = 1} ^ {n} \left[ x _ {i} - E (x) \right] \left[ x _ {i} - E (x) \right] p _ {i} \\ = \sum_ {i = 1} ^ {n} \left\{x _ {i} ^ {2} - 2 E (x) x _ {i} + [ E (x) ] ^ {2} \right\} p _ {i} = \sum_ {i = 1} ^ {n} x _ {i} ^ {2} p _ {i} - 2 E (x) \sum_ {i = 1} ^ {n} x _ {i} p _ {i} + [ E (x) ] ^ {2} \sum_ {i = 1} ^ {n} p _ {i} \\ = E \left(x ^ {2}\right) - 2 \left[ E (x) \right] ^ {2} + \left[ E (x) \right] ^ {2} = E \left(x ^ {2}\right) - \left[ E (x) \right] ^ {2}. \tag {4.4} \\ \end{array}
$$

In other words, the variance is also the expected value of the squared value of  $x$  minus the square of the expected value of  $x$ .

When we work with constants, the variance is affected in the following manner:

$$
\begin{array}{l} \operatorname {v a r} (a x) = \sum_ {i = 1} ^ {n} \left[ a x _ {i} - E (a x) \right] ^ {2} p _ {i} = E \left[ (a x) ^ {2} \right] - [ E (a x) ] ^ {2} = E \left(a ^ {2} x ^ {2}\right) - a ^ {2} [ E (x) ] ^ {2} \tag {4.5} \\ = a ^ {2} E \big (x ^ {2} \big) - a ^ {2} [ E (x) ] ^ {2} = a ^ {2} \left\{E \big (x ^ {2} \big) - [ E (x) ] ^ {2} \right\} = a ^ {2} V a r (x). \\ \end{array}
$$

In other words, the variance of a constant times a random variable is the constant squared times the variance of the random variable. The variance of a constant is zero as shown by the following:

$$
\operatorname {v a r} (a) = \sum_ {i = 1} ^ {n} [ a - E (a) ] ^ {2} p _ {i} = \sum_ {i = 1} ^ {n} (a - a) ^ {2} p _ {i} = 0. \tag {4.6}
$$

Finally, we also show that the variance of a constant plus a random variable is the variance of the random variable. In other words, adding a constant does nothing to change the variance of the random variable.

$$
\begin{array}{l} \operatorname {v a r} (a + x) = \sum_ {i = 1} ^ {n} \left[ a + x _ {i} - E (a + x) \right] ^ {2} p _ {i} \\ = \sum_ {i = 1} ^ {n} \left[ a - E (a) + x _ {i} - E (x) \right] ^ {2} p _ {i} = \sum_ {i = 1} ^ {n} \left[ a - a + x _ {i} - E (x) \right] ^ {2} p _ {i} \\ = \sum_ {i = 1} ^ {n} \left[ x _ {i} - E (x) \right] ^ {2} p _ {i} \\ = \operatorname {V a r} (x). \tag {4.7} \\ \end{array}
$$

The square root of the variance is the standard deviation. Using  $\sigma$  as its symbol, we have  $\sigma(ax) = a(\sigma(x))$ .

Based on the same data in the last example, Table 4.2 provides supplemental information to assist in the calculation of the standard deviation.

Based on Equation (4.4), we have

$$
\operatorname {v a r} (R) = E \left(R ^ {2}\right) - [ E (R) ] ^ {2} = 4 9 0 - 1 0 ^ {2} = 3 9 0,
$$

or a standard deviation of  $19.748\%$ $\left(= \sqrt{390}\right)$

# 4.2.3 The Covariance of Discrete Random Variables

An important concept somewhat similar to the variance is the covariance. It measures the extent to which two random variables move together. Now we need another random variable, which we shall refer to as  $y$ . The covariance between  $x$  and  $y$  is given as

$$
\begin{array}{l} \operatorname {c o v} (x, y) = \sum_ {i = 1} ^ {n} \left[ x _ {i} - E (x) \right] \left[ y _ {i} - E (y) \right] p _ {i} = \sum_ {i = 1} ^ {n} \left[ x _ {i} y _ {i} - E (x) y _ {i} - x _ {i} E (y) + E (x) E (y) \right] p _ {i} \\ = \sum_ {i = 1} ^ {n} x _ {i} y _ {i} p _ {i} - E (x) \sum_ {i = 1} ^ {n} y _ {i} p _ {i} - E (y) \sum_ {i = 1} ^ {n} x _ {i} p _ {i} + E (x) E (y) \sum_ {i = 1} ^ {n} p _ {i} \\ = E (x y) - E (x) E (y) - E (y) E (x) + E (x) E (y) \\ = E (x y) - E (x) E (y). \tag {4.8} \\ \end{array}
$$

TABLE 4.2 Illustration of Supplemental Information to Compute Standard Deviation  

<table><tr><td>Probability (%)</td><td>Rate of Return (%)</td><td>Rate of Return2</td></tr><tr><td>10</td><td>-25</td><td>625</td></tr><tr><td>20</td><td>-5</td><td>25</td></tr><tr><td>40</td><td>10</td><td>100</td></tr><tr><td>20</td><td>20</td><td>400</td></tr><tr><td>10</td><td>55</td><td>3,025</td></tr><tr><td>Sum = 100%</td><td>E(R) = 10%</td><td>E(R2) = 490</td></tr></table>

The numerical value of the covariance by itself is difficult to interpret. For example, we do not know what constitutes a large covariance, and what is a small covariance. We do know that a positive (negative) covariance means that the two variables tend to move together (opposite) in a linear fashion. A zero covariance implies that there is no linear relationship between the two variables, but it does not rule out a nonlinear relationship. $^{10}$  A more useful measure of association is the correlation, defined as

$$
\rho (x, y) = \frac {\operatorname {c o v} (x , y)}{\sigma (x) \sigma (y)}, \tag {4.9}
$$

where  $\sigma(x)$  and  $\sigma(y)$  are the standard deviations of  $x$  and  $y$ , respectively. The correlation ranges between  $-1$  and  $+1$ . With bounds at  $-1$  and  $+1$ , it is a good bit easier to interpret the magnitude of a correlation.

Based on the data in the last example along with a second instrument, Table 4.3 provides supplemental information to assist in the calculation of covariance.

Based on Equation (4.8), we have the covariance as

$$
\operatorname {c o v} \left(R _ {1}, R _ {2}\right) = E \left(R _ {1} R _ {2}\right) - E \left(R _ {1}\right) E \left(R _ {2}\right) = 5 3 5 - 1 0 (1 0) = 4 3 5.
$$

Note that interpreting 435 is difficult. Is it large or small? Also, note,

$$
\operatorname {v a r} \left(R _ {1}\right) = 4 9 0 - 1 0 ^ {2} = 3 9 0 \text {a n d}
$$

$$
\operatorname {v a r} \left(R _ {2}\right) = 1, 0 9 0 - 1 0 ^ {2} = 9 9 0.
$$

The correlation coefficient, however, is more intuitive as

$$
\rho (R _ {1}, R _ {2}) = \frac {\mathrm {c o v} (R _ {1} , R _ {2})}{\sigma (R _ {1}) \sigma (R _ {2})} = \frac {4 3 5}{\sqrt {3 9 0} \sqrt {9 9 0}} = \frac {4 3 5}{1 9 . 7 4 8 (3 1 . 4 6 4)} = 0. 7.
$$

A correlation of 0.7 is a strong positive correlation.

An important result that is sometimes seen in finance is that the covariance of a variable with itself is the variance. We can easily see this by letting  $y$  also be  $x$  and thereby obtaining the covariance of  $x$  with itself:

$$
\operatorname {c o v} (x, y \mid y = x) = \operatorname {c o v} (x, x) = \sum_ {i = 1} ^ {n} \left[ x _ {i} - E (x) \right] \left[ x _ {i} - E (x) \right] p _ {i} = \operatorname {V a r} (x). \tag {4.10}
$$

TABLE 4.3 Illustration of Supplemental Information to Compute Covariance  

<table><tr><td>Probability (%)</td><td>R(1) (%)</td><td>R(1)2</td><td>R(2) (%)</td><td>R(2)2</td><td>R(1)R(2)</td></tr><tr><td>10%</td><td>-25</td><td>625</td><td>20</td><td>400</td><td>-500</td></tr><tr><td>20%</td><td>-5</td><td>25</td><td>-15</td><td>225</td><td>75</td></tr><tr><td>40%</td><td>10</td><td>100</td><td>0</td><td>0</td><td>0</td></tr><tr><td>20%</td><td>20</td><td>400</td><td>5</td><td>25</td><td>100</td></tr><tr><td>10%</td><td>55</td><td>3,025</td><td>100</td><td>10,000</td><td>5,500</td></tr><tr><td>Sum = 100%</td><td>E(R) = 10%</td><td>E(R2) = 490</td><td>E(R) = 10%</td><td>E(R2) = 1,090</td><td>E[R(1)R(2)] = 535</td></tr></table>

We also need to know that the covariance of a random variable and a constant is zero:

$$
\operatorname {c o v} (x, a) = \sum_ {i = 1} ^ {n} [ x _ {i} - E (x) ] [ a - E (a) ] p _ {i} = \sum_ {i = 1} ^ {n} [ x _ {i} - E (x) ] (a - a) p _ {i} = 0. \tag {4.11}
$$

The covariance concept facilitates the understanding of the variance of a combination of more than one random variable. Consider a weighted sum of variables  $x$  and  $y$ , obtained by multiplying  $x$  by  $a$  and  $y$  by  $b$ . Suppose we wish to find the variance of  $ax + by$ :

$$
\begin{array}{l} \operatorname {v a r} (a x + b y) = \sum_ {i = 1} ^ {n} \left(a x _ {i} + b y _ {i}\right) ^ {2} p _ {i} - \left[ \sum_ {i = 1} ^ {n} \left(a x _ {i} p _ {i} + b y _ {i} p _ {i}\right) \right] ^ {2} \\ = \sum_ {i = 1} ^ {n} \left(a x _ {i} + b y _ {i}\right) \left(a x _ {i} + b y _ {i}\right) p _ {i} - \left(a \sum_ {i = 1} ^ {n} x _ {i} p _ {i} + b \sum_ {i = 1} ^ {n} y _ {i} p _ {i}\right) ^ {2} \\ = \sum_ {i = 1} ^ {n} \left(a ^ {2} x _ {i} ^ {2} + 2 a b x _ {i} y _ {i} + b ^ {2} y _ {i} ^ {2}\right) p _ {i} - \left[ a E (x) + b E (y) \right] ^ {2} \\ = a ^ {2} \sum_ {i = 1} ^ {n} x _ {i} ^ {2} p _ {i} + 2 a b \sum_ {i = 1} ^ {n} x _ {i} y _ {i} p _ {i} + b ^ {2} \sum_ {i = 1} ^ {n} y _ {i} ^ {2} p _ {i} \\ \left. - \left\{a ^ {2} [ E (x) ] ^ {2} + 2 a b E (x) E (y) + b ^ {2} [ E (y) ] ^ {2} \right\} \right. \\ = a ^ {2} E \left(x ^ {2}\right) + 2 a b E (x y) + b ^ {2} E \left(y ^ {2}\right) - a ^ {2} [ E (x) ] ^ {2} - 2 a b E (x) E (y) - b ^ {2} [ E (y) ] ^ {2} \\ = a ^ {2} E \left(x ^ {2}\right) - a ^ {2} [ E (x) ] ^ {2} + b ^ {2} E \left(y ^ {2}\right) - b ^ {2} \left[ E (y) \right] ^ {2} + 2 a b E (x y) - 2 a b E (x) E (y) \\ = a ^ {2} \left[ E (x) ^ {2} - [ E (x) ] ^ {2} \right] + b ^ {2} \left[ E (y) ^ {2} - \left[ E (y) \right] ^ {2} \right] + 2 a b [ E (x y) - E (x) E (y) ] \\ = a ^ {2} \operatorname {V a r} (x) + b ^ {2} \operatorname {V a r} (y) + 2 a b \operatorname {C o v} (x, y). \tag {4.12} \\ \end{array}
$$

Thus, we see that the variance of a weighted sum of random variables is a weighted average of the variances of the individual random variables plus twice the weighted covariance. This result is commonly used in portfolio analysis because it captures the collective volatility of correlated variables.

Now let us find the covariance between the weighted variables, that is,  $\operatorname{cov}(ax, by)$ :

$$
\begin{array}{l} \operatorname {c o v} (a x, b y) = \sum_ {i = 1} ^ {n} \left[ a x _ {i} - E (a x) \right] \left[ b y _ {i} - E (b y) \right] p _ {i} \\ = \sum_ {i = 1} ^ {n} \left[ a x _ {i} - a E (x) \right] \left[ b y _ {i} - b E (y) \right] p _ {i} \\ = \sum_ {i = 1} ^ {n} \left[ a x _ {i} b y _ {i} - a x _ {i} b E (y) - a E (x) b y _ {i} + a b E (x) E (y) \right] p _ {i} \\ \end{array}
$$

$$
\begin{array}{l} = a b \sum_ {i = 1} ^ {n} x _ {i} y _ {i} p _ {i} - a b E (y) \sum_ {i = 1} ^ {n} x _ {i} p _ {i} - a b E (x) \sum_ {i = 1} ^ {n} y _ {i} p _ {i} + a b E (x) E (y) \sum_ {i = 1} ^ {n} p _ {i} \\ = a b E (x y) - a b E (y) E (x) - a b E (x) E (y) + a b E (x) E (y) \\ = a b (E (x y) - E (x) E (y)) \\ = a b \operatorname {c o v} (x, y). \tag {4.13} \\ \end{array}
$$

We may also wish to know what happens to the covariance if we add constants to  $x$  and  $y$ . Let  $a$  and  $b$  be constants:

$$
\begin{array}{l} \operatorname {c o v} (a + x, b + y) = \sum_ {i = 1} ^ {n} \left[ a + x _ {i} - E (a + x) \right] \left[ b + y _ {i} - E (b + y) \right] p _ {i} \\ = \sum_ {i = 1} ^ {n} \left[ a - E (a) + x _ {i} - E (x) \right] \left[ b - E (b) + y _ {i} - E (y) \right] p _ {i} \\ = \sum_ {i = 1} ^ {n} \left[ a - a + x _ {i} - E (x) \right] \left[ b - b + y _ {i} - E (y) \right] p _ {i} \\ = \sum_ {i = 1} ^ {n} \left[ x _ {i} - E (x) \right] \left[ y _ {i} - E (y) \right] p _ {i} = \operatorname {c o v} (x, y). \tag {4.14} \\ \end{array}
$$

Thus, quite logically, adding constants does not change the covariance between two variables.

Finally, we might be interested in the covariance between the sum of two random variables and a third random variable. Letting the third random variable be  $z$ , we want to know  $\operatorname{cov}(x + y, z)$ :

$$
\begin{array}{l} \operatorname {c o v} (x + y, z) = \sum_ {i = 1} ^ {n} \left[ x _ {i} + y _ {i} - E (x + y) \right] \left[ z _ {i} - E (z) \right] p _ {i} \\ = \sum_ {i = 1} ^ {n} \left\{\left[ x _ {i} - E (x) \right] + \left[ y _ {i} - E (y) \right] \right\} \left[ z _ {i} - E (z) \right] p _ {i} \\ = \sum_ {i = 1} ^ {n} \left[ x _ {i} - E (x) \right] \left[ z _ {i} - E (z) \right] p _ {i} + \sum_ {i = 1} ^ {n} \left[ y _ {i} - E (y) \right] \left[ z _ {i} - E (z) \right] p _ {i} \\ = \operatorname {c o v} (x, z) + \operatorname {c o v} (y, z). \tag {4.15} \\ \end{array}
$$

Based on the data in the last example along with a portfolio composed of  $50\%$  of instrument 1 and  $50\%$  of instrument 2, Table 4.4 provides supplemental information to assist in the calculation of the covariance of sums. Here we let  $P$  denote the return on a portfolio of  $50\%$  instrument 1 and  $50\%$  instrument 2.

Based on Equation (4.4), we have the variance of the portfolio is

$$
\operatorname {v a r} (P) = E \bigl (P ^ {2} \bigr) - [ E (P) ] ^ {2} = 6 6 2. 5 - 1 0 ^ {2} = 5 6 2. 5.
$$

TABLE 4.4 Illustration of Supplemental Information to Compute Covariance of Sums  

<table><tr><td>Probability (%)</td><td>P(%)</td><td>P2</td><td>R(1)*P(%)</td><td>R(2)*P</td></tr><tr><td>10</td><td>-2.5</td><td>6.25</td><td>62.5</td><td>-50</td></tr><tr><td>20</td><td>-10</td><td>100</td><td>50</td><td>150</td></tr><tr><td>40</td><td>5</td><td>25</td><td>50</td><td>0</td></tr><tr><td>20</td><td>12.5</td><td>156.25</td><td>250</td><td>62.5</td></tr><tr><td>10</td><td>77.5</td><td>6,006.25</td><td>4,262.5</td><td>7,750</td></tr><tr><td>Sum = 100%</td><td>E(P) = 10%</td><td>E(P2) = 662.5</td><td>E[R(1)*P] = 512.5</td><td>E[R(2)*P] = 812.5</td></tr></table>

Based on the properties of portfolio returns, we know

$$
P _ {i} = 0. 5 (R _ {1 i}) + 0. 5 (R _ {2 i}).
$$

Thus, based on Equation (4.15), we have the covariance as

$$
\operatorname {c o v} \left(0. 5 R _ {1} + 0. 5 R _ {2}, P\right) = \operatorname {c o v} \left(0. 5 R _ {1}, P\right) + \operatorname {c o v} \left(0. 5 R _ {2}, P\right).
$$

From Equation (4.13), we know

$$
\operatorname {c o v} \left(0. 5 R _ {1} + 0. 5 R _ {2}, P\right) = 0. 5 \operatorname {c o v} \left(R _ {1}, P\right) + 0. 5 \operatorname {c o v} \left(R _ {2}, P\right),
$$

$$
\operatorname {c o v} \left(R _ {1}, P\right) = E \left(R _ {1} P\right) - E \left(R _ {1}\right) E (P) = 5 1 2. 5 - 1 0 (1 0) = 4 1 2. 5, \text {a n d}
$$

$$
\operatorname {c o v} \left(R _ {2}, P\right) = E \left(R _ {2} P\right) - E \left(R _ {2}\right) E (P) = 8 1 2. 5 - 1 0 (1 0) = 7 1 2. 5.
$$

Again, interpreting variances and covariances is difficult. From the definition of covariance, we observe the identity

$$
\operatorname {v a r} (P) = \operatorname {c o v} \left(0. 5 R _ {1} + 0. 5 R _ {2}, P\right) = 0. 5 \operatorname {c o v} \left(R _ {1}, P\right) + 0. 5 \operatorname {c o v} \left(R _ {2}, P\right).
$$

If we divide both sides by the variance of the portfolio, we observe the following percentage marginal contribution to risk (\%MCTR) of each instrument in the portfolio:

$$
\% M C T R _ {1} = 0.5 \frac {\operatorname {cov} \left(R _ {1} , P\right)}{\operatorname {var} (P)} = 0.5 \frac {412.5}{562.5} = 36.67 \% \text{and}
$$

$$
\% M C T R _ {2} = 0.5 \frac {\operatorname {cov} \left(R _ {2} , P\right)}{\operatorname {var} (P)} = 0.5 \frac {712.5}{562.5} = 63.33 \%
$$

# 4.3 CONTINUOUS RANDOM VARIABLES

For continuous random variables, the operations are somewhat different, but the results are conceptually identical to the discrete case. Consider a random variable  $x$  with lower limit  $x_{L}$  and upper limit  $x_{H}$ . Its density function is  $f(x)$ . Over the entire range of outcomes, the density integrates to 1:

$$
\int_ {x _ {L}} ^ {x _ {H}} f (x) d x = 1. \tag {4.16}
$$

Remember that the value of the density function at a point is not particularly useful. That is, for a given value of  $x$ , say  $x_{i}$ , the value  $f(x_{i})$  is merely the height of the curve specified by the density,  $f(x)$ . The integration of the density over a range gives us the probability of the event over that range. For example, if we wish to know if  $x$  is less than or equal to  $a$ , the integration of the density is

$$
\Pr (x \leq a) = \int_ {x _ {L}} ^ {a} f (x) d x. \tag {4.17}
$$

This value is the cumulative probability that  $x$  will be lower than  $a$ . It is often called the distribution function and sometimes written as  $F(a)$ . For a range of  $a$  to  $b$ , the probability that the  $x$  falls in that range is found as follows:

$$
\Pr (a \leq x \leq b) = \int_ {a} ^ {b} f (x) d x. \tag {4.18}
$$

Note that this result can also be found as

$$
\Pr (a \leq x \leq b) = \int_ {x _ {L}} ^ {b} f (x) d x - \int_ {x _ {L}} ^ {a} f (x) d x. \tag {4.19}
$$

Here we integrate from the lower limit up to  $b$  and from the lower limit to  $a$ . We then subtract the latter from the former.

In the following material, we will set the lower limit to  $-\infty$  and the upper limit to  $+\infty$ .

# 4.3.1 The Expectation of a Continuous Random Variable

To obtain the expectation, we simply multiply each of the infinite values of the random variable by its density function and integrate,

$$
E (x) = \int_ {- \infty} ^ {\infty} x f (x) d x. \tag {4.20}
$$

If  $x$  is actually a constant  $a$ , then we have the following result,

$$
E (a) = \int_ {- \infty} ^ {\infty} a f (x) d x = a \int_ {- \infty} ^ {\infty} f (x) d x = a. \tag {4.21}
$$

Thus, the expected value of a constant is simply the constant. Now, suppose we multiply the constant times the random variable,

$$
E (a x) = \int_ {- \infty} ^ {\infty} a x f (x) d x = a \int_ {- \infty} ^ {\infty} x f (x) d x = a E (x). \tag {4.22}
$$

And we simply pulled the constant out of the integration.

# 4.3.2 The Variance of a Continuous Random Variable

The variance of a continuous random variable  $X$  is given as

$$
\operatorname {v a r} (x) = \int_ {- \infty} ^ {\infty} [ x - E (x) ] ^ {2} f (x) d x. \tag {4.23}
$$

The key results for the variance are given as follows. First note that the variance itself can be restated as

$$
\begin{array}{l} \operatorname {v a r} (x) = \int_ {- \infty} ^ {\infty} (x - E (x)) ^ {2} f (x) d x = \int_ {- \infty} ^ {\infty} \left\{x ^ {2} - 2 x E (x) - [ E (x) ] ^ {2} \right\} f (x) d x \\ = \int_ {- \infty} ^ {\infty} x ^ {2} f (x) d x - 2 E (x) \int_ {- \infty} ^ {\infty} x f (x) d x + [ E (x) ] ^ {2} \int_ {- \infty} ^ {\infty} f (x) d x \\ = E \left(x ^ {2}\right) - 2 \left[ E (x) \right] ^ {2} + \left[ E (x) \right] ^ {2} = E \left(x ^ {2}\right) - \left[ E (x) \right] ^ {2}. \tag {4.24} \\ \end{array}
$$

If  $x$  is a constant, we have the following:

$$
\operatorname {v a r} (a) = \int_ {- \infty} ^ {\infty} [ a - E (a) ] ^ {2} f (x) d x = \int_ {- \infty} ^ {\infty} (a - a) ^ {2} f (x) d x = 0. \tag {4.25}
$$

Obviously, the variance of a constant is zero. Now suppose we multiply a constant times the random variable.

$$
\begin{array}{l} \operatorname {v a r} (a x) = \int_ {- \infty} ^ {\infty} [ a x - E (a x) ] [ a x - E (a x) ] f (x) d x \\ = \int_ {- \infty} ^ {\infty} a [ x - E (x) ] a [ x - E (x) ] f (x) d x = a ^ {2} \int_ {- \infty} ^ {\infty} [ x - E (x) ] ^ {2} f (x) d x = a ^ {2} \operatorname {v a r} (x). \tag {4.26} \\ \end{array}
$$

So, the constant comes out of the variance as a square. Suppose we add a constant to the random variable.

$$
\begin{array}{l} \operatorname {v a r} (a + x) = \int_ {- \infty} ^ {\infty} [ a + x - E (a + x) ] ^ {2} f (x) d x \\ = \int_ {- \infty} ^ {\infty} [ a - E (a) + x - E (x) ] ^ {2} f (x) d x = \int_ {- \infty} ^ {\infty} [ a - a + x - E (x) ] ^ {2} f (x) d x \\ = \int_ {- \infty} ^ {\infty} [ x - E (x) ] ^ {2} f (x) d x = \operatorname {v a r} (x). \tag {4.27} \\ \end{array}
$$

Adding a constant clearly has no effect on the variance.

# 4.3.3 The Covariance of Continuous Random Variables

The covariance of  $x$  and  $y$  is

$$
\operatorname {c o v} (x, y) = \int_ {- \infty} ^ {\infty} [ x - E (x) ] [ y - E (y) ] f (x y) d x y. \tag {4.28}
$$

In the previous equation,  $f(xy)$  is the joint density of  $x$  and  $y$ , which gives the probability of outcomes of both  $x$  and  $y$  occurring. The single integral in the covariance equation means to integrate over all joint outcomes. At this point it will be useful to introduce a substitution for the integral and the density function.

$$
\int_ {- \infty} ^ {\infty} f (x y) d x y = \int_ {- \infty} ^ {\infty} \int_ {- \infty} ^ {\infty} f (y | x) f (x) d x d y = \int_ {- \infty} ^ {\infty} \int_ {- \infty} ^ {\infty} f (x | y) f (y) d y d x. \tag {4.29}
$$

Here we substitute the product of the conditional and marginal densities for the joint density. When we do so, we must have an integral and a differential for each density. Also note that any time we see any of these expressions with no other terms, it equals 1.0. In other words,

$$
\int_ {- \infty} ^ {\infty} f (y | x) d y = \int_ {- \infty} ^ {\infty} f (x | y) d x = 1. \tag {4.30}
$$

Now our covariance can be written as

$$
\begin{array}{l} \operatorname {c o v} (x, y) = \int_ {- \infty} ^ {\infty} [ x - E (x) ] [ y - E (y) ] f (x y) d x y \\ = \int_ {- \infty} ^ {\infty} [ x y - x E (y) - y E (x) + E (x) E (y) ] f (x y) d x y \\ = \int_ {- \infty} ^ {\infty} x y f (x y) d x y - E (y) \int_ {- \infty} ^ {\infty} x f (x y) d x y - E (x) \int_ {- \infty} ^ {\infty} y f (x y) d x y \\ + E (x) E (y) \int_ {- \infty} ^ {\infty} f (x y) d x y \\ = E (x y) - E (y) \int_ {- \infty} ^ {\infty} \int_ {- \infty} ^ {\infty} x f (y | x) f (x) d x d y - E (x) \int_ {- \infty} ^ {\infty} \int_ {- \infty} ^ {\infty} y f (x | y) f (y) d x d y + E (x) E (y) \\ = E (x y) - E (y) \int_ {- \infty} ^ {\infty} f (y | x) d y \int_ {- \infty} ^ {\infty} x f (x) d x - E (x) \int_ {- \infty} ^ {\infty} f (x | y) d x \int_ {- \infty} ^ {\infty} y f (y) d y + E (x) E (y) \\ = E (x y) - E (y) E (x) - E (x) E (y) + E (x) E (y). \tag {4.31} \\ \end{array}
$$

So we have

$$
\operatorname {c o v} (x, y) = E (x y) - E (x) E (y). \tag {4.32}
$$

Covariances with constants are zero as indicated by the following:

$$
\operatorname {c o v} (a, x) = \int_ {- \infty} ^ {\infty} [ a - E (a) ] [ x - E (x) ] f (x y) d x y = \int_ {- \infty} ^ {\infty} (a - a) [ x - E (x) ] f (x y) d x y = 0. \tag {4.33}
$$

Next we show the important result that the variance of a weighted combination of random variables is a weighted combination of their variances and all possible pairwise covariances.

$$
\begin{array}{l} \operatorname {v a r} (a x + b y) = \int_ {- \infty} ^ {\infty} [ a x + b y - E (a x + b y) ] ^ {2} f (x y) d x y \\ = \int_ {- \infty} ^ {\infty} \left[ a x - E (a x) + b y - E (b y) \right] ^ {2} f (x y) d x y \\ = \int_ {- \infty} ^ {\infty} \{a [ x - E (x) ] + b [ y - E (y) ] \} ^ {2} f (x y) d x y \\ = \int_ {- \infty} ^ {\infty} \left\{a ^ {2} [ x - E (x) ] ^ {2} + b ^ {2} [ y - E (y) ] ^ {2} + 2 a b [ x - E (x) ] [ y - E (y) ] \right\} f (x y) d x y \\ = a ^ {2} \int_ {- \infty} ^ {\infty} [ x - E (x) ] ^ {2} f (x y) d x y \\ + b ^ {2} \int_ {- \infty} ^ {\infty} [ y - E (y) ] ^ {2} f (x y) d x y + 2 a b \int_ {- \infty} ^ {\infty} [ x - E (x) ] [ y - E (y) ] f (x y) d x y. \tag {4.34} \\ \end{array}
$$

Recall that previously we substituted the product of the conditional and marginal densities for the joint density and split the single integral into the product of two integrals. Using these tricks, we obtain  $a^2 \mathrm{var}(x)$  for the first term,  $b^2 \mathrm{var}(y)$  for the second and  $2ab \mathrm{cov}(x, y)$ . Thus,

$$
\operatorname {v a r} (a x + b y) = a ^ {2} \operatorname {v a r} (x) + b ^ {2} \operatorname {v a r} (y) + 2 a b \operatorname {c o v} (x, y). \tag {4.35}
$$

The covariance between two weighted random variables is simply their covariance times the product of their weights:

$$
\operatorname {c o v} (a x, b y) = \int_ {- \infty} ^ {\infty} [ a x - E (a x) ] [ b y - E (b y) ] f (x y) d x y
$$

$$
\begin{array}{l} = \int_ {- \infty} ^ {\infty} \{a [ x - E (x) ] b [ y - E (y) ] \} f (x y) d x y \\ = a b \int_ {- \infty} ^ {\infty} [ x - E (x) ] [ y - E (y) ] f (x y) d x y = a b \operatorname {c o v} (x, y). \tag {4.36} \\ \end{array}
$$

This result is widely used in portfolio analysis, a point we made in the discrete case.

The covariance between the sum of a constant and random variables times another sum of a constant and a random variable is simply the covariance of the random variables:

$$
\begin{array}{l} \operatorname {c o v} (a + x, b + y) = \int_ {- \infty} ^ {\infty} [ a + x - E (a + x) ] [ b + y - E (b + y) ] f (x y) d x y \\ = \int_ {- \infty} ^ {\infty} [ a - E (a) + x - E (x) ] [ b - E (b) + y - E (y) ] f (x y) d x y \\ = \int_ {- \infty} ^ {\infty} [ a - a + x - E (x) ] [ b - b + y - E (y) ] f (x y) d x y \\ = \int_ {- \infty} ^ {\infty} [ x - E (x) ] [ y - E (y) ] f (x y) d x y = \operatorname {c o v} (x, y). \tag {4.37} \\ \end{array}
$$

One of the more complex results is the covariance between the sum of two random variables and a third random variable:

$$
\begin{array}{l} \operatorname {c o v} (x + y, z) = \int_ {- \infty} ^ {\infty} [ x + y - E (x + y) ] [ z - E (z) ] f (x y z) d x y z \\ = \int_ {- \infty} ^ {\infty} [ x - E (x) + y - E (y) ] [ z - E (z) ] f (x y z) d x y z \\ = \int_ {- \infty} ^ {\infty} [ x z - x E (z) - E (x) z + E (x) E (z) + y z - y E (z) - E (y) z + E (y) E (z) ] \\ f (x y z) d x y z \\ = \int_ {- \infty} ^ {\infty} x z f (x y z) d x y z - E (z) \int_ {- \infty} ^ {\infty} x f (x y z) d x y z - E (x) \int_ {- \infty} ^ {\infty} z f (x y z) d x y z \\ + E (x) E (z) \int_ {- \infty} ^ {\infty} f (x y z) d x y z \\ \end{array}
$$

$$
\begin{array}{l} + \int_ {- \infty} ^ {\infty} y z f (x y z) d x y z - E (z) \int_ {- \infty} ^ {\infty} y f (x y z) d x y z \\ - E (y) \int_ {- \infty} ^ {\infty} z f (x y z) d x y z + E (y) E (z) \int_ {- \infty} ^ {\infty} f (x y z) d x y z. \tag {4.38} \\ \end{array}
$$

As we did previously when working with only two random variables, we need to convert the joint density into the product of the marginal and conditional densities. Now, however, we have three variables. We use the following relationships:

$$
\begin{array}{l} f (x y z) = f (y | x z) f (x z) = f (x | y z) f (y z) = f (z | x y) f (x y) \\ = f (y z | x) f (x) = f (x z | y) f (y) = f (x y | z) f (z). \tag {4.39} \\ \end{array}
$$

As we have previously noted, the integral of any density function over its entire domain is 1.0. Thus,

$$
\int_ {- \infty} ^ {\infty} f (y z | x) d y z = \int_ {- \infty} ^ {\infty} f (x z | y) d x z = \int_ {- \infty} ^ {\infty} f (x y | z) d x y = 1. 0. \tag {4.40}
$$

Of the eight expressions for the covariance, the first is, therefore,

$$
\begin{array}{l} \int_ {- \infty} ^ {\infty} x z f (x y z) d x y z = \int_ {- \infty} ^ {\infty} \int_ {- \infty} ^ {\infty} x z f (y | x z) f (x z) d y d x z \\ = \int_ {- \infty} ^ {\infty} f (y | x z) d y \int_ {- \infty} ^ {\infty} x z f (x z) d x z = E (x z). \tag {4.41} \\ \end{array}
$$

The second is

$$
\begin{array}{l} - E (z) \int_ {- \infty} ^ {\infty} x f (x y z) d x y z = - E (z) \int_ {- \infty} ^ {\infty} f (y z | x) d y z \int_ {- \infty} ^ {\infty} x f (x) d x \\ = - E (z) E (x). \tag {4.42} \\ \end{array}
$$

The third is

$$
\begin{array}{l} - E (x) \int_ {- \infty} ^ {\infty} z f (x y z) d x y z = - E (x) \int_ {- \infty} ^ {\infty} f (x y | z) d x y \int_ {- \infty} ^ {\infty} z f (z) d z \\ = - E (x) E (z). \tag {4.43} \\ \end{array}
$$

The fourth expression is clearly  $E(x)E(z)$ . The fifth expression is

$$
\begin{array}{l} + \int_ {- \infty} ^ {\infty} y z f (x y z) d x y z = \int_ {- \infty} ^ {\infty} \int_ {- \infty} ^ {\infty} y z f (z | y z) f (x y z) d x d y z \\ = \int_ {- \infty} ^ {\infty} f (x | y z) d x \int_ {- \infty} ^ {\infty} y z f (y z) d y z = E (y z). \tag {4.44} \\ \end{array}
$$

The sixth expression is

$$
\begin{array}{l} - E (z) \int_ {- \infty} ^ {\infty} y f (x y z) d x y z = - E (z) \int_ {- \infty} ^ {\infty} f (x z | y) d x z \int_ {- \infty} ^ {\infty} y f (y) d y \\ = - E (z) E (y). \tag {4.45} \\ \end{array}
$$

The seventh expression is

$$
\begin{array}{l} - E (y) \int_ {- \infty} ^ {\infty} z f (x y z) d x y z = - E (y) \int_ {- \infty} ^ {\infty} f (x y | z) d x y \int_ {- \infty} ^ {\infty} z f (z) d z \\ = - E (y) E (z). \tag {4.46} \\ \end{array}
$$

The eighth expression is clearly  $E(y)E(z)$ . Thus, overall our covariance is

$$
\begin{array}{l} E (x z) - E (z) E (x) - E (x) E (z) + E (x) E (z) + E (y z) - E (z) E (y) - E (y) E (z) + E (y) E (z) \\ = E (x z) - E (x) E (y) + E (y z) - E (y) E (z) = \operatorname {C o v} (x, z) + \operatorname {C o v} (y, z). \tag {4.47} \\ \end{array}
$$

# 4.4 SOME GENERAL RESULTS IN PROBABILITY THEORY

In the following subsections, we look at some of the general results from probability theory that are helpful in option theory. By the term general, we mean that these results are not dependent on any particular probability distribution. When a specific probability distribution is known, usually a stronger statement can be made.

# 4.4.1 The Central Limit Theorem

The central limit theorem is a powerful statement that tells us that sum or average of independent samples drawn from any given probability distribution becomes normally distributed in the limit, that is, as the sample size approaches infinity. Thus, provided the sample size is large enough, the central limit theorem enables us to use the rules associated with normal probability theory when drawing inferences about sample means. How large the sample size must be to rely on the central limit theorem is not known, but a common rule of thumb has always been at least 30.

# 4.4.2 Chebyshev's Inequality

Chebyshev's inequality, sometimes called Chebyshev's theorem, enables us to make a sometimes useful statement about the probability of a sample value deviating from the population mean. More precisely, let  $x$  be a random variable with mean  $\mu$  and variance  $\sigma^2$ , which can come from any probability distribution. For any real number  $z > 0$ ,

$$
\Pr (| x - \mu | \geq z \sigma) \leq \frac {1}{z ^ {2}}, \text {a s u m i n g} z \geq 1. \tag {4.48}
$$

Thus, Chebyshev's theorem gives an upper bound on how much the observed value deviates from the mean in terms of an arbitrary value  $z$ . For example, let  $x$  be the average height in inches of a randomly drawn male university student. Let  $\mu = 70$  and  $\sigma = 2$ . For  $z$  equals various values, we have the following results:

<table><tr><td>z</td><td>zσ</td><td>Maximum Pr(|x - μ| ≥ zσ)</td></tr><tr><td>5</td><td>10</td><td>0.04</td></tr><tr><td>4</td><td>8</td><td>0.0625</td></tr><tr><td>3</td><td>6</td><td>0.1111</td></tr></table>

In other words, the probability that a sample value will deviate from the mean by more than 10 inches is less than 0.04. Thus, the probability that a student will be more than 80 inches (70 plus 10 inches) is less than  $4\%$ . The probability that a student will be more than 78 inches (70 plus eight) is less than  $6.25\%$ . The probability that a student will be more than 76 inches (70 plus six) is less than  $11.11\%$ . These rules hold for any distribution, though knowing the exact distribution usually enables one to make more precise statements.[11]

# 4.4.3 The Law of Large Numbers

The law of large numbers provides information about the accuracy with which a sample mean approximates a population mean. Basically, it says that the probability that the difference between the sample mean and the population mean is greater than an arbitrarily chosen small value is zero because the sample size goes to infinity. This law holds as long as the sample consists of independently selected random variables from the same distribution. The law of large numbers more or less says that if we take sufficiently large samples, our sample mean estimate converges to the population mean.

# 4.4.4 The Law of Iterated Expectations (the Tower Law)

The law of iterated expectations, sometimes called the Tower law, is used to specify the expected value assessed at a given time  $t$  in terms of an expected value at another time  $t + i$ , which is taken as an expected value at a later time  $t + j$ . In other words, we are taking the expectation of an expectation. For example, suppose we are at time  $t + i$  and are calculating the expected value at time  $t + j$ . We might denote this as  $E_{t + i}(x_{t + j})$ , which simply means that using the information at time  $t + i$ , we assess the expected value of  $x$

to occur at a later time  $t + j$ . Now step back to time  $t$  and try to assess the expected value at time  $t + i$ . In other words, we want  $E_{t}[E_{t + i}(x_{t + j})]$ . The law of iterated expectations simply says

$$
E _ {t} \left[ E _ {t + i} \left(x _ {t + j}\right) \right] = E _ {t} \left(x _ {t + j}\right). \tag {4.49}
$$

In other words, the expectation is iterated from the later time to the earlier time.

# 4.4.5 The Law of Total Probability

The law of total probability is a simple statement about the conditional probabilities and marginal probabilities. Specifically let  $y$  and  $x$  be random variables where  $x$  is bifurcated into values greater than  $b$  and less than or equal to  $b$ . Then the law of total probability states that

$$
\Pr (y) = \Pr (y \mid x > b) \Pr (x > b) + \Pr (y \mid x \leq b) \Pr (x \leq b). \tag {4.50}
$$

The statement  $\operatorname{Pr}(y)$  is simply any specification of  $y$ , such as  $\operatorname{Pr}(y > k)$  or  $\operatorname{Pr}(a \leq y \leq k)$ . So, the probability of any event associated with  $y$  can be broken down into the probability of that event for  $y$ , conditional on an event occurring for  $x$ , and the probability of that event for  $y$ , conditional on that event not occurring for  $x$ .

# 4.5 TECHNICAL INTRODUCTION TO COMMON PROBABILITY DISTRIBUTIONS USED IN FINANCE

Numerous financial challenges are addressed with the use of common probability distributions. As noted previously, probability distributions are either discrete or continuous.

Discrete distributions have a countable set of possible outcomes, such as flipping a coin, where each outcome has a nonnegative chance of occurring and the sum of the probability of all outcomes is equal to one. More formally, for a discrete probability function,  $p_X(a)$ , the following properties hold for a specific value,  $x$ :

$$
\begin{array}{l} \Pr (x = a) = p _ {X} (a). [ \text {R e a d : T h e p r o b a b i l i t y t h a t X i s a s p e c i f i c v a l u e ,} x = a, \text {i s} p _ {X} (a). ] \\ p _ {X} (x) \geq 0 \forall x. [ \text {R e a d : T h e p r o b a b i l i t y i s n o n n e g a t i v e f o r a l l p o s s i b l e o u t c o m e s} x. ] \\ \sum_ {j = 1} ^ {N} p _ {X} \left(x _ {j}\right) = 1. [ \text {R e a d : T h e s u m o f t h e p r o b a b i l i t i e s o v e r a l l p o s s i b l e v a l u e s o f x i s 1 .} ] \\ \end{array}
$$

Discrete probability distributions covered here include the binomial and Poisson distributions.

Continuous distributions have an infinitesimal probability of achieving any particular outcome, whereas the likelihood of achieving a value within a defined range of outcomes is measurable. Finally, the integral over the range of all outcomes is equal to one. More formally, for a continuous probability function,  $p_c(x)$ , the following properties hold:

$$
\Pr (a \leq x \leq b) = \int_ {x = a} ^ {x = b} p _ {c} (x) d x. [ \text {R e a d :} \text {T h e p r o b a b i l i t y t h a t} x \text {t a k e s a v a l u e i n a r a n g e o f}
$$

$\operatorname{Pr}(a \leq x \leq b) \geq 0 \forall a \leq b$ . [Read: The probability is nonnegative for all possible ranges of  $a$  through  $b$ .]

$\operatorname*{Pr}(-\infty \leq x \leq +\infty) = \int_{x = -\infty}^{x = +\infty} p_c(x) dx = 1$ . [Read: The integral over all possible values of  $x$  is 1.]

Continuous probability distributions covered here include the normal and lognormal distributions.

# 4.5.1 Binomial Distribution

The binomial distribution is used to model situations involving two random outcomes, such as a coin toss. Thus, this discrete probability distribution is binary, derived from the Latin root  $bi$  meaning "two." The -nomial extension is derived from Latin, meaning "name." Thus, the binomial distribution is based on two names, such as true and false, heads or tails, 1 or 0, up or down, and so forth. We often select one of the names to be success and the other name to be failure. The binomial distribution is a two-parameter distribution, with parameters  $n$  and  $p$ . The parameter  $n$  denotes the number of independent events. In finance,  $n$  is often the number of time steps, such as 252 for number of trading days in one particular year. The parameter  $p$  denotes the probability of observing a success, such as true, heads, 1, up, and so on. In finance,  $p$  is often the probability that a financial instrument will go up over the next time step.

The possible outcomes from a binomial distribution range from 0 to  $n$ , such as the number of observed up events over  $n$  days, where each event has probability  $p$  of success. The binomial distribution is therefore denoted  $B(n,p)$ . If  $x$  is said to have a binomial distribution, then the probability mass function can be expressed as<sup>12</sup>

$$
b (i, n, p) = \Pr (i; n, p) = \Pr (x = i) = \binom {n} {i} p ^ {i} (1 - p) ^ {n - i}, \tag {4.51}
$$

for all  $i = 0,1,2,\dots,n$ , where the combination of  $n$  events with  $i$  successes is defined as

$$
\left( \begin{array}{c} n \\ i \end{array} \right) = \frac {n !}{i ! (n - i) !},
$$

and  $n!$  denotes factorial or  $n(n - 1)(n - 2)\ldots (2)1$ . The combination of  $n$  events with  $i$  successes identifies the number of different ways of observing  $i$  successes over  $n$  events.

The cumulative distribution function (CDF) can be expressed as

$$
B (j; n, p) = \Pr (x \leq j) = \sum_ {i = 0} ^ {j} \binom {n} {i} p ^ {i} (1 - p) ^ {n - i}. \tag {4.52}
$$

The mean is  $n(p)$  and the variance is  $n(p)(1 - p)$ . We will explore this distribution in greater detail in Chapter 7.

# 4.5.2 Poisson Distribution

The Poisson distribution is used to model countable outcomes, such as the number of companies registered in a particular year. This distribution is named after Simeon Denis Poisson (1781-1840), although Abraham de Moivre (1711) appears to be the first to develop it. The Poisson is also a discrete probability distribution. In finance, the Poisson distribution is used when one is interested in the number of times a particular event happens during a specified time span. This distribution assumes that the occurrence of one event does not affect the likelihood of observing another event as well as assumes the average number of events is constant.

The possible outcomes from a Poisson distribution are the integers from 0 to  $\infty$ , such as the number of bankruptcies observed in a given year. The Poisson distribution requires only one parameter, the average number of observed outcomes during an interval of time, denoted  $\lambda$ . Thus, the Poisson distribution is denoted  $PD(\lambda)$ . If  $x$  is said to have a Poisson distribution, then the probability mass function can be expressed as

$$
p m (i, \lambda) = \Pr (i; \lambda) = \Pr (x = i) = \frac {\lambda^ {i} e ^ {- \lambda}}{i !}, \tag {4.53}
$$

for all  $i = 0,1,2,\ldots ,\infty$

The cumulative distribution function (CDF) can be expressed as

$$
P M (j; \lambda) = \Pr (x \leq j) = e ^ {- \lambda} \sum_ {i = 0} ^ {j} \frac {\lambda^ {i}}{i !}. \tag {4.54}
$$

The mean and variance are both  $\lambda$ .

# 4.5.3 Normal Distribution

The normal distribution is one of the most well-known of all distributions and is widely used in finance; hence, we devote the entire Chapter 5 to it. We provide a brief technical introduction here. The range of a variable,  $x$ , that follows a normal distribution is  $-\infty < x < +\infty$ . It is a symmetric two-parameter distribution typically identified with the mean,  $\mu$ , and standard deviation,  $\sigma$ . The range for the mean is therefore  $-\infty < \mu < +\infty$  and the range for the standard deviation is  $\sigma > 0$ . If  $x$  is said to have a normal distribution, then the probability density function (PDF) can be expressed as

$$
n (x) = \frac {1}{\sigma \sqrt {2 \pi}} e ^ {- \frac {(x - \mu) ^ {2}}{2 \sigma^ {2}}}. \tag {4.55}
$$

The PDF is the derivative of the cumulative distribution function. The CDF, assuming  $-\infty < a < +\infty$ , can be expressed as

$$
N (a) = \int_ {x = - \infty} ^ {a} n (x) d x = \int_ {x = - \infty} ^ {a} \frac {1}{\sigma \sqrt {2 \pi}} e ^ {- \frac {(x - \mu) ^ {2}}{2 \sigma^ {2}}} d x. \tag {4.56}
$$

The CDF range is  $0 \leq N(a) \leq 1$  and provides the probability that an outcome is less than or equal to  $a$ . The PDF is simply the first derivative of the CDF.

We briefly identify several location statistics related to the normal distribution. The median is defined as the  $\widehat{x}$  such that  $\int_{-\infty}^{\widehat{x}}f(x)dx = \int_{\widehat{x}}^{+\infty}f(x)dx = \frac{1}{2}$  for any PDF  $f(x)$ . For the normal distribution, the median is equal to  $\mu$  (a constant). The mode is defined as the  $\widehat{x}$  such that  $\frac{df(x)}{dx} = 0$  and  $\frac{d^2f(x)}{dx^2} < 0$  for any PDF. For the normal distribution, the mode is also equal to  $\mu$ .

With statistical distributions, the  $n^{th}$  noncentral moment is defined as  $\mu_n'(x) = E(x^n)$  and the  $n^{th}$  central moment is defined as  $\mu_n(x) = E[(x - \mu)^n]$ . The first noncentral moment is the mean or

$$
M e a n = \mu_ {1} ^ {\prime} (x) = \mu . \tag {4.57}
$$

The mean is a constant and the first central moment is zero or  $\mu_1(x) = 0$ . The second central moment is the variance or

$$
V a r i a n c e = \operatorname {v a r} (x) = \mu_ {2} (x) = \sigma^ {2}. \tag {4.58}
$$

The variance is a constant and the second noncentral or raw moment is  $\mu_2'(x) = \mu^2 + \sigma^2$ . The third central moment is the skewness or

$$
\operatorname {S k e w n e s s} = \mu_ {3} (x) = 0. \tag {4.59}
$$

Skewness of zero implies a symmetric distribution. The third noncentral moment is  $\mu_3'(x) = \mu^3 + 3\mu \sigma^2$ . The fourth central moment is the kurtosis or

$$
\text {K u r t o s i s} = \mu_ {4} (x) = 3 \sigma^ {4}. \tag {4.60}
$$

Note that the fourth moment is positive and a function of variance. The fourth noncentral or raw moment is  $\mu_4'(x) = \mu^4 + 6\mu^2\sigma^2 + 3\sigma^4$ . Kurtosis is often normalized by the variance squared. Thus, the kurtosis of the normal distribution is 3 and is known as mesokurtic.

Figures 4.1a-h illustrate both the probability density function as well as the cumulative distribution function of the normal distribution applied to some financial instrument price. The following series of figures illustrates the effect of increases in the standard deviation because different financial instruments have different levels of standard deviation. One common challenge is misinterpreting high standard deviation instruments, particularly when applying the lognormal distribution, which we cover next.

We see from these graphs that with the normal distribution, there is a nonzero probability that the underlying instrument value can fall below zero. Financial derivative instruments can often themselves take on negative values. Negative value is very common for symmetric derivatives such as forwards, futures, and swaps as well as short positions in asymmetric derivatives such as options, swaptions, caps, and floors. For example, the short position for any option cannot be positive as it can only result in a future liability. A call option price may be 14, but to the writer it is a liability of 14 and hence has a negative value. Because common stock has limited liability, we expect the stock price to remain nonnegative. Limited liability can be viewed as a company obtaining a long put option contract with a zero strike price. Clearly, company assets can obtain a negative value, such as is the case with environmental damage or company products found to be carcinogenic. Again, more extensive details on the normal distribution are given in Chapter 5. To address some of these challenges, many financial models are built on the lognormal distribution.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/98d5b1107af5ef352f07a70e394608c3bf213f1183c8ecfa8619fd26742d7b78.jpg)  
FIGURE 4.1a Normal Probability Density Function  $(\mu = 0\%)$ $\sigma = 30\%$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/228fea22e7b64af18fcbf45dd93133266fa98abb5466a58878c5155b52df5f04.jpg)  
FIGURE 4.1b Normal Cumulative Distribution Function  $(\mu = 0\%)$ $\sigma = 30\%$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/1c928331891a6506a5792a75163147c551e8eeb46c394864d480df6bb4eb34c9.jpg)  
FIGURE 4.1c Normal Probability Density Function  $(\mu = 0\%)$ $\sigma = 80\%$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/e9fe7a80223e5944fc1b3bb2070f9b03000da1437a0ce0a7c3b46ac578c7a544.jpg)  
FIGURE 4.1d Normal Cumulative Distribution Function  $(\mu = 0\% ,\sigma = 80\%)$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/af8a2c74731b93e16ea2874058f02058f0142ba8a40f6ddbdee27f624ddd82e2.jpg)  
FIGURE 4.1e Normal Probability Density Function  $(\mu = 0\% ,\sigma = 130\%)$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/e4addb62589dbbe192338ee6a0c4b682c8d3eae53a364916ccad14f6ceb9b98e.jpg)  
FIGURE 4.1f Normal Cumulative Distribution Function  $(\mu = 0\%)$ $\sigma = 130\%$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/65f0a61a57a3dd998ab0aecb1a09838aae5d4e04c4798a4e50cd10e376fc4bc8.jpg)  
FIGURE 4.1g Normal Probability Density Function  $(\mu = 0\% ,\sigma = 800\%)$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/ca55fe42ee3967a899cb4d010618f2b74aa796c97a8c57168830c75efd0a36d3.jpg)  
FIGURE 4.1h Normal Cumulative Distribution Function  $(\mu = 0\% ,\sigma = 800\%)$

# 4.5.4 Lognormal Distribution

The lognormal distribution is related to the normal distribution in the following way: If  $y = \ln (x)$  is normally distributed,  $x$  is said to be lognormally distributed. It is an asymmetric two-parameter distribution again identified with the implied normal distribution's mean,  $\mu$ , and standard deviation,  $\sigma$ . The range for the mean is  $-\infty < \mu < +\infty$  and the range for the standard deviation is  $\sigma > 0$ . The range of a variable,  $x$ , that follows a lognormal distribution is  $0 < x < +\infty$ . Note that zero is not included. If  $x$  is said to have a lognormal distribution, then the PDF can be expressed as (where the Greek lambda,  $\lambda$ , here is not to be confused with the Poisson distribution parameter introduced previously):

$$
\lambda (x) = \frac {1}{x \sigma \sqrt {2 \pi}} e ^ {- \frac {\left[ \ln (x) - \mu \right] ^ {2}}{2 \sigma^ {2}}}. \tag {4.61}
$$

The CDF, assuming  $0 < a < +\infty$ , can be expressed as

$$
\Lambda (a) = \int_ {x = - \infty} ^ {a} \lambda (x) d x = \int_ {x = - \infty} ^ {a} \frac {1}{x \sigma \sqrt {2 \pi}} e ^ {- \frac {\left[ \ln (x) - \mu \right] ^ {2}}{2 \sigma^ {2}}} d x. \tag {4.62}
$$

Similar to the normal distribution, the CDF range is  $0 \leq \Lambda(a) \leq 1$  and provides the probability that an outcome is less than or equal to  $a$ .

We briefly identify several location statistics related to the lognormal distribution. The median for the lognormal distribution is

$$
\text {M e d i a n} = e ^ {\mu}. \tag {4.63}
$$

The mode is

$$
\text {M o d e} = e ^ {\mu - \sigma^ {2}}. \tag {4.64}
$$

Recall the first noncentral moment is the mean and can be expressed as

$$
M e a n = E (x) = \mu_ {1} ^ {\prime} (x) = e ^ {\mu + \frac {\sigma^ {2}}{2}} \sqrt {b ^ {2} - 4 a c}. \tag {4.65}
$$

The mean is a constant and the first central moment is zero or  $\mu_1(x) = 0$ . The second central moment is the variance or

$$
\operatorname {v a r} (x) = \mu_ {2} (x) = e ^ {2 \mu + \sigma^ {2}} (e ^ {\sigma^ {2}} - 1). \tag {4.66}
$$

The variance is a constant and the second noncentral moment is  $\mu_2'(x) = \mathrm{e}^{2(\mu +\sigma^2)}$ . The third central moment is the skewness or

$$
S k e w (x) = \mu_ {3} (x) = e ^ {3 \mu + \frac {3 \sigma^ {2}}{2}} (e ^ {\sigma^ {2}} - 1) ^ {2} (e ^ {\sigma^ {2}} + 2). \tag {4.67}
$$

The skewness of the lognormal distribution is positive, which implies an asymmetric distribution, specifically positive or right skewed. The third noncentral moment is  $\mu_3'(x) = e^{\frac{3}{2}\mu +\frac{3}{2}\sigma^2}$ . Similar to variance and covariance, skewness is difficult to interpret. Thus, skewness is often normalized in the following manner:

$$
\mathrm {N S k e w} \equiv \frac {\mu_ {3} ^ {\prime}}{\mathrm {V a r} ^ {2 / 3}} = (e ^ {\sigma^ {2}} - 1) ^ {2} (e ^ {\sigma^ {2}} + 2). \tag {4.68}
$$

The normalized skewness is an exponentially increasing function of the normal distribution variance. Symmetrical distributions, similar to the normal distribution, will have  $NSkew = 0$ . If  $NSkew > 0\$  as is the case for the lognormal distribution, then the mean is greater than the median and the median is greater than the mode. If  $NSkew < 0\$  as is common with empirical finance distributions, then we have mean  $<$  median  $<$  mode. There are, however, some rare exceptions to this pattern; see Stuart and Ord (1987: 107).

The fourth central moment is the kurtosis or

$$
K u r t o s i s (x) = \mu_ {4} (x) = e ^ {3 \mu + \frac {3 \sigma^ {2}}{2}} (e ^ {\sigma^ {2}} - 1) ^ {2} (e ^ {4 \sigma^ {2}} + 2 e ^ {3 \sigma^ {2}} + 3 e ^ {2 \sigma^ {2}} - 3). \qquad (4. 6 9)
$$

Note that the fourth moment is positive and a function of the variance. The fourth non-central moment is  $\mu_4'(x) = e^{4(\mu + 2\sigma^2)}$ . Kurtosis is often normalized by the variance squared. Thus, the normalized kurtosis of the lognormal distribution is

$$
N K u r t = \frac {\mu_ {4}}{V a r ^ {2}} = (e ^ {\sigma^ {2}} - 1) (e ^ {3 \sigma^ {2}} + 3 e ^ {2 \sigma^ {2}} + 6 e ^ {\sigma^ {2}} + 6). \tag {4.70}
$$

The kurtosis is an exponentially increasing function of the normal distribution variance. Recall that the normal distribution is mesokurtic, that is,  $NKurt = 3\$ . Because variance is always positive, for the lognormal distribution,  $NKurt > 3\$  and is known as leptokurtic. As an aside,  $NKurt < 3\$  is called platykurtic.

Before illustrating graphically the lognormal distribution, we establish the link between the normal distribution parameters,  $\mu$  and  $\sigma$ , and the expected value and standard deviation of the lognormally distributed variable. We make this link by illustrating with asset prices. Recall if variable  $x$  is distributed normal, denoted  $x \sim N(\mu, \sigma)$ , then variable  $y$  defined as  $y = \exp(x)$  is distributed lognormal, denoted  $x \sim \Lambda(\mu, \sigma)$ . In the context of rates of return, suppose  $S_T = S_t e^{R(T - t)}$ . If  $R \sim N(\mu, \sigma)$ , then we know

$$
S _ {T} \sim \Lambda \left[ \ln (S _ {t}) + \mu (T - t), \sigma \sqrt {T - t} \right].
$$

Thus,  $E(S_{T}) = S_{0}e^{\left(\mu +\frac{\sigma^{2}}{2}\right)(T - t)}$ ,  $\operatorname {var}(S_T) = S_0^2\left[e^{2(\mu +\sigma^2)(T - t)} - e^{(2\mu +\sigma^2)(T - t)}\right]$ , and  $SD(S_{T}) = \sqrt{S_{0}^{2}\left[e^{2(\mu + \sigma^{2})(T - t)} - e^{(2\mu + \sigma^{2})(T - t)}\right]}$ . It is important to note that in finance the normal distribution parameters are typically expressed in percentage ( $\mu$  and  $\sigma$  here), whereas the lognormal mean and standard deviation  $\mathrm{(E}(S_T)$  and  $\operatorname {var}(S_T)$  here) are typically expressed in currency units. Remember both distributions are two-parameter distributions. Often with both the lognormal and normal distributions, these two parameters are assumed to be the normal distribution's mean ( $\mu$ ) and standard deviation ( $\sigma$ ). One could just as easily represent the lognormal distribution parameters with the lognormal distribution's mean,  $E(S_{T})$ , and standard deviation,  $SD(S_{T})$ . For example, suppose the normal distribution's mean is  $\mu = 9.5\%$  and the standard deviation is  $\sigma = 38\%$ . If an

asset price is trading at 100 and suppose we have a one-year horizon, we can compute  $E(S_{T}) = 118.20$  and  $SD(S_{T}) = 46.59$  based on the previous equations. Thus, the mean and standard deviation of the lognormally distributed asset price is expressed in dollars or other currency units.

Alternatively, the normal distribution parameters can be expressed as a function of the lognormal distribution parameters or

$$
\begin{array}{l} \mu = \frac {\ln \left[ \frac {E (S _ {T})}{S _ {0}} \right]}{T - t} - \frac {\ln \left[ 1 + \frac {\operatorname {V a r} (S _ {T})}{E (\widetilde {S} _ {T}) ^ {2}} \right]}{2 (T - t)} \text {a n d} \\ \sigma^ {2} = \frac {\ln \left[ 1 + \frac {V a r (S _ {T})}{E (S _ {T}) ^ {2}} \right]}{T - t}. \\ \end{array}
$$

Figures 4.2a-h illustrate both the probability density function as well as the cumulative distribution function of the lognormal distribution applied to some financial instrument price. The following series of figures illustrates the effect of increases in the standard deviation because different financial instruments have different levels of standard deviation. With the lognormal distribution, the input parameters in finance are typically the mean and standard deviation of the continuously compounded rates of return. Thus, the parameters are expressed in percentage and not currency units.

We see from these graphs that with the lognormal distribution, there is no possibility that the underlying instrument value will fall to zero or below. Because common stock has limited liability, we expect the stock price to remain nonnegative, but we also expect that some stock prices will go to zero—an outcome not possible with the lognormal distribution. Based on the lognormal distribution, limited liability has no value. Thus, both the normal and lognormal distribution have strengths and weaknesses.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/3681e063b30a542dc72031b5fc46260c495b1d4af710730213a08ffafb868f4d.jpg)  
FIGURE 4.2a Lognormal Probability Density Function  $(\mu = 0\%)$ $\sigma = 30\%$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/5b57877be570fe4ef80e92ac89af7ac536c76e7bfead8580b36e73f8f5ed53c7.jpg)  
FIGURE 4.2b Lognormal Cumulative Distribution Function  $(\mu = 0\%)$ $\sigma = 30\%$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/63d0d2727bb996625f5ba9da25e19aab9bea2f89a8b7ff78f4fc7febfc9f8126.jpg)  
FIGURE 4.2c Lognormal Probability Density Function  $(\mu = 0\%)$ $\sigma = 80\%$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/9a73bf0f3ee1245d12155dc3a3087378b72dca9ccf49a5c4af4907e20c7b9aa3.jpg)  
FIGURE 4.2d Lognormal Cumulative Distribution Function  $(\mu = 0\%, \sigma = 80\%)$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/fde15b7a3df3658264275eba7403dd64244cee2eae23c97bc2d6c0f46882072c.jpg)  
FIGURE 4.2e Lognormal Probability Density Function  $(\mu = 0\%)$ $\sigma = 130\%$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/c4eaef7212ff33483de69725c2e2ba0994908ba8acbe750ed5a927f31a3a94cb.jpg)  
FIGURE 4.21 Lognormal Cumulative Distribution Function  $(\mu = 0\%)$ $\sigma = 130\%$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/b78cad3c59e726b376b68e1e167a7f8d7692ba5af56a869d420af240daec8a10.jpg)  
FIGURE 4.2g Lognormal Probability Density Function  $(\mu = 0\%)$ $\sigma = 800\%$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/53a67f9b411b86fa8855bf12ba17578a10819e12afea9499d3a161fea19807a7.jpg)  
FIGURE 4.2h Lognormal Cumulative Distribution Function  $(\mu = 0\%)$ $\sigma = 800\%$

# 4.6 RECAP AND PREVIEW

In this chapter we have provided a brief review of the foundations of probability theory, a subject widely used in understanding option valuation. We reviewed the concepts of expectation, variance, and covariance. We studied the rules for specifying these values in discrete and continuous time. We looked at the central limit theorem, the law of iterated expectations, and the law of total probability. We also examined the basic concepts behind the binomial, Poisson, normal, and lognormal distributions.

In Chapter 5, we will look more closely at the more useful probability distributions that have financial applications.

# QUESTIONS AND PROBLEMS

1 Based on in-depth research, you have estimated the return distribution of two stocks for five potential scenarios that are reflected in the following table.

<table><tr><td>Probability (%)</td><td>Stock 1 (%)</td><td>Stock 2 (%)</td></tr><tr><td>20</td><td>7</td><td>5</td></tr><tr><td>20</td><td>1</td><td>6</td></tr><tr><td>20</td><td>4</td><td>-3</td></tr><tr><td>20</td><td>4</td><td>12</td></tr><tr><td>20</td><td>-1</td><td>5</td></tr></table>

Based on this information, compute the means and standard deviations for each stock as well as the correlation coefficient.

2 Based on the information given in the previous problem, assume you are interested in a portfolio of  $50\%$  in stock 1 and  $50\%$  in stock 2. Compute the percentage marginal contribution to the risk of each stock.  
Suppose you are modeling an asset price with the binomial distribution where  $p = 55\%$  (probability of the asset going up over the next year). You are interested in the likelihood that the asset will be up for two out of the three years. Identify the number of ways that this outcome could occur as well as its likelihood.  
4 The normal distribution and lognormal distribution behave very differently as the standard deviation rises. Financial instruments with high standard deviations are very common. Complete the following table based on the mean and standard deviation of the underlying normal distribution.

<table><tr><td colspan="2">Input Normal</td><td colspan="3">Normal Distribution</td><td colspan="3">Lognormal Distribution</td></tr><tr><td>Mean (%)</td><td>Std. Dev. (%)</td><td>Mean</td><td>Median</td><td>Mode</td><td>Mean</td><td>Median</td><td>Mode</td></tr><tr><td>10</td><td>50</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>10</td><td>100</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>10</td><td>200</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>10</td><td>300</td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table>

5 Based on fundamental analysis, an analyst believes that a stock's annualized, continuously compounded mean rate of return is  $10\%$  and standard deviation is  $50\%$ . Further, the analyst is comfortable with assuming a normal distribution for these rates of return. If the current stock price is 50, identify the expected stock price and standard deviation of the stock price in 10 years. Derive the implied mean and standard deviation of the normally distributed rates of return and verify your answers are correct by using your results from computing the expected stock price and standard deviation of the stock price.

# NOTES

1. Those who are already well-versed in probability and statistics may benefit from an alternative perspective of finance and probability as a competitive game. See Shafer and Vovk (2001).  
2. It is interesting to note that these are marginal probabilities with respect to the outcomes,  $+2, 0, -2$ , but they are joint probabilities of the coin tosses themselves. For example, the marginal probability of an outcome of  $+2$  is  $\frac{1}{4}$  but this value is the joint probability of two heads,  $(\frac{1}{2})(\frac{1}{2}) = \frac{1}{2}$ .  
3. If we obtained a head on the first toss, we currently have a total of  $+1$ . Thus, there is a probability of  $\frac{1}{2}$  that we get another head, giving us a total of  $+2$ , and a probability of  $\frac{1}{2}$  that we get a tail, giving us a total of 0. There is zero probability that we end up with a total of 0, because we already have  $+1$ .
4. If we obtained a tail on the first toss, we currently have a total of  $-1$ . Thus, there is a probability of  $\frac{1}{2}$  that we get a head, giving us a total of 0, and a probability of  $\frac{1}{2}$  that we get another tail, giving us a total of  $-2$ . There is zero probability that we end up with a total of  $+2$ , because we already have  $-1$  and have only one more toss.  
5. In finance sometimes conditional expectations are written in the form  $\mathrm{E}(x_{t + j}|I_t)$ , meaning that the expectation of  $x$  at time  $t + j$  is based on the information set,  $I$ , available at time  $t$ .  
6. The standard normal distribution assumes a zero mean and standard deviation of 1. More extensive details will be given later.  
7. Note that because  $\operatorname{Pr}(x = 0) = 0$ , then  $\operatorname{Pr}(x \geq 0) = \operatorname{Pr}(x > 0)$ .  
8. Although  $f(x)$  is commonly used for the density function,  $F(x)$  is often used for the distribution function.  
9. The term mean is used somewhat more often to describe data drawn from samples as opposed to the concept of expected value, which is based on ex ante information.  
10. For example, a sine wave is a nonlinear relationship that tends to show zero covariance between say  $X$  and  $\sin(X)$ . Nonetheless, there is clearly a relationship. It is simply nonlinear.  
11. For example, if the distribution is normal, then we can say that the probability of being more than one standard deviation away from the mean, in each direction, is about 0.16, or 0.32 for both directions.  
12. The probability mass function is the function that yields the likelihood that a discrete variable exactly equals a particular value.

