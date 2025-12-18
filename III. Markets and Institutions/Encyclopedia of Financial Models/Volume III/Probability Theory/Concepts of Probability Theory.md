
# Concepts of Probability Theory

MARKUS HÖCHSTÖTTER, PhD

Assistant Professor, University of Karlsruhe

SVETLOZAR T. RACHEV, PhD, Dr Sci

Frey Family Foundation Chair-Professor, Department of Applied Mathematics and Statistics, Stony Brook University, and Chief Scientist, FinAnalytica

FRANK J. FABOZZI, PhD, CFA, CPA

Professor of Finance, EDHEC Business School

Abstract: Probability theory is the mathematical approach to formalizing the uncertainty of events. Even though a decision maker may not know which one of the set of possible events may finally occur, with probability theory, a decision maker has the means of providing each event with a certain probability. Furthermore, it provides the decision maker with the axioms to compute the probability of a composed event in a unique way. The rather formal environment of probability theory translates in a reasonable manner to the problems related to risk and uncertainty in finance such as, for example, the future price of a financial asset. Today, investors may be aware of the price of a certain asset, but they cannot say for sure what value it might have tomorrow. To make a prudent decision, investors need to assess the possible scenarios for tomorrow's price and assign to each scenario a probability of occurrence. Only then can investors reasonably determine whether the financial asset will satisfy an investment objective.

Probability theory serves as the quantification of risk in finance. To estimate probabilistic models, we have to gather and process empirical data. In this context, we need the tools provided by statistics. In this entry, we introduce the general concepts of probability theory.


# HISTORICAL DEVELOPMENT OF ALTERNATIVE APPROACHES TO PROBABILITY

Before we introduce the formal definitions, we provide a brief outline of the historical development of probability theory and the alternative approaches since probability is, by no means, unique in its interpretation. We will describe the two most common approaches: relative frequencies and axiomatic system.

# Probability as Relative Frequencies


The reasoning of von Mises and Reichenbach was that since extreme observations are unlikely given a reasonable sample size, the relative frequencies will portray the true probabilities with a high degree of accuracy. In other words, probability statements based on relative frequencies were justifiable since, in practice, highly unlikely events could be ruled out.

In the context of our dice example, they would consider unlikely that certain numbers appeared significantly more often than others if the series of repetitions is, say, 1,000. But still, who could guarantee that we do not accidentally end up throwing 300 1s, 300 2s, 400 3s, and nothing else?

The approach of von Mises becomes relevant, again, in the context of estimating and hypothesis testing. For now, however, we will not pay any further attention to it but turn to the alternative approach to probability theory.

# Axiomatic System

Introduced by Andrei N. Kolmogorov in 1933, the axiomatic system abstracted probability from relative frequencies as obtained from observations and instead treated probability as purely mathematical. The variables were no longer understood as the quantities that could be observed but rather as some theoretical entities "behind the scenes." Strict rules were set up that controlled the behavior of the variables with respect to their likelihood of assuming values from a predetermined set. So, for example, consider the price of a stock, say General Electric (GE). GE's stock price as a variable is not what you can observe but a theoretical quantity obeying a particular system of probabilities. What you observe is merely realizations of the stock price with no implication on the true probability of the values since the latter is given and does not change from sample to sample. The relative frequencies, however, are subject to change depending on the sample.


We illustrate the need for an axiomatic system due to the dependence of relative frequencies on samples using our dice example. Consider the chance of occurrence of the number 1. Based on intuition, since there are six different "numbers of dots" on a dice, the number 1 should have a chance of  $\frac{1}{6}$ , right? Suppose we obtain the information based on two samples of 12 repetitions each, that is,  $n_1 = n_2 = 12$ . In the following table, we report the absolute frequencies,  $a_i$ , representing how many times the individual numbers of dots 1 through 6 were observed.

<table><tr><td rowspan="2">Number of Dots</td><td colspan="2">Absolute Frequencies ai</td></tr><tr><td>Sample 1</td><td>Sample 2</td></tr><tr><td>1</td><td>4</td><td>1</td></tr><tr><td>2</td><td>1</td><td>1</td></tr><tr><td>3</td><td>3</td><td>1</td></tr><tr><td>4</td><td>0</td><td>1</td></tr><tr><td>5</td><td>1</td><td>1</td></tr><tr><td>6</td><td>3</td><td>7</td></tr><tr><td>Total</td><td>12</td><td>12</td></tr></table>

That is, in sample 1, 1 dot was observed 4 times while, in sample 2, 1 dot was observed only once, and so on.

From the above observations, we obtain the following relative frequencies

<table><tr><td rowspan="2">Number of Dots</td><td colspan="2">Relative Frequencies f(xi)</td></tr><tr><td>Sample 1</td><td>Sample 2</td></tr><tr><td>1</td><td>0.3333</td><td>0.0833</td></tr><tr><td>2</td><td>0.0833</td><td>0.0833</td></tr><tr><td>3</td><td>0.2500</td><td>0.0833</td></tr><tr><td>4</td><td>0.0000</td><td>0.0833</td></tr><tr><td>5</td><td>0.0833</td><td>0.0833</td></tr><tr><td>6</td><td>0.2500</td><td>0.5833</td></tr><tr><td>Total</td><td>1.0000</td><td>1.0000</td></tr></table>

That is, in sample 1, 1 dot was observed  $33.33\%$  of the time while in sample 2, 1 dot was observed  $8.33\%$  of the time, and so on. We see that both samples lead to completely different results about the relative frequencies for the number of dots. But, as we will see, the theoretical probability is  $1 / 6 = 0.1667$ , for each value 1 through 6. So, returning to our original question of the chance of occurrence of 1 dot, the answer is still  $1 / 6 = 0.1667$ .


In finance, the problem arising with this concept of probability is that, despite the knowledge of the axiomatic system, we do not know for sure what the theoretical probability is for each value. We can only obtain a certain degree of certainty as to what it approximately might be. This insight must be gained from estimation based on samples and, thus, from the related relative frequencies. So, it might appear reasonable to use as many observations as possible. However, even if we try to counteract the sample-dependence of relative frequencies by using a large number of observations, there might be a change in the underlying probabilities exerting additional influence on the sample outcome. For example, during the period of a bull market, the probabilities associated with an upward movement of some stock price might be higher than under a bear market scenario.

Despite this shortcoming, the concept of probability as an abstract quantity as formulated by Kolmogorov (1933) has become the standard in probability theory.

# SET OPERATIONS AND PRELIMINARIES

Before proceeding to the formal definition of probability, randomness, and random variables we need to introduce some terminology.

# Set Operations

A set is a combination of elements. Usually, we denote a set by some capital (uppercase) letter, for example  $S$ , while the elements are denoted by lowercase letters such as  $a, b, c, \ldots$  or  $a_1, a_2, \ldots$ . To indicate that a set  $S$  consists of exactly the elements  $a, b, c$ , we write  $S = \{a, b, c\}$ . If we want to say that element  $a$  belongs to  $S$ , the notation used is that  $a \in S$  where  $\in$  means "belongs to." If, instead,  $a$  does not belong to  $S$ , then the notation used is  $a \notin S$  where  $\notin$  means "does not belong to."


A type of set such as  $S = \{a, b, c\}$  is said to be countable since we can actually count the individual elements  $a, b,$  and  $c$ . A set might also consist of all real numbers inside of and including some bounds, say  $a$  and  $b$ . Then, the set is equal to the interval from  $a$  to  $b$ , which would be expressed in mathematical notation as  $S = [a, b]$ . If either one bound or both do not belong to the set, then this would be written as either  $S = (a, b]$ ,  $S = [a, b)$ , or  $S = (a, b)$ , respectively, where the parentheses denote that the value is excluded. An interval is an uncountable set since, in contrast to a countable set  $S = \{a, b, c\}$ , we cannot count the elements of an interval.

We now present the operators used in the context of sets. The first is equality denoted by  $=$  and intuitively stating that two sets are equal, that is,  $S_{1} = S_{2}$ , if they consist of the same elements. If a set  $S$  consists of no elements, it is referred to as an empty set and is denoted by  $S = \emptyset$ . If the elements of  $S_{1}$  are all contained in  $S_{2}$ , the notation used is  $S_{1} \subset S_{2}$  or  $S_{1} \subseteq S_{2}$ . In the first case,  $S_{2}$  also contains additional elements not in  $S_{1}$  while, in the second case, the sets might also be equal. For example, let  $S_{1} = \{a,b\}$  and  $S_{2} = \{a,b,c\}$ , then  $S_{1} \subset S_{2}$ . The operator  $\subseteq$  would indicate that  $S_{2}$  consists of, at least,  $a$  and  $b$ . Or, let  $M_{1} = [0,1]$  and  $M_{2} = [0.5,1]$ , then  $M_{2} \subset M_{1}$ .

If we want to join a couple of sets, we use the union operator denoted by  $\cup$ . For example, let  $S_{1} = \{a,b\}$  and  $S_{2} = \{b,c,d\}$ , then the union would be  $S_{1} \cup S_{2} = \{a,b,c,d\}$ . Or, let  $M_{1} = [0,1]$  and  $M_{2} = [0.5,1]$ , then  $M_{2} \cup M_{1} = [0,1] = M_{1}$ . If we join  $n$  sets  $S_{1}, S_{2}, \ldots, S_{n}$  with  $n \geq 2$ , we denote the union by  $\cup_{i=1}^{n} S_{i}$

The opposite operator to the union is the difference denoted by the  $"\backslash "$  symbol. If we take the difference between set  $S_{1}$  and set  $S_{2}$ , that is,  $S_{1} \backslash S_{2}$ , we discard from  $S_{1}$  all the elements that are common to both  $S_{1}$  and set  $S_{2}$ . For example, let  $S_{1} = \{a,b\}$  and  $S_{2} = \{b,c,d\}$ , then  $S_{1} \backslash S_{2} = \{a\}$ .

To indicate that we want to single out elements that are contained in several sets simul taneously, then we use the intersection operator  $\cap$ . For example, with the previous sets, the intersection would be  $S_{1} \cap S_{2} = \{b\}$ . Or, let  $M_{1} = [0,1]$  and  $M_{2} = [0.5,1]$ , then  $M_{1} \cap M_{2} = [0.5,1] = M_{2}$ . Instead of the  $\cap$  symbol, one sometimes simply writes  $S_{1}S_{2}$  to indicate intersection.


If two sets contain no common elements (i.e., the intersection is the empty set), then the sets are said to be pairwise disjoint. For example, the sets  $S_{1} = \{a,b\}$  and  $S_{2} = \{c,d\}$  are pairwise disjoint since  $S_{1} \cap S_{2} = \emptyset$ . Or, let  $M_{1} = [0,0.5)$  and  $M_{2} = [0.5,1]$ , then  $M_{1} \cap M_{2} = \emptyset$ . If we intersect  $n$  sets  $S_{1}, S_{2}, \ldots, S_{n}$  with  $n \geq 2$ , we denote the intersection by  $\cap_{i=1}^{n} S_{i}$ .

The complement to some set  $S$  is denoted by  $\overline{S}$ . It is defined as  $S \cap \overline{S} = \emptyset$  and  $S \cup \overline{S} = \Omega$ . That is, the complement  $\overline{S}$  is the remainder of  $\Omega$  that is not contained in  $S$ .

# Right-Continuous and Non-decreasing Functions

Next we introduce two concepts of functions that should be understood in order to appreciate probability theory: right-continuous function and non-decreasing function.

A function  $f$  is right-continuous at  $\tilde{x}$  if the limit from the right of the function values coincides with the actual value of  $f$  at  $\tilde{x}$ . Formally, that is  $\lim_{X > \tilde{X}} f(x) = f(\tilde{x})$ . We illustrate this in Figure 1. At the abscissae  $x_1$  and  $x_2$ , the function  $f$  jumps to  $f(x_1)$  and  $f(x_2)$  respectively. After each jump, the function remains at the new level for some time. Hence, approaching  $x_1$  from the right, that is, for higher  $x$ -values, the function  $f$  approaches  $f(x_1)$  smoothly. This is not the case when approaching  $x_1$  from the left since  $f$  jumps at  $x_1$  and, hence, deviates from the left-hand limit. The same reasoning applies to  $f$  at abscissa  $x_2$ . A function is said to be a right-continuous function if it is right-continuous at every value on the  $x$ -axis.

A function  $f$  is said to be a non-decreasing function if it never assumes a value smaller than any value to the left. We demonstrate this using Figure 2. We see that while, in the different sections

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/6bd0335633314f14ab6559a7e3df3acac4c159d028047d27857684006d86ed53.jpg)
Figure 1 Demonstration of Right-Continuity of Some Hypothetical Function  $f$  at Values  $x_{1}$  and  $x_{2}$

A, B, and C,  $f$  might grow at different rates, it never decreases. Even for  $x$ -values in section B,  $f$  has zero and thus a nonnegative slope.

# Outcome, Space, and Events

Before we dive into the theory, we will use examples that help illustrate the concept be hind the definitions that follow later in this entry.


Let us first consider again the number of dots of a dice. If we throw it once, we observe a certain value, that is, a realization of the abstract number of dots, say 4. This is one particular outcome of the random experiment. We will denote the outcomes by  $\omega$  and a particular outcome  $i$  will be denoted by  $\omega_{\mathrm{i}}$ . We might just as well have realized 2, for example, which would represent another outcome. All feasible outcomes, in this experiment, are given by

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/d0540d81d05597e7a085966c6ad19f6c9b3a09d212c42c71e7cd980c4f3a5be7.jpg)
Figure 2 Hypothetical Non-decreasing Function  $f$


$$
\omega_ {1} = 1 \quad \omega_ {2} = 2 \quad \omega_ {3} = 3 \quad \omega_ {4} = 4 \quad \omega_ {5} = 5 \quad \omega_ {6} = 6
$$

The set of all feasible outcomes is called space and is denoted by  $\Omega$ . In our example,  $\Omega = \{\omega_1, \omega_2, \omega_3, \omega_4, \omega_5, \omega_6\}$ .

Suppose that we are not interested in the exact number of points but care about whether we obtain an odd or an even number, instead. That is, we want to know whether the outcome is from  $A = \{\omega_1, \omega_3, \omega_5\}$  that is, the set of all odd numbers—or  $B = \{\omega_2, \omega_4, \omega_6\}$  the set of all even numbers. The sets  $A$  and  $B$  are both contained in  $\Omega$ ; that is, both sets are subsets of  $\Omega$ . Any subsets of  $\Omega$  are called events. So, we are interested in the events "odd" and "even" number of dots. When individual outcomes are treated as events, they are sometimes referred to as elementary events or atoms.

All possible subsets of  $\Omega$  are given by the so-called power set  $2^{\Omega}$  of  $\Omega$ . A power set of  $\Omega$  is a set containing all possible subsets of  $\Omega$  including the empty set  $\varnothing$  and  $\Omega$ , itself.

For our dice example, the power set is given in Table 1. With the aid of this power set, we are able to describe all possible events such as, for example, the number of dots less than 3 (i.e.,  $\{\omega_1,\omega_2\}$ ) or the number of dots either 1 or greater than or equal to 4 (i.e.,  $\{\omega_1,\omega_4,\omega_5,\omega_6\}$ ).

The power set has an additional pleasant feature. It contains any union of arbitrarily many events as well as any intersection of arbitrarily many events. Because of this, we say that  $2^{\Omega}$  is closed under countable unions and closed under countable intersections. Unions are employed to express that at least one of the events has to occur. We use intersections when we want to express that the events have to occur simultaneously. The power set also contains the complements to all events.

As we will later see, all these properties of the power set are features of a  $\sigma$ -algebra (in words: sigma-algebra), often denoted by  $\mathbb{A}$ .

Now consider an example where the space  $\Omega$  is no longer countable. Suppose that we are analyzing the daily logarithmic returns for a common stock or common stock index. Theoretically, any real number is a feasible outcome for a particular day's return. So, events are characterized by singular values as well as closed or open intervals on the real line. For example, we might be interested in the event  $E$  that the S&P 500 stock index return is "at least  $1\%$ ." Using the notation introduced earlier, this would be expressed as the half-open interval  $E = [0.01, \infty)$ . This event consists of the uncountable union of all outcomes between 0.01 and  $\infty$ . Now, as the sets containing all feasible events, we might take, again, the power set of the real numbers, that is,  $2^{\Omega}$  with  $\Omega = (-\infty, \infty) = \mathbb{R}$ . But, for theoretical reasons

Table 1 The Power Set of the Example Number of Dots of a Dice

<table><tr><td>2Ω = {∅, {ω1}, {ω2}, {ω3}, {ω4}, {ω5}, {ω6}, {ω2, ω3}, {ω2, ω4}, {ω2, ω5}, {ω2, ω6}, ...</td></tr><tr><td>{ω3, ω4}, {ω3, ω5}, {ω3, ω6}, {ω4, ω5}, {ω4, ω6}, {ω5, ω6}, {ω1, ω2, ω3},</td></tr><tr><td>{ω1, ω2, ω4}, {ω1, ω2, ω5}, {ω1, ω2, ω6}, {ω1, ω3, ω4}, {ω1, ω3, ω5}, {ω1, ω3, ω6},</td></tr><tr><td>{ω1, ω4, ω5}, {ω1, ω4, ω6}, {ω1, ω5, ω6}, {ω2, ω3, ω4}, {ω2, ω3, ω5}, {ω2, ω3, ω6}, ...</td></tr><tr><td>{ω2, ω4, ω5}, {ω2, ω4, ω6}, {ω2, ω5, ω6}, {ω3, ω4, ω5}, {ω3, ω4, ω6}, {ω3, ω5, ω6},</td></tr><tr><td>{ω4, ω5, ω6}, {ω1, ω2, ω3, ω4}, {ω1, ω2, ω3, ω5}, {ω1, ω2, ω3, ω6}, {ω1, ω2, ω4, ω5},</td></tr><tr><td>{ω1, ω2, ω4, ω6}, {ω1, ω2, ω5, ω6}, {ω1, ω3, ω4, ω5}, {ω1, ω3, ω4, ω6},</td></tr><tr><td>{ω1, ω3, ω5, ω6}, {ω1, ω4, ω5, ω6}, {ω2, ω3, ω4, ω5}, {ω2, ω3, ω4, ω6},</td></tr><tr><td>{ω2, ω3, ω5, ω6}, {ω2, ω4, ω5, ω6}, {ω3, ω4, ω5, ω6}, {ω1, ω2, ω3, ω4, ω5},</td></tr><tr><td>{ω1, ω2, ω3, ω4, ω6}, {ω1, ω2, ω3, ω5, ω6}, {ω1, ω2, ω4, ω5, ω6},</td></tr><tr><td>{ω1, ω3, ω4, ω5, ω6}, {ω1, ω3, ω4, ω5, ω6}, Ω}</td></tr></table> beyond the scope of this entry, that might cause trouble.

Note: The notation  $\{\omega_{i}\}$  for  $i = 1,2,\ldots ,6$  indicates that the outcomes are treated as events.


Instead, we take a different approach. To design our set of events of the uncountable space  $\Omega$ , we begin with the inclusion of the events "any real number," which is the space  $\Omega$ , itself, and "no number at all," which is the empty set  $\varnothing$ . Next, we include all events of the form "less than or equal to  $a$ ," for any real number  $a$ , that is, we consider all half-open intervals  $(- \infty, a]$ , for any  $a \in \mathbb{R}$ . Now, for each of these  $(- \infty, a]$ , we add its complement  $\overline{(-\infty, a]} = \Omega \setminus (-\infty, a] = (a, \infty)$ , which expresses the event "greater than  $a$ ." So far, our set of events contains  $\varnothing$ ,  $\Omega$ , all sets  $(-\infty, a]$ , and all the sets  $(a, \infty)$ . Furthermore, we include all possible unions and intersections of everything already in the set of events as well as of the resulting unions and intersections themselves. By doing this, we guarantee that any event of practical relevance of an uncountable space is considered by our set of events.

With this procedure, we construct the Borel  $\sigma$ -algebra,  $\mathbb{B}$ . This is the collection of events we will use any time we deal with real numbers.

The events from the respective  $\sigma$ -algebra of the two examples can be assigned probabilities in a unique way, as we will see.

# The Measurable Space

Let us now express the ideas from the previous examples in a formal way. To describe a random experiment, we need to formulate

1. Outcomes  $\omega$
2. Space  $\Omega$
3.  $\sigma$ -algebra  $\mathbb{A}$

Definition 1—Space: The space  $\Omega$  contains all outcomes. Depending on the outcomes  $\omega$ , the space  $\Omega$  is either countable or uncountable.

Definition 2-  $\sigma$  -algebra: The  $\sigma$  -algebra  $\mathbb{A}$  is the collection of events (subsets of  $\Omega$  ) with the following properties: a.  $\Omega \in \mathbb{A}$  and  $\varnothing \in \mathbb{A}$

b. If event  $E \in \mathbb{A}$  then  $\bar{E} \in \mathbb{A}$ .

c. If the countable sequence of events  $E_{1}$ ,  $E_{2}, E_{3}, \ldots \in \mathbb{A}$  then  $\cup_{i=1}^{\infty} E_{i} \in \mathbb{A}$  and  $\cap_{i=1}^{\infty} E_{i} \in \mathbb{A}$ .

Definition 3—Borel  $\sigma$ -algebra: The  $\sigma$ -algebra formed by  $\varnothing, \Omega = \mathbb{R}$ , intervals  $(\infty, a]$  for some real  $a$ , and countable unions and intersections of these intervals is called a Borel  $\sigma$ -algebra and denoted by  $\mathbb{B}$ .

Note that we can have several  $\sigma$ -algebrae for some space  $\Omega$ . Depending on the events we are interested in, we can think of a  $\sigma$ -algebra  $\mathbb{A}$  that contains fewer elements than  $2^{\Omega}$  (for countable  $\Omega$ ), or the Borel  $\sigma$ -algebra (for uncountable  $\Omega$ ). For example, we might think of  $\mathbb{A} = \{\varnothing, \Omega\}$ , that is, we only want to know whether any outcome occurs or nothing at all. It is easy to verify that this simple  $\mathbb{A}$  fulfills all requirements a, b, and c of Definition 2.

Definition 4—Measurable space: The tuple  $(\Omega, \mathbb{A})$  with  $\mathbb{A}$  being a  $\sigma$ -algebra of  $\Omega$  is a measurable space.

A tuple is the combination of several components. For example, when we combine two values  $a$  and  $b$ , the resulting tuple is  $(a,b)$ , which we know to be a pair. If we combine three values  $a$ ,  $b$ , and  $c$ , the resulting tuple  $(a,b,c)$  is known as a triplet.

Given a measurable space, we have enough to describe a random experiment. All that is left is to assign probabilities to the individual events. We will do so next.

# PROBABILITY MEASURE

We start with a brief discussion of what we expect of a probability or probability measure; that is, the following properties:

Property 1: A probability measure should assign each event  $E$  from our  $\sigma$ -algebra a nonnegative value corresponding to the chance of this event occurring.

Property 2: The chance that the empty set occurs should be zero since, by definition, it is the improbable event of "no value."

Property 3: The event that "any value" might occur (i.e.,  $\Omega$ ) should be 1 or, equivalently,  $100\%$  since some outcome has to be observable.

Property 4: If we have two or more events that have nothing to do with one another that are pairwise disjoint or mutually exclusive, and create a new event by uniting them, the probability of the resulting union should equal the sum of the probabilities of the individual events.

To illustrate, let:

- The first event state that the S&P 500 log return is "maximally  $5\%$ ," that is,  $E_{1} = (-\infty, 0.05]$ .
- The second event state that the S&P 500 log return is "at least  $10\%$ ," that is,  $E_{2} = [0.10,\infty)$ .

Then, the probability of the S&P log return either being no greater than  $5\%$  or no less than  $10\%$  should be equal to the probability of  $E_{1}$  plus the probability of  $E_{2}$ .

Let's proceed a little more formally. Let  $(\Omega, \mathbb{A})$  be a measurable space. Moreover, consider the following definition.

Definition 5—Probability measure: A function  $P$  on the  $\sigma$ -algebra  $\mathbb{A}$  of  $\Omega$  is called a probability measure if it satisfies: a.  $P(\varnothing) = 0$  and  $P(\Omega) = 1$

b. For a countable sequence of events  $E_{1}$ ,  $E_{2},\ldots$  in  $\mathbb{A}$  that are pairwise disjoint (i.e.,  $E_{i}\cap E_{j} = \emptyset \dots ,i\neq j$ ), we have

$$
P\left(\bigcup_{i = 1}^{\infty}E_{i}\right) = \sum_{i = 1}^{\infty}P(E_{i})
$$

This property is referred to as countable additivity.

Then we have everything we need to model randomness and chance, that is, we have the space  $\Omega$ , the  $\sigma$ -algebra  $\mathbb{A}$  of  $\Omega$ , and the probability measure  $P$ . This triplet  $(\Omega, \mathbb{A}, P)$  forms the so-called probability space.

At this point, we introduce the notion of  $P$ -almost surely (P-a.s.) occurring events. It is imaginable that even though  $P(\Omega) = 1$ , not all of the outcomes in  $\Omega$  contribute positive prob ability. The entire positive probability may be contained in a subset of  $\Omega$  while the remaining outcomes form the unlikely event with respect to the probability measure  $P$ . The event accounting for the entire positive probability with respect to  $P$  is called the certain event with respect to  $P$ . If we denote this event by  $E_{as}$ , then we have  $P(E_{as}) = 1$  yielding  $P(\Omega \backslash E_{as}) = 0$ .


There are certain peculiarities of  $P$  depending on whether  $\Omega$  is countable or not. It is essential to analyze these two alternatives since this distinction has important implications for the determination of the probability of certain events. Here is why.

Suppose, first, that  $\Omega$  is countable. Then, we are able to assign the event  $\{\omega_i\}$  associated with an individual outcome,  $\omega_{i}$ , a nonnegative probability  $p_i = P(\{\omega_i\})$ , for all  $\omega_{i}\in \Omega$ . Moreover, the probability of any event  $E$  in the  $\sigma$ -algebra  $\mathbb{A}$  can be computed by adding the probabilities of all outcomes associated with  $E$ . That is,

$$
P (E) = \sum_ {\omega_ {i} \in E} p _ {i}
$$

In particular, we have

$$
P (\Omega) = \sum_ {\omega_ {i} \in \Omega} p _ {i} = 1
$$

Let us resume the six-sided dice tossing experiment. The probability of each number of dots 1 through 6 is  $1/6$  or formally,

$$
P (\{\omega_ {1} \}) = P (\{\omega_ {2} \}) = \dots = P (\{\omega_ {6} \}) = 1 / 6
$$ or equivalently,


$$ p _ {1} = p _ {2} = \dots = p _ {6} = 1 / 6
$$

Suppose, instead, we have  $\Omega = \mathbb{R}$ . That is,  $\Omega$  is uncountable and our  $\sigma$ -algebra is given by the Borel  $\sigma$ -algebra,  $\mathbb{B}$ . To give the probability of the events  $E$  in  $\mathbb{B}$ , we need an additional device, given in the next definition.

Definition 6—Distribution function: A function  $F$  is a distribution function of the probability measure  $P$  if it satisfies the following properties: a.  $F$  is right-continuous.

b.  $F$  is non-decreasing.

c.  $\lim_{x\to -\infty}F(x) = 0$  and  $\lim_{x\to \infty}F(x) = 1$ d. For any  $x\in \mathbb{R}$  , we have  $F(x) = P((-\infty ,x])$

It follows that, for any interval  $(x,y]$ , we compute the associated probability according to

$$
F (y) - F (x) = P ((x, y ]) \tag {1}
$$

So, in this case we have a function  $F$  uniquely related to  $P$  from which we derive the probability of any event in  $\mathbb{B}$ . Note that in general  $F$  is only right-continuous, that is the limit of  $F(y)$ , when  $y > x$  and  $y \to x$ , is exactly  $F(x)$ . At point  $x$ , we might have a jump of the distribution  $F(x)$ . The size of this jump equals  $P(\{x\})$ . This distribution function can be interpreted in a similar way to the relative empirical cumulative distribution function. That is, we state the probability of our quantity of interest being less than or equal to  $x$ .

To illustrate, the probability of the S&P 500 log return being at most  $1\%$ ,  $E = (-\infty, 0.01]$ , is given by  $F^{\mathrm{S&P}500}(0.01) = P((- \infty, 0.01])$ , while the probability of it being between  $-1\%$  and  $1\%$  is

$$
F ^ {\mathrm {S} \& \mathrm {P} 5 0 0} (0. 0 1) - F ^ {\mathrm {S} \& \mathrm {P} 5 0 0} (- 0. 0 1) = P ((- 0. 0 1, 0. 0 1 ])
$$

# RANDOM VARIABLE

Now the time has come to introduce the concept of a random variable. When we refer to some quantity as being a random variable, we want to express that its value is subject to uncertainty, or randomness. Technically, the variable of interest is said to be stochastic. In contrast to a deterministic quantity whose value can be determined with certainty, the value of a random variable is not known until we can observe a realized outcome of the random experiment. However, since we know the probability space  $(\Omega, \mathbb{A}, P)$ , we are aware of the possible values it can assume.

One way we can think of a random variable denoted by  $X$  is as follows. Suppose we have a random experiment where some outcome  $\omega$  from the space  $\Omega$  occurs. Then, depending on this  $\omega$ , the random variable  $X$  assumes some value  $X(\omega) = x$ , where  $\omega$  can be understood as input to  $X$ . What we observe, finally, is the value  $x$ , which is only a consequence of the outcome  $\omega$  of the underlying random experiment.


For example, we can think of the price of a 30-year Treasury bond as a random variable assuming values at random. However, expressed in a somewhat simple fashion, the 30-year Treasury bond depends completely on the prevailing market interest rate (or yield) and, hence, is a function of it. So, the underlying random experiment concerns the prevailing market interest rate with some outcome  $\omega$  while the price of the Treasury bond, in turn, is merely a function of  $\omega$ .

Consequently, a random variable is a function that is completely deterministic and depends on the outcome  $\omega$  of some random experiment. In most applications, random variables have values that are real numbers.

So, we understand random variables as functions from some space into an image or state space. We need to become a little more formal at this point. To proceed, we will introduce a certain type of function, the measurable function, in the following

Definition 7—Measurable function: Let  $(\Omega, \mathbb{A})$  and  $(\Omega', \mathbb{A}')$  be two measurable spaces. That is  $\Omega, \Omega'$  are spaces and  $\mathbb{A}, \mathbb{A}'$  their  $\sigma$ -algebrae, respectively. A function  $X: \Omega \to \Omega'$  is  $\mathbb{A}-\mathbb{A}'$ -measurable if, for any set  $E' \in \mathbb{A}'$ , we have

$$
X ^ {- 1} (E ^ {\prime}) \in \mathbb {A}
$$

In words, this means that a function from one space to another is measurable if the origin with respect to this function of each image in the  $\sigma$ -algebra of the state space can be traced in the  $\sigma$ -algebra of the domain space. Instead of  $A - A'$ -measurable, we will, henceforth, use simply measurable since, in our statements, it is clear which  $\sigma$ -algebrae are being referred to.

We illustrate this in Figure 3. Function  $X$  creates images in  $\Omega'$  by mapping outcomes  $\omega$  from

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/f56b2146-2a3e-454e-b6f0-d79cc2db7528/f89d1f932afa6b84d8ea4bc190e0c7d75378c9970e4b6d1de12f5e8b16f9a58c.jpg)
Figure 3 Relationship between Image  $E'$  and  $X^{-1}(E')$  through the Measurable Function  $X$

$\Omega$  with values  $X(\omega) = x$  in  $\Omega^{\prime}$ . In reverse fashion, for each event  $E^{\prime}$  in the state space with  $\sigma$ -algebra  $\mathbb{A}^{\prime}$ ,  $X^{-1}$  finds the corresponding origin of  $E^{\prime}$  in  $\sigma$ -algebra  $\mathbb{A}$  of the probability space.

Now, we define a random variable  $X$  as a measurable function. That means for each event in the state space  $\sigma$ -algebra,  $\mathbb{A}^{\prime}$ , we have a corresponding event in the  $\sigma$ -algebra of the domain space,  $\mathbb{A}$ .

To illustrate this, let us consider the example with the dice. Now we will treat the "number of points" as a random variable  $X$ . The possible outcome values of  $X$  are given by the state space  $\Omega'$ , namely,  $\Omega' = \{1, 2, 3, 4, 5, 6\}$ . The origin or domain space is given by the set of outcomes  $\Omega = \{\omega_1, \omega_2, \omega_3, \omega_4, \omega_5, \omega_6\}$ . Now, we can think of our random variable  $X$  as the function  $X: \Omega \to \Omega'$  with the particular map  $X(\omega_i) = i$  with  $i = 1, 2, \ldots, 6$ .

# Random Variables on a Countable Space

We will distinguish between random variables on a countable space and on an uncountable space. We begin with the countable case.

The random variable  $X$  is a function mapping the countable space  $\Omega$  into the state space  $\Omega'$ . The state space  $\Omega'$  contains all outcomes or values that  $X$  can obtain. Thus, all outcomes in  $\Omega'$  are countable images of the outcomes  $\omega$  in  $\Omega$ . Between the elements of the two spaces, we have the following relationship.

Let  $x$  be some outcome value of  $X$  in  $\Omega^{\prime}$ . Then, the corresponding outcomes from the domain space  $\Omega$  are determined by the set

$$
X ^ {- 1} (\{x \}) = \{\omega : X (\omega) = x \}
$$

In words, we look for all outcomes  $\omega$  that are mapped to the outcome value  $x$ .

For events, in general, we have the relationship

$$
X ^ {- 1} (E ^ {\prime}) = \{\omega : X (\omega) \in E ^ {\prime} \}
$$ which is the set of all outcomes  $\omega$  in the domain space that are mapped by  $X$  to the event  $E^{\prime}$  in the state space. That leads us to the following definition:


Definition 8—Random variable on a countable space: Let  $(\Omega, \mathbb{A})$  and  $(\Omega', \mathbb{A}')$  be two measurable spaces with countable  $\Omega$  and  $\Omega'$ . Then the mapping  $X: \Omega \to \Omega'$  is a random variable on a countable space if, for any event  $E' \in \mathbb{A}'$ composed of outcomes  $x \in \Omega'$ , we have


$$
\begin{array}{l} P ^ {X} \left(E ^ {\prime}\right) = P \left(\left\{\omega : X (\omega) \in E ^ {\prime} \right\}\right) = P \left(X ^ {- 1} \left(E ^ {\prime}\right)\right) \\ = P \left(X \in E ^ {\prime}\right) \tag {2} \\ \end{array}
$$

We can illustrate this with the following example from finance referred to as the "binomial stock price model." The random variable of interest will be the price of some stock. We will denote the price of the stock by  $S$ . Suppose at the beginning of period  $t$ , the price of the stock is  $\$20$  (i.e.,  $S_{t} = \$20$ ). At the beginning of the following period,  $t + 1$ , the stock price is either  $S_{t+1} = \$18$  or  $S_{t+1} = \$22$ . We model this in the following way.

Let:

-  $(\Omega, \mathbb{A})$  and  $(\Omega', \mathbb{A}')$  be two measurable spaces with  $\Omega' = \{\$18, $22\}$  (i.e., the state space of the period  $t + 1$  stock price) and  $\mathbb{A}$  (i.e., the corresponding  $\sigma$ -algebra of all events with respect to the stock price in  $t + 1$ ).
-  $\Omega$  be the space consisting of the outcomes of some random experiment completely influencing the  $t + 1$  stock price.
-  $\mathbb{A}$  be the corresponding  $\sigma$ -algebra of  $\Omega$  with all events in the origin space.

Now, we can determine the origin of the event that

$$
S _ {t + 1} = \$ 18 \text {b y} E _ {\text {d o w n}} = \{\omega : S (\omega) = \$ 1 8 \}
$$ and


$$
S _ {t + 1} = \mathbb {S} 2 2 \text {b y} E _ {\mathrm {u p}} = \{\omega : S (\omega) = \mathbb {S} 2 2 \}
$$

Thus, we have partitioned  $\Omega$  into the two events,  $E_{\mathrm{down}}$  and  $E_{\mathrm{up}}$ , related to the two period  $t + 1$  stock prices. With the probability measure  $P$  on  $\Omega$ , we have the probability space  $(\Omega, \mathbb{A}, P)$ . Consequently, due to equation (2), we are able to compute the probability  $P^{S}(\$18) = P(E_{\mathrm{down}})$  and  $P^{S}(\$22) = P(E_{\mathrm{up}})$ , respectively.

# Random Variables on an Uncountable Space

Now let's look at the case when the probability space  $(\Omega, \mathbb{A}, P)$  is no longer countable. Recall the particular way in which events are assigned probabilities in this case.


While for a countable space any outcome  $\omega$  can have positive probability, that is,  $p_{\omega} > 0$ , this is not the case for individual outcomes of an uncountable space. On an uncountable space, we can have the case that only events associated with intervals have positive probability. These probabilities are determined by the distribution function  $F(x) = P(X < x) = P(X \leq x)$  according to equation (1).

This brings us to the following definition:

Definition 9—Random variable on a general possibly uncountable space: Let  $(\Omega, \mathbb{A})$  and  $(\Omega', \mathbb{A}')$  be two measurable spaces with, at least,  $\Omega$  uncountable. The map  $X \colon \Omega \to \Omega'$  is a random variable on the uncountable space  $(\Omega, \mathbb{A}, P)$  if it is measurable. That is, if, for any  $E' \in \mathbb{A}'$ , we have

$$
X ^ {- 1} (E ^ {\prime}) \in \mathbb {A}
$$ induce probability from  $(\Omega, \mathbb{A}, P)$  on  $(\Omega', \mathbb{A}')$  by


$$
\begin{array}{l} P ^ {X} (E ^ {\prime}) = p (\{\omega : X (\omega) \in E ^ {\prime} \}) = P (X ^ {- 1} (E ^ {\prime})) \\ = P (X \in E ^ {\prime}) \\ \end{array}
$$

We call this the probability law or distribution of  $X$ . Typically, the probability of  $X \in E'$  is written using the following notation:

$$
P ^ {X} (E ^ {\prime}) = P (X \in E ^ {\prime})
$$

Very often, we have the random variable  $X$  assume values that are real numbers (i.e.,  $\Omega' = \mathbb{R}$  and  $\mathbb{B}' = \mathbb{B}$ ). Then, the events in the state space are characterized by countable unions and intersections of the intervals  $(-\infty, a]$  corresponding to the events  $\{X \leq a\}$ , for real numbers  $a$ . In this case, we require that to be a random variable,  $X$  satisfies

$$
\{\omega : X (\omega) \leq a \} = X ^ {- 1} ((\infty , a ]) \in \mathbb {B}
$$ for any real  $a$ .


To illustrate, let's use a call option on a stock. Suppose in period  $t$  we purchase a call option on a certain stock expiring in the next period  $T = t + 1$ . The strike price, denoted by  $K$ , is 50.

Then as the buyer of the call option, in  $t + 1$  we are entitled to purchase the stock for \$50 no matter what the market price of the stock ( $S_{t+1}$ ) might be. The value of the call option at time  $t + 1$ , which we denote by  $C_{t+1}$ , depends on the market price of the stock at  $t + 1$  relative to the strike price ( $K$ ). Specifically,

- If  $S_{t+1}$  is less than  $K$ , then the value of the option is zero, that is,  $C_{t+1} = 0$
- If  $S_{t + 1}$  is greater than  $K$ , then the value of the option is equal to  $S_{t + 1} - K$

Let  $(\Omega, \mathbb{A}, P)$  be the probability space with the stock price in  $t + 1$ ; that is,  $S_{t + 1} = s$  representing the uncountable real-valued outcomes. So, we have the uncountable probability space  $(\Omega, \mathbb{A}, P) = (\mathbb{R}, \mathbb{B}, P)$ . Assume that the price at  $t + 1$  can take any nonnegative value. Assume further that the probability of exactly  $s$  is zero (i.e.,  $P(S_{t + 1} = s) = 0$ ), that is, the distribution function of the price at  $T = 1$  is continuous. Let the value of the call option in  $T = t + 1$ ,  $C_{t + 1}$ , be our random variable mapping from  $\Omega$  to  $\Omega'$ . Since the possible values of the call option at  $t + 1$  are real numbers, the state space is uncountable as well. Hence, we have  $(\Omega', \mathbb{A}') = (\mathbb{R}, \mathbb{B})$ .  $C_{t + 1}$ , to be a random variable, is a  $\mathbb{B} - \mathbb{B}'$ -measurable function.

Now, the probability of the call becoming worthless is determined by the event in the origin space that the stock price falls below  $K$ . Formally, that equals

$$
\begin{array}{l} P ^ {C _ {t + 1}} (0) = P \left(C _ {t + 1} \leq 0 \right\} = P \left(S _ {t + 1} \leq K \right\} \\ = P ((- \infty , K ]) \\ \end{array}
$$ since the corresponding event in  $\mathbb{A}$  to a 0 value for the call option is  $(-\infty ,K]$ . Equivalently,  $C_{t + 1}^{-1}(\{0\}) = (-\infty ,K]$ . Any positive value  $c$  of  $C_{t + 1}$  is associated with zero probability since we have


$$
P ^ {C _ {t + 1}} (c) = P \left(C _ {t + 1} = c \right\} = P \left(S _ {t + 1} = c + K \right\} = 0
$$ due to the relationship  $C_{t + 1} = S_{t + 1} - K$  for  $S_{t + 1} > K$ .


# KEY POINTS

- Events in a mathematical probabilistic sense represent sets of values. They are used to describe a certain situation such as an asset price being below some benchmark value.
- A probability measure is a function that assigns each event a unique probability between zero and one. With respect to this probability measure an event is P-almost sure if it is assigned probability one, while an unlikely event is one with zero probability.
- A random variable is a function assuming values from a given set of values at random. The probability of the random variables assuming certain values is determined by the probability measure.
- A distribution function is uniquely related to the probability measure. It assigns real numbers values between zero and one. At any real number, it represents the probability that a random variable assumes values of at most this number.
- Stochastic is the Greek term for random. It is often used in probability theory to describe that something is not deterministic, that is, known with certainty in advance.

# NOTES

1. Suppose we have the interval [1,2], that is all real numbers between 1 and 2. We cannot count all numbers inside of this interval since, for any two numbers such as, for example, 1 and 1.001, 1.0001, or even 1.000001, there are always infinitely many more numbers that lie between them.
2. Note that in a set, we do not consider an element more than once.
3. By abscissa we mean a value on the horizontal  $x$ -axis.
4. For example, let  $\Omega = \{1,2,3\}$ , then the power set  $2^{\Omega} = \{\emptyset, \{1\}, \{2\}, \{3\}, \{1,2\}, \{1,3\}, \{2,3\}, \Omega\}$ . That is, we have included all possible combinations of the original elements of  $\Omega$ .

5. Let us assume, for now, that we are not restricted to a few digits due to measurement constraints or quotes conventions in the stock market. Instead, we consider being able to measure the returns to any degree of precision.
6. By convention, we never include  $\infty$  since it is not a real number.
7. The symbol  $\mathbb{R}$  is just a mathematical abbreviation for the real numbers.
8. The empty set is interpreted as the improbable event.
9. We use the index in  $F^{\mathrm{S\& P500}}$  to emphasize that this distribution function is unique to the probability of events related to the S&P 500 log returns.
10. Note that we do not define the outcomes of number of dots as nominal or even rank data anymore, but as numbers. That is 1 is 1, 2 is 2, and so on.


11. Theoretically,  $\Omega^{\prime}$  does not have to be countable; that is, it could contain more elements than  $X$  can assume values. But we restrict ourselves to countable state spaces  $\Omega^{\prime}$  consisting of exactly all the values of  $X$ .

# REFERENCES

