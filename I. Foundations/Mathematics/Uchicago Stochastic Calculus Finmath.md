---
parent_directory: I. Foundations/Mathematics
title: 'Stochastic Calculus: An Introduction with Applications'
tags: null
aliases:
- Stochastic Calculus: An Introduction with Applications
parent_folder: Mathematics
subfolder: null
key_concepts: null
cssclasses: academia
linter-yaml-title-alias: 'Stochastic Calculus: An Introduction with Applications'
primary_tags:
- 4.6 exercise
- borel-canelli lemma
- orthogonal random variables
- quadratic variation
- if , then proof
- 7.3 simulation
- sufficient assumptions
secondary_tags:
- square-integrable martingale
- multidimensional brownian motion
- black scholes equation
- bounded first and second derivatives
- 2.8 quadratic variation
- coin-tossing random variables
- some heuristic derivations
- optional sampling theorem ii
- independent standard brownian motions
- other examples
- same assumptions
- riemann integral
- simple example
- next exercise
- discrete process
- suitable processes show
- fractional brownian
- time processes
- same exercise
tags_extracted: '2025-12-18T17:58:44.474403'
tags_method: max_quality_v1
---

# Stochastic Calculus: An Introduction with Applications

Gregory F. Lawler

© 2014 Gregory F. Lawler

All rights reserved

Last revised: February 15, 2023

# Contents

# 1 Martingales in discrete time 3

1.1 Conditional expectation 3  
1.2 Martingales 10  
1.3 Optional sampling theorem 14  
1.4 Martingale convergence theorem 19  
1.5 Square integrable martingales 24  
1.6 Integrals with respect to random walk 26  
1.7 A maximal inequality 27  
1.8 Exercises 28

# 2 Brownian motion 35

2.1 Limits of sums of independent variables 35  
2.2 Multivariate normal distribution 38  
2.3 Limits of random walks 42  
2.4 Brownian motion 43  
2.5 Construction of Brownian motion 46  
2.6 Understanding Brownian motion 51

2.6.1 Brownian motion as a continuous martingale 54  
2.6.2 Brownian motion as a Markov process 56  
2.6.3 Brownian motion as a Gaussian process 57  
2.6.4 Brownian motion as a self-similar process 58

2.7 Computations for Brownian motion 58

2.8 Quadratic variation 63

2.9 Multidimensional Brownian motion 66

2.10 Heat equation and generator 68

2.10.1 One dimension 68  
2.10.2 Expected value at a future time 74

2.11 Exercises 78

# 3 Stochastic integration 83

3.1 What is stochastic calculus? 83  
3.2 Stochastic integral 85

3.2.1 Review of Riemann integration 85  
3.2.2 Integration of simple processes 86  
3.2.3 Integration of continuous processes 89

3.3 Ito's formula 99  
3.4 More versions of Ito's formula 105  
3.5 Diffusions 111  
3.6 Covariation and the product rule 116  
3.7 Several Brownian motions 117  
3.8 Exercises 120

# 4 More stochastic calculus 125

4.1 Martingales and local martingales 125  
4.2 An example: the Bessel process 131  
4.3 Feynman-Kac formula 133  
4.4 Binomial approximations 137  
4.5 Continuous martingales 141  
4.6 Exercises 143

# 5 Change of measure and Girsanov theorem 145

5.1 Absolutely continuous measures 145  
5.2 Giving drift to a Brownian motion 150  
5.3 Girsanov theorem 153  
5.4 Black-Scholes formula 162  
5.5 Martingale approach to Black-Scholes equation 166  
5.6 Martingale approach to pricing 169  
5.7 Martingale representation theorem 178  
5.8 Exercises 180

# 6 Jump processes 185

6.1 Lévy processes 185  
6.2 Poisson process 188  
6.3 Compound Poisson process 192  
6.4 Integration with respect to compound Poisson processes 200  
6.5 Change of measure 205  
6.6 Generalized Poisson processes I 206

# CONTENTS

V

6.7 Generalized Poisson processes II 211  
6.8 The Lévy-Khinchin characterization 216  
6.9 Integration with respect to Lévy processes 224  
6.10 Symmetric stable process 227  
6.11 Exercises 232

# 7 Fractional Brownian motion 237

7.1 Definition 237  
7.2 Stochastic integral representation 239  
7.3 Simulation 241

# 8 Harmonic functions 243

8.1 Dirichlet problem 243  
8.2  $h$  -processes 249  
8.3 Time changes 251  
8.4 Complex Brownian motion 252  
8.5 Exercises 254

# Introductory comments

This is an introduction to stochastic calculus. I will assume that the reader has had a post-calculus course in probability or statistics. For much of these notes this is all that is needed, but to have a deep understanding of the subject, one needs to know measure theory and probability from that perspective. My goal is to include discussion for readers with that background as well. I also assume that the reader can write simple computer programs either using a language like C++ or by using software such as Matlab or Mathematica.

More advanced mathematical comments that can be skipped by the reader will be indented with a different font. Comments here will assume that the reader knows that language of measure-theoretic probability theory.

We will discuss some of the applications to finance but our main focus will be on the mathematics. Financial mathematics is a kind of applied mathematics, and I will start by making some comments about the use of mathematics in "the real world". The general paradigm is as follows.

- A mathematical model is made of some real world phenomenon. Usually this model requires simplification and does not precisely describe the real situation. One hopes that models are robust in the sense that if the model is not very far from reality then its predictions will also be close to accurate.  
- The model consists of mathematical assumptions about the real world.  
- Given these assumptions, one does mathematical analysis to see what they imply. The analysis can be of various types:
- Rigorous derivations of consequences.  
- Derivations that are plausible but are not mathematically rigorous.  
- Approximations of the mathematical model which lead to tractable calculations.  
- Numerical calculations on a computer.  
- For models that include randomness, Monte Carlo simulations using a (pseudo) random number generator.
- If the mathematical analysis is successful it will make predictions about the real world. These are then checked.
- If the predictions are bad, there are two possible reasons:
- The mathematical analysis was faulty.  
- The model does not sufficiently reflect reality.

The user of mathematics does not always need to know the details of the mathematical analysis, but it is critical to understand the assumptions in the model. No matter how precise or sophisticated the analysis is, if the assumptions are bad, one cannot expect a good answer.

# Chapter 1

# Martingales in discrete time

A martingale is a mathematical model of a fair game. To understand the definition, we need to define conditional expectation. The concept of conditional expectation will permeate this book.

# 1.1 Conditional expectation

If  $X$  is a random variable, then its expectation,  $\mathbb{E}[X]$  can be thought of as the best guess for  $X$  given no information about the result of the trial. A conditional expectation can be considered as the best guess given some but not total information.

Let  $X_{1}, X_{2}, \ldots$  be random variables which we think of as a time series with the data arriving one at a time. At time  $n$  we have viewed the values  $X_{1}, \ldots, X_{n}$ . If  $Y$  is another random variable, then  $E(Y \mid X_{1}, \ldots, X_{n})$  is the best guess for  $Y$  given  $X_{1}, \ldots, X_{n}$ . We will assume that  $Y$  is an integrable random variable which means  $\mathbb{E}[|Y|] < \infty$ . To save some space we will write  $\mathcal{F}_{n}$  for "the information contained in  $X_{1}, \ldots, X_{n}$ " and  $E[Y \mid \mathcal{F}_{n}]$  for  $E[Y \mid X_{1}, \ldots, X_{n}]$ . We view  $\mathcal{F}_{0}$  as no information. The best guess should satisfy the following properties.

- If we have no information, then the best guess is the expected value. In other words,  $E[Y \mid \mathcal{F}_0] = \mathbb{E}[Y]$ .  
- The conditional expectation  $E[Y \mid \mathcal{F}_n]$  should only use the information available at time  $n$ . In other words, it should be a function of

$$
\begin{array}{l} X_{1}, \dots , X_{n}, \\ E \left[ Y \mid \mathcal{F}_{n} \right] = \phi \left(X_{1}, \dots , X_{n}\right). \\ \end{array}
$$

We say that  $E[Y \mid \mathcal{F}_n]$  is  $\mathcal{F}_n$ -measurable.

The definitions in the last paragraph are certainly vague. We can use measure theory to be precise. We assume that the random variables  $Y, X_1, X_2, \ldots$  are defined on a probability space  $(\Omega, \mathcal{F}, \mathbb{P})$ . Here  $\mathcal{F}$  is a  $\sigma$ -algebra or  $\sigma$ -field of subsets of  $\Omega$ , that is, a collection of subsets satisfying

- $\emptyset \in \mathcal{F}$  
- $A \in \mathcal{F}$  implies that  $\Omega \setminus A \in \mathcal{F}$ ;  
- $A_{1}, A_{2}, \ldots \in \mathcal{F}$  implies that  $\bigcup_{n=1}^{\infty} A_{n} \in \mathcal{F}$ .

The information  $\mathcal{F}_n$  is the smallest sub  $\sigma$ -algebra  $\mathcal{G}$  of  $\mathcal{F}$  such that  $X_1, \ldots, X_n$  are  $\mathcal{G}$ -measurable. The latter statement means that for all  $t \in \mathbb{R}$ , the event  $\{X_j \leq t\} \in \mathcal{F}_n$ . The "no information"  $\sigma$ -algebra  $\mathcal{F}_0$  is the trivial  $\sigma$ -algebra containing only  $\varnothing$  and  $\Omega$ .

The definition of conditional expectation is a little tricky, so let us try to motivate it by considering an example from undergraduate probability courses. Suppose that  $(X,Y)$  have a joint density

$$
f (x, y), 0 <   x, y <   \infty ,
$$

with marginal densities

$$
f (x) = \int_{- \infty}^{\infty} f (x, y) d y, \quad g (y) = \int_{- \infty}^{\infty} f (x, y) d x.
$$

The conditional density  $f(y|x)$  is defined by

$$
f (y | x) = \frac{f (x , y)}{f (x)}.
$$

This is well defined provided that  $f(x) > 0$ , and if  $f(x) = 0$ , then  $x$  is an "impossible" value for  $X$  to take. We can write

$$
\mathbb{E} [ Y \mid X = x ] = \int_{- \infty}^{\infty} y f (y \mid x) d y.
$$

We can use this as the definition of conditional expectation in this case,

$$
E [ Y \mid X ] = \int_{- \infty}^{\infty} y f (y \mid X) d y = \frac{\int_{- \infty}^{\infty} y f (X , y) d y}{f (X)}.
$$

Note that  $E[Y \mid X]$  is a random variable which is determined by the value of the random variable  $X$ . Since it is a random variable, we can take its expectation

$$
\begin{array}{l} \mathbb{E} [ E [ Y \mid X ] ] = \int_{- \infty}^{\infty} \mathbb{E} [ Y \mid X = x ] f (x) d x \\ = \int_{- \infty}^{\infty} \left[ \int_{- \infty}^{\infty} y f (y \mid x) d y \right] f (x) d x \\ = \int_{- \infty}^{\infty} \int_{- \infty}^{\infty} y f (x, y) d y d x \\ { = } { \mathbb{ E } [ Y ] . } \\ \end{array}
$$

This calculation illustrates a basic property of conditional expectation. Suppose we are interested in the value of a random variable  $Y$  and we are going to be given data  $X_{1},\ldots ,X_{n}$ . Once we observe the data, we make our best prediction  $E[Y\mid X_1,\dots,X_n]$ . If we average our best prediction given  $X_{1},\ldots ,X_{n}$  over all the possible values of  $X_{1},\ldots ,X_{n}$ , we get the best prediction of  $Y$ . In other words,

$$
\mathbb{E} [ Y ] = \mathbb{E} \left[ E [ Y \mid \mathcal{F}_{n} ] \right].
$$

More generally, suppose that  $A$  is an  $\mathcal{F}_n$ -measurable event, that is to say, if we observe the data  $X_1, \ldots, X_n$ , then we know whether or not  $A$  has occurred. An example of an  $\mathcal{F}_4$ -measurable event would be

$$
A = \left\{X_{1} \geq X_{2}, X_{4} <   4 \right\}.
$$

Let  $1_A$  denote the indicator function (or indicator random variable) associated to the event  $A$ ,

$$
1_{A} = \left\{ \begin{array}{l l} 1 & \text{ifA occurs} \\ 0 & \text{ifA doesnotoccur} \end{array} \right..
$$

Using similar reasoning, we can see that if  $A$  is  $\mathcal{F}_n$ -measurable, then

$$
\mathbb{E} \left[ Y 1_{A} \right] = \mathbb{E} \left[ E \left[ Y \mid \mathcal{F}_{n} \right] 1_{A} \right].
$$

At this point, we have not derived this relation mathematically; in fact, we have not even defined the conditional expectation. Instead, we will use this reasoning to motivate the following definition.

Definition The conditional expectation  $E[Y \mid \mathcal{F}_n]$  is the unique random variable satisfying the following.

- $E[Y \mid \mathcal{F}_n]$  is  $\mathcal{F}_n$ -measurable.  
- For every  $\mathcal{F}_n$ -measurable event  $A$ ,

$$
\mathbb{E} \left[ E \left[ Y \mid \mathcal{F}_{n} \right] 1_{A} \right] = \mathbb{E} \left[ Y 1_{A} \right].
$$

We have used different fonts for the  $E$  of conditional expectation and the  $\mathbb{E}$  of usual expectation in order to emphasize that the conditional expectation is a random variable. However, most authors use the same font for both leaving it up to the reader to determine which is being referred to.

Suppose  $(\Omega, \mathcal{F}, \mathbb{P})$  is a probability space and  $Y$  is an integrable random variable. Suppose  $\mathcal{G}$  is a sub  $\sigma$ -algebra of  $\mathcal{F}$ . Then  $E[Y \mid \mathcal{G}]$  is defined to be the unique (up to an event of measure zero)  $\mathcal{G}$ -measurable random variable such that if  $A \in \mathcal{G}$ ,

$$
\mathbb{E} \left[ Y 1_{A} \right] = \mathbb{E} \left[ E \left[ Y \mid \mathcal{G} \right] 1_{A} \right].
$$

Uniqueness follows from the fact that if  $Z_{1}, Z_{2}$  are  $\mathcal{G}$ -measurable random variables with

$$
\mathbb{E} \left[ Z_{1} \mathrm{lambda}_{A} \right] = \mathbb{E} \left[ Z_{2} \mathrm{lambda}_{A} \right]
$$

for all  $A \in \mathcal{G}$ , then  $\mathbb{P}\{Z_1 \neq Z_2\} = 0$ . Existence of the conditional expectation can be deduced from the Radon-Nikodym theorem. Let  $\mu(A) = \mathbb{E}[Y1_A]$ . Then  $\mu$  is a (signed) measure on  $(\Omega, \mathcal{G}, \mathbb{P})$  with  $\mu \ll \mathbb{P}$ , and hence there exists an  $L^1$  random variable  $Z$  with  $\mu(A) = \mathbb{E}[Z1_A]$  for all  $A \in \mathcal{G}$ .

Although the definition does not give an immediate way to calculate the conditional expectation, in many cases one can compute it. We will give a number of properties of the conditional expectation most of which follow quickly from the definition.

Proposition 1.1.1. Suppose  $X_{1},X_{2},\ldots$  is a sequence of random variables and  $\mathcal{F}_n$  denotes the information at time  $n$ . The conditional expectation  $E[Y\mid \mathcal{F}_n]$  satisfies the following properties.

- If  $Y$  is  $\mathcal{F}_n$ -measurable, then  $E[Y \mid \mathcal{F}_n] = Y$ .  
- If  $A$  is an  $\mathcal{F}_n$ -measurable event, then  $\mathbb{E}[E[Y \mid \mathcal{F}_n] 1_A] = \mathbb{E}[Y 1_A]$ . In particular,

$$
\mathbb{E} \left[ E [ Y \mid \mathcal{F}_{n} ] \right] = \mathbb{E} [ Y ].
$$

- Suppose  $X_{1},\ldots ,X_{n}$  are independent of  $Y$ . Then  $\mathcal{F}_n$  contains no useful information about  $Y$  and hence

$$
E [ Y \mid \mathcal{F}_{n} ] = \mathbb{E} [ Y ].
$$

- Linearity. If  $Y, Z$  are random variables and  $a, b$  are constants, then

$$
E [ a Y + b Z \mid \mathcal{F}_{n} ] = a E [ Y \mid \mathcal{F}_{n} ] + b E [ Z \mid \mathcal{F}_{n} ]. \tag {1.1}
$$

- Projection or Tower Property. If  $m < n$ , then

$$
E \left[ E [ Y \mid \mathcal{F}_{n} ] \mid \mathcal{F}_{m} \right] = E [ Y \mid \mathcal{F}_{m} ]. \tag {1.2}
$$

- If  $Z$  is an  $\mathcal{F}_n$ -measurable random variable, then when conditioning with respect to  $\mathcal{F}_n$ ,  $Z$  acts like a constant,

$$
E [ Y Z \mid \mathcal{F}_{n} ] = Z E [ Y \mid \mathcal{F}_{n} ]. \tag {1.3}
$$

The proof of this proposition is not very difficult given our choice of definition for the conditional expectation. We will discuss only a couple of cases here, leaving the rest for the reader. To prove the linearity property, we know that  $aE[Y\mid \mathcal{F}_n] + bE[Z\mid \mathcal{F}_n]$  is an  $\mathcal{F}_n$ -measurable random variable. Also if  $A\in \mathcal{F}_n$ , then linearity of expectation implies that

$$
\begin{array}{l} \mathbb{E} \left[ 1_{A} \left(a E [ Y \mid \mathcal{F}_{n} ] + b E [ Z \mid \mathcal{F}_{n} ]\right) \right] \\ = a \mathbb{E} \left[ 1_{A} E [ Y \mid \mathcal{F}_{n} ] \right] + b \mathbb{E} \left[ 1_{A} E [ Z \mid \mathcal{F}_{n} ] \right] \\ = a \mathbb{E} \left[ 1_{A} Y \right] + b \mathbb{E} \left[ 1_{A} Z \right] \\ = \mathbb{E} \left[ 1_{A} (a Y + b Z) \right]. \\ \end{array}
$$

Uniqueness of the conditional expectation then implies (1.1).

We first show the "constants rule" (1.3) for  $Z = 1_A, A \in \mathcal{F}_n$ , as follows. If  $B \in \mathcal{F}_n$ , then  $A \cap B \in \mathcal{F}_n$  and

$$
\begin{array}{l} \mathbb{E} \left[ 1_{B} E (Y Z \mid \mathcal{F}_{n}) \right] = \mathbb{E} \left[ 1_{B} E (1_{A} Y \mid \mathcal{F}_{n}) \right] \\ = \mathbb{E} \left[ 1_{B} \left. 1_{A} Y \right] = \mathbb{E} \left[ 1_{A \cap B} Y \right] = \mathbb{E} \left[ 1_{A \cap B} E (Y \mid \mathcal{F}_{n}) \right] \right. \\ = \mathbb{E} \left[ 1_{B} 1_{A} E (Y \mid \mathcal{F}_{n}) \right] = \mathbb{E} \left[ 1_{B} Z E (Y \mid \mathcal{F}_{n}) \right]. \\ \end{array}
$$

Hence  $E(YZ \mid \mathcal{F}_n) = ZE(Y \mid \mathcal{F}_n)$  by definition. Using linearity, the rule holds for simple random variables of the form

$$
Z = \sum_{j = 1}^{n} a_{j}   1_{A_{j}}, \quad A_{j} \in \mathcal{F}_{n}.
$$

We can then prove it for nonnegative  $Y$  by approximating from below by nonnegative simple random variables and using the monotone convergence theorem, and then for general  $Y$  by writing  $Y = Y^{+} - Y^{-}$ . These are standard techniques in Lebesgue integration theory.

Example 1.1.1. Suppose that  $X_{1}, X_{2}, \ldots$  are independent random variables with  $\mathbb{E}[X_j] = \mu$  for each  $j$ . Let  $S_{n} = X_{1} + \dots + X_{n}$ , and let  $\mathcal{F}_n$  denote the information contained in  $X_{1}, \ldots, X_{n}$ . Then if  $m < n$ ,

$$
\begin{array}{l} E [ S_{n} \mid \mathcal{F}_{m} ] = E [ S_{m} \mid \mathcal{F}_{m} ] + E [ S_{n} - S_{m} \mid \mathcal{F}_{m} ] \\ = S_{m} + \mathbb{E} [ S_{n} - S_{m} ] \\ = S_{m} + \mu (n - m). \\ \end{array}
$$

Example 1.1.2. In the same setup as Example 1.1.1 suppose that  $\mu = 0$  and  $\mathbb{E}[X_j^2] = \sigma^2$  for each  $j$ . Then if  $m < n$ ,

$$
\begin{array}{l} E [ S_{n}^{2} \mid \mathcal{F}_{m} ] = E ([ S_{m} + (S_{n} - S_{m}) ]^{2} \mid \mathcal{F}_{m}) \\ = E \left[ S_{m}^{2} \mid \mathcal{F}_{m} \right] + 2 E \left[ S_{m} \left(S_{n} - S_{m}\right) \mid \mathcal{F}_{m} \right] \\ + E \big [ \left(S_{n} - S_{m}\right)^{2} \mid \mathcal{F}_{m} \big ]. \\ \end{array}
$$

Since  $S_{m}$  is  $\mathcal{F}_m$ -measurable and  $S_{n} - S_{m}$  is independent of  $\mathcal{F}_m$

$$
E \left[ S_{m}^{2} \mid \mathcal{F}_{m} \right] = S_{m}^{2},
$$

$$
\begin{array}{l} E \left[ S_{m} \left(S_{n} - S_{m}\right) \mid \mathcal{F}_{m} \right] = S_{m} E \left[ S_{n} - S_{m} \mid \mathcal{F}_{m} \right] = S_{m} \mathbb{E} \left[ S_{n} - S_{m} \right] = 0, \\ E \left[ \left(S_{n} - S_{m}\right)^{2} \mid \mathcal{F}_{m} \right] = \mathbb{E} \left[ \left(S_{n} - S_{m}\right)^{2} \right] = \operatorname{Var} \left(S_{n} - S_{m}\right) = \sigma^{2} (n - m), \\ \end{array}
$$

and hence,

$$
E [ S_{n}^{2} \mid \mathcal{F}_{m} ] = S_{m}^{2} + \sigma^{2} (n - m).
$$

Example 1.1.3. In the same setup as Example 1.1.1, let us also assume that  $X_{1}, X_{2}, \ldots$  are identically distributed. We will compute  $E[X_{1} \mid S_{n}]$ . Note that the information contained in the one data point  $S_{n}$  is less than the information contained in  $X_{1}, \ldots, X_{n}$ . However, since the random variables are identically distributed, it must be the case that

$$
E \left[ X_{1} \mid S_{n} \right] = E \left[ X_{2} \mid S_{n} \right] = \dots = E \left[ X_{n} \mid S_{n} \right].
$$

Linearity implies that

$$
n E \left[ X_{1} \mid S_{n} \right] = \sum_{j = 1}^{n} E \left[ X_{j} \mid S_{n} \right] = E \left[ X_{1} + \dots + X_{n} \mid S_{n} \right] = E \left[ S_{n} \mid S_{n} \right] = S_{n}.
$$

Therefore,

$$
E [ X_{1} \mid S_{n} ] = \frac{S_{n}}{n}.
$$

It may be at first surprising that the answer does not depend on  $\mathbb{E}[X_1]$ .

Definition If  $X_{1}, X_{2}, \ldots$  is a sequence of random variables, then the associated (discrete time) filtration is the collection  $\{\mathcal{F}_n\}$  where  $\mathcal{F}_n$  denotes the information in  $X_{1}, \ldots, X_{n}$ .

One assumption in the definition of a filtration, which may sometimes not reflect reality, is that information is never lost. If  $m < n$ , then everything known at time  $m$  is still known at time  $n$ . Sometimes a filtration is given starting at time  $n = 1$  and sometimes starting at  $n = 0$ . If it starts at time  $n = 1$ , we define  $\mathcal{F}_0$  to be "no information".

# 1.2 Martingales

A martingale is a model of a fair game. Suppose  $X_{1}, X_{2}, \ldots$  is a sequence of random variables to which we associate the filtration  $\{\mathcal{F}_n\}$  where  $\mathcal{F}_n$  is the information contained in  $X_{1}, \ldots, X_{n}$ .

Definition A sequence of random variables  $M_0, M_1, \ldots$  is called a martingale with respect to the filtration  $\{\mathcal{F}_n\}$  if:

- For each  $n$ ,  $M_{n}$  is an  $\mathcal{F}_{n}$ -measurable random variable with  $\mathbb{E}[|M_n|] < \infty$ .  
- If  $m < n$ , then

$$
E \left[ M_{n} \mid \mathcal{F}_{m} \right] = M_{m}. \tag {1.4}
$$

We can also write (1.4) as

$$
E [ M_{n} - M_{m} \mid \mathcal{F}_{m} ] = 0.
$$

If we think of  $M_{n}$  as the winnings of a game, then this implies that no matter what has happened up to time  $m$ , the expected winnings in the next  $n - m$  games is 0. Sometimes one just says " $M_{0}, M_{1}, \ldots$  is a martingale" without reference to the filtration. In this case, the assumed filtration is  $\mathcal{F}_{n}$ , the information in  $M_{0}, \ldots, M_{n}$ . In order to establish (1.4) it suffices to show for all  $n$ ,

$$
E \left[ M_{n + 1} \mid \mathcal{F}_{n} \right] = M_{n}. \tag {1.5}
$$

In order to see this, we can use the tower property (1.2) for conditional expectation to see that

$$
E \left[ M_{n + 2} \mid \mathcal{F}_{n} \right] = E \left[ E \left[ M_{n + 2} \mid \mathcal{F}_{n + 1} \right] \mid \mathcal{F}_{n} \right] = E \left[ M_{n + 1} \mid \mathcal{F}_{n} \right] = M_{n},
$$

and so forth. Also note that if  $M_{n}$  is a martingale, then

$$
\mathbb{E} [ M_{n} ] = \mathbb{E} \left[ E [ M_{n} \mid \mathcal{F}_{0} ] \right] = \mathbb{E} [ M_{0} ].
$$

Example 1.2.1. Suppose  $X_{1}, X_{2}, \ldots$  are independent random variables with  $\mathbb{E}[X_{j}] = 0$  for each  $j$ . Let  $S_{0} = 0$  and  $S_{n} = X_{1} + \dots + X_{n}$ . In the last section we showed that if  $m < n$ , then  $E[S_{n} \mid \mathcal{F}_{m}] = S_{m}$ . Hence,  $S_{n}$  is a martingale with respect to  $\mathcal{F}_{n}$ , the information in  $X_{1}, \ldots, X_{n}$ .

Example 1.2.2. Suppose  $X_{n}, S_{n}, \mathcal{F}_{n}$  are as in Example 1.2.1 and also assume  $\operatorname{Var}[X_j] = \mathbb{E}[X_j^2] = \sigma_j^2 < \infty$ . Let

$$
A_{n} = \sigma_{1}^{2} + \dots + \sigma_{n}^{2},
$$

$$
M_{n} = S_{n}^{2} - A_{n},
$$

where  $M_0 = 0$ . Then  $M_{n}$  is a martingale with respect to  $\mathcal{F}_n$ . To see this, we compute as in Example 1.1.2,

$$
\begin{array}{l} E \left[ S_{n + 1}^{2} \mid \mathcal{F}_{n} \right] = E \left[ \left(S_{n} + X_{n + 1}\right)^{2} \mid \mathcal{F}_{n} \right] \\ = E \left[ S_{n}^{2} \mid \mathcal{F}_{n} \right] + 2 E \left[ S_{n} X_{n + 1} \mid \mathcal{F}_{n} \right] + E \left[ X_{n + 1}^{2} \mid \mathcal{F}_{n} \right] \\ = S_{n}^{2} + 2 S_{n} E \left[ X_{n + 1} \mid \mathcal{F}_{n} \right] + \mathbb{E} \left[ X_{n + 1}^{2} \right] \\ = S_{n}^{2} + 2 S_{n} \mathbb{E} \left[ X_{n + 1} \right] + \mathbb{E} \left[ X_{n + 1}^{2} \right] \\ { = } { S_{ n }^{ 2 } + \sigma_{ n + 1 }^{ 2 } . } \\ \end{array}
$$

Therefore,

$$
\begin{array}{l} E \left[ M_{n + 1} \mid \mathcal{F}_{n} \right] = E \left[ S_{n + 1}^{2} - A_{n + 1} \mid \mathcal{F}_{n} \right] \\ = S_{n}^{2} + \sigma_{n + 1}^{2} - \left(A_{n} + \sigma_{n + 1}^{2}\right) = M_{n}. \\ \end{array}
$$

There are various ways to view a martingale. One can consider  $M_{n}$  as the price of an asset (although we allow negative values of  $M_{n}$ ) or as the winnings in a game. We can also consider

$$
\Delta M_{n} = M_{n} - M_{n - 1}
$$

as either the change in the asset price or as the amount won in the game at time  $n$ . Negative values indicate drops in price or money lost in the game. The basic idea of stochastic integration is to allow one to change one's portfolio (in the asset viewpoint) or change one's bet (in the game viewpoint). However, we are not allowed to see the outcome before betting. We make this precise in the next example.

Example 1.2.3. Discrete stochastic integral. Suppose that  $M_0, M_1, \ldots$  is a martingale with respect to the filtration  $\mathcal{F}_n$ . For  $n \geq 1$ , let  $\Delta M_n = M_n - M_{n-1}$ . Let  $B_j$  denote the "bet" on the  $j$ th game. We allow negative values of  $B_j$  which indicate betting that the price will go down or the game

will be lost. Let  $W_{n}$  denote the winnings in this strategy:  $W_{0} = 0$  and for  $n \geq 1$ ,

$$
W_{n} = \sum_{j = 1}^{n} B_{j} \left[ M_{j} - M_{j - 1} \right] = \sum_{j = 1}^{n} B_{j} \Delta M_{j}.
$$

Let us assume that for each  $n$  there is a number  $K_{n} < \infty$  such that  $|B_{n}| \leq K_{n}$ . We also assume that we cannot see the result of  $n$ th game before betting. This last assumption can be expressed mathematically by saying that  $B_{n}$  is  $\mathcal{F}_{n-1}$ -measurable. In other words, we can adjust our bet based on how well we have been doing. We claim that under these assumptions,  $W_{n}$  is a martingale with respect to  $\mathcal{F}_{n}$ . It is clear that  $W_{n}$  is measurable with respect to  $\mathcal{F}_{n}$ , and integrability follows from the estimate

$$
\begin{array}{l} \mathbb{E} [ | W_{n} | ] \leq \sum_{j = 1}^{n} \mathbb{E} [ | B_{j} | | M_{j} - M_{j - 1} | ] \\ \leq \sum_{j = 1}^{n} K_{j} \left(\mathbb{E} [ | M_{j} | ] + \mathbb{E} [ | M_{j - 1} | ]\right) <   \infty . \\ \end{array}
$$

Also,

$$
\begin{array}{l} E \left[ W_{n + 1} \mid \mathcal{F}_{n} \right] = E \left[ W_{n} + B_{n + 1} \left(M_{n + 1} - M_{n}\right) \mid \mathcal{F}_{n} \right] \\ = E \left[ W_{n} \mid \mathcal{F}_{n} \right] + E \left[ B_{n + 1} \left(M_{n + 1} - M_{n}\right) \mid \mathcal{F}_{n} \right]. \\ \end{array}
$$

Since  $W_{n}$  is  $\mathcal{F}_n$ -measurable,  $E[W_n\mid \mathcal{F}_n] = W_n$ . Also, since  $B_{n + 1}$  is  $\mathcal{F}_n$ -measurable and  $M$  is a martingale,

$$
E [ B_{n + 1} (M_{n + 1} - M_{n}) \mid \mathcal{F}_{n} ] = B_{n + 1} E [ M_{n + 1} - M_{n} \mid \mathcal{F}_{n} ] = 0.
$$

Therefore,

$$
E [ W_{n + 1} \mid \mathcal{F}_{n} ] = W_{n}.
$$

Example 1.2.3 demonstrates an important aspect of martingales. One cannot change a discrete-time martingale to a game in one's favor with a betting strategy in a finite amount of time. However, the next example shows that if we are allowed an infinite amount of time we can beat a fair game.

Example 1.2.4. Martingale betting strategy. Let  $X_{1}, X_{2}, \ldots$  be independent random variables with

$$
\mathbb{P} \{X_{j} = 1 \} = \mathbb{P} \{X_{j} = - 1 \} = \frac{1}{2}. \tag {1.6}
$$

We will refer to such random variables as "coin-tossing" random variables where 1 corresponds to heads and -1 corresponds to tails. Let M_0 = 0, M_n = X_1 + \cdots + X_n. We have seen that M_n is a martingale. We will consider the following betting strategy. We start by betting \$1. If we win, we quit; otherwise, we bet \$2 on the next game. If we win the second game, we quit; otherwise we double our bet to \$4 and play. Each time we lose, we double our bet. At the time that we win, we will be ahead \$1. With probability one, we will eventually win the game, so this strategy is a way to beat a fair game. The winnings in this game can be written as

$$
W_{n} = \sum_{j = 1}^{n} B_{j} \Delta M_{j} = \sum_{j = 1}^{n} B_{j} X_{j},
$$

where the bet  $B_{1} = 1$  and for  $j > 1$

$$
B_{j} = 2^{j - 1} \text{if} X_{1} = X_{2} = \dots = X_{j - 1} = - 1,
$$

and otherwise  $B_{j} = 0$ . This is an example of a discrete stochastic integral as in the previous example, and hence, we know that  $W_{n}$  must be a martingale. In particular, for each  $n$ ,  $\mathbb{E}[W_n] = 0$ . We can check this directly by noting that  $W_{n} = 1$  unless  $X_{1} = X_{2} = \dots = X_{n} = -1$  in which case

$$
W_{n} = - 1 - 2^{1} - 2^{2} - \dots - 2^{n - 1} = - [ 2^{n} - 1 ].
$$

This last event happens with probability  $(1 / 2)^n$ , and hence

$$
\mathbb{E} [ W_{n} ] = 1 \cdot [ 1 - 2^{- n} ] - [ 2^{n} - 1 ] \cdot 2^{- n} = 0.
$$

However, we will eventually win which means that with probability one

$$
W_{\infty} = \lim_{n \to \infty} W_{n} = 1,
$$

and

$$
1 = \mathbb{E} [ W_{\infty} ] > \mathbb{E} [ W_{0} ] = 0.
$$

We have beaten the game (but it takes an infinite amount of time to guarantee it).

If the condition (1.4) is replaced with

$$
E \left[ M_{n} \mid \mathcal{F}_{m} \right] \geq M_{m},
$$

then the process is called a submartingale. If it is replaced with

$$
E \left[ M_{n} \mid \mathcal{F}_{m} \right] \leq M_{m},
$$

then it is called a supermartingale. In other words, games that are always in one's favor are submartingales and games that are always against one are supermartingales. (At most games in Las Vegas, one's winnings give a supermartingale.) Under this definition, a martingale is both a submartingale and a supermartingale. The terminology may seem backwards at first: submartingales get bigger and supermartingales get smaller. The terminology was set to be consistent with the related notion of subharmonic and superharmonic functions. Martingales are related to harmonic functions.

# 1.3 Optional sampling theorem

Suppose  $M_0, M_1, M_2, \ldots$  is a martingale with respect to the filtration  $\{\mathcal{F}_n\}$ . In the last section we discussed the discrete stochastic integral. Here we will consider a particular case of a betting strategy where one bets 1 up to some time and then one bets 0 afterwards. Let  $T$  be the "stopping time" for the strategy. Then the winnings at time  $t$  is

$$
M_{0} + \sum_{j = 1}^{n} B_{j} [ M_{j} - M_{j - 1} ],
$$

where  $B_{j} = 1$  if  $j\leq T$  and  $B_{j} = 0$  if  $j > T$ . We can write this as

$$
M_{n \wedge T},
$$

where  $n \wedge T$  is shorthand for  $\min \{n, T\}$ . The time  $T$  is random, but it must satisfy the condition that the betting rule is allowable.

Definition A nonnegative integer-valued random variable  $T$  is a stopping time with respect to the filtration  $\{\mathcal{F}_n\}$  if for each  $n$  the event  $\{T = n\}$  is  $\mathcal{F}_n$ -measurable.

The following theorem is a special case of the discrete stochastic integral. It restates the fact that one cannot beat a martingale in finite time. We call this the optional sampling theorem; it is also called the optional stopping theorem.

Theorem 1.3.1 (Optional Sampling Theorem I). Suppose  $T$  is a stopping time and  $M_{n}$  is a martingale with respect to  $\{\mathcal{F}_n\}$ . Then  $Y_{n} = M_{n\wedge T}$  is a martingale. In particular, for each  $n$ ,

$$
\mathbb{E} \left[ M_{n \wedge T} \right] = \mathbb{E} \left[ M_{0} \right].
$$

If  $T$  is bounded, that is, if there exists  $k < \infty$  such that  $\mathbb{P}\{T \leq k\} = 1$ , then

$$
\mathbb{E} \left[ M_{T} \right] = \mathbb{E} \left[ M_{0} \right]. \tag {1.7}
$$

The final conclusion (1.7) of the theorem holds since  $\mathbb{E}[M_{n\wedge T}] = \mathbb{E}[M_T]$  for  $n\geq k$ . What if the stopping time  $T$  is not bounded but  $\mathbb{P}\{T < \infty\} = 1$ ? Then, we cannot conclude (1.7) without further assumptions. To see this we need only consider the martingale betting strategy of the previous section. If we define

$$
T = \min  \{n: X_{n} = 1 \} = \min  \{n: W_{n} = 1 \},
$$

then with probability one  $T < \infty$  and  $W_{T} = 1$ . Hence,

$$
1 = \mathbb{E} \left[ W_{T} \right] > \mathbb{E} \left[ W_{0} \right] = 0.
$$

Often one does want to conclude (1.7) for unbounded stopping times, so it is useful to give conditions under which it holds. Let us try to derive the equality and see what conditions we need to impose. First, we will assume that we stop,  $\mathbb{P}\{T < \infty\} = 1$ , so that  $M_T$  makes sense. For every  $n < \infty$ , we know that

$$
\mathbb{E} \left[ M_{0} \right] = \mathbb{E} \left[ M_{n \wedge T} \right] = \mathbb{E} \left[ M_{T} \right] + \mathbb{E} \left[ M_{n \wedge T} - M_{T} \right].
$$

If we can show that

$$
\lim_{n \to \infty} \mathbb{E} \left[ | M_{n \wedge T} - M_{T} | \right] = 0,
$$

then we have (1.7). The random variable  $M_{n\wedge T} - M_T$  is zero if  $n\wedge T = T$ , and

$$
M_{n \wedge T} - M_{T} = 1 \{T > n \} [ M_{n} - M_{T} ].
$$

If  $\mathbb{E}[|M_T|] < \infty$ , then one can show that

$$
\lim_{n \to \infty} \mathbb{E} \left[ | M_{T} |   1 \{T > n \} \right] = 0.
$$

In the martingale betting strategy example, this term did not cause a problem since  $W_{T} = 1$  and hence  $\mathbb{E}[|W_T|] < \infty$ .

If  $\mathbb{P}\{T < \infty\} = 1$ , then the random variables  $X_{n} = |M_{T}|$  and  $1\{T > n\}$  converge to zero with probability one. If  $\mathbb{E}[|M_T|] < \infty$ , then we can use the dominated convergence theorem to conclude that

$$
\lim_{n \to \infty} \mathbb{E} [ X_{n} ] = 0.
$$

Finally, in order to conclude (1.7) we will make the hypothesis that the other term acts nicely.

Theorem 1.3.2 (Optional Sampling Theorem II). Suppose  $T$  is a stopping time and  $M_{n}$  is a martingale with respect to  $\{\mathcal{F}_n\}$ . Suppose that  $\mathbb{P}\{T < \infty\} = 1$ ,  $\mathbb{E}[|M_T|] < \infty$ , and for each  $n$ ,

$$
\lim_{n \rightarrow \infty} \mathbb{E} [ | M_{n} | 1 \{T > n \} ] = 0. \tag {1.8}
$$

Then,

$$
\mathbb{E} \left[ M_{T} \right] = \mathbb{E} \left[ M_{0} \right].
$$

Let us check that the martingale betting strategy does not satisfy the conditions of the theorem (it better not since it does not satisfy the conclusion!) In fact, it does not satisfy (1.8). For this strategy, if  $T > n$ , then we have lost  $n$  times and  $W_{n} = 1 - 2^{n}$ . Also,  $\mathbb{P}\{T > n\} = 2^{-n}$ . Therefore,

$$
\lim_{n \rightarrow \infty} \mathbb{E} \left[ | W_{n} |   1 \{T > n \} \right] = \lim_{n \rightarrow \infty} \left(2^{n} - 1\right)   2^{- n} = 1 \neq 0.
$$

Checking condition (1.8) can be difficult in general. We will give one criterion which is useful.

Theorem 1.3.3 (Optional Sampling Theorem III). Suppose  $T$  is a stopping time and  $M_{n}$  is a martingale with respect to  $\{\mathcal{F}_n\}$ . Suppose that  $\mathbb{P}\{T < \infty\} = 1$ ,  $\mathbb{E}[|M_T|] < \infty$ , and that there exists  $C < \infty$  such that for each  $n$ ,

$$
\mathbb{E} \left[ \left| M_{n \wedge T} \right|^{2} \right] \leq C. \tag {1.9}
$$

Then,

$$
\mathbb{E} \left[ M_{T} \right] = \mathbb{E} \left[ M_{0} \right].
$$

To prove this theorem, first note that with probability one,

$$
| M_{T} |^{2} = \lim_{n \to \infty} | M_{T \wedge n} |^{2} 1 \{T \leq n \},
$$

and hence by the Hölder inequality and the monotone convergence theorem,

$$
\mathbb{E} \left[ | M_{T} | \right]^{2} \leq \mathbb{E} \left[ | M_{T} |^{2} \right] = \lim_{n \to \infty} \mathbb{E} \left[ | M_{T \wedge n} |^{2} \mid 1 \{T \leq n \} \right] \leq C.
$$

We need to show that (1.9) implies (1.8). If  $b > 0$ , then for every  $n$ ,

$$
\mathbb{E} \left[ | M_{n} | 1 \{| M_{n} | \geq b, T > n \} \right] \leq \frac{\mathbb{E} [ | M_{n \wedge T} |^{2} ]}{b} \leq \frac{C}{b}.
$$

Therefore,

$$
\begin{array}{l} \mathbb{E} \left[ | M_{n} | 1 \{T > n \} \right] = \mathbb{E} \left[ | M_{n} | 1 \{T > n, | M_{n} | \geq b \} \right] \\ + \mathbb{E} \left[ | M_{n} | 1 \{T > n, | M_{n} | <   b \} \right] \\ \leq \frac{C}{b} + b \mathbb{P} \{T > n \}. \\ \end{array}
$$

Hence,

$$
\limsup_{n\to \infty}\mathbb{E}\left[|M_{n}| 1\{T > n\} \right]\leq \frac{C}{b} +b\lim_{n\to \infty}\mathbb{P}\{T > n\} = \frac{C}{b}.
$$

Since this holds for every  $b > 0$  we get (1.8).

Example 1.3.1. Gambler's ruin for random walk. Let  $X_{1}, X_{2}, \ldots$  be independent, coin-tosses as in (1.6) and let

$$
S_{n} = 1 + X_{1} + \dots + X_{n}.
$$

$S_{n}$  is called simple (symmetric) random walk starting at 1. We have shown that  $S_{n}$  is a martingale. Let  $K > 1$  be a positive integer and let  $T$  denote the first time  $n$  such that  $S_{n} = 0$  or  $S_{n} = K$ . Then  $M_{n} = S_{n \wedge T}$  is a martingale. Also  $0 \leq M_{n} \leq K$  for all  $n$ , so (1.9) is satisfied. We can apply the optional sampling theorem to deduce that

$$
1 = M_{0} = \mathbb{E} [ M_{T} ] = 0 \cdot \mathbb{P} \{M_{T} = 0 \} + K \cdot \mathbb{P} \{M_{T} = K \}.
$$

By solving, we get

$$
\mathbb{P} \{M_{T} = K \} = \frac{1}{K}.
$$

This relation is sometimes called the gambler's ruin estimate for the random walk. Note that

$$
\lim_{K \to \infty} \mathbb{P} \{M_{T} = K \} = 0.
$$

If we consider 1 to be the starting stake of a gambler and  $K$  to be the amount held by a casino, this shows that with a fair game, the gambler will almost surely lose. If  $\tau = \min \{n : S_n = 0\}$ , then the last equality implies that  $\mathbb{P}\{\tau < \infty\} = 1$ . The property that the walk always returns to the origin is called recurrence.

Example 1.3.2. Let  $S_{n} = X_{1} + \dots + X_{n}$  be simple random walk starting at 0. We have seen that

$$
M_{n} = S_{n}^{2} - n
$$

is a martingale. Let  $J, K$  be positive integers and let

$$
T = \min  \left\{n: S_{n} = - J \text{or} S_{n} = K \right\}.
$$

As in Example 1.3.1, we have

$$
0 = \mathbb{E} [ S_{0} ] = \mathbb{E} [ S_{T} ] = [ 1 - \mathbb{P} \{S_{T} = K \} ] \cdot (- J) + \mathbb{P} \{S_{T} = K \} \cdot K,
$$

and solving gives

$$
\mathbb{P} \{S_{T} = K \} = \frac{J}{J + K}.
$$

In Exercise 1.13 it is shown that there exists  $C < \infty$  such that for all  $n \in \mathbb{E}[M_{n\wedge T}^2] \leq C$ . Hence we can use Theorem 1.3.3 to conclude that

$$
0 = \mathbb{E} \left[ M_{0} \right] = \mathbb{E} \left[ M_{T} \right] = \mathbb{E} \left[ S_{T}^{2} \right] - \mathbb{E} \left[ T \right].
$$

Moreover,

$$
\begin{array}{l} \mathbb{E} \left[ S_{T}^{2} \right] = J^{2} \mathbb{P} \{S_{T} = - J \} + K^{2} \mathbb{P} \{S_{T} = K \} \\ = J^{2} \frac{K}{J + K} + K^{2} \frac{J}{J + K} = J K. \\ \end{array}
$$

Therefore,

$$
\mathbb{E} [ T ] = \mathbb{E} \left[ S_{T}^{2} \right] = J K.
$$

In particular, the expected amount of time for the random walker starting at the origin to get distance  $K$  from the origin is  $K^2$ .

Example 1.3.3. As in Example 1.3.2, let  $S_{n} = X_{1} + \dots +X_{n}$  be simple random walk starting at 0. Let

$$
T = \min  \{n: S_{n} = 1 \}, \quad T_{J} = \min  \{n: S_{n} = 1 \text{or} S_{n} = - J \}.
$$

Note that  $T = \lim_{J\to \infty}T_J$  and

$$
\mathbb{P} \{T = \infty \} = \lim_{J \to \infty} \mathbb{P} \left\{S_{T_{J}} = - J \right\} = \lim_{J \to \infty} \frac{1}{J + 1} = 0.
$$

Therefore,  $\mathbb{P}\{T < \infty\} = 1$ , although Example 1.3.2 shows that for every  $J$ ,

$$
\mathbb{E} [ T ] \geq \mathbb{E} \left[ T_{J} \right] = J,
$$

and hence  $\mathbb{E}[T] = \infty$ . Also,  $S_{T} = 1$ , so we do not have  $\mathbb{E}[S_0] = \mathbb{E}[S_T]$ . From this we can see that (1.8) and (1.9) are not satisfied by this example.

# 1.4 Martingale convergence theorem

The martingale convergence theorem describes the behavior of a martingale  $M_{n}$  as  $n\to \infty$

Theorem 1.4.1 (Martingale Convergence Theorem). Suppose  $M_{n}$  is a martingale with respect to  $\{\mathcal{F}_n\}$  and there exists  $C < \infty$  such that  $\mathbb{E}[|M_n|] \leq C$  for all  $n$ . Then there exists a random variable  $M_{\infty}$  such that with probability one

$$
\lim_{n \to \infty} M_{n} = M_{\infty}.
$$

It does not follow from the theorem that  $\mathbb{E}[M_{\infty}] = \mathbb{E}[M_0]$ . For example, the martingale betting strategy satisfies the conditions of the theorem since

$$
\mathbb{E} \left[ | | W_{n} | | \right] = (1 - 2^{- n}) \cdot 1 + (2^{n} - 1) \cdot 2^{- n} \leq 2.
$$

However,  $W_{\infty} = 1$  and  $W_{0} = 0$ .

for all  $n$ . Suppose  $a < b$  are real numbers. We will show that it is impossible for the martingale to fluctuate infinitely often below  $a$  and above  $b$ . Define a sequence of stopping times by

$$
S_{1} = \min  \{n: M_{n} \leq a \}, \quad T_{1} = \min  \{n > S_{1}: M_{n} \geq b \},
$$

and for  $j > 1$

$$
S_{j} = \min  \{n > T_{j - 1}: M_{n} \leq a \},
$$

$$
T_{j} = \min  \{n > S_{j}: M_{n} \geq b \}.
$$

We set up the discrete stochastic integral

$$
W_{n} = \sum_{k = 0}^{n} B_{k} \left[ M_{k} - M_{k - 1} \right],
$$

with  $B_{n} = 0$  if  $n - 1 < S_{1}$  and

$$
B_{n} = 1 \quad \text{if} S_{j} \leq n - 1 <   T_{j},
$$

$$
B_{n} = 0 \quad \text{if} T_{j} \leq n - 1 <   S_{j + 1}.
$$

In other words, every time the "price" drops below  $a$  we buy a unit of the asset and hold onto it until the price goes above  $b$  at which time we sell. Let  $U_{n}$  denote the number of times by time  $n$  that we have seen a fluctuation; that is,

$$
U_{n} = j \quad \text{if} \quad T_{j} <   n \leq T_{j + 1}.
$$

We call  $U_{n}$  the number of upcrossings by time  $n$ . Every upcrossing results in a profit of at least  $b - a$ . From this we see that

$$
W_{n} \geq U_{n} (b - a) + (M_{n} - a).
$$

The term  $a - M_{n}$  represents a possible loss caused by holding a share of the asset at the current time. Since  $W_{n}$  is a martingale, we know that  $\mathbb{E}[W_n] = \mathbb{E}[W_0] = 0$ , and hence

$$
\mathbb{E} \left[ U_{n} \right] \leq \frac{\mathbb{E} \left[ a - M_{n} \right]}{b - a} \leq \frac{| a | + \mathbb{E} \left[ | M_{n} | \right]}{b - a} \leq \frac{| a | + C}{b - a}.
$$

This holds for every  $n$ , and hence

$$
\mathbb{E} [ U_{\infty} ] \leq \frac{| a | + C}{b - a} <   \infty .
$$

In particular with probability one,  $U_{\infty} < \infty$ , and hence there are only a finite number of fluctuations. We now allow  $a, b$  to run over all rational numbers to see that with probability one,

$$
\liminf_{n\to \infty}M_{n} = \limsup_{n\to \infty}M_{n}.
$$

Therefore, the limit

$$
M_{\infty} = \lim_{n \rightarrow \infty} M_{n}
$$

exists. We have not yet ruled out the possibility that  $M_{\infty}$  is  $\pm \infty$ , but it is not difficult to see that if this occurred with positive probability, then  $\mathbb{E}[|M_n|]$  would not be uniformly bounded.

To illustrate the martingale convergence theorem, we will consider another example of a martingale called Polya's urn. Suppose we have an urn with red and green balls. At time  $n = 0$ , we start with one red ball and one green ball. At each positive integer time we choose a ball at random from the urn (with each ball equally likely to be chosen), look at the color of the ball, and then put the ball back in with another ball of the same color. Let  $R_{n}, G_{n}$  denote the number of red and green balls in the urn after the draw at time  $n$  so that

$$
R_{0} = G_{0} = 1, \quad R_{n} + G_{n} = n + 2,
$$

and let

$$
M_{n} = \frac{R_{n}}{R_{n} + G_{n}} = \frac{R_{n}}{n + 2}
$$

be the fraction of red balls at this time. Let  $\mathcal{F}_n$  denote the information in the data  $M_1, \ldots, M_n$ , which one can check is the same as the information in  $R_1, R_2, \ldots, R_n$ . Note that the probability that a red ball is chosen at time  $n$  depends only on the number (or fraction) of red balls in the urn before choosing. It does not depend on what order the red and green balls were put in. This is an example of the Markov property. This concept will appear a number of times for us, so let us define it.

Definition A discrete time process  $Y_0, Y_1, Y_2, \ldots$  is called Markov if for each  $n$ , the conditional distribution of

$$
Y_{n + 1}, Y_{n + 2}, \ldots
$$

given  $Y_0, Y_1, \ldots, Y_n$  is the same as the conditional distribution given  $Y_n$ . In other words, the only thing about the past and present that is useful for predicting the future is the current value of the process.

We can describe the rule of Polya's urn by

$$
\begin{array}{l} \mathbb{P} \left\{R_{n + 1} = R_{n} + 1 \mid \mathcal{F}_{n} \right\} = 1 - \mathbb{P} \left\{R_{n + 1} = R_{n} \mid \mathcal{F}_{n} \right\} = \\ \mathbb{P} \{R_{n + 1} = R_{n} + 1 \mid M_{n} \} = \frac{R_{n}}{n + 2} = M_{n}. \\ \end{array}
$$

We claim that  $M_{n}$  is a martingale with respect to  $\mathcal{F}_n$ . To check this,

$$
\begin{array}{l} E \left[ M_{n + 1} \mid \mathcal{F}_{n} \right] = E \left[ M_{n + 1} \mid M_{n} \right] \\ = M_{n} \frac{R_{n} + 1}{n + 3} + [ 1 - M_{n} ] \frac{R_{n}}{n + 3} \\ = \frac{R_{n} \left(R_{n} + 1\right)}{(n + 2) (n + 3)} + \frac{(n + 2 - R_{n}) R_{n}}{(n + 2) (n + 3)} \\ = \frac{R_{n} (n + 3)}{(n + 2) (n + 3)} = M_{n}. \\ \end{array}
$$

Since  $\mathbb{E}[|M_n|] = \mathbb{E}[M_n] = \mathbb{E}[M_0] = 1 / 2$ , this martingale satisfies the conditions of the martingale convergence theorem. (In fact, the same argument shows that every martingale that stays nonnegative satisfies the conditions.) Hence, there exists a random variable  $M_{\infty}$  such that with probability one,

$$
\lim_{n \to \infty} M_{n} = M_{\infty}.
$$

It turns out that the random variable  $M_{n}$  is really random in the sense that it has a nontrivial distribution. In Exercise 1.11 you will show that for each  $n$ , the distribution of  $M_{n}$  is uniform on

$$
\left\{\frac{1}{n + 2}, \frac{2}{n + 2}, \dots , \frac{n + 1}{n + 2} \right\},
$$

and from this it is not hard to see that  $M_{\infty}$  has a uniform distribution on [0, 1]. You will also be asked to simulate this process to see what happens. There is a lot of randomness in the first few draws to see what fraction of red balls the urn will settle down to. However, for large  $n$  this ratio changes very little; for example, the ratio after 2000 draws is very close to the ratio after 4000 draws.

While Polya's urn seems like a toy model, it arises in a number of places. We will give an example from Bayesian statistics. Suppose that we perform independent trials of an experiment where the probability of success for each experiment is  $\theta$  (such trials are called Bernoulli trials). Suppose that we do not know the value of  $\theta$ , but want to try to deduce it by observing trials. Let  $X_{1}, X_{2}, \ldots$  be independent random variables with

$$
\mathbb{P} \{X_{j} = 1 \} = 1 - \mathbb{P} \{X_{j} = 0 \} = \theta .
$$

The (strong) law of large numbers implies that with probability one,

$$
\lim_{n \rightarrow \infty} \frac{X_{1} + \cdots + X_{n}}{n} = \theta . \tag {1.10}
$$

Hence, if were able to observe infinitely many trials, we could deduce  $\theta$  exactly.

Clearly, we cannot deduce  $\theta$  with  $100\%$  assurance if we see only a finite number of trials. Indeed, if  $0 < \theta < 1$ , there is always a chance that the first  $n$  trials will all be failures and there is a chance they will all be successes. The Bayesian approach to statistics is to assume that  $\theta$  is a random variable with a certain prior distribution. As we observe the data we update to a posterior distribution. We will assume we know nothing initially about the value and choose the prior distribution to the uniform distribution on  $[0,1]$  with density

$$
f_{0} (\theta) = 1, \quad 0 <   \theta <   1.
$$

Suppose that after observing  $n$  trials, we have had  $S_{n} = X_{1} + \dots + X_{n}$  successes. If we know  $\theta$ , then the distribution of  $S_{n}$  is binomial,

$$
\mathbb{P} \{S_{n} = k \mid \theta \} = \binom {n} {k} \theta^{k} (1 - \theta)^{n - k}.
$$

We use a form of the Bayes rule to update the density

$$
f_{n, k} (\theta) := f_{n} (\theta \mid S_{n} = k) = \frac{\mathbb{P} \{S_{n} = k \mid \theta \}}{\int_{0}^{1} \mathbb{P} \{S_{n} = k \mid x \} d x} = C_{n, k} \theta^{k} (1 - \theta)^{n - k},
$$

where  $C_{n,k}$  is the appropriate constant so that  $f_{n,k}$  is a probability density. This is the beta density with parameters  $k + 1$  and  $n - k + 1$ . The probability of

a success on the  $(n + 1)$ st trial given that  $S_{n} = k$  is the conditional expectation of  $\theta$  given  $S_{n} = k$ . A little computation which we omit shows that

$$
\mathbb{E} [ \theta \mid S_{n} = k ] = \int_{0}^{1} \theta f_{n, k} (\theta) d \theta = \frac{k + 1}{n + 2} = \frac{S_{n} + 1}{n + 2}.
$$

These are exactly the transition probabilities for Polya's urn if we view  $S_{n} + 1$  as the number of red balls in the urn ( $S_{n}$  is the number of red balls added to the urn). The martingale convergence theorem can now be viewed as the law of large numbers (1.10) for  $\theta$ . Even though we do not initially know the value of  $\theta$  (and hence treat it as a random variable) we know that the conditional value of  $\theta$  given  $\mathcal{F}_{n}$  approaches  $\theta$ .

Example 1.4.1. We end with a simple example where the conditions of the martingale convergence theorem do not apply. Let  $S_{n} = X_{1} + \dots +X_{n}$  be simple symmetric random walk starting at the origin as in the previous section. Then one can easily see that  $\mathbb{E}[|S_n|]\to \infty$ . For this example, with probability one

$$
\begin{array}{l} \limsup_{n\to \infty}S_{n} = \infty , \\ \liminf_{n\to \infty}S_{n} = -\infty . \\ \end{array}
$$

# 1.5 Square integrable martingales

Definition A martingale  $M_{n}$  is called square integrable if for each  $n$ ,  $\mathbb{E}[M_n^2] < \infty$ .

Note that this condition is not as strong as (1.9). We do not require that there exists a  $C < \infty$  such that  $\mathbb{E}[M_n^2] \leq C$  for each  $n$ . Random variables  $X, Y$  are orthogonal if  $\mathbb{E}[XY] = \mathbb{E}[X]\mathbb{E}[Y]$ . Independent random variables are orthogonal, but orthogonal random variables need not be independent. If  $X_1, \ldots, X_n$  are pairwise orthogonal random variables with mean zero, then  $\mathbb{E}[X_jX_k] = 0$  for  $j \neq k$  and by expanding the square we can see that

$$
\mathbb{E} \left[ (X_{1} + \dots + X_{n})^{2} \right] = \sum_{j = 1}^{n} \mathbb{E} [ X_{j}^{2} ].
$$

This can be thought of as a generalization of the Pythagorean theorem  $a^2 + b^2 = c^2$  for right triangles. The increments of a martingale are not necessarily

independent, but for square integrable martingales they are orthogonal as we now show.

Proposition 1.5.1. Suppose that  $M_{n}$  is a square integrable martingale with respect to  $\{\mathcal{F}_n\}$ . Then if  $m < n$ ,

$$
\mathbb{E} \left[ \left(M_{n + 1} - M_{n}\right) \left(M_{m + 1} - M_{m}\right) \right] = 0.
$$

Moreover, for all  $n$ ,

$$
\mathbb{E} [ M_{n}^{2} ] = \mathbb{E} [ M_{0}^{2} ] + \sum_{j = 1}^{n} \mathbb{E} \left[ (M_{j} - M_{j - 1})^{2} \right].
$$

Proof. If  $m < n$ , then  $M_{m+1} - M_m$  is  $\mathcal{F}_n$ -measurable, and hence

$$
\begin{array}{l} E \left[ \left(M_{n + 1} - M_{n}\right) \left(M_{m + 1} - M_{m}\right) \mid \mathcal{F}_{n} \right] \\ = \left(M_{m + 1} - M_{m}\right) E \left[ M_{n + 1} - M_{n} \mid \mathcal{F}_{n} \right] = 0. \\ \end{array}
$$

Hence

$$
\begin{array}{l} \mathbb{E} \left[ \left(M_{n + 1} - M_{n}\right) \left(M_{m + 1} - M_{m}\right) \right] \\ = \mathbb{E} \left[ E \left[ \left(M_{n + 1} - M_{n}\right) \left(M_{m + 1} - M_{m}\right) \mid \mathcal{F}_{n} \right] \right] = 0. \\ \end{array}
$$

Also, if we set  $M_{-1} = 0$

$$
\begin{array}{l} M_{n}^{2} = \left[ M_{0} + \sum_{j = 1}^{n} (M_{j} - M_{j - 1}) \right]^{2} \\ = M_{0}^{2} + \sum_{j = 1}^{n} (M_{j} - M_{j - 1})^{2} + \sum_{j \neq k} (M_{j} - M_{j - 1}) (M_{k} - M_{k - 1}). \\ \end{array}
$$

Taking expectations of both sides gives the second conclusion.

The natural place to discuss the role of orthogonality in the study of square integrable martingales is  $L^2 = L^2(\Omega, \mathcal{F}, \mathbb{P})$ , the space of square integrable random variables. This is a (real) Hilbert space under the inner product

$$
(X, Y) = \mathbb{E} [ X Y ].
$$

Two mean zero random variables are orthogonal if and only if  $(X,Y) = 0$ . The conditional expectation has a nice interpretation in  $L^2$ . Suppose  $Y$  is a square integrable random variable and  $\mathcal{G}$  is a sub- $\sigma$ -algebra. Then  $L^2(\Omega, \mathcal{G}, \mathbb{P})$  is a closed subspace of  $L^2(\Omega, \mathcal{F}, \mathbb{P})$  and the conditional expectation  $\mathbb{E}[Y \mid \mathcal{G}]$  is the same as the Hilbert space projection onto the subspace. It can also be characterized as the  $\mathcal{G}$ -measurable random variable  $Z$  that minimizes the mean-squared error

$$
\mathbb{E} \left[ (Y - Z)^{2} \right].
$$

The reason  $L^2$  rather than  $L^p$  for other values of  $p$  is so useful in because of the inner product which gives the idea of orthogonality.

# 1.6 Integrals with respect to random walk

Suppose that  $X_{1}, X_{2}, \ldots$  are independent, identically distributed random variables with mean zero and variance  $\sigma^2$ . The two main examples we will use are:

- Binomial or coin-tossing random variables,

$$
\mathbb{P} \{X_{j} = 1 \} = \mathbb{P} \{X_{j} = - 1 \} = \frac{1}{2},
$$

in which case  $\sigma^2 = 1$

- Normal increments where  $X_{j} \sim N(0, \sigma^{2})$ . We write  $Z \sim N(\mu, \sigma^{2})$  if  $Z$  has a normal distribution with mean  $\mu$  and variance  $\sigma^{2}$ .

Let  $S_{n} = X_{1} + \dots +X_{n}$  and let  $\{\mathcal{F}_n\}$  denote the filtration generated by  $X_{1},\ldots ,X_{n}$ . A sequence of random variables  $J_{1},J_{2},\ldots$  is called predictable (with respect to  $\{\mathcal{F}_n\}$ ) if for each  $n$ ,  $J_{n}$  is  $\mathcal{F}_{n - 1}$ -measurable. Recall that this is the condition that makes  $J_{n}$  allowable "bets" on the martingale in the sense of the discrete stochastic integral.

Suppose  $J_{1}, J_{2}, \ldots$  is a predictable sequence with  $\mathbb{E}[J_n^2] < \infty$  for each  $n$ . The integral of  $J_{n}$  with respect to  $S_{n}$  is defined by

$$
Z_{n} = \sum_{j = 1}^{n} J_{j} X_{j} = \sum_{j = 1}^{n} J_{j} \Delta S_{j}.
$$

There are three important properties that the integral satisfies.

- Martingale property. The integral  $Z_{n}$  is a martingale with respect to  $\{\mathcal{F}_n\}$ . We showed this in Section 1.2.  
- Linearity. If  $J_{n}, K_{n}$  are predictable sequences and  $a, b$  constants, then  $aJ_{n} + bK_{n}$  is a predictable sequence and

$$
\sum_{j = 1}^{n} \left(a J_{j} + b K_{j}\right) \Delta S_{j} = a \sum_{j = 1}^{n} J_{j} \Delta S_{j} + b \sum_{j = 1}^{n} K_{j} \Delta S_{j}.
$$

This is immediate.

- Variance rule

$$
\operatorname{Var} \left[ \sum_{j = 1}^{n} J_{j} \Delta S_{j} \right] = \mathbb{E} \left[ \left(\sum_{j = 1}^{n} J_{j} \Delta S_{j}\right)^{2} \right] = \sigma^{2} \sum_{j = 1}^{n} \mathbb{E} \left[ J_{j}^{2} \right].
$$

To see this we first use the orthogonality of martingale increments to write

$$
\mathbb{E} \left[ \left(\sum_{j = 1}^{n} J_{j} \Delta S_{j}\right)^{2} \right] = \sum_{j = 1}^{n} \mathbb{E} \left[ J_{j}^{2} X_{j}^{2} \right].
$$

Since  $J_{j}$  is  $\mathcal{F}_{j-1}$ -measurable and  $X_{j}$  is independent of  $\mathcal{F}_{j-1}$ , we can see that

$$
\begin{array}{l} \mathbb{E} \left[ J_{j}^{2} X_{j}^{2} \right] = \mathbb{E} \left[ E \left[ J_{j}^{2} X_{j}^{2} \mid \mathcal{F}_{j - 1} \right] \right] \\ = \mathbb{E} \left[ J_{j}^{2} E \left[ X_{j}^{2} \mid \mathcal{F}_{j - 1} \right] \right] \\ = \mathbb{E} \left[ J_{j}^{2} \mathbb{E} [ X_{j}^{2} ] \right] = \sigma^{2} \mathbb{E} [ J_{j}^{2} ]. \\ \end{array}
$$

# 1.7 A maximal inequality

There is another result about martingales that we will use.

Theorem 1.7.1. Suppose  $Y_{n}$  is a nonnegative submartingale with respect to  $\{\mathcal{F}_n\}$ , and

$$
\overline {{Y}}_{n} = \max  \{Y_{0}, Y_{1}, \dots , Y_{n} \}.
$$

Then for every  $a > 0$

$$
\mathbb{P} \{\overline {{Y}}_{n} \geq a \} \leq a^{- 1} \mathbb{E} [ Y_{n} ].
$$

Proof. Let  $T$  denote the smallest integer  $k$  such that  $Y_{k} \geq a$ . Then

$$
\left\{\overline {{Y}}_{n} \geq a \right\} = \bigcup_{k = 0}^{n} A_{k}, \quad A_{k} = \{T = k \}.
$$

Note that  $A_{k}$  is  $\mathcal{F}_k$ -measurable. Since  $Y_{n}$  is a submartingale,

$$
\mathbb{E} \left[ Y_{n} 1_{A_{k}} \right] = \mathbb{E} \left[ E \left(Y_{n} \mid \mathcal{F}_{k}\right) 1_{A_{k}} \right] \geq \mathbb{E} \left[ Y_{k} 1_{A_{k}} \right].
$$

By summing over  $k$ , we see that

$$
\begin{array}{l} \mathbb{E} \left[ Y_{n} \right] \geq \mathbb{E} \left[ Y_{n} 1 \{\bar {Y}_{n} \geq a \} \right] = \sum_{k = 0}^{n} \mathbb{E} \left[ Y_{n} 1_{A_{k}} \right] \\ \geq \sum_{k = 0}^{n} \mathbb{E} \left[ Y_{k} 1_{A_{k}} \right] = \mathbb{E} \left[ Y_{T} 1 \{\bar {Y}_{n} \geq a \} \right] \geq a \mathbb{P} \{\bar {Y}_{n} \geq a \}. \\ \end{array}
$$

Corollary 1.7.2. If  $M_{n}$  is a square integrable martingale with respect to  $\{\mathcal{F}_n\}$  and

$$
\overline {{M}}_{n} = \max \left\{| M_{0} |, \ldots , | M_{n} | \right\},
$$

then for every  $a > 0$

$$
\mathbb{P} \left\{\overline {{M}}_{n} \geq a \right\} \leq a^{- 2} \mathbb{E} \left[ M_{n}^{2} \right].
$$

Proof. In Exercise 1.15, it is shown that  $M_n^2$  is a submartingale, and we can use the previous theorem.

# 1.8 Exercises

Exercise 1.1. Suppose we roll two dice, a red and a green one, and let  $X$  be the value on the red die and  $Y$  the value on the green die. Let  $Z = XY$ .

1. Let  $W = E(Z \mid X)$ . What are the possible values for  $W$ ? Give the distribution of  $W$ .  
2. Do the same exercise for  $U = E(X \mid Z)$ .  
3. Do the same exercise for  $V = E(Y \mid X, Z)$

# 1.8. EXERCISES

Exercise 1.2. Suppose we roll two dice, a red and a green one, and let  $X$  be the value on the red die and  $Y$  the value on the green die. Let  $Z = X / Y$ .

1. Find  $E[(X + 2Y)^2 \mid X]$ .  
2. Find  $E[(X + 2Y)^2 \mid X, Z]$ .  
3. Find  $E[X + 2Y \mid Z]$ .  
4. Let  $W = E[Z \mid X]$ . What are the possible values for  $W$ ? Give the distribution of  $W$ .

Exercise 1.3. Suppose  $X_{1}, X_{2}, \ldots$  are independent random variables with

$$
\mathbb{P} \{X_{j} = 2 \} = 1 - \mathbb{P} \{X_{j} = - 1 \} = \frac{1}{3}.
$$

Let  $S_{n} = X_{1} + \dots +X_{n}$  and let  $\mathcal{F}_n$  denote the information in  $X_{1},\ldots ,X_{n}$ .

1. Find  $\mathbb{E}[S_n],\mathbb{E}[S_n^2 ],\mathbb{E}[S_n^3 ]$  
2. If  $m < n$ , find

$$
E \left[ S_{n} \mid \mathcal{F}_{m} \right], E \left[ S_{n}^{2} \mid \mathcal{F}_{m} \right], E \left[ S_{n}^{3} \mid \mathcal{F}_{m} \right].
$$

3. If  $m < n$ , find  $E[X_m \mid S_n]$ .

Exercise 1.4. Repeat Exercise 1.3 assuming that

$$
\mathbb{P} \{X_{j} = 3 \} = \mathbb{P} \{X_{j} = - 1 \} = \frac{1}{2}.
$$

Exercise 1.5. Suppose  $X_{1}, X_{2}, \ldots$  are independent random variables with

$$
\mathbb{P} \{X_{j} = 1 \} = \mathbb{P} \{X_{j} = - 1 \} = \frac{1}{2}.
$$

Let  $S_{n} = X_{1} + \dots +X_{n}$  .Find

$$
E \left(\sin S_{n} \mid S_{n}^{2}\right).
$$

Exercise 1.6. In this exercise, we consider simple, nonsymmetric random walk. Suppose  $1/2 < q < 1$  and  $X_1, X_2, \ldots$  are independent random variables with

$$
\mathbb{P} \{X_{j} = 1 \} = 1 - \mathbb{P} \{X_{j} = - 1 \} = q.
$$

Let  $S_0 = 0$  and  $S_n = X_1 + \dots + X_n$ . Let  $\mathcal{F}_n$  denote the information contained in  $X_1, \ldots, X_n$ .

1. Which of these is  $S_{n}$ : martingale, submartingale, supermartingale (more than one answer is possible)?  
2. For which values of  $r$  is  $M_{n} = S_{n} - rn$  a martingale?  
3. Let  $\theta = (1 - q) / q$  and let

$$
M_{n} = \theta^{S_{n}}.
$$

Show that  $M_{n}$  is a martingale.

4. Let  $a, b$  be positive integers, and

$$
T_{a, b} = \min  \{j: S_{j} = b \text{or} S_{j} = - a \}.
$$

Use the optional sampling theorem to determine

$$
\mathbb{P} \left\{S_{T_{a, b}} = b \right\}.
$$

5. Let  $T_{a} = T_{a,\infty}$ . Find

$$
\mathbb{P} \{T_{a} <   \infty \}.
$$

Exercise 1.7. Suppose two people want to play a game in which person A has probability  $2/3$  of winning. However, the only thing that they have is a fair coin which they can flip as many times as they want. They wish to find a method that requires only a finite number of coin flips.

1. Give one method to use the coins to simulate an experiment with probability  $\frac{2}{3}$  of success. The number of flips needed can be random, but it must be finite with probability one.  
2. Suppose  $K < \infty$ . Explain why there is no method such that with probability one we flip the coin at most  $K$  times.

Exercise 1.8. Repeat the last exercise with  $2/3$  replaced by  $1/\pi$ .

Exercise 1.9. Let  $X_{1}, X_{2}, \ldots$  be independent, identically distributed random variables with

$$
\mathbb{P} \{X_{j} = 2 \} = \frac{1}{3}, \quad \mathbb{P} \{X_{j} = \frac{1}{2} \} = \frac{2}{3}.
$$

Let  $M_0 = 1$  and for  $n \geq 1$ ,  $M_n = X_1X_2 \dots X_n$ .

1. Show that  $M_{n}$  is a martingale.

# 1.8. EXERCISES

2. Explain why  $M_{n}$  satisfies the conditions of the martingale convergence theorem.  
3. Let  $M_{\infty} = \lim_{n\to \infty}M_n$ . Explain why  $M_{\infty} = 0$ . (Hint: there are at least two ways to show this. One is to consider  $\log M_n$  and use the law of large numbers. Another is to note that with probability one  $M_{n + 1} / M_n$  does not converge.)  
4. Use the optional sampling theorem to determine the probability that  $M_{n}$  ever attains a value as large as 64.  
5. Does there exist a  $C < \infty$  such that  $\mathbb{E}[M_n^2] \leq C$  for all  $n$ ?

Exercise 1.10. Let  $X_{1}, X_{2}, \ldots$  be independent, identically distributed random variables with

$$
\mathbb{P} \{X_{j} = 1 \} = q, \quad \mathbb{P} \{X_{j} = - 1 \} = 1 - q.
$$

Let  $S_0 = 0$  and for  $n \geq 1$ ,  $S_n = X_1 + X_2 + \dots + X_n$ . Let  $Y_n = e^{S_n}$ .

1. For which value of  $q$  is  $Y_{n}$  a martingale?  
2. For the remaining parts of this exercise assume  $q$  takes the value from part 1. Explain why  $Y_{n}$  satisfies the conditions of the martingale convergence theorem.  
3. Let  $Y_{\infty} = \lim_{n}Y_{n}$ . Explain why  $Y_{\infty} = 0$ . (Hint: there are at least two ways to show this. One is to consider  $\log Y_{n}$  and use the law of large numbers. Another is to note that with probability one  $Y_{n + 1} / Y_{n}$  does not converge.)  
4. Use the optional sampling theorem to determine the probability that  $Y_{n}$  ever attains a value greater than 100.  
5. Does there exist a  $C < \infty$  such that  $\mathbb{E}[Y_n^2] \leq C$  for all  $n$ ?

Exercise 1.11. This exercise concerns Polya's urn and has a computing/simulation component. Let us start with one red and one green ball as in the lecture and let  $M_{n}$  be the fraction of red balls at the  $n$ th stage.

1. Show that the distribution of  $M_{n}$  is uniform on the set

$$
\left\{\frac{1}{n + 2}, \frac{2}{n + 2}, \dots , \frac{n + 1}{n + 2} \right\}.
$$

(Use mathematical induction, that is, note that it is obviously true for  $n = 0$  and show that if it is true for  $n$  then it is true for  $n + 1$ .)

2. Write a short program that will simulate this urn. Each time you run the program note the fraction of red balls after 600 draws and after 1200 draws. Compare the two fractions. Then, repeat this twenty times.

Exercise 1.12. Consider the martingale betting strategy as discussed in Section 1.2. Let  $W_{n}$  be the "winnings" at time  $n$ , which for positive  $n$  equals either 1 or  $1 - 2^{n}$ .

1. Is  $W_{n}$  a square integrable martingale?  
2. If  $\Delta_n = W_n - W_{n-1}$  what is  $\mathbb{E}[\Delta_n^2]$ ?  
3. What is  $\mathbb{E}[W_n^2 ]$ ?  
4. What is  $E(\Delta_n^2 \mid \mathcal{F}_{n-1})$ ?

Exercise 1.13. Suppose  $S_{n} = X_{1} + \dots +X_{n}$  is simple random walk starting at 0. For any  $K$ , let

$$
T = \min \{n: | S_{n} | = K \}.
$$

- Explain why for every  $j$ ,

$$
\mathbb{P} \{T \leq j + K \mid T > j \} \geq 2^{- K}.
$$

Show that there exists  $c < \infty, \alpha > 0$  such that for all  $j$ ,

$$
\mathbb{P} \{T > j \} \leq c e^{- \alpha j}.
$$

Conclude that  $\mathbb{E}[T^r] < \infty$  for every  $r > 0$ .

- Let  $M_{n} = S_{n}^{2} - n$ . Show there exists  $C < \infty$  such that for all  $n$ ,

$$
\mathbb{E} \left[ M_{n \wedge T}^{2} \right] \leq C.
$$

Exercise 1.14. Suppose that  $X_{1}, X_{2}, \ldots$  are independent random variables with  $\mathbb{E}[X_j] = 0$ ,  $\operatorname{Var}[X_j] = \sigma_j^2$ , and suppose that

$$
\sum_{n = 1}^{\infty} \sigma_{n}^{2} <   \infty .
$$

Let  $S_0 = 0$  and  $S_n = X_1 + \dots + X_n$  for  $n > 0$ . Let  $\mathcal{F}_n$  denote the information contained in  $X_1, \ldots, X_n$ .

- Show that  $S_{n}$  is a martingale with respect to  $\{\mathcal{F}_n\}$ .  
- Show that there exists  $C < \infty$  such that for all  $n$ ,  $\mathbb{E}[S_n^2] \leq C$ .  
Show that with probability one the limit

$$
S_{\infty} = \lim_{n \to \infty} S_{n},
$$

exists.

Show that

$$
\mathbb{E} [ S_{\infty} ] = 0, \quad \mathrm{Var} [ S_{\infty} ] = \sum_{n = 1}^{\infty} \sigma_{n}^{2}.
$$

# Exercise 1.15.

- Suppose  $Y$  is a random variable and  $\phi$  is a convex function, that is, if  $0 \leq \lambda \leq 1$ ,

$$
\phi (\lambda x + (1 - \lambda) y) \leq \lambda \phi (x) + (1 - \lambda) \phi (y).
$$

Suppose that  $\mathbb{E}[|\phi(Y)|] < \infty$ . Show that  $E(\phi(Y) \mid X) \geq \phi(E(Y \mid X))$ . (Hint: you will need to review Jensen's inequality.)

- Show that if  $M_{n}$  is a martingale with respect to  $\{\mathcal{F}_n\}$  and  $r \geq 1$ , then  $Y_{n} = |M_{n}|^{r}$  is a submartingale.

# Chapter 2

# Brownian motion

# 2.1 Limits of sums of independent variables

We will discuss two major results about sums of random variables that we hope the reader has seen. They both discuss the limit distribution of

$$
X_{1} + X_{2} + \dots + X_{n}
$$

where  $X_{1}, X_{2}, \ldots, X_{n}$  are independent, identically distributed random variables.

Suppose  $X_{1},X_{2},\ldots$  have mean  $\mu$  and variance  $\sigma^2 <  \infty$  .Let

$$
Z_{n} = \frac{\left(X_{1} + \cdots + X_{n}\right) - n \mu}{\sigma \sqrt{n}}.
$$

We let  $\Phi$  denote the standard normal distribution function,

$$
\Phi (b) = \int_{- \infty}^{b} \frac{1}{\sqrt{2 \pi}} e^{- x^{2} / 2} d x.
$$

While this function cannot be written down explicitly, the numerical values are easily accessible in tables and computer software packages.

Theorem 2.1.1 (Central Limit Theorem). As  $n \to \infty$ , the distribution of  $Z_{n}$  approaches a standard normal distribution. More precisely, if  $a < b$ , then

$$
\lim_{n \to \infty} \mathbb{P} \{a \leq Z_{n} \leq b \} = \Phi (b) - \Phi (a).
$$

This amazing theorem states that no matter what distribution we choose for the  $X_{j}$ , then as long as the distribution has a finite variance, the scaled random variables approach a normal distribution. This is what is referred to in physics literature as a universality result and in the mathematics literature as an invariance principle. The assumption that the random variables are identically distributed can be relaxed somewhat. We will not go into details here, but whenever a quantity can be written as a sum of independent (or at least not too dependent) increments, all of which are small compared to the sum, then the limiting distribution is normal. This is why it is often reasonable to assume normal distributions in nature.

To see a complete proof of Theorem 2.1.1, consult any book on measure-theoretic probability. We will sketch part of the proof which shows how the normal distribution arises. Without loss of generality, we can assume that  $\mu = 0, \sigma^2 = 1$  for otherwise we consider  $Y_j = (X_j - \mu) / \sigma$ . Let  $\phi(t) = \mathbb{E}[e^{itX_j}]$  denote the characteristic function of the increments. Then,  $\phi$  can be expanded near the origin,

$$
\begin{array}{l} \phi (t) = 1 + i \mathbb{E} [ X_{j} ] t + \frac{(i)^{2}}{2} \mathbb{E} [ X_{j}^{2} ] t^{2} + o (t^{2}) \\ = 1 - \frac{t^{2}}{2} + o (t^{2}), \\ \end{array}
$$

where  $o(t^2)$  denotes a function such that  $|o(t^2)| / t^2 \to 0$  as  $t \to 0$ . Using the independence of the  $X_j$ , we see that the characteristic function of  $Z_n$  is

$$
\phi_{Z_{n}} (t) = \phi (t / \sqrt{n})^{n} = \left[ 1 - \frac{t^{2}}{2 n} + o \left(\frac{t^{2}}{n}\right) \right]^{n} \longrightarrow e^{- t^{2} / 2}.
$$

The right-hand side is the characteristic function of a standard normal random variable.

When one considers sums of independent random variables where a few terms contribute the bulk of the sum, then one does not expect to get normal limits. The prototypical example of a nonnormal limit is the Poisson distribution. Suppose  $\lambda > 0$  and  $X_1^{(n)}, X_2^{(n)}, \ldots, X_n^{(n)}$  are independent random variables each with

$$
\mathbb{P} \left\{X_{j}^{(n)} = 1 \right\} = 1 - \mathbb{P} \left\{X_{j}^{(n)} = 0 \right\} = \frac{\lambda}{n}.
$$

Let

$$
Y_{n} = X_{1}^{(n)} + \dots + X_{n}^{(n)},
$$

and note that for each  $n$ ,  $\mathbb{E}[Y_n] = \lambda$ . Recall that a random variable  $Y$  has a Poisson distribution with mean  $\lambda$  if for each nonnegative integer  $k$ ,

$$
\mathbb{P} \{Y = k \} = e^{- \lambda} \frac{\lambda^{k}}{k !}.
$$

Theorem 2.1.2 (Convergence to the Poisson distribution). As  $n \to \infty$ , the distribution of  $Y_{n}$  approaches a Poisson distribution with mean  $\lambda$ . More precisely, for every nonnegative integer  $k$ ,

$$
\lim_{n \to \infty} \mathbb{P} \left\{Y_{n} = k \right\} = e^{- \lambda} \frac{\lambda^{k}}{k !}.
$$

Proof. For each  $n$ ,  $Y_{n}$  has a binomial distribution with parameters  $n$  and  $\lambda / n$ , and hence

$$
\begin{array}{l} \lim_{n \to \infty} \mathbb{P} \left\{Y_{n} = k \right\} \\ = \lim_{n \to \infty} \binom {n} {k} \left(\frac{\lambda}{n}\right)^{k} \left(1 - \frac{\lambda}{n}\right)^{n - k} \\ = \frac{\lambda^{k}}{k !} \lim_{n \to \infty} \frac{n (n - 1) \cdots (n - k + 1)}{n^{k}} \left(1 - \frac{\lambda}{n}\right)^{- k} \left(1 - \frac{\lambda}{n}\right)^{n} \\ \end{array}
$$

Since we are fixing  $k$  and letting  $n\to \infty$ , one can see that

$$
\lim_{n \to \infty} \frac{n (n - 1) \cdots (n - k + 1)}{n^{k}} \left(1 - \frac{\lambda}{n}\right)^{- k} = 1,
$$

and in calculus one learns the limit

$$
\lim_{n \rightarrow \infty} \left(1 - \frac{\lambda}{n}\right)^{n} = e^{- \lambda}.
$$

□

We will be taking limits of processes as the time increment goes to zero. The kind of limit we expect will depend on the assumptions. When we take limits of random walks with finite variance, then we are in the regime of the

central limit theorem, and we will expect normal distributions. Also, because all of the increments are small with respect to the sum, the limit process will have paths that are continuous. Here the limit is Brownian motion which we discuss in this section.

In the Poisson case, the limit distribution will not have continuous paths but rather will be a jump process. The prototypical case is the Poisson process with intensity  $\lambda$ . In this case,  $N_{t}$  denotes the number of occurrences of an event by time  $t$ . The function  $t \mapsto N_t$  takes on nonnegative integer values and the jumps are always of size  $+1$ . It satisfies the following conditions.

- For each  $s < t$ , the random variable  $N_{t} - N_{s}$  has a Poisson distribution with parameter  $\lambda (t - s)$ .  
- For each  $s < t$ , the random variable  $N_{t} - N_{s}$  is independent of the random variables  $\{N_{r} : 0 \leq r \leq s\}$ .

We discuss this further in Section 6.2.

# 2.2 Multivariate normal distribution

Although the normal or Gaussian distribution is a little inconvenient in the sense that the distribution function cannot be computed exactly, there are many other aspects that make the distribution very convenient. In particular, when dealing with many variables, assuming a joint or multivariate normal distribution makes computations tractable. In this section we will give the basic definitions. Roughly speaking, the basic assumption is that if  $(X_{1},\ldots ,X_{n},Y)$  have a joint normal distribution then not only does each variable have a normal distribution but also, the conditional distribution of  $Y$  given  $X_{1},\ldots ,X_{n}$  is normal with mean  $E[Y|X_1,\dots,X_n]$  and a variance that depends on the joint distribution but not on the observed data points. There are a number of equivalent ways to define a joint normal distribution. We will use the following.

Definition A finite sequence of random variables  $(X_{1},\ldots ,X_{n})$  has a joint (or multivariate) normal (or Gaussian) distribution if they are linear combinations of independent standard normal random variables. In other words, if there exist independent random variables  $(Z_{1},\ldots ,Z_{m})$ , each  $N(0,1)$ , and constants  $m_j,a_{jk}$  such that for  $j = 1,\dots ,n$

$$
X_{j} = m_{j} + a_{j 1} Z_{1} + a_{j 2} Z_{2} + \dots + a_{j m} Z_{m}.
$$

Clearly  $\mathbb{E}[X_j] = m_j$ . Let us consider the case of mean-zero (also called centered) joint normals, in which case the equation above can be written in matrix form

$$
\mathbf{X} = A \mathbf{\Sigma Z},
$$

where

$$
\mathbf{X} = \left( \begin{array}{c} X_{1} \\ X_{2} \\ \vdots \\ X_{n} \end{array} \right), \quad \mathbf{Z} = \left( \begin{array}{c} Z_{1} \\ Z_{2} \\ \vdots \\ Z_{m} \end{array} \right),
$$

and  $A$  is the  $n \times m$  matrix with entries  $a_{jk}$ . Each  $X_j$  is a normal random variable with mean zero and variance

$$
\mathbb{E} [ X_{j}^{2} ] = a_{j 1}^{2} + \dots + a_{j m}^{2}.
$$

More generally, the covariance of  $X_{j}$  and  $X_{k}$  is given by

$$
\operatorname{Cov} \left(X_{j}, X_{k}\right) = \mathbb{E} \left[ X_{j} X_{k} \right] = \sum_{l = 1}^{m} a_{j l} a_{k l}.
$$

Let  $\Gamma = AA^T$  be the  $n\times n$  matrix whose entries are

$$
\Gamma_{j k} = \mathbb{E} \left[ X_{j} X_{k} \right].
$$

Then  $\Gamma$  is called the covariance matrix.

We list some important properties. Assume  $(X_{1},\ldots ,X_{n})$  has a joint normal distribution with mean zero and covariance matrix  $\Gamma$ .

- Each  $X_{j}$  has a normal distribution. In fact, if  $b_{1},\ldots ,b_{n}$  are constants, then

$$
b_{1} X_{1} + \dots + b_{n} X_{n},
$$

has a normal distribution. We can see this easily since we can write the sum above as a linear combination of the independent normals  $Z_{1}, \ldots, Z_{m}$ .

- The matrix  $\Gamma$  is symmetric,  $\Gamma_{jk} = \Gamma_{kj}$ . Moreover, it is positive semidefinite which means that if  $\mathbf{b} = (b_1, \ldots, b_n)$  is a vector in  $\mathbb{R}^n$ , then

$$
\mathbf{b} \cdot \Gamma \mathbf{b} = \sum_{j = 1}^{n} \sum_{k = 1}^{n} \Gamma_{j k} b_{j} b_{k} \geq 0. \tag {2.1}
$$

(If the  $\geq$  is replaced with  $>0$  for all  $\mathbf{b} = (b_1, \ldots, b_n) \neq (0, \ldots, 0)$ , then the matrix is called positive definite.) The inequality (2.1) can be derived by noting that the left-hand side is the same as

$$
\mathbb{E} \left[ (b_{1} X_{1} + \dots + b_{n} X_{n})^{2} \right],
$$

which is clearly nonnegative.

- If  $\Gamma$  is a positive semidefinite, symmetric matrix, then it is the covariance matrix for a joint normal distribution. The proof of this fact, which we omit, uses linear algebra to deduce that there exists an  $n \times n$  matrix  $A$  with  $AA^T = \Gamma$ . (The  $A$  is not unique.)  
- The distribution of a mean-zero joint normal is determined by the covariance matrix  $\Gamma$ .

In order to show that the covariance matrix  $\Gamma$  determines the distribution of a mean-zero joint normal, we compute the characteristic function. Suppose that  $\Gamma = AA^T$  where  $A$  is  $n\times n$ . Using the independence of  $Z_{1},\ldots ,Z_{n}$  and the characteristic function of the standard normal,  $\mathbb{E}[e^{itZ_k}] = e^{-t^2 /2}$ , we see that the characteristic function of

$(X_{1},\ldots ,X_{n})$  is

$$
\begin{array}{l} \phi \left(\theta_{1}, \dots , \theta_{n}\right) = \mathbb{E} \left[ \exp \left\{i \left(\theta_{1} X_{1} + \dots + \theta_{n} X_{n}\right) \right\} \right] \\ = \mathbb{E} \left[ \exp \left\{i \sum_{j = 1}^{n} \theta_{j} \sum_{k = 1}^{n} a_{j k} Z_{k} \right\} \right] \\ = \mathbb{E} \left[ \exp \left\{i \sum_{k = 1}^{n} Z_{k} \left(\sum_{j = 1}^{n} \theta_{j} a_{j k}\right) \right\} \right] \\ = \prod_{k = 1}^{n} \mathbb{E} \left[ \exp \left\{i Z_{k} \left(\sum_{j = 1}^{n} \theta_{j} a_{j k}\right) \right\} \right] \\ = \exp \left\{- \frac{1}{2} \sum_{k = 1}^{n} \left(\sum_{j = 1}^{n} \theta_{j} a_{j k}\right)^{2} \right\} \\ = \exp \left\{- \frac{1}{2} \sum_{k = 1}^{n} \sum_{j = 1}^{n} \sum_{l = 1}^{n} \theta_{j} \theta_{i} a_{j k} a_{l k} \right\} \\ = \exp \left\{- \frac{1}{2} \theta A A^{T} \theta^{T} \right\} \\ = \exp \left\{- \frac{1}{2} \theta \Gamma \theta^{T} \right\} \\ \end{array}
$$

where we write  $\theta = (\theta_{1},\dots,\theta_{n})$ . Even though we used  $A$ , which is not unique, in our computation, the answer only involves  $\Gamma$ . Since the characteristic function determines the distribution, the distribution depends only on the covariance matrix.

- If  $\Gamma$  is invertible, then  $(X_{1},\ldots ,X_{n})$  has a density. We write it in the case that the random variables have mean  $\mathbf{m} = (m_1,\dots,m_n)$

$$
f (x_{1}, \ldots , x_{n}) = f (\mathbf{x}) =
$$

$$
\frac{1}{(2 \pi)^{n / 2} \sqrt{\det \Gamma}} \exp \left\{- \frac{(\mathbf{x} - \mathbf{m}) \cdot \Gamma^{- 1} (\mathbf{x} - \mathbf{m})^{T}}{2} \right\}.
$$

Sometimes this density is used as a definition of a joint normal. The formula for the density looks messy, but note that if  $n = 1$ ,  $\mathbf{m} = m, \Gamma = [\sigma^2]$ , then the right-hand side is the density of a  $N(m, \sigma^2)$  random variable.

- If  $(X_{1}, X_{2})$  have a mean-zero joint normal density, and  $\mathbb{E}(X_{1}X_{2}) = 0$ , then  $X_{1}, X_{2}$  are independent random variables. To see this let  $\sigma_{j}^{2} = \mathbb{E}[X_{j}^{2}]$ . Then the covariance matrix of  $(X_{1}, X_{2})$  is the diagonal matrix with diagonal entries  $\sigma_{j}^{2}$ . If  $(Z_{1}, Z_{2})$  are independent  $N(0,1)$  random variables and  $Y_{1} = \sigma_{1}Z_{1}, Y_{2} = \sigma_{2}Z_{2}$ , then by our definition  $(Y_{1}, Y_{2})$  are joint normal with the same covariance matrix. Since the covariance matrix determines the distribution,  $X_{1}, X_{2}$  must be independent,

It is a special property about joint normal random variables that orthogonality implies independence. In our construction of Brownian motion, we will use a particular case, that we state as a lemma.

Proposition 2.2.1. Suppose  $X, Y$  are independent  $N(0,1)$  random variables and

$$
Z = \frac{X + Y}{\sqrt{2}}, \quad W = \frac{X - Y}{\sqrt{2}}.
$$

Then  $Z$  and  $W$  are independent  $N(0,1)$  random variables.

Proof. By definition  $(Z, W)$  has a joint normal distribution and  $Z, W$  clearly have mean 0. Using  $\mathbb{E}[X^2] = \mathbb{E}[Y^2] = 1$  and  $\mathbb{E}[XY] = 0$ , we get

$$
\mathbb{E} [ Z^{2} ] = 1, \quad \mathbb{E} [ W^{2} ] = 1, \quad \mathbb{E} [ Z W ] = 0.
$$

Hence the covariance matrix for  $(Z,W)$  is the identity matrix and this is the covariance matrix for independent  $N(0,1)$  random variables.

# 2.3 Limits of random walks

Brownian motion can be viewed as the limit of random walk as the time and space increments tend to zero. It is necessary to be careful about how the limit is taken. Suppose  $X_{1}, X_{2}, \ldots$  are independent random variables with  $\mathbb{P}\{X_{j} = 1\} = \mathbb{P}\{X_{j} = -1\} = 1/2$  and let

$$
S_{n} = X_{1} + \dots + X_{n}
$$

be the corresponding random walk. Here we have chosen time increment  $\Delta t = 1$  and space increment  $\Delta x = 1$ . Suppose we choose  $\Delta t = 1 / N$  where  $N$  is a large integer. Hence, we view the process at times

$$
\Delta t, 2 \Delta t, 3 \Delta t, \dots ,
$$

and at each time we have a jump of  $\pm \Delta x$ . At time  $1 = N\Delta t$ , the value of the process is

$$
W_{1}^{(N)} = \Delta x \left(X_{1} + \dots + X_{N}\right).
$$

We would like to choose  $\Delta x$  so that  $\mathrm{Var}[W_1^{(N)}] = 1$ , and since

$$
\begin{array}{l} \operatorname{Var} \left[ \Delta x \left(X_{1} + \dots + X_{N}\right) \right] = (\Delta x)^{2} \left[ \operatorname{Var} \left(X_{1}\right) + \dots + \operatorname{Var} \left(X_{N}\right) \right] \\ = (\Delta x)^{2} N, \\ \end{array}
$$

we see that we need to choose

$$
\Delta x = \sqrt{1 / N} = \sqrt{\Delta t}.
$$

We also know from the central limit theorem, that if  $N$  is large, then the distribution of

$$
\frac{X_{1} + \cdots + X_{N}}{\sqrt{N}},
$$

is approximately  $N(0,1)$

Brownian motion could be defined formally as the limit of random walks, but there are subtleties in describing the kind of limit. In the next section, we define it directly using the idea of "continuous random motion". However, the random walk intuition is useful to retain.

# 2.4 Brownian motion

Brownian motion or the Wiener process is a model of random continuous motion. We will start by making the assumptions that underlie the phrase "random continuous motion". Let  $B_{t} = B(t)$  be the value at time  $t$ . For each  $t$ ,  $B_{t}$  is a random variable. A collection of random variables indexed by time is called a stochastic process. We can view the process in two different ways:

- For each  $t$ , there is a random variable  $B_{t}$ , and there are correlations between the values at different times.
- The function  $t \mapsto B(t)$  is a random function. In other words, it is a random variable whose value is a function.

There are three major assumptions about the random variables  $B_{t}$ .

- Stationary increments. If  $s < t$ , then the distribution of  $B_{t} - B_{s}$  is the same as that of  $B_{t - s} - B_{0}$ .  
- Independent increments. If  $s < t$ , the random variable  $B_{t} - B_{s}$  is independent of the values  $B_{r}$  for  $r \leq s$ .  
- Continuous paths. The function  $t \mapsto B_t$  is a continuous function of  $t$ .

We often assume  $B_0 = 0$  for convenience, but we can also take other initial conditions. All of the assumptions above are very reasonable for a model of random continuous motion. However, it is not obvious that these are enough assumptions to characterize our process uniquely. It turns out that they do up to two parameters. One can prove (see Theorem 6.8.4), that if  $B_t$  is a process satisfying the three conditions above, then the distribution of  $B_t$  for each  $t$  must be normal. Suppose  $B_t$  is such a process, and let  $m, \sigma^2$  be the mean and variance of  $B_1$ . If  $s < t$ , then independent, identically distributed increments imply that

$$
\begin{array}{l} \mathbb{E} [ B_{t} ] = \mathbb{E} [ B_{s} ] + \mathbb{E} [ B_{t} - B_{s} ] = \mathbb{E} [ B_{s} ] + \mathbb{E} [ B_{t - s} ], \\ \mathrm{Var} [ B_{t} ] = \mathrm{Var} [ B_{s} ] + \mathrm{Var} [ B_{t} - B_{s} ] = \mathrm{Var} [ B_{s} ] + \mathrm{Var} [ B_{t - s} ]. \\ \end{array}
$$

Using this relation, we can see that  $\mathbb{E}[B_t] = tm$ ,  $\mathrm{Var}[B_t] = t\sigma^2$ . At this point, we have only shown that if a process exists, then the increments must have a normal distribution. We will show that such a process exists. It will be convenient to put the normal distribution in the definition.

Definition A stochastic process  $B_{t}$  is called a (one-dimensional) Brownian motion with drift  $m$  and variance (parameter)  $\sigma^2$  starting at the origin if it satisfies the following.

$B_0 = 0$  

- For  $s < t$ , the distribution of  $B_{t} - B_{s}$  is normal with mean  $m(t - s)$  and variance  $\sigma^2 (t - s)$ .
- If  $s < t$ , the random variable  $B_{t} - B_{s}$  is independent of the values  $B_{r}$  for  $r \leq s$ .  
- With probability one, the function  $t \mapsto B_t$  is a continuous function of  $t$ .

If  $m = 0, \sigma^2 = 1$ , then  $B_t$  is called a standard Brownian motion.

Recall that if  $Z$  has a  $N(0,1)$  distribution and  $Y = \sigma Z + m$ , then  $Y$  has a  $N(m, \sigma^2)$  distribution. Given that it is easy to show the following.

- If  $B_{t}$  is a standard Brownian motion and

$$
Y_{t} = \sigma B_{t} + m t,
$$

then  $Y_{t}$  is a Brownian motion with drift  $m$  and variance  $\sigma^2$ .

Indeed, one just checks that it satisfies the conditions above. Hence, in order to establish the existence of Brownian motion, it suffices to construct a standard Brownian motion.

There is a mathematical challenge in studying stochastic processes indexed by continuous time. The problem is that the set of positive real numbers is uncountable, that is, the elements cannot be enumerated  $t_1, t_2, \ldots$ . The major axiom of probability theory is the fact that if  $A_1, A_2, \ldots$  is a countable sequence of disjoint events, then

$$
\mathbb{P} \left[ \bigcup_{n = 1}^{\infty} A_{n} \right] = \sum_{n = 1}^{\infty} \mathbb{P} [ A_{n} ].
$$

This rule does not hold for uncountable unions. An example that we have all had to deal with arises with continuous random variables. Suppose, for instance, that  $Z$  has a  $N(0,1)$  distribution. Then for each  $x \in \mathbb{R}$ ,

$$
\mathbb{P} \{Z = x \} = 0.
$$

However,

$$
1 = \mathbb{P} \{Z \in \mathbb{R} \} = \mathbb{P} \left[ \bigcup_{x \in \mathbb{R}} A_{x} \right],
$$

where  $A_{x}$  denotes the event  $\{Z = x\}$ . The events  $A_{x}$  are disjoint, each with probability zero, but it is not the case that

$$
\mathbb{P} \left[ \bigcup_{x \in \mathbb{R}} A_{x} \right] = \sum_{x \in \mathbb{R}} \mathbb{P} (A_{x}) = 0.
$$

In constructing Brownian motion, we use the fact that if  $g:[0,\infty)\to \mathbb{R}$  is a continuous function and we know the value of  $g$  on a countable, dense set, such as the dyadic rationals

$$
\left\{\frac{k}{2^{n}}: k = 0, 1, \ldots ; n = 0, 1, \ldots \right\},
$$

then we know the value at every  $t$ . Indeed, we need only find a sequence of dyadic rationals  $t_n$  that converge to  $t$ , and let

$$
g (t) = \lim_{t_{n} \to t} g (t_{n}).
$$

This is fine if a priori we know the function  $g$  is continuous. Our strategy for constructing Brownian motion will be:

- First define the process  $B_{t}$  when  $t$  is a dyadic rational.  
- Prove that with probability one, the function  $t \mapsto B_t$  is continuous on the dyadics (this is the hardest step, and we need some care in the definition of continuity).  
- Extend  $B_{t}$  to other  $t$  by continuity.

The next section shows that one can construct a Brownian motion. The reader can skip this section and just have faith that such a process exists.

# 2.5 Construction of Brownian motion

We will show how to construct Brownian motion. For ease, we will consider  $B_{t}, 0 \leq t \leq 1$ . Once we know how to construct this, we can take a countable collection of such processes and connect them appropriately to get  $B_{t}, 0 \leq t < \infty$ . We start with a probability space

$(\Omega, \mathcal{F}, \mathbb{P})$  which is large enough so that it contains a countable collection of independent standard normal random variables. Let

$$
\mathcal{D}_{n} = \left\{\frac{k}{2^{n}}: k = 0, 1, \ldots , 2^{n} \right\},
$$

denote the dyadic rationals in  $[0,1]$  with denominator  $2^n$  and let  $\mathcal{D} = \cup_{n}\mathcal{D}$ . Since  $\mathcal{D}$  is a countable set, we can assume that our collection of  $N(0,1)$  random variables

$$
\left\{Z_{q}: q \in \mathcal{D} \right\}
$$

is indexed by  $\mathcal{D}$

We will use the independent random variables  $\{Z_q\}$  to define the Brownian motion  $B_q, q \in \mathcal{D}$ . We start by defining  $B_0, B_1$ , and then  $B_{1/2}$ , and then  $B_{1/4}$  and  $B_{3/4}$ , and so forth, by always subdividing our intervals. We start with  $B_0 = 0$  and we let  $B_1 = Z_1$  which is clearly  $N(0,1)$ . We then define

$$
B_{1 / 2} = \frac{B_{1}}{2} + \frac{Z_{1 / 2}}{2},
$$

and hence

$$
B_{1} - B_{1 / 2} = \frac{B_{1}}{2} - \frac{Z_{1 / 2}}{2}.
$$

We think of the definition of  $B_{1/2}$  as being  $E[B_{1/2} \mid B_1]$  plus some independent randomness. Using Proposition 2.2.1, we can see that  $B_{1/2}$  and  $B_1 - B_{1/2}$  are independent random variables, each  $N(0,1/2)$ . We continue this splitting. If  $q = (2k + 1)/2^{n+1} \in \mathcal{D}_{n+1} \backslash \mathcal{D}_n$ , we define

$$
B_{q} = B_{k 2^{- n}} + \frac{B_{(k + 1) 2^{- n}} - B_{k 2^{- n}}}{2} + \frac{Z_{q}}{2^{(n + 2) / 2}}.
$$

This formula looks a little complicated, but we can again view this as

$$
B_{q} = E [ B_{q} \mid B_{k 2^{- n}}, B_{(k + 1) 2^{- n}} ] + (\mathrm{independentrandomness}),
$$

where the variance of the new randomness is chosen appropriately. By repeated use of Proposition 2.2.1, we can see that for each  $n$ , the random variables

$$
\left\{B_{k 2^{- n}} - B_{(k - 1) 2^{- n}}: k = 1, \ldots , 2^{n} \right\}
$$

are independent, each with  $N(0,2^{-n})$  distribution. From this we can see that  $\{B_q : q \in \mathcal{D}\}$  satisfies the first three properties in the definition of a Brownian motion.

We will define  $B_{t}$  for other  $t$  by continuity. To do this we prove a theorem that states that the Brownian motion restricted to  $\mathcal{D}$  has uniformly continuous paths. In other words, we show that with probability one, for every  $\epsilon > 0$ , there exists  $\delta > 0$  such that if  $|s - t| \leq \delta$  and  $s, t \in \mathcal{D}$ , then  $|B_{s} - B_{t}| < \epsilon$ . Equivalently, if we define the random variable

$$
K_{n} = \sup \left\{\left| B_{s} - B_{t} \right|: s, t \in \mathcal{D}, | s - t | \leq 2^{- n} \right\},
$$

then with probability one,  $K_{n} \to 0$  as  $n \to \infty$ . Note that  $K_{n}$  is the supremum of a countable number of random variables and hence is a well-defined random variable (perhaps taking the value  $\infty$ ).

Proposition 2.5.1. With probability one, for all  $\alpha < 1/2$ ,

$$
\lim_{n \rightarrow \infty} 2^{\alpha n} K_{n} = 0. \tag {2.2}
$$

In particular,  $K_{n} \to 0$ .

In order to prove this proposition, it is easier to consider another sequence of random variables

$$
J_{n} = \max_{j = 1, \ldots , 2^{n}} Y (j, n)
$$

where  $Y(j,n)$  equals

$$
\sup  \left\{\left| B_{q} - B_{(j - 1) 2^{- n}} \right|: q \in \mathcal{D}, (j - 1) 2^{- n} \leq q \leq j 2^{- n} \right\}.
$$

A simple argument using the triangle inequality shows that  $K_{n} \leq 3J_{n}$ . It turns out  $J_{n}$  is easier to analyze. For any  $\epsilon > 0$ ,

$$
\mathbb{P} \{J_{n} \geq \epsilon \} \leq \sum_{j = 1}^{2^{n}} \mathbb{P} \{Y (j, n) \geq \epsilon \} = 2^{n} \mathbb{P} \{Y (1, n) \geq \epsilon \}.
$$

Also the distribution of

$$
Y (1, n) = \sup  \left\{\left| B_{q} \right|: q \in \mathcal{D}, q \leq 2^{- n} \right\}.
$$

is the same as that of  $2^{-n / 2}Y$  where

$$
Y = Y (1, 0) = \sup  \left\{\left| B_{q} \right|: q \in \mathcal{D} \right\}.
$$

Using this we see that

$$
\mathbb{P} \{J_{n} \geq C \sqrt{n} 2^{- n / 2} \} \leq 2^{n} \mathbb{P} \{Y \geq C \sqrt{n} \}.
$$

We will show below that if  $C > \sqrt{2\log 2}$ , then

$$
\sum_{n = 1}^{\infty} 2^{n} \mathbb{P} \{Y \geq C \sqrt{n} \} <   \infty . \tag {2.3}
$$

The Borel-Cantelli lemma then implies that with probability one, the event  $\{J_n \geq 2^{-n/2} n\}$  happens for only finitely many values of  $n$ . In particular,

$$
\lim_{n \to \infty} 2^{n / 2} n^{- 1} J_{n} = 0,
$$

which implies (2.2). To get our estimate, we will need the following lemma which is a form of the "reflection principle" for Brownian motion.

Lemma 2.5.2. For every  $a \geq 4$ ,

$$
\mathbb{P} \{Y > a \} \leq 4 \mathbb{P} \{B_{1} \geq a \} \leq e^{- a^{2} / 2}.
$$

To prove this lemma, let

$$
Y_{n} = \max  \left\{\left| B_{q} \right|: q \in \mathcal{D}_{n} \right\}.
$$

Then

$$
\mathbb{P} \{Y > a \} = \lim_{n \rightarrow \infty} \mathbb{P} \{Y_{n} > a \},
$$

and hence it suffices to prove the inequality for each  $n$ . Fix  $n$  and let  $A_{k}$  be the event that

$$
\left| B_{k 2^{- n}} \right| > a, \quad \left| B_{j 2^{- n}} \right| \leq a, j = 1, \dots , k - 1.
$$

Then the event  $\{Y_{n} > a\}$  can be written as a disjoint union

$$
\left\{Y_{n} > a \right\} = \bigcup_{k = 1}^{2^{n}} A_{k}.
$$

The important observation is that if  $|B_{k2^{-n}}| > a$ , then with probability at least  $1/2$ , we have  $|B_1| > a$ . Indeed, if  $B_{k2^{-n}}$  and  $B_1 - B_{k2^{-n}}$

have the same sign, which happens with probability  $1/2$ , then  $|B_1| \geq |B_{k2^{-n}}|$ . Therefore,

$$
\mathbb{P} \left[ A_{k} \cap \left\{\left| B_{1} \right| > a \right\} \right] \geq \frac{1}{2} \mathbb{P} (A_{k}),
$$

and hence

$$
\begin{array}{l} \mathbb{P} \left\{\left| B_{1} \right| > a \right\} = \sum_{k = 1}^{2^{n}} \mathbb{P} \left[ A_{k} \cap \left\{\left| B_{1} \right| > a \right\} \right] \\ \geq \frac{1}{2} \sum_{k = 1}^{2^{n}} \mathbb{P} [ A_{k} ] \\ = \frac{1}{2} \mathbb{P} \{Y_{n} > a \}. \\ \end{array}
$$

Here we use the fact that the events  $A_{k}$  are disjoint. Therefore, since  $B_{1}$  has a  $N(0,1)$  distribution,

$$
\mathbb{P} \{Y_{n} > a \} \leq 2 \mathbb{P} \{| B_{1} | > a \} = 4 \mathbb{P} \{B_{1} > a \} = \frac{4}{\sqrt{2 \pi}} \int_{a}^{\infty} e^{- x^{2} / 2} d x.
$$

To estimate the integral for  $a \geq 4$ , we write

$$
\begin{array}{l} \frac{4}{\sqrt{2 \pi}} \int_{a}^{\infty} e^{- x^{2} / 2} d x \leq 2 \int_{a}^{\infty} e^{- a x / 2} d x \\ = \frac{4}{a} e^{- a^{2} / 2} \leq e^{- a^{2} / 2}. \\ \end{array}
$$

This proves Lemma 2.5.2. If we apply the estimate with  $a = C\sqrt{n}$ , then we see that for large  $n$ ,

$$
\mathbb{P} \{Y > C \sqrt{n} \} \leq e^{- C^{2} n / 2} = 2^{- n \beta}, \quad \beta = \frac{C^{2}}{2 \log 2}.
$$

In particular, if  $\beta > 1$ , then (2.3) holds and this gives (2.2) with probability one.

The hard work is finished, with the proposition, we can now define  $B_{t}$  for  $t \in [0,1]$  by

$$
B_{t} = \lim_{t_{n} \to \infty} B_{t_{n}}
$$

where  $t_n \to t, t_n \in \mathcal{D}$ . One needs to check that this satisfies the conditions for a Brownian motion. This is relatively straightforward and we omit it.

# 2.6 Understanding Brownian motion

Let  $B_{t}$  be a standard Brownian motion starting at the origin. By doing simulations, one can see that although the paths of the process are continuous they are very rough. To do simulations, we must discretize time. If we let  $\Delta t$  be chosen, then we will sample the values

$$
B_{0}, B_{\Delta t}, B_{2 \Delta t}, B_{3 \Delta t}, \ldots
$$

The increment  $B_{(k + 1)\Delta t} - B_{k\Delta t}$  is a normal random variable with mean 0 and variance  $\Delta t$ . If  $N_0, N_1, N_2, \ldots$  denote independent  $N(0,1)$  random variables (which can be generated on a computer), we set

$$
B_{(k + 1) \Delta t} = B_{k \Delta t} + \sqrt{\Delta t} N_{k},
$$

which we can write as

$$
\Delta B_{k \Delta t} = B_{(k + 1) \Delta t} - B_{k \Delta t} = \sqrt{\Delta t} N_{k}.
$$

The relationship  $|\Delta B_t| = |B_{t + \Delta t} - B_t| \approx \sqrt{\Delta t}$  is fundamental for understanding Brownian motion. As  $\Delta t \to 0$ ,  $\sqrt{\Delta t} \to 0$ , which is consistent with the continuity of the paths. However, we claim that the paths do not have derivatives. To see why this should be true, recall that the definition of the derivative at time  $t$  would be

$$
\lim_{\Delta t \to 0} \frac{B_{t + \Delta t} - B_{t}}{\Delta t}.
$$

As  $\Delta t \to 0$ , the absolute value of the numerator is of order  $\sqrt{\Delta t}$  which is much larger than  $\Delta t$  for small  $\Delta t$ . Hence, we do not expect the limit to exist. In fact, the following stronger statement is true.

Theorem 2.6.1. With probability one, the function  $t \mapsto B_t$  is nowhere differentiable.

Note carefully the statement of this theorem. It is a stronger statement than the similar statement: "for every  $t$ , with probability one, the derivative does not exist at  $t$ ". As a comparison, consider the following two statements:

- With probability one, for every  $t$ ,  $B_t \neq 1$ .  
- For every  $t$ , with probability one,  $B_{t} \neq 1$ .

Since  $B_{t}$  has a  $N(0, t)$  distribution, the second of these statements is obviously true. However, the first statement is false. To see this, note that  $\mathbb{P}\{B_{1} > 1\}$  is greater than 0, and if  $B_{0} = 0, B_{1} > 1$ , then continuity implies that there exists  $t \in (0, 1)$  such that  $B_{t} = 1$ . Here again we have the challenge of dealing with uncountably many events of probability 0. Even though for each  $t$ ,  $\mathbb{P}\{B_{t} = 1\} = 0$ ,

$$
\mathbb{P} \left[ \bigcup_{t \in [ 0, 1 ]} \{B_{t} = 1 \} \right] > 0.
$$

While nondifferentiable paths may seem surprising, a little thought about our assumptions will show why we could not expect to have differentiable paths. Suppose that  $B_{t}$  were differentiable at  $t$ . Then, we could determine the derivative by observing  $B_{s}, 0 \leq s \leq t$ . This would then tell us something about the increment  $B_{t + \Delta t} - B_{t}$  for  $\Delta t > 0$ . However, our assumptions tell us that  $B_{t + \Delta t} - B_{t}$  is independent of  $B_{s}, 0 \leq s \leq t$ .

We will make a more precise statement about the relationship  $|\Delta B_t| = |B_{t + \Delta t} - B_t| \approx \sqrt{\Delta t}$ . If  $\alpha > 0$ , then a function  $f: [0,1] \to \mathbb{R}$  is Hölder continuous of order  $\alpha$  if there exists  $C < \infty$  such that for all  $0 \leq s, t \leq 1$ ,

$$
\left| f (s) - f (t) \right| \leq C | s - t |^{\alpha}.
$$

The smaller  $\alpha$  is the easier it is to be Hölder continuous of order  $\alpha$ . Note that differentiable functions are Hölder continuous of order 1 since

$$
| f (s) - f (t) | \approx | f^{\prime} (t) | | s - t |.
$$

Theorem 2.6.2. With probability one, for all  $\alpha < 1/2$ ,  $B_t$  is Hölder continuous of order  $\alpha$  but it is not Hölder continuous of order  $1/2$ .

We will be using Brownian motion and functions of Brownian motions to model prices of assets. In all of the Brownian models, the functions will have Hölder exponent  $1/2$ .

Hence, we could find a positive integer  $M < \infty$  such that for all sufficiently large integers  $n$ , there exists  $k \leq n$  such that  $Y_{k,n} \leq M / n$ , where  $Y_{k,n}$  is

$$
\max  \left\{\left| B \left(\frac{k + 1}{n}\right) - B \left(\frac{k}{n}\right) \right|, \right.
$$

$$
\left| B \left(\frac{k + 2}{n}\right) - B \left(\frac{k + 1}{n}\right) \right|, \left| B \left(\frac{k + 3}{n}\right) - B \left(\frac{k + 2}{n}\right) \right| \}.
$$

Let  $Y_{n} = \min \{Y_{k,n}: k = 0,1,\ldots ,n - 1\}$  and let  $A_{M}$  be the event that for all  $n$  sufficiently large,  $Y_{n} \leq M / n$ . For each positive integer  $M$ ,

$$
\begin{array}{l} \mathbb{P} \left\{Y_{k, n} \leq M / n \right\} = \left[ \mathbb{P} \{| B (1 / n) | \leq M / n \} \right]^{3} \\ = \left[ \mathbb{P} \{n^{- 1 / 2} | B_{1} | \leq M / n \} \right]^{3} \\ = \left[ \int_{| x | \leq M / \sqrt{n}} \frac{1}{\sqrt{2 \pi}} e^{- y^{2} / 2} d y \right]^{3} \\ \leq \left[ \frac{2 M}{\sqrt{n}} \frac{1}{\sqrt{2 \pi}} \right]^{3} \leq \frac{M^{3}}{n^{3 / 2}}, \\ \end{array}
$$

and hence,

$$
\mathbb{P} \{Y_{n} \leq M / n \} \leq \sum_{k = 0}^{n - 1} \mathbb{P} \{Y_{k, n} \leq M / n \} \leq \frac{M^{3}}{n^{1 / 2}} \longrightarrow 0.
$$

This shows that  $\mathbb{P}(A_M) = 0$  for each  $M$ , and hence

$$
\mathbb{P} \left[ \bigcup_{M = 1}^{\infty} A_{M} \right] = 0.
$$

But our first remark shows that the event that  $B_{t}$  is differentiable at some point is contained in  $\cup_{M} A_{M}$ .

Theorem 2.6.2 is a restatement of (2.2).

# 2.6.1 Brownian motion as a continuous martingale

The definition of a martingale in continuous time is essentially the same as in discrete time. Suppose we have an increasing filtration  $\{\mathcal{F}_t\}$  of information and integrable random variables  $M_t$  such that for each  $t$ ,  $M_t$  is  $\mathcal{F}_t$ -measurable. (We say that  $M_t$  is adapted to the filtration if  $M_t$  is  $\mathcal{F}_t$ -measurable for each  $t$ .) Then,  $M_t$  is a martingale with respect to  $\{\mathcal{F}_t\}$  if for each  $s < t$ ,

$$
E \left[ M_{t} \mid \mathcal{F}_{s} \right] = M_{s}.
$$

When one writes an equality as above there is an implicit "up to an event of probability zero". In discrete time this presents no problem because there are only a countable number of pairs of times  $(s, t)$  and hence there can be only a countable number of sets of measure zero. For continuous time, there are instances where some care is needed but we will not worry about this at the moment. As in the discrete case, if the filtration is not mentioned explicitly then one assumes that  $\mathcal{F}_t$  is the information contained in  $\{M_s : s \leq t\}$ . In that case, if  $B_t$  is a standard Brownian motion and  $s < t$ ,

$$
E \left[ B_{t} \mid \mathcal{F}_{s} \right] = E \left[ B_{s} \mid \mathcal{F}_{s} \right] + E \left[ B_{t} - B_{s} \mid \mathcal{F}_{s} \right] = B_{s} + \mathbb{E} \left[ B_{t} - B_{s} \right] = B_{s}. \tag {2.4}
$$

Often we will have more information at time  $t$  than the values of the Brownian motion so it is useful to extend our definition of Brownian motion. We say that  $B_{t}$  is Brownian motion with respect to the filtration  $\{\mathcal{F}_t\}$  if each  $B_{t}$  is  $\mathcal{F}_t$ -measurable and  $B_{t}$  satisfies the conditions to be a Brownian motion with the third condition being replaced by

- If  $s < t$ , the random variable  $B_{t} - B_{s}$  is independent of  $\mathcal{F}_{s}$ .

In other words, although we may have more information at time  $s$  than the value of the Brownian motion, there is nothing useful for predicting the future increments. Under these conditions, (2.4) holds and  $B_{t}$  is a martingale with respect to  $\{\mathcal{F}_t\}$ .

If  $M_s, 0 \leq s \leq t$  is a martingale, then by definition, for each  $s \leq t$ ,

$$
E (Y \mid \mathcal{F}_{s}) = M_{s}
$$

where  $Y = M_{t}$ . Conversely, if  $Y$  is an integrable random variable that is measurable with respect to  $\mathcal{F}_t$ , we can define a martingale  $M_{s}, 0 \leq s \leq t$  by

$$
M_{s} = \mathbb{E} (Y \mid \mathcal{F}_{s}).
$$

Indeed, if we define  $M_{s}$  as above and  $r < s$ , then the tower property for conditional expectation implies that

$$
E (M_{s} \mid \mathcal{F}_{r}) = E (E (Y \mid \mathcal{F}_{s}) \mid \mathcal{F}_{r}) = E (Y \mid \mathcal{F}_{r}) = M_{r}.
$$

A martingale  $M_t$  is called a continuous martingale if with probability one the function  $t \mapsto M_t$  is a continuous function. The word continuous in continuous martingale refers not just to the fact that time is continuous but also to the fact that the paths are continuous functions of  $t$ . One can have martingales in continuous time that are not continuous martingales. One example is to let  $N_t$  be a Poisson process with rate  $\lambda$  as in Section 2.1 and

$$
M_{t} = N_{t} - \lambda t.
$$

Then using the fact that the increments are independent we see that for  $s < t$ ,

$$
\begin{array}{l} E [ M_{t} \mid \mathcal{F}_{s} ] = E [ M_{s} \mid \mathcal{F}_{s} ] + E [ N_{t} - N_{s} \mid \mathcal{F}_{s} ] - \lambda (t - s) \\ = M_{s} + \mathbb{E} \left[ N_{t} - N_{s} \right] - \lambda (t - s) = M_{s}. \\ \end{array}
$$

Brownian motion with zero drift ( $m = 0$ ) is a continuous martingale with one parameter  $\sigma$ . As we will see, the only continuous martingales are essentially Brownian motion where one allows the  $\sigma$  to vary with time. The factor  $\sigma$  will be the analogue of the "bet" from the discrete stochastic integral.

A continuous time filtration on a probability space  $(\Omega, \mathcal{F}, \mathbb{P})$  is a collection of sub- $\sigma$ -algebras  $\{\mathcal{F}_t\}$  of  $\mathcal{F}$  such that if  $s < t$ , then  $\mathcal{F}_s \subset \mathcal{F}_t$ . It has been found that it is useful to make some additional technical assumptions. First, we assume that  $\mathcal{F}$  is complete under  $\mathbb{P}$ , that is, it contains all the null sets. A set  $A' \subset \Omega$  is a null set (for  $\mathbb{P}$ ) if  $A' \subset A$  for some  $A \in \mathcal{F}$  with  $\mathbb{P}(A) = 0$ . This is convenient for then one can prove that an event has probability zero by showing that it is contained in an event of probability zero. If  $\mathcal{F}$  is not complete, one can complete it by considering the collection of subsets  $A \cup A'$  where  $A \in \mathcal{F}$  and  $A'$  is a null set. In the case of Lebesgue measure on the Borel subsets of  $\mathbb{R}$ , the completion is the set of Lebesgue measurable sets.

When using filtrations  $\{\mathcal{F}_t\}$  one often makes further assumptions:

Right continuity. For each  $t$

$$
\mathcal{F}_{t} = \bigcap_{s > t} \mathcal{F}_{s}.
$$

It is easy to check that the right-hand side is a  $\sigma$ -algebra containing  $\mathcal{F}_t$ . and it is often denoted by  $\mathcal{F}_{t+}$ . Right continuity states that  $\mathcal{F}_t = \mathcal{F}_{t+}$ . If the original filtration was not right continuous, we can replace it with the filtration  $\{\mathcal{F}_{t+}\}$ .

- (Strong) completeness. We assume that  $\mathcal{F}_t$  contains all the null sets of  $\mathcal{F}$  (note that this is stronger than saying that  $\mathcal{F}_t$  is complete). If this does not hold initially, we enlarge our  $\sigma$ -algebra to include all events of the form  $A \cup A'$  where  $A \in \mathcal{F}_t$  and  $A'$  is a null set.

If we start with Brownian motion and let  $\mathcal{F}_t$  be the  $\sigma$ -algebra generated by  $\{B_s : s \leq t\}$ , then it is not true that  $\mathcal{F}_t = \mathcal{F}_{t+}$ . However, it is almost true in the sense that every set in  $\mathcal{F}_{t+}$  can be written as  $A \cup A'$  where  $A \in \mathcal{F}_t$  and  $A'$  is a null set. This is a consequence of the Blumenthal  $0-1$  law that states that the  $\sigma$ -algebra  $\mathcal{F}_{0+}$  contains only events of probability zero or one. We will not prove this here but it is related to the Kolmogorov  $0-1$  law.

At this point one may not appreciate why one wants to make these assumptions, but we will not try to motivate them further.

# 2.6.2 Brownian motion as a Markov process

A continuous time process  $X_{t}$  is called Markov if for every  $t$ , the conditional distribution of  $\{X_{s} : s \geq t\}$  given  $\{X_{r} : r \leq t\}$  is the same as the conditional distribution given  $X_{t}$ . In other words, the future of the process is conditionally independent of the past given the present value.

Brownian motion is a Markov process. Indeed, if  $B_{t}$  is a Brownian motion with parameters  $(m,\sigma^2)$ , and

$$
Y_{s} = B_{t + s}, \quad 0 \leq s <   \infty ,
$$

then the conditional distribution of  $\{Y_s\}$  given  $\mathcal{F}_t$  is that of a Brownian motion with initial condition  $Y_0 = B_t$ . Indeed, if

$$
\hat {B}_{s} = B_{t + s} - B_{t},
$$

then  $\hat{B}_s$  is a Brownian motion that is independent of  $\mathcal{F}_t$ . There is a stronger notion of this called the strong Markov property that we will discuss in Section 2.7.

# 2.6.3 Brownian motion as a Gaussian process

A process  $\{X_{t}\}$  is called a Gaussian process if each finite subcollection

$$
\left(X_{t_{1}}, \ldots , X_{t_{n}}\right)
$$

has a joint normal distribution. Recall that to describe a joint normal distribution one needs only give the means and the covariances. Hence the finite-dimensional distributions of a Gaussian process are determined by the numbers

$$
m_{t} = \mathbb{E} [ X_{t} ], \quad \Gamma_{s t} = \mathrm{Cov} (X_{s}, X_{t}).
$$

If  $B_{t}$  is a standard Brownian motion and  $t_1 < t_2 < \dots < t_n$ , then we can write  $B_{t_1},\ldots ,B_{t_n}$  as linear combinations of the independent standard normal random variables

$$
Z_{j} = \frac{B_{t_{j}} - B_{t_{j - 1}}}{\sqrt{t_{j} - t_{j - 1}}}, j = 1, \ldots , n.
$$

Hence  $B_{t}$  is a Gaussian process with mean zero. If  $s < t$ ,

$$
\begin{array}{l} \mathbb{E} \big [ B_{s} B_{t} \big ] = \mathbb{E} \big [ B_{s} \left(B_{s} + B_{t} - B_{s}\right) \big ] \\ = \mathbb{E} \left[ B_{s}^{2} \right] + \mathbb{E} \left[ B_{s} \left(B_{t} - B_{s}\right) \right] \\ = s + \mathbb{E} [ B_{s} ] \mathbb{E} [ B_{t} - B_{s} ] = s, \\ \end{array}
$$

which gives the general rule

$$
\operatorname{Cov} (B_{s}, B_{t}) = \min \{s, t \}.
$$

The description of Brownian motion as a Gaussian process describes only the finite-dimensional distributions but our definition includes some aspects that depend on more than finite-dimensional distributions. In particular, one cannot tell from the finite-dimensional distributions alone whether or not the paths are continuous.

# 2.6.4 Brownian motion as a self-similar process

If one looks at a small piece of a Brownian motion and blows it up, then the blown-up picture looks like a Brownian motion provided that the dilation uses the appropriate scaling. We leave the derivation as Exercise 2.12.

Theorem 2.6.3. Suppose  $B_{t}$  is a standard Brownian motion and  $a > 0$ . Let

$$
Y_{t} = \frac{B_{a t}}{\sqrt{a}}.
$$

Then  $Y_{t}$  is a standard Brownian motion.

The key here is that if time is scaled by a factor of  $a$ , then space must be scaled by a factor of  $1 / \sqrt{a}$ . The proof of this theorem is not difficult; one needs only show that  $Y_{t}$  satisfies the conditions to be a standard Brownian motion. One can check that the scaling is right by computing

$$
\operatorname{Var} [ Y_{t} ] = \operatorname{Var} [ B_{a t} / \sqrt{a} ] = a^{- 1} \operatorname{Var} [ B_{a t} ] = a^{- 1} (a t) = t.
$$

# 2.7 Computations for Brownian motion

We will discuss some methods for computing probabilities for Brownian motions. For ease, we will assume that  $B_{t}$  is a standard Brownian motion starting at the origin with respect to a filtration  $\{\mathcal{F}_t\}$ . If we are interested in probabilities about the Brownian motion at one time  $t$ , we need only use the normal distribution. Often, it is easier to scale to the standard normal. For example,

$$
\begin{array}{l} \mathbb{E} \left[ | B_{t} | \right] = \mathbb{E} \left[ t^{1 / 2} | B_{1} | \right] = \frac{t^{1 / 2}}{\sqrt{2 \pi}} \int_{- \infty}^{\infty} | x | e^{- x^{2} / 2} d x \\ = \sqrt{\frac{2 t}{\pi}} \int_{0}^{\infty} x e^{- x^{2} / 2} d x \\ = \sqrt{\frac{2 t}{\pi}}, \\ \end{array}
$$

and

$$
\begin{array}{l} \mathbb{P} \left\{B_{t} \geq r \right\} = \mathbb{P} \left\{\sqrt{t} B_{1} \geq r \right\} = \mathbb{P} \left\{B_{1} \geq r / \sqrt{t} \right\} \\ = 1 - \Phi (r / \sqrt{t}) \\ = \int_{r / \sqrt{t}}^{\infty} \frac{1}{\sqrt{2 \pi}} e^{- x^{2} / 2} d x, \\ \end{array}
$$

where  $\Phi$  denotes the distribution function for a standard normal.

If we are considering probabilities for a finite number of times, we can use the joint normal distribution. Often it is easier to use the Markov property as we now illustrate. We will compute

$$
\mathbb{P} \{B_{1} > 0, B_{2} > 0 \}.
$$

The events  $\{B_1 > 0\}$  and  $\{B_2 > 0\}$  are not independent; we would expect them to be positively correlated. We compute by considering the possibilities at time 1,

$$
\begin{array}{l} \mathbb{P} \left\{B_{1} > 0, B_{2} > 0 \right\} = \int_{0}^{\infty} \mathbb{P} \left\{B_{2} > 0 \mid B_{1} = x \right\} d \mathbb{P} \left\{B_{1} = x \right\} \\ = \int_{0}^{\infty} \mathbb{P} \left\{B_{2} - B_{1} > - x \right\} \frac{1}{\sqrt{2 \pi}} e^{- x^{2} / 2} d x \\ = \int_{0}^{\infty} \int_{- x}^{\infty} \frac{1}{2 \pi} e^{- (x^{2} + y^{2}) / 2} d y d x \\ = \int_{0}^{\infty} \int_{- \pi / 4}^{\pi / 2} \frac{e^{- r^{2} / 2}}{2 \pi} d \theta r d r = \frac{3}{8}. \\ \end{array}
$$

One needs to review polar coordinates to do the fourth equality. Note that

$$
\mathbb{P} \{B_{2} > 0 \mid B_{1} > 0 \} = \frac{\mathbb{P} \{B_{1} > 0 , B_{2} > 0 \}}{\mathbb{P} \{B_{1} > 0 \}} = \frac{3}{4},
$$

which confirms our intuition that the events are positively correlated.

For more complicated calculations, we need to use the strong Markov property. We say that a random variable  $T$  taking values in  $[0,\infty ]$  is a stopping time (with respect to the filtration  $\{\mathcal{F}_t\}$ ) if for each  $t$ , the event  $\mathbb{P}\{T\leq t\}$  is  $\mathcal{F}_t$ -measurable. In other words, the decision to stop can use the information up to time  $t$  but cannot use information about the future values of the Brownian motion.

- If  $x \in \mathbb{R}$  and

$$
T = \min \{t: B_{t} = x \},
$$

then  $T$  is a stopping time.

- Constants are stopping times.
- If  $S, T$  are stopping times then

$$
S \wedge T = \min \{S, T \}
$$

and

$$
S \vee T = \max  \{S, T \}
$$

are stopping times.

Theorem 2.7.1 (Strong Markov Property). If  $T$  is a stopping time with  $\mathbb{P}\{T < \infty\} = 1$  and

$$
Y_{t} = B_{T + t} - B_{T},
$$

then  $Y_{t}$  is a standard Brownian motion. Moreover,  $Y$  is independent of

$$
\left\{B_{t}: 0 \leq t \leq T \right\}.
$$

Let us apply this theorem, to prove a very useful tool for computing probabilities.

Proposition 2.7.2 (Reflection Principle). If  $B_{t}$  is a standard Brownian motion with  $B_{0} = 0$ , then for every  $a > 0$ ,

$$
\mathbb{P} \left\{\max_{0 \leq s \leq t} B_{s} \geq a \right\} = 2 \mathbb{P} \{B_{t} > a \} = 2 \left[ 1 - \Phi (a / \sqrt{t}) \right].
$$

To derive the reflection principle, let

$$
T_{a} = \min  \left\{s: B_{s} \geq a \right\} = \min  \left\{s: B_{s} = a \right\}.
$$

The second equality holds because  $B_{s}$  is a continuous function of  $s$ . Then

$$
\mathbb{P} \left\{\max_{0 \leq s \leq t} B_{s} \geq a \right\} = \mathbb{P} \{T_{a} \leq t \} = \mathbb{P} \{T_{a} <   t \}.
$$

The second equality uses the fact that  $\mathbb{P}\{T_a = t\} \leq \mathbb{P}\{B_t = a\} = 0$ . Since  $B_{T_a} = a$ ,

$$
\begin{array}{l} \mathbb{P} \{B_{t} > a \} = \mathbb{P} \{T_{a} <   t, B_{t} > a \} \\ = \mathbb{P} \left\{T_{a} <   t \right\} \mathbb{P} \left\{B_{t} - B_{T_{a}} > 0 \mid T_{a} <   t \right\}. \\ \end{array}
$$

We now appeal to the Strong Markov Property to say that

$$
\mathbb{P} \left\{B_{t} - B_{T_{a}} > 0 \mid T_{a} <   t \right\} = 1 / 2.
$$

This gives the first equality of the proposition and the second follows from

$$
\mathbb{P} \{B_{t} > a \} = \mathbb{P} \{B_{1} > a / \sqrt{t} \} = 1 - \Phi (a / \sqrt{t}).
$$

Example 2.7.1. Let  $a > 0$  and let  $T_{a} = \inf \{t : B_{t} = a\}$ . The random variable  $T_{a}$  is called a passage time. We will find the density of  $T_{a}$ . To do this, we first find its distribution function

$$
F (t) = \mathbb{P} \{T_{a} \leq t \} = \mathbb{P} \left\{\max_{0 \leq s \leq t} B_{s} \geq a \right\} = 2 \left[ 1 - \Phi (a / \sqrt{t}) \right].
$$

The density is obtained by differentiating

$$
f (t) = F^{\prime} (t) = - 2 \Phi^{\prime} \left(\frac{a}{\sqrt{t}}\right) \left(- \frac{a}{2 t^{3 / 2}}\right) = \frac{a}{t^{3 / 2} \sqrt{2 \pi}} e^{- \frac{a^{2}}{2 t}}, 0 <   t <   \infty .
$$

Example 2.7.2. We will compute

$$
q (r, t) = \mathbb{P} \left\{B_{s} = 0 \mathrm{forsome} r \leq s \leq t \right\}.
$$

The scaling rule for Brownian motion (Theorem 2.6.3) shows that  $q(r,t) = q(1,t / r)$ , so it suffices to compute  $q(t) = q(1,1 + t)$ . Let  $A$  be the event that  $B_{s} = 0$  for some  $1\leq s\leq 1 + t$ . The Markov property for Brownian motion and symmetry imply that

$$
\begin{array}{l} q (t) = \int_{- \infty}^{\infty} \mathbb{P} [ A \mid B_{1} = r ] d \mathbb{P} \{B_{1} = r \} \\ = \int_{- \infty}^{\infty} \mathbb{P} [ A \mid B_{1} = r ] \left[ \frac{1}{\sqrt{2 \pi}} e^{- r^{2} / 2} d r \right] \\ { = } { \sqrt{ \frac{ 2 } { \pi } } \int_{ 0 }^{ \infty } \mathbb{ P } [ A \mid B_{ 1 } = r ] e^{ - r^{ 2 } / 2 } d r . } \\ \end{array}
$$

The reflection principle and symmetry imply that

$$
\begin{array}{l} \mathbb{P} [ A \mid B_{1} = r ] = \mathbb{P} \left\{\min_{1 \leq s \leq 1 + t} B_{s} \leq 0 \mid B_{1} = r \right\} = \\ \mathbb{P} \left\{\max_{0 \leq s \leq t} B_{s} \geq r \right\} = 2 \mathbb{P} \{B_{t} \geq r \} = 2 \left[ 1 - \Phi (r / \sqrt{t}) \right]. \\ \end{array}
$$

Combining this we get

$$
q (t) = \int_{- \infty}^{\infty} 2 \left[ 1 - \Phi (r / \sqrt{t}) \right] \frac{1}{\sqrt{2 \pi}} e^{- r^{2} / 2} d r.
$$

This integral can be computed with polar coordinates. We just give the answer

$$
q (t) = 1 - \frac{2}{\pi} \arctan {\frac{1}{\sqrt{t}}}.
$$

If the filtration  $\{\mathcal{F}_t\}$  is right continuous then the condition  $\{T \leq t\} \in \mathcal{F}_t$  for all  $t$  is equivalent to the condition that  $\{T < t\} \in \mathcal{F}_t$  for all  $t$ . Indeed,

$$
\{T \leq t \} = \bigcap_{n = 1}^{\infty} \left\{T <   t + \frac{1}{n} \right\} \in \mathcal{F}_{t +},
$$

$$
\{T <   t \} = \bigcup_{n = 1}^{\infty} \left\{T \leq t - \frac{1}{n} \right\} \in \mathcal{F}_{t}.
$$

If  $T$  is a stopping time, the  $\sigma$ -algebra  $\mathcal{F}_T$  is defined to be the set of events  $A \in \mathcal{F}$  such that for each  $t$ ,  $A \cap \{T \leq t\} \in \mathcal{F}_t$ . (It is not hard to show that this is a  $\sigma$ -algebra.) We think of  $\mathcal{F}_T$  as the information available up to time  $T$ . If  $\{T < \infty\}$  let

$$
Y_{t} = B_{T + t} - B_{T},
$$

and let  $\mathcal{G}_T$  denote the  $\sigma$ -algebra generated by  $\{Y_t : t \geq 0\}$ . We can state the strong Markov property as:

- $\{Y_t : t \geq 0\}$  is a standard Brownian motion.  
- The  $\sigma$ -algebras  $\mathcal{F}_T$  and  $\mathcal{G}_T$  are independent, that is, if  $A \in \mathcal{F}_T, A' \in \mathcal{G}_T$ , then  $\mathbb{P}(A \cap A') = \mathbb{P}(A) \mathbb{P}(A')$ .

To prove this, one first considers the case where  $T$  takes values in  $\{k2^{-n} : k = 0,1,2,\ldots\}$ . By splitting up separately into the events  $\{T = k2^{-n}\}$ , one can use the usual Markov property to prove the result. For more general stopping times  $T$  we approximate  $T$  by  $T_{n}$  where  $T_{n} = k2^{-n}$  on the event  $\{(k - 1)2^{-n} < T \leq k2^{-n}\}$ . It is important that we approximate "from above" in order to guarantee that the  $T_{n}$  are stopping times. The continuity of the Brownian paths implies that

$$
Y_{t} = \lim_{n \to \infty} \left[ B_{T_{n} + t} - B_{T_{n}} \right],
$$

and this can be used to conclude the independence of  $\mathcal{F}_T$  and  $\mathcal{G}_T$ .

# 2.8 Quadratic variation

In the next chapter we will come across quantities such as

$$
Q_{n} = \sum_{j = 1}^{n} \left[ B \left(\frac{j}{n}\right) - B \left(\frac{j - 1}{n}\right) \right]^{2},
$$

where  $B_{t}$  is a standard Brownian motion. We can write  $Q_{n}$  as

$$
\frac{1}{n} \sum_{j = 1}^{n} Y_{j},
$$

where

$$
Y_{j} = Y_{j, n} = \left[ \frac{B \left(\frac{j}{n}\right) - B \left(\frac{j - 1}{n}\right)}{1 / \sqrt{n}} \right]^{2}.
$$

The random variables  $Y_{1}, \ldots, Y_{n}$  are independent, each with the distribution of  $Z^{2}$  where  $Z$  is a standard normal. In particular,

$$
\mathbb{E} \left[ Y_{j} \right] = \mathbb{E} \left[ Z^{2} \right] = 1, \quad \mathbb{E} \left[ Y_{j}^{2} \right] = \mathbb{E} \left[ Z^{4} \right] = 3.
$$

(One can use integration by parts to calculate  $\mathbb{E}[Z^4]$  or one could just look it up somewhere.) Hence  $\operatorname{Var}[Y_j] = \mathbb{E}\left[Y_j^2\right] - \mathbb{E}\left[Y_j\right]^2 = 2$ , and

$$
\mathbb{E} \left[ Q_{n} \right] = \frac{1}{n} \sum_{j = 1}^{n} \mathbb{E} \left[ Y_{j} \right] = 1, \quad \mathrm{Var} \left[ Q_{n} \right] = \frac{1}{n^{2}} \sum_{j = 1}^{n} \mathrm{Var} \left[ Y_{j} \right] = \frac{2}{n}.
$$

As  $n \to \infty$ , the variance of  $Q_{n}$  tends to zero and the random variable approaches a constant random variable of 1.

Similarly, for any time  $t$ , we let

$$
Q_{n} (t) = \sum_{j \leq t n} \left[ B \left(\frac{j}{n}\right) - B \left(\frac{j - 1}{n}\right) \right]^{2}.
$$

As  $n \to \infty$ , the variance of  $Q_{n}(t)$  goes to zero and it approaches a constant random variable with value  $t$ .

Definition If  $X_{t}$  is a process, the quadratic variation is defined by

$$
\langle X \rangle_{t} = \lim_{n \to \infty} \sum_{j \leq t n} \left[ X \left(\frac{j}{n}\right) - X \left(\frac{j - 1}{n}\right) \right]^{2},
$$

where the sum is over all  $j$  with  $j / n\leq t$

The calculation above shows that the quadratic variation of a standard Brownian motion is the constant process  $\langle B\rangle_t = t$ . Suppose  $W_{t}$  is a Brownian motion with drift  $m$  and variance  $\sigma^2$ . Then we can write  $W_{t} = \sigma B_{t} + mt$  where  $B_{t}$  is a standard Brownian motion. Fix  $t$  and write

$$
\begin{array}{l} \sum \left[ W \left(\frac{j}{n}\right) - W \left(\frac{j - 1}{n}\right) \right]^{2} = \sigma^{2} \sum \left[ B \left(\frac{j}{n}\right) - B \left(\frac{j - 1}{n}\right) \right]^{2} \\ + \frac{2 \sigma m}{n} \sum \left[ B \left(\frac{j}{n}\right) - B \left(\frac{j - 1}{n}\right) \right] + \sum \frac{m^{2}}{n^{2}}, \\ \end{array}
$$

where in each case the sum is over  $j \leq tn$ . As  $n \to \infty$ ,

$$
\begin{array}{l} \sigma^{2} \sum \left[ B \left(\frac{j}{n}\right) - B \left(\frac{j - 1}{n}\right) \right]^{2} \longrightarrow \sigma^{2} \langle B \rangle_{t} = \sigma^{2} t, \\ \frac{2 \sigma m}{n} \sum \left[ B \left(\frac{j}{n}\right) - B \left(\frac{j - 1}{n}\right) \right] \sim \frac{2 \sigma m}{n} B_{t} \longrightarrow 0, \\ \sum \frac{m^{2}}{n^{2}} \sim \frac{t n m^{2}}{n^{2}} \longrightarrow 0. \\ \end{array}
$$

We have established the following.

Theorem 2.8.1. If  $W_{t}$  is a Brownian motion with drift  $m$  and variance  $\sigma^2$ , then  $\langle W\rangle_t = \sigma^2 t$ .

The important facts are that the quadratic variation is not random and that it depends on the variance but not on the mean. It may seem silly at this point to give a name and notation to a quantity which is almost trivial for Brownian motion, but in the next chapter we will deal with processes for which the quadratic variation is not just a linear function of time.

If  $0 = t_0 < t_1 < \dots < t_n = t$ , we call the times a partition of  $[0, t]$ . We will write  $\Pi$  for partitions and write

$$
\| \Pi \| = \max_{j = 1, \dots , n} \{t_{j} - t_{j - 1} \}.
$$

For any partition of  $[0,t]$ , we define

$$
Q (t; \Pi) = \sum_{j = 1}^{n} \left[ B (t_{j}) - B (t_{j - 1}) \right]^{2}.
$$

Computing as above, we see that

$$
\mathbb{E} [ Q (t; \Pi) ] = \sum_{j = 1}^{n} \left(t_{j} - t_{j - 1}\right) = t,
$$

$$
\begin{array}{l} \operatorname{Var} [ Q (t; \Pi) ] = \sum_{j = 1}^{n} \operatorname{Var} \left([ B (t_{j}) - B (t_{j - 1}) ]^{2}\right) \\ = 2 \sum_{j = 1}^{n} (t_{j} - t_{j - 1})^{2} \\ \leq 2 \| \Pi \| \sum_{j = 1}^{n} (t_{j} - t_{j - 1}) = 2 \| \Pi \| t. \\ \end{array}
$$

Theorem 2.8.2. Suppose  $B$  is a standard Brownian motion,  $t > 0$ , and  $\Pi_n$  is a sequence of partitions of the form

$$
0 = t_{0, n} <   t_{1, n} <   \dots <   t_{l_{n}, n} = t,
$$

with  $\| \Pi_n\| \to 0$ . Then  $Q(t;\Pi_n)\to t$  in probability. Moreover, if

$$
\sum_{n = 1}^{\infty} \| \Pi_{n} \| <   \infty , \tag {2.5}
$$

then with probability one  $Q(t;\Pi_n)\to t$

Proof. Using Chebyshev's inequality, we see that for each integer  $k$ ,

$$
\mathbb{P} \left\{| Q (t; \Pi_{n}) - t | > \frac{1}{k} \right\} \leq \frac{\mathrm{Var} [ Q (t ; \Pi_{n}) ]}{(1 / k)^{2}} \leq 2 k^{2} \| \Pi_{n} \| t,
$$

and the right-hand side goes to zero as  $n \to \infty$ . This gives convergence in probability. If (2.5) holds as well, then

$$
\sum_{n = 1}^{\infty} \mathbb{P} \left\{| Q (t; \Pi_{n}) - t | > \frac{1}{k} \right\} <   \infty ,
$$

and hence by the Borel-Cantelli lemma, with probability one, for all  $n$  sufficiently large,

$$
| Q (t; \Pi_{n}) - t | \leq \frac{1}{k}. \quad \square
$$

It is important to note the order of the quantifiers in this theorem. Let  $t = 1$ . The theorem states that for every sequence  $\{\Pi_n\}$  satisfying (2.5),  $Q(1; \Pi_n) \to 1$ . The event of measure zero on which convergence does not hold depends on the sequence of partitions. Because there are an uncountable number of such sequences we cannot conclude from the theorem that with probability one, for all sequences  $\{\Pi_n\}$  satisfying (2.5), that  $Q(1; \Pi_n) \to 1$ . In fact, the latter statement is false. Let us give an example. Let us start with the dyadic partition  $\Pi_n$  of [0, 1] with  $2^n$  intervals of length  $2^{-n}$ . We will now subdivide some, but not all, of these intervals into two equal pieces. Suppose  $[s, t]$  is one of these intervals and let  $r$  denote the midpoint. We will subdivide  $[s, t]$  into  $[s, r]$  and  $[r, t]$  if

$$
\left(B_{r} - B_{s}\right)^{2} + \left(B_{t} - B_{s}\right)^{2} > \left(B_{t} - B_{s}\right)^{2},
$$

and we will retain the interval  $[s,t]$  otherwise. This defines a partition  $\tilde{\Pi}_n$  with  $\| \tilde{\Pi}_n\| \leq \| \Pi_n\|$ . It has been chosen so that  $Q(1;\tilde{\Pi}_n)\geq Q(1;\Pi_n)$ , and one can show (see Exercise 2.5) that

$$
\lim_{n \rightarrow \infty} Q (1; \tilde {\Pi}_{n}) = \mathbb{E} \left[ \max  \left\{B_{1 / 2}^{2} + \left(B_{1} - B_{1 / 2}\right)^{2}, B_{1}^{2} \right\}\right] > 1.
$$

This does not contradict the theorem because the partitions  $\tilde{\Pi}_n$  depend on the realization of the Brownian motion.

Sometimes it is convenient to fix a sequence of partitions, say partitions with dyadic intervals. Let

$$
Q_{n} (t) = \sum_{j <   t 2^{n}} \left[ B \left(\frac{j + 1}{2^{n}}\right) - B \left(\frac{j}{2^{n}}\right) \right]^{2}.
$$

Since the dyadic rationals are countable, the theorem implies that with probability one for every dyadic rational  $t$ ,  $Q_{n}(t) \to t$ . However, since  $t \mapsto Q_{n}(t)$  is increasing, we can conclude that with probability one, for every  $t0$ ,  $Q_{n}(t) \to t$ .

# 2.9 Multidimensional Brownian motion

In finance one is often interested in considering the value of many assets at the same time. Multidimensional Brownian motion  $B_{t}$  is random continuous motion in  $d$ -dimensional space. It can be viewed as  $d$  one-dimensional

Brownian motions

$$
B_{t} = \left(B_{t}^{1}, \ldots , B_{t}^{d}\right),
$$

with perhaps some correlations. If we make the same assumptions that we made in the one-dimensional case (independent, identically distributed increments and continuous paths), then one can show that the increments must be multivariate normal random variables. We use this fact in our definition.

Definition The  $d$ -dimensional process

$$
B_{t} = \left(B_{t}^{1}, \ldots , B_{t}^{d}\right),
$$

is called a  $d$ -dimensional Brownian motion starting at the origin with drift  $\mathbf{m} = (m_1, \ldots, m_d) \in \mathbb{R}^d$  and  $d \times d$  covariance matrix  $\Gamma$  with respect to the filtration  $\{\mathcal{F}_t\}$  if each  $B_t$  is  $\mathcal{F}_t$ -measurable and the following holds.

$B_0 = 0$  

- If  $s < t$ , the distribution of  $B_{t} - B_{s}$  is joint normal with mean  $(t - s)\mathbf{m}$  and covariance matrix  $(t - s)\Gamma$ .  
- If  $s < t$ , the random vector  $B_{t} - B_{s}$  is independent of  $\mathcal{F}_{s}$ .  
- With probability one, the function  $t \mapsto B_t$  is continuous.

In particular, each  $B_{t}^{k}$  is a Brownian motion with drift  $m_{k}$  and variance  $\Gamma_{kk}$  with respect to the filtration  $\{\mathcal{F}_t\}$ . If  $\mathbf{m} = 0$  and  $\Gamma = I$ , then  $B_{t}^{1},\ldots ,B_{t}^{d}$  are independent standard Brownian motions and  $B_{t}$  is called standard  $d$ -dimensional Brownian motion.

Definition If  $X_{t}, Y_{t}$  are processes defined on the same probability space, the covariation (process) is defined by

$$
\langle X, Y \rangle_{t} = \lim_{n \to \infty} \sum_{j \leq t n} \left[ X \left(\frac{j}{n}\right) - X \left(\frac{j - 1}{n}\right) \right] \left[ Y \left(\frac{j}{n}\right) - Y \left(\frac{j - 1}{n}\right) \right],
$$

where the sum is over all  $j$  with  $j / n\leq t$

If  $X = Y$ , then the covariation is the same as the quadratic variation, that is

$$
\langle X, X \rangle_{t} = \langle X \rangle_{t}.
$$

If  $B_{t} = (B_{t}^{1},\ldots ,B_{t}^{d})$  is a Brownian motion with drift 0 and covariance matrix  $\Gamma$ , then

$$
\mathbb{E} \left[ (B_{t}^{i} - B_{s}^{i}) (B_{t}^{k} - B_{s}^{k}) \right] = (t - s) \Gamma_{i k}.
$$

As in the quadratic variation, the drift does not contribute to the covariation. We state the following result which is proved in the same way as for quadratic variation.

Theorem 2.9.1. If  $B_{t}$  is a  $d$ -dimensional Brownian motion with drift  $\mathbf{m}$  and covariance matrix  $\Gamma$ , then

$$
\langle B^{i}, B^{k} \rangle_{t} = \Gamma_{i k} t.
$$

In particular, if  $B_{t} = (B_{t}^{1},\ldots ,B_{t}^{d})$  is a standard Brownian motion in  $\mathbb{R}^d$ , then the components are independent and

$$
\langle B^{i}, B^{k} \rangle_{t} = 0, \quad i \neq k.
$$

# 2.10 Heat equation and generator

Even if one's interest in Brownian motion comes from other applications, it is useful to consider the diffusion of heat. Heat flow can be viewed by considering a large number of independent "heat particles" each doing random continuous motion. This viewpoint leads to a deterministic partial differential equation (PDE) that describes the evolution of the temperature. Imagine for the moment that the temperature on the line is determined by the density of heat particles. Let  $p_t(x)$  denote the temperature at  $x$  at time  $t$ . If the heat particles are moving independently and randomly then we can assume that they are doing Brownian motions. If we also assume that

$$
\int_{R} p_{t} (x) d x = 1,
$$

then reasonable to see  $p_t(x)$  as the probability density for Brownian motion.

# 2.10.1 One dimension

We start by taking advantage of what we already know. Assume  $B_{t}$  is a standard Brownian motion starting at the origin and let  $p_t(x)$  denote the

density of  $B_{t}$ . Since  $B_{t} \sim N(0, t)$ , we know that

$$
p_{t} (x) = \frac{1}{\sqrt{2 \pi t}} e^{- \frac{x^{2}}{2 t}}. \tag {2.6}
$$

We view this as a function of two variables  $t, x$ . If we are interested in the position at time  $s + t$ , we can use the Markovian nature of Brownian motion to first observe the position at time  $s$  and then to consider what happens in the next time interval of length  $t$ . This leads to the Chapman-Kolmogorov equation

$$
p_{s + t} (x) = \int_{- \infty}^{\infty} p_{s} (y) p_{t} (x - y) d y. \tag {2.7}
$$

A straightforward calculation, which we omit, shows that if  $p_t(x)$  is given by (2.6), then  $p_t(x)$  satisfies (2.7). We emphasize that (2.7) uses the Markovian property: if we are interested in the position at time  $t + s$  and are given the information up to time  $s$ , the only information that is relevant is the position at time  $s$ .

We will give a heuristic derivation of the PDE that describes the evolution of  $p_t(x)$ . For a number of our heuristic derivations we will use a binomial approximation where we view the Brownian motion as satisfying

$$
\mathbb{P} \left\{B_{t + \Delta t} = B_{t} + \Delta x \right\} = \mathbb{P} \left\{B_{t + \Delta t} = B_{t} - \Delta x \right\} = \frac{1}{2},
$$

where  $\Delta x = \sqrt{\Delta t}$ . In the approximation, to be at  $x$  at time  $t + \Delta t$  one must be at  $x \pm \Delta x$  at time  $t$  which gives

$$
p_{t + \Delta t} (x) \approx \frac{1}{2} p_{t} (x - \Delta x) + \frac{1}{2} p_{t} (x + \Delta x).
$$

Using  $\Delta t = (\Delta x)^2$ , this implies

$$
\frac{p_{t + \Delta t} (x) - p_{t} (x)}{\Delta t} = \frac{p_{t} (x + \Delta x) + p_{t} (x - \Delta x) - 2 p_{t} (x)}{2 (\Delta x)^{2}}. \tag {2.8}
$$

We now let  $\Delta t\to 0$  in (2.8). The definition of the partial derivative implies that

$$
\lim_{\Delta t \to 0} \frac{p_{t + \Delta t} (x) - p_{t} (x)}{\Delta t} = \partial_{t} p_{t} (x).
$$

The right-hand side of (2.8) is a little more complicated. Since such limits are fundamental in our study, let us give two ways to compute the limit. One way is to write the right-hand side as

$$
\frac{1}{2 \Delta x} \left[ \frac{p_{t} (x + \Delta x) - p_{t} (x)}{\Delta x} - \frac{p_{t} (x) - p_{t} (x - \Delta x)}{\Delta x} \right].
$$

Waving our hands, we say this is about

$$
\frac{1}{2} \frac{\partial_{x} p_{t} (x) - \partial_{x} p_{t} (x - \Delta x)}{\Delta x},
$$

and now we have a difference quotient for the first derivatives in which case the limit should be

$$
\frac{1}{2} \partial_{x x} p_{t} (x).
$$

Another, essentially equivalent, method to evaluate the limit is to write  $f(x) = p_t(x)$  and expand in a Taylor series about  $x$ ,

$$
f (x + \epsilon) = f (x) + f^{\prime} (x) \epsilon + \frac{1}{2} f^{\prime \prime} (x) \epsilon^{2} + o (\epsilon^{2}),
$$

where  $o(\epsilon^2)$  denotes a term such that

$$
\lim_{\epsilon \to 0} \frac{o (\epsilon^{2})}{\epsilon^{2}} = 0.
$$

Then we see that

$$
f (x + \epsilon) + f (x - \epsilon) - 2 f (x) = f^{\prime \prime} (x) \epsilon^{2} + o (\epsilon^{2}),
$$

and hence the limit of the right-hand side of (2.8) is  $\partial_{xx}p_t(x) / 2$ . We have derived the heat equation

$$
\partial_{t} p_{t} (x) = \frac{1}{2} \partial_{x x} p_{t} (x).
$$

While we have been a bit sketchy on details, one could start with this equation and note that  $p_t$  as defined in (2.6) satisfies this. This is the solution given that  $B_0 = 0$ , that is, when the "initial density"  $p_0(x)$  is the "delta function at 0". (The delta function, written  $\delta(\cdot)$  is the probability density of the probability

distribution that gives measure one to the point 0. This is not really a density, but informally we write

$$
\delta (0) = \infty , \quad \delta (x) = 0, x \neq 0,
$$

$$
\int \delta (x) d x = 1.
$$

These last equations do not make mathematical sense, but they give a workable heuristic definition.)

If the Brownian motion has variance  $\sigma^2$ , one binomial approximation is

$$
\mathbb{P} \left\{B_{t + \Delta t} = B_{t} + \sigma \Delta x \right\} = \mathbb{P} \left\{B_{t + \Delta t} = B_{t} - \sigma \Delta x \right\} = \frac{1}{2},
$$

where  $\Delta x = \sqrt{\Delta t}$ . The factor  $\sigma$  is put in so that

$$
\mathrm{Var} \left[ B (t + \Delta t) - B (t) \right] = \sigma^{2} \Delta t.
$$

We can use the same argument to derive that this density should satisfy the heat equation

$$
\partial_{t} p_{t} (x) = \frac{\sigma^{2}}{2} \partial_{x x} p_{t} (x).
$$

The coefficient  $\sigma^2$  (or in some texts  $(\sigma^2 / 2)$ ) is referred to as the diffusion coefficient. One can check that a solution to this equation is given by

$$
p_{t} (x) = \frac{1}{\sqrt{2 \pi \sigma^{2} t}} \exp \left\{- \frac{x^{2}}{2 \sigma^{2} t} \right\}.
$$

When the Brownian motion has drift  $m$ , the equation gets another term. To see what the term should look like, let us first consider the case of deterministic linear motion, that is, motion with drift  $m$  but no variance. Then if  $p_t(x)$  denotes the density at  $x$  at time  $t$ , we get the relationship

$$
p_{t + \Delta t} (x) = p_{t} (x - m \Delta t),
$$

since particles at  $x$  at time  $t + \Delta t$  must have been at  $x - m\Delta t$  at time  $t$ . This gives

$$
\begin{array}{l} \frac{p_{t + \Delta t} (x) - p_{t} (x)}{\Delta t} = \frac{p_{t} (x - m \Delta t) - p_{t} (x)}{\Delta t} \\ = - m \frac{p_{t} (x) - p_{t} (x - m \Delta t)}{m \Delta t}. \\ \end{array}
$$

Letting  $\Delta t\to 0$  , we get the equation for linear motion at rate  $m$

$$
\partial_{t} p_{t} (x) = - m \partial_{x} p_{t} (x).
$$

This is a first-order equation which means it contains only first derivatives.

If  $B_{t}$  is Brownian motion with drift  $m$  and variance  $\sigma^2$ , then we can do a similar argument and show that the density  $p_t(x)$  satisfies the second order PDE

$$
\partial_{t} p_{t} (x) = - m \partial_{x} p_{t} (x) + \frac{\sigma^{2}}{2} \partial_{x x} p_{t} (x).
$$

As a check, one can consider the appropriate density,

$$
p_{t} (x) = \frac{1}{\sqrt{2 \pi \sigma^{2} t}} \exp \left\{- \frac{(x - m t)^{2}}{2 \sigma^{2} t} \right\},
$$

and show that it satisfies this equation.

Before summarizing, we will change the notation slightly. Let  $p_t(x,y)$  denote the density of  $B_t$  given  $B_0 = x$ . Under this notation  $p_t(x) = p_t(0,x)$ . We will define an operator on functions. A (linear) operator is a function  $L$  from (a linear subspace of) functions to functions satisfying  $L(af + bg) = aL(f) + bL(g)$  where  $a,b$  are constants and  $f,g$  are functions. We say that a function  $f:\mathbb{R}\to \mathbb{R}$  is  $C^2$  if it is twice differentiable and the derivatives are continuous functions of  $x$ . For any  $m,\sigma^2$ , we define an operator on  $C^2$  functions by

$$
L^{*} f (x) = - m f^{\prime} (x) + \frac{\sigma^{2}}{2} f^{\prime \prime} (x).
$$

If  $f$  is a function of more variables, such as  $f_{t}(x,y)$  we write  $L_{x}^{*}$  to indicate the operator acting on the variable  $x$ ,

$$
L_{x}^{*} f_{t} (x, y) = - m \partial_{x} f_{t} (x, y) + \frac{\sigma^{2}}{2} \partial_{x x} f_{t} (x, y).
$$

Theorem 2.10.1. Suppose  $B_{t}$  is a Brownian motion with drift  $m$  and variance  $\sigma^2$ . Then the transition density  $p_t(x,y)$  satisfies the heat equation

$$
\partial_{t} p_{t} (x, y) = L_{y}^{*} p_{t} (x, y)
$$

with initial condition  $p_0(x,\cdot) = \delta_x(\cdot)$ . Here  $L^{*}$  is the operator on functions

$$
L^{*} f (y) = - m f^{\prime} (y) + \frac{\sigma^{2}}{2} f^{\prime \prime} (y).
$$

We think of  $p_t(x, y)$  as "the probability of being at  $y$  at time  $t$  given that  $B_0 = x$ ". For driftless Brownian motion, this is the same as the probability of being at  $x$  given that one was at  $y$ . However, the reversal of a Brownian motion with drift  $m$  should be a Brownian motion with drift  $-m$ . This gives the following.

Theorem 2.10.2. Suppose  $B_{t}$  is a Brownian motion with drift  $m$  and variance  $\sigma^2$ . Then the transition density  $p_t(x,y)$  satisfies the heat equation

$$
\partial_{t} p_{t} (x, y) = L_{x} p_{t} (x, y)
$$

with initial condition  $p_0(\cdot, y) = \delta_y(\cdot)$ . Here  $L$  is the operator on functions

$$
L f (x) = m f^{\prime} (x) + \frac{\sigma^{2}}{2} f^{\prime \prime} (x).
$$

The operator  $L$  will be more important to us than the operator  $L^{*}$  which is why we give it the simpler notation.

Let  $H$  denote the real Hilbert space  $L^2 (\mathbb{R})$  with inner product

$$
(f, g) = \int_{- \infty}^{\infty} f (x) g (x) d x.
$$

The operators  $L, L^{*}$  are not defined on all of  $H$  but they can be defined on a dense subspace, for example, the set of  $C^2$  functions all of whose derivatives decay rapidly at infinity. The operator  $L^{*}$  is the adjoint of  $L$  which means,

$$
(L^{*} f, g) = (f, L g).
$$

One can verify this using the following relations that are obtained by integration by parts:

$$
\int_{- \infty}^{\infty} f (x) g^{\prime} (x) d x = - \int_{- \infty}^{\infty} f^{\prime} (x) g (x) d x,
$$

$$
\int_{- \infty}^{\infty} f (x) g^{\prime \prime} (x) d x = \int_{- \infty}^{\infty} f^{\prime \prime} (x) g (x) d x.
$$

Suppose  $B_0$  has an initial density  $f$ . Then the density of  $B_t$  is given by

$$
f_{t} (y) = P_{t}^{*} f (y) := \int_{- \infty}^{\infty} f (x) p_{t} (x, y) d x.
$$

This is the solution to the equation

$$
\partial_{t} f_{t} (y) = L_{y}^{*} f_{t} (y)
$$

with initial condition  $f_0(y) = f(y)$ . We can write the heat equation as a derivative for operators,

$$
\partial_{t} P_{t}^{*} = L^{*} P_{t}^{*}.
$$

# 2.10.2 Expected value at a future time

Suppose  $B_{t}$  is a Brownian motion with drift  $m$  and variance  $\sigma^2$ , and let  $f$  be a function on  $\mathbb{R}$ . For example, if we consider  $B_{t}$  to be the price of a stock and  $f$  to be the worth of a call option at strike price  $S$  at time  $t$ , then

$$
f (x) = (x - S)_{+} = \left\{ \begin{array}{l l} x - S & \text{if} x \geq S \\ 0 & \text{if} x <   S \end{array} \right.. \tag {2.9}
$$

Let  $\phi(t, x)$  be the expected value of  $f(B_t)$  given that  $B_0 = x$ . We will write this as

$$
\phi (t, x) = \mathbb{E}^{x} [ f (B_{t}) ] = \mathbb{E} [ f (B_{t}) \mid B_{0} = x ].
$$

Then

$$
\phi (t, x) = \int_{- \infty}^{\infty} f (y) p_{t} (x, y) d y.
$$

The time derivative can be computed by interchanging differentiation and integration and using the rule from the previous section.

$$
\begin{array}{l} \partial_{t} \phi (t, x) = \partial_{t} \int_{- \infty}^{\infty} f (y) p_{t} (x, y) d y \\ = \int_{- \infty}^{\infty} f (y) \partial_{t} p_{t} (x, y) d y \\ = \int_{- \infty}^{\infty} f (y) L_{x} p_{t} (x, y) d y \\ = L_{x} \int_{- \infty}^{\infty} f (y) p_{t} (x, y) d y = L_{x} \phi (t, x). \\ \end{array}
$$

We will give another derivation of this equation, and while we are at it we will do the multivariate case. Suppose  $B_{t} = (B_{t}^{1},\ldots ,B_{t}^{d})$  is a  $d$ -dimensional Brownian motion with drift  $m = (m_1,\dots,m_d)$  and covariance matrix  $\Gamma$ . We assume that the Brownian motion is truly  $d$ -dimensional, or, in other words, that  $\Gamma$  is a nonsingular matrix. Let  $p_t(x,y)$  be the transition probability. If  $f:\mathbb{R}^d\to \mathbb{R}$  is a bounded function, define  $P_{t}f$  by

$$
P_{t} f (x) = \mathbb{E}^{x} [ f (B_{t}) ] = \int f (y) p_{t} (x, y) d y.
$$

Here  $x = (x_{1},\ldots ,x_{d}),y = (y_{1},\ldots ,y_{d})\in \mathbb{R}^{d}$  and  $dy = dy_{1}\cdot \cdot \cdot dy_{d}$

Definition The (infinitesimal) generator of a Markov process  $X_{t}$  is the operator  $L$  on functions defined by

$$
L f (x) = \lim_{t \to 0} \frac{P_{t} f (x) - f (x)}{t},
$$

where

$$
P_{t} f (x) = \mathbb{E}^{x} \left[ f \left(X_{t}\right) \right].
$$

Theorem 2.10.3. If  $B_{t}$  is a  $d$ -dimensional Brownian motion with drift  $m = (m_{1},\ldots ,m_{d})$  and covariance matrix  $\Gamma$ , then the infinitesimal generator is given by

$$
L f (x) = m \cdot \nabla f (x) + \frac{1}{2} \sum_{j = 1}^{d} \sum_{k = 1}^{d} \Gamma_{j k} \partial_{j k} f (x).
$$

In particular, if  $f$  is a function and

$$
\phi (t, x) = P_{t} f (x) = \mathbb{E}^{x} [ f (B_{t}) ],
$$

then  $\phi$  satisfies

$$
\partial_{t} \phi (t, x) = L_{x} \phi (t, x), \quad t > 0,
$$

with initial condition  $\phi (0,x) = f(x)$

We will give a quick derivation, assuming  $f$  is  $C^2$  and  $t = x = 0$ . The second-order Taylor approximation of  $f$  around the origin is

$$
f (\epsilon) = f (0) + \sum_{j = 1}^{d} b_{j} \epsilon_{j} + \frac{1}{2} \sum_{j = 1}^{d} \sum_{k = 1}^{d} a_{j k} \epsilon_{j} \epsilon_{k} + o (| \epsilon |^{2}),
$$

where  $\epsilon = (\epsilon_{1},\dots ,\epsilon_{d})$  and

$$
b_{j} = \partial_{j} f (0), a_{j k} = \partial_{j k} f (0).
$$

Inparticular,

$$
f (B_{t}) - f (B_{0}) = \sum_{j = 1}^{d} b_{j} B_{t}^{j} + \frac{1}{2} \sum_{j = 1}^{d} \sum_{k = 1}^{d} a_{j k} B_{t}^{j} B_{t}^{k} + o (| B_{t} |^{2}).
$$

We know that

$$
\mathbb{E} \left[ B_{t}^{j} \right] = m_{j} t, \quad \mathbb{E} \left(B_{t}^{j} B_{t}^{k}\right) = \Gamma_{j k} t,
$$

and the expectation of the "error" term  $o(|B_t|^2)$  is  $o(t)$ . Hence,

$$
\frac{d}{d t} \mathbb{E} [ f (B_{t}) ] |_{t = 0 +} = \lim_{t \downarrow 0} \frac{\mathbb{E} [ f (B_{t}) - f (B_{0}) ]}{t} = L f (0).
$$

Suppose  $f$  is a measurable function that does not grow too fast at infinity. For example, we assume that

$$
e^{- \alpha | x |^{2}} f (x) \rightarrow 0, \quad | x | \rightarrow \infty ,
$$

for every  $\alpha > 0$ . Then

$$
\int_{- \infty}^{\infty} | f (y) | p_{t} (x, y) d y <   \infty ,
$$

and hence

$$
\phi (t, x) := P_{t} f (x) = \int_{- \infty}^{\infty} f (y) p_{t} (x, y) d y <   \infty
$$

is well defined for all  $t$ . Moreover, for  $t > 0$ , the interchange of integration

$$
\partial_{t} \int_{- \infty}^{\infty} f (y) p_{t} (x, y) d y = \int_{- \infty}^{\infty} f (y) \partial_{t} p_{t} (x, y) d y
$$

can be justified (say by the dominated convergence theorem). Similarly, integrals with respect to  $x$  can be taken to show that  $\phi(t, \cdot)$  is  $C^\infty$  in  $x$  and

$$
L_{x} \phi (t, x) = \int_{- \infty}^{\infty} f (y) L_{x} p_{t} (x, y) d y
$$

Therefore, for  $t > 0$ ,  $x \mapsto \phi(t,x)$  is  $C^2$  and we can take the right derivative with respect to time,

$$
\lim_{s \downarrow 0} \frac{\phi (t + s , x) - \phi (t , x)}{s} = L_{x} \phi (t, x),
$$

using the argument as above. Although this argument only computes the right derivative, since for fixed  $x$ ,  $\phi(t,x)$  and  $L_{x}\phi(t,x)$  are continuous functions of  $t$ , we can conclude that

$$
\partial_{t} \phi (t, x) = L_{x} \phi (t, x), \quad t > 0.
$$

We cannot expect this to hold at  $t = 0$ , but we can state that if  $f$  is continuous at  $x$ , then

$$
\lim_{t \downarrow 0} \phi (t, x) = f (x).
$$

A simple call option works a little differently. Suppose that  $B_{t}$  is a one-dimensional Brownian motion with parameters  $m, \sigma^2$ . A simple call option at time  $T > 0$  with strike price  $S$  allows the owner to buy a share of the stock at time  $T$  for price  $S$ . If the price at time  $T$  is  $B_{T}$ , then the value of the option is  $f(B_{T}) = (B_{T} - S)_{+}$  as in (2.9). We are specifying the value of the function at time  $T$  rather than at time 0. However, we can use our work to give a PDE for the expected value of the option. If  $t < T$ , then the expected value of this option, given that  $B_{t} = x$  is

$$
F (t, x) = \mathbb{E} \left[ F (B_{T}) \mid B_{t} = x \right] = \mathbb{E}^{x} \left[ F (B_{T - t}) \right] = \phi (T - t, x).
$$

Since

$$
\partial_{t} F (t, x) = - \partial_{t} \phi (T - t, x) = - L_{x} \phi (T - t, x) = - L_{x} F (t, x),
$$

we get the following.

- If  $f$  is a function,  $T > 0$  and

$$
F (t, x) = \mathbb{E} \left[ f \left(B_{T}\right) \mid B_{t} = x \right],
$$

then for  $t < T$ ,  $F$  satisfies the backwards heat equation

$$
\partial_{t} F (t, x) = - L_{x} F (t, x),
$$

with terminal condition  $F(T,x) = f(x)$ .

As in the one-dimensional case, we can find the operator associated to the transition density. If we run a Brownian motion with drift  $m$  and covariance matrix  $\Gamma$  backwards, we get the same covariance matrix but the drift becomes  $-m$ . Therefore

- For  $t > 0$ , the transition probability  $p_t(x, y)$  satisfies the equation

$$
\partial_{t} p_{t} (x, y) = L_{y}^{*} p_{t} (x, y),
$$

where

$$
L^{*} f (y) = - m \cdot \nabla f (y) + \frac{1}{2} \sum_{j = 1}^{d} \sum_{k = 1}^{d} \Gamma_{j k} \partial_{j k} f (y).
$$

The equations

$$
\partial_{t} p_{t} (x, y) = L_{x} p_{t} (x, y), \quad \partial_{t} p_{t} (x, y) = L_{y}^{*} p_{t} (x, y)
$$

are sometimes called the Kolmogorov backwards and forwards equations, respectively. The name comes from the fact that they can be derived from the Chapman-Kolmogorov equations by writing

$$
p_{t + \Delta t} (x, y) = \int p_{\Delta t} (x, z) p_{t} (z, y) d z,
$$

$$
p_{t + \Delta t} (x, y) = \int p_{t} (x, z) p_{\Delta t} (z, y) d z,
$$

respectively. The forward equation is also known as the Fokker-Planck equation. We will make more use of the backwards equation.

# 2.11 Exercises

Exercise 2.1. Let  $Z_{1}, Z_{2}, Z_{3}$  be independent  $N(0,1)$  random variables. Let

$$
X_{1} = Z_{1} + Z_{3}, X_{2} = Z_{2} + 4 Z_{3}, X_{3} = 2 Z_{1} - 2 Z_{2} + r Z_{3}
$$

where  $r$  is a real number.

1. Explain why  $\mathbf{X} = (X_{1}, X_{2}, X_{3})$  has a joint normal distribution.  
2. Find the covariance matrix for  $\mathbf{X}$  (in terms of  $r$ ).

# 2.11. EXERCISES

3. For what values of  $r$  are  $X_{1}$  and  $X_{3}$  independent random variables?  
4. For what values of  $r$  does the random vector  $X$  have a density in  $\mathbb{R}^3$ ?

Exercise 2.2. Let  $B_{t}$  be a standard Brownian motion. Find the following probabilities. If you cannot give the answer precisely give it up to at least three decimal places using a table of the normal distribution.

1. $\mathbb{P}\{B_3\geq 1 / 2\}$  
2. $\mathbb{P}\{B_1\leq 1 / 2,B_3 > B_1 + 2\}$  
3. $\mathbb{P}(E)$  where  $E$  is the event that the path stays below the line  $y = 6$  up to time  $t = 10$ .  
4. $\mathbb{P}\{B_4\leq 0\mid B_2\geq 0\}$

Exercise 2.3. Let  $B_{t}$  be a standard Brownian motion. For each positive integer  $n$ , let

$$
J_{n} = \sum_{j = 1}^{n} \left[ B \left(\frac{j}{n}\right) - B \left(\frac{j - 1}{n}\right) \right]^{2}.
$$

1. Find the mean and variance of the random variable  $J_{n}$ .  
2. Prove the following "weak law of large numbers": if  $\epsilon > 0$ , then

$$
\lim_{n \to \infty} \mathbb{P} \left\{\left| J_{n} - 1 \right| > \epsilon \right\} = 0.
$$

Hint: this uses Chebyshev's inequality — look it up if this is not familiar to you.

In the next exercise, you can use the following computation. If  $X \sim N(0,1)$ , then the moment generating function of  $X$  is given by

$$
m (t) = \mathbb{E} \left[ e^{t X} \right] = e^{t^{2} / 2}.
$$

Exercise 2.4. Suppose  $B_{t}$  is a standard Brownian motion and let  $\mathcal{F}_t$  be its corresponding filtration. Let

$$
M_{t} = e^{\sigma B_{t} - \frac{\sigma^{2} t}{2}}.
$$

Show that  $M_t$  is a martingale with respect to  $\mathcal{F}_t$ . In other words, show that if  $s < t$ , then

$$
E \left(M_{t} \mid \mathcal{F}_{s}\right) = M_{s}.
$$

Exercise 2.5. Let  $B_{t}$  be a standard Brownian motion and let

$$
Y = \max  \left\{B_{1}^{2} + (B_{2} - B_{1})^{2}, B_{2}^{2} \right\}.
$$

Show that

$$
Y = B_{2}^{2} + 2 B_{1} \left(B_{1} - B_{2}\right) 1 \left\{B_{1} \left(B_{1} - B_{2}\right) \geq 0 \right\}.
$$

Find  $\mathbb{E}[Y]$  
Show that for every  $k < \infty$ ,  $\mathbb{E}\left[Y^k\right] < \infty$ .

Exercise 2.6. Let  $B_{t}$  be a standard Brownian motion and let  $\{\mathcal{F}_t\}$  denote the usual filtration. Suppose  $s < t$ . Compute the following.

1. $E[B_t^2\mid \mathcal{F}_s]$  
2. $E[B_t^3\mid \mathcal{F}_s]$  
3. $E[B_t^4\mid \mathcal{F}_s]$  
4. $E[e^{4B_t - 2} \mid \mathcal{F}_s]$

Exercise 2.7. Let  $B_{t}$  be a standard Brownian motion and let

$$
Y (t) = t B (1 / t).
$$

1. Is  $Y(t)$  a Gaussian process?  
2. Compute  $\operatorname{Cov}(Y(s), Y(t))$ .  
3. Does  $Y(t)$  have the distribution of a standard Brownian motion?

Exercise 2.8. If  $f(t), 0 \leq t \leq 1$  is a continuous function, define the  $(3/2)$ -variation up to time one to be

$$
Q = \lim_{n \rightarrow \infty} \sum_{j = 1}^{n} \left| f \left(\frac{j}{n}\right) - f \left(\frac{j - 1}{n}\right)\right|^{3 / 2}.
$$

What is  $Q$  if

1. $f$  is a nonconstant, continuously differentiable function on  $\mathbb{R}$ ?

# 2.11. EXERCISES

2. $f$  is a Brownian motion?

Exercise 2.9. Suppose  $B_{t}$  is a standard Brownian motion. For the functions  $\phi(t, x), 0 < t < 1, -\infty < x < \infty$ , defined below, give a PDE satisfied by the function.

1. $\phi (t,x) = \mathbb{P}\{B_t\geq 0\mid B_0 = x\} .$  
2. $\phi (t,x) = \mathbb{E}[B_1^2\mid B_t = x]$  
3. Repeat the two examples above if  $B_{t}$  is a Brownian motion with drift  $m$  and variance  $\sigma^2$ .

Exercise 2.10. Suppose  $B_{t}$  is a standard Brownian motion and

$$
M_{t} = \max_{0\leq s\leq t}B_{s}.
$$

1. Explain why  $M_t$  has the same distribution as  $\sqrt{t} M_1$ .  
2. Find the density of  $M_{1}$  
3. Find  $\mathbb{E}[M_t]$  
4. If  $a > 0$ , find  $\mathbb{E}[M_1 \, 1\{M_1 \geq a\}]$ .  
5. Let  $\mathcal{F}_t$  be the information in  $\{B_s:0\leq s\leq t\}$ . Find  $E[M_2\mid \mathcal{F}_1]$

Exercise 2.11. Write a program that will simulate a standard Brownian motion using step size  $\Delta t = .01$ .

1. Graph at least one realization of the Brownian motion to produce a "pretty picture" of a Brownian path.  
2. Use simulations to estimate the following probability:

$$
\mathbb{P} \{B_{t} \leq 2 \text{forall} t \leq 1 \}.
$$

Run the simulation enough times to get a good estimate for the probability. Use the reflection principle to calculate the actual probability and compare the result.

Exercise 2.12. Prove Theorem 2.6.3.

# Chapter 3

# Stochastic integration

# 3.1 What is stochastic calculus?

Before venturing into stochastic calculus, it will be useful to review the basic ideas behind the usual differential and integral calculus. The main deep idea of calculus is that one can find values of a function knowing the rate of change of the function. For example, suppose  $f(t)$  denotes the position of a (one-dimensional) particle at time  $t$ , and we are given the rate of change

$$
d f (t) = C (t, f (t)) d t,
$$

or as it is usually written,

$$
\frac{d f}{d t} = f^{\prime} (t) = C (t, f (t)).
$$

In other words, at time  $t$  the graph of  $f$  moves for an infinitesimal amount of time along a straight line with slope  $C(t, f(t))$ . This is an example of a differential equation, where the rate depends both on time and position. If we are given an initial condition  $f(0) = x_0$ , then (under some hypotheses on the rate function  $C$ , see the end of Section 3.5), the function is defined and can be given by

$$
f (t) = x_{0} + \int_{0}^{t} C (s, f (s)) d s.
$$

If one is lucky, then one can do the integration and find the function exactly. If one cannot do this, one can still use a computer to approximate the solution.

The simplest, but still useful, technique is Euler's method where one chooses a small increment  $\Delta t$  and then writes

$$
f ((k + 1) \Delta t) = f (k \Delta t) + \Delta t C (k \Delta t, f (k \Delta t)).
$$

Stochastic calculus is similar, except that one adds randomness to the change. We will make sense of equations such as

$$
d X_{t} = m \left(t, X_{t}\right) d t + \sigma \left(t, X_{t}\right) d B_{t}, \tag {3.1}
$$

where  $B_{t}$  is a standard Brownian motion. This is an example of a stochastic differential equation (SDE). We should read this equation as stating that at time  $t$ ,  $X_{t}$  is evolving like a Brownian motion with drift  $m(t, X_{t})$  and variance  $\sigma(t, X_{t})^{2}$ . Solving such equations exactly is much harder than for usual calculus, and we often have to resort to numerical methods. One technique is the stochastic Euler method which allows us to do Monte Carlo simulations of the process. This is easy enough to describe so we give the formula now

$$
X ((k + 1) \Delta t) =
$$

$$
X (k \Delta t) + \Delta t m (k \Delta t, X (k \Delta t)) + \sqrt{\Delta t} \sigma (k \Delta_{t}, X (k \Delta t)) N_{k},
$$

where  $N_{k}$  is a  $N(0,1)$  random variable.

The standard approach to calculus is to define the derivative, then define the integral, and then give the relationship between the two. One could also define the integral first. In stochastic calculus, the derivative is not so easily defined, so in order to give a mathematical formulation we concentrate on defining the stochastic integral. We will say that  $X_{t}$  is a solution to (3.1) if

$$
X_{t} = X_{0} + \int_{0}^{t} m (s, X_{s}) d s + \int_{0}^{t} \sigma (s, X_{s}) d B_{s}.
$$

The  $ds$  integral is the usual integral from calculus; the integrand  $m(s, X_s)$  is random, but that does not give any problem in defining the integral. The main task will be to give precise meaning to the second term, and more generally to

$$
\int_{0}^{t} A_{s} d B_{s}.
$$

There are several approaches to stochastic integration. The approach we give, which is most commonly used in mathematical finance, is that of the Itô integral.

# 3.2 Stochastic integral

Let  $B_{t}$  be a standard (one-dimensional) Brownian motion with respect to a filtration  $\{\mathcal{F}_t\}$ . We want to define the process

$$
Z_{t} = \int_{0}^{t} A_{s} d B_{s}.
$$

We think of  $Z_{t}$  as a Brownian motion which at time  $s$  has variance  $A_{s}^{2}$ . In analogy to the discrete stochastic integral, we think of  $A_{s}$  as the amount "bet" or "invested" at time  $s$  with negative bets indicating bets that the process will go down. Also, as in the discrete case, we want to restrict our betting strategies to those that cannot look into the future. For continuous time processes for which changes are happening infinitesimally it is somewhat trickier to make the last condition precise. We will start by doing some easy cases and then define more complicated cases by taking limits.

# 3.2.1 Review of Riemann integration

Let us review the definition of the usual Riemann integral from calculus. Suppose  $f(t)$  is a continuous function and we wish to define

$$
\int_{0}^{1} f (t) d t.
$$

We partition  $[0,1]$  into small intervals, say

$$
0 = t_{0} <   t_{1} <   \dots <   t_{n} = 1,
$$

and approximate  $f(t)$  by a step function

$$
f_{n} (t) = f (s_{j}), \quad t_{j - 1} <   t \leq t_{j},
$$

where  $s_j$  is some point chosen in  $[t_{j-1}, t_j]$ . We define

$$
\int_{0}^{1} f_{n} (t) d t = \sum_{j = 1}^{n} f (s_{j}) (t_{j} - t_{j - 1}).
$$

It is a theorem that if we take a sequence of partitions such that the maximum length of the intervals  $[t_{j-1}, t_j]$  goes to zero, then the limit

$$
\int_{0}^{1} f (t) d t = \lim_{n \to \infty} \int_{0}^{1} f_{n} (t) d t
$$

exists and is independent of the choice of sequence of partitions or the choice of  $s_j$ . This is the definition of the left-hand side. One later proves the important facts, for example, the fundamental theorem of calculus,

$$
\int_{a}^{b} f^{\prime} (t) d t = f (b) - f (a).
$$

# 3.2.2 Integration of simple processes

The analogue of a step function for the stochastic integral is a simple process. This corresponds to a betting strategy that allows one to change bets only at a prescribed finite set of times. To be more precise, a process  $A_{t}$  is a simple process if there exist times

$$
0 = t_{0} <   t_{1} <   \dots <   t_{n} <   \infty
$$

and random variables  $Y_{j}, j = 0,1,\ldots ,n$  that are  $\mathcal{F}_{t_j}$ -measurable such that

$$
A_{t} = Y_{j}, \quad t_{j} \leq t <   t_{j + 1}.
$$

Here we set  $t_{n+1} = \infty$ . Since  $Y_j$  is  $\mathcal{F}_{t_j}$ -measurable,  $A_t$  is  $\mathcal{F}_{t}$ -measurable. We also assume that  $\mathbb{E}[Y_j^2] < \infty$  for each  $j$ . If  $A_t$  is a simple process we define

$$
Z_{t} = \int_{0}^{t} A_{s} d B_{s},
$$

by

$$
Z_{t_{j}} = \sum_{i = 0}^{j - 1} Y_{i} \left[ B_{t_{i + 1}} - B_{t_{i}} \right],
$$

and, more generally,

$$
Z_{t} = Z_{t_{j}} + Y_{j} \left[ B_{t} - B_{t_{j}} \right] \text{if} t_{j} \leq t \leq t_{j + 1},
$$

$$
\int_{r}^{t} A_{s} d B_{s} = Z_{t} - Z_{r}.
$$

There are four important properties of the stochastic integral of simple processes which we give in the next proposition. The reader should compare these with the properties of integration with respect to random walk in Section 1.6.

Proposition 3.2.1. Suppose  $B_{t}$  is a standard Brownian motion with respect to a filtration  $\{\mathcal{F}_t\}$ , and  $A_{t}, C_{t}$  are simple processes.

- Linearity. If  $a, b$  are constants, then  $aA_{t} + bC_{t}$  is also a simple process and

$$
\int_{0}^{t} \left(a A_{s} + b C_{s}\right) d B_{s} = a \int_{0}^{t} A_{s} d B_{s} + b \int_{0}^{t} C_{s} d B_{s}.
$$

Moreover, if  $0 < r < t$ ,

$$
\int_{0}^{t} A_{s} d B_{s} = \int_{0}^{r} A_{s} d B_{s} + \int_{r}^{t} A_{s} d B_{s}.
$$

- Martingale property. The process

$$
Z_{t} = \int_{0}^{t} A_{s} d B_{s}
$$

is a martingale with respect to  $\{\mathcal{F}_t\}$ .

- Variance rule.  $Z_{t}$  is square integrable and

$$
\mathrm{Var} [ Z_{t} ] = \mathbb{E} \left[ Z_{t}^{2} \right] = \int_{0}^{t} \mathbb{E} [ A_{s}^{2} ] d s.
$$

- Continuity. With probability one, the function  $t \mapsto Z_t$  is a continuous function.

Let us discuss the proof of the proposition. Linearity follows immediately from the definition, and continuity follows from the continuity of Brownian motion. To show that  $Z_{t}$  is a martingale, we need to show that

$$
E \left(Z_{t} \mid \mathcal{F}_{s}\right) = Z_{s} \quad \text{if} \quad s <   t. \tag {3.2}
$$

We will do this in the case  $t = t_j$ ,  $s = t_k$  for some  $j > k$  and leave the other cases for the reader. In this case

$$
Z_{s} = \sum_{i = 0}^{k - 1} Y_{i} \left[ B_{t_{i + 1}} - B_{t_{i}} \right],
$$

and

$$
Z_{t} = Z_{s} + \sum_{i = k}^{j - 1} Y_{i} \left[ B_{t_{i + 1}} - B_{t_{i}} \right].
$$

Since  $E(Z_s \mid \mathcal{F}_s) = Z_s$ , we see that

$$
E \left(Z_{t} \mid \mathcal{F}_{s}\right) = Z_{s} + \sum_{i = k}^{j - 1} E \left[ Y_{i} \left[ B_{t_{i + 1}} - B_{t_{i}} \right] \mid \mathcal{F}_{s} \right].
$$

For  $k \leq i \leq j - 1$ , we have  $t_i \geq s$  and hence

$$
E \left[ Y_{i} \left[ B_{t_{i + 1}} - B_{t_{i}} \right] \mid \mathcal{F}_{s} \right] = E \left[ E \left(Y_{i} \left[ B_{t_{i + 1}} - B_{t_{i}} \right] \mid \mathcal{F}_{t_{i}}\right) \mid \mathcal{F}_{s} \right].
$$

Since  $Y_{i}$  is  $\mathcal{F}_{t_i}$ -measurable and  $B_{t_{i + 1}} - B_{t_i}$  is independent of  $\mathcal{F}_{t_i}$ ,

$$
E \left(Y_{i} \left[ B_{t_{i + 1}} - B_{t_{i}} \right] \mid \mathcal{F}_{t_{i}}\right) = Y_{i} E \left(B_{t_{i + 1}} - B_{t_{i}} \mid \mathcal{F}_{t_{i}}\right) = Y_{i} \mathbb{E} \left[ B_{t_{i + 1}} - B_{t_{i}} \right] = 0.
$$

This gives (3.2).

We will prove the variance rule for  $t = t_j$  in which case

$$
Z_{t}^{2} = \sum_{i = 0}^{j - 1} \sum_{k = 0}^{j - 1} Y_{i} \left[ B_{t_{i + 1}} - B_{t_{i}} \right] Y_{k} \left[ B_{t_{k + 1}} - B_{t_{k}} \right].
$$

If  $i <   k$

$$
\begin{array}{l} \mathbb{E} \left[ Y_{i} \left[ B_{t_{i + 1}} - B_{t_{i}} \right] Y_{k} \left[ B_{t_{k + 1}} - B_{t_{k}} \right] \right] \\ = \mathbb{E} \left[ E \left(Y_{i} \left[ B_{t_{i + 1}} - B_{t_{i}} \right] Y_{k} \left[ B_{t_{k + 1}} - B_{t_{k}} \right] \mid \mathcal{F}_{t_{k}}\right) \right]. \\ \end{array}
$$

The random variables  $Y_{i}, Y_{k}, B_{t_{i + 1}} - B_{t_{i}}$  are all  $\mathcal{F}_{t_k}$ -measurable while  $B_{t_{k + 1}} - B_{t_k}$  is independent of  $\mathcal{F}_{t_k}$ , and hence

$$
\begin{array}{l} E \left(Y_{i} \left[ B_{t_{i + 1}} - B_{t_{i}} \right] Y_{k} \left[ B_{t_{k + 1}} - B_{t_{k}} \right] \mid \mathcal{F}_{t_{k}}\right) \\ = Y_{i} \left[ B_{t_{i + 1}} - B_{t_{i}} \right] Y_{k} E \left(B_{t_{k + 1}} - B_{t_{k}} \mid \mathcal{F}_{t_{k}}\right) \\ { = } { Y_{ i } \left[ B_{ t_{ i + 1 } } - B_{ t_{ i } } \right] Y_{ k } \mathbb{ E } \left[ B_{ t_{ k + 1 } } - B_{ t_{ k } } \right] = 0 . } \\ \end{array}
$$

Arguing similarly for  $i > k$ , we see that

$$
\mathbb{E} \left[ Z_{t}^{2} \right] = \sum_{i = 0}^{j - 1} \mathbb{E} \left[ Y_{i}^{2} \left(B_{t_{i + 1}} - B_{t_{i}}\right)^{2} \right].
$$

(We have just reproduced the argument showing orthogonality of martingale increments.) Since  $Y_{i}^{2}$  is  $\mathcal{F}_{t_i}$ -measurable and  $(B_{t_{i + 1}} - B_{t_i})^2$  is independent of  $\mathcal{F}_{t_i}$ , we get

$$
\begin{array}{l} E \left[ Y_{i}^{2} \left(B_{t_{i + 1}} - B_{t_{i}}\right)^{2} \mid \mathcal{F}_{t_{i}} \right] = Y_{i}^{2} E \left[ \left(B_{t_{i + 1}} - B_{t_{i}}\right)^{2} \mid \mathcal{F}_{t_{i}} \right] \\ = Y_{i}^{2} \mathbb{E} \left[ \left(B_{t_{i + 1}} - B_{t_{i}}\right)^{2} \right] \\ = Y_{i}^{2} \left(t_{i + 1} - t_{i}\right), \\ \end{array}
$$

and hence,

$$
\begin{array}{l} \mathbb{E} \left[ Y_{i}^{2} \left(B_{t_{i + 1}} - B_{t_{i}}\right)^{2} \right] = \mathbb{E} \left[ E \left(Y_{i}^{2} \left(B_{t_{i + 1}} - B_{t_{i}}\right)^{2} \mid \mathcal{F}_{t_{i}}\right) \right] \\ { = } { \mathbb{ E } [ Y_{ i }^{ 2 } ] ( t_{ i + 1 } - t_{ i } ) . } \\ \end{array}
$$

The function  $s \mapsto \mathbb{E}[A_s^2]$  is a step function that takes on the value  $\mathbb{E}[Y_i^2]$  for  $t_i \leq s < t_{i+1}$ . Therefore,

$$
\mathbb{E} [ Z_{t}^{2} ] = \sum_{i = 0}^{j - 1} \mathbb{E} [ Y_{i}^{2} ] (t_{i + 1} - t_{i}) = \int_{0}^{t} \mathbb{E} [ A_{s}^{2} ] d s.
$$

# 3.2.3 Integration of continuous processes

In this section we will assume that  $A_{t}$  is a process with continuous paths that is adapted to the filtration  $\{\mathcal{F}_t\}$ . Recall that this implies that each  $A_{t}$  is  $\mathcal{F}_t$ -measurable. To integrate these processes we use the following approximation result.

Lemma 3.2.2. Suppose  $A_{t}$  is a process with continuous paths, adapted to the filtration  $\{\mathcal{F}_t\}$ . Suppose also that there exists  $C < \infty$  such that with probability one  $|A_t| \leq C$  for all  $t$ . Then there exists a sequence of simple processes  $A_{t}^{(n)}$  such that for all  $t$ ,

$$
\lim_{n \rightarrow \infty} \int_{0}^{t} \mathbb{E} \left[ | A_{s} - A_{s}^{(n)} |^{2} \right] d s = 0. \tag {3.3}
$$

Moreover, for all  $n,t$ ,  $|A_t^{(n)}|\leq C$

We will prove this lemma for  $t = 1$ . Let

$$
A_{t}^{(n)} = A (j, n), \quad \frac{j}{n} \leq t <   \frac{j + 1}{n},
$$

where  $A(0,n) = A_0$  and for  $j\geq 1$

$$
A (j, n) = n \int_{(j - 1) / n}^{j / n} A_{s} d s.
$$

It suffices to prove (3.3) for each fixed value of  $t$  and for ease we will choose  $t = 1$ . By construction, the  $A_{t}^{(n)}$  are simple processes satisfying  $|A_{t}^{(n)}| \leq C$ . Since (with probability one) the function  $t \mapsto A_t$  is continuous, we have

$$
A_{t}^{(n)} \rightarrow A_{t},
$$

and hence by the bounded convergence theorem applied to Lebesgue measure,

$$
\lim_{n\to \infty}Y_{n} = 0,
$$

where

$$
Y_{n} = \int_{0}^{1} \left[ A_{t}^{(n)} - A_{t} \right]^{2} d t. \tag {3.4}
$$

Since the random variables  $\{Y_{n}\}$  are uniformly bounded, this implies

$$
\lim_{n \to \infty} \mathbb{E} \left[ \int_{0}^{1} [ A_{t}^{(n)} - A_{t} ]^{2} d t \right] = \lim_{n \to \infty} \mathbb{E} [ Y_{n} ] = 0.
$$

Given the lemma, we can define

$$
\int_{0}^{t} A_{s} d B_{s},
$$

for a bounded, continuous process  $A_{s}$  as follows. Find a sequence of simple process  $A_{s}^{(n)}$  satisfying (3.3). Then it can be shown that for each  $t$  there is an square integrable random variable  $Z_{t}$  such that

$$
Z_{t} = \lim_{n \to \infty} \int_{0}^{t} A_{s}^{(n)} d B_{s}.
$$

We define

$$
\int_{0}^{t} A_{s} d B_{s} = Z_{t}.
$$

The integral satisfies four properties which should start becoming familiar.

Proposition 3.2.3. Suppose  $B_{t}$  is a standard Brownian motion with respect to a filtration  $\{\mathcal{F}_t\}$ , and  $A_{t}, C_{t}$  are bounded, adapted processes with continuous paths.

- Linearity. If  $a, b$  are constants, then

$$
\int_{0}^{t} \left(a A_{s} + b C_{s}\right) d B_{s} = a \int_{0}^{t} A_{s} d B_{s} + b \int_{0}^{t} C_{s} d B_{s}.
$$

Also, if  $r <   t$

$$
\int_{0}^{t} A_{s} d B_{s} = \int_{0}^{r} A_{s} d B_{s} + \int_{r}^{t} A_{s} d B_{s}.
$$

- Martingale property. The process

$$
Z_{t} = \int_{0}^{t} A_{s} d B_{s}
$$

is a martingale with respect to  $\{\mathcal{F}_t\}$ .

- Variance rule.  $Z_{t}$  is square integrable and

$$
\mathrm{Var} [ Z_{t} ] = \mathbb{E} \left[ Z_{t}^{2} \right] = \int_{0}^{t} \mathbb{E} [ A_{s}^{2} ] d s.
$$

- Continuity. With probability one,  $t \mapsto Z_t$  is a continuous function.

For fixed  $t$ , the existence of  $Z_{t}$  follows from the estimate (3.3) and the completeness of  $L^2$ . In this case, the convergence is in  $L^2$ . However, there are issues dealing with the fact that there are an uncountable number of times. This can be handled similarly to the construction of Brownian motion. For convenience, we restrict to  $0 \leq t \leq 1$ .

We first consider  $t \in \mathcal{D}$  and define  $Z_{t}, t \in \mathcal{D}$  as the  $L^2$  limit which is defined for  $t \in \mathcal{D}$  up to a single event of probability zero. Suppose  $A_{t}$  is a simple process with  $|A_{t}| \leq C$ . Then (Exercise 3.1) one can show that

$$
\mathbb{E} \left[ \left(Z_{t} - Z_{s}\right)^{4} \right] \leq 4 C^{4} | t - s |^{2}.
$$

By Fatou's lemma, this bound will also hold for the limit process. This estimate and an argument first due to Kolmogorov suffice to give continuity. We leave the argument as Exercise 3.11.

Let  $A_{t}^{(n)}$  be a sequence of simple processes and let  $Z_{t}^{(n)}$ ,  $Z_{t}$  denote the corresponding stochastic integrals. Let

$$
\| A^{(n)} - A \|^{2} = \mathbb{E} \left[ (Z_{1}^{(n)} - Z_{1})^{2} \right] = \int_{0}^{1} \mathbb{E} \left[ (A_{t}^{(n)} - A_{t})^{2} \right] d t,
$$

and let

$$
Q_{n} = \max_{0 \leq t \leq 1} | Z_{t}^{(n)} - Z_{t} |.
$$

If we view  $Z^{(n)}$ ,  $Z$  as random variables taking values in  $C[0,1]$ , the set of continuous functions on  $[0,1]$  with the supremum norm, then  $Q_{n}$  is the distance between  $Z^{(n)}$  and  $Z$ . The next proposition establishes convergence with probability one in this space.

Proposition 3.2.4. If

$$
\sum_{n = 1}^{\infty} \left\| A^{(n)} - A \right\|^{2} <   \infty , \tag {3.5}
$$

then with probability one,  $Q_{n} \to 0$ .

Proof. By the Borel-Cantelli lemma, it suffices to show that for every  $\epsilon > 0$ ,

$$
\sum_{n = 1}^{\infty} \mathbb{P} \{Q_{n} > \epsilon \} <   \infty .
$$

Continuity of  $Z_{t}^{(n)}$  and  $Z_{t}$  implies that

$$
\mathbb{P} \{Q_{n} > \epsilon \} = \lim_{m \to \infty} \mathbb{P} \left\{\max_{t \in \mathcal{D}_{m}} | Z_{t}^{(n)} - Z_{t} | > \epsilon \right\}.
$$

For fixed  $m$ , the process  $M_{t} = Z_{t}^{(n)} - Z_{t}, t \in \mathcal{D}_{m}$ , is a discrete time martingale and Corollary 1.7.2 implies that

$$
\mathbb{P} \left\{\max_{t \in \mathcal{D}_{m}} | M_{t} | > \epsilon \right\} \leq \frac{\mathbb{E} [ M_{1}^{2} ]}{\epsilon^{2}}.
$$

Therefore,

$$
\mathbb{P} \{Q_{n} > \epsilon \} \leq \frac{\mathbb{E} [ M_{1}^{2} ]}{\epsilon^{2}} = \epsilon^{- 2} \| A^{(n)} - A_{t} \|^{2}. \quad \square
$$

Let us emphasize the order of quantifiers in the proposition. Given a sequence  $A^{(n)}$  of approximating simple processes satisfying (3.5), we get convergence with probability one. It is not true that with probability one, we get convergence for every sequence. See an analogous discussion in Section 2.8 about the quadratic variation.

If  $A_{t}$  is adapted with continuous paths, but not necessarily bounded, we can still define

$$
Z_{t} = \int_{0}^{t} A_{s} d B_{s}
$$

as follows. For each  $n < \infty$ , let  $T_{n} = \min \{t:|A_{t}| = n\}$  and let  $A_{s}^{(n)} = A_{s\wedge T_{n}}$ . Then  $A_{s}^{(n)}$  is a bounded, continuous process and

$$
Z_{t}^{(n)} = \int_{0}^{t} A_{s}^{(n)} d B_{s}.
$$

is well defined. We define

$$
Z_{t} = \lim_{n \to \infty} Z_{t}^{(n)}.
$$

The existence of this limit is easy to establish. Indeed, let

$$
K_{t} = \max_{0\leq s\leq t}|A_{s}|.
$$

Then for  $n \geq K_t$ ,  $A_s^{(n)} = A_s$  for  $0 \leq s \leq t$ , and hence

$$
Z_{t}^{(n)} = Z_{t}, \quad t \geq K_{t}.
$$

There is a subtlety here. Since  $K_{t}$  is a random variable, the  $n$  that one needs to choose may depend on the path. Although  $Z_{t}$  is well defined in the limit and satisfies linearity and continuity, we will see in Section 4.1 that it might not satisfy the martingale property. Let us not worry about this at the moment. We will state the following.

Proposition 3.2.5. Suppose  $B_{t}$  is a standard Brownian motion with respect to a filtration  $\{\mathcal{F}_t\}$ , and  $A_{t}, C_{t}$  are adapted processes with continuous paths.

- Linearity. If  $a, b$  are constants and  $r < t$ , then

$$
\int_{0}^{t} \left(a A_{s} + b C_{s}\right) d B_{s} = a \int_{0}^{t} A_{s} d B_{s} + b \int_{0}^{t} C_{s} d B_{s},
$$

$$
\int_{0}^{t} A_{s} d B_{s} = \int_{0}^{r} A_{s} d B_{s} + \int_{r}^{t} A_{s} d B_{s}.
$$

- Variance rule. The variance of  $Z_{t}$  satisfies

$$
\operatorname{Var} [ Z_{t} ] = \mathbb{E} \left[ Z_{t}^{2} \right] = \int_{0}^{t} \mathbb{E} [ A_{s}^{2} ] d s.
$$

It is possible for both sides to equal infinity. However, if  $\operatorname{Var}[Z_t] < \infty$  for all  $t$ , then  $Z_t$  is a square integrable martingale.

- Continuity With probability one,  $t \mapsto Z_t$  is a continuous function.

We can relax the condition of continuous paths. We say that the paths are piecewise continuous if with probability one on each finite interval the paths are continuous except a finite number of points, say  $0 < t_1 < t_2 < \dots < t_n = t$ . For a piecewise continuous function with discontinuities at times  $t_1, t_2, \ldots$ , we define

$$
\int_{0}^{t} A_{s} d B_{s} = \int_{0}^{t_{1}} A_{s} d B_{s} + \dots + \int_{t_{n - 1}}^{t_{n}} A_{s} d B_{s}. \tag {3.6}
$$

The value of this integral does not depend on how we define  $A_{t}$  at the discontinuity. In this book, the process  $A_{t}$  will have continuous or piecewise continuous paths although the integral can be extended to more general processes. Note that the simple processes have piecewise continuous paths. One important case that arises comes from a stopping time. Suppose  $T$  is a stopping time with respect to  $\{\mathcal{F}_t\}$ . Then if  $A_{t}$  is a continuous, adapted process and

$$
Z_{t} = \int_{0}^{t} A_{s} d B_{s},
$$

then

$$
Z_{t \wedge T} = \int_{0}^{t \wedge T} A_{s} d B_{s} = \int_{0}^{t} A_{s, T} d B_{s},
$$

where  $A_{s,T}$  denotes the piecewise continuous process,

$$
A_{s, T} = \left\{ \begin{array}{l l} A_{s} & s <   T \\ 0 & s \geq T \end{array} \right..
$$

In other words, stopping a stochastic integral is the same as changing the bet to zero.

Continuity of paths is much more than is needed for the stochastic integral to exist. If  $A_{t}$  is a uniformly bounded, adapted process, and we let

$$
A_{t}^{(n)} = n \int_{t - \frac{1}{n}}^{t} A_{s} d s, \tag {3.7}
$$

then  $A_{t}^{(n)}$  is an adapted continuous process. This requires some assumptions on the process  $A_{t}$  so that integrals as in (3.4) and (3.7) exist, at least as Lebesgue integrals, and so that we can use Fubini's theorem to interchange expectation and integrals on the line. The condition to guarantee this is called progressive measurability, but we will not go into details here. If the  $A_{t}$  are uniformly bounded, then the Lebesgue density theory implies that  $A_{t}^{(n)} \to A_{t}$  for Lebesgue almost every  $t$ . Hence, with probability one,

$$
\int_{0}^{1} [ A_{t}^{(n)} - A_{t} ]^{2} d t \longrightarrow 0,
$$

and since the processes are bounded the convergence is also in  $L^2$ . For such processes we can define the stochastic integral as above as an  $L^2$ -limit.

We will write the stochastic differential

$$
d X_{t} = A_{t} d B_{t},
$$

to mean that  $X_{t}$  satisfies

$$
X_{t} = X_{0} + \int_{0}^{t} A_{s} d B_{s}.
$$

This has been made mathematically precise by the definition of the integral. Intuitively, we think of  $X_{t}$  as a process that at time  $t$  evolves like a Brownian motion with zero drift and variance  $A_{t}^{2}$ . This is well defined for any adapted, continuous process  $A_{t}$ , and  $X_{t}$  is a continuous function of  $t$ . In particular, if  $\phi$  is a bounded continuous function, then we can hope to solve the equation

$$
d X_{t} = \phi (X_{t}) d B_{t}.
$$

Solving such an equation can be difficult (see the end of Section 3.5), but simulating such a process is straightforward using the stochastic Euler rule:

$$
X_{t + \Delta t} = X_{t} + \phi (X_{t}) \sqrt{\Delta t} N,
$$

where  $N\sim N(0,1)$

The rules of stochastic calculus are not the same as those of usual calculus. As an example, consider the integral

$$
Z_{t} = \int_{0}^{t} B_{s} d B_{s}.
$$

Although  $B_{t}$  is not a bounded process, it is continuous, adapted and

$$
\int_{0}^{t} \mathbb{E} [ B_{s}^{2} ] d s = \int_{0}^{t} s d s = \frac{t^{2}}{2} <   \infty ,
$$

so  $Z_{t}$  is a square integrable martingale. If one naively followed the rules of calculus, one might hope that

$$
Z_{t} = \frac{1}{2} \left[ B_{t}^{2} - B_{0}^{2} \right] = \frac{B_{t}^{2}}{2}.
$$

However, a quick check shows that this cannot be correct. The left-hand side is a martingale with  $Z_0 = 0$  and hence

$$
\mathbb{E} [ Z_{t} ] = 0.
$$

However,

$$
\mathbb{E} \left[ B_{t}^{2} / 2 \right] = t / 2 \neq 0.
$$

In the next section we will derive the main tool for calculating integrals, Ito's formula or lemma. Using this we will show that, in fact,

$$
Z_{t} = \frac{1}{2} \left[ B_{t}^{2} - t \right]. \tag {3.8}
$$

This is a very special case. In general, one must do more than just subtract the expectation. One thing to note about the solution — for  $t > 0$ , the random variable on the right-hand side of (3.8) does not have a normal distribution. Even though stochastic integrals are defined as limits of normal increments, the "betting" factor  $A_{t}$  can depend on the past and this allows one to get non-normal random variables. If the integrand  $A_{t} = f(t)$  is nonrandom, then the integral

$$
\int_{0}^{t} f (s) d B_{s},
$$

is really a limit of normal random variables and hence has a normal distribution (see Exercise 3.8).

If

$$
Z_{t} = \int_{0}^{t} A_{s} d B_{s},
$$

then the quadratic variation of  $Z$  is defined by

$$
\langle Z \rangle_{t} = \lim_{n \to \infty} \sum_{j \leq n t} \left[ Z \left(\frac{j}{n}\right) - Z \left(\frac{j - 1}{n}\right) \right]^{2}.
$$

Theorem 3.2.6. If  $A_{t}$  is an adapted process with continuous or piecewise continuous paths and

$$
Z_{t} = \int_{0}^{t} A_{s} d B_{s},
$$

then

$$
\langle Z \rangle_{t} = \int_{0}^{t} A_{s}^{2} d s.
$$

Note that if  $\sigma > 0$  is a constant and  $Z_{t} = \int_{0}^{t}\sigma dB_{s}$ , then  $Z$  is a Brownian motion with variance parameter  $\sigma^2$  for which we have already seen that  $\langle Z\rangle_t = \sigma^2 t$ . The quadratic variation  $\langle Z\rangle_t$  should be viewed as the "total amount of randomness" or the "total amount of betting" that has been done up to time  $t$ . For Brownian motion, the betting rate stays constant and hence the quadratic variation grows linearly. For more general stochastic integrals, the current bet depends on the results of the games up to that point and hence is a random variable. The quadratic variation at time  $t$  is a random variable with mean

$$
\mathbb{E} \left[ \langle Z \rangle_{t} \right] = \mathbb{E} \left[ \int_{0}^{t} A_{s}^{2} d s \right] = \int_{0}^{t} \mathbb{E} \left[ A_{s}^{2} \right] d s.
$$

An alternative way to define the quadratic variation  $\langle Z\rangle_t$  for square integrable martingales is as the unique increasing process such that

$$
M_{t} = Z_{t}^{2} - \langle Z \rangle_{t}
$$

is a martingale. If  $A_{t}$  is a simple process, it is not hard (Exercise 3.4) to show that  $M_{t}$  as defined above is a martingale. More generally, one

can establish this by taking limits. To show that this characterization defines  $\langle Z\rangle$  uniquely, we need the following proposition. The total variation of a function  $f:[0,\infty)\to \mathbb{R}$  is defined as

$$
V_{t} (f) = \sup \sum_{j = 1}^{n} | f (t_{j - 1}) - f (t_{j}) | \leq K,
$$

where the supremum is over all partitions

$$
0 = t_{0} <   t_{1} <   t_{2} <   \dots <   t_{n} = t.
$$

We say  $f$  has bounded variation (locally) if  $V_{t}(f) < \infty$  for all  $t$ . Increasing functions clearly have bounded variation, and it is not too hard to see that the difference of increasing functions has bounded variation. Also, if  $f$  is continuous with bounded variation,

$$
\lim_{t \downarrow 0} V_{t} (f) = 0.
$$

The next proposition shows that nontrivial continuous martingales never have paths of bounded variation.

Proposition 3.2.7. Suppose  $M_t$  is a square integrable martingale with respect to  $\{\mathcal{F}_t\}$  with  $M_0 = 0$  such that with probability one, the paths of  $M_t$  are continuous with bounded variation. Then  $M_t = 0$  for every  $t$ .

Proof. Since  $M_t$  has continuous paths, it suffices to show that  $\mathbb{P}\{M_t = 0\} = 1$  for every rational  $t$ . The argument is the same for all  $t$ , so let us assume  $t = 1$ . We first make the stronger assumption that  $V_1(M) \leq K < \infty$ . Let

$$
Q_{n} = \sum_{j = 1}^{n} \left[ M \left(\frac{j}{n}\right) - M \left(\frac{j - 1}{n}\right) \right]^{2},
$$

$$
\delta_{n} = \max_{j = 1, \ldots , n} \left\{\left| M \left(\frac{j}{n}\right) - M \left(\frac{j - 1}{n}\right) \right| \right\},
$$

and note that

$$
Q_{n} \leq \delta_{n} \sum_{j = 1}^{n} \left| M \left(\frac{j}{n}\right) - M \left(\frac{j - 1}{n}\right) \right| \leq \delta_{n} K.
$$

Orthogonality of martingale increments implies that  $\mathbb{E}[M_1^2] = \mathbb{E}[Q_n]$ . Continuity of the paths implies that with probability one  $\delta_n \downarrow 0$  and hence  $Q_n \to 0$ . Since  $Q_n \leq \delta_n K \leq K^2$ , we can use the bounded convergence theorem to conclude that

$$
\mathbb{E} \left[ M_{1}^{2} \right] = \lim_{n \rightarrow \infty} \mathbb{E} [ Q_{n} ] = 0.
$$

If  $V_{1}(M)$  is not bounded, we can consider the stopping times

$$
T_{K} = \inf \{t: V_{t} (M) = K \}.
$$

The argument above gives  $\mathbb{E}\left[M_{1\wedge T_K}^2\right] = 0$  for each  $K$ , and hence with probability one for each  $K$ ,  $M_{1\wedge T_K} = 0$ . But  $M_1 = \lim_{K\to \infty}M_{1\wedge T_K}$ .

Using the proposition, we see that if  $Y_{t}$  is an increasing adapted process such that  $Z_{t}^{2} - Y_{t}$  is a martingale, then

$$
M_{t} - (Z_{t}^{2} - Y_{t}) = Y_{t} - \langle Z \rangle_{t},
$$

is a continuous martingale with paths of bounded variation. Therefore,  $Y_{t} = \langle Z\rangle_{t}$ .

# 3.3 Itô's formula

Itô's formula is the fundamental theorem of stochastic calculus. Before stating it, let us review the fundamental theorem of ordinary calculus. Suppose  $f$  is a  $C^1$  function. (We recall that a function if  $C^k$  if it has  $k$  continuous derivatives.) Then we can expand  $f$  in a Taylor approximation,

$$
f (t + s) = f (t) + f^{\prime} (t) s + o (s),
$$

where  $o(s)$  denotes a term such that  $o(s) / s \to 0$  as  $s \to 0$ . We write  $f$  as a telescoping sum:

$$
f (1) = f (0) + \sum_{j = 1}^{n} \left[ f \left(\frac{j}{n}\right) - f \left(\frac{j - 1}{n}\right) \right].
$$

The Taylor approximation gives

$$
f \left(\frac{j}{n}\right) - f \left(\frac{j - 1}{n}\right) = f^{\prime} \left(\frac{j - 1}{n}\right) \frac{1}{n} + o \left(\frac{1}{n}\right).
$$

Hence,

$$
f (1) = f (0) + \lim_{n \to \infty} \sum_{j = 1}^{n} f^{\prime} \left(\frac{j - 1}{n}\right) \frac{1}{n} + \lim_{n \to \infty} \sum_{j = 1}^{n} o \left(\frac{1}{n}\right).
$$

The first limit on the right-hand side is the Riemann sum approximation of the definite integral and the second limit equals zero since  $n o(1/n) \to 0$ . Therefore,

$$
f (1) = f (0) + \int_{0}^{1} f^{\prime} (t) d t.
$$

Itô's formula is similar but it requires considering both first and second derivatives.

Theorem 3.3.1 (Itô's formula I). Suppose  $f$  is a  $C^2$  function and  $B_t$  is a standard Brownian motion. Then for every  $t$ ,

$$
f (B_{t}) = f (B_{0}) + \int_{0}^{t} f^{\prime} (B_{s}) d B_{s} + \frac{1}{2} \int_{0}^{t} f^{\prime \prime} (B_{s}) d s.
$$

The theorem is often written in the differential form

$$
d f (B_{t}) = f^{\prime} (B_{t}) d B_{t} + \frac{1}{2} f^{\prime \prime} (B_{t}) d t.
$$

In other words, the process  $Y_{t} = f(B_{t})$  at time  $t$  evolves like a Brownian motion with drift  $f^{\prime}(B_t) / 2$  and variance  $f^{\prime}(B_t)^2$ . Note that  $f^{\prime}(B_t)$  is a continuous adapted process so the stochastic integral is well defined.

To see where the formula comes from, let us assume for ease that  $t = 1$ . Let us expand  $f$  in a second-order Taylor approximation,

$$
f (x + y) = f (x) + f^{\prime} (x) y + \frac{1}{2} f^{\prime \prime} (x) y^{2} + o (y^{2}),
$$

where  $o(y^2) / y^2\to 0$  as  $y\rightarrow 0$ . Similarly to above, we write

$$
f (B_{1}) - f (B_{0}) = \sum_{j = 1}^{n} \left[ f \left(B_{j / n}\right) - f \left(B_{(j - 1) / n}\right) \right].
$$

Using the Taylor approximation, we write

$$
\begin{array}{l} f \left(B_{j / n}\right) - f \left(B_{(j - 1) / n}\right) \\ = f^{\prime} \left(B_{(j - 1) / n}\right) \Delta_{j, n} + \frac{1}{2} f^{\prime \prime} \left(B_{(j - 1) / n}\right) \Delta_{j, n}^{2} + o \left(\Delta_{j, n}^{2}\right), \\ \end{array}
$$

where

$$
\Delta_{j, n} = B_{j / n} - B_{(j - 1) / n}.
$$

Hence  $f(B_{1}) - f(B_{0})$  is equal to the sum of the following three limits:

$$
\lim_{n \rightarrow \infty} \sum_{j = 1}^{n} f^{\prime} (B_{(j - 1) / n}) [ B_{j / n} - B_{(j - 1) / n} ], \tag {3.9}
$$

$$
\lim_{n \rightarrow \infty} \frac{1}{2} \sum_{j = 1}^{n} f^{\prime \prime} \left(B_{(j - 1) / n}\right)\left[ B_{j / n} - B_{(j - 1) / n} \right]^{2}, \tag {3.10}
$$

$$
\lim_{n \rightarrow \infty} \sum_{j = 1}^{n} o \left(\left[ B_{j / n} - B_{(j - 1) / n} \right]^{2}\right). \tag {3.11}
$$

The increment of the Brownian motion satisfies  $\left[B_{j / n} - B_{(j - 1) / n}\right]^2\approx 1 / n$ . Since the sum in (3.11) looks like  $n$  terms of smaller order than  $1 / n$  the limit equals zero. The limit in (3.9) is a simple process approximation to a stochastic integral and hence we see that the limit is

$$
\int_{0}^{1} f^{\prime} (B_{t}) d B_{t}.
$$

If  $f''$  were constant, say  $b$ , then the limit in (3.10) would be

$$
\lim_{n \rightarrow \infty} \frac{b}{2} \sum_{j = 1}^{n} \left[ B_{j / n} - B_{(j - 1) / n} \right]^{2} = \frac{b}{2} \langle B \rangle_{1} = \frac{b}{2}.
$$

This tells us what the limit should be in general. Let  $h(t) = f''(B_t)$  which is a continuous function. For every  $\epsilon > 0$ , there exists a step function  $h_\epsilon(t)$  such that  $|h(t) - h_\epsilon(t)| < \epsilon$  for every  $t$ . For fixed  $\epsilon$ , we can consider each interval on which  $h_\epsilon$  is constant to see that

$$
\lim_{n \to \infty} \sum_{j = 1}^{n} h_{\epsilon} (t) \left[ B_{j / n} - B_{(j - 1) / n} \right]^{2} = \int_{0}^{1} h_{\epsilon} (t) d t.
$$

Also,

$$
\left| \sum_{j = 1}^{n} [ h (t) - h_{\epsilon} (t) ] [ B_{j / n} - B_{(j - 1) / n} ]^{2} \right| \leq \epsilon \sum_{j = 1}^{n} [ B_{j / n} - B_{(j - 1) / n} ]^{2} \to \epsilon .
$$

Therefore, the limit in (3.10) is the same as

$$
\lim_{\epsilon \rightarrow 0} \frac{1}{2} \int_{0}^{1} h_{\epsilon} (t) d t = \frac{1}{2} \int_{0}^{1} h (t) d t = \frac{1}{2} \int_{0}^{1} f^{\prime \prime} (B_{t}) d t.
$$

Example 3.3.1. Let  $f(x) = x^{2}$ . Then  $f'(x) = 2x, f''(x) = 2$ , and hence

$$
B_{t}^{2} = B_{0}^{2} + \int_{0}^{t} f^{\prime} (B_{s}) d B_{s} + \frac{1}{2} \int_{0}^{t} f^{\prime \prime} (B_{s}) d s = 2 \int_{0}^{t} B_{s} d B_{s} + t.
$$

This gives the equation

$$
\int_{0}^{t} B_{s} d B_{s} = \frac{1}{2} \left[ B_{t}^{2} - t \right],
$$

which we mentioned in the last section. This example is particularly easy because  $f''$  is constant. If  $f''$  is not constant, then  $f''(B_t)$  is a random variable, and the  $dt$  integral is not so easy to compute.

Example 3.3.2. Let  $f(x) = e^{\sigma x}$  where  $\sigma > 0$ . Then  $f'(x) = \sigma e^{\sigma x} = \sigma f(x), f''(x) = \sigma^2 e^{\sigma x} = \sigma^2 f(x)$ . Let  $X_t = f(B_t) = e^{\sigma B_t}$ . Then

$$
d X_{t} = f^{\prime} (B_{t}) d B_{t} + \frac{1}{2} f^{\prime \prime} (B_{t}) d t = \sigma X_{t} d B_{t} + \frac{\sigma^{2}}{2} X_{t} d t.
$$

The process  $X_{t}$  is an example of geometric Brownian motion which we discuss in more detail in the next section.

with mesh  $\| \Pi \| = \max \{t_j - t_{j - 1}\}$ . Then we write

$$
f (B_{1}) = f (B_{0}) + \sum_{j = 1}^{n} \left[ f \left(B_{t_{j}}\right) - f \left(B_{t_{j - 1}}\right) \right].
$$

Taylor's theorem implies that

$$
\begin{array}{l} \frac{m (j , n)}{2} \left[ B_{t_{j}} - B_{t_{j - 1}} \right]^{2} \\ \leq f \left(B_{t_{j}}\right) - f \left(B_{t_{j - 1}}\right) - f^{\prime} \left(B_{t_{j - 1}}\right) \left[ B_{t_{j}} - B_{t_{j - 1}} \right] \\ \leq \frac{M (j , n)}{2} \left[ B_{t_{j}} - B_{t_{j - 1}} \right]^{2}, \\ \end{array}
$$

where  $m(j,n), M(j,n)$  denote the minimum and maximum of  $f''(x)$  for  $x$  on the interval with endpoints  $B_{t_{j-1}}$  and  $B_{t_j}$ . Hence if we let

$$
Q^{1} (\Pi) = \sum_{j = 1}^{n} f^{\prime} \left(B_{t_{j - 1}}\right) \left[ B_{t_{j}} - B_{t_{j - 1}} \right],
$$

$$
Q_{+}^{2} (\Pi) = \sum_{j = 1}^{n} \frac{M (j , n)}{2} \left[ B_{t_{j}} - B_{t_{j - 1}} \right]^{2},
$$

$$
Q_{-}^{2} (\Pi) = \sum_{j = 1}^{n} \frac{m (j , n)}{2} \left[ B_{t_{j}} - B_{t_{j - 1}} \right]^{2},
$$

we have

$$
Q_{-}^{2} (\Pi) \leq f (B_{1}) - f (B_{0}) - Q^{1} (\Pi) \leq Q_{+}^{2} (\Pi).
$$

We now suppose that we have a sequence of partitions  $\Pi_{n}$  of the form

$$
0 = t_{0, n} <   t_{1, n} <   \dots <   t_{k_{n}, n} = 1,
$$

with  $\sum \| \Pi_n\| < \infty$ . Then we have seen that with probability one, for all  $0 < s < t < 1$ ,

$$
\lim_{n\to \infty}\sum_{s\leq t_{j,n} <   t}\left[B_{t_{j,n}} - B_{t_{j - 1,n}}\right]^{2} = t - s.
$$

Using the continuity of  $B_{t}$  and  $f''$ , we can see that on the event that this is true, we also have

$$
\lim_{n \to \infty} Q_{-}^{2} (\Pi_{n}) = \lim_{n \to \infty} Q_{+}^{2} (\Pi_{n}) = \frac{1}{2} \int_{0}^{1} f^{\prime \prime} (B_{s}) d s.
$$

We now assume for the moment that there exists  $K < \infty$  such that  $|f''(x)| \leq K$  for all  $x$ . This happens, for example, if  $f$  has compact support. Then

$$
| f^{\prime} (B_{s}) - f^{\prime} (B_{t_{j - 1, n}}) | \leq K | B_{s} - B_{t_{j - 1, n}} |.
$$

Let  $A_{t} = f^{\prime}(B_{t})$  and let  $A_{t}^{(n)}$  be the simple process that equals  $f^{\prime}(B_{t_{j - 1},n})$  for  $t_{j - 1,n}\leq t < t_{j,n}$ . For  $t_{j - 1,n}\leq s < t_{j,n}$ ,

$$
\mathbb{E} ([ A_{t} - A_{t}^{(n)} ]^{2}) \leq K^{2} \mathbb{E} ([ B_{s} - B_{t_{j - 1, n}} ]^{2}) = K^{2} [ s - t_{j - 1, n} ] \leq K^{2} \| \Pi_{n} \|.
$$

Therefore,

$$
\int_{0}^{1} \mathbb{E} \left(\left[ A_{t} - A_{t}^{(n)} \right]^{2}\right) d t \leq K^{2} \| \Pi_{n} \|.
$$

In particular, we get the following.

Proposition 3.3.2. Suppose that  $f''$  is bounded and  $\{\Pi_n\}$  is a sequence of partitions with  $\sum \| \Pi_n \| < \infty$ . Let

$$
\begin{array}{l} Y_{t}^{(n)} = f (B_{0}) + \sum_{j = 1}^{k_{n}} f^{\prime} (B_{t_{j - 1, n}}) [ B_{t_{j, n}} - B_{t_{j - 1, n}} ] \\ + \sum_{j = 1}^{k_{n}} \frac{f^{\prime \prime} (B_{t_{j - 1 , n}})}{2} [ B_{t_{j, n}} - B_{t_{j - 1, n}} ]^{2}. \\ \end{array}
$$

Then with probability one

$$
\lim_{n\to \infty}\max_{0\leq t\leq 1}|f(B_{t}) - Y^{(n)}_{t}| = 0.
$$

If  $f''$  is not bounded, we can still prove Ito's formula by using stopping times. This general procedure is often called localization. For each  $K$ , let

$$
T_{K} = \inf  \{t: | f^{\prime \prime} (B_{t}) | \geq K \}.
$$

Then, our argument shows that with probability one for each  $K$ ,

$$
f \left(B_{t \wedge T_{K}}\right) = \int_{0}^{t \wedge T_{K}} f^{\prime} (B_{s}) d B_{s} + \frac{1}{2} \int_{0}^{t \wedge T_{K}} f^{\prime \prime} (B_{s}) d s.
$$

However, with probability one  $T_K \to \infty$  as  $K \to \infty$ , and hence this gives us a formula for  $f(B_t)$ .

Suppose that  $f$  is defined only on an interval  $I = (a, b)$  and  $B_0 \in I$ .

Let

$$
T_{\epsilon} = \inf \{t: B_{t} \leq a + \epsilon \text{or} B_{t} \geq b - \epsilon \}, \quad T = T_{0}.
$$

We can apply Ito's formula to conclude for all  $t$  and all  $\epsilon > 0$ .

$$
f (B_{t \wedge T_{\epsilon}}) = f (B_{0}) + \int_{0}^{t \wedge T_{\epsilon}} f^{\prime} (B_{s}) d B_{s} + \frac{1}{2} \int_{0}^{t \wedge T_{\epsilon}} f^{\prime \prime} (s) d s.
$$

This is sometimes written shorthand as

$$
d f (B_{t}) = f^{\prime} (B_{t}) d B_{t} + \frac{1}{2} f^{\prime \prime} (B_{t}) d t, 0 \leq t <   T.
$$

The general strategy for proving the generalizations of Ito's formula that we give in the next couple of sections is the same, and we will not give the details.

# 3.4 More versions of Ito's formula

We first extend Ito's formula to functions that depend on time as well as position.

Theorem 3.4.1 (Ito's Formula II). Suppose  $f(t,x)$  is a function that is  $C^1$  in  $t$  and  $C^2$  in  $x$ . If  $B_t$  is a standard Brownian motion, then

$$
\begin{array}{l} f (t, B_{t}) = f (0, B_{0}) + \int_{0}^{t} \partial_{x} f (s, B_{s}) d B_{s} \\ + \int_{0}^{t} \left[ \partial_{s} f (s, B_{s}) + \frac{1}{2} \partial_{x x} f (s, B_{s}) \right] d s, \\ \end{array}
$$

or in differential form,

$$
d f (t, B_{t}) = \partial_{x} f (t, B_{t}) d B_{t} + \left[ \partial_{t} f (t, B_{t}) + \frac{1}{2} \partial_{x x} f (t, B_{t}) \right] d t.
$$

This is derived similarly to the first version except when we expand with a Taylor polynomial around  $x$  we get another term:

$$
f (t + \Delta t, x + \Delta x) - f (t, x) =
$$

$$
\partial_{t} f (t, x) \Delta t + o (\Delta t) + \partial_{x} f (t, x) \Delta x + \frac{1}{2} \partial_{x x} f (t, x) (\Delta x)^{2} + o ((\Delta x)^{2}).
$$

If we set  $\Delta t = 1 / n$  and write a telescoping sum for  $f(1, B_1) - f(0, B_0)$  we get terms as (3.9)-(3.11) as well as two more terms:

$$
\lim_{n \rightarrow \infty} \sum_{j = 1}^{n} \partial_{t} f ((j - 1) / n, B_{(j - 1) / n}) (1 / n), \tag {3.12}
$$

$$
\lim_{n \rightarrow \infty} \sum_{j = 1}^{n} o (1 / n). \tag {3.13}
$$

The limit in (3.13) equals zero, and the sum in (3.12) is a Riemann sum approximation of a integral and hence the limit is

$$
\int_{0}^{1} \partial_{t} f (t, B_{t}) d t.
$$

Example 3.4.1. Let  $f(t,x) = e^{at + bx}$ . Then

$$
\partial_{t} f (t, x) = a f (t, x), \quad \partial_{x} f (t, x) = b f (t, x), \quad \partial_{x x} f (t, x) = b^{2} f (t, x).
$$

Therefore, if  $X_{t} = f(t,B_{t}) = \exp \left\{at + bB_{t}\right\}$

$$
\begin{array}{l} d X_{t} = \left[ \partial_{t} f (t, B_{t}) + \frac{1}{2} \partial_{x x} f (t, B_{t}) \right] d t + \partial_{x} f (t, B_{t}) d B_{t} \\ = \left(a + \frac{b^{2}}{2}\right) X_{t} d t + b X_{t} d B_{t}. \\ \end{array}
$$

Definition A process  $X_{t}$  is a geometric Brownian motion with drift  $m$  and volatility  $\sigma$  if it satisfies the SDE

$$
d X_{t} = m X_{t} d t + \sigma X_{t} d B_{t} = X_{t} [ m d t + \sigma d B_{t} ], \tag {3.14}
$$

where  $B_{t}$  is a standard Brownian motion.

Example 3.4.1 shows that if  $B_{t}$  is a standard Brownian motion and

$$
X_{t} = X_{0} \exp \left\{\left(m - \frac{\sigma^{2}}{2}\right) t + \sigma B_{t} \right\}, \tag {3.15}
$$

then  $X_{t}$  is a geometric Brownian motion with parameters  $(m, \sigma)$ . Even though we have an exact expression (3.15) for geometric Brownian motion, it is generally more useful to think of it in terms of its SDE (3.14).

Geometric Brownian motion is more natural than usual Brownian motion for modeling prices of assets such as stock. It measures changes in terms of fractions or percentages of the current price rather than the listed price per share. In particular, the latter quantity includes a rather arbitrary unit "share" which does not appear if one models with geometric Brownian motion.

The geometric Brownian motion (3.15) is what is sometimes called a "strong" solution to the SDE (3.14). (All of the solutions to SDEs that we discuss in this book are strong solutions.) We will not give the exact definition, but roughly speaking, if one uses the same Brownian motion  $B_{t}$  in both places, one gets the same function. Let us explain this in terms of simulation. Suppose a small  $\Delta t$  is chosen. Then we can define  $B_{k\Delta t}$  by  $B_0 = 0$  and

$$
B_{k \Delta t} = B_{(k - 1) \Delta t} + \sqrt{\Delta t} N_{k}, \tag {3.16}
$$

where  $N_{1}, N_{2}, \ldots$  is a sequence of independent  $N(0,1)$  random variables. Using the same sequence, we could define an approximate solution to (3.14) by choosing  $X_{0} = e^{0} = 1$  and

$$
X_{k \Delta t} = X_{(k - 1) \Delta t} + X_{(k - 1) \Delta t} \left[ m \Delta t + \sigma \sqrt{\Delta t} N_{j} \right]. \tag {3.17}
$$

If  $\Delta t$  is small, this should be very close to

$$
Y_{k \Delta t} = \exp \left\{\left(m - \frac{\sigma^{2}}{2}\right) (k \Delta t) + \sigma B_{k \Delta t} \right\}. \tag {3.18}
$$

In Exercise 3.9 you are asked to do a simulation to compare (3.17) and (3.18).

To do formal calculations in usual calculus, one writes down differentials and throws away all terms that are of smaller order than  $dt$ . In stochastic calculus, one can go far computing similarly using the rules

$$
(d B_{t})^{2} = d t, \quad (d B_{t}) (d t) = 0, \quad (d t)^{2} = 0.
$$

In some of our derivations below, we will use this kind of argument. For example, a formal derivation of Ito's formula II can be given as

$$
\begin{array}{l} d f (t, B_{t}) = \partial_{t} f (t, B_{t}) d t + \partial_{x} f (t, B_{t}) d B_{t} + \frac{1}{2} \partial_{x x} f (t, B_{t}) (d B_{t})^{2} \\ + o (d t) + o ((d t) (d B_{t})) + o ((d B_{t})^{2}). \\ \end{array}
$$

By setting  $(dB_{t})^{2} = dt$  and setting the last three terms equal to zero we get the formula.

Suppose that  $X_{t}$  satisfies

$$
d X_{t} = R_{t} d t + A_{t} d B_{t}, \tag {3.19}
$$

which we recall is equivalent to

$$
X_{t} = X_{0} + \int_{0}^{t} R_{s} d s + \int_{0}^{t} A_{s} d B_{s}.
$$

Whenever we write such equations we will assume implicitly that  $R_{t}, A_{t}$  are adapted processes with piecewise continuous paths. As before, we define the quadratic variation by

$$
\langle X \rangle_{t} = \lim_{n \to \infty} \sum_{j \leq t n} \left[ X \left(\frac{j}{n}\right) - X \left(\frac{j - 1}{n}\right) \right]^{2}.
$$

As in the case for Brownian motion, the drift term does not contribute to the quadratic variation,

$$
\langle X \rangle_{t} = \langle \int A d B \rangle_{t} = \int_{0}^{t} A_{s}^{2} d s.
$$

This is often written in the differential form

$$
d \left\langle X \right\rangle_{t} = A_{t}^{2} d t.
$$

To see that  $R_{t}$  does not appear, we can do the formal calculation

$$
\begin{array}{l} \left(d X_{t}\right)^{2} = \left(R_{t} d t + A_{t} d B_{t}\right)^{2} \\ = R_{t}^{2} (d t)^{2} + 2 R_{t} A_{t} (d t) (d B_{t}) + A_{t}^{2} (d B_{t})^{2} = A_{t}^{2} d t. \\ \end{array}
$$

If  $X_{t}$  satisfies (3.19) and  $H_{t}$  is another adapted process we define

$$
\int_{0}^{t} H_{s} d X_{s} = \int_{0}^{t} H_{s} R_{s} d s + \int_{0}^{t} H_{s} A_{s} d B_{s}.
$$

If we view this in terms of simulation then

$$
Y_{t} = \int_{0}^{t} H_{s} d X_{s}
$$

can be simulated by

$$
\Delta Y_{t} = H_{t} \Delta X_{t} = H_{t} \left[ X_{t + \Delta t} - X_{t} \right] = H_{t} \left[ R_{t} \Delta t + A_{t} \sqrt{\Delta t} N \right],
$$

where  $N\sim N(0,1)$

Theorem 3.4.2 (Itô's formula III). Suppose  $X_{t}$  satisfies (3.19) and  $f(t,x)$  is  $C^1$  in  $t$  and  $C^2$  in  $x$ . Then

$$
\begin{array}{l} d f (t, X_{t}) = \partial_{t} f (t, X_{t}) d t + \partial_{x} f (t, X_{t}) d X_{t} + \frac{1}{2} \partial_{x x} f (t, X_{t}) d \langle X \rangle_{t} \\ = \left[ \partial_{t} f (t, X_{t}) + R_{t} \partial_{x} f (t, X_{t}) + \frac{A_{t}^{2}}{2} \partial_{x x} f (t, X_{t}) \right] d t \\ + A_{t} \partial_{x} f (t, X_{t}) d B_{t}. \\ \end{array}
$$

Example 3.4.2. Suppose  $X$  is a geometric Brownian motion satisfying

$$
d X_{t} = m X_{t} d t + \sigma X_{t} d B_{t}.
$$

Let  $f(t,x) = e^{-t}x^{3}$ . Then

$$
\begin{array}{l} \partial_{t} f (t, x) = - e^{- t} x^{3} = - f (t, x), \\ \partial_{x} f (t, x) = 3 x^{2} e^{- t} = \frac{3}{x} f (t, x), \quad \partial_{x x} f (t, x) = 6 x e^{- t} = \frac{6}{x^{2}} f (t, x), \\ \end{array}
$$

and

$$
\begin{array}{l} { d f ( t , X_{ t } ) } { = } { \partial_{ t } f ( t , X_{ t } )   d t + \partial_{ x } f ( t , X_{ t } )   d X_{ t } + \frac{ 1 } { 2 } \partial_{ x x } f ( t , X_{ t } )   d \langle X \rangle_{ t } } \\ = \left[ \partial_{t} f (t, X_{t}) + m X_{t} \partial_{x} f (t, X_{t}) + \frac{\sigma^{2} X_{t}^{2}}{2} \partial_{x x} f (t, X_{t}) \right] d t \\ + \sigma X_{t} \partial_{x} f (t, X_{t}) d B_{t} \\ = \left(- 1 + 3 m + \frac{6 \sigma^{2}}{2}\right) f (t, X_{t}) d t + 3 \sigma f (t, X_{t}) d B_{t}. \\ \end{array}
$$

$$
d [ e^{- t} X_{t}^{3} ] = 3 e^{- t} X_{t}^{3} \left[ \left(- \frac{1}{3} + m + \sigma^{2}\right) d t + \sigma d B_{t} \right].
$$

Example 3.4.3. The exponential SDE is

$$
d X_{t} = A_{t} X_{t} d B_{t} \quad X_{0} = x_{0}.
$$

We claim that the solution is

$$
X_{t} = x_{0} \exp \left\{\int_{0}^{t} A_{s} d B_{s} - \frac{1}{2} \int_{0}^{t} A_{s}^{2} d s \right\}. \tag {3.20}
$$

To see this, let

$$
Y_{t} = \int_{0}^{t} A_{s} d B_{s} - \frac{1}{2} \int_{0}^{t} A_{s}^{2} d s,
$$

which satisfies

$$
d Y_{t} = - \frac{A_{t}^{2}}{2} d t + A_{t} d B_{t}, \quad d \langle Y \rangle_{t} = A_{t}^{2} d t.
$$

If  $f(x) = x_0e^x$ , then  $f(x) = f'(x) = f''(x)$  and

$$
d f (Y_{t}) = f^{\prime} (Y_{t}) d Y_{t} + \frac{1}{2} f^{\prime \prime} (Y_{t}) d \langle Y \rangle_{t} = A_{t} X_{t} d B_{t}.
$$

We can compare (3.20) to the solution to the deterministic exponential equation

$$
f^{\prime} (t) = r (t) f (t) d t, \quad f (0) = x_{0},
$$

which is

$$
f (t) = x_{0} \exp \left\{\int_{0}^{t} r (s) d s \right\}.
$$

Itô's formula requires that the function  $f(t,x)$  be  $C^1$  in  $t$  and  $C^2$  in  $x$ . In applications, one often has functions that are  $C^2$  only for  $x$  in an interval of the reals. In this case, we can use Itô's formula until the (random) time that the process leaves the interval.

Theorem 3.4.3 (Itô's formula III, local form). Suppose  $X_{t}$  satisfies (3.19) with  $a < X_0 < b$ , and  $f(t,x)$  is  $C^1$  in  $t$  and  $C^2$  in  $x$  for  $a < x < b$ . Let  $T = \inf \{t:X_t = a \text{ or } X_t = b\}$ . Then if  $t < T$ ,

$$
\begin{array}{l} f (t, X_{t}) = f (0, X_{0}) + \int_{0}^{t} A_{s} \partial_{x} f (s, X_{s}) d B_{s} \\ + \int_{0}^{t} \left[ \partial_{s} f (s, X_{s}) + R_{s} \partial_{x} f (s, X_{s}) + \frac{A_{s}^{2}}{2} \partial_{x x} f (s, X_{s}) \right] d s. \\ \end{array}
$$

We write the conclusion of the theorem in differential form by

$$
d f (t, X_{t}) = \dot {f} (t, X_{t}) d t + f^{\prime} (t, X_{t}) d X_{t} + \frac{1}{2} f^{\prime \prime} (t, X_{t}) d \langle X \rangle_{t} t <   T.
$$

Example 3.4.4. Suppose that  $B_{t}$  is a standard Brownian motion, and  $Y_{t} = t / B_{t}^{2}$ . Let  $T = \inf \{t : B_{t} = 0\}$ . Then we can use Ito's formula to see that for  $t < T$ ,

$$
\begin{array}{l} d Y_{t} = \dot {f} (t, B_{t}) d t + f^{\prime} (t, B_{t}) d B_{t} + \frac{1}{2} f^{\prime \prime} (t, B_{t}) d t \\ = \left[ B_{t}^{- 2} + 3 t B_{t}^{- 4} \right] d t - 2 t B_{t}^{- 3} d B_{t}. \\ \end{array}
$$

To prove the local form of Ito's formula, we let  $\epsilon > 0$  and  $T_{\epsilon} = \inf \{t : X_{t} \leq a + 2\epsilon \text{ or } X_{t} \geq b - 2\epsilon\}$ . We can find a  $C^\infty$  function  $\phi_{\epsilon}$  such that  $\phi_{\epsilon}(x) = 0$  if  $x < a + \epsilon$  or  $x > b - \epsilon$  and such that  $\phi(x) = 1$  for  $a + 2\epsilon \leq x \leq b - 2\epsilon$ . Let  $f_{\epsilon}(t,x) = \phi_{\epsilon}(x)f(t,x)$ . Then  $f_{\epsilon}$  satisfies the conditions of Ito's formula and

$$
\begin{array}{l} f_{\epsilon} (t, X_{t}) - f_{\epsilon} (0, X_{0}) = \int_{0}^{t} A_{s} f_{\epsilon}^{\prime} (s, X_{s}) d B_{s} \\ + \int_{0}^{t} \left[ \dot {f}_{\epsilon} (s, X_{s}) + R_{s} f_{\epsilon}^{\prime} (s, X_{s}) + \frac{A_{s}^{2}}{2} f_{\epsilon}^{\prime \prime} (s, X_{s}) \right] d s. \\ \end{array}
$$

If  $t < T_{\epsilon}$ , then both sides of this equation are not changed if we replace  $f_{\epsilon}$  with  $f$ .

# 3.5 Diffusions

Geometric Brownian motion is an example of a time-homogeneous diffusion. We say that  $X_{t}$  is a diffusion (process) if it is a solution to an SDE of the form

$$
d X_{t} = m \left(t, X_{t}\right) d t + \sigma \left(t, X_{t}\right) d B_{t}, \tag {3.21}
$$

where  $m(t,x), \sigma (t,x)$  are functions. It is called time-homogeneous if the functions do not depend on  $t$ ,

$$
d X_{t} = m (X_{t}) d t + \sigma (X_{t}) d B_{t}.
$$

Diffusion processes are Markov processes. Given all the information in  $\mathcal{F}_t$ , the only important information needed to give the conditional distribution of  $X_s, s \geq t$  is  $X_t$ . Simulations of diffusions can be done using the stochastic Euler rule:

$$
X_{t + \Delta t} = X_{t} + m (t, X_{t}) \Delta t + \sigma (t, X_{t}) \sqrt{\Delta t} N,
$$

where  $N \sim N(0,1)$ . The study of diffusions leads to partial differential equations.

We define the generator  $L = L^0$  of a (time homogeneous) Markov process  $X_{t}$  by

$$
L f (x) = \lim_{t \downarrow 0} \frac{\mathbb{E}^{x} [ f (X_{t}) ] - f (x)}{t}.
$$

We will use Ito's formula to understand the generator of the diffusion  $X_{t}$ . For ease, we will assume that  $m$  and  $\sigma$  are bounded continuous functions. If  $f: \mathbb{R} \rightarrow \mathbb{R}$  is a  $C^2$  function with bounded first and second derivatives, then Ito's formula gives

$$
\begin{array}{l} d f (X_{t}) = f^{\prime} (X_{t}) d X_{t} + \frac{1}{2} f^{\prime \prime} (X_{t}) d \langle X \rangle_{t} \\ = \left[ m (t, X_{t}) f^{\prime} (X_{t}) + \frac{\sigma^{2} (t , X_{t})}{2} f^{\prime \prime} (X_{t}) \right] d t \\ + f^{\prime} \left(X_{t}\right) \sigma (t, X_{t}) d B_{t}. \\ \end{array}
$$

That is,

$$
\begin{array}{l} f (X_{t}) - f (X_{0}) = \int_{0}^{t} \left[ m (s, X_{s}) f^{\prime} (X_{s}) + \frac{\sigma^{2} (s , X_{s})}{2} f^{\prime \prime} (X_{s}) \right] d s \\ + \int_{0}^{t} f^{\prime} (X_{s}) \sigma (s, X_{s}) d B_{s}. \\ \end{array}
$$

The second term on the right-hand side is a martingale (since the integrand is bounded) and has expectation zero, so the expectation of the right-hand side is

$$
t \operatorname{\mathbb{E}} [ Y_{t} ],
$$

where

$$
Y_{t} = \frac{1}{t} \int_{0}^{t} \left[ m (s, X_{s}) f^{\prime} (X_{s}) + \frac{\sigma^{2} (s , X_{s})}{2} f^{\prime \prime} (X_{s}) \right] d s.
$$

The fundamental theorem of calculus implies that

$$
\lim_{t \downarrow 0} Y_{t} = m (0, X_{0}) f^{\prime} (X_{0}) + \frac{\sigma^{2} (0 , X_{0})}{2} f^{\prime \prime} (X_{0}).
$$

Moreover, the random variables  $Y_{t}$  are uniformly bounded which allows us to take the limit inside the expectation,

$$
L f (x) = \lim_{t \downarrow 0} \frac{\mathbb{E}^{x} [ f (X_{t}) ] - f (x)}{t} = m (0, x) f^{\prime} (x) + \frac{\sigma^{2} (0 , x)}{2} f^{\prime \prime} (x).
$$

Similarly, if we define

$$
L^{t} f (x) = \lim_{s \downarrow 0} \frac{\mathbb{E} [ f (X_{t + s}) - f (X_{t}) \mid X_{t} = x ]}{s},
$$

we get

$$
L^{t} f (x) = m (t, x) f^{\prime} (x) + \frac{\sigma^{2} (t , x)}{2} f^{\prime \prime} (x).
$$

The assumption that  $m, \sigma$  are bounded is stronger than we would like (for example, the differential equation (3.14) for geometric Brownian motion does not satisfy this), but one can ease this by stopping the path before it gets too large. We will not worry about this now.

In this section we assumed we had a solution to the SDE (3.21). This leads naturally to the question: given functions  $m(t,x), \sigma(t,x)$ , can we find a process  $X_{t}$  satisfying (3.21)?

Consider first the deterministic equation

$$
y^{\prime} (t) = F (t, y (t)), \quad y (0) = y_{0}. \tag {3.22}
$$

We will assume that  $F$  is uniformly Lipschitz, that is, there exists  $\beta < \infty$  such that for all  $t,x,y$ ,

$$
| F (t, x) - F (t, y) | \leq \beta | x - y |. \tag {3.23}
$$

We can construct a solution to (3.22) valid for  $0 \leq t \leq t_0$  by using the following method called Picard iteration. We start with the initial function

$$
y_{0} (t) = y_{0},
$$

and recursively define

$$
y_{k} (t) = y_{0} + \int_{0}^{t} F (s, y_{k - 1} (s)) d s.
$$

Note that

$$
\left| y_{1} (t) - y_{0} (t) \right| \leq \int_{0}^{t} \left| F (s, y_{0}) \right| d s \leq C t,
$$

where  $C = C(y_0,t_0) = \max_{0\leq s\leq t_0}|F(s,y_0)|$  , and for  $k\geq 1$

$$
\begin{array}{l} | y_{k + 1} (t) - y_{k} (t) | \leq \int_{0}^{t} | F (s, y_{k} (s)) - F (s, y_{k - 1} (s)) | d s \\ \leq \beta \int_{0}^{t} | y_{k} (s) - y_{k - 1} (s) | d s \\ \end{array}
$$

Using this estimate and induction, we see that

$$
\left| y_{k + 1} (t) - y_{k} (t) \right| \leq \frac{\beta^{k} C t^{k + 1}}{(k + 1) !}, \quad 0 \leq t \leq t_{0}.
$$

In particular, the limit

$$
y (t) = \lim_{k \to \infty} y_{k} (t),
$$

exists and

$$
\left| y_{k} (t) - y (t) \right| \leq C \sum_{j = k}^{\infty} \frac{\beta^{j} t^{j + 1}}{(j + 1) !}.
$$

If we let

$$
\tilde {y} (t) = y_{0} + \int_{0}^{t} F (s, y (s)) d s,
$$

then for each  $k$

$$
\begin{array}{l} | \tilde {y} (t) - y_{k + 1} (t) | \leq \int_{0}^{t} | F (s, y (s)) - F (s, y_{k} (s)) | d s \\ \leq \beta \int_{0}^{t} | y (s) - y_{k} (s) | d s, \\ \end{array}
$$

and hence  $\tilde{y} = y$ , and  $y$  satisfies (3.22). This argument assumed that (3.23) holds for all  $s, t, x, y$ , and we put no restriction on  $t_0$ . If instead we had such an estimate only for times near zero and  $x, y$  near  $y_0$ , we could establish the same result for some (but not necessarily all) positive values of  $t_0$ .

Let us now consider (3.21) where the functions  $m(t,x)$  and  $\sigma (t,x)$  both satisfy (3.23). For ease, choose  $t_0 = 1$  and define recursively

$$
X_{t}^{0} = y_{0}, \quad 0 \leq t \leq 1,
$$

$$
X_{t}^{(k + 1)} = y_{0} + \int_{0}^{t} m (s, X_{s}^{(k)}) d s + \int_{0}^{t} \sigma (s, X_{s}^{(k)}) d B_{s},
$$

so that

$$
\begin{array}{l} \mathbb{E} \left[ | X_{t}^{(k + 1)} - X_{t}^{k} |^{2} \right] \leq 2 \mathbb{E} \left[ \left(\int_{0}^{t} \beta | X_{s}^{(k)} - X_{s}^{(k - 1)} | d s\right)^{2} \right] \\ + 2 \mathbb{E} \left[ \left(\int_{0}^{t} \left[ \sigma (s, X_{s}^{(k)}) - \sigma (s, X_{s}^{(k - 1)}) \right] d B_{s}\right)^{2} \right]. \\ \end{array}
$$

Using the Hölder inequality on the  $ds$  integral we see that for  $t \leq 1$ ,

$$
\begin{array}{l} \mathbb{E} \left[ \left(\int_{0}^{t} \beta | X_{s}^{(k)} - X_{s}^{(k - 1)} | d s\right)^{2} \right] \\ \leq \mathbb{E} \left[ \beta^{2} t \int_{0}^{t} \left| X_{s}^{(k)} - X_{s}^{(k - 1)} \right|^{2} d s \right] \\ \leq \beta^{2} \int_{0}^{t} \mathbb{E} \left[ | X_{s}^{(k)} - X_{s}^{(k - 1)} |^{2} \right] d s. \\ \end{array}
$$

The variance rule for the stochastic integral gives

$$
\begin{array}{l} \mathbb{E} \left[ \left(\int_{0}^{t} \left[ \sigma (s, X_{s}^{(k)}) - \sigma (s, X_{s}^{(k - 1)}) \right] d B_{s}\right)^{2} \right] \\ = \int_{0}^{t} \mathbb{E} \left(\left[ \sigma (s, X_{s}^{(k)}) - \sigma (s, X_{s}^{(k - 1)}) \right]^{2}\right) d s \\ \leq \beta^{2} \int_{0}^{t} \mathbb{E} \left[ | X_{s}^{(k)} - X_{s}^{(k - 1)} |^{2} \right] d s. \\ \end{array}
$$

Combining these estimates, we see that there exists  $\lambda < \infty$  such that for all  $0 \leq t \leq 1$  and positive integers  $k$ ,

$$
\mathbb{E} \left[ | X_{t}^{(k + 1)} - X_{t}^{k} |^{2} \right] \leq \frac{\lambda^{k + 1} t^{k + 1}}{(k + 1) !}.
$$

We then define  $X_{t} = \lim_{k}X_{t}^{(k)}$ ; as before, we do this for dyadic  $t$  as an  $L^2$  limit and extend it to other  $t$  by continuity. This gives a solution.

If the Lipschitz condition holds only locally, then we can use this argument to show that there exists a stopping time  $T$  with  $\mathbb{P}\{T > 0\} = 1$  such that  $X_{t}, 0 \leq t < T$  satisfies the equation. In the random case the time  $T$  for which the solution is valid is a random variable.

# 3.6 Covariation and the product rule

Suppose  $X_{t},Y_{t}$  satisfy

$$
d X_{t} = H_{t} d t + A_{t} d B_{t}, \quad d Y_{t} = K_{t} d t + C_{t} d B_{t}. \qquad (3. 24)
$$

Here  $B_{t}$  is the same standard Brownian motion in both equations. As before, the covariation process is defined by

$$
\langle X, Y \rangle_{t} = \lim_{n \to \infty} \sum_{j \leq t n} \left[ X \left(\frac{j}{n}\right) - X \left(\frac{j - 1}{n}\right) \right] \left[ Y \left(\frac{j}{n}\right) - Y \left(\frac{j - 1}{n}\right) \right].
$$

Using the formal rules for stochastic calculus we get

$$
\begin{array}{l} \left[ d X_{t} \right] \left[ d Y_{t} \right] = \left[ H_{t} d t + A_{t} d B_{t} \right] \left[ K_{t} d t + C_{t} d B_{t} \right] \\ = A_{t} C_{t} d t + O \left(\left(d t\right)^{2}\right) + O \left(\left(d t\right) \left(d B_{t}\right)\right). \\ \end{array}
$$

This indeed shows what happens and we get

$$
\langle X, Y \rangle_{t} = \int_{0}^{t} A_{s} C_{s} d s,
$$

or in differential form,

$$
d \langle X, Y \rangle_{t} = A_{t} C_{t} d t.
$$

The product rule for the usual derivative can be written in differential form as

$$
d (f g) = f d g + g d f = f g^{\prime} d t + f^{\prime} g d t.
$$

It can be obtained formally by writing

$$
\begin{array}{l} d (f g) = f (t + d t) g (t + d t) - f (t) g (t) \\ = \left[ f (t + d t) - f (t) \right] g (t + d t) + f (t) \left[ g (t + d t) - g (t) \right] \\ = (d f) g + (d g) f + (d f) (d g). \\ \end{array}
$$

Since  $df = f'dt, dg = g'dt$  and  $dfdg = O((dt)^2)$ , we get the usual product formula.

If  $X_{t}, Y_{t}$  are process as above, then when we take the stochastic differential  $d(X_{t}Y_{t})$  we get in the same way

$$
d (X_{t} Y_{t}) = X_{t} d Y_{t} + Y_{t} d X_{t} + (d X_{t}) (d Y_{t}).
$$

However, the  $(dX_{t})(dY_{t})$  term does not vanish, but rather equals  $d\langle X,Y\rangle_t$ . This gives the stochastic product rule.

Theorem 3.6.1 (Stochastic product rule). If  $X_{t}, Y_{t}$  satisfy (3.24), then

$$
d (X_{t} Y_{t}) = X_{t} d Y_{t} + Y_{t} d X_{t} + d \langle X, Y \rangle_{t}.
$$

In other words,

$$
\begin{array}{l} X_{t} Y_{t} = X_{0} Y_{0} + \int_{0}^{t} X_{s} d Y_{s} + \int_{0}^{t} Y_{s} d X_{s} + \int_{0}^{t} d \langle X Y \rangle_{s} \\ = X_{0} Y_{0} + \int_{0}^{t} \left[ X_{s} K_{s} + Y_{s} H_{s} + A_{s} C_{s} \right] d s \\ + \int_{0}^{t} \left[ X_{s} C_{s} + Y_{s} A_{s} \right] d B_{s}. \\ \end{array}
$$

Example 3.6.1. Suppose  $B_{t}$  is a standard Brownian motion and  $X_{t}$  is the geometric Brownian motion satisfying

$$
d X_{t} = m X_{t} d t + \sigma X_{t} d B_{t}.
$$

Then in the notation of (3.24),  $H_{t} = mX_{t}$  and  $A_{t} = \sigma X_{t}$ . If we set  $Y_{t} = B_{t}$ , then  $K_{t} = 0, C_{t} = 1$ . Therefore,

$$
\begin{array}{l} d \left(B_{t} X_{t}\right) = B_{t} d X_{t} + X_{t} d B_{t} + d \langle B, X \rangle_{t} \\ = B_{t} \left[ m X_{t} d t + \sigma X_{t} d B_{t} \right] + X_{t} d B_{t} + \sigma X_{t} d t \\ = X_{t} \left[ (m B_{t} + \sigma) d t + (\sigma B_{t} + 1) d B_{t} \right]. \\ \end{array}
$$

# 3.7 Several Brownian motions

Up to this point, we have integrated with respect to a single Brownian motion. Extending the definitions to several Brownian motions is straightforward.

Suppose that  $B_{t}^{1},\ldots ,B_{t}^{d}$  are independent Brownian motions with respect to the filtration  $\{\mathcal{F}_t\}$ , and that  $A_{t}^{1},\dots ,A_{t}^{d}$  are adapted processes. We write

$$
d X_{t} = H_{t} d t + \sum_{j = 1}^{d} A_{t}^{j} d B_{t}^{j},
$$

to mean

$$
X_{t} = X_{0} + \int_{0}^{t} H_{s} d s + \sum_{j = 1}^{d} \int_{0}^{t} A_{s}^{j} d B_{s}^{j}.
$$

The covariation process can be computed if we remember the rule

$$
\left\langle B^{i}, B^{j} \right\rangle = 0, \quad i \neq j.
$$

Inparticular,if

$$
Y_{t} = Y_{0} + \int_{0}^{t} K_{s} d s + \sum_{j = 1}^{d} \int_{0}^{t} C_{s}^{j} d B_{s}^{j},
$$

then

$$
d \langle X, Y \rangle_{t} = \sum_{j = 1}^{d} A_{t}^{j} C_{t}^{j} d t.
$$

Itô's formula for several processes can be obtained by expanding in a Taylor approximation. As before, we need the first order term in the time variable and all second order terms in the space variables. We state the theorem; the proof is essentially the same as for the previous version. The reader may note that this version includes all the previous versions as special cases, so we call this the final form. If  $f:[0,\infty)\times \mathbb{R}^d\to \mathbb{R}$  is a function, we write

$$
\dot {f} (t, \mathbf{x}) = \partial_{t} f (t, \mathbf{x}), \quad \partial_{j} f (t, \mathbf{x}) = \partial_{x_{j}} f (t, \mathbf{x}), \quad \partial_{j k} f (t, \mathbf{x}) = \partial_{x_{j} x_{k}} f (t, \mathbf{x}).
$$

If  $\mathbf{X}_t = (X_t^1, \ldots, X_t^n)$  we write

$$
\nabla f (t, \mathbf{X}_{t}) \cdot d \mathbf{X}_{t} = \sum_{k = 1}^{n} \partial_{k} f (t, \mathbf{X}_{t}) d X_{t}^{k}.
$$

Theorem 3.7.1 (Itô's formula, final form). Suppose  $B_t^1, \ldots, B_t^d$  are independent standard Brownian motions, and  $X_t^1, \ldots, X_t^n$  are processes satisfying

$$
d X_{t}^{k} = H_{t}^{k} d t + \sum_{i = 1}^{d} A_{t}^{i, k} d B_{t}^{i}.
$$

Suppose  $f(t, \mathbf{x}), t \geq 0, \mathbf{x} \in \mathbb{R}^n$ , is a function that is  $C^1$  in  $t$  and  $C^2$  in  $\mathbf{x} = (x_1, \ldots, x_n)$ . Then, if  $\mathbf{X}_t = (X_t^1, \ldots, X_t^n)$ ,

$$
\begin{array}{l} d f (t, \mathbf{X}_{t}) = \dot {f} (t, \mathbf{X}_{t}) d t + \nabla f (t, \mathbf{X}_{t}) \cdot d \mathbf{X}_{t} \\ + \frac{1}{2} \sum_{j = 1}^{n} \sum_{k = 1}^{n} \partial_{j k} f (t, \mathbf{X}_{t}) d \langle X^{j}, X^{k} \rangle_{t}. \\ \end{array}
$$

In other words,

$$
\begin{array}{l} f (t, \mathbf{X}_{t}) - f (0, \mathbf{X}_{0}) = \sum_{i = 1}^{d} \int_{0}^{t} \left[ \sum_{k = 1}^{n} \partial_{k} f (s, \mathbf{X}_{s}) A_{s}^{i, k} \right] d B_{s}^{i} \\ + \int_{0}^{t} \left[ \dot {f} (s, \mathbf{X}_{s}) + \left(\sum_{k = 1}^{n} \partial_{k} f (s, \mathbf{X}_{s}) H_{s}^{k}\right) \right. \\ \left. \right.\left. + \left(\frac{1}{2} \sum_{i = 1}^{d} \sum_{j = 1}^{n} \sum_{k = 1}^{n} \partial_{j k} f (s, \mathbf{X}_{s}) A_{s}^{i, j} A_{s}^{i, k}\right)\right] d t \\ \end{array}
$$

If  $f(t,x)$  is  $C^2$  only in an open subset  $U \subset \mathbb{R}^n$ , we can give a local form of this theorem as in Theorem 3.4.3 to see that the conclusion holds until the first time that  $\mathbf{X}_t$  leaves  $U$ . Since it comes up often, we state a particular case of this theorem. The Laplacian of a function  $f: \mathbb{R}^d \to \mathbb{R}$  is defined by

$$
\nabla^{2} f (\mathbf{x}) = \sum_{j = 1}^{d} \partial_{j j} f (\mathbf{x}).
$$

Other standard notations for  $\nabla^2$  are  $\Delta$  and  $\nabla \cdot \nabla$ . In the statement below the gradient  $\nabla$  and the Laplacian  $\nabla^2$  are taken with respect to the  $\mathbf{x}$  variable only.

Theorem 3.7.2. Suppose  $B_{t} = (B_{t}^{1},\ldots ,B_{t}^{d})$  is a standard Brownian motion in  $\mathbb{R}^d$ . Then if  $f:[0,\infty)\times \mathbb{R}^d$  is  $C^1$  in  $t$  and  $C^2$  in  $\mathbf{x}\in \mathbb{R}^d$ , then

$$
d f (t, B_{t}) = \nabla f (t, B_{t}) \cdot d B_{t} + \left[ \dot {f} (t, B_{t}) + \frac{1}{2} \nabla^{2} f (t, B_{t}) \right] d t
$$

A function  $f$  is harmonic if  $\nabla^2 f = 0$ . There is a close relationship between Brownian motion, martingales, and harmonic functions that we discuss in Chapter 8.

# 3.8 Exercises

Exercise 3.1. Suppose  $A_{t}$  is a simple process with  $|A_{t}| \leq C$  for all  $t$ . Let

$$
Z_{t} = \int_{0}^{t} A_{s} d B_{s}.
$$

Show that

$$
\mathbb{E} \left[ Z_{t}^{4} \right] \leq 4 C^{4} t^{2}.
$$

Hint: We may assume  $C = 1$ . By conditioning with respect to  $\mathcal{F}_t$  show that if  $s, t > 0$ ,

$$
\mathbb{E} \left[ Z_{t + s}^{4} \right] \leq \mathbb{E} \left[ Z_{t}^{4} \right] + s^{2} + 2 \sqrt{\mathbb{E} [ Z_{t}^{4} ]} s.
$$

Exercise 3.2. Use Ito's formula to find the stochastic differential  $f(t, B_t)$  where  $B_t$  is a standard Brownian motion and

1. $f(t,x) = \sin x$  
2. $f(t,x) = e^{-t}(x / t)^{2}$  
3. Repeat these exercises for  $f(t, X_t)$  where

$$
d X_{t} = X_{t} \left[ m d t + \sigma d B_{t} \right].
$$

Exercise 3.3. Suppose an asset follows the following geometric SDE,

$$
d X_{t} = 4 X_{t} d t + X_{t} d B_{t}.
$$

1. Write the exact solution of this equation. In other words, find  $X_{t}$  as a function of  $B_{t}$ .  
2. Suppose  $X_0 = 2$ . What is the probability that  $X_1 > 8$ ?  
3. Suppose  $X_0 = 1$ . What is the probability that  $X_2 < 6$ ?  
4. Suppose  $X_0 = 4.4565$ . What is the probability that  $X_t < 0$  for some  $2 < t < 5$ ?

Exercise 3.4. Show that if  $B_{t}$  is a standard Brownian motion,  $A_{t}$  is a simple process, and

$$
Z_{t} = \int_{0}^{t} A_{s} d B_{s},
$$

then

$$
M_{t} = Z_{t}^{2} - \langle Z \rangle_{t}
$$

is a martingale.

Exercise 3.5. Suppose that two assets  $X_{t}, Y_{t}$  follow the SDEs

$$
d X_{t} = X_{t} \left[ \mu_{1} d t + \sigma_{1} d B_{t} \right],
$$

$$
d Y_{t} = Y_{t} \left[ \mu_{2} d t + \sigma_{2} d B_{t} \right],
$$

where  $B_{t}$  is a standard Brownian motion. Suppose also that  $X_0 = Y_0 = 1$ .

1. Let  $Z_{t} = X_{t}Y_{t}$ . Give the SDE satisfied by  $Z_{t}$ ; in other words write an expression for  $dZ_{t}$  in terms of  $Z_{t},\mu_{1},\mu_{2},\sigma_{1},\sigma_{1}$ .  
2. Does there exist a function  $f: \mathbb{R} \to \mathbb{R}$  such that  $f(X_{t}) = B_{t}$  for all  $t$ ?  
3. Does there exist a function  $g: \mathbb{R} \to \mathbb{R}$  such that  $g(Z_{t}) = B_{t}$  for all  $t$ ?

Exercise 3.6. Suppose  $B_{t}$  is a standard Brownian motion and  $X_{t}$  satisfies

$$
d X_{t} = X_{t}^{2} d t + X_{t} d B_{t}.
$$

For each of the following find  $A_{t}, C_{t}$  such that

$$
d \langle Y \rangle_{t} = A_{t} d t, \quad d \langle Y, X \rangle_{t} = C_{t} d t.
$$

1. $Y_{t} = B_{t}$  
2. $Y_{t} = X_{t}^{3}$

$$
Y_{t} = \exp \left\{\int_{0}^{t} \left(X_{s}^{2} + 1\right) d s \right\}.
$$

Exercise 3.7. Consider the geometric SDE

$$
d X_{t} = X_{t} [ - 2 d t + 2 d B_{t} ].
$$

Use the stochastic Euler's method to do Monte Carlo simulations for  $X_{t}, 0 \leq t \leq 2$  assuming  $X_0 = 1$ . Use  $\Delta t = .01$ .

1. Graph at least one of your simulations.  
2. Use the simulation to estimate the probability that  $X_{2} \geq 3$ . Do at least 1000 simulations.  
3. Compute the exact probability (up to at least three decimal places) that  $X_{2} \geq 3$  and compare this to your simulations.

Exercise 3.8. Suppose  $f(t)$  is a (nonrandom) continuously differentiable function of  $t$  and  $B_{t}$  is a standard Brownian motion. Justify the integration by parts formula

$$
\int_{r}^{s} f (t) d B_{t} = f (s) B_{s} - f (r) B_{r} - \int_{r}^{s} B_{t} f^{\prime} (t) d t.
$$

(Hint: write the left-hand side as a limit of simple process approximations and do "summation by parts" on the approximations.) Explain why  $\int_r^s f(t) dB_t$  has a normal distribution.

Exercise 3.9. Let  $m = 1, \sigma = 2, \Delta t = 1/1000$  and simulate geometric Brownian motion

$$
d X_{t} = X_{t} d t + 2 X_{t} d B_{t}, \quad X_{0} = 1,
$$

using both (3.17) and (3.18). Be sure that the same sequence of normal random variables  $N_{1}, N_{2}, \ldots$  is used for (3.17) and (3.16). Run the simulation at least 20 times and compare the values of  $X_{1/4}, X_{1/2}, X_{3/4}, X_{1}$  obtained from the two formulas.

Exercise 3.10. Suppose that  $X_{t}$  satisfies the SDE

$$
d X_{t} = X_{t} \left[ (1 / 2) d t + d B_{t} \right], \quad X_{0} = 2
$$

Let

$$
M = \max_{0\leq t\leq 1}X_{t}.
$$

1. Find the density of  $M$ .  
2. Find the probability that  $M \geq 4$ .

Hint: Write  $X_{t} = f(B_{t})$  for an appropriate function.

Exercise 3.11. Suppose  $Z_{t}, t \in \mathcal{D}$  are defined and there exists  $c < \infty$ ,  $\alpha < \infty$ ,  $\beta > 0$  such that for all  $s, t \in \mathcal{D}$

$$
\mathbb{E} \left[ | Z_{t} - Z_{s} |^{\alpha} \right] \leq c | t - s |^{1 + \beta}.
$$

Let  $\epsilon = \beta /(2\alpha)$

Show that

$$
\mathbb{P} \{\exists s \in \mathcal{D}_{n}: | Z_{s + 2^{- n}} - Z_{s} | \geq 2^{- n \epsilon} \} \leq c 2^{- n \beta / 2}.
$$

- Show that with probability one, for all  $n$  sufficiently large and all  $s \in \mathcal{D}_n$ ,

$$
\left| Z_{s + 2^{- n}} - Z_{s} \right| \leq 2^{- n \epsilon}.
$$

- Show that with probability one, there exists  $C$  such that for all  $s, t \in \mathcal{D}$ ,

$$
\left| Z_{s} - Z_{t} \right| \leq C \left| s - t \right|^{\epsilon}.
$$

# Chapter 4

# More stochastic calculus

# 4.1 Martingales and local martingales

In the last chapter we defined

$$
Z_{t} = \int_{0}^{t} A_{s} d B_{s},
$$

where  $B_{t}$  is a standard Brownian motion and  $A_{s}$  is a continuous or piecewise continuous process. If

$$
\int_{0}^{t} \mathbb{E} [ A_{s}^{2} ] d s <   \infty
$$

for each  $t$ , then  $Z_{t}$  is a square integrable martingale. However, our next example will show that if this inequality does not hold, the stochastic integral might not be a martingale. Our example is a modification of the martingale betting strategy from Section 1.2. In that example, we beat a fair game by doubling our bet until we won. We recall that if  $W_{n}$  denotes the winnings after  $n$  plays, then  $\mathbb{E}[W_n] = 0$ , but with probability one  $W_{\infty} = 1$ . In order to beat the game, we had to allow for arbitrarily large numbers of plays of the game until we won. In continuous time, one can do the same idea, but adapt it so that we guarantee to win by time 1.

Example 4.1.1. (Martingale betting strategy revisited) We will consider

$$
Z_{t} = \int_{0}^{t} A_{s} d B_{s}
$$

with a betting strategy  $A_{s}$  that changes only at times  $t_0 < t_1 < t_2 < \dots < 1$  where

$$
t_{n} = 1 - 2^{- n}.
$$

We start by setting  $A_{t} = 1$  for  $0 \leq t < 1/2$ . Then  $Z_{1/2} = B_{1/2}$ . Note that

$$
\mathbb{P} \{Z_{1 / 2} \geq 1 \} = \mathbb{P} \{B_{1 / 2} \geq 1 \} = \mathbb{P} \{B_{1} \geq \sqrt{2} \} = 1 - \Phi (\sqrt{2}) =: q > 0.
$$

If  $Z_{1/2} \geq 1$ , we stop, that is, we set  $A_t = 0$  for  $1/2 \leq t \leq 1$ . If  $Z_{1/2} < 1$ , let  $x = 1 - Z_{1/2} > 0$ . Define  $a$  by the formula

$$
\mathbb{P} \{a [ B_{3 / 4} - B_{1 / 2} ] \geq x \} = q.
$$

We set  $A_{t} = a$  for  $1/2 \leq t < 3/4$ . Note that we only need to know  $Z_{1/2}$  to determine  $a$  and hence  $a$  is  $\mathcal{F}_{1/2}$ -measurable. Also, if  $a[B_{3/4} - B_{1/2}] \geq x$ , then

$$
Z_{3 / 4} = \int_{0}^{3 / 4} A_{s} d B_{s} = Z_{1 / 2} + a [ B_{3 / 4} - B_{1 / 2} ] \geq 1.
$$

Therefore,

$$
\mathbb{P} \{Z_{3 / 4} \geq 1 \mid Z_{1 / 2} <   1 \} = q,
$$

and hence

$$
\mathbb{P} \{Z_{3 / 4} <   1 \} = (1 - q)^{2}.
$$

If  $Z_{3/4} \geq 1$ , we set  $A_t = 0$  for  $3/4 \leq t \leq 1$ . Otherwise, we proceed as above. At each time  $t_n$  we adjust the bet so that

$$
\mathbb{P} \{Z_{t_{n + 1}} \geq 1 \mid Z_{t_{n}} <   1 \} = q,
$$

and hence

$$
\mathbb{P} \{Z_{t_{n}} <   1 \} \leq (1 - q)^{n}.
$$

Using this strategy, with probability one  $Z_{1} \geq 1$ , and hence,  $\mathbb{E}[Z_1] \geq 1$ . Therefore,  $Z_{t}$  is not a martingale. Our choice of strategy used discontinuous bets, but it is not difficult to adapt this example so that  $t \mapsto A_t$  is a continuous function except at the one time at which the bet changes to zero.

Although the stochastic integral may not be a martingale, it is almost a martingale in the sense that one needs to make the bets arbitrarily large to find a way to change the expectation. The next definition makes precise the idea of a process that is a martingale "if it is stopped before the values get big".

Definition A continuous process  $M_{t}$  adapted to the filtration  $\{\mathcal{F}_t\}$  is called a local martingale on  $[0,T)$  if there exists an increasing sequence of stopping times

$$
\tau_{1} \leq \tau_{2} \leq \tau_{3} \leq \dots
$$

such that with probability one

$$
\lim_{j \to \infty} \tau_{j} = T,
$$

and for each  $j$

$$
M_{t}^{(j)} = M_{t \wedge \tau_{j}},
$$

is a martingale.

In the case of the stochastic integral

$$
Z_{t} = \int_{0}^{t} A_{s} d B_{s},
$$

we let  $\{\tau_j\}$  be the stopping times,

$$
\tau_{j} = \inf  \left\{t: \langle Z \rangle_{t} = \int_{0}^{t} A_{s}^{2} d s = j \right\}.
$$

Then for each  $j$ ,  $M_t^{(j)}$  is a square integrable martingale. Therefore,  $Z_t$  is a local martingale on  $[0,T)$  where

$$
T = \inf \left\{t: \int_{0}^{t} A_{s}^{2} d s = \infty \right\}.
$$

The stochastic integral  $Z_{t}$  is not defined after time  $T$ . Note that if  $s \mapsto A_s$  is continuous for all  $s \in [0, \infty)$ , then  $T = \infty$ .

More generally, suppose that

$$
d X_{t} = R_{t} d t + A_{t} d B_{t}.
$$

If  $R_{t} \neq 0$ , then  $X_{t}$  is not a martingale. In other words, if  $X_{t}$  is to be a martingale we need  $R_{t} \equiv 0$ . However, as we have just shown, it is possible for  $R_{t} \equiv 0$  but  $X_{t}$  to not be a martingale. It is a local martingale in this case. In an abuse of terminology, it is standard to refer to  $A_{t} dB_{t}$  as the "martingale part" of  $dX_{t}$  even though one should say the "local martingale part".

For continuous martingales, we have the optional sampling theorem which states under certain circumstances that one cannot beat a fair game. The next theorem includes two versions which are the most useful for applications.

Theorem 4.1.1 (Optional Sampling Theorem). Suppose  $Z_{t}$  is a continuous martingale and  $T$  is a stopping time, both with respect to the filtration  $\{\mathcal{F}_t\}$ .

- If  $M_t = Z_{t \wedge T}$ , then  $M_t$  is a continuous martingale with respect to  $\{\mathcal{F}_t\}$ . In particular,  $\mathbb{E}[Z_{t \wedge T}] = \mathbb{E}[Z_0]$ .  
- Suppose there exists  $C < \infty$  such that for all  $t$ ,  $\mathbb{E}[Z_{t \wedge T}^2] \leq C$ . Then if  $\mathbb{P}\{T < \infty\} = 1$ ,  $\mathbb{E}[Z_T] = \mathbb{E}[Z_0]$ .

Example 4.1.2. Suppose  $Z_{t}$  is a continuous martingale with  $Z_{0} = 0$ . Suppose that  $a, b > 0$  and let

$$
T = \inf  \{t: Z_{t} = - a \text{or} Z_{t} = b \}.
$$

Suppose that  $\mathbb{P}\{T < \infty\} = 1$ , which happens, for example, if  $Z_{t}$  is a standard Brownian motion. Then  $Z_{t \wedge T}$  is a bounded martingale and hence

$$
0 = \mathbb{E} [ Z_{0} ] = \mathbb{E} [ Z_{T} ] = - a \mathbb{P} \{Z_{T} = a \} + b \mathbb{P} \{Z_{T} = b \}.
$$

By solving, we get

$$
\mathbb{P} \{Z_{T} = b \} = \frac{a}{a + b},
$$

which is the gambler's ruin estimate for continuous martingales.

Results about continuous martingales can be deduced from corresponding results about discrete-time martingales. If  $Z_{t}$  is a continuous martingale and

$$
D_{n} = \left\{\frac{k}{2^{n}}: k = 0, 1, \ldots \right\},
$$

then  $Z_{t}, t \in D_{n}$  is a discrete-time martingale. If  $T_{n}$  is a stopping time taking value in  $D_{n}$ , then  $Z_{t \wedge T_{n}}$  is also a martingale.

For more general  $T$ , we define  $T_{n}$  by

$$
T_{n} = \frac{k}{2^{n}} \quad \text{if} \quad \frac{k - 1}{2^{n}} \leq T <   \frac{k}{2^{n}}, \quad k = 1, 2, \ldots , n 2^{n},
$$

$$
T_{n} = n \quad \text{if} \quad T \geq n,
$$

Suppose  $s < t$  and let  $s_n, t_n$  denote the smallest element of  $D_n$  greater than or equal to  $s, t$ , respectively. If  $A$  is an  $\mathcal{F}_s$ -measurable event, then

it is also  $\mathcal{F}_{s_n}$  measurable, and since  $Z_{r\wedge T_n}, r \in D_n$  is a discrete-time martingale,

$$
\mathbb{E} \left[ 1_{A} Z_{s_{n} \wedge T_{n}} \right] = \mathbb{E} \left[ 1_{A} Z_{t_{n} \wedge T_{n}} \right].
$$

Since  $Z$  has continuous paths, we know that as  $n \to \infty$ ,

$$
Z_{s_{n} \wedge T_{n}} \to Z_{s \wedge T}, \quad Z_{t_{n} \wedge T_{n}} \to Z_{t \wedge T}.
$$

In general, if  $X_{n}$  is a sequence of random variables converging to  $X$ , we cannot conclude that  $\mathbb{E}[X_n] \to \mathbb{E}[X]$ . However, this will hold if the sequence  $\{X_{n}\}$  is uniformly integrable, that is, if for every  $\epsilon > 0$ , there exists  $K < \infty$  such that for all  $n$ ,

$$
\mathbb{E} \left[ | X_{n} | 1 \{| X_{n} | \geq K \} \right] <   \epsilon .
$$

(We leave this as an exercise or the reader can check a book on measure-theoretic probability.)

Lemma 4.1.2. For every positive integer  $m$ , the collection of random variables  $\{Z_{T_n}\}$  where  $n$  ranges over all positive integers,  $T$  ranges over all stopping times with  $T \leq m$ , and  $T_n$  is defined as above, is uniformly integrable.

Proof. Let  $T$  be a stopping time with  $T \leq m$  and  $n$  a positive integer. Note that  $N_{t} = |Z_{t}|, t \in D_{n}$  is a submartingale. Let  $K > 0$  and let  $\tau_{n} = \tau_{n,K}$  be the first  $t \in D_{n}$  such that  $N_{t}K$ . If  $t \in D_{n}$ , let  $A_{t} = A_{t,n}$  be the event  $\{\tau_{n} = t\}$ . Since  $N_{t}$  is a discrete-time submartingale, if  $t \leq m$ ,

$$
\mathbb{E} \left[ N_{m} 1_{A_{t}} \right] \geq \mathbb{E} \left[ N_{T_{n}} 1_{A_{t}} \right].
$$

By summing over  $t \in D_n, t \leq m$ , we see that

$$
\mathbb{E} \left[ N_{T_{n}} J_{n, K} \right] \leq \mathbb{E} \left[ N_{m} J_{n, K} \right].
$$

where  $J_{n,K} = 1\{\tau_n \leq m\}$ . As  $n \to \infty$ , the random variables  $J_{n,K}$  converge monotonically to

$$
J_{\infty ,K} = 1\left\{\max_{0\leq s\leq t}N_{s} > K\right\} .
$$

Therefore, for each  $K < \infty$

$$
\mathbb{E} \left[ N_{T_{n}} 1 \{N_{T_{n}} > K \} \right] \leq \mathbb{E} \left[ N_{m \wedge T_{n}} J_{\infty , K} \right] \leq \mathbb{E} \left[ | Z_{m} | J_{\infty , K} \right].
$$

Note that the right-hand side is independent of  $T$  and  $n$ . As  $K \to \infty$ ,  $J_{\infty, K} \to 0$ , and since  $Z_m$  is integrable,

$$
\lim_{K \to \infty} \mathbb{E} \left[ | Z_{m} | J_{\infty , K} \right] = 0.
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/0b02acc3-26e4-4125-ae2f-f5fd9d2fbf41/d1b1d8bf95c1a0f875b3ab9f5c797a214247c898b50072060487db3c861560f0.jpg)

Using the lemma, we now conclude

$$
\mathbb{E} \left[ 1_{A} Z_{s \wedge T} \right] = \mathbb{E} \left[ 1_{A} Z_{t \wedge T} \right].
$$

A sufficient condition for uniform integrability of  $\{X_{n}\}$  is the existence of  $C < \infty$  such that  $\mathbb{E}[X_n^2 ]\leq C$  for all  $n$ . Indeed,

$$
\mathbb{E} \left[ | X_{n} | 1 \{| X_{n} | \geq K \} \right] \leq K^{- 1} \mathbb{E} \left[ | X_{n} |^{2} 1 \{| X_{n} | \geq K \} \right] \leq C / K.
$$

In particular, if  $\mathbb{E}[Z_{t\wedge T}^2 ]\leq C$  for all  $t$  and  $\mathbb{P}\{T < \infty \} = 1$ , then  $Z_{n\wedge T}\to Z_T$  with probability one and uniform integrability implies that

$$
\mathbb{E} [ Z_{T} ] = \lim_{n \to \infty} \mathbb{E} [ Z_{n \wedge T} ] = \lim_{n \to \infty} \mathbb{E} [ Z_{0} ] = \mathbb{E} [ Z_{0} ].
$$

Two other theorems that extend almost immediately to the continuous martingale setting are the following. The proofs are essentially the same as for their discrete counterparts.

Theorem 4.1.3. (Martingale Convergence Theorem) Suppose  $Z_{t}$  is a continuous martingale and there exists  $C < \infty$  such that  $\mathbb{E}[|Z_t|] \leq C$  for all  $t$ . Then there exists a random variable  $Z_{\infty}$  such that with probability one

$$
\lim_{t \to \infty} Z_{t} = Z_{\infty}.
$$

Theorem 4.1.4. (Maximal inequality). Suppose  $Z_{t}$  is a continuous square integrable martingale, and let

$$
N_{t} = \max_{0\leq s\leq t}|Z_{t}|.
$$

Then for every  $a > 0$

$$
\mathbb{P} \{N_{t} \geq a \} \leq \frac{\mathbb{E} [ Z_{t}^{2} ]}{a^{2}}.
$$

# 4.2 An example: the Bessel process

The Bessel process with parameter  $a$  is the solution to the SDE

$$
d X_{t} = \frac{a}{X_{t}} d t + d B_{t}, \quad X_{0} = x_{0} > 0.
$$

If we choose  $a = (d - 1) / 2$ , this is called the Bessel-  $d$  process and is related to  $d$ -dimensional Brownian motion (see Exercise 4.4). Let  $T_{\epsilon} = \inf \{t : X_t \leq \epsilon \}$ . There is no problem finding a solution to this equation for  $t < T_{\epsilon}$ , and hence it is well defined for  $t < T$  where

$$
T = T_{0} = \inf  \{t: X_{t} = 0 \}.
$$

At time  $T$  the equation is ill-defined so we will not consider the process for  $t > T$ . If  $a > 0$ , then when  $X_{t}$  gets close to 0, there is a strong drift away from the origin. It is not obvious whether or not this is strong enough to keep the diffusion from reaching the origin.

Suppose that  $0 < r < R < \infty$  and let

$$
\tau = \tau (r, R) = \inf  \{t: X_{t} = r \text{or} X_{t} = R \}.
$$

For  $r \leq x \leq R$ , let

$$
\phi (x) = \mathbb{P} \{X_{\tau} = R \mid X_{0} = x \}.
$$

We will use Ito's formula to compute  $\phi$ . Note that  $\phi(r) = 0, \phi(R) = 1$ . Let  $J$  denote the indicator function of the event  $\{X_{\tau} = R\}$  and let

$$
M_{t} = E [ J \mid \mathcal{F}_{t} ].
$$

The tower property for conditional expectation implies that  $M_{t}$  is a martingale; indeed, if  $s < t$ ,

$$
E \left[ M_{t} \mid \mathcal{F}_{s} \right] = E \left[ E \left(J \mid \mathcal{F}_{t}\right) \mid \mathcal{F}_{s} \right] = E \left[ J \mid \mathcal{F}_{s} \right] = M_{s}.
$$

The Markovian nature of the diffusion  $X$  implies that

$$
E [ J \mid \mathcal{F}_{t} ] = \phi (X_{t \wedge \tau}).
$$

In other words, if  $\tau \leq t$ , then we already know whether or not  $\{X_{\tau} = R\}$ . However, if  $\tau > t$ , the only useful information in  $\mathcal{F}_t$  for predicting if  $X_{\tau} = R$  is  $X_{t}$ , and the conditional probability is the probability that this occurs given

that the process started at  $X_{t}$ . The upshot of this reasoning is that  $\phi(X_{t\wedge \tau})$  must be a martingale. Ito's formula (see Theorem 3.4.3) gives for  $t < T$ ,

$$
\begin{array}{l} {d \phi (X_{t})} = {\phi^{\prime} (X_{t}) d X_{t} + \frac{1}{2} \phi^{\prime \prime} (X_{t}) d \langle X \rangle_{t}} \\ = \left[ \frac{a \phi^{\prime} (X_{t})}{X_{t}} + \frac{\phi^{\prime \prime} (X_{t})}{2} \right] d t + \phi^{\prime} (X_{t}) d B_{t}. \\ \end{array}
$$

If this is to be a martingale, the  $dt$  term must vanish at all times. The way to guarantee this is to choose  $\phi$  to satisfy the ordinary differential equation (ODE)

$$
x \phi^{\prime \prime} (x) + 2 a \phi^{\prime} (x) = 0.
$$

Solving such equations is standard (and this one is particularly easy for one can solve the first-order equation for  $g(x) = \phi'(x)$ ), and the solutions are of the form

$$
\phi (x) = c_{1} + c_{2} x^{1 - 2 a}, \quad a \neq \frac{1}{2},
$$

$$
\phi (x) = c_{1} + c_{2} \log x, \quad a = \frac{1}{2},
$$

where  $c_{1}, c_{2}$  are arbitrary constants. The boundary conditions  $\phi(r) = 0, \phi(R) = 1$  determine the constants giving

$$
\phi (x) = \frac{x^{1 - 2 a} - r^{1 - 2 a}}{R^{1 - 2 a} - r^{1 - 2 a}}, \quad a \neq \frac{1}{2}, \tag {4.1}
$$

$$
\phi (x) = \frac{\log x - \log r}{\log R - \log r}, \quad a = \frac{1}{2}. \tag {4.2}
$$

We now answer the question that we posed.

Proposition 4.2.1. If  $a \geq 1/2$ , then  $\mathbb{P}\{T = \infty\} = 1$ , that is, with probability one the Bessel process never reaches zero. If  $a < 1/2$ , then  $\mathbb{P}\{T < \infty\} = 1$ .

Proof. Assume  $X_0 = x < R$  and let  $\tau(r, R)$  be defined as above. If  $T < \infty$ , then there must be  $R < \infty$  such that  $X_{\tau(r, R)} = r$  for all  $r > 0$ . Using the form of the probability in (4.1) and (4.2), we can see that

$$
\lim_{r \to 0} \mathbb{P} \{X_{\tau (r, R)} = r \} = \left\{ \begin{array}{l l} 0 & \text{if} a \geq 1 / 2 \\ 1 - (x / R)^{1 - 2 a} & \text{if} a <   1 / 2 \end{array} \right.
$$

□

The alert reader will note that we cheated a little bit in our derivation of  $\phi$  because we assumed that  $\phi$  was  $C^2$ . After assuming this, we obtained a differential equation and found what  $\phi$  should be. To finish a proof, we can start with  $\phi$  as defined in (4.1) or (4.2), and use Ito's formula to show that  $M_t = \phi(X_{t \wedge \tau})$  is a continuous martingale. Since it is also bounded, we can use the optional sampling theorem to conclude that

$$
\phi (x_{0}) = \mathbb{E} [ M_{0} ] = \mathbb{E} [ M_{\tau} ] = \mathbb{P} \{X_{\tau} = R \}.
$$

This kind of argument is often done in stochastic calculus where one first assumes sufficient smoothness of a function in order to use Ito's formula and obtain a differential equation for the function. Once the differential equation is solved, one can go back and redo the Ito's formula calculation rigorously.

# 4.3 Feynman-Kac formula

Suppose that the price of a stock follows a geometric Brownian motion

$$
d X_{t} = m X_{t} d t + \sigma X_{t} d B_{t}. \tag {4.3}
$$

Suppose that at some future time  $T$  we have an option to buy a share of the stock at price  $S$ . We will exercise the option only if  $X_{T} \geq S$  and the value of the option at time  $T$  is  $F(X_{T})$  where

$$
F (x) = (x - S)_{+} = \max  \{x - S, 0 \}.
$$

Suppose that there is an inflation rate of  $r$  so that  $x$  dollars at time  $t$  in future is worth only  $e^{-rt}x$  in current dollars. Let  $\phi(t,x)$  be the expected value of this option at time  $t$ , measured in dollars at time  $t$ , given that the current price of the stock is  $x$ ,

$$
\phi (t, x) = \mathbb{E} \left[ e^{- r (T - t)} F \left(X_{T}\right) \mid X_{t} = x \right]. \tag {4.4}
$$

The Feynman-Kac formula gives a PDE for this quantity.

Since it is not any harder, we generalize and assume that  $X_{t}$  satisfies the SDE

$$
d X_{t} = m (t, X_{t}) d t + \sigma (t, X_{t}) d B_{t}, \quad X_{0} = x_{0},
$$

and that there is a payoff  $F(X_{T})$  at some future time  $T$ . Suppose also that there is an inflation rate  $r(t,x)$  so that if  $R_{t}$  denotes the value at time  $t$  of  $R_{0}$  dollars at time 0,

$$
d R_{t} = r (t, X_{t}) R_{t} d t,
$$

$$
R_{t} = R_{0} \exp \left\{\int_{0}^{t} r (s, X_{s}) d s \right\}.
$$

If  $\phi(t, x)$  denote the expected value of the payoff in time  $t$  dollars given  $X_t = x$ , then

$$
\phi (t, x) = \mathbb{E} \left[ \exp \left\{- \int_{t}^{T} r (s, X_{s}) d s \right\} F (X_{T}) \mid X_{t} = x \right]. \qquad (4. 5)
$$

We will use Ito's formula to derive a PDE for  $\phi$  under the assumption that  $\phi$  is  $C^1$  in  $t$  and  $C^2$  in  $x$ .

Let

$$
M_{t} = E \left[ R_{T}^{- 1} F (X_{T}) \mid \mathcal{F}_{t} \right].
$$

The tower property for conditional expectation implies that if  $s < t$ ,

$$
E \left[ M_{t} \mid \mathcal{F}_{s} \right] = E \left[ E \left(M_{T} \mid \mathcal{F}_{t}\right) \mid \mathcal{F}_{s} \right] = E \left[ M_{T} \mid \mathcal{F}_{s} \right] = M_{s}.
$$

In other words,  $M_t$  is a martingale. Since  $R_t$  is  $\mathcal{F}_t$ -measurable, we see that

$$
M_{t} = R_{t}^{- 1} E \left[ \exp \left\{- \int_{t}^{T} r (s, X_{s}) d s \right\} F (X_{T}) \mid \mathcal{F}_{t} \right].
$$

However, since  $X_{t}$  is a Markov process, the only relevant information in  $\mathcal{F}_t$  is given by the value  $X_{t}$ . Hence, by the definition of  $\phi$ ,

$$
M_{t} = R_{t}^{- 1} \phi (t, X_{t}). \tag {4.6}
$$

Our conclusion is that  $M_{t}$  as given in (4.6) must be a martingale. Itô's formula gives

$$
d \phi (t, X_{t}) = \partial_{t} \phi (t, X_{t}) d t + \partial_{x} \phi (t, X_{t}) d X_{t} + \frac{1}{2} \partial_{x x} \phi (t, X_{t}) d \langle X \rangle_{t}.
$$

In particular,

$$
d \phi (t, X_{t}) = H_{t} d t + A_{t} d B_{t},
$$

with

$$
H_{t} = \partial_{t} \phi (t, X_{t}) + m (t, X_{t}) \partial_{x} \phi (t, X_{t}) + \frac{1}{2} \sigma (t, X_{t})^{2} \partial_{x x} \phi (t, X_{t}),
$$

$$
A_{t} = \sigma (t, X_{t}) \partial_{x} \phi (t, X_{t}).
$$

Since  $\langle R\rangle_t = 0$ , the stochastic product rule implies that

$$
d \left[ R_{t}^{- 1} \phi (t, X_{t}) \right] = R_{t}^{- 1} d \phi (t, X_{t}) + \phi (t, X_{t}) d \left[ R_{t}^{- 1} \right],
$$

and hence the  $dt$  term of  $d[R_t^{-1}\phi (t,X_t)]$  is  $R_{t}^{-1}$  times

$$
\begin{array}{l} - r (t, X_{t}) \phi (t, X_{t}) + \partial_{t} \phi (t, X_{t}) + m (t, X_{t}) \partial_{x} \phi (t, X_{t}) \\ + \frac{1}{2} \sigma (t, X_{t})^{2} \partial_{x x} \phi (t, X_{t}). \\ \end{array}
$$

Since  $M_t$  is a martingale, the  $dt$  term must be identically zero. This happens only if for all  $t, x$ ,

$$
\begin{array}{l} - r (t, x) \phi (t, x) + \partial_{t} \phi (t, x) + m (t, x) \partial_{x} \phi (t, x) \\ + \frac{1}{2} \sigma (t, x)^{2} \partial_{x x} \phi (t, x) = 0. \\ \end{array}
$$

We have derived the following.1

Theorem 4.3.1 (Feynman-Kac formula). Suppose  $X_{t}$  satisfies

$$
d X_{t} = m (t, X_{t}) d t + \sigma (t, X_{t}) d B_{t}, \quad X_{0} = x_{0},
$$

and  $r(t,x) \geq 0$  is a discounting rate. Suppose a payoff  $F$  at time  $T$  is given with  $\mathbb{E}[|F(X_T)|] < \infty$ . If  $\phi(t,x), 0 \leq t \leq T$  is defined as in (4.5), and  $\phi(t,x)$  is  $C^1$  in  $t$  and  $C^2$  in  $x$ , then  $\phi(t,x)$  satisfies the PDE

$$
\begin{array}{l} \partial_{t} \phi (t, x) = - m (t, x) \partial_{x} \phi (t, x) \\ - \frac{1}{2} \sigma (t, x)^{2} \partial_{x x} \phi (t, x) + r (t, x) \phi (t, x), \\ \end{array}
$$

for  $0 \leq t < T$ , with terminal condition  $\phi(T, x) = F(x)$ .

Example 4.3.1. Suppose  $X_{t}$  satisfies (4.3). Then  $m(t,x) = mx, \sigma(t,x) = \sigma x$  and  $\phi$  is as given in (4.4). The Feynman-Kac formula gives

$$
\partial_{t} \phi = r \phi - m x \partial_{x} \phi - \frac{\sigma^{2} x^{2}}{2} \partial_{x x} \phi . \tag {4.7}
$$

This is a version of the Black-Scholes PDE. We will return to this later.

Let us give a somewhat different derivation of the Feynman-Kac formula using the generator. Again, suppose that  $X_{t}$  satisfies

$$
d X_{t} = m (t, X_{t}) d t + \sigma (t, X_{t}) d B_{t},
$$

and that  $F$  is a function that does not grow too quickly. Let

$$
f (t, x) = \mathbb{E} \left[ F \left(X_{T}\right) \mid X_{t} = x \right].
$$

Let  $r(t) \geq 0$  be a discount rate which for ease we will assume is a deterministic function of time, and

$$
R_{t} = R_{0} \exp \left\{\int_{0}^{t} r (s) d s \right\}.
$$

Let

$$
\phi (t, x) = \mathbb{E} \left[ \left(R_{t} / R_{T}\right) F (X_{T}) \mid X_{t} = x \right] = \exp \left\{- \int_{t}^{T} r (s) d s \right\} f (t, x)
$$

Recall that

$$
\partial_{t} f (t, x) = - L_{x}^{t} f (t, x),
$$

where  $L^t$  is the generator

$$
L^{t} h (x) = m (t, x) h^{\prime} (x) + \frac{\sigma (t , x)}{2} h^{\prime \prime} (x).
$$

Therefore,

$$
\begin{array}{l} \partial_{t} \phi (t, x) = r (t) \exp \left\{- \int_{t}^{T} r (s) d s \right\} f (t, x) \\ - \exp \left\{- \int_{t}^{T} r (s) d s \right\} L_{x}^{t} f (t, x) \\ = r (t) \phi (t, x) - L_{x}^{t} \phi (t, x) \\ = r (t) \phi (t, x) - m (t, x) \partial_{x} \phi (t, x) - \frac{\sigma^{2} (t , x)}{2} \partial_{x x} \phi (t. x), \\ \end{array}
$$

which is the Feynman-Kac PDE.

# 4.4 Binomial approximations

In the next few sections we will be considering the SDE

$$
d X_{t} = m (t, X_{t}) d t + \sigma (t, X_{t}) d B_{t}.
$$

We will give some heuristic derivations based on discrete approximations. Recall that the Euler method to sample from this equation uses the rule

$$
X (t + \Delta t) = X (t) + m (t, X (t)) \Delta t + \sigma (t, X (t)) \sqrt{\Delta t} Z
$$

where  $Z \sim N(0,1)$ . Here we wish to consider some binomial sampling schemes, that is, schemes such that given  $X(t)$ ,  $X(t + \Delta t)$  takes one of two values.

If  $X_{t}$  is Brownian motion with drift zero and variance  $\sigma^2$

$$
d X_{t} = \sigma d B_{t},
$$

then the binomial scheme is approximation by random walk,

$$
\begin{array}{l} \mathbb{P} \{X (t + \Delta t) - X (t) = \sigma \sqrt{\Delta t} \mid X (t) \} \\ = \mathbb{P} \{X (t + \Delta t) - X (t) = - \sigma \sqrt{\Delta t} \mid X (t) \} = \frac{1}{2}. \\ \end{array}
$$

In this case the values of  $X(k\Delta t)$  lie in the lattice of points

$$
\left\{\dots , - 2 \sigma \sqrt{\Delta t}, - \sigma \sqrt{\Delta t}, 0, \sigma \sqrt{\Delta t}, 2 \sigma \sqrt{\Delta t}, \dots \right\}.
$$

If  $m \equiv 0$  and  $\sigma(t, x)$  is not constant, we can change this rule to

$$
\mathbb{P} \{X (t + \Delta t) - X (t) = \pm \sigma (t, X (t)) \sqrt{\Delta t} \mid X (t) \} = \frac{1}{2},
$$

but then the values of  $X(t)$  do not stay in a lattice.

Suppose  $\sigma$  is constant, but  $m$  varies,

$$
d X_{t} = m (t, X_{t}) d t + \sigma d B_{t}.
$$

There are two reasonable ways to incorporate drift in this binomial model. One is to use a version of the Euler's method and set

$$
\mathbb{P} \{X (t + \Delta t) - X (t) = m (t, X_{t}) \Delta t \pm \sigma \sqrt{\Delta t} \mid X (t) \} = \frac{1}{2},
$$

for which it is immediate that

$$
\begin{array}{l} E \left[ X (t + \Delta t) - X (t) \mid \mathcal{F}_{t} \right] \\ = E [ X (t + \Delta t) - X (t) \mid X (t) ] = m (t, X_{t}) \Delta t. \tag {4.8} \\ \end{array}
$$

This method has the disadvantage that we do not stay on a lattice of points. Another approach is to always make the jumps  $\pm \sigma \sqrt{\Delta t}$  but to change the probabilities based on the drift. In particular, we let

$$
\begin{array}{l} \mathbb{P} \{X (t + \Delta t) - X (t) = \sigma \sqrt{\Delta t} \mid X (t) \} = \frac{1}{2} \left[ 1 + \frac{m (t , X_{t})}{\sigma} \sqrt{\Delta t} \right], \\ \mathbb{P} \{X (t + \Delta t) - X (t) = - \sigma \sqrt{\Delta t} \mid X (t) \} = \frac{1}{2} \left[ 1 - \frac{m (t , X_{t})}{\sigma} \sqrt{\Delta t} \right]. \\ \end{array}
$$

The probabilities are chosen so that (4.8) holds for this scheme as well. These two binomial methods illustrate the two main ways to incorporate a drift term (in other words, to turn a fair game into an unfair game):

- Choose an increment with mean zero and then add a small amount to it.  
- Change the probabilities of the increment so that it does not have mean zero.

Example 4.4.1. We will use the latter rule to sample from Brownian motion with constant drift  $m \neq 0$  and  $\sigma^2 = 1$ . Our procedure for simulating uses

$$
\mathbb{P} \{X (t + \Delta t) - X (t) = \pm \sqrt{\Delta t} \mid X (t) \} = \frac{1}{2} [ 1 \pm m \sqrt{\Delta t} ]. \tag {4.9}
$$

Suppose that  $\Delta t = 1 / N$  for some large integer  $N$ , and let us consider the distribution of  $X(1)$ . There are  $2^{N}$  possible paths that the discrete process can take which can be represented by

$$
\omega = \left(a_{1}, a_{2}, \dots , a_{N}\right)
$$

where  $a_{j} = +1$  or  $-1$  depending on whether that step goes up or down. Let  $J = J(\omega)$  denote the number of  $+1$ 's, and define  $r$  by  $J = (N/2) + r\sqrt{N}$ . Note that the position at time 1 is

$$
\begin{array}{l} X (1) = \sqrt{\Delta t} \left[ a_{1} + \dots + a_{N} \right] \\ = J \sqrt{\Delta} t - (N - J) \sqrt{\Delta} t \\ = 2 r \sqrt{N} \sqrt{\Delta t} = 2 r. \\ \end{array}
$$

For each  $\omega$ , the probability of its occurring is

$$
q (\omega) = \left(\frac{1}{2}\right)^{N} \left[ 1 + m \sqrt{\Delta t} \right]^{J} \left[ 1 - m \sqrt{\Delta t} \right]^{N - J}.
$$

If  $m$  were 0, then the probability would be just  $(1/2)^N$ . Therefore, the ratio of the probabilities for  $m \neq 0$  to  $m = 0$  is

$$
\begin{array}{l} \left[ 1 + \frac{m}{\sqrt{N}} \right]^{J} \left[ 1 - \frac{m}{\sqrt{N}} \right]^{N - J} \\ = \left[ 1 - \frac{m^{2}}{N} \right]^{N / 2} \left[ 1 + \frac{m}{\sqrt{N}} \right]^{r \sqrt{N}} \left[ 1 - \frac{m}{\sqrt{N}} \right]^{- r \sqrt{N}}. \\ \end{array}
$$

Using the relation  $\left(1 + \frac{a}{N}\right)^N \sim e^a$ , we see that the limit of the right-hand side as  $N \to \infty$  is

$$
e^{- m^{2} / 2} e^{2 r m} = e^{m X (1)} e^{- m^{2} / 2}.
$$

Given this, we see that in order to sample from a Brownian motion with drift, we could first sample from a Brownian motion without drift and then weight the samples by the factor  $e^{mX(1)}e^{-m^2 /2}$ . We will show how to do this directly in Section 5.2.

As one more application of binomial approximations, we will give a heuristic argument for the following theorem.

Theorem 4.4.1. Suppose that

$$
d X_{t} = m (X_{t}) d t + \sigma d B_{t},
$$

where  $m$  is continuously differentiable, and let  $p(t,x)$  denote the density of  $X_{t}$  at time  $t$ . Then

$$
\partial_{t} p (t, x) = L_{x}^{*} p (t, x),
$$

where

$$
\begin{array}{l} L^{*} f (x) = - [ m (x) f (x) ]^{\prime} + \frac{\sigma^{2}}{2} f^{\prime \prime} (x) \\ = - m^{\prime} (x) f (x) - m (x) f^{\prime} (x) + \frac{\sigma^{2}}{2} f^{\prime \prime} (x). \\ \end{array}
$$

Recall that

$$
L f (x) = m (x) f^{\prime} (x) + \frac{\sigma^{2}}{2} f^{\prime \prime} (x).
$$

If  $m$  is constant, then as we saw before, one obtains  $L^{*}$  from  $L$  by just changing the sign of the drift. For varying  $m$  we get another term. We will derive the expression for  $L^{*}$  by using the binomial approximation

$$
\mathbb{P} \{X (t + \Delta t) - X (t) = \pm \sigma \sqrt{\Delta t} \mid X (t) \} = \frac{1}{2} \left[ 1 \pm \frac{m (X_{t})}{\sigma} \sqrt{\Delta t} \right].
$$

Let  $\epsilon = \sqrt{\Delta t}, \epsilon^2 = \Delta t$ . To be at position  $x = k\epsilon$  at time  $t + \epsilon^2$ , one must be at position  $x \pm \sigma \epsilon$  at time  $t$ . This gives the relation

$$
\begin{array}{l} p (t + \epsilon^{2}, x) = p (t, x - \sigma \epsilon) \frac{1}{2} \left[ 1 + \frac{m (x - \sigma \epsilon) \epsilon}{\sigma} \right] \\ + p (t, x + \sigma \epsilon) \frac{1}{2} \left[ 1 - \frac{m (x + \sigma \epsilon)}{\sigma} \epsilon \right]. \qquad (4. 10) \\ \end{array}
$$

We know that

$$
p (t + \epsilon^{2}, x) = p (t, x) + \partial_{t} p (t, x) \epsilon^{2} + o (\epsilon^{2}). \qquad (4. 11)
$$

The definition of the derivative (see Section 2.10.1), implies that

$$
\frac{p (t , x + \sigma \epsilon) + p (t , x - \sigma \epsilon)}{2} = p (t, x) + \frac{\sigma^{2} \epsilon^{2}}{2} \partial_{x x} p (t, x) + o (\epsilon^{2}).
$$

$$
p (t, x \pm \sigma \epsilon) = p (t, x) \pm \partial_{x} p (t, x) \sigma \epsilon + o (\epsilon),
$$

$$
m (x \pm \sigma \epsilon) = m (x) \pm m^{\prime} (x) \sigma \epsilon + o (\epsilon),
$$

Plugging in, we see that the right-hand side of (4.10) equals

$$
p (t, x) + \epsilon^{2} \left[ \frac{\sigma^{2}}{2} \partial_{x x} p (t, x) - m^{\prime} (x) p (t, x) - m (x) \partial_{x} p (t, x) \right] + o (\epsilon^{2}).
$$

Comparing this with (4.11) gives us the result.

One can also derive this result by considering  $L^{*}$  as the adjoint of  $L$ . In other words,  $L^{*}$  is defined by

$$
\int_{- \infty}^{\infty} L^{*} f (x) g (x) d x = \int_{- \infty}^{\infty} f (x) L g (x) d x.
$$

If

$$
L g (x) = m (x) g^{\prime} (x) + \frac{\sigma^{2}}{2} g^{\prime \prime} (x),
$$

then integration by parts gives

$$
L^{*} f (x) = - [ m (x) f (x) ]^{\prime} + \frac{\sigma^{2}}{2} f^{\prime \prime} (x).
$$

# 4.5 Continuous martingales

Earlier we made the comment that Brownian motion is the only continuous martingale. We will make this explicit in this section.

Proposition 4.5.1. Suppose that  $M_t$  is a continuous martingale with respect to a filtration  $\{\mathcal{F}_t\}$  with  $M_0 = 0$ , and suppose that the quadratic variation of  $M_t$  is the same as that of standard Brownian motion,

$$
\langle M \rangle_{t} = \lim_{n \to \infty} \sum_{j <   2^{n} t} \left[ M \left(\frac{j + 1}{2^{n}}\right) - M \left(\frac{j}{2^{n}}\right) \right]^{2} = t.
$$

Then every  $\lambda \in \mathbb{R}$

$$
\mathbb{E} \left[ \exp \{i \lambda M_{t} \} \right] = e^{- \lambda^{2} t / 2}.
$$

Sketch of proof. Fix  $\lambda$  and let  $f(x) = e^{i\lambda x}$ . Note that the derivatives of  $f$  are uniformly bounded in  $x$ . Following the proof of Ito's formula we can show that

$$
f (M_{t}) - f (M_{0}) = N_{t} + \frac{1}{2} \int_{0}^{t} f^{\prime \prime} (M_{s}) d s = N_{t} - \frac{\lambda^{2}}{2} \int_{0}^{t} f (M_{s}) d s,
$$

where  $N_{t}$  is a martingale. In particular, if  $r < t$

$$
\mathbb{E} [ f (M_{t}) - f (M_{r}) ] = \frac{1}{2} \mathbb{E} \left[ \int_{r}^{t} f^{\prime \prime} (M_{s}) d s \right] = - \frac{\lambda^{2}}{2} \int_{r}^{t} \mathbb{E} [ f (M_{s}) ] d s.
$$

If we let  $G(t) = \mathbb{E}[f(M_t)]$ , we get the equation

$$
G^{\prime} (t) = - \frac{\lambda^{2}}{2} G (t), \quad G (0) = 1,
$$

which has solution  $G(t) = e^{-\lambda^2 t / 2}$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/0b02acc3-26e4-4125-ae2f-f5fd9d2fbf41/2da036035ecf17d72a24371a51b54009d633206c39db1ddef939cef3f5dc8502.jpg)

Theorem 4.5.2. Suppose that  $M_t$  is a continuous martingale with respect to a filtration  $\{\mathcal{F}_t\}$  with  $M_0 = 0$ , and suppose that the quadratic variation of  $M_t$  is the same as that of standard Brownian motion

$$
\langle M \rangle_{t} = \lim_{n \to \infty} \sum_{j <   2^{n} t} \left[ M \left(\frac{j + 1}{2^{n}}\right) - M \left(\frac{j}{2^{n}}\right) \right]^{2} = t.
$$

Then  $M_t$  is a standard Brownian motion.

Proof. We need to show that  $M_t$  satisfies the conditions of a standard Brownian motion. We are given  $M_0 = 0$  and that  $t \mapsto M_t$  is continuous, so we only need to establish independent, normal increments. One way to express both of these conditions is to say that for every  $s < t$ , the conditional distribution of  $M_t - M_s$  given  $\mathcal{F}_s$  is  $N(0, t - s)$ . But the proposition above shows that for every  $\lambda$ ,

$$
E \left(e^{i \lambda (M_{t} - M_{s})} \mid \mathcal{F}_{s}\right) = e^{- \lambda^{2} (t - s) / 2}.
$$

Since the characteristic function determines the distribution, we are finished.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/0b02acc3-26e4-4125-ae2f-f5fd9d2fbf41/2190cbf73c460a307de2ca3e21807f277dde8e569ca7ec17e5d865584a8e1522.jpg)

This theorem can be extended to say that any continuous martingale is a time change of a Brownian motion. To be precise, suppose that  $M_{t}$  is a continuous martingale. The quadratic variation can be defined as the process  $\langle M\rangle_t$  such that  $M_t^2 -\langle M\rangle_t$  is a local martingale. Let

$$
\tau_{s} = \inf  \{t: \langle M \rangle_{t} = s \}.
$$

Then  $Y_{s} = M_{\tau_{s}}$  is a continuous martingale whose quadratic variation is the same as standard Brownian motion. Hence  $Y_{s}$  is a standard Brownian motion.

# 4.6. EXERCISES

# 4.6 Exercises

Exercise 4.1. A process  $X_{t}$  satisfies the Ornstein-Uhlenbeck SDE if

$$
d X_{t} = m X_{t} d t + d B_{t},
$$

where  $m \in \mathbb{R}$  and  $B_{t}$  is a standard Brownian motion. Suppose that  $X_0 = 1$ ,  $R > 1$  and  $T = T_{R}$  is the first time that  $X_{t} = R$  or  $X_{t} = 0$ .

1. Find a function  $F$  with  $F(0) = 0$  and  $F(x) > 0$  for  $x > 0$  such that  $F(X_{t\wedge T})$  is a martingale. (You may leave your answer in terms of a definite integral.)  
2. Find the probability that  $X_{T} = R$ . You can write the answer in terms of the function  $F$ .  
3. For what values of  $m$  is it true that

$$
\lim_{R \to \infty} \mathbb{P} \{X_{T} = R \} = 0?
$$

Exercise 4.2. Suppose  $B_{t}$  is a standard Brownian motion and  $X_{t}$  satisfies the SDE

$$
d X_{t} = a \cot (X_{t}) d t + d B_{t}, \quad X_{0} = x_{0} \in (0, \pi / 2),
$$

where  $a\in \mathbb{R}$  .For  $\epsilon >0$  , let

$$
T_{\epsilon} = \min  \{t: \sin (X_{t}) = \sin \epsilon \},
$$

$$
T = T_{0 +} = \min  \left\{t: X_{t} \in \{0, \pi \} \right\} = \min  \left\{t: \sin (X_{t}) = 0 \right\},
$$

We will only consider the process  $X_{t}$  for  $t\leq T$  .Let

$$
\tau = \min  \{t: X_{t} = \pi / 2 \}.
$$

1. Find a function  $F(x)$  that is positive for  $0 < x < \pi / 2$  with  $F(\pi / 2) = 0$  and such that  $M_t = F(X_{t \wedge T})$  is a local martingale for  $t < T$ . (It suffices to write  $F$  in the form

$$
F (x) = \int_{x}^{\pi / 2} g (y) d y,
$$

where  $g$  is an explicit function.)

2. For which values of  $a$  is

$$
F (0 +) = \lim_{\epsilon \downarrow 0} F (\epsilon) <   \infty ?
$$

3. Assume that  $0 < \epsilon < x_0 < \pi /2$  and let

$$
q (x_{0}, \epsilon) = \mathbb{P} \{T_{\epsilon} <   \tau \}.
$$

Write  $q(x_0,\epsilon)$  explicitly in terms of  $F$ .

4. For which values of  $a$  is it the case that

$$
\lim_{\epsilon \downarrow 0} q (x_{0}, \epsilon) = 0?
$$

Exercise 4.3. Suppose  $B_{t}$  is a standard Brownian motion and let  $X_{t} = e^{B_{t}} + 2$ . Let

$$
\phi (t, x) = \mathbb{E} \left[ e^{- 2 (T - t)} \left(X_{T}^{3} - 1\right) e^{- X_{T}} \mid X_{t} = x \right], 0 <   t <   T.
$$

Use the Feynman-Kac theorem to find a second-order PDE that  $\phi$  satisfies.

Exercise 4.4. Suppose  $B_1^1, \ldots, B_t^d$  are independent standard Brownian motions and let

$$
X_{t} = \sqrt{(B_{t}^{1})^{2} + \cdots + (B_{t}^{d})^{2}}.
$$

1. Use Ito's formula to show that

$$
d X_{t} = \frac{a}{X_{t}} d t + d M_{t},
$$

where  $a = (d - 1) / 2$  and  $M_{t}$  is a continuous martingale satisfying

$$
d M_{t} = \sum_{j = 1}^{d} A_{t}^{j} d B_{t}^{j},
$$

for suitable processes  $A_{t}^{j}$

2. Show that  $\langle M\rangle_t = t$
3. Explain why  $M_t$  is a standard Brownian motion. (Hint: use Proposition 4.5.1.)

# Chapter 5

# Change of measure and Girsanov theorem

# 5.1 Absolutely continuous measures

In order to state the Girsanov theorem in the next section, we will need to discuss absolute continuity and singularity of measures. For measures on discrete (countable) spaces, this is an elementary idea, but it is more subtle for uncountable spaces. We assume that we have a probability space  $(\Omega, \mathcal{F})$  where  $\Omega$  is the space of outcomes (sometimes called the sample space) and  $\mathcal{F}$  is the collection of events. An event is a subset of  $\Omega$ , and we assume that the set of events forms a  $\sigma$ -algebra (see Section 1.1). A (positive) measure is a function  $\mu: \mathcal{F} \to [0, \infty]$  such that  $\mu(\emptyset) = 0$  and if  $A_1, A_2, \ldots$  are disjoint,

$$
\mu \left(\bigcup_{n = 1}^{\infty} A_{n}\right) = \sum_{n = 1}^{\infty} \mu (A_{n}).
$$

The measure  $\mu$  is a probability (measure) if  $\mu (\Omega) = 1$ .

Definition Suppose  $\mu, \nu$  are measures on  $(\Omega, \mathcal{F})$ .

- $\nu$  is absolutely continuous with respect to  $\mu$ , written  $\nu \ll \mu$ , if for every  $E \in \mathcal{F}$ , if  $\mu(E) = 0$ , then  $\nu(E) = 0$ .  
- $\mu$  and  $\nu$  are mutually absolutely continuous or equivalent measures if  $\nu \ll \mu$  and  $\mu \ll \nu$ .
- $\mu$  and  $\nu$  are singular measures, written  $\mu \perp \nu$ , if there exists an event  $E \in \mathcal{F}$  with  $\mu(E) = 0$  and  $\nu(\Omega \setminus E) = 0$ .

Example 5.1.1. Suppose  $\Omega$  is a countable set and  $\mathcal{F}$  is the collection of all subsets of  $\Omega$ . If  $p: \Omega \to [0, \infty)$  is a function, then there is a corresponding measure  $\mu$  defined by

$$
\mu (E) = \sum_{\omega \in E} p (\omega).
$$

Suppose  $\nu$  is another measure given by the function  $q$ . Let

$$
A_{\mu} = \{\omega : p (\omega) > 0 \}, \quad A_{\nu} = \{\omega : q (\omega) > 0 \}.
$$

Then  $\nu \ll \mu$  if and only if  $A_{\nu}\subset A_{\mu}$  , and

$$
q (\omega) = \frac{d \nu}{d \mu} (\omega) p (\omega), \quad \omega \in \Omega ,
$$

where  $d\nu /d\mu$  is defined on  $A_{\mu}$  by

$$
\frac{d \nu}{d \mu} (\omega) = \frac{q (\omega)}{p (\omega)}.
$$

Note that for any event  $E$

$$
\nu (E) = \sum_{\omega \in E} \frac{d \nu}{d \mu} (\omega) p (\omega).
$$

In this case,  $\nu$  and  $\mu$  are equivalent if  $A_{\nu} = A_{\mu}$ , and  $\nu \perp \mu$  if  $A_{\nu} \cap A_{\mu} = \emptyset$ .

Example 5.1.2. Suppose  $\mu$  denotes Lebesgue measure on  $\mathbb{R}$

$$
\mu (A) = \int_{A} d \mu = \int_{A} d x = \mathrm{length} (A),
$$

and  $X$  is a continuous random variable with density  $f$ . Let  $P_{X}$  denote the distribution of  $X$ , that is, the probability measure on  $\mathbb{R}$  given by

$$
P_{X} (A) = \mathbb{P} \{X \in A \} = \int_{A} f (x) d x = \int_{A} f d \mu .
$$

Then  $P_{X}\ll \mu$  and we can write

$$
P_{X} (A) = \int_{A} \frac{d P_{X}}{d \mu} d \mu \quad \text{where} \quad \frac{d P_{X}}{d \mu} = f.
$$

If  $f(x) > 0$  for all  $x$ , then  $P_X(A) > 0$  whenever  $\mu(A) > 0$  and hence  $\mu \ll P_X$ . If  $Y$  is another continuous random variable with density  $g$ , let

$$
A_{X} = \{x: f (x) > 0 \}, \quad A_{Y} = \{y: g (y) > 0 \}.
$$

If  $A_{Y}\subset A_{X}$  , then  $P_{Y}\ll P_{X}$  and we can write

$$
\mathbb{P} \{Y \in A \} = \int_{A} g d \mu = \int_{A} \frac{g}{f} f d \mu = \int_{A} \frac{d P_{Y}}{d P_{X}} d P_{X},
$$

where

$$
\frac{d P_{Y}}{d P_{X}} = \frac{g}{f}.
$$

If  $A_X \cap A_Y = \emptyset$ , then  $P_X \perp P_Y$ .

Example 5.1.3. Suppose  $X$  is a discrete random variable taking values in the countable set  $A$  and  $Y$  is a continuous random variable with density  $g$ . If  $P_X, P_Y$  denote the distributions, then  $P_X \perp P_Y$ . Indeed,

$$
P_{X} (\mathbb{R} \setminus A) = 0, \quad P_{Y} (A) = 0.
$$

These examples demonstrate the following theorem whose proof can be found in any book on measure theory. A measure  $\mu$  is  $\sigma$ -finite if we can write

$$
\Omega = \bigcup_{n = 1}^{\infty} A_{n},
$$

where  $\mu (A_n) <   \infty$  for each  $n$

Theorem 5.1.1 (Radon-Nikodym Theorem). Suppose  $\mu, \nu$  are  $\sigma$ -finite measures on  $(\Omega, \mathcal{F})$  with  $\nu \ll \mu$ . Then there exists a function  $f$  such that for every  $E$ ,

$$
\nu (E) = \int_{E} f d \mu . \tag {5.1}
$$

The function  $f$  is called the Radon-Nikodym derivative of  $\nu$  with respect to  $\mu$  and is denoted

$$
f = \frac{d \nu}{d \mu}.
$$

Roughly speaking, the  $\nu$  measure of a point  $x$  is  $(d\nu / d\mu)(x)$  times the  $\mu$  measure of  $x$ . This interpretation is precise in the case of discrete measures,

such as in Example 5.1.1, but does not make precise sense when the point  $x$  gets zero measure in both measures. Example 5.1.2 shows that this subtlety is something we are already familiar with. If  $\mu$  denotes length, then the density  $f = dP_X / d\mu$  of a continuous random variable can be interpreted as saying that the probability of obtaining a value in  $[x,x + dx]$  is  $f(x)$  times  $dx$ , the length of  $[x,x + dx]$ .

If  $(\Omega, \mathcal{F}, P)$  is a probability space, and  $Q$  is a probability measure with  $Q \ll P$ , then the Radon-Nikodym derivative

$$
X = \frac{d Q}{d P}
$$

is a nonnegative random variable with  $\mathbb{E}[X] = 1$ . If  $E$  is an event, then (5.1) can be written as

$$
Q (E) = \mathbb{E}_{P} [ X 1_{E} ]. \tag {5.2}
$$

Here  $\mathbb{E}_P$  denotes expectation using the probability measure  $P$ . (Up to now, we have been considering a single probability measure  $\mathbb{P}$  on a space and using  $\mathbb{E}$  to denote expectation with respect to it. Since we are now going to consider different measures on the same space, we adopt the notation  $\mathbb{E}_P$  to denote expectations using the measure  $P$ .) It is not hard to extend the relation (5.2) to give

$$
\mathbb{E}_{Q} [ Y ] = \mathbb{E}_{P} \left[ Y \frac{d Q}{d P} \right].
$$

Example 5.1.4. Suppose  $(\Omega, \mathcal{F}, \mathbb{P})$  is a probability space, and  $\mathcal{G} \subset \mathcal{F}$  is a sub  $\sigma$ -algebra. As before, we think of  $\mathcal{G}$  as "partial information". Let  $X$  be a nonnegative, integrable  $\mathcal{F}$ -measurable random variable. Then

$$
Q (A) = \mathbb{E} \left[ 1_{A} X \right], \quad A \in \mathcal{G},
$$

defines a measure on  $(\Omega, \mathcal{G})$  that satisfies  $Q \ll \mathbb{P}$ . Therefore, there exists a  $\mathcal{G}$ -measurable random variable  $Y$  such that for all  $A \in \mathcal{G}$ ,

$$
Q (A) = \mathbb{E} \left[ 1_{A} Y \right].
$$

This random variable  $Y$  is the conditional expectation  $E(X \mid \mathcal{G})$  as defined in Section 1.1.

Example 5.1.5. Let the set of outcomes  $\Omega$  be the set of continuous functions  $f:[0,1]\to \mathbb{R}$ . If  $B_{t}$  denotes a Brownian motion with drift zero and variance

$\sigma^2$ , there is a measure  $P_{\sigma}$  on  $\Omega$  called Wiener measure (with variance  $\sigma^2$ ). We think of  $P_{\sigma}$  as the distribution of the "function-valued" random variable  $t \mapsto B_t$ . If  $V$  is a subset of  $\Omega$ , then  $P_{\sigma}(V)$  is the probability that the function  $t \mapsto B_t$  lies in  $V$ . We claim that if  $\sigma \neq \sigma'$ , then  $P_{\sigma} \perp P_{\sigma'}$ . In order to show this, we need to find an event  $E$  such that  $P_{\sigma}(E) = 1, P_{\sigma'}(E) = 0$ . Let  $E_r$  denote the set of functions  $f$  such that

$$
\lim_{n \to \infty} \sum_{j = 1}^{2^{n}} \left[ f \left(\frac{j}{2^{n}}\right) - f \left(\frac{j - 1}{2^{n}}\right) \right]^{2} = r^{2}.
$$

Using what we know about the quadratic variation, we see that

$$
P_{\sigma} (E_{\sigma}) = 1, \quad P_{\sigma^{\prime}} (E_{\sigma^{\prime}}) = 1.
$$

Let  $\Omega$  denote the set of continuous functions  $f:[0,1]\to \mathbb{C}$  which is a Banach space (complete, normed, metric space) under the norm

$$
\left\| f \right\| = \max \{| f (s) |: 0 \leq s \leq 1 \}.
$$

Let  $\mathcal{F}$  denote the corresponding Borel  $\sigma$ -algebra, that is, the smallest  $\sigma$ -algebra under which all the open sets under  $\| \cdot \|$  are measurable. The measures  $P_{\sigma}$  are defined on  $(\Omega, \mathcal{F})$ . It is easy to check that the functions  $\Theta_s(f) = f(s)$  are measurable functions on this space, and hence so are the functions

$$
\Psi_{n} (f) = \sum_{j = 1}^{2^{n}} \left[ f \left(\frac{j}{2^{n}}\right) - f \left(\frac{j - 1}{2^{n}}\right) \right]^{2},
$$

and the sets

$$
E_{r} = \left\{f: \lim_{n \to \infty} \Psi_{n} (f) = r^{2} \right\}.
$$

We proved that  $P_{\sigma}(E_{\sigma}) = 1$  in Theorem 2.8.2.

One rarely needs to deal with measures that are not  $\sigma$ -finite, but the Radon-Nikodym derivative does not hold for such measures. For example, if  $\mu$  is counting measure and  $\nu$  is Lebesgue measure, both on  $\mathbb{R}$ , then  $\nu \ll \mu$ , but there is no  $f$  such that (5.1) holds.

# 5.2 Giving drift to a Brownian motion

As we have already noted, there are two ways to take a fair game and make it unfair or vice versa:

- Play the game and then add a deterministic amount in one direction.  
- Change the probabilities of the outcome.

We will consider these methods in the case of a standard Brownian motion  $B_{t}$ . For the first method, we can define a Brownian motion with drift  $m$ , by setting

$$
W_{t} = m t + B_{t}.
$$

We will now consider the second way by changing the probabilities. We have already motivated this with a binomial approximation in (4.9), but in this section we will transform the game directly using the Brownian motion.

Suppose that  $B_{t}$  is defined on the probability space  $(\Omega, \mathcal{F}, \mathbb{P})$  with a filtration  $\{\mathcal{F}_t\}$ . To change the probability is to consider a different measure  $Q$  instead of  $\mathbb{P}$ . Let

$$
M_{t} = e^{m B_{t} - \frac{m^{2} t}{2}}. \tag {5.3}
$$

We have seen that  $M_{t}$  is a martingale. In fact (see (3.20)), Itô's formula shows that  $M_{t}$  satisfies

$$
d M_{t} = m M_{t} d B_{t}, \quad M_{0} = 1.
$$

For each event  $V$  that is  $\mathcal{F}_t$  measurable, we define

$$
Q_{t} (V) = \mathbb{E} \left[ 1_{V} M_{t} \right].
$$

In other words, on the probability space  $(\Omega ,\mathcal{F}_t,\mathbb{P})$

$$
\frac{d Q_{t}}{d \mathbb{P}} = M_{t}.
$$

If  $s < t$  and  $V$  is  $\mathcal{F}_s$ -measurable, then it is also  $\mathcal{F}_t$ -measurable. In this case,  $Q_s(V) = Q_t(V)$  as can be seen in the calculation

$$
\begin{array}{l} Q_{t} (V) = \mathbb{E} \left[ 1_{V} M_{t} \right] = \mathbb{E} \left[ E \left(1_{V} M_{t} \mid \mathcal{F}_{s}\right) \right] \\ = \mathbb{E} \left[ 1_{V} E \left(M_{t} \mid \mathcal{F}_{s}\right) \right] = \mathbb{E} \left[ 1_{V} M_{s} \right] = Q_{s} (V). \tag {5.4} \\ \end{array}
$$

Hence we can write just  $Q$  for the measure.

We claim that

- The process  $t \mapsto B_t$ , under the measure  $Q$ , is a Brownian motion with drift  $m$  and  $\sigma^2 = 1$ .

We prove this by showing it satisfies the conditions to be a Brownian motion. The continuity of paths is immediate as well as  $B_0 = 0$ . To show the rest, it suffices to show that if  $s, t \geq 0$ , then  $B_{t+s} - B_s$  is independent of  $\mathcal{F}_s$  with a normal distribution with mean  $mt$  and variance  $t$ . We can establish this by showing it has the (conditional) moment generating function

$$
E_{Q} \left(\exp \{\lambda (B_{t + s} - B_{s}) \} \mid \mathcal{F}_{s}\right) = e^{\lambda m t} e^{\lambda^{2} t / 2}. \tag {5.5}
$$

Here we are writing  $E_{Q}$  to denote that the conditional expectation is taken using the measure  $Q$ . To establish (5.5), we need to show that if  $V$  is  $\mathcal{F}_s$ -measurable, then

$$
\begin{array}{l} \mathbb{E}_{Q} \left[ 1_{V} \exp \{\lambda (B_{t + s} - B_{s}) \} \right] = \mathbb{E}_{Q} \left[ 1_{V} e^{\lambda m t} e^{\lambda^{2} t / 2} \right] \\ = e^{\lambda m t} e^{\lambda^{2} t / 2} Q (V), \\ \end{array}
$$

or equivalently, by the definition of  $\mathbb{E}_Q$

$$
\mathbb{E} \left[ 1_{V} \exp \bigl \{\lambda (B_{t + s} - B_{s}) \bigr \} M_{t + s} \right] = e^{\lambda m t} e^{\lambda^{2} t / 2} \mathbb{E} [ 1_{V} M_{s} ].
$$

Note that if  $Y = B_{t + s} - B_s$ , then  $Y$  is independent of  $\mathcal{F}_s$  and

$$
\begin{array}{l} E \left(e^{\lambda Y} M_{t + s} \mid \mathcal{F}_{s}\right) = M_{s} e^{- m^{2} t / 2} E \left(e^{\lambda Y} e^{m Y} \mid \mathcal{F}_{s}\right) \\ { = } { M_{ s } e^{ - m^{ 2 } t / 2 } \mathbb{ E } \left[ e^{ ( \lambda + m ) Y } \right] } \\ { = } { M_{ s } e^{ - m^{ 2 } t / 2 } e^{ ( \lambda + m )^{ 2 } t / 2 } } \\ = M_{s} e^{\lambda^{2} t / 2} e^{\lambda m t}. \\ \end{array}
$$

Therefore, if  $V$  is  $\mathcal{F}_s$ -measurable,

$$
\begin{array}{l} \mathbb{E} \left[ 1_{V} \exp \{\lambda (B_{t + s} - B_{s}) \} M_{t + s} \right] \\ = \mathbb{E} \left[ E \left(1_{V} \exp \left\{\lambda \left(B_{t + s} - B_{s}\right) \right\} M_{t + s} \mid \mathcal{F}_{s}\right) \right] \\ { = } { \mathbb{ E } \left[ 1_{ V } E ( \exp \{ \lambda ( B_{ t + s } - B_{ s } ) \} M_{ t + s } \mid \mathcal{ F }_{ s } ) \right] } \\ { = } { e^{ \lambda^{ 2 } t / 2 } e^{ \lambda m t } \mathbb{ E } [ 1_{ V } M_{ s } ] . } \\ \end{array}
$$

Example 5.2.1. Suppose  $X_{t}$  is a geometric Brownian motion satisfying

$$
d X_{t} = X_{t} \left[ m d t + \sigma d B_{t} \right],
$$

where  $B_{t}$  is a standard Brownian motion defined on the probability space  $(\Omega, \mathcal{F}, \mathbb{P})$ . If  $r \in \mathbb{R}$ , then we can find a new probability measure  $Q$  such that

$$
d B_{t} = r d t + d W_{t},
$$

where  $W_{t}$  is a Brownian motion with respect to  $Q$ . Then,

$$
d X_{t} = X_{t} \left[ (m + \sigma r) d t + \sigma d W_{t} \right].
$$

Hence with respect to  $Q$ ,  $X_{t}$  is a geometric Brownian motion with the same volatility but a new drift. From this we can see that the measures for geometric Brownian motions with the same  $\sigma$  are equivalent.

Example 5.2.2. We compute a quantity for Brownian motion with drift by using a standard Brownian motion. Suppose  $B_{t}$  is a standard Brownian motion,  $a > 0$ ,  $m \in \mathbb{R}$ , and  $M_{t}$  is the martingale in (5.3). Let  $T_{a} = \inf \{t : B_{t} = a\}$ . Then under the new measure  $Q$ ,  $B_{t}$  is a Brownian motion with drift  $m$ . Note that

$$
Q \{T_{a} <   \infty \} = \mathbb{E} \left[ M_{T_{a}} 1 \{T_{a} <   \infty \} \right] = \mathbb{E} \left[ M_{T_{a}} \right].
$$

Here the expectation  $\mathbb{E}$  is with respect to the original measure under which  $B$  is a standard Brownian motion; the second equality follows from the fact that  $\mathbb{P}\{T_a < \infty\} = 1$ . Therefore,

$$
\begin{array}{l} Q \{T_{a} <   \infty \} = \mathbb{E} \left[ \exp \left\{m B_{T_{a}} - \frac{m^{2} T_{a}}{2} \right\} \right] \\ = e^{a m} \mathbb{E} \left[ \exp \left\{- \frac{m^{2} T_{a}}{2} \right\} \right]. \\ \end{array}
$$

In Example 2.7.1 we computed the density of  $T_{a}$  for Brownian motion. Given this we could compute the expectation on the right-hand side. However we will choose a different method. We know that driftless Brownian motion will hit the line  $y = a$  with probability one, and hence so will Brownian motion with  $m > 0$ . Therefore, if  $m > 0$ ,  $Q\{T_{a} < \infty\} = 1$  and

$$
\mathbb{E} \left[ \exp \left\{- \frac{m^{2} T_{a}}{2} \right\} \right] = e^{- a m}.
$$

If the Brownian motion has drift  $-m$ , then

$$
Q \{T_{a} <   \infty \} = e^{- a m} \mathbb{E} \left[ \exp \left\{- \frac{m^{2} T_{a}}{2} \right\} \right] = e^{- 2 a m}.
$$

# 5.3 Girsanov theorem

The Girsanov theorem describes the probability measure one obtains by "weighting" or "tilting" the measure of a Brownian motion by a martingale. One example was given in the previous section where the martingale was

$$
M_{t} = e^{m B_{t} - \left(m^{2} t / 2\right)}, \tag {5.6}
$$

and in the new measure,  $B_{t}$  was a Brownian motion with drift. We will generalize this idea here.

Suppose  $M_t$  is a nonnegative martingale satisfying the exponential SDE

$$
d M_{t} = A_{t} M_{t} d B_{t}, \quad M_{0} = 1, \tag {5.7}
$$

where  $B_{t}$  is a standard Brownian motion. The solution to this equation was given in (3.20),

$$
M_{t} = e^{Y_{t}} \quad \text{where} \quad Y_{t} = \int_{0}^{t} A_{s} d B_{s} - \frac{1}{2} \int_{0}^{t} A_{s}^{2} d s. \tag {5.8}
$$

For many applications it suffices to consider the equation (5.7) and not worry about the form of the solution (5.8). Solutions to (5.7) are local martingales, but as we have seen, they might not be martingales. For now we will assume that  $M_t$  is a martingale. In that case, we can define a probability measure  $\mathbb{P}^*$  by saying that if  $V$  is an  $\mathcal{F}_t$ -measurable event, then

$$
\mathbb{P}^{*} (V) = \mathbb{E} \left[ 1_{V} M_{t} \right]. \tag {5.9}
$$

In other words, if we consider  $\mathbb{P},\mathbb{P}^*$  as being defined on  $\mathcal{F}_t$ -measurable events,

$$
\frac{d \mathbb{P}^{*}}{d \mathbb{P}} = M_{t}.
$$

If  $s < t$  and  $V$  is  $\mathcal{F}_s$ -measurable, then  $V$  is also  $\mathcal{F}_t$ -measurable. Hence, in order for the above definition to be consistent, we need that for such  $V$ ,

$$
\mathbb{E} \left[ 1_{V} M_{s} \right] = \mathbb{E} \left[ 1_{V} M_{t} \right].
$$

Indeed, this holds by the computation (5.4) which only uses the fact that  $M$  is a martingale and  $V$  is  $\mathcal{F}_s$ -measurable. We write  $\mathbb{E}^*$  for expectations with respect to  $\mathbb{P}^*$ . If  $X$  is  $\mathcal{F}_t$ -measurable, then

$$
\mathbb{E}^{*} [ X ] = \mathbb{E} \left[ X M_{t} \right].
$$

Theorem 5.3.1 (Girsanov Theorem). Suppose  $M_t$  is a nonnegative martingale satisfying (5.7), and let  $\mathbb{P}^*$  be the probability measure defined in (5.9). If

$$
W_{t} = B_{t} - \int_{0}^{t} A_{s} d s,
$$

then with respect to the measure  $\mathbb{P}^*$ ,  $W_t$  is a standard Brownian motion. In other words,

$$
d B_{t} = A_{t} d t + d W_{t},
$$

where  $W$  is a  $\mathbb{P}^*$ -Brownian motion.

In other words, if we weight the probability measure  $\mathbb{P}$  by the martingale, then in the new measure  $\mathbb{P}^*$ , the Brownian motion acquires a drift  $A_{t}$ . The example of the previous section is the martingale (5.6) with  $A_{t} \equiv m$  and a constant drift  $m$  is obtained.

Let us give a heuristic derivation of Girsanov's theorem using a binomial approximation. Suppose  $\Delta t$  is given. In the binomial approximation to  $\mathbb{P}$ , we are equally likely to go up and down,

$$
\mathbb{P} \left\{B (t + \Delta t) - B (t) = \pm \sqrt{\Delta t} \mid B (t) \right\} = \frac{1}{2}.
$$

The binomial approximation to (5.7) is

$$
\mathbb{P} \left\{M (t + \Delta t) = M (t) \left[ 1 \pm A (t) \sqrt{\Delta t} \right] \mid B (t) \right\} = \frac{1}{2}.
$$

Therefore, in the weighted measure  $\mathbb{P}^*$  the probability of a jump of  $\pm \sqrt{\Delta}$  should be proportional to  $1\pm A(t)\sqrt{\Delta t}$ . Since the sum of the two probabilities equals one, we see that

$$
\mathbb{P}^{*} \left\{B (t + \Delta t) - B (t) = \pm \sqrt{\Delta t} \mid B (t) \right\} = \frac{1}{2} \left[ 1 \pm A (t) \sqrt{\Delta t} \right].
$$

As we saw in Section 4.4, this implies that

$$
E^{*} \left[ B (t + \Delta t) - B (t) \mid B (t) \right] = A (t) \Delta t,
$$

that is, in the probability measure  $\mathbb{P}^*$ , the process obtains a drift of  $A(t)$ .

The condition that  $M_t$  be a martingale (and not just a local martingale) is necessary for Girsanov's theorem as we have stated it. Given only (5.7)

or (5.8), it may be hard to determine if  $M_t$  is a martingale, so it is useful to have a version that applies for local martingales. If we do not know  $M_t$  is a martingale, we can still use Theorem 5.3.1 if we are careful to stop the process before anything bad happens. To be more precise, suppose  $M_t = e^{Y_t}$  satisfies (5.8), and note that

$$
\langle Y \rangle_{t} = \int_{0}^{t} A_{s}^{2} d s.
$$

Let

$$
T_{n} = \inf \{t: M_{t} + \langle Y \rangle_{t} = n \},
$$

and let

$$
A_{t}^{(n)} = \left\{ \begin{array}{l l} A_{t}, & t <   T_{n} \\ 0, & t \geq T_{n} \end{array} \right..
$$

Then

$$
d M_{t \wedge T_{n}} = A_{t}^{(n)} M_{t \wedge T_{n}} d B_{t},
$$

which is a square integrable martingale since

$$
\begin{array}{l} \mathbb{E} \left[ (M_{t \wedge T_{n}} - 1)^{2} \right] = \int_{0}^{t} \mathbb{E} \left[ A_{s}^{(n)} M_{s \wedge T_{n}} \right]^{2} d s \\ \leq n^{2} \mathbb{E} \int_{0}^{t} [ A_{s}^{(n)} ]^{2} d s \leq n^{3}. \\ \end{array}
$$

There is the corresponding measure, which we might denote by  $\mathbb{P}_n^*$ , which gives a drift of  $A_{t}$  up to time  $T_{n}$  and then proceeds with drift 0. If  $n < m$ , then  $\mathbb{P}_n^*$  and  $\mathbb{P}_m^*$  are the same measure restricted to  $t \leq T_{n}$ . Hence we can write  $\mathbb{P}^*$  for a measure on  $B_{t}, 0 \leq t < T$ , where

$$
T = \lim_{n \to \infty} T_{n}.
$$

This shows how to tilt the measure up to time  $T$ , There are examples such that  $\mathbb{P}^*\{T < \infty\} > 0$ . However, if for some fixed  $t_0$ ,  $\mathbb{P}^*\{T > t_0\} = 1$ , then  $M_t, 0 \leq t \leq t_0$  is a martingale. In other words, what prevents a solution to (5.7) from being a martingale is that with respect to the new measure  $\mathbb{P}^*$ , either  $M_t$  or  $|A_t|$  goes to infinity in finite time. We summarize with a restatement of the Girsanov theorem.

Theorem 5.3.2 (Girsanov Theorem, local martingale form). Suppose  $M_{t} = e^{Y_{t}}$  satisfies (5.7)-(5.8), and let

$$
T_{n} = \inf  \left\{t: M_{t} + | A_{t} | = n \right\}, \quad T = T_{\infty} = \lim_{n \rightarrow \infty} T_{n}.
$$

Let  $\mathbb{P}^*$  be the probability measure as above. If

$$
W_{t} = B_{t} - \int_{0}^{t} A_{s} d s, 0 \leq t <   T,
$$

then with respect to the measure  $\mathbb{P}^*$ ,  $W_t, t < T$  is a standard Brownian motion. In other words,

$$
d B_{t} = A_{t} d t + d W_{t}, \quad t <   T,
$$

where  $W$  is a  $\mathbb{P}^*$ -Brownian motion. If any one of the following three conditions hold, then  $M_s, 0 \leq s \leq t$ , is actually a martingale:

$$
\begin{array}{l} \mathbb{P}^{*} \{T > t \} = 1, \\ \mathbb{E} [ M_{t} ] = 1, \\ \mathbb{E} \left[ \exp \left\{\frac{\langle Y \rangle_{t}}{2} \right\} \right] <   \infty . \tag {5.10} \\ \end{array}
$$

It is not always easy to see whether or not the local martingale in (5.7) will be a martingale. However, if any one of the three conditions at the end of the theorem hold, then it is a martingale. The first condition uses  $\mathbb{P}^*$ , the new measure, while the expectation  $\mathbb{E}$  in the other two conditions is with respect to the original measure. The relation (5.10) is called the Novikov condition.

Even if  $M_t$  is not a martingale, since

$$
M_{t} = \lim_{n \rightarrow \infty} M_{t \wedge T_{n}},
$$

Fatou's lemma implies that

$$
\mathbb{E} \left[ M_{t} \right] = \mathbb{E} \left[ \lim_{n \to \infty} M_{t \wedge T_{n}} \right] \leq \lim_{n \to \infty} \mathbb{E} [ M_{t \wedge T_{n}} ] = \mathbb{E} [ M_{0} ] = 1.
$$

An extension of this argument shows that nonnegative local martingales are supermartingales, that is, if  $s < t$ ,

$$
E \left[ M_{t} \mid \mathcal{F}_{s} \right] \leq M_{s}.
$$

Example 5.3.1. Let  $B_{t}$  be a standard Brownian motion with  $B_{0} = 1$ . Let  $\tau = \inf \{t : B_{t} = 0\}$ . Then  $M_{t} = B_{t \wedge \tau}$  is a nonnegative martingale, satisfying

$$
d M_{t} = d B_{t} = A_{t} M_{t} d B_{t}, \quad t <   \tau ,
$$

where

$$
A_{t} = \frac{1}{M_{t}} = \frac{1}{B_{t}}.
$$

If we tilt the measure using  $M_{t}$ , then

$$
d B_{t} = A_{t} d t + d W_{t} = \frac{d t}{B_{t}} + d W_{t},
$$

where  $W_{t}$  is a standard Brownian motion in the new measure  $\mathbb{P}^*$ . Note that this equation gives the Bessel process that we studied in Section 4.2 with  $a = 1$ . Using properties of the Bessel process, we see that

$$
\mathbb{P}^{*} \{\tau <   \infty \} = 0.
$$

In other words, in the new measure the process avoids the origin.

Example 5.3.2. Let  $B_{t}$  be a standard Brownian motion with  $B_{0} = 1$  and  $r \in \mathbb{R}$ . Let  $\tau = \inf \{t : B_{t} = 0\}$ . For  $t < \tau$ , Ito's formula gives

$$
\begin{array}{l} d B_{t}^{r} = r B_{t}^{r - 1} d B_{t} + \frac{r (r - 1)}{2} B_{t}^{r - 2} d t \\ = B_{t}^{r} \left[ \frac{r}{B_{t}} d B_{t} + \frac{r (r - 1)}{2 B_{t}^{2}} d t \right]. \\ \end{array}
$$

Let

$$
M_{t} = \exp \left\{- \int_{0}^{t} \frac{r (r - 1)}{2 B_{s}^{2}} d s \right\} B_{t}^{r}.
$$

The product rule shows that  $M_{t}$  satisfies the exponential SDE

$$
d M_{t} = \frac{r}{B_{t}} M_{t} d B_{t}, \quad t <   \tau .
$$

Therefore,

$$
d B_{t} = \frac{r}{B_{t}} d t + d W_{t}, \quad t <   \tau ,
$$

where  $W_{t}$  is a Brownian motion in the new measure. This equation is the Bessel equation. In particular, if  $r \geq 1/2$ , then  $\mathbb{P}^{\ast}\{\tau = \infty\} = 1$ , and using this we see that with  $\mathbb{P}^{\ast}$ -probability one

$$
M_{t} + \int_{0}^{t} A_{s}^{2} d s
$$

is finite. Therefore, for  $r \geq 1/2$ ,  $M_t$  is a martingale.

Example 5.3.3. Suppose that  $X_{t}$  satisfies

$$
d X_{t} = X_{t} \left[ m (t, X_{t}) d t + \sigma (t, X_{t}) d B_{t} \right],
$$

where  $B_{t}$  is a standard Brownian motion with respect to the probability measure  $\mathbb{P}$ . Let us assume that  $\sigma(t, x) > 0$  for all  $t, x$ . Suppose we want to find a probability measure  $\mathbb{P}^*$  that is mutually absolutely continuous with respect to  $\mathbb{P}$  and such that  $X_{t}$  is a martingale under  $\mathbb{P}^*$ . Then we would want

$$
d B_{t} = - \frac{m (t , X_{t})}{\sigma (t , X_{t})} d t + d W_{t},
$$

where  $W_{t}$  is a standard Brownian motion with respect to  $\mathbb{P}^*$ . This would give

$$
d X_{t} = X_{t} \sigma (t, X_{t}) d W_{t}.
$$

The local martingale that we need to consider is  $M_t$  satisfying

$$
d M_{t} = - \frac{m (t , X_{t})}{\sigma (t , X_{t})} M_{t} d B_{t}, \quad M_{0} = 1.
$$

In other words,

$$
M_{t} = \exp \left\{\int_{0}^{t} A_{s} d B_{s} - \frac{1}{2} \int_{0}^{t} A_{s}^{2} d s \right\}, \quad A_{t} = - \frac{m (t , X_{t})}{\sigma (t , X_{t})}. \qquad (5. 11)
$$

While  $M_{t}$  is a local martingale, we cannot say it is a martingale without verifying one of the conditions in Theorem 5.3.2.

Example 5.3.4. Suppose  $X_{t}$  is a Bessel process satisfying

$$
d X_{t} = \frac{1}{X_{t}} d t + d B_{t}, \quad X_{0} = 1,
$$

where  $B_{t}$  is a standard Brownian motion. In Section 4.2 it was shown that with probability one, the process  $X_{t}$  will never reach the origin and, in fact,  $X_{t} \to \infty$ . Let

$$
M_{t} = \frac{1}{X_{t}}.
$$

Using Ito's formula, we see that

$$
d M_{t} = - \frac{1}{X_{t}^{2}} d X_{t} + \frac{1}{X_{t}^{3}} d \langle X \rangle_{t} = - \frac{1}{X_{t}} M_{t} d B_{t}.
$$

Therefore,  $M_t$  is a local martingale with  $M_0 = 1$  and we can apply the second form of the Girsanov theorem. We will ask if  $M_t$  is a martingale. Indeed, one can see that it is not by noting that  $M_t \to 0$  and (with some more work that we omit)  $\mathbb{E}[M_t] \to 0$ . If  $M_t$  were a martingale, we would have  $\mathbb{E}[M_t] = 1$  for all  $t$ . Another way to see that  $M_t$  is not a martingale is to consider the measure  $\mathbb{P}^*$  given by tilting by the martingale. In this measure,

$$
d B_{t} = - \frac{1}{X_{t}} d t + d W_{t},
$$

where  $W_{t}$  is a  $\mathbb{P}^*$ -Brownian motion. Therefore,  $dX_{t} = dW_{t}$  which says that the distribution of  $X_{t}$  in the measure  $\mathbb{P}^*$  is that of a standard Brownian motion. Since the Brownian motion reaches zero, we can see that with respect to  $\mathbb{P}^*$ , the martingale  $M_{t}$  reaches infinity in finite time.

Suppose  $M_t$  is a continuous, nonnegative local martingale. To show that  $M_t$  is a supermartingale, suppose that  $\tau_n$  is an increasing sequence of stopping times such that  $M_{t \wedge \tau_n}$  is a martingale. Let  $s < t$ . Suppose  $V$  is an  $\mathcal{F}_s$ -measurable event and let  $V_k = V \cap \{\tau_k > s\}$ . Since  $M_{t \wedge \tau_n}$  is a martingale, if  $n \geq k$ ,

$$
\mathbb{E} \left[ 1_{V_{k}} M_{t \wedge \tau_{n}} \right] = \mathbb{E} \left[ 1_{V_{k}} M_{s \wedge \tau_{n}} \right] = \mathbb{E} \left[ 1_{V_{k}} M_{s} \right].
$$

Hence Fatou's lemma implies that

$$
\mathbb{E} \left[ 1_{V_{k}} M_{t} \right] \leq \lim_{n \to \infty} \inf_{\tau \to \infty} \mathbb{E} \left[ 1_{V_{k}} M_{t \wedge \tau_{n}} \right] = \mathbb{E} \left[ 1_{V_{k}} M_{s} \right].
$$

Since  $\mathbb{E}\left[1_V E(M_t\mid \mathcal{F}_s)\right] = \mathbb{E}\left[1_V M_t\right]$ , by letting  $k\to \infty$  and using the monotone convergence theorem, we get

$$
\mathbb{E} \left[ 1_{V} E \left(M_{t} \mid \mathcal{F}_{s}\right) \right] = \mathbb{E} \left[ 1_{V} M_{t} \right] \leq \mathbb{E} \left[ 1_{V} M_{s} \right].
$$

Since this holds for every  $\mathcal{F}_s$ -measurable event  $V$ , we have  $E(M_t \mid \mathcal{F}_s) \leq M_s$  with probability one. Also, if  $V = \{E(M_t \mid \mathcal{F}_s) < M_s\}$  and  $\mathbb{P}(V) > 0$ , then

$$
\mathbb{E} \left[ M_{t} \right] = \mathbb{E} \left[ 1_{V} M_{t} \right] + \mathbb{E} \left[ 1_{V^{c}} M_{t} \right] <   \mathbb{E} \left[ 1_{V} M_{s} \right] + \mathbb{E} \left[ 1_{V^{c}} M_{s} \right] = \mathbb{E} \left[ M_{s} \right].
$$

Conversely, if  $\mathbb{E}[M_t] = \mathbb{E}[M_0]$  for all  $t$ , then  $M_t$  must be a martingale. (We emphasize that we are using the fact that  $M_t \geq 0$ .)

To prove the Girsanov theorem, let us first consider the case when there exists  $K < \infty$  such that with probability one  $|A_t| \leq K$  and  $M_t \leq K$ . By Theorem 4.5.2, we need only show that in the measure  $\mathbb{P}^*$ ,  $W_t$  is a continuous martingale with quadratic variation  $\langle W \rangle_t = t$ . Continuity and the quadratic variation calculation are immediate (since they hold with probability one in the measure  $\mathbb{P}$ ), so all we need to show is that  $W_t$  is a  $\mathbb{P}^*$ -martingale, that is, if  $s < t$ , then

$$
E_{\mathbb{P}^{*}} (W_{t} \mid \mathcal{F}_{s}) = W_{s}.
$$

In other words, if  $V$  is  $\mathcal{F}_s$ -measurable, we need to show that

$$
\mathbb{E}^{*} \left[ 1_{V} W_{s} \right] = \mathbb{E}^{*} \left[ 1_{V} W_{t} \right],
$$

which by definition means

$$
\mathbb{E} \left[ 1_{V} W_{s} M_{s} \right] = \mathbb{E} \left[ 1_{V} W_{t} M_{t} \right].
$$

In other words, we need to show that  $Z_{t} = W_{t}M_{t}$  is a martingale with respect to  $\mathbb{P}$ . Since

$$
d W_{t} = - A_{t} d t + d B_{t}, \quad d M_{t} = A_{t} M_{t} d B_{t},
$$

the product rule gives

$$
d Z_{t} = W_{t} d M_{t} + M_{t} d W_{t} + d \langle W, M \rangle_{t} = (A_{t} W_{t} + 1) M_{t} d B_{t},
$$

which shows that  $Z_{t}$  is a local martingale. Also, since  $|W_{t}| \leq |B_{t}| + tK$  we see that

$$
\int_{0}^{t} \mathbb{E} [ (A_{s} W_{s} + 1)^{2} M_{s}^{2} ] d s <   \infty ,
$$

and hence  $Z_{t}$  is a square-integrable martingale.

For more general  $A_{t}, M_{t}$  we use localization with the stopping times  $T_{n}$  as above. Note that

$$
\mathbb{E} [ M_{t} ] \geq \lim_{n \to \infty} \mathbb{E} \left[ M_{t} 1 \{T_{n} > t \} \right] = \lim_{n \to \infty} \mathbb{P}^{*} \{T_{n} > t \} = \mathbb{P}^{*} \{T > t \},
$$

and hence if  $\mathbb{P}^*\{T > t\} = 1$ , then  $\mathbb{E}[M_t] = 1$  and  $M_s, 0 \leq s \leq t$  is a martingale.

We will now show that the Novikov condition (5.10) implies that  $M$  is a martingale. For ease let  $t = 1$ . Let

$$
\tau_{r} = \inf  \{t: \langle Y \rangle_{t} = r \}.
$$

The process

$$
X_{r} = \int_{0}^{\tau_{r}} A_{s} d W_{s}
$$

is a standard Brownian motion with respect to the measure  $\mathbb{P}^*$ . Also,

$$
Y_{r} = X_{r} + \frac{1}{2} \int_{0}^{\tau_{r}} A_{s} d s = X_{r} + \frac{r}{2}.
$$

In particular,

$$
\max_{0 \leq s \leq \tau_{r}} M_{s} = \max_{0 \leq t \leq r} \exp \left\{X_{t} + \frac{t}{2} \right\}.
$$

In other words,  $T = \lim T_{n}$  can be defined as

$$
T = \sup  \{t: \langle Y \rangle_{t} <   \infty \}.
$$

Let  $V$  denote the event that  $\tau_r \leq 1$  for all  $r < \infty$ . We need to show that  $\mathbb{P}^*(V) = 0$ .

Let

$$
\rho_{n} = \min  \left\{m \geq n: X_{m} \leq 0 \right\}.
$$

Since  $X_{m}$  is a  $\mathbb{P}^*$ -local martingale, for each  $n$ ,  $\mathbb{P}^*[V \cap \{\rho_n < \infty\}] = \mathbb{P}^*(V)$ . Also,

$$
M_{\rho_{n}} = \exp \left\{Y_{\rho_{n}} \right\} \leq e^{\rho_{n} / 2}.
$$

Let us fix  $n$ , let  $\rho = \rho_{n}$ , and note that

$$
\begin{array}{l} \mathbb{P}^{*} (V) \leq \sum_{m = n}^{\infty} \mathbb{E} \left[ M_{m} 1 \{\rho = m \} \right] \leq \sum_{m = n}^{\infty} e^{m / 2} \mathbb{P} \{\rho = m \} \\ \leq \mathbb{E} \left[ e^{\langle Y \rangle_{1} / 2} 1 \{\rho = m \} \right]. \\ \end{array}
$$

We therefore, get

$$
\mathbb{P}^{*} (V) \leq \mathbb{E} \left[ e^{\langle Y \rangle_{1} / 2} 1 \{\tau_{r} <   1 \} \right].
$$

The events  $\{\tau_r\leq 1\}$  shrink to a  $\mathbb{P}$ -null set as  $r\to \infty$ . The condition (5.10) implies that  $e^{\langle Y\rangle_1 / 2}$  is integrable, and hence,

$$
\lim_{r \to \infty} \mathbb{E} \left[ e^{\langle Y \rangle_{1} / 2} 1 \{\tau_{r} \leq 1 \} \right] = 0.
$$

# 5.4 Black-Scholes formula

An arbitrage is a system that guarantees that a player (investor) will not lose money while also giving a positive probability of making money. If  $P$  and  $Q$  are equivalent probability measures, then an arbitrage under probability  $P$  is the same as an arbitrage under probability  $Q$ . This holds since for equivalent probability measures

$$
P (V) = 0 \quad \text{ifandonlyif} \quad Q (V) = 0,
$$

$$
P (V) > 0 \quad \text{ifandonlyif} \quad Q (V) > 0.
$$

This observation is the main tool for the pricing of options as we now show. We will consider a simple (European) call option for a stock whose price moves according to a geometric Brownian motion.

Suppose that the stock price  $S_{t}$  follows the geometric Brownian motion,

$$
d S_{t} = S_{t} \left[ m d t + \sigma d B_{t} \right], \tag {5.12}
$$

and there also exists a risk-free bound  $R_{t}$  satisfying

$$
d R_{t} = r R_{t} d t, \tag {5.13}
$$

that is,  $R_{t} = e^{rt}R_{0}$ . Let  $T$  be a time in the future and suppose we have the option to buy a share of stock at time  $T$  for strike price  $K$ . The value of this option at time  $T$  is

$$
F (S_{T}) = (S_{T} - K)_{+} = \left\{ \begin{array}{c l} (S_{T} - K) & \text{if} S_{T} > K, \\ 0 & \text{if} S_{T} \leq K. \end{array} \right.
$$

The goal is to find the price  $f(t,x)$  of the option at time  $t < T$  given  $S_{t} = x$ .

One possibility, which is not the Black-Scholes solution, is to price the option by the expected value (in time  $t$  dollars),

$$
\hat {f} (t, x) = \mathbb{E} \left[ e^{- r (T - t)} F (S_{T}) \mid S_{t} = x \right].
$$

In (4.7) we showed that this function satisfies the PDE

$$
\partial_{t} \hat {f} (t, x) = r \hat {f} (t, x) - m x \hat {f}^{\prime} (t, x) - \frac{\sigma^{2} x^{2}}{2} \hat {f}^{\prime \prime} (t, x). \tag {5.14}
$$

Here and throughout this section we use primes for  $x$ -derivatives. If one sells an option at this price and uses the money to buy a bond at the current interest rate, then there is a positive probability of losing money.

The Black-Scholes approach to pricing is to let  $f(t,x)$  be the value of a portfolio at time  $t$ , given that  $S_{t} = x$ , that can be hedged in order to guarantee a portfolio of value  $F(S_{T})$  at time  $T$ . By a portfolio, we mean an ordered pair  $(a_{t},b_{t})$  where  $a_{t}, b_{t}$  denote the number of units of stocks and bonds, respectively. Let  $V_{t}$  be the value of the portfolio at time  $t$ ,

$$
V_{t} = a_{t} S_{t} + b_{t} R_{t}. \tag {5.15}
$$

We will manage the portfolio by switching between stocks and bonds so that, no matter how the price of the stock moves, the value at time  $T$  will be

$$
V_{T} = \left(S_{T} - K\right)_{+}.
$$

We assume that the portfolio is self-financing, that is, one does not add outside resources to the portfolio. The mathematical consequence of this assumption is that the change of the value of the portfolio is given only by the change of the price of the assets,

$$
d V_{t} = a_{t} d S_{t} + b_{t} d R_{t}. \tag {5.16}
$$

It may appear at first that (5.16) is a consequence of (5.15). However, the units of the assets  $a_{t}, b_{t}$  vary with time and hence we need to use the product rule. If  $V_{t}$  is defined by (5.15), the product rule implies that

$$
d (a_{t} S_{t}) = a_{t} d S_{t} + S_{t} d a_{t} + d \langle a, S \rangle_{t},
$$

$$
d \left(b_{t} R_{t}\right) = b_{t} d R_{t} + R_{t} d b_{t}.
$$

Here we use the fact that  $R_{t}$  is differentiable in  $t$  to see that  $\langle b, R \rangle_{t} = 0$ . Hence, (5.16) is a strong assumption about the portfolio, and we will use it to determine the price and the hedging strategy.

If we assume (5.16) and plug in (5.12) and (5.13), we get

$$
\begin{array}{l} d V_{t} = a_{t} S_{t} [ m d t + \sigma d B_{t} ] + b_{t} r R_{t} d t \\ = a_{t} S_{t} [ m d t + \sigma d B_{t} ] + r [ V_{t} - a_{t} S_{t} ] d t \\ = \left[ m a_{t} S_{t} + r \left(V_{t} - a_{t} S_{t}\right) \right] d t + \sigma a_{t} S_{t} d B_{t}. \tag {5.17} \\ \end{array}
$$

Under our definition,  $V_{t} = f(t,S_{t})$ . Therefore, assuming  $f$  is sufficiently differentiable, Ito's formula shows that

$$
\begin{array}{l} d V_{t} = d f (t, S_{t}) \\ = \partial_{t} f (t, S_{t}) d t + f^{\prime} (t, S_{t}) d S_{t} + \frac{1}{2} f^{\prime \prime} (t, S_{t}) d \langle S \rangle_{t} \\ = \left[ \partial_{t} f (t, S_{t}) + m S_{t} f^{\prime} (t, S_{t}) + \frac{\sigma^{2} S_{t}^{2}}{2} f^{\prime \prime} (t, S_{t}) \right] d t \\ + \sigma S_{t} f^{\prime} (t, S_{t}) d B_{t}. \tag {5.18} \\ \end{array}
$$

By equating the  $dB_{t}$  terms in (5.17) and (5.18), we see that the portfolio is given by

$$
a_{t} = f^{\prime} \left(t, S_{t}\right), \quad b_{t} = \frac{V_{t} - a_{t} S_{t}}{R_{t}}, \tag {5.19}
$$

and then by equating the  $dt$  terms we get the Black-Scholes equation

$$
\partial_{t} f (t, x) = r f (t, x) - r x f^{\prime} (t, x) - \frac{\sigma^{2} x^{2}}{2} f^{\prime \prime} (t, x).
$$

There are two things to note about this equation.

- The drift term  $m$  does not appear. If we think about this, we realize why our assumptions should give us an equation independent of  $m$ . Our price was based on being able to hedge our portfolio so that with probability one the value at time  $T$  is  $(S_T - K)_+$ . Geometric Brownian motions with the same  $\sigma$  but different  $m$  are mutually absolutely continuous and hence have the same events of probability one.
- The equation is exactly the same as (5.14) except that  $m$  has been replaced with  $r$ . Therefore, we can write

$$
f (t, x) = \mathbb{E} \left[ e^{- r (T - t)} F (S_{t}) \mid S_{t} = x \right],
$$

where  $S$  satisfies

$$
d S_{t} = S_{t} \left[ r d t + \sigma d B_{t} \right].
$$

Using this, one can compute  $f(t,x)$  exactly; in the next section we do this and derive the Black-Scholes formula

$$
\begin{array}{l} f (T - t, x) = x \Phi \left(\frac{\log (x / K) + (r + \frac{\sigma^{2}}{2}) t}{\sigma \sqrt{t}}\right) \\ - K e^{- r t} \Phi \left(\frac{\log (x / K) + (r - \frac{\sigma^{2}}{2}) t}{\sigma \sqrt{t}}\right), \tag {5.20} \\ \end{array}
$$

where  $\Phi$  is the standard normal distribution function. If one knows  $r$  and  $\sigma$  (which from a practical perspective is a big assumption), one can just plug into this formula.

We can easily generalize this to the case where the stock price satisfies

$$
\begin{array}{l} d S_{t} = S_{t} \left[ m (t, S_{t}) d t + \sigma (t, S_{t}) d B_{t} \right], \\ d R_{t} = r (t, S_{t}) R_{t} d t. \\ \end{array}
$$

Under the assumption of a self-financing portfolio, we again get (5.17) and (5.18), and by equating coefficients we get the Black-Scholes equation

$$
\partial_{t} f (t, x) = r (t, x) f (t, x) - r (t, x) x f^{\prime} (t, x) - \frac{\sigma (t , x)^{2} x^{2}}{2} f^{\prime \prime} (t, x). \tag {5.21}
$$

As before, the drift term  $m(t,x)$  does not appear in the equation. The function  $f$  can be given by

$$
f (t, x) = \mathbb{E} \left[ \left(R_{t} / R_{T}\right) F (S_{T}) \mid S_{t} = x \right],
$$

where  $S_{t},R_{t}$  satisfy

$$
\begin{array}{l} d S_{t} = S_{t} \left[ r (t, S_{t}) d t + \sigma (t, S_{t}) d B_{t} \right], \\ d R_{t} = r (t, S_{t}) R_{t} d t. \\ \end{array}
$$

Mathematical justification of this arguments requires sufficient assumptions on  $m$  and  $\sigma$  such that the equation (5.21) has a solution. Finding explicit solutions to such equations is often impossible, but one can either solve the PDE numerically or do Monte Carlo simulations of the associated diffusion process  $S_{t}$ .

# 5.5 Martingale approach to Black-Scholes equation

We will give a different approach to deriving the Black-Scholes formula. Suppose for the moment that the risk-free bond has rate  $r(t,x)$  and that the volatility is given by  $\sigma (t,x)$ . If  $R_{t}$  denotes the value of the bond at time  $t$ , then

$$
d R_{t} = r (t, S_{t}) R_{t} d t, \quad R_{t} = R_{0} \exp \left\{\int_{0}^{t} r (s, S_{s}) d s \right\}.
$$

As explained in the previous section, if we want a strategy to hedge a portfolio so that its value is determined at time  $T$ , then the strategy must be independent of the drift coefficient  $m(t,x)$ . For this reason, we may assume that the stock price satisfies

$$
d S_{t} = S_{t} \left[ r (t, S_{t}) d t + \sigma (t, S_{t}) d B_{t} \right], \tag {5.22}
$$

and then the value of the portfolio at time  $t$  satisfies

$$
V_{t} = f (t, S_{t}) = E_{Q} \left[ \left(R_{t} / R_{T}\right) F (S_{T}) \mid S_{t} \right] = E_{Q} \left[ \left(R_{t} / R_{T}\right) F (S_{T}) \mid \mathcal{F}_{t} \right].
$$

We write  $\mathbb{E}_Q, E_Q$  to emphasize that the expectations are taken with respect to the measure under which  $S_t$  satisfies (5.22).

Let  $\tilde{S}_t = S_t / R_t$ ,  $\tilde{V}_t = V_t / R_t$  be the stock price and portfolio value, respectively, discounted by the bond rate. The product rule shows that  $\tilde{S}_t$  satisfies

$$
d \tilde {S}_{t} = \sigma (t, R_{t}) \tilde {S}_{t} d B_{t}.
$$

In other words (under some growth restrictions on  $\sigma$ , for example, if  $\sigma$  is uniformly bounded),  $\tilde{S}_t$  is a martingale. Also,

$$
\begin{array}{l} \tilde {V}_{t} = V_{t} / R_{t} = R_{t}^{- 1} E_{Q} \left(\left(R_{t} / R_{T}\right) F \left(S_{T}\right) \mid \mathcal{F}_{t}\right) \\ = E_{Q} \left(R_{T}^{- 1} F (S_{T}) \mid \mathcal{F}_{t}\right) = E_{Q} [ \bar {V}_{T} \mid \mathcal{F}_{t} ]. \\ \end{array}
$$

We have just demonstrated the following principle.

Theorem 5.5.1. Suppose  $S_{t}$  satisfies

$$
d S_{t} = S_{t} \left[ m (t, S_{t}) d t + \sigma (t, S_{t}) d B_{t} \right],
$$

# 5.5. MARTINGALE APPROACH TO BLACK-SCHOLES EQUATION167

and a risk-free bond  $R_{t}$  is available at rate  $r(t,S_t)$ ,

$$
d R_{t} = r (t, S_{t}) R_{t} d t.
$$

Suppose that the Brownian motion is defined on a probability space  $(\Omega, \mathcal{F}, \mathbb{P})$  and that there exists a probability measure  $Q$  that is mutually absolutely continuous with respect to  $\mathbb{P}$  such that under  $Q$ , the discounted stock price  $\tilde{S}_t = S_t / R_t$  is a martingale. Suppose there is an option at time  $T$  with value  $F(S_T)$  such that  $\mathbb{E}_Q[R_T^{-1}|F(S_T)] < \infty$ . Then the arbitrage-free price of the option at time  $t$  is

$$
V_{t} = R_{t} E_{Q} \left(R_{T}^{- 1} F \left(S_{T}\right) \mid \mathcal{F}_{t}\right). \tag {5.23}
$$

A nice thing about this formulation is that  $V_{T} = F(S_{T})$  follows directly from the formula. However, unlike the previous approach, we do not immediately get the expression for the portfolio needed to hedge the option.

Example 5.5.1. We will derive the Black-Scholes formula leaving some of the calculus calculations to Exercise 5.11. Suppose that  $r, \sigma$  are constants and  $F(S_{T}) = (S_{T} - K)_{+}$ . The discounted values are  $\tilde{S}_{t} = e^{-rt}S_{t}, \tilde{V}_{t} = e^{-rt}V_{t}$  and

$$
\tilde {V}_{T} = e^{- r T} F (S_{T}) = e^{- r T} (S_{T} - K)_{+} = (\tilde {S}_{T} - \tilde {K})_{+},
$$

where  $\tilde{K} = e^{-rT}K$ . Under the measure  $Q$ ,  $\tilde{S}_t$  satisfies

$$
d \tilde {S}_{t} = \sigma \tilde {S}_{t} d B_{t},
$$

which implies that

$$
\begin{array}{l} \tilde {S}_{T} = \tilde {S}_{t} \exp \left\{\int_{t}^{T} \sigma d B_{s} - \frac{1}{2} \int_{t}^{T} \sigma^{2} d s \right\} \\ = \tilde {S}_{t} \exp \left\{\sigma (B_{T} - B_{t}) - \frac{\sigma^{2} (T - t)}{2} \right\}. \\ \end{array}
$$

In other words, the conditional distribution of  $\tilde{S}_T$  given  $\tilde{S}_t$  is that of

$$
Z = \exp \left\{a N + y \right\},
$$

where  $a = \sigma \sqrt{T - t}$ ,  $N$  is a standard normal random variable, and

$$
y = \log \tilde {S}_{t} - \frac{a^{2}}{2}.
$$

Straightforward calculus shows that  $Z$  has a density

$$
g (z) = \frac{1}{a z} \phi \left(\frac{- y + \log z}{a}\right),
$$

where  $\phi$  is the standard normal density, and hence

$$
\tilde {V}_{t} = \int_{\tilde {K}}^{\infty} (z - \tilde {K}) g (z) d z.
$$

Another computation gives

$$
\tilde {V}_{t} = \tilde {S}_{t} \Phi \left(\frac{\log (\tilde {S}_{t} / \tilde {K}) + \frac{a^{2}}{2}}{a}\right) - \tilde {K} \Phi \left(\frac{\log (\tilde {S}_{t} / \tilde {K}) - \frac{a^{2}}{2}}{a}\right),
$$

which implies that

$$
\begin{array}{l} V_{t} = e^{r t} \tilde {V}_{t} = S_{t} \Phi \left(\frac{\log (S_{t} / K) + r s + \frac{a^{2}}{2}}{a}\right) \\ - e^{- r s} K \Phi \left(\frac{\log (S_{t} / K) + r s - \frac{a^{2}}{2}}{a}\right), \\ \end{array}
$$

where  $s = T - t$ . Plugging in  $a = \sigma \sqrt{s}$  gives (5.20).

One of the hypotheses in Theorem 5.5.1 is that if  $S_{t}$  satisfies

$$
d S_{t} = S_{t} \left[ m (t, S_{t}) d t + \sigma (t, S_{t}) d B_{t} \right],
$$

then there exists a probability measure  $Q$  under which

$$
d S_{t} = S_{t} \left[ r (t, S_{t}) d t + \sigma (t, S_{t}) d W_{t} \right], \tag {5.24}
$$

where  $W_{t}$  is a  $Q$ -Brownian motion. Indeed, if  $S_{t}$  satisfies (5.24), then the discounted price  $\tilde{S}_{t} = S_{t} / R_{t}$  satisfies

$$
d \tilde {S}_{t} = \tilde {S}_{t} \sigma (t, S_{t}) d W_{t} = \tilde {S}_{t} \sigma (t, R_{t} \tilde {S}_{t}) d W_{t}. \tag {5.25}
$$

The Girsanov theorem tells us that the way to obtain  $Q$  is to tilt by the local martingale  $M_t$  where

$$
d M_{t} = M_{t} \frac{r (t , S_{t}) - m (t , S_{t})}{\sigma (t , S_{t})} d B_{t},
$$

for then in the measure  $Q$

$$
d B_{t} = \frac{r (t , S_{t}) - m (t , S_{t})}{\sigma (t , S_{t})} d t + d W_{t}.
$$

In order for the theorem to hold, we need that  $M_t$  is actually a martingale and that  $\tilde{S}_t$  as given in (5.25) is a martingale. While one can give general conditions when this is true, it is often just as easy to check this in each case. If  $|r - m| / \sigma$  is uniformly bounded, these conditions are satisfied.

# 5.6 Martingale approach to pricing

We generalize the discussion in the previous section to the pricing of claims that are functions of the entire history of the prices of an asset. Suppose  $S_{t}$  denotes the price of an asset satisfying

$$
d S_{t} = S_{t} \left[ m_{t} d t + \sigma_{t} d B_{t} \right] \tag {5.26}
$$

where  $B_{t}$  is a standard Brownian motion. Let  $\mathcal{F}_t$  denote the information in  $\{B_s:0\leq s\leq t\}$ , and as usual we assume that  $m_t,\sigma_t$  are processes adapted to the filtration  $\{\mathcal{F}_t\}$ . We also assume that there is a risk-free bond  $R_{t}$  satisfying

$$
d R_{t} = r_{t} R_{t} d t, \quad R_{t} = R_{0} \exp \left\{\int_{0}^{t} r_{s} d s \right\},
$$

where  $r_t$  is also adapted.

Let  $T$  be a fixed future time and assume that  $V$  is an  $\mathcal{F}_T$ -measurable random variable. We call  $V$  a claim (at time  $T$ ). The examples we have seen are of the form  $V = F(S_T)$ , but other examples are

$$
V = \max_{0 \leq t \leq T} S_{t}, V = \frac{1}{T} \int_{0}^{T} S_{t} d t.
$$

We will start with the following definition.

Definition, first try If  $V$  is a claim at time  $T$ , then the (arbitrage-free) price  $V_{t}, 0 \leq t \leq T$ , of a claim  $V_{T}$  is the minimum value of a self-financing portfolio that can be hedged to guarantee that its value at time  $T$  is  $V$ .

# 170CHAPTER 5. CHANGE OF MEASURE AND GIRSANOV THEOREM

Our goal is to determine the price  $V_{t}$  and the corresponding portfolio  $(a_{t}, b_{t})$ , where  $a_{t}$  denotes the number of units of  $S$  and  $b_{t}$  the number of units of  $R$ . This will require some mathematical assumptions that we will make as we need them. Recall that

$$
V_{t} = a_{t} S_{t} + b_{t} R_{t},
$$

and  $(a_{t},b_{t})$  is self-financing if

$$
d V_{t} = a_{t} d S_{t} + b_{t} d R_{t}.
$$

We will start by giving two bad, but unrealistic, examples that show that we need to take some care. The two examples are similar. In the first example, we allow the stock price to fluctuate too much. In the second, we choose a very risky portfolio similar to the martingale betting strategy.

Example 5.6.1. Suppose for ease that  $r_t \equiv 0$  and  $R_0 = 1$  so that  $R_t \equiv 1$ . Let  $S_t = e^{Z_t}$  where  $Z_t$  is the "martingale betting strategy revisited" in Example 4.1.1. We recall that  $Z_t$  satisfies

$$
d Z_{t} = A_{t}   d B_{t}, \quad Z_{0} = 0,
$$

and the "bets"  $A_{t}$  are chosen so that with probability one  $Z_{1} \geq 1$ . Ito's formula shows that  $S_{t}$  satisfies

$$
d S_{t} = S_{t} \left[ \frac{A_{t}^{2}}{2} d t + A_{t} d B_{t} \right].
$$

We cannot find an equivalent measure such that  $S_{t}$  is a martingale. Indeed, we know that with probability one  $S_{1} > S_{0}$ , and hence this fact must be true in any equivalent measure.

Example 5.6.2. Suppose that  $R_{t} \equiv 1$  and  $S_{t} = e^{B_{t} - (t / 2)}$  which satisfies

$$
d S_{t} = S_{t} d B_{t}, \quad S_{0} = 1.
$$

Let  $A_{t}$  be as in Example 5.6.1, and choose a portfolio with  $a_{t} = A_{t} / S_{t}$ . The value of the portfolio is  $V_{t} = a_{t}S_{t} + b_{t}R_{t} = A_{t} + b_{t}$ . If the portfolio is to be self-financing, we need that

$$
d V_{t} = a_{t} d S_{t} + b_{t} d R_{t} = \frac{A_{t}}{S_{t}} S_{t} d B_{t} = A_{t} d B_{t}.
$$

We choose  $b_{t}$  so that this holds (this may require choosing  $b_{t}$  to be negative). Since  $V_{0} = 1$ , we see that  $V_{t} = 1 + Z_{t}$  where  $Z_{t}$  is as in Example 5.6.1. In particular,  $V_{1} = 2$ , and this portfolio hedges the claim  $V \equiv 2$  at time  $T = 1$ . Similarly for any constant  $J$ , we can find  $A_{t}$  such that with probability one  $Z_{t} \geq J$ . Hence given any  $V_{0}$  (even negative values), we can find a portfolio that hedges the claim  $V \equiv 2$ . One disadvantage of these portfolios, however, is that they allow the value at times  $0 < t < 1$  to be negative. It will turn out that we can eliminate examples like this by restricting to portfolios whose value at all times is nonnegative.

With the bad examples in mind, we now proceed to develop the theory. To start, we will consider discounted prices. Let

$$
\tilde {S}_{t} = \left(R_{0} / R_{t}\right) S_{t}, \quad \tilde {V}_{t} = \left(R_{0} / R_{t}\right) V_{t}
$$

denote the discounted stock price and discounted value, respectively. The portfolio  $(a_{t}, b_{t})$  is the same whether or not we are using discounted units and the discounted value  $\tilde{V}_{t}$  is given by

$$
\tilde {V}_{t} = a_{t} \tilde {S}_{t} + b_{t} R_{0}.
$$

(Note that the "discounted bond value" is  $R_0$ .) Using the product formula, we see that

$$
d \tilde {S}_{t} = \tilde {S}_{t} \left[ (m_{t} - r_{t}) d t + \sigma_{t} d B_{t} \right].
$$

Our goal is to find a self-financing portfolio  $(a_{t},b_{t})$  such that with probability one

$$
\tilde {V}_{T} = a_{T} \tilde {S}_{T} + b_{T} R_{0} = \tilde {V}.
$$

Since this must happen with probability one, we may consider a mutually absolutely continuous measure. We let  $Q$  be the probability measure (if it exists) that is mutually absolutely continuous with respect to  $\mathbb{P}$  such that under  $Q$  the discounted stock price is a martingale. Recalling (5.11), we can see that the Girsanov theorem tells us to choose

$$
d Q = M_{t} d \mathbb{P},
$$

where  $M_{t}$  satisfies

$$
d M_{t} = \frac{r_{t} - m_{t}}{\sigma_{t}} M_{t} d B_{t}, \quad M_{0} = 1. \tag {5.27}
$$

# 172CHAPTER 5. CHANGE OF MEASURE AND GIRSANOV THEOREM

The solution to this last equation is a local martingale, but it not necessarily a martingale. If it is not a martingale, then some undesirable conclusions may result as in our examples above. Our first assumption will be that it is a martingale.

- Assumption 1. The local martingale defined in (5.27) is actually a martingale.

This assumption implies that  $Q$  is mutually absolutely continuous with respect to  $\mathbb{P}$ . Theorem 5.3.2 gives a number of ways to establish  $Q \ll \mathbb{P}$ . If  $Q \ll \mathbb{P}$ , then we also get  $\mathbb{P} \ll Q$  if  $\mathbb{P}\{M_t > 0\} = 1$ . Let

$$
W_{t} = B_{t} - \int_{0}^{t} \frac{r_{s} - m_{s}}{\sigma_{s}} d s,
$$

which is a Brownian motion with respect to  $Q$ . Plugging in we see that

$$
d \tilde {S}_{t} = \sigma_{t} \tilde {S}_{t} d W_{t}. \tag {5.28}
$$

This shows that  $\tilde{S}_t$  is a local martingale with respect to  $Q$ . We will want this to be a martingale, and we make this assumption.

- Assumption 2. The  $Q$ -local martingale  $\tilde{S}_t$  satisfying (5.28) is actually a  $Q$ -martingale.

Again, Theorem 5.3.2 gives some sufficient conditions for establishing that the solution to (5.28) is a  $Q$ -martingale. We write  $\mathbb{E}_Q$  and  $E_{Q}$  for expectations (regular and conditional) with respect to  $Q$ .

Definition A claim  $V$  at time  $T$  is called a contingent claim if  $V \geq 0$  and

$$
\mathbb{E}_{Q} \left[ \tilde {V}^{2} \right] <   \infty .
$$

The (arbitrage-free) price  $V_{t}, 0 \leq t \leq T$ , of a contingent claim  $V_{T}$  is the minimum value of a self-financing portfolio that can be hedged to guarantee that its value never drops below zero and at time  $T$  equals  $V$ .

Given a contingent claim, we can set

$$
\tilde {V}_{t} = E_{Q} \left[ \tilde {V} \mid \mathcal{F}_{t} \right].
$$

This is a square integrable martingale and  $\tilde{V}_T = \tilde{V}$ . We would like to find a portfolio  $(a_t, b_t)$  satisfying

$$
V_{t} = a_{t} S_{t} + b_{t} R_{t},
$$

that is self-financing,

$$
d V_{t} = a_{t} d S_{t} + b_{t} d R_{t}.
$$

Recall that if  $A_{t}$  is an adapted process with

$$
\int_{0}^{t} \mathbb{E}_{Q} [ A_{s}^{2} ] d s <   \infty ,
$$

then

$$
Z_{t} = \int_{0}^{t} A_{s} d W_{s}
$$

is a square integrable martingale. Let us assume for the moment that there exists such a process  $A_{s}$  such that

$$
\tilde {V}_{t} = \tilde {V}_{0} + \int_{0}^{t} A_{s} d W_{s},
$$

that is

$$
d \tilde {V}_{t} = A_{t} d W_{t}. \tag {5.29}
$$

We compute,

$$
\begin{array}{l} d V_{t} = R_{t} d \tilde {V}_{t} + \tilde {V}_{t} d R_{t} \\ = R_{t} A_{t} d W_{t} + \tilde {V}_{t} d R_{t} \\ = \frac{A_{t}}{\sigma_{t} \tilde {S}_{t}} R_{t} d \tilde {S}_{t} + \tilde {V}_{t} d R_{t} \\ = \frac{A_{t}}{\sigma_{t} \tilde {S}_{t}} \left[ d S_{t} - \tilde {S}_{t} d R_{t} \right] + \tilde {V}_{t} d R_{t} \\ = \frac{A_{t}}{\sigma_{t} \tilde {S}_{t}} d S_{t} + \left[ \tilde {V}_{t} - \frac{A_{t}}{\sigma_{t}} \right] d R_{t}. \\ \end{array}
$$

Therefore, if

$$
a_{t} = \frac{A_{t}}{\sigma_{t} \tilde {S}_{t}}, b_{t} = \tilde {V}_{t} - \frac{A_{t}}{\sigma_{t}}, (5. 30)
$$

the portfolio is self-financing and

$$
a_{t} S_{t} + b_{t} R_{t} = \frac{A_{t}}{\sigma_{t} \tilde {S}_{t}} \tilde {S}_{t} R_{t} + \left[ \tilde {V}_{t} - \frac{A_{t}}{\sigma_{t}} \right] R_{t} = R_{t} \tilde {V}_{t} = V_{t}.
$$

Along the way we made the assumption that we could write  $V_{t}$  as (5.29). It turns out, as we discuss in the next section, that this can always be done although we cannot guarantee that the process  $A_{t}$  is continuous or piecewise continuous. Knowing existence of the process is not very useful if one cannot find  $A_{t}$ . For now we just write as an assumption that the computations work out.

- Assumption 3. We can write  $\tilde{V}_t$  as (5.29), and if we define  $a_t, b_t$  as in (5.30), then the stochastic integral

$$
V_{t} = \int_{0}^{t} a_{s} d S_{s} + \int_{0}^{t} b_{s} d R_{s},
$$

is well defined.

Theorem 5.6.1. If  $V$  is a contingent claim and assumptions 1-3 hold, then the arbitrage-free price is

$$
V_{t} = R_{t} E_{Q} (\tilde {V}_{T} \mid \mathcal{F}_{t}).
$$

We have done most of the work in proving this theorem. What remains is to show that if  $(a_t^*, b_t^*)$  is a self-financing strategy with value

$$
V_{t}^{*} = a_{t}^{*} S_{t} + b_{t}^{*} R_{t},
$$

such that with probability one,  $V_{t}^{*} \geq 0$  for all  $t$  and  $V_{T}^{*} \geq V$ , then for all  $t$ , with probability one  $V_{t}^{*} \geq V_{t}$ . When we say "with probability one" this can be with respect to either  $\mathbb{P}$  or  $Q$  since one of our assumptions is that the two measures are mutually absolutely continuous. Let  $\tilde{V}_{t}^{*} = V_{t}^{*} / R_{t}$  be the discounted values. The product rule gives

$$
d V_{t}^{*} = d (R_{t} \tilde {V}_{t}^{*}) = R_{t} d \tilde {V}_{t}^{*} + \tilde {V}_{t}^{*} d R_{t} = R_{t} d \tilde {V}_{t}^{*} + [ a_{t}^{*} \tilde {S}_{t} + b_{t}^{*} ] d R_{t},
$$

and the self-financing assumptions implies that

$$
d V_{t}^{*} = a_{t}^{*} d S_{t} + b_{t}^{*} d R_{t} = a_{t}^{*} \left[ R_{t} d \tilde {S}_{t} + \tilde {S}_{t} d R_{t} \right] + b_{t}^{*} d R_{t}.
$$

By equating coefficients, we see that

$$
d \tilde {V}_{t}^{*} = a_{t}^{*} d \tilde {S}_{t} = a_{t}^{*} \sigma_{t} \tilde {S}_{t} d W_{t}.
$$

In particular,  $\tilde{V}_t^*$  is a nonnegative local martingale. We have seen that this implies that  $\tilde{V}_t^*$  is a supermartingale and

$$
E_{Q} \left[ \tilde {V}_{T}^{*} \mid \mathcal{F}_{t} \right] \leq \tilde {V}_{t}^{*}.
$$

If  $V\leq \tilde{V}_T^*$  , then

$$
E_{Q} \left[ \tilde {V}_{T}^{*} \mid \mathcal{F}_{t} \right] \geq E_{Q} \left[ V \mid \mathcal{F}_{t} \right] = V_{t}.
$$

Example 5.6.3. We will give another derivation of the Black-Scholes equation. Assume that the stock price is a diffusion satisfying

$$
d S_{t} = S_{t} \left[ m (t, S_{t}) d t + \sigma (t, S_{t}) d B_{t} \right],
$$

and the bond rate satisfies

$$
d R_{t} = r (t, S_{t}) R_{t} d t.
$$

The product rule implies that the discounted stock price satisfies

$$
d \tilde {S}_{t} = \tilde {S}_{t} \left[ (m (t, S_{t}) - r (t, S_{t})) d t + \sigma (t, S_{t}) d B_{t} \right].
$$

If  $V$  is a claim of the form  $V = F(S_{T})$ , let  $\phi$  be the function

$$
\phi (t, x) = E_{Q} \left[ \left(R_{t} / R_{T}\right) V \mid S_{t} = x \right],
$$

and note that

$$
V_{t} = R_{t} \tilde {V}_{t} = R_{t} E_{Q} \left[ R_{T}^{- 1} V \mid \mathcal{F}_{t} \right] = \phi (t, S_{t}).
$$

Assuming sufficient smoothness, Ito's formula gives

$$
d \phi (t, S_{t}) = \partial_{t} \phi (t, S_{t}) d t + \phi^{\prime} (t, S_{t}) d S_{t} + \frac{1}{2} \phi^{\prime \prime} (t, S_{t}) d \langle S \rangle_{t}.
$$

Recalling that

$$
d S_{t} = S_{t} \left[ r (t, S_{t}) d t + \sigma (t, S_{t}) d W_{t} \right],
$$

we see that

$$
d \tilde {V}_{t} = d [ R_{t}^{- 1} \phi (t, S_{t}) ] = J_{t} d t + A_{t} d W_{t},
$$

where

$$
\begin{array}{l} J_{t} = R_{t}^{- 1} \left[ \partial_{t} \phi (t, S_{t}) + \frac{\sigma (t , S_{t})^{2} S_{t}^{2}}{2} \phi^{\prime \prime} (t, S_{t}) \right. \\ \left. \left. + r (t, S_{t}) S_{t} \phi^{\prime} (t, S_{t}) - r (t, S_{t}) \phi (t, S_{t}) \right], \right. \\ \end{array}
$$

$$
A_{t} = R_{t}^{- 1} S_{t} \sigma (t, S_{t}) \phi^{\prime} (t, S_{t}) = \tilde {S}_{t} \sigma (t, S_{t}) \phi^{\prime} (t, S_{t}).
$$

Since  $\tilde{V}_t$  is a  $Q$ -martingale,  $J_{t} = 0$ , giving the Black-Scholes PDE again, and  $d\tilde{V}_t = A_t dW_t$ . Plugging into (5.30), we recover the hedging portfolio,

$$
\begin{array}{l} a_{t} = \frac{A_{t}}{\sigma (t , S_{t}) \tilde {S}_{t}} = \phi^{\prime} (t, S_{t}), \\ b_{t} = \tilde {V}_{t} - \frac{A_{t}}{\sigma (t , S_{t})} = R_{t}^{- 1} [ V_{t} - S_{t} \phi^{\prime} (t, S_{t}) ]. \\ \end{array}
$$

This can be compared to (5.19).

Example 5.6.4. Suppose  $S_{t}$  is a geometric Brownian motion

$$
d S_{t} = S_{t} \left[ m d t + \sigma d B_{t} \right],
$$

and the bond rate is constant  $r$ . Suppose that the claim is the average stock price over the interval  $[0, T]$ ,

$$
V = \frac{1}{T} \int_{0}^{T} S_{t} d t.
$$

In the new measure  $Q$ , the discounted stock price  $\tilde{S}_t = e^{-rt} S_t$  satisfies

$$
d \tilde {S}_{t} = \sigma \tilde {S}_{t} d W_{t},
$$

where  $W_{t}$  is a  $Q$ -Brownian motion. The discounted value is

$$
\tilde {V}_{t} = E_{Q} \left[ \frac{e^{- r T}}{T} \int_{0}^{T} S_{s} d s \mid \mathcal{F}_{t} \right].
$$

Since  $\int_0^t S_sds$  is  $\mathcal{F}_t$ -measurable, we get

$$
\begin{array}{l} T e^{r T} \tilde {V}_{t} = \int_{0}^{t} S_{s} d s + E_{Q} \left[ \int_{t}^{T} S_{s} d s \mid \mathcal{F}_{t} \right] \\ = \int_{0}^{t} S_{s} d s + \int_{t}^{T} E_{Q} \left[ S_{s} \mid \mathcal{F}_{t} \right] d s. \\ \end{array}
$$

The second equality uses a form of Fubini's theorem that follows from the linearity of conditional expectation. Since  $\tilde{S}_s$  is a  $Q$ -martingale, if  $s > t$ ,

$$
E_{Q} \left[ S_{s} \mid \mathcal{F}_{t} \right] = e^{r s} E_{Q} \left[ \tilde {S}_{s} \mid \mathcal{F}_{t} \right] = e^{r s} \tilde {S}_{t} = e^{r (s - t)} S_{t}.
$$

Therefore,

$$
\int_{t}^{T} E_{Q} \left[ S_{s} \mid \mathcal{F}_{t} \right] d s = S_{t} \int_{t}^{T} e^{r (s - t)} d s = \frac{e^{r (T - t)} - 1}{r} S_{t},
$$

and

$$
\begin{array}{l} \tilde {V}_{t} = \frac{e^{- r T}}{T} \int_{0}^{t} S_{s} d s + \frac{e^{- r t} - e^{- r T}}{r T} S_{t} \\ = \frac{e^{- r T}}{T} \int_{0}^{t} S_{s} d s + \frac{1 - e^{- r (T - t)}}{r T} \tilde {S}_{t}, \tag {5.31} \\ \end{array}
$$

$$
V_{t} = e^{r t} \tilde {V}_{t} = \frac{e^{- r (T - t)}}{T} \int_{0}^{t} S_{s} d s + \frac{1 - e^{- r (T - t)}}{r T} S_{t}.
$$

Note that  $V_{T} = V$  which we needed, and the price at time 0 is

$$
V_{0} = \frac{1 - e^{- r T}}{r T} S_{0}.
$$

The hedging portfolio can be worked out with a little thought. We will start with all the money in stocks and as time progresses we move money into bonds. Suppose that during time interval  $[t, t + \Delta t]$  we convert  $u\Delta t$  units of stock into bonds. Then the value of these units of bonds at time  $T$  will be about  $ue^{r(T - t)}S_t\Delta t$ . If we choose  $u = e^{r(t - T)} / T$ , then the value will be about  $S_t\Delta t / T$  and hence the value of all our bonds will be about  $\frac{1}{T}\int_0^T S_sds$ . This gives us

$$
\frac{d a_{t}}{d t} = - \frac{e^{r (t - T)}}{T}
$$

and using the terminal condition  $a_{T} = 0$ , we get

$$
a_{t} = \frac{1 - e^{r (t - T)}}{r T}. \tag {5.32}
$$

This is a special case where the hedging strategy does not depend on the current stock price  $S_{t}$ . If we want to use the formula we derived, we use (5.31) to give

$$
d \tilde {V}_{t} = \frac{1 - e^{r (t - T)}}{r T} d \tilde {S}_{t} = \frac{1 - e^{r (t - T)}}{r T} \sigma \tilde {S}_{t} d W_{t}.
$$

Plugging this into (5.30) gives (5.32).

# 5.7 Martingale representation theorem

In the last section we assumed in (5.29) that a continuous martingale could be represented as a stochastic integral. In fact, this is always that case. Suppose  $B_{t}$  is a standard Brownian motion and  $\{\mathcal{F}_t\}$  is the filtration given by the Brownian motion. Suppose there is a claim  $V$  at time  $T$  and let

$$
V_{t} = \mathbb{E} [ V \mid \mathcal{F}_{t} ].
$$

Then there exists an adapted process  $A_{t}$  such that

$$
\mathbb{E} [ V \mid \mathcal{F}_{t} ] = \mathbb{E} [ V ] + \int_{0}^{t} A_{s} d B_{s}.
$$

In order to be precise, we need to allow a wider class of processes than those with continuous and piecewise continuous paths. We will not go into detailis here, but any allowable process can be approximated by continuous and piecewise continuous processes. From practical perspective, knowing that such an  $A_{s}$  exists is not so useful unless one can give it explicitly. In the examples we give the SDE for  $V_{s}$  explicitly.

This theorem states roughly that all of the randomness in the system is given by the Brownian motion  $B_{t}$  and the only way to get martingales with only this information is to vary the "betting strategy" on the Brownian motion. To illustrate this idea, we will derive the representation theorem in the easier case of random walk.

Suppose we have a binomial model with  $\Delta t = 1 / N$  and  $\Delta x = \sqrt{\Delta t} = 1 / \sqrt{N}$ . We have independent random variables

$$
X_{\Delta t}, X_{2 \Delta t}, \dots
$$

each with

$$
\mathbb{P} \left\{X_{k \Delta t} = \Delta x \right\} = \mathbb{P} \left\{X_{k \Delta t} = - \Delta x \right\} = \frac{1}{2}.
$$

Let  $\mathcal{F}_{k\Delta t}$  denote the information in  $\{X_{\Delta t}, X_{2\Delta t}, \ldots, X_{k\Delta t}\}$ , and assume that  $M_{k\Delta t}$  is a martingale with respect to  $\mathcal{F}_{k\Delta t}$ . The martingale property implies that

$$
E \left[ M_{(k + 1) \Delta t} \mid \mathcal{F}_{k \Delta t} \right] = M_{k \Delta t}. \tag {5.33}
$$

Since  $\{M_{(k + 1)\Delta t}\}$  is  $\mathcal{F}_{(k + 1)\Delta t}$ -measurable, its value depends on the values of

$$
X_{\Delta t}, X_{2 \Delta t}, \dots , X_{(k + 1) \Delta t}.
$$

When we take a conditional expectation with respect to  $\mathcal{F}_{k\Delta t}$  we are given the value of the vector

$$
\mathbf{X}_{k \Delta} = \left(X_{\Delta t}, X_{2 \Delta t}, \ldots , X_{k \Delta t}\right).
$$

Given a particular value of  $\mathbf{X}_{k\Delta t}$ , there are only two possible values for  $M_{(k + 1)\Delta t}$  corresponding to the values when  $X_{(k + 1)\Delta t} = \Delta x$  and  $X_{(k + 1)\Delta t} = -\Delta x$ , respectively. Let us denote the two values by

$$
[ b + a ] \Delta x, \quad [ b - a ] \Delta x,
$$

where  $b\Delta x$  is the average of the two values. The two numbers  $a, b$  depend on  $\mathbf{X}_{k\Delta t}$  and hence are  $\mathcal{F}_{k\Delta t}$ -measurable. The martingale property (5.33) tells us that

$$
b \Delta x = M_{k \Delta t},
$$

and hence

$$
M_{(k + 1) \Delta t} - M_{k \Delta t} = \pm a \Delta x = a X_{(k + 1) \Delta t}.
$$

If we write  $J_{(k + 1)\Delta t}$  for the number  $a$ , then  $J_{(k + 1)\Delta t}$  is  $\mathcal{F}_{k\Delta t}$ -measurable, and

$$
M_{k \Delta t} = M_{0} + \sum_{j = 1}^{k} J_{j \Delta t} X_{j \Delta t}.
$$

This is the form of the stochastic integral with respect to random walk as in Section 1.6.

# 5.8 Exercises

Exercise 5.1. For each of the following random variables  $X_{j}$  on  $\mathbb{R}$ , let  $\mu_{j}$  be the distribution considered as a probability measure on  $\mathbb{R}$ . For each pair state whether or not  $\mu_{j} \ll \mu_{k}$ . Since there are six random variables, there should be 30 answers.

$X_{1}$  normal mean 2, variance 7

$X_{2}$  binomial with parameters  $n = 7, p = .3$

$X_{3}$  Poisson with parameter 2

$$
X_{4} = e^{X_{1}}
$$

$X_{5}$  uniform on  $[0,1]$

$X_{6} = X_{1}X_{3} + X_{2}$  assuming  $X_{1},X_{2},X_{3}$  independent.

Exercise 5.2. Consider the martingale betting strategy from Chapter 1. Let  $W_{n}$  denote the winnings at time  $n$  and let

$$
M_{n} = 1 - W_{n},
$$

so that at each time  $n$ ,  $M_{n}$  equals 0 or  $2^{n}$ . Note that  $M_0 = 1$ . Let  $T = \min \{n:M_n = 0\}$ . Let  $\mathcal{F}_n$  be the information in  $M_0,M_1,\ldots ,M_n$ .

1. Explain why  $M_{n}$  is a nonnegative martingale.
2. Define a new probability measure  $Q_{n}$  by saying that for any event  $V$  that is  $\mathcal{F}_n$ -measurable,

$$
Q_{n} (V) = \mathbb{E} \left[ M_{n} 1_{V} \right].
$$

Show that if  $m < n$  and  $V$  is  $\mathcal{F}_m$ -measurable, then  $Q_{m}(V) = Q_{n}(V)$ .

3. Given the last part, we can write  $Q$  rather than just  $Q_{n}$ . Find the transition probability

$$
Q \left\{M_{n + 1} = 2^{n + 1} \mid M_{n} = 2^{n} \right\}.
$$

4. Find the  $Q$ -probability that  $T < \infty$ .
5. Is  $M_{n}$  a martingale with respect to the measure  $Q$ ?

Exercise 5.3. Suppose  $B_{t}$  is a standard Brownian motion on  $(\Omega, \mathbb{P})$ . For each of the following choices of  $X_{t}, 0 \leq t \leq 1$ , state whether there is an equivalent probability measure  $Q$  such that the  $X_{t}$  is a standard Brownian motion in the new measure. If the answer is yes, give  $dQ / dP$  at  $t = 1$ . In all cases assume that  $B_{0} = 0$ ,  $X_{0} = 0$ .

$$
\begin{array}{l} d X_{t} = 2 d t + d B_{t}, \\ d X_{t} = 2 d t + 6 d B_{t}, \\ d X_{t} = 2 B_{t} d t + d B_{t}. \\ \end{array}
$$

Exercise 5.4. Let  $B_{t}$  be a standard Brownian motion with  $B_{0} = 0$ . Let  $m > 0$  and let  $X_{t} = e^{-mB_{t}^{2}}$ .

1. Find a function  $g$  such that

$$
M_{t} := X_{t} \exp \left\{\int_{0}^{t} g (X_{s}) d s \right\}
$$

is a local martingale.

2. What SDE does  $M_t$  satisfy?  
3. Let  $Q$  be the probability measure obtained by tilting by  $M_t$ . Find the SDE for  $B_t$  in terms of a  $Q$ -Brownian motion.  
4. Explain why  $M_t$  is actually a martingale.

Exercise 5.5. Let  $B_{t}$  be a standard Brownian motion with  $B_{0} = 1$ . Let  $T = \min \{t : B_{t} = 0\}$ . Let  $r > 0$  and let  $X_{t} = B_{t}^{r}$ .

1. Find a function  $g$  such that

$$
M_{t} := X_{t} \exp \left\{\int_{0}^{t} g (X_{s}) d s \right\}
$$

is a local martingale for  $t < T$ . (Do not worry about what happens after time  $T$ .)

2. What SDE does  $M_t$  satisfy?  
3. Let  $Q$  be the probability measure obtained by tilting by  $M_t$ . Find the SDE for  $B_t$  in terms of a  $Q$ -Brownian motion.

# 182CHAPTER 5. CHANGE OF MEASURE AND GIRSANOV THEOREM

Exercise 5.6. Suppose  $a, m > 0$  and  $W_{t}$  is a Brownian motion with drift  $m$  and variance 1. Let

$$
T_{a} = \inf  \{t: W_{t} = a \}.
$$

Find the density of  $T_{a}$ . Hint: look at Examples 2.7.1 and 5.2.2.

Exercise 5.7. Suppose the price of a stock  $S_{t}$  follows a geometric Brownian motion

$$
d S_{t} = S_{t} \left[ 3 d t + d B_{t} \right],
$$

where  $B_{t}$  is a standard Brownian motion with respect to a measure  $\mathbb{P}$ . Suppose there is a risk-free bond with rate  $r = .05$ . Let  $Q$  be the measure, mutually absolutely continuous with respect to  $\mathbb{P}$ , under which the discounted stock price  $\tilde{S}_{t}$  is a martingale.

1. Give the SDE for  $\tilde{S}_t$  in terms of  $W_{t}$ , a standard Brownian motion with respect to  $Q$ .  
2. Suppose there is a claim at time  $T = 2$  of  $V = S_2^2$ . Is this a contingent claim?  
3. Find the discounted value  $\hat{V}_t$  of the claim for  $0 \leq t \leq 2$ .  
4. Give the SDE for  $\tilde{V}_t$  in terms of the Brownian motion  $W$ .  
5. Find the portfolio  $(a_{t},b_{t})$  that hedges the claim.  
6. Find the value  $V_{t}$ .

Exercise 5.8. Repeat Exercise 5.7 with  $V = S_2^3$ .

Exercise 5.9. Repeat Exercise 5.7 with claim

$$
V = \int_{0}^{2} s S_{s} d s.
$$

Exercise 5.10. Repeat Exercise 5.7 with claim

$$
V = \int_{0}^{2} S_{s}^{2} d s.
$$

Exercise 5.11. Here we do the calculus needed to finish the derivation of the Black-Scholes formula in Example 5.5.1.

# 5.8. EXERCISES

1. Show that if  $N$  has a standard normal distribution and  $a \neq 0, y$  are constants, then the density of  $Z = \exp \{aN + y\}$  is

$$
g (z) = \frac{1}{a z} \phi \left(\frac{- y + \log z}{a}\right),
$$

where  $\phi$  denotes the density of  $N$ .

2. Show that for all  $x$ ,

$$
\int_{x}^{\infty} (z - x) g (z) d z = e^{y + (a^{2} / 2)} \Phi \left(\frac{y - \log x + a^{2}}{a}\right) - x \Phi \left(\frac{y - \log x}{a}\right).
$$

3. Use these calculations to check the details of Example 5.5.1.

184CHAPTER 5. CHANGE OF MEASURE AND GIRSANOV THEOREM

# Chapter 6

# Jump processes

# 6.1 Lévy processes

The assumptions that led to Brownian motion were:

- Independent increments  
- Stationary increments  
- Continuous paths.

If we want to consider more general processes, we need to give up at least one of these assumptions. In this chapter we will not assume continuity of paths.

Definition A stochastic process  $X_{t}$  is called a Lévy process if it has independent, stationary increments. That is to say, for every  $s, t > 0$ , the random variable  $X_{s + t} - X_{s}$  is independent of  $\{X_{r} : r \leq s\}$  and has the same distribution as  $X_{t} - X_{0}$ .

Brownian motion is the only Lévy process with continuous paths. We have already discussed one example of a Lévy process with discontinuous paths, the Poisson process, and we will describe it in more detail in Section 6.2. Let us give two examples that can be derived from Brownian motion.

Example 6.1.1. Suppose  $B_{t}$  is a standard Brownian motion and  $T_{s} = \inf \{t : B_{t} = s\}$ . Using the strong Markov property, we can see that  $T_{s}, s \geq 0$  has i.i.d. increments. Therefore it is a Lévy process. Note that it is increasing,

that is, with probability one if  $r < s$ , then  $T_r < T_s$ . We calculated the density of  $T_s$  in Example 2.7.1,

$$
f_{s} (t) = \frac{s}{t^{3 / 2} \sqrt{2 \pi}} e^{- \frac{s^{2}}{2 t}}, 0 <   t <   \infty .
$$

In particular, the distribution of  $T_{s}$  is not normal. We claim that (with probability one) the function  $s \mapsto T_{s}$  is not continuous. To see this, let  $M = \max_{0 \leq t \leq 1} B_{t}$  and let  $s_{0} \in (0,1)$  be a time  $t$  with  $B_{t} = M$ . Then by definition of  $M, T_{s}$  we see that  $T_{M} \leq s_{0}$ , but  $T_{s} > 1$  for  $s > M$ , showing that  $T$  is not continuous at  $s_{0}$ . The scaling property of Brownian motion implies that  $T_{s}$  has the same distribution as  $s^{2}T_{1}$ . A tricky calculation which we omit computes the characteristic function

$$
\mathbb{E} [ e^{i (r / s^{2}) T_{s}} ] = \mathbb{E} [ e^{i r T_{1}} ] = \int_{- \infty}^{\infty} e^{i r t} f_{1} (t) d t = e^{\Psi (r)},
$$

where

$$
\Psi (r) = \left\{ \begin{array}{l l} | 2 r |^{1 / 2} (1 - i) & \text{if} r \geq 0 \\ | 2 r |^{1 / 2} (1 + i) & \text{if} r \leq 0 \end{array} \right..
$$

Example 6.1.2. Let  $B_{t} = (B_{t}^{1}, B_{t}^{2})$  be a standard two-dimensional Brownian motion. Let

$$
T_{s} = \inf \{t: B_{t}^{1} = s \},
$$

and

$$
X_{s} = B^{2} (T_{s}).
$$

Using the strong Markov property, one can show that the increments are i.i.d. and similarly to Example 6.1.1 that the paths as discontinuous. The scaling property of Brownian motion implies that  $X_{s}$  has the same distribution as  $sX_{1}$ . The density of  $X_{1}$  turns out to be Cauchy,

$$
f (x) = \frac{1}{\pi (x^{2} + 1)}, - \infty <   x <   \infty ,
$$

with characteristic function

$$
\mathbb{E} \left[ e^{i r X_{t}} \right] = \int_{- \infty}^{\infty} e^{i r x} f (x) d x = e^{- | r |}.
$$

Not every distribution can arise as the distribution of the increments of a Lévy process. Indeed, suppose that  $X_{t}$  is a Lévy process. Then we can write

$$
X_{1} = \sum_{j = 1}^{n} Y_{j, n}, \quad \text{where} Y_{j, n} = X \left(\frac{j}{n}\right) - X \left(\frac{j - 1}{n}\right).
$$

Definition A random variable  $X$  has an infinitely divisible distribution if for each  $n$  we can find independent, identically distributed random variables  $Y_{1,n},\ldots ,Y_{n,n}$  such that  $X$  has the same distribution as

$$
Y_{1, n} + \dots + Y_{n, n}.
$$

We just noted that if  $X_{t}$  is a Lévy process, then  $X_{1}$  (and, in fact,  $X_{t}$  for each  $t$ ) has an infinitely divisible distribution. The converse is true and it not too difficult to show. If  $F$  is the distribution function of an infinitely divisible distribution, then there is a Lévy process  $X_{t}$  such that  $X_{1}$  has distribution  $F$ . Normal and Poisson random variables are infinitely divisible:

- If  $X \sim N(m, \sigma^2)$ , then  $X$  has the same distribution as the sum of  $n$  independent  $N(m/n, \sigma^2/n)$  random variables.  
- If  $X$  has a Poisson distribution with mean  $\lambda$ , then  $X$  has the same distribution as the sum of  $n$  independent Poisson random variables with mean  $\lambda / n$ .

The goal of the next few sections is to show that every infinitely divisible random variable is the sum of a normal random variable and a "generalized Poisson" or "jump" random variable. The category "generalized Poisson" is rather large and will include the distributions in Examples 6.1.1 and 6.1.2.

A precise definition of a Lévy process needs another condition. For Brownian motion, we put continuity of the paths into the assumptions. To construct Brownian motion, we first defined Brownian motion on dyadic rationals times, showed that the corresponding process was uniformly continuous, and then extended to other times by continuity. In the case of Lévy processes, we similarly can first define the process at dyadic times to satisfy independent, stationary increments. As we discuss later, we then prove that with probability one, for all times  $t$ , the limits

$$
X_{t -} = \lim_{q \uparrow t} X_{q}, \quad X_{t +} = \lim_{q \downarrow t} X_{q},
$$

exist where the limits are taken over the dyadic rationals. We then define  $X_{t}$  to be  $X_{t+}$ .

# 6.2 Poisson process

The Poisson process is the basic jump Lévy process. It is obtained by taking jumps of size one at a particular rate  $\lambda$ . Suppose we have such a process, and let  $p(s)$  denote the probability that there is at least one jump in the interval  $[t, t + s]$ . If the increments are to be stationary, this quantity must not depend on  $t$ . Rate  $\lambda$  means that the probability that there is a jump some time during the time interval  $[t, t + \Delta t]$  is about  $\lambda \Delta t$ ; more precisely,

$$
p (\Delta t) = \lambda \Delta t + o (\Delta t), \quad \Delta t \downarrow 0.
$$

We can use this observation to construct the Poisson process.

We consider the waiting times between jumps. Let  $X_{t}$  denote the number of jumps that have occurred by time  $t$  and let

$$
T = \inf  \left\{t: X_{t} = 1 \right\}
$$

denote the amount of time until the first jump. Using i.i.d. increments, we see that

$$
\begin{array}{l} \mathbb{P} \{T > t \} = \prod_{j = 1}^{n} \mathbb{P} \left\{\text{nojumpduring} \left[ \frac{(j - 1) t}{n}, \frac{j t}{n} \right] \right\} \\ = \left[ 1 - p \left(\frac{t}{n}\right) \right]^{n}. \\ \end{array}
$$

Therefore,

$$
\begin{array}{l} \mathbb{P} \{T > t \} = \lim_{n \rightarrow \infty} \left[ 1 - p \left(\frac{t}{n}\right)\right]^{n} \\ = \lim_{n \rightarrow \infty} \left[ 1 - \frac{\lambda t}{n} + o \left(\frac{\lambda t}{n}\right)\right]^{n} = e^{- \lambda t}. \\ \end{array}
$$

Recall that a random variable  $T$  has an exponential distribution with rate  $\lambda$  if it has density

$$
f (t) = \lambda e^{- \lambda t}, 0 <   t <   \infty ,
$$

and hence

$$
\mathbb{P} \{T > t \} = \int_{t}^{\infty} f (s) d s = e^{- \lambda t}.
$$

Our assumptions imply that the waiting times of a Poisson distribution with parameter  $\lambda$  must be exponential with rate  $\lambda$ . Note that

$$
\mathbb{E} [ T ] = \int_{0}^{\infty} t f (t) d t = \frac{1}{\lambda},
$$

so that the mean waiting time is (quite reasonably) the reciprocal of the rate. This observation gives a way to construct a Poisson process. This construction also gives a good way to simulate Poisson processes (see Exercise 6.1).

- Let  $T_{1}, T_{2}, T_{3}, \ldots$  be independent random variables each exponential with rate  $\lambda$ .  
- Let  $\tau_0 = 0$  and for positive integer  $n$ ,

$$
\tau_{n} = T_{1} + \dots + T_{n}.
$$

In other words,  $\tau_{n}$  is the time at which the nth jump occurs.

- Set

$$
X_{t} = n \quad \text{for} \quad \tau_{n} \leq t <   \tau_{n + 1}.
$$

Note that we have defined the process so that the paths are right-continuous,

$$
X_{t} = X_{t +} := \lim_{s \downarrow t} X_{s}.
$$

The paths also have limits from the left, that is, for every  $t$  the limit

$$
X_{t -} = \lim_{s \uparrow t} X_{s}
$$

exists. If  $t$  is a time that the process jumps, that is, if  $t = \tau_n$  for some  $n > 0$ , then

$$
X_{t} = X_{t +} = X_{t -} + 1.
$$

At all other times the path is continuous,  $X_{t-} = X_{t+}$ .

The i.i.d. increments follow from the construction. We can use the assumptions to show the following.

- The random variable  $X_{t+s} - X_s$  has a Poisson distribution with mean  $\lambda t$ , that is,

$$
\mathbb{P} \{X_{t + s} - X_{s} = k \} = e^{- \lambda t} \frac{(\lambda t)^{k}}{k !}.
$$

One way to derive this is to write a system of differential equations for the functions

$$
q_{k} (t) = \mathbb{P} \{X_{t} = k \}.
$$

In the small time interval  $[t, t + \Delta t]$ , the chance that there is more than one jump is  $o(\Delta t)$  and the chance there is exactly one jump is  $\lambda \Delta t + o(\Delta t)$ . Therefore, up to errors that are  $o(\Delta t)$ ,

$$
\mathbb{P} \{X_{t + \Delta t} = k \} = \mathbb{P} \{X_{t} = k - 1 \} (\lambda \Delta t) + \mathbb{P} \{X_{t} = k \} [ 1 - \lambda \Delta t ].
$$

This gives

$$
q_{k} (t + \Delta t) - q_{k} (t) = \lambda \Delta t [ q_{k - 1} (t) - q_{k} (t) ] + o (\Delta t),
$$

or

$$
\frac{d q_{k} (t)}{d t} = \lambda [ q_{k - 1} (t) - q_{k} (t) ].
$$

If we assume  $X_0 = 0$ , we also have the initial conditions  $q_0(0) = 1$  and  $q_k(0) = 0$  for  $k > 0$ . We can solve this system of equations recursively, and this yields the solutions

$$
q_{k} (t) = e^{- \lambda t} \frac{(\lambda t)^{k}}{k !}.
$$

(Although it takes some good guesswork to start with the equations and find  $q_{k}(t)$ , it is easy to verify that  $q_{k}(t)$  as given above satisfies the equations.)

When studying infinitely divisible distributions, it will be useful to consider characteristic functions, and for notational ease, we will take logarithms. Since the characteristic function is complex-valued, we take a little care in defining the logarithm.

Definition If  $X$  is a random variable, then its characteristic exponent  $\Psi(s) = \Psi_X(s)$  is defined to be the continuous function satisfying

$$
\mathbb{E} \left[ e^{i s X} \right] = e^{\Psi (s)}, \quad \Psi (0) = 0.
$$

If  $X_{t}$  is a Lévy process, then the characteristic exponent of the process is the characteristic exponent of  $X_{1} - X_{0}$ .

Note that if  $X, Y$  are independent, then

$$
\Psi_{X + Y} = \Psi_{X} + \Psi_{Y}. \tag {6.1}
$$

- If  $X \sim N(m, \sigma^2)$ , then

$$
\Psi (s) = i m s - \frac{\sigma^{2}}{2} s^{2}.
$$

- If  $X$  is Poisson with mean  $\lambda$ , then

$$
\Psi (s) = \lambda [ e^{i s} - 1 ].
$$

This can be seen from the computation

$$
\mathbb{E} [ e^{i s X} ] = \sum_{n = 0}^{\infty} e^{i s n} \mathbb{P} \{X = n \} = \sum_{n = 0}^{\infty} \frac{(\lambda e^{i s})^{n}}{n !} e^{- \lambda} = e^{\lambda e^{i s}} e^{- \lambda}.
$$

If  $X_{t}$  is a Lévy process starting at the origin with characteristic exponent  $\Psi$ , then i.i.d. increments and the relation (6.1), imply that

$$
\Psi_{X_{t}} = t \Psi_{X_{1}} = t \Psi .
$$

An important property of Lévy processes is the following.

- Suppose  $X_{t}^{1}, X_{t}^{2}$  are independent Lévy processes with  $\Psi_{X^1} = \Psi_1, \Psi_{X^2} = \Psi_2$ . Then  $X_{t} = X_{t}^{1} + X_{t}^{2}$  is a Lévy process with  $\Psi_{X_t} = \Psi_1 + \Psi_2$ .

For example if  $X_{t}^{1}$  is a Brownian motion with drift  $m$  and variance  $\sigma^2$  and  $X_{t}^{2}$  is an independent Poisson process with rate  $\lambda$ , then  $X_{t} = X_{t}^{1} + X_{t}^{2}$  is a Lévy process with

$$
\Psi (s) = i m s - \frac{\sigma^{2} s^{2}}{2} + \lambda [ e^{i s} - 1 ]. \tag {6.2}
$$

A Lévy process is a Markov process so we can talk about its generator,

$$
L f (x) = \lim_{t \downarrow 0} \frac{\mathbb{E} [ f (X_{t}) \mid X_{0} = x ] - f (x)}{t}.
$$

Recall that for a Brownian motion  $B_{t}$  with drift  $m$  and variance  $\sigma^2$ ,

$$
L f (x) = m f^{\prime} (x) + \frac{\sigma^{2}}{2} f^{\prime \prime} (x).
$$

Moreover, if

$$
f (t, x) = \mathbb{E} \left[ F \left(B_{t}\right) \mid B_{0} = x \right],
$$

then  $f$  satisfies the heat equation

$$
\partial_{t} f (t, x) = L_{x} f (t, x). \tag {6.3}
$$

We now compute the generator for the Poisson process. Although we think of the Poisson process as taking integer values, there is no problem extending the definition so that  $X_0 = x$ . In this case the values taken by the process are  $x, x + 1, x + 2, \ldots$ . Up to terms that are  $o(t)$ ,  $\mathbb{P}\{X_t = X_0 + 1\} = 1 - \mathbb{P}\{X_t = X_0\} = \lambda t$ . Therefore as  $t \downarrow 0$ ,

$$
\mathbb{E} [ f (X_{t}) \mid X_{0} = x ] = \lambda t f (x + 1) + [ 1 - \lambda t ] f (x) + o (t),
$$

and

$$
L f (x) = \lambda [ f (x + 1) - f (x) ].
$$

The same argument shows that if  $f(t,x)$  is defined by

$$
f (t, x) = \mathbb{E} \left[ F (X_{t}) \mid X_{0} = x \right],
$$

then  $f$  satisfies the heat equation (6.3) with the generator  $L$ . We can view the generator as the operator on functions  $f$  that makes (6.3) hold.

The generators satisfy the following linearity property: if  $X_{t}^{1}, X_{t}^{2}$  are independent Lévy processes with generators  $L_{1}, L_{2}$ , respectively, then  $X_{t} = X_{t}^{1} + X_{t}^{2}$  has generator  $L_{1} + L_{2}$ . For example, if  $X$  is the Lévy process with  $\Psi$  as in (6.2),

$$
L f (x) = m f^{\prime} (x) + \frac{\sigma^{2}}{2} f^{\prime \prime} (x) + \lambda [ f (x + 1) - f (x) ].
$$

# 6.3 Compound Poisson process

In the Poisson process, the process jumps from  $x$  to  $x + 1$  at rate  $\lambda$ . The compound Poisson process generalizes this by allowing the jump size to be random. For the moment we think of the process as having two parameters, a jump rate  $\lambda$  and a distribution function  $F$ . We construct the process as follows.

- Let  $T_{1}, T_{2}, T_{3}, \ldots$  be independent random variables each exponential with rate  $\lambda$ .
- Let  $N_{t}$  denote the corresponding Poisson process as in the previous section,

$$
N_{t} = n \quad \text{if} \quad T_{1} + \dots + T_{n} \leq t <   T_{1} + \dots + T_{n + 1}.
$$

- Let  $Y_{1}, Y_{2}, Y_{3}, \ldots$  be independent random variables, independent of  $T_{1}, T_{2}, \ldots$ , with distribution function  $F$ , and let

$$
S_{n} = Y_{1} + \dots + Y_{n}, \quad S_{0} = 0.
$$

- Set  $X_{t} = S_{N_{t}}$

We call the process  $X_{t}$  a compound Poisson process (CPP) starting at the origin.

Let  $\mu^{\#}$  denote the distribution of the random variables  $Y_{j}$ , that is, if  $V\subset \mathbb{R}$ , then  $\mu^{\#}(V) = \mathbb{P}\{Y_1\in V\}$ . We set

$$
\mu = \lambda \mu^{\#}
$$

which is a measure on  $\mathbb{R}$  with  $\mu (\mathbb{R}) = \lambda$ . For the usual Poisson process  $\mu^{\#},\mu$  are just "point masses" on the point 1,

$$
\mu^{\#} (\{1 \}) = 1, \quad \mu (\{1 \}) = \lambda , \quad \mu^{\#} (\mathbb{R} \setminus \{1 \}) = \mu (\mathbb{R} \setminus \{1 \}) = 0.
$$

The measure  $\mu$  encodes both  $\lambda$  and  $\mu^{\#}$  so we can consider  $\mu$  as the parameter for the compound Poisson process. For any measure  $\mu$  with  $\lambda = \mu (\mathbb{R}) < \infty$  there is such a process. The measure  $\mu$  is called the Lévy measure for the process. Without loss of generality we assume that  $\mu (\{0\}) = 0$  since "jumps of size zero" do not affect the process  $X_{t}$ . The construction shows that the increments of  $X_{t}$  are i.i.d., and hence  $X_{t}$  is a Lévy process.

Proposition 6.3.1. Suppose  $X_{t}$  is a CPP with Lévy measure  $\mu$  with  $X_0 = 0$ . Then

$$
\Psi (s) = \int_{- \infty}^{\infty} [ e^{i s x} - 1 ] d \mu (x),
$$

$$
L f (x) = \int_{- \infty}^{\infty} [ f (x + y) - f (x) ] d \mu (y). \tag {6.4}
$$

Moreover, if

$$
\sigma^{2} := \int x^{2} d \mu (x) <   \infty , \tag {6.5}
$$

and

$$
m = \int x d \mu (x),
$$

then  $M_{t} = X_{t} - tm$  is a square integrable martingale with  $\operatorname{Var}[M_t] = t\sigma^2$ .

Proof. Let

$$
\phi (s) = \mathbb{E} [ e^{i s Y_{j}} ] = \int_{- \infty}^{\infty} e^{i s x} d \mu^{\#} (x),
$$

denote the characteristic function of a random variable with distribution function  $F$ . Then,

$$
\mathbb{E} [ e^{i s X_{t}} ] = \sum_{n = 0}^{\infty} \mathbb{P} \{N_{t} = n \} \mathbb{E} [ e^{i s X_{t}} \mid N_{t} = n ].
$$

Conditioned on  $N_{t} = n$ , the distribution of  $X_{t}$  is that of  $Y_{1} + \dots + Y_{n}$ , and hence

$$
\mathbb{E} \left[ e^{i s X_{t}} \mid N_{t} = n \right] = \phi (s)^{n}.
$$

Since  $N_{t}$  is Poisson with mean  $t\lambda$

$$
\begin{array}{l} \mathbb{E} \left[ e^{i s X_{t}} \right] = \sum_{n = 0}^{\infty} e^{- t \lambda} \frac{(t \lambda)^{n}}{n !} \phi (s)^{n} \\ = e^{- t \lambda} \sum_{n = 0}^{\infty} \frac{(t \lambda \phi (s))^{n}}{n !} \\ = \exp \left\{t \lambda [ \phi (s) - 1 ] \right\} \\ = \exp \left\{t \lambda \int_{- \infty}^{\infty} \left[ e^{i s x} - 1 \right] d \mu^{\#} (x) \right\} \\ = \exp \left\{t \int_{- \infty}^{\infty} \left[ e^{i s x} - 1 \right] d \mu (x) \right\}. \\ \end{array}
$$

The second-to-last equality uses the fact that  $\mu^{\#}$  is a probability measure.

The computation for the generator  $L$  follows from the definition of the CPP. In a small time  $\Delta t$ , the probability that there is a jump is  $\lambda \Delta t + o(\Delta t)$ , and given that there is a jump, the amount jumped is given by the distribution  $\mu^{\#}$ . In other words, the probability that there is a jump in time  $\Delta t$  whose size is in  $(a, b)$  is given up to an error of size  $o(\Delta t)$  by

$$
\lambda \Delta t \mu^{\#} (a, b) = \Delta t \mu (a, b).
$$

Therefore,

$$
\begin{array}{l} \mathbb{E} \left[ f \left(X_{\Delta t}\right) \mid X_{0} = x \right] \\ = [ 1 - \lambda \Delta t ] f (x) + \Delta t \int_{- \infty}^{\infty} f (x + y) d \mu (y) + o (\Delta t) \\ = f (x) + \Delta t \int_{- \infty}^{\infty} [ f (x + y) - f (x) ] d \mu (y) + o (\Delta t), \\ \end{array}
$$

which is a restatement of (6.4).

The moments of  $X_{t}$  can be computed by differentiating its characteristic function,

$$
\phi_{X_{t}}^{\prime} (0) = i \mathbb{E} [ X_{t} ], \quad \phi_{X_{t}}^{\prime \prime} (0) = - \mathbb{E} [ X_{t}^{2} ],
$$

assuming that the moments exist. For any positive integer  $n$ , if

$$
\int_{- \infty}^{\infty} | x |^{n} d \mu (x) <   \infty ,
$$

then we can differentiate under the integral  $n$  times to see that

$$
\Psi^{(n)} (s) = i^{n} \int_{- \infty}^{\infty} x^{n} e^{i s x} d \mu (x).
$$

In particular, if (6.5) holds,

$$
\Psi^{\prime} (0) = i \int_{- \infty}^{\infty} x d \mu (x), \quad \Psi^{\prime \prime} (0) = - \int_{- \infty}^{\infty} x^{2} d \mu (x),
$$

and since  $\phi_{X_t}(s) = \exp \{t\Psi (s)\}$  and  $\Psi (0) = 0$ , we get

$$
\phi_{X_{t}}^{\prime} (0) = t \Psi^{\prime} (0) = i t \int_{- \infty}^{\infty} x d \mu (x) = i t m,
$$

$$
\phi_{X_{t}}^{\prime \prime} (0) = t \Psi^{\prime \prime} (0) + [ t \Psi^{\prime} (0) ]^{2} = - [ t \sigma^{2} + (t m)^{2} ].
$$

Therefore,

$$
\mathbb{E} [ X_{t} ] = t m, \quad \mathrm{Var} [ X_{t} ] = \mathbb{E} \left[ (X_{t} - t m)^{2} \right] = \mathbb{E} \left[ X_{t}^{2} \right] - (\mathbb{E} [ X_{t} ])^{2} = t \sigma^{2}.
$$

If  $\mathcal{F}_s$  denote the information contained in  $\{X_r : r \leq s\}$  and  $s < t$ , then  $X_t - X_s$  is independent of  $\mathcal{F}_s$  and

$$
E \left[ X_{t} \mid \mathcal{F}_{s} \right] = X_{s} + E \left[ X_{t} - X_{s} \mid \mathcal{F}_{s} \right] = X_{s} + \mathbb{E} \left[ X_{t} - X_{s} \right] = X_{s} + (t - s) m,
$$

and hence

$$
\mathbb{E} \big [ X_{t} - t m \mid \mathcal{F}_{s} \big ] = X_{s} - s m.
$$

This shows that  $M_{t}$  is a martingale and

$$
\mathbb{E} [ M_{t}^{2} ] = \mathbb{E} [ (X_{t} - t m)^{2} ] = \mathrm{Var} [ X_{t} ] = t \sigma^{2}.
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/0b02acc3-26e4-4125-ae2f-f5fd9d2fbf41/c872ad44da7de7c1ec1c71353c2ca4e9278cec39aef4919b9e8462fbe0cf8e28.jpg)

We call  $M_{t} = X_{t} - mt$  the compensated compound Poisson process (compensated CPP) associated to  $X_{t}$ . It is a Lévy process. If  $L$  denotes the generator for  $X_{t}$ , then  $M_{t}$  has generator

$$
\begin{array}{l} L_{M} f (x) = L f (x) - m f^{\prime} (x) \\ = \int_{- \infty}^{\infty} [ f (x + y) - f (x) - y f^{\prime} (x) ] d \mu (y). \tag {6.6} \\ \end{array}
$$

The quadratic variation of the CPP is defined as before

$$
\langle X \rangle_{t} = \lim_{n \to \infty} \sum_{j \leq t n} \left[ X \left(\frac{j}{n}\right) - X \left(\frac{j - 1}{n}\right) \right]^{2}.
$$

Note that the terms in the sum are zero unless there is a jump in the time interval  $[(j - 1) / n, j / n]$ . Hence we see that

$$
\left<   X \right>_{t} = \sum_{s \leq t} [ X_{s} - X_{s -} ]^{2}.
$$

Unlike the case of Brownian motion, for fixed  $t$  the random variable  $\langle X\rangle_t$  is not constant. We can similarly find the quadratic variation of the martingale  $M_{t} = X_{t} - mt$ . By expanding the square, we see that this it is the limit as  $n\to \infty$  of three sums

$$
\begin{array}{l} \sum_{j \leq t n} \left[ X \left(\frac{j}{n}\right) - X \left(\frac{j - 1}{n}\right) \right]^{2} \\ + \frac{2 m}{n} \sum_{j \leq t n} \left[ X \left(\frac{j}{n}\right) - X \left(\frac{j - 1}{n}\right) \right] + \sum_{j \leq t n} \frac{m^{2}}{n^{2}}. \\ \end{array}
$$

Since there are only finitely many jumps, we can see that the second and third limits are zero and hence

$$
\langle M \rangle_{t} = \langle X \rangle_{t} = \sum_{s \leq t} [ X_{s} - X_{s -} ]^{2}.
$$

This next proposition generalizes the last assertion of the previous proposition and sheds light on the meaning of the generator  $L$ . In some sense, this is an analogue of Ito's formula for CPP. Recall that if  $X_{t}$  is a diffusion satisfying

$$
d X_{t} = m (X_{t}) d t + \sigma (X_{t}) d B_{t},
$$

then the Markov process  $X_{t}$  has generator

$$
L f (x) = m (x) f^{\prime} (x) + \frac{\sigma^{2} (x)}{2} f^{\prime \prime} (x),
$$

and Ito's formula gives

$$
d f (X_{t}) = L f (X_{t}) d t + f^{\prime} (X_{t}) \sigma (X_{t}) d B_{t}.
$$

In other words, if

$$
M_{t} = f (X_{t}) - \int_{0}^{t} L f (X_{s}) d s,
$$

then  $M_t$  a (local) martingale satisfying

$$
d M_{t} = f^{\prime} (X_{t}) \sigma (X_{t}) d B_{t}.
$$

Proposition 6.3.2. Suppose  $X_{t}$  is a compound Poisson process with Lévy measure  $\mu$ , and suppose that  $f$  is a continuous function such that for all  $x, t$ ,

$$
\mathbb{E} \left[ f (X_{t})^{2} \mid X_{0} = x \right] <   \infty .
$$

Then

$$
M_{t} = f (X_{t}) - \int_{0}^{t} L f (X_{s}) d s
$$

is a square integrable martingale with

$$
\langle M \rangle_{t} = \langle f (X) \rangle_{t} = \sum_{s \leq t} [ f (X_{s}) - f (X_{s -}) ]^{2}.
$$

The proof of this proposition is similar to the derivation of Ito's formula. We will first show that  $M_t$  is a martingale, that is,  $E[M_t \mid \mathcal{F}_s] = M_s$ . The argument is essentially the same for all  $s$  so we will assume that  $s = 0$  and  $X_0 = x$ . We need to show that

$$
\mathbb{E} \left[ f (X_{t}) - f (X_{0}) - \int_{0}^{t} L f (X_{s}) d s \right] = 0.
$$

This argument is the same for all  $t$ , so let us assume  $t = 1$ . Then, as in the proof of Ito's formula, we write

$$
\begin{array}{l} f (X_{1}) - f (X_{0}) - \int_{0}^{1} L f (X_{s}) d s \\ = \sum_{j = 1}^{n} \left[ f \left(X_{\frac{j}{n}}\right) - f \left(X_{\frac{(j - 1)}{n}}\right) - \int_{(j - 1) / n}^{j / n} L f (X_{s}) d s \right]. \\ \end{array}
$$

We write the expectation of the right-hand side as the sum of two terms

$$
\begin{array}{l} \sum_{j = 1}^{n} \mathbb{E} \left[ f \left(X_{\frac{j}{n}}\right) - f \left(X_{\frac{(j - 1)}{n}}\right) - \frac{1}{n} L f \left(X_{\frac{(j - 1)}{n}}\right) \right] (6.7) \\ \sum_{j = 1}^{n} \mathbb{E} \left[ \frac{1}{n} L f \left(X_{\frac{(j - 1)}{n}}\right) - \int_{(j - 1) / n}^{j / n} L f (X_{s}) d s \right], (6.8) \\ \end{array}
$$

The definition of  $L$  implies that

$$
E \left[ f (X_{t + \Delta t}) \mid \mathcal{F}_{t} \right] = f (X_{t}) + L f (X_{t}) \Delta t + o (\Delta t),
$$

and hence

$$
\mathbb{E} \left[ f (X_{t + \Delta t}) - f (X_{t}) - L f (X_{t}) \Delta t \right] = o (\Delta t).
$$

This shows that the sum in (6.7) has  $n$  terms that are  $o(1/n)$  and hence the limit is zero. The terms inside the expectation in (6.8) equal zero unless there is a jump between time  $(j-1)/n$  and  $j/n$ . This occurs with probability  $O(1/n)$  and in this case the value of the random variable is  $O(1/n)$ . Hence the expectations are  $O(1/n^2)$  and the sum of  $n$  of them has limit zero.

The computation of the quadratic variation is essentially the same as in Proposition 6.3.1.

Suppose that  $X_{t} = S_{N_{t}}$  where  $N_{t}$  is a Poisson process of rate  $\lambda$ . Let  $E_{n}$  be the event that  $N_{t + (1 / n)} - N_{t} \geq 2$  for some  $t \leq 1$ . We know that  $\cap_{n}E_{n}$  has probability zero, and hence since  $\mathbb{E}[|f(X_1)|] < \infty$ ,

$$
\lim_{n \to \infty} \mathbb{E} \left[ | f (X_{1}) |   1_{E_{n}} \right] = 0.
$$

Therefore,

$$
\mathbb{E} [ f (X_{1}) ] = \lim_{n \to \infty} \mathbb{E} [ f (X_{1}) 1_{E_{n}^{c}} ].
$$

However,

$$
\mathbb{E} \left[ \left[ f (X_{t + s}) - f (X_{t}) \right] 1_{E_{n}^{c}} \right] = s \mathbb{E} [ L f (X_{t}) ] [ 1 + O (s) ].
$$

We therefore get

$$
\mathbb{E} \left[ f (X_{1}) - f (X_{0}) \right] = \lim_{n \to \infty} \frac{1}{n} \sum_{j = 0}^{n - 1} \mathbb{E} [ L f (X_{j / n}) ].
$$

Right-continuity implies that

$$
\lim_{n \to \infty} \frac{1}{n} \sum_{j = 0}^{n - 1} L f (X_{j / n}) = \int_{0}^{1} L f (X_{s}) d s,
$$

and the bound  $\mathbb{E}[|f(X_1)|] < \infty$  can be used to justify the interchange of limit and expectation.

For a CPP the paths  $t \mapsto X_t$  are piecewise constant and are discontinuous at the jumps. As for the usual Poisson process, we have defined the path so that is it right-continuous and has left-limits. We call a function  $\text{cadlag}$  (also written  $\text{cadlag}$ ), short for continue à droite, limit à gauche, if the paths are right-continuous everywhere and have left-limits. That is, for every  $t$ , the limits

$$
X_{t +} = \lim_{s \downarrow t} X_{s}, \quad X_{t -} = \lim_{s \uparrow t} X_{s},
$$

exist and  $X_{t} = X_{t + }$ . The paths of a CPP are cadlag. We can write

$$
X_{t} = X_{0} + \sum_{0 \leq s \leq t} \left[ X_{s} - X_{s -} \right].
$$

Although as written this sum is over an uncountable number of times  $s$ , the term  $X_{s} - X_{s-}$  is only nonzero at those  $s$  at which the path is discontinuous and this is a finite set.

In the next section, we will use the following maximal lemma.

Lemma 6.3.3. If  $X_{t}$  is a CPP satisfying (6.5),  $M_{t} = X_{t} - tm$ , and

$$
K = \max_{0\leq t\leq 1}|M_{t}|,
$$

then

$$
\mathbb{P} \{| K | \geq a \} \leq \frac{\sigma^{2}}{a^{2}}.
$$

Proof. Let

$$
K_{n} = \max  \{| M_{j / n} |: j = 1, 2, \dots , n \}.
$$

Since  $X_{t}$  has piecewise constant paths,  $K = \lim_{n\to \infty}K_{n}$  and it suffices to show for each  $n$  that

$$
\mathbb{P} \{| K_{n} | \geq a \} \leq \frac{\sigma^{2}}{a^{2}}.
$$

Fix  $n$  and let  $Z_{j} = M_{j / n},\overline{Z}_{n} = \max \{|Z_{j}|:j = 1,\ldots ,n\}$ . Then  $Z_{j}$  is a discrete-time martingale, and Corollary 1.7.2 gives

$$
\mathbb{P} \{\overline {{Z}}_{n} \geq a \} \leq \frac{\mathbb{E} [ Z_{n}^{2} ]}{a^{2}} = \frac{\mathbb{E} [ M_{1}^{2} ]}{a^{2}} = \frac{\sigma^{2}}{a^{2}}.
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/0b02acc3-26e4-4125-ae2f-f5fd9d2fbf41/f286555a2102789f70c10fd021d17829a680f34c74a1680a5e68c5a9813af1bc.jpg)

# 6.4 Integration with respect to compound Poisson processes

Defining the integral with respect to a compound Poisson process is easy. If  $X_{t}$  is a CPP and  $A_{t}$  is another process, we could let

$$
\int_{0}^{t} A_{s} d X_{s} = \sum_{0 \leq s \leq t} A_{s} \left[ X_{s} - X_{s -} \right]. \tag {6.9}
$$

As noted before, there are only a finite number of nonzero terms in the sum so the sum is well defined. This definition requires no assumptions on the process  $A_{s}$ . However, if we want the integral to satisfy some of the properties of the Ito integral, we will need to assume more.

Suppose that  $\mathbb{E}[X_1] = m, \mathrm{Var}[X_1] = \sigma^2$ , and let  $M_t$  be the square integrable martingale  $M_t = X_t - mt$ . Then if the paths of  $A_t$  are Riemann integrable, and the integral

$$
Z_{t} = \int_{0}^{t} A_{s} d M_{s} = \int_{0}^{t} A_{s} d X_{s} - m \int_{0}^{t} A_{s} d s
$$

is well defined. Let  $\mathcal{F}_t$  denote the information contained in  $\{M_s : s \leq t\}$  which is the same as the information contained in  $\{X_s : s \leq t\}$ . In analogy with the Ito integral, we might hope that if  $A_t$  is square integrable, piecewise continuous, and adapted to  $\{\mathcal{F}_t\}$ , then  $Z_t$  would be a martingale. However, this is not always the case as we now show.

Example 6.4.1. Suppose  $X_{t}$  is the CPP that takes jumps of rate 1 and when it jumps it chooses  $\pm 1$  each with the same probability. In other words, the Lévy measure of  $X$  is the probability measure with  $\mu(\{1\}) = \mu(\{-1\}) = 1/2$ . Then  $m = 0, \sigma^2 = 1$ , and  $A_{t} = X_{t} - X_{t-}$  is adapted to  $\{\mathcal{F}_t\}$ . It is discontinuous only at the jumps of  $X_{t}$  and hence is piecewise continuous. However, if we define the integral as in (6.9), then

$$
\int_{0}^{t} A_{s} d X_{s} = \sum_{0 \leq s \leq t} \left[ X_{s} - X_{s -} \right]^{2},
$$

which has positive expectation (since it is nonnegative and has a positive probability to be strictly positive).

The problem in our setup is that we allow a betting strategy that sees a jump at time  $s$  and immediately changes the bet to take advantage of this. In our framework, we will not allow these instantaneous changes by restricting to strategies that are left-continuous.

Proposition 6.4.1. Suppose  $X_{t}$  is a CPP with  $\sigma^2 < \infty$  and  $M_t = X_t - mt$ . Suppose that  $A_{t}$  is a process satisfying:

- each  $A_{t}$  is measurable with respect to  $\{X_{s}: 0 \leq s \leq t\}$ ;  
- with probability one, the paths of  $A_{t}$  are left-continuous, that is,  $A_{t} = A_{t-}$ :  
for every  $t <   \infty$

$$
\int_{0}^{t} \mathbb{E} \left[ A_{s}^{2} \right] d s <   \infty .
$$

Then

$$
Z_{t} = \int_{0}^{t} A_{s} d M_{s}
$$

is a square integrable martingale with

$$
\mathbb{E} \left[ Z_{t}^{2} \right] = \sigma^{2} \int_{0}^{t} \mathbb{E} \left[ A_{s}^{2} \right] d s. \tag {6.10}
$$

Rather than assuming that  $A_{s}$  is left-continuous, we can assume that  $A_{s}$  has càdlag paths, but then we change the definition in (6.9) to

$$
\int_{0}^{t} A_{s} d X_{s} = \sum_{0 \leq s \leq t} A_{s -} \left[ X_{s} - X_{s -} \right].
$$

Proof of Proposition 6.4.1. If  $s < t$ , then arguing as before,

$$
E \left[ A_{s} \left(M_{t} - M_{s}\right) \mid \mathcal{F}_{s} \right] = A_{s} E \left[ M_{t} - M_{s} \mid \mathcal{F}_{s} \right] = 0, \tag {6.11}
$$

$$
\begin{array}{l} \mathbb{E} \left[ A_{s}^{2} \left(M_{t} - M_{s}\right)^{2} \right] = \mathbb{E} \left[ E \left(A_{s}^{2} \left(M_{t} - M_{s}\right)^{2} \mid \mathcal{F}_{s}\right) \right] \\ = \mathbb{E} \left[ A_{s}^{2} \mathbb{E} \left[ \left(M_{t} - M_{s}\right)^{2} \right] \right] \\ = \sigma^{2} (t - s) \mathbb{E} \left[ A_{s}^{2} \right]. \tag {6.12} \\ \end{array}
$$

For each  $t$ , the probability that  $M_{t-} \neq M_t = 0$ . Therefore, with probability one, for all rational times  $t$ ,  $M_t = M_{t-}$ . Suppose that  $A_s$  is a simple process that changes values only at times in  $\{0, 1/n, 2/n, 3/n, \ldots\}$ . Then with probability one, for all  $t$ , if  $j/n \leq t < (j + 1)/n$ ,

$$
Z_{t} = \int_{0}^{t} A_{s} d M_{s} = \sum_{i = 0}^{j - 1} A \left(\frac{i}{n}\right) \left[ M \left(\frac{i + 1}{n}\right) - M \left(\frac{i}{n}\right) \right].
$$

This expression uses the fact  $M_{t} = M_{t - }$  for all rational  $t$ . Using this expression and (6.11) and (6.12) we see that  $Z_{t}$  is a square integrable martingale satisfying (6.10).

We now assume that  $A_{t}$  is adapted, left-continuous, and uniformly bounded, that is, with probability one,  $|A_{t}| \leq C$  for all  $t$ . Define  $A_{t}^{n}$  by

$$
A_{t}^{n} = A_{j / n} \quad \text{if} \quad \frac{j}{n} <   t \leq \frac{j + 1}{n}.
$$

Left-continuity implies that with probability one for all  $t$

$$
A_{t} = \lim_{n \to \infty} A_{t}^{n},
$$

and hence

$$
\int_{0}^{t} A_{s} d M_{s} = \lim_{n \to \infty} \int_{0}^{t} A_{s}^{n} d M_{s}.
$$

Using uniform boundedness, one can interchange limits and expectations to get (6.11) and (6.12).

Finally to remove the boundedness assumption, we let  $T_{n} = \inf \{t : |A_{t}| = n\}$  and let  $A_{t,n} = A_{t \wedge T_{n}}$ . As  $n \to \infty$ ,  $A_{t,n} \to A_{t}$ , and we can argue as before.

Example 6.4.2. Suppose  $X_{t}$  is a CPP with Lévy measure  $\mu$  satisfying

$$
\int_{- \infty}^{\infty} e^{2 y} d \mu (y) <   \infty .
$$

Let  $f(x) = e^{x}$  and  $S_{t} = f(X_{t}) = e^{X_{t}}$  which we can consider as a simple model of an asset price with jumps. This is an analogue of geometric Brownian motion for jump processes. Note that

$$
f (x + y) - f (x) = e^{x} h (y) \quad \text{where} \quad h (y) = e^{y} - 1,
$$

and hence

$$
L f (x) = \int_{- \infty}^{\infty} [ f (x + y) - f (x) ] d \mu (y) = r e^{x},
$$

where

$$
r = \int_{- \infty}^{\infty} h (y) d \mu (y) <   \infty .
$$

Note that

$$
S_{t} - S_{t -} = S_{t -} h \left(X_{t} - X_{t -}\right). \tag {6.13}
$$

In particular, the jump times for  $S$  are the same as the jump times for  $X$ . Let

$$
\hat {X}_{t} = \sum_{s \leq t} h (X_{t} - X_{t -})
$$

be the CPP with  $\hat{X}_0 = 0$  that takes a jump of size  $h(y)$  whenever  $X_{t}$  takes a jump of size  $y$ . This process has Lévy measure  $\hat{\mu}$  where

$$
\hat {\mu} (h (V)) = \mu (V), \tag {6.14}
$$

with mean  $\hat{m} = r$ . If  $\hat{Y}_t = \hat{X}_t - rt$  is the compensated CPP, we can write (6.13) as

$$
d S_{t} = S_{t -} d \hat {X}_{t} = S_{t -} d \hat {Y}_{t} + r S_{t -} d t = S_{t -} \left[ d \hat {Y}_{t} + r d t \right].
$$

Since  $S_{t}$  is piecewise continuous, it does not matter in the  $dt$  integral whether we write  $S_{t}$  or  $S_{t-}$ . However, we must write  $S_{t-}$  in the  $d\hat{X}_{t}$  and  $d\hat{Y}_{t}$  integrals. If  $r = 0$ , that is, if

$$
\int_{- \infty}^{\infty} [ e^{y} - 1 ] d \mu (y) = 0,
$$

then  $\hat{X}_t$  and hence  $S_t$  are actually martingales. If  $r \neq 0$ , we let  $\tilde{S}_t = e^{-rt} S_t = e^{X_t - rt}$ . Since  $t \mapsto e^{-rt}$  is differentiable, we can use the product rule

$$
d \tilde {S}_{t} = S_{t} d [ e^{- r t} ] + e^{- r t} d S_{t} = \tilde {S}_{t -} d \hat {Y}_{t}.
$$

Example 6.4.3. We will proceed backwards through the last example to solve the exponential differential equation for compound Poisson processes. Suppose  $\hat{X}_t$  is a CPP whose Lévy measure  $\hat{\mu}$  satisfies  $\hat{\mu}\{x : x \leq -1\} = 0$  and

$$
\int_{- 1}^{\infty} x^{2} d \hat {\mu} (x) <   \infty .
$$

Let

$$
\hat {m} = \int_{- 1}^{\infty} x d \hat {\mu} (x) <   \infty ,
$$

and let  $\hat{Y}_t = \hat{X}_t - \hat{m} t$  be the compensated CPP which is a square integrable martingale. Let  $\mu$  be the measure as defined in (6.14) and let  $X_t$  denote the corresponding process as in the previous example. In other words, if  $\hat{X}_t$  has a jump of size  $y$ , then  $X_t$  has a jump of size  $h^{-1}(y) = \log [1 + y]$ . Then the solutions to the exponential differential equation

$$
d Z_{t} = Z_{t -} d \hat {X}_{t}, \quad d M_{t} = M_{t -} d \hat {Y}_{t},
$$

are

$$
Z_{t} = Z_{0} e^{X_{t}}, \quad M_{t} = Z_{0} e^{X_{t} - \hat {m} t}.
$$

Note that we can write

$$
Z_{t} = Z_{0} \exp \left\{\sum_{0 <   s \leq t} \log [ 1 + (\hat {X}_{s} - \hat {X}_{s -}) ] \right\}.
$$

Example 6.4.4. More generally, the equations

$$
d Z_{t} = A_{t -} Z_{t -} d X_{t}, \quad d M_{t} = A_{t -} M_{t -} d Y_{t}
$$

where  $X$  is a CPP with compensated process  $Y_{t} = X_{t} - mt$ , have solutions

$$
\begin{array}{l} Z_{t} = Z_{0} \exp \left\{\sum_{0 <   s \leq t} \log [ 1 + A_{s -} (X_{s} - X_{s -}) ] \right\}, \\ M_{t} = Z_{t} \exp \left\{- m \int_{0}^{t} A_{s -} d s \right\} = Z_{t} \exp \left\{- m \int_{0}^{t} A_{s} d s \right\}. \\ \end{array}
$$

# 6.5 Change of measure

Suppose  $X_{t}$  is a CPP defined on the probability space  $(\Omega, \mathcal{F}, \mathbb{P})$  with Lévy measure  $\mu$  and corresponding filtration  $\{\mathcal{F}_t\}$ . We would like to do the analogue of the Girsanov theorem to change the measure.

Suppose that strictly positive martingale  $M_t$  is a strictly positive martingale with respect to  $\{\mathcal{F}_t\}$  with  $M_0 = 1$ . As before, we can define a new probability measure  $Q$  by saying that if  $V$  is  $\mathcal{F}_t$ -measurable, then

$$
Q [ V ] = \mathbb{E} \left[ M_{t} 1_{V} \right].
$$

If we let  $\mathbb{P}_t, Q_t$  denote  $\mathbb{P}, Q$  restricted to  $\mathcal{F}_t$ , then  $\mathbb{P}_t$  and  $Q_t$  are mutually absolutely continuous with

$$
\frac{d Q_{t}}{d \mathbb{P}_{t}} = M_{t}, \quad \frac{d \mathbb{P}_{t}}{d Q_{t}} = \frac{1}{M_{t}}.
$$

If  $\nu$  is a another measure on  $\mathbb{R}$ , we can ask if we can find a martingale so that under the measure  $Q$ ,  $X_{t}$  is a CPP with Lévy measure  $\nu$ . A necessary condition for this to hold is that  $\mu$  and  $\nu$  are mutually absolutely continuous measures on  $\mathbb{R}$ . Indeed, if  $V$  is a subset of  $\mathbb{R}$  with  $\mu(V) > 0$ ,  $\nu(V) = 0$ , then  $X_{t}$  under  $\mathbb{P}$  has positive probability of having  $X_{s} - X_{s-} \in V$  for some  $s \leq 1$ , while this has zero probability under  $Q$ .

Maybe a bit surprising is the fact that the converse holds. Suppose  $\nu, \mu$  are mutually absolutely continuous and let  $f = d\nu / d\mu$  which we assume is strictly positive. With respect to  $\mathbb{P}$ ,  $X_{t}$  satisfies

$$
\mathbb{P} \{X_{t + \Delta t} - X_{t} \in V \} = \mu (V) \Delta t + o (\Delta t),
$$

and we would like

$$
Q \{X_{t + \Delta t} - X_{t} \in V \} = \nu (V) \Delta t + o (\Delta t),
$$

which would give

$$
\frac{Q \{X_{t + \Delta t} - X_{t} \in V \}}{\mathbb{P} \{X_{t + \Delta t} - X_{t} \in V \}} = \frac{\nu (V)}{\mu (V)} + o (\Delta t).
$$

To get this we choose

$$
M_{t} = \exp \left\{\sum_{s \leq t} f (X_{s} - X_{s -}) - r t \right\}, \quad r = \nu (\mathbb{R}) - \mu (\mathbb{R}).
$$

Suppose we model an asset price by  $S_{t} = e^{X_{t}}$  where  $X_{t}$  is a CPP, and suppose that  $\nu$  is any measure equivalent to  $\mu$  with

$$
\int_{- \infty}^{\infty} [ e^{y} - 1 ] d \nu (y) = 0.
$$

Then  $Q$  is equivalent to  $\mathbb{P}$ , and (see Example 6.4.2)  $S$  is a martingale with respect to  $Q$ . In particular, there are many different measures  $Q$  that are equivalent to  $\mathbb{P}$  that make  $S_{t}$  a martingale. This is in contrast to the case when  $X_{t}$  is a Brownian motion where such a measure is unique.

# 6.6 Generalized Poisson processes I

The generalized Poisson process is like the CPP except that the jump times form a dense subset of the real line. Suppose that  $\mu$  is a measure on  $\mathbb{R}$ . We want to consider the process  $X_{t}$  that, roughly speaking, satisfies the condition that the probability of a jump whose size lies in  $[a,b]$  occurring in time  $\Delta t$  is about  $\mu [a,b]\Delta t$ . The CPP assumes that

$$
\mu (\mathbb{R}) = \int_{- \infty}^{\infty} d \mu (x) <   \infty ,
$$

and this implies that there are only a finite number of jumps in a bounded time interval. In this section we allow an infinite number of jumps  $(\mu(\mathbb{R}) = \infty)$ , but require the expected sum of the absolute values of the jumps in an interval to be finite. This translates to the condition

$$
\int_{- \infty}^{\infty} | x | d \mu (x) <   \infty . \tag {6.15}
$$

This implies that

$$
\mu \{x: | x | > \epsilon \} <   \infty \quad \text{forevery} \quad \epsilon > 0, \tag {6.16}
$$

but it is possible for  $\mu \{x:|x| > 0\}$  to be infinite.

To be more specific, let  $\mu_{\epsilon}$  denote the measure  $\mu$  restricted to jumps of absolute value strictly greater than  $\epsilon$ . For each  $\epsilon$ , we have a compound process with Lévy measure  $\mu_{\epsilon}$  which can be written as

$$
X_{t}^{\epsilon} = \sum_{0 \leq s \leq t} \bigl (X_{s}^{\epsilon} - X_{s -}^{\epsilon} \bigr).
$$

Let us write

$$
V_{t}^{\epsilon} = \sum_{0 \leq s \leq t} \left| X_{s}^{\epsilon} - X_{s -}^{\epsilon} \right|,
$$

which is a CPP with measure  $\bar{\mu}_{\epsilon}$  defined by

$$
\bar {\mu}_{\epsilon} (a, b) = \mu_{\epsilon} (a, b) + \mu_{\epsilon} (- b, - a), \quad \epsilon \leq a <   b <   \infty .
$$

In other words  $V_{t}^{\epsilon}$  has the same jumps as  $X_{t}^{\epsilon}$  except that they all go in the positive direction. As  $\epsilon \downarrow 0$ ,  $V_{t}^{\epsilon}$  increases (since we are adding jumps and they are all in the same direction) and using (6.15), we see that

$$
\lim_{\epsilon \downarrow 0} \mathbb{E} \left[ V_{t}^{\epsilon} \right] = t \int_{- \infty}^{\infty} | x | d \mu (x) <   \infty .
$$

Hence we can define

$$
V_{t} = \lim_{\epsilon \downarrow 0} V_{t}^{\epsilon}
$$

and  $\mathbb{E}[V_t] < \infty$ . Similarly, we can define

$$
X_{t} = \lim_{\epsilon \downarrow 0} X_{t}^{\epsilon}.
$$

Since  $|X_t^\epsilon| \leq V_t$ , the dominated convergence theorem is used to justify interchanges of limits.

Let  $\mathcal{T}_n$  be the set of times such that the process  $X_{t}^{1 / n}$  is discontinuous, and let

$$
\mathcal{T} = \bigcup_{n = 1}^{\infty} \mathcal{T}_{n}.
$$

Since each  $\mathcal{T}_n$  is finite, the set  $\mathcal{T}$  is countable, but if  $\mu (\mathbb{R}) = \infty$ ,  $\mathcal{T}$  will be infinite and, in fact, dense in every interval. Even though there are jumps in every interval, the paths are cadlag, that is, they are right continuous and the limits

$$
X_{t -} = \lim_{s \uparrow t} X_{s}
$$

exist for every  $s$

Calculating as in the previous section we can see the following.

Proposition 6.6.1. Suppose  $X_{t}$  is a generalized Poisson process with Lévy measure  $\mu$ . Then

$$
\Psi (s) = \int_{- \infty}^{\infty} [ e^{i x s} - 1 ] d \mu (x),
$$

$$
\mathbb{E} [ X_{t} ] = t m, \quad m = \int_{- \infty}^{\infty} x d \mu (x),
$$

$$
L f (x) = \int_{- \infty}^{\infty} [ f (x + y) - f (x) ] d \mu (y),
$$

$$
\operatorname{Var} [ X_{t} ] = \mathbb{E} [ (X_{t} - m t)^{2} ] = t \int_{- \infty}^{\infty} x^{2} d \mu (x).
$$

One may worry about the existence of the integrals above. Taylor's theorem implies that

$$
e^{i x s} - 1 = i x s - \frac{x^{2} s^{2}}{2} + O (| x s |^{3}).
$$

Using this and (6.15) we can see that

$$
\int_{| x | \leq 1} \left| e^{i x s} - 1 \right| d \mu (x) <   \infty .
$$

Also,

$$
\int_{| x | > 1} \left| e^{i x s} - 1 \right| d \mu (x) \leq 2 \mu \{x: | x | > 1 \} <   \infty .
$$

For the generator  $L$  we assume that  $f$  is  $C^1$  and hence for  $y$  near the

origin

$$
f (x + y) - f (x) = O (| y |).
$$

Then,

$$
\int_{| x | \leq 1} | f (x + y) - f (x) | d \mu (y) <   \infty .
$$

Finiteness of the integral

$$
\int_{| x | > 1} \left| f (x + y) - f (x) \right| d \mu (y)
$$

requires some assumptions on the growth of  $f$  at infinity.

We can relax the conditions somewhat by requiring (6.16) to hold but replacing (6.15) with the weaker condition

$$
\int_{- 1}^{1} | x | d \mu (x) <   \infty . \tag {6.17}
$$

Indeed, if (6.16) and (6.17) hold we can write

$$
\mu = \mu_{1} + \mu_{2},
$$

where  $\mu_{1}$  is  $\mu$  restricted to  $\{|x|\leq 1\}$  and  $\mu_{2}$  is  $\mu$  restricted to  $\{|x| > 1\}$ . To  $\mu_{1}$  we associate the generalized Poisson process  $X_{t}^{1}$  and to  $\mu_{2}$  we associate an independent CPP, and then set  $X_{t} = X_{t}^{1} + X_{t}^{2}$ . In this case it is possible that  $\mathbb{E}[|X_t|] = \infty$ . However, the formulas for  $\Psi$  and  $L$  are the same as above.

Example 6.6.1 (Positive Stable Processes). Suppose that  $0 < \beta < 1$  and  $\mu$  is defined by

$$
d \mu (x) = c x^{- (1 + \beta)} d x, \quad 0 <   x <   \infty ,
$$

where  $c > 0$ . In other words, the probability of a jump of size between  $x$  and  $x + \Delta x$  in time  $\Delta t$ , is approximately

$$
c x^{- (1 + \beta)} (\Delta t) (\Delta x).
$$

Note that

$$
\begin{array}{l} \int_{\epsilon}^{\infty} c x^{- (1 + \beta)} d x = \frac{c}{\beta} \epsilon^{- \beta}, \\ \int_{0}^{1} x d \mu (x) = c \int_{0}^{1} x^{- \beta} d x = \frac{c}{1 - \beta} <   \infty , \\ \int_{0}^{\infty} x d \mu (x) = c \int_{0}^{\infty} x^{- \beta} d x = \infty . \\ \end{array}
$$

Therefore,  $\mu$  satisfies (6.16) and (6.17), but not (6.15). The corresponding generalized Poisson process has

$$
\Psi (s) = c \int_{0}^{\infty} [ e^{i s x} - 1 ] x^{- (1 + \beta)} d x.
$$

With careful integration, this integral can be computed but we omit it. Using the change of variables  $y = rx$ , we can see that if  $r > 0$ , then

$$
\Psi (r s) = c \int_{0}^{\infty} [ e^{i r s x} - 1 ] x^{- (1 + \beta)} d x = c r^{\beta} \int_{0}^{\infty} [ e^{i s y} - 1 ] y^{- (1 + \beta)} d y.
$$

This implies that the distribution of  $rX_{1}$  is the same as that of  $X_{r^{\beta}}$ . In particular,  $X_{1 / n}$  has the same distribution as  $n^{-1 / \beta}X_{1}$  and hence we can write

$$
X_{1} = \frac{Z_{1} + \cdots + Z_{n}}{n^{1 / \beta}}, Z_{j} = n^{1 / \beta} [ X_{j / n} - X_{(j - 1) / n} ],
$$

where  $Z_{1},\ldots ,Z_{n}$  are independent with the same distribution as  $X_{1}$ . The process  $X_{t}$  is called the positive stable process with exponent  $\beta$ .

Example 6.6.2 (Gamma process). Suppose  $\lambda >0$  and  $\mu$  is defined by

$$
d \mu (x) = \frac{e^{- \lambda x}}{x} d x, 0 <   x <   \infty .
$$

Note that

$$
\int_{0}^{\infty} d \mu (x) = \infty , \quad \int_{0}^{\infty} x d \mu (x) <   \infty .
$$

Using a table of integrals, we can see that the characteristic exponent is

$$
\Psi (s) = \int_{0}^{\infty} [ e^{i s x} - 1 ] d \mu (x) = \int_{0}^{\infty} \frac{e^{(i s - \lambda) x} - e^{- \lambda x}}{x} d x = \log \frac{\lambda}{\lambda - i s}.
$$

In other words, the characteristic function of  $X_{t}$  is  $\phi_{X_t}(s) = [\lambda /(\lambda -is)]^t$ . This is the characteristic function of a Gamma random variable with parameters  $\lambda$  and  $t$ , that is, the density of  $X_{t}$  is

$$
f_{t} (x) = \frac{\lambda}{\Gamma (t)} (\lambda x)^{t - 1} e^{- \lambda x}, 0 <   x <   1,
$$

where

$$
\Gamma (t) = \int_{0}^{\infty} x^{t - 1} e^{- x} d x,
$$

is the Gamma function. Important values of  $t$  are the following.

- $X_{1}$  has the distribution of an exponential random variable with rate  $\lambda$ .  
- If  $n$  is a positive integer, then  $X_{n}$  has the distribution of the sum of  $n$  independent random variables each exponential with rate  $\lambda$ . If  $N_{s}$  is a Poisson process with rate  $\lambda$  with  $N_{0} = 0$ , then  $X_{n}$  has the same distribution as  $\inf \{ s : N_{s} = n \}$ .  
- If  $\lambda = 1/2$  and  $n$  is a positive integer, then  $X_{n/2}$  has a  $\chi^2$  distribution with  $n$  degrees of freedom, that is, it has the same distribution as

$$
Z_{1}^{2} + \dots + Z_{n}^{2},
$$

where  $Z_{1},\ldots ,Z_{n}$  are independent, standard normal random variables. The process  $X_{t}$  is called the Gamma process with parameter  $\lambda$

# 6.7 Generalized Poisson processes II

In the previous section, we assumed that the expected sum of the absolute values of the jump was finite. There are jump Lévy processes that do not satisfy this condition. These processes have many "small" jumps. Although the absolute values of the jumps are not summable, there is enough cancellation between the positive jumps and negative jumps to give a nontrivial process.

We will construct such a process associated to a Lévy measure  $\mu$  satisfying the following assumptions.

- For every  $\epsilon > 0$ , the number of jumps of absolute value greater than  $\epsilon$  in a finite time interval is finite. More precisely, if  $\mu_{\epsilon}$  denotes  $\mu$  restricted to  $\{|x| > \epsilon\}$ , then

$$
\mu_{\epsilon} (\mathbb{R}) = \mu \left\{x: | x | > \epsilon \right\} <   \infty \quad \text{forevery} \quad \epsilon > 0. \tag {6.18}
$$

- All jumps are bounded in absolute value by 1, that is,

$$
\mu \{x: | x | > 1 \} = 0. \tag {6.19}
$$

- The second moment of the measure is finite,

$$
\sigma^{2} := \int_{- \infty}^{\infty} x^{2} d \mu (x) <   \infty . \tag {6.20}
$$

Note that (6.20) can hold even if (6.15) does not hold.

Let

$$
m_{\epsilon} = \int_{- \infty}^{\infty} x d \mu_{\epsilon} (x) = \int_{\epsilon <   | x | \leq 1} x d \mu (x),
$$

which is finite and well defined for all  $\epsilon > 0$  by (6.18)-(6.20). For each  $\epsilon > 0$ , there is a CPP  $X_{t}^{\epsilon}$  associated to the measure  $\mu_{\epsilon}$  and a corresponding compensated Poisson process  $M_{t}^{\epsilon} = X_{t}^{\epsilon} - m_{\epsilon}t$ .

Definition Suppose  $\mu$  is a measure on  $\mathbb{R}$  satisfying (6.18)-(6.20). Then the compensated generalized Poisson process (CGPP) with Lévy measure  $\mu$  is given by

$$
Y_{t} = \lim_{\epsilon \downarrow 0} M_{t}^{\epsilon} = \lim_{\epsilon \downarrow 0} \left[ X_{t}^{\epsilon} - m_{\epsilon} t \right]. \tag {6.21}
$$

Two important cases are the following.

If

$$
\int_{- \infty}^{\infty} | x | d \mu (x) <   \infty ,
$$

then the (uncompensated) generalized Poisson process

$$
X_{t} = \lim_{\epsilon \downarrow 0} X_{t}^{\epsilon},
$$

as in the previous section exists. In this case

$$
Y_{t} = X_{t} - m t,
$$

where

$$
m = \lim_{\epsilon \downarrow 0} m_{\epsilon} = \int_{- \infty}^{\infty} x d \mu (x).
$$

- If  $\mu$  is symmetric about the origin, that is, if for every  $0 < a < b$  the rate of jumps with increments in  $[a,b]$  is the same as that of jumps in  $[-b,-a]$ , then  $m_{\epsilon} = 0$  for every  $\epsilon$  and

$$
Y_{t} = \lim_{\epsilon \downarrow 0} X_{t}^{\epsilon}.
$$

Proposition 6.7.1. If  $Y_{t}$  is a CGPP with Lévy measure  $\mu$ , then

$$
\Psi (s) = \int_{- 1}^{1} [ e^{i s x} - 1 - i s x ] d \mu (x),
$$

$$
L f (s) = \int_{- \infty}^{\infty} [ f (x + y) - f (x) - y f^{\prime} (x) ] d \mu (y).
$$

The latter quantity is defined provided that  $f$  is a  $C^2$  function. If also  $\mathbb{E}[f(Y_t)^2] < \infty$ , then

$$
M_{t} = f (Y_{t}) - \int_{0}^{t} L f (Y_{s}) d s
$$

is a square integrable martingale with

$$
\langle M \rangle_{t} = \sum_{s \leq t} [ f (Y_{s}) - f (Y_{s -}) ]^{2}.
$$

Proof. Let  $X^{\epsilon} = X_{1}^{\epsilon}$  and  $M^{\epsilon} = M_{1}^{\epsilon} = X^{\epsilon} - m_{\epsilon}$ . Let  $\Psi^{\epsilon} = \Psi_{M_{\epsilon}}$  and note that

$$
\Psi^{\epsilon} (s) = \Psi_{X_{\epsilon}} (s) - i m_{\epsilon} s = \int_{| x | > \epsilon} [ e^{i s x} - 1 ] d \mu (x) - i m_{\epsilon} s.
$$

Since

$$
m_{\epsilon} = \int_{| x | > \epsilon} x d \mu (x),
$$

we can write

$$
\Psi^{\epsilon} (s) = \int_{| x | > \epsilon} [ e^{i s x} - 1 - i s x ] d \mu (x).
$$

Using Taylor series, we see that  $|e^{isx} - 1 - isx| = O(s^2 x^2)$ , and hence (6.20) implies that for each  $s$ ,

$$
\int \left| e^{i s x} - 1 - i s x \right| d \mu (x) <   \infty .
$$

This allows us to use the dominated convergence theorem to conclude that

$$
\lim_{\epsilon \downarrow 0} \Psi^{\epsilon} (s) = \int_{- 1}^{1} [ e^{i s x} - 1 - i s x ] d \mu (x).
$$

Since  $Y = \lim_{\epsilon \downarrow 0} M^{\epsilon}$ , we can conclude that this limit equals  $\Psi(s)$ .

The second equation is obtained by taking the limit of (6.6).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/0b02acc3-26e4-4125-ae2f-f5fd9d2fbf41/85c9a49a50fe2a23a2e5df7ae22bb85d17028c5bf6fa559ebcbf4163c42c53a6.jpg)

A particular case of the proposition is  $f(x) = x$  in which we conclude that  $Y_{t}$  is a square integrable martingale with

$$
\langle Y \rangle_{t} = \sum_{s \leq t} [ Y_{s} - Y_{s -} ]^{2}.
$$

The same argument shows that the moment generating function also exists and

$$
\mathbb{E} [ e^{s Y_{t}} ] = \exp \left\{t \int_{- 1}^{1} [ e^{s x} - 1 - s x ] d \mu (x) \right\}, \quad s \in \mathbb{R}.
$$

In particular,  $\mathbb{E}[e^{sY_t}] < \infty$  for all  $s,t$ . (This is in contrast to CCPs for which this expectation could be infinite.)

We will establish existence of the limit in (6.21) both in  $L^2$  and with probability one. Let us first consider the case  $t = 1$ . Let

$$
Y^{\epsilon} = Y_{1}^{\epsilon} = X_{1}^{\epsilon} - m_{\epsilon}.
$$

It suffices to prove the existence of

$$
Y = \lim_{\epsilon \downarrow 0}Y^{\epsilon}.
$$

Let  $Z_{n} = Y^{2^{-n}} - Y^{2^{-(n + 1)}}$ , so that

$$
Y = \sum_{n = 0}^{\infty} Z_{n}.
$$

The random variables  $Z_{n}$  are independent, mean zero, and

$$
\sum_{n = 0}^{\infty} \mathrm{Var} [ Z_{n} ] <   \infty .
$$

Therefore  $\sum Z_{n}$  converges to a random variable  $Y$  in both  $L^2$  and with probability one (see Exercise 1.14). If  $2^{-n} \leq \epsilon < 2^{-n + 1}$ , then

$$
\mathbb{E} \left[ (Y^{\epsilon} - \sum_{k = 0}^{n} Z_{k})^{2} \right] \leq \int_{2^{- n}}^{2^{- n + 1}} x^{2} d \mu (x),
$$

which goes to zero as  $n\to \infty$  .Hence

$$
\lim_{\epsilon \downarrow 0} \mathbb{E} \left[ | Y^{\epsilon} - Y |^{2} \right] = 0.
$$

Convergence with probability one can be deduced from Lemma 6.3.3.

We now define  $Y_{q}$  as in (6.21) for  $q \in \mathcal{D}$  as the limit with probability one. For other  $t$  we define

$$
Y_{t +} = \lim_{q \downarrow t} Y_{q}, \quad Y_{t -} = \lim_{q \uparrow t} Y_{q}. \tag {6.22}
$$

Here we use the shorthand that when  $q$  is the index, the limit is taken over  $\mathcal{D}$  only. Define the jump time  $\mathcal{T}_{\epsilon}$  to be the set of times  $s$  such that  $X^{\epsilon}$  is discontinuous and  $\mathcal{T} = \cup_{j=1}^{\infty} \mathcal{T}_{1/j}$ . With probability one each  $\mathcal{T}_{\epsilon}$  is finite and hence  $\mathcal{T}$  is countable.

Proposition 6.7.2. With probability one, the limits in (6.22) exist for all  $t$ . Moreover, they are equal unless  $t \in \mathcal{T}$ .

Proof. Let

$$
S_{\epsilon}^{2} = \mathbb{E} \left[ (Y - Y_{\epsilon})^{2} \right] = \int_{| x | \leq \epsilon} x^{2} d \mu (x).
$$

Let

$$
M^{\epsilon} = \sup  \left\{\left| Y_{q} - Y_{q}^{\epsilon} \right|: q \in \mathcal{D}, q \leq 1 \right\}.
$$

Using Lemma 6.3.3 (first for  $Y_{t}^{\delta} - Y_{t}^{\epsilon}$  and then letting  $\delta \downarrow 0$ ), we can see that

$$
\mathbb{P} \{M \geq a \} \leq \frac{S_{\epsilon}^{2}}{a^{2}}.
$$

We can find  $\epsilon_{n} \downarrow 0$  such that

$$
\sum_{n = 1}^{\infty} n^{2} S_{\epsilon_{n}}^{2} <   \infty .
$$

Then if  $M_{n} = M^{\epsilon_{n}}$ , by the Borel-Cantelli lemma, with probability one, for all  $n$  sufficiently large  $M_{n} \leq 1 / n$  and this inequality implies that for all  $t$ ,

$$
\left| \operatorname * {l i m s u p}_{q \downarrow t} Y_{q +} - \operatorname * {l i m s u p}_{q \downarrow t} Y_{q +}^{\epsilon_{n}} \right| \leq \frac{1}{n}.
$$

Similar estimates hold for the liminf and for limits from the left.

We now define  $Y_{t}$  for all  $t$  by  $Y_{t} = Y_{t+}$ , and then the paths of  $Y_{t}$  are cadlag.

# 6.8 The Lévy-Khinchin characterization

The next theorem tells us that all Lévy processes can be given as independent sums of the processes we have described.

Theorem 6.8.1. Suppose  $X_{t}$  is a Lévy process with  $X_0 = 0$ . Then  $X_{t}$  can be written as

$$
X_{t} = m t + \sigma B_{t} + C_{t} + Y_{t}, \tag {6.23}
$$

where  $m\in \mathbb{R},\sigma \geq 0$  , and  $B_{t},C_{t},Y_{t}$  are independent of the following types:

- $B_{t}$  is a standard Brownian motion,  
- $C_t$  is a compound Poisson process with Lévy measure  $\mu_C$  satisfying

$$
\mu_{C} \{| x | \leq 1 \} = 0,
$$

$$
\mu_{C} (\mathbb{R}) = \mu_{C} \{| x | > 1 \} <   \infty ,
$$

- $Y_{t}$  is a compensated generalized Poisson process with Lévy measure  $\mu_{Y}$  satisfying

$$
\mu_{Y} (\{0 \}) = 0, \quad \mu_{Y} \{| x | > 1 \} = 0,
$$

$$
\int_{- \infty}^{\infty} x^{2} d \mu_{Y} (x) <   \infty .
$$

The process  $C_t + Y_t$  is called a pure jump Lévy process. We can summarize the theorem by saying that every Lévy process is the independent sum of a Brownian motion (with mean  $m$  and variance  $\sigma^2$ ) and a pure jump process (with Lévy measure  $\mu = \mu_C + \mu_Y$ .)

We have not included the generalized Poisson process in our decomposition (6.23). If  $X_{t}$  is such a process we can write it as

$$
X_{t} = C_{t} + \hat {X}_{t}
$$

where  $C_t$  denotes the sum of jumps of absolute value greater than one. Then we can write  $\hat{X}_t = Y_t + \hat{m} t$  where  $Y_t$  is a compensated generalized Poisson process and  $\hat{m} = \mathbb{E}[\hat{X}_1]$ , which by the assumptions is finite.

The conditions on  $\mu_C, \mu_Y$  can be summarized as follows:

$$
\mu (\{0 \}) = 0, \quad \int_{- \infty}^{\infty} [ x^{2} \wedge 1 ] d \mu (x) <   \infty . \tag {6.24}
$$

To specify the distribution of a Lévy processes, one needs to give  $m \in \mathbb{R}$ ,  $\sigma > 0$  and a measure  $\mu$  satisfying (6.24). We then set  $\mu_{C}$  to be  $\mu$  restricted to  $\{|x| > 1\}$  and  $\mu_{Y}$  to be  $\mu$  restricted to  $\{|x| \leq 1\}$ . We have already shown that  $(m, \sigma, \mu)$  determine a Lévy process. To prove the theorem, therefore, we need to show that any Lévy process can be written like this.

We will not give the entire proof of this theorem, but let us sketch how one derives it. Suppose  $X_{t}$  is a Lévy process. Suppose that the process has jumps. For every  $a > 0$ , we can write

$$
X_{t} = \hat {X}_{t, a} + \hat {C}_{t, a},
$$

where  $\hat{C}_{t,a}$  denotes the movement by jumps of absolute value greater than  $a$  and  $\hat{X}_{t,a}$  denotes a Lévy process with all jumps bounded by  $a$ . For each  $a$  one can show that  $\hat{C}_{t,a}$  is a CPP independent of  $\hat{X}_{t,a}$ . We let  $a$  go to zero, and after careful analysis we see that

$$
X_{t} = Z_{t} + C_{t, 1} + Y_{t},
$$

where  $Y_{t}$  is compensated generalized Poisson process and  $Z_{t}$  is a Lévy process with continuous paths. We then show that  $Z_{t}$  must be a Brownian motion. The following theorem is related and proved similarly.

Theorem 6.8.2. (Levy-Khinchin) If  $X$  has an infinitely divisible distribution, then there exist  $m, \sigma, \mu_C, \mu_Y$  satisfying the conditions of Theorem 6.8.1 such that

$$
\begin{array}{l} \Psi_{X} (s) = i m s - \frac{\sigma^{2}}{2} s^{2} + \int_{| x | > 1} \left[ e^{i s x} - 1 \right] d \mu_{C} (x) \\ + \int_{| x | \leq 1} \left[ e^{i s x} - 1 - i s x \right] d \mu_{Y} (x). \\ \end{array}
$$

We show how to prove this theorem and then prove another theorem which is a key step in the proof of Theorem 6.8.1.

Here we will show that if  $X$  has an infinitely divisible distribution, then the characteristic function of  $X$  can be written as  $\phi(s) = e^{\Psi(s)}$  where

$$
\Psi (s) = i m s - \frac{\sigma^{2} s}{2} + \int [ e^{i s x} - 1 - i s x 1 \{| x | \leq 1 \} ] \mu (d x),
$$

where  $m\in \mathbb{R},\sigma^2\geq 0$  , and  $\mu$  is a measure on  $\mathbb{R}$  with  $\mu \{0\} = 0$  and

$$
\int \frac{x^{2}}{1 + x^{2}} \mu (d x) <   \infty .
$$

We fix  $X$  and allow all constants to depend on the distribution of  $X$ . Let  $s_0$  be such that  $|\phi(s) - 1| \leq 1/2$ ,  $s \leq s_0$ .

Since  $X$  is infinitely divisible we can write

$$
X = Y_{1, n} + \dots + Y_{n, n},
$$

where  $Y_{1,n}, \ldots, Y_{n,n}$  are i.i.d. We write  $\mu_n$  for the distribution of  $Y_{1,n}$  and  $\nu_n = n\mu_n$ . We let  $\tilde{Y}_{j,n} = Y_{j,n}$ $1\{|Y_{j,n}| \leq 1\}$  and let

$$
\tilde {m}_{n} = \mathbb{E} [ \tilde {Y}_{j, n} ], \quad \tilde {\sigma}_{n}^{2} = \mathrm{Var} [ \tilde {Y}_{j, n} ].
$$

Let  $\phi_n(s) = e^{\Psi_n(s)}$  denote the characteristic function of  $Y_{1,n}$  and note that  $\phi (s) = \phi_n(s)^n$ . It suffices to find  $m,\sigma^2,\mu$  and a subsequence  $n_j$  such that for  $|s|\leq s_0$

$$
\lim_{j \to \infty} n_{j} \Psi_{n_{j}} (s) = i m s - \frac{\sigma^{2} s}{2} + \int [ e^{i s x} - 1 - i s x 1 \{| x | \leq 1 \} ] \mu (d x). (6. 25)
$$

# Lemma 6.8.3.

- For all  $\epsilon > 0$ , there exists  $M_{\epsilon} < \infty$  such that for all  $n$ ,  $\nu_{n}\{|x| \geq M_{\epsilon}\} \leq \epsilon$ .  
- For every  $y > 0$ , there exists  $r < \infty$  such that for all  $n$ ,  $\nu_n\{|x| \geq y\} \leq r$ .

$$
\sup_{n} n \left[ \tilde {\mu}_{n} + \tilde {\sigma}_{n}^{2} \right] <   \infty .
$$

Proof. By symmetry it suffices to estimate  $\nu_{n}\{x\geq r\}$ . We first make the easy observation that for every  $r < \infty$ , for all  $n$  sufficiently large  $\mu_n(-\infty ,1)\geq r / n$ . Indeed, if this were not true, then there exists a subsequence  $n_j$  such that with probability at least

$$
\left(1 - \frac{r}{n_{j}}\right)^{n_{j}} \sim e^{- r}
$$

we would have  $Y_{j,n_j} \geq 1$  for  $j = 1, \ldots, n_j$  which implies that with positive probability  $X = \infty$ .

Let  $M, r < \infty$  and let  $q_{n} = \min \{r / n, \mu_{n}[M, \infty)\}$  and for  $n > 2 / r$  define  $\delta_{n}^{\pm}$  to be the infimum (supremum) of all numbers such that

$$
\mathbb{P} \{Y_{1, n} \geq \delta_{n}^{+} \} \leq q_{n}, \quad \mathbb{P} \{Y_{1, n} \leq \delta_{n}^{-} \} \leq q_{n}.
$$

Using this we can find a random variable with the same distribution as  $Y_{1,n}$  by the following.

- With probability  $1 - 2q_{n}$  choose from distribution  $\rho_{1}$  and with probability  $2q_{n}$  choose from distribution  $\rho_{2}$ .  
- Distribution  $\rho_{2}$  satisfies  $\rho_{2}(-\infty, 1] = \frac{1}{2}, \rho_{2}[M, \infty) = \frac{1}{2}$ .

By focusing on the first time that one chooses from  $\rho_{2}$  we see that the conditional distribution on a set of probability  $p_n \coloneqq 1 - (1 - q_n)^n$  has a "spread" of at least  $M - 1$ . Another way of saying this is that if  $x$  is the median of the distribution of the sum of the remaining terms, there is probability at last  $p_n / 4$  of being less than  $x + 1$  and probability at last  $p_n / 4$  of being greater than  $x + M$ .

If  $a > 0$ , let  $r_n = n\mathbb{P}\{a \leq Y_{1,n}\}$  and assume  $r_n \geq 1$ . Using the first part we can find  $b$  (independent of  $n, a$ ) with  $\mathbb{P}\{a \leq Y_{1,n} \leq b\} \geq r_n / (2n)$ . If  $0 < s < 1 / 2b$ , then

$$
\left| 1 - e^{i y s} \right| \geq c y^{2} s^{2}, \quad 0 \leq | y | \leq b.
$$

Find  $0 \leq s \leq 1/2b$  such that  $|\phi(s)| \geq 1/e$ . We have for  $n$  sufficiently large

$$
| \phi_{n} (s) | \leq 1 - \frac{c s^{2} a^{2} r_{n}}{2 n}.
$$

and hence

$$
\liminf_{n\to \infty}2ncs^{2}a^{2}r_{n}\leq 1.
$$

Let  $Y_{n} = \sum_{j}\tilde{Y}_{1,n}$ . Using the second part, we see that  $\mathbb{P}\{\tilde{Y}_{j,n} = Y_{j,n}, j = 1,\dots ,n\} \geq c$ , and hence the  $\{Y_{n}\}$  are tight, that is, for every  $\epsilon >0$ , there exists  $K_{\epsilon}$  such that for all  $n$ ,  $\mathbb{P}\{|Y_{j,n}| > K_{\epsilon}\} < \epsilon$ . Chebyshev's inequality gives

$$
\mathbb{P} \left\{| Y_{n} | \leq \frac{n | \tilde {m}_{n} |}{2} \right\} \leq \mathbb{P} \left\{| Y_{n} - n \tilde {m}_{n} | \geq \frac{n | \tilde {m}_{n} |}{2} \right\} \leq \frac{4 n \tilde {\sigma}_{n}^{2}}{n^{2} \tilde {m}_{n}^{2}}.
$$

If  $n\tilde{\sigma}_n^2$  is bounded and  $n_j$  is a subsequence with  $n_j|\tilde{m}_{n_j}| \to \infty$ , then we would have

$$
\limsup_{y \to \infty} \mathbb{P} \left\{| Y_{n_{j}} | \geq \frac{n_{j} | \tilde {m}_{n_{j}} |}{2} \right\} = 1,
$$

which contradicts the tightness of  $Y_{n}$ . Suppose  $n_j\tilde{\sigma}_{n_j}^2\to \infty$ . Then tightness gives that  $|\tilde{m}_{n_j}|^2 = o(\tilde{\sigma}_{n_j}^2)$  and hence  $\mathbb{E}[|\tilde{Y}_{1,n_j}|^3 ]\leq \mathbb{E}[\tilde{Y}_{1,n_j}^2 ]\sim \tilde{\sigma}_{n_j}^2$ . To be a bit more precise, we would assume that

$$
\frac{Y_{n} - n \tilde {m}_{n}}{\sqrt{n \tilde {\sigma}_{n}^{2}}}
$$

would approach a normal distribution. If  $n\tilde{\sigma}_n^2 \to \infty$  this would indicate that  $Y_{n}$  is not tight and one can make this precise with the Berry-Esseen theorem (using the upper bound on the third moment). Hence  $n\tilde{\sigma}_n^2$  is bounded and hence  $n|\tilde{m}_n|$  is bounded.

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/0b02acc3-26e4-4125-ae2f-f5fd9d2fbf41/99b58b5fed0b7d28c74230f757a213ac52568926213254e8971af1db47c9c2f4.jpg)

Using the lemma we can find a measure  $\mu$  with  $\mu\{0\} = 0$  and a subsequence  $n_j$  such that for all bounded continuous functions  $f$  that vanish in a neighborhood of the origin,

$$
\lim_{j \to \infty} \int f (x) \nu_{n_{j}} (d x) = \int f (x) \mu (d x).
$$

By taking a subsubsequence if necessary we can also conclude that there exists  $\tilde{m},\tilde{\sigma}^2$  such that

$$
\lim_{j \to \infty} n_{j} \tilde {m}_{n_{j}} = \tilde {m}, \quad \lim_{j \to \infty} n_{j} \sigma_{n_{j}}^{2} = \tilde {\sigma}^{2}.
$$

We will assume that  $\mu\{-1,1\} = 0$ . If this is not the case, find  $b$  with  $\mu\{-b,b\} = 0$  and do the proof similarly defining  $\tilde{Y}_{1,n} = Y_{1,n}$ $1\{| \tilde{Y}_{1,n} | \leq b\}$ . We will establish (6.25) with this  $\mu$ ,  $m = \tilde{m}$  and

$$
\sigma^{2} = \tilde {\sigma}^{2} - \int_{| x | \leq 1} x^{2} \mu (d x).
$$

For the remainder we fix  $s$  with  $|s| \leq s_0$  and allow constants to depend on  $s$ . We note that

$$
\left| \phi_{n} (s) - 1 \right| \leq c / n,
$$

and hence

$$
\phi (s) = [ 1 + \phi_{n} (s) - 1 ]^{n} = \exp \left\{n (\phi_{n} (s) - 1) \right\} [ 1 + O (n^{- 1}) ],
$$

$$
\begin{array}{l} \Psi (s) + O \left(n^{- 1}\right) = n \left[ \phi_{n} (s) - 1 \right] \\ = \int [ e^{i s x} - 1 ] \nu_{n} (d x) \\ { = } { i s n \tilde { m }_{ n } + \int [ e^{ i s x } - 1 - i s x 1 \{ | x | \leq 1 \} ] \nu_{ n } ( d x ) . } \\ \end{array}
$$

$$
\lim_{j \to \infty} \int_{| x | > a} [ e^{i s x} - 1 - i s x g_{\epsilon} (x) ] \nu_{n_{j}} (d x) = \int_{| x | > a} [ e^{i s x} - 1 - i s x g_{\epsilon} ] \mu (d x).
$$

Using  $\mu\{-a, a - 1, 1\} = 0$  (to handle the discontinuity of the integrand at  $x = \pm a, \pm 1$ ), we can see that

$$
\begin{array}{l} \lim_{j \rightarrow \infty} \int_{| x | > a} \left[ e^{i s x} - 1 - i s x 1 \{| x | \leq 1 \} \right] \nu_{n_{j}} (d x) \\ = \int_{| x | > a} \left[ e^{i s x} - 1 - i s x 1 \left\{| x | \leq 1 \right\} \right] \mu (d x). \\ \end{array}
$$

Also,

$$
\begin{array}{l} \left| \int_{| x | \leq a} \left[ e^{i s x} - 1 - i s x 1 \{| x | \leq 1 \} \right] \nu_{n} (d x) + \frac{s^{2}}{2} \int_{| x | \leq a} x^{2} \nu_{n} (x) \right| \\ \leq c \int_{| x | \leq a} | x |^{3} \nu_{n} (d x) \\ \leq c a \int_{| x | \leq a} x^{2} \nu_{n} (d x) \\ <   c a. \\ \end{array}
$$

Also, as  $j\to \infty$  , again using  $\mu \{\pm a,\pm 1\} = 0$

$$
\begin{array}{l} \int_{| x | \leq a} x^{2} \nu_{n_{j}} (x) = \int_{| x | \leq 1} x^{2} \nu_{n_{j}} (x) - \int_{a <   | x | \leq 1} x^{2} \nu_{n_{j}} (x) \\ = o (1) + \tilde {\sigma}^{2} - \int_{a <   | x | \leq 1} x^{2} \mu (d x). \\ \end{array}
$$

By taking  $a \to 0$  at an appropriate rate, we see that

$$
\begin{array}{l} \lim_{j \rightarrow \infty} \int \left[ e^{i s x} - 1 - i s x 1 \left\{| x | \leq 1 \right\}\right] \nu_{n_{j}} (d x) \\ = - \frac{s^{2}}{2} \left[ \tilde {\sigma}^{2} - \int x^{2} 1 \{| x | \leq 1 \} \right] \mu (d x) \\ + \int \left[ e^{i s x} - 1 - i s x 1 \left\{| x | \leq 1 \right\} \right] \nu (d x). \\ \end{array}
$$

Theorem 6.8.4. Suppose  $X_{t}$  is a Lévy process with continuous paths. Then  $X_{t}$  is a Brownian motion.

Proof. All we need to show is that  $X_{1}$  has a normal distribution. Let

$$
X_{j, n} = X_{j / n} - X_{(j - 1) / n},
$$

$$
M_{n} = \max  \left\{\left| X_{j, n} \right|: j = 1, \dots , n \right\}.
$$

Continuity of the paths implies that  $M_{n} \to 0$  and hence for every  $a > 0$ ,  $\mathbb{P}\{M_n < a\} \to 1$ . Independence of the increments implies that

$$
\begin{array}{l} \mathbb{P} \{M_{n} <   a \} = \left[ 1 - \mathbb{P} \{| X_{1 / n} | \geq a \} \right]^{n} \\ \leq \exp \left\{- n \mathbb{P} \left\{| X_{1 / n} | \geq a \right\} \right\}. \\ \end{array}
$$

Therefore, for every  $a > 0$

$$
\lim_{n \rightarrow \infty} n \mathbb{P} \{| X_{1 / n} | \geq a \} = 0. \tag {6.26}
$$

This implies that there exists a sequence  $a_{n}\downarrow 0$  with

$$
\lim_{n \rightarrow \infty} n \mathbb{P} \{X_{1 / n} \geq a_{n} \} = 0. \tag {6.27}
$$

We claim that all the moments of  $X_{1}$  are finite. To see this let  $J = \max_{0\leq t\leq 1}|X_t|$  and find  $k$  such that  $\mathbb{P}\{J\geq k\} \leq 1 / 2$ . Then using continuity of the paths, by stopping at the first time  $t$  that  $|X_{t}| = nk$ , we can see that

$$
\mathbb{P} \{J \geq (n + 1) k \mid J \geq n k \} \leq 1 / 2,
$$

and hence

$$
\mathbb{P} \{J \geq n k \} \leq (1 / 2)^{n},
$$

from which finiteness of the moments follows. Let  $m = \mathbb{E}[X_1]$ ,  $\sigma^2 = \mathrm{Var}[X_1]$ , and note that  $\mathbb{E}[X_1^2] = m^2 + \sigma^2$ . Our goal is to show that  $X_1 \sim N(m, \sigma^2)$ .

Let

$$
\tilde {X}_{j, n} = X_{j, n} 1 \{| X_{j, n} | \leq a_{n} \}, \quad Z_{n} = \sum_{j = 1}^{n} \tilde {X}_{j, n}.
$$

Let  $\phi_{n}$  denote the characteristic function of  $\tilde{X}_{j,n}$  and hence  $[\phi_n]^n$  is the characteristic function of  $Z_{n}$ . It follows from (6.27) that  $Z_{n} \to X_{1}$  in distribution, so it suffices to prove that for every  $s$

$$
\lim_{n \rightarrow \infty} [ \phi_{n} (s) ]^{n} = \exp \left\{i m s - \frac{\sigma^{2} s^{2}}{2} \right\}.
$$

Also, it is easy to check that  $\mathbb{E}[Z_n] \to m$ ,  $\operatorname{Var}[Z_n] \to \sigma^2$  and hence

$$
\mathbb{E} [ \tilde {X}_{1, n} ] = \frac{m [ 1 + o (1) ]}{n}, \quad \mathbb{E} [ \tilde {X}_{1, n}^{2} ] = \left[ \frac{m^{2}}{n^{2}} + \frac{\sigma^{2}}{n} \right] (1 + o (1)).
$$

Also, since  $|\tilde{X}_{1,n}|\leq a_n$

$$
\mathbb{E} [ | \tilde {X}_{1, n} |^{3} ] \leq a_{n} \mathbb{E} [ \tilde {X}_{1, n}^{2} ] = a_{n} \left[ \frac{m^{2}}{n^{2}} + \frac{\sigma^{2}}{n} \right] [ 1 + o (1) ].
$$

(This estimate uses (6.27) which in turn uses the fact that the paths are continuous.) Using these estimates, we see that for fixed  $s$ ,

$$
\phi_{n} (s) = 1 + \frac{i m s}{n} - \frac{\sigma^{2} s^{2}}{2 n} + o \left(\frac{1}{n}\right),
$$

where the  $o(\cdot)$  term depend on  $s$ . This implies that

$$
\begin{array}{l} \lim_{n \rightarrow \infty} \phi_{n} (s)^{n} = \lim_{n \rightarrow \infty} \left[ 1 + \frac{i m s}{n} - \frac{\sigma^{2} s^{2}}{2 n} + o \left(\frac{1}{n}\right)\right]^{n} \\ = \exp \left\{i m s - \frac{\sigma^{2} s^{2}}{2} \right\}. \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/0b02acc3-26e4-4125-ae2f-f5fd9d2fbf41/7eba7240fd1088ec12a63869b25fdaca5b7695d0ba30adf093075dcc422aca36.jpg)

# 6.9 Integration with respect to Lévy processes

Suppose  $X_{t}$  is a Lévy process which by Theorem 6.8.1 we can write as

$$
X_{t} = m t + \sigma B_{t} + C_{t} + Y_{t}.
$$

We will define the integral

$$
\int_{0}^{t} A_{s} X_{s}
$$

by

$$
m \int_{0}^{t} A_{s} d s + \sigma \int_{0}^{t} A_{s} d B_{s} + \int_{0}^{t} A_{s} d C_{s} + \int_{0}^{t} A_{s} d Y_{s}.
$$

The first integral is a Riemann integral, the second is an Itô integral as in Chapter 3, the third integral was defined in Section 6.4, and this leaves us only the fourth integral to define. As we saw in Section (6.4), the third integral does not have the properties we want unless we assume that  $A_{t}$  is left continuous. The same problems exist for the fourth integral so we will restrict to such processes.

Assume that  $Y_{t}$  is a process with Lévy measure  $\mu$  satisfying (6.18)-(6.20). Then  $Y_{t}$  is a square integrable martingale with  $\mathbb{E}[Y_t] = \sigma^2 t$  (this is not the same  $\sigma$  as in the previous paragraph). This will allow us to define

$$
\int_{0}^{t} A_{s} d Y_{s}
$$

as an Itô integral as in Chapter 3.

We start with simple processes. Suppose  $A_{t}$  is a simple process as in Section 3.2.2. To be specific, suppose that times  $0 \leq t_0 < t_1 < \dots < t_n < \infty$  are given, and  $A_{s} = A_{t_{j}}$  for  $t_j \leq s < t_{j + 1}$ . Then, we define

$$
\int_{0}^{t} A_{s} d Y_{s} = \sum_{i = 0}^{j - 1} A_{t_{i}} \left[ Y_{t_{i + 1}} - Y_{t_{i}} \right] + A_{t_{j}} \left[ Y_{t} - Y_{t_{j}} \right].
$$

With probability one, the paths of  $Y_{t}$  are continuous at the times  $t_1, \ldots, t_n$  so the definition above does not care whether we choose the simple process  $A_{s}$  to be right continuous or left continuous. The following proposition is proved in the same way as Proposition 3.2.1.

Proposition 6.9.1. Suppose  $A_t, \hat{A}_t$  are bounded simple processes adapted to the filtration of the process  $Y_t$ .

- Linearity. If  $a, b$  are constants, then  $aA_{t} + b\hat{A}_{t}$  is also a simple process and

$$
\int_{0}^{t} \left(a A_{s} + b \hat {A}_{s}\right) d Y_{s} = a \int_{0}^{t} A_{s} d Y_{s} + b \int_{0}^{t} \hat {A}_{s} d Y_{s}.
$$

Moreover, if  $0 < r < t$ ,

$$
\int_{0}^{t} A_{s} d s = \int_{0}^{r} A_{s} d Y_{s} + \int_{r}^{t} A_{s} d Y_{s}.
$$

- Martingale property. The process

$$
Z_{t} = \int_{0}^{t} A_{s} d Y_{s}
$$

is a martingale with respect to  $\{\mathcal{F}_t\}$ .

- Variance rule.  $Z_{t}$  is square integrable and

$$
\mathrm{Var} [ Z_{t} ] = \sigma^{2} \mathbb{E} \left[ Z_{t}^{2} \right] = \int_{0}^{t} \mathbb{E} [ A_{s}^{2} ] d s.
$$

- Cadlag paths. With probability one, the function  $t \mapsto Z_t$  is cadlag.

We now suppose that  $A_{s}$  is an adapted process with left continuous paths. If  $\tilde{A}_{s}$  is an adapted process with càdlag paths, we could take  $A_{s} = \tilde{A}_{s-}$ . We approximate  $A_{s}$  by a simple process  $A_{s}^{(n)}$  by choosing

$$
A_{s}^{(n)} = 2^{n} \int_{(j - 1) 2^{- n}}^{j 2^{- n}} A_{r} d r \qquad \text{if} \frac{j}{2^{n}} <   r \leq \frac{j + 1}{2^{n}}.
$$

The integral is defined by

$$
\int_{0}^{t} A_{s} d Y_{s} = \lim_{n \rightarrow \infty} \int_{0}^{t} A_{s}^{(n)} d Y_{s}.
$$

Let us give be more precise about this definition. Suppose that  $A_{t}$  is a process with left continuous paths with right limits, that is, the left continuous version of a processes with cadlag paths. Assume that exists  $K < \infty$  such that with probability one.  $|A_{t}| \leq K$  for all  $t$ . Since with probability one, the paths are left continuous, we know that

$$
\lim_{n \to \infty} A_{t}^{(n)} = A_{t}.
$$

Since  $|A_t^{(n)}| \leq K$ , we can use dominated convergence (for Lebesgue measure) to show that with probability one,

$$
\lim_{n \to \infty} \int_{0}^{t} | A_{s}^{(n)} - A_{s} |^{2} d s = 0,
$$

and dominated convergence for  $\mathbb{P}$  to see that

$$
\lim_{n \to \infty} \mathbb{E} \left[ \int_{0}^{t} | A_{s}^{(n)} - A_{s} |^{2} d s \right] = \lim_{n \to \infty} \int_{0}^{t} \mathbb{E} \left[ | A_{s}^{(n)} - A_{s} |^{2} \right] d s = 0.
$$

As in the case for Brownian motion, we use the proposition to see that for fixed  $t$ , the sequence of random variables

$$
Z_{t}^{(n)} := \int_{0}^{t} A_{s}^{(n)} d A_{s},
$$

is a Cauchy sequence in  $L^2$  and has a limit  $Z_{t}$  in  $L^2$ .

We use this method to define the integral at dyadic times  $t$ , an we define it at other times by

$$
Z_{t} = \lim_{t_{n} \downarrow t} Z_{t_{n}}
$$

where  $t_n$  are dyadic rationals.

# 6.10 Symmetric stable process

An important example of a Lévy process is the symmetric stable process. A random variable  $X$  has a symmetric stable distribution with parameter  $\alpha \in (0,2]$  if  $\Psi_X(s) = -|cs|^{\alpha}$  for some  $c > 0$ . If  $\alpha = 2$ , this means that  $X$  has a normal distribution with mean zero and variance  $2c^2$ . For  $0 < \alpha < 2$  these distributions arise in Lévy processes that we call symmetric  $\alpha$ -stable processes. The term stable comes from the following property.

Proposition 6.10.1. If  $X$  has a symmetric  $\alpha$ -stable distribution and  $X_{1},\ldots ,X_{n}$  are independent random variables with the same distribution as  $X$ , then  $X$  has the same distribution as

$$
Y = \frac{X_{1} + \cdots + X_{n}}{n^{1 / \alpha}}.
$$

Proof. Using properties of characteristic functions, we get

$$
\Psi_{Y} (s) = \sum_{j = 1}^{n} \Psi_{X_{j}} (s / n^{1 / \alpha}) = n \Psi_{X} (s / n^{1 / \alpha}) = \Psi_{X} (s).
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/0b02acc3-26e4-4125-ae2f-f5fd9d2fbf41/e7992d42951d749d0aa365d4810350b8da1a52a4c69f7f588ebef76bb4130ccd.jpg)

Definition If  $0 < \alpha \leq 2$ , then a Lévy process  $X_{t}$  is a symmetric stable process if

$$
\Psi (s) = - | c s |^{\alpha}
$$

for some  $c > 0$

Proposition 6.10.2. Suppose  $0 < \alpha < 2$ ,  $C > 0$  and  $X_{t}$  is a Lévy process with Lévy measure

$$
d \mu (x) = \frac{C}{| x |^{1 + \alpha}} d x. \tag {6.28}
$$

Then  $X_{t}$  is a symmetric  $\alpha$ -stable process with  $\Psi(s) = -Cb_{\alpha}|s|^{\alpha}$  where

$$
b_{\alpha} = 2 \int_{0}^{\infty} \frac{1 - \cos y}{y^{1 + \alpha}} d y <   \infty .
$$

The condition  $0 < \alpha < 2$  is needed to guarantee that  $\mu$  as defined in (6.28) satisfies (6.24). Since  $1 - \cos(y) = O(y^2)$  as  $y \to 0$ , we can see that  $b_{\alpha}$  is finite. In fact, it can be calculated

$$
b_{\alpha} = \frac{\pi}{\Gamma (\alpha + 1) \sin (\alpha \pi / 2)},
$$

where  $\Gamma$  denotes the Gamma function. The proof of the proposition is a simple computation. We write

$$
\Psi (s) = C \int_{| x | \leq 1} [ e^{i s x} - 1 - i s x ] \frac{d x}{| x |^{1 + \alpha}} + C \int_{| x | > 1} [ e^{i s x} - 1 ] \frac{d x}{| x |^{1 + \alpha}}.
$$

Using  $e^{isx} = \cos (sx) + i\sin (sx)$  and the fact that  $\mu$  is symmetric about the origin, we see that

$$
\begin{array}{l} \Psi (s) = 2 C \int_{0}^{\infty} \frac{\cos (s x) - 1}{x^{1 + \alpha}} d x \\ = 2 C | s |^{\alpha} \int_{0}^{\infty} \frac{\cos (y) - 1}{y^{1 + \alpha}} d y = - C b_{\alpha} | s |^{\alpha}. \\ \end{array}
$$

Suppose  $X_{t}$  has a symmetric  $\alpha$ -stable process with Lévy measure as in (6.28) with  $C = 1 / b_{\alpha}$ . It can be shown that  $X_{1}$  has a symmetric density  $g_{\alpha}$ ,

$$
\mathbb{P} \{a \leq X \leq b \} = \int_{a}^{b} g_{\alpha} (x) d x.
$$

This density is bounded. Unfortunately, except for the case  $\alpha = 1$ , there is no explicit form expression for the density. Despite this fact, it is known that

$$
g_{\alpha} (x) \sim \frac{1}{| x |^{1 + \alpha}}, \quad | x | \to \infty ,
$$

and hence

$$
\mathbb{P} \{| X_{1} | \geq K \} \sim \int_{| x | \geq K} g_{\alpha} (x) d x = \frac{2}{\alpha K^{\alpha}}.
$$

This comes from the fact that the easiest way for  $|X_1|$  to be unusually large is for there to be a single very large jump, and the probability of a jump of size at least  $K$  by time one is asymptotic to  $\mu \{|x| \geq K\}$ .

If  $\alpha = 1$ , then  $b_{\alpha} = \pi$  and the corresponding Lévy measure is

$$
d \mu (x) = \frac{1}{\pi x^{2}}.
$$

The density of  $X_{1}$  is the Cauchy density

$$
g_{1} (x) = \frac{1}{\pi (x^{2} + 1)}.
$$

The easiest way to check this is to compute the characteristic function of  $g_{t}$  and obtain  $e^{-|s|}$ .

Symmetric stable distribution arises as limit distributions for sums of symmetric random variables with "heavy tails". The next proposition gives one version.

Proposition 6.10.3. Suppose  $\alpha, c > 0$  and  $X_1, X_2, \ldots$  are independent, identically distributed random variables with a bounded density  $f$  satisfying  $f(x) = f(-x)$  and

$$
f (x) \sim \frac{c}{x^{1 + \alpha}}, \quad x \rightarrow \infty , \tag {6.29}
$$

where  $\sim$  means the ratio of the two sides converges to one.

- If  $0 < \alpha < 2$ , and

$$
Z_{n} = \frac{X_{1} + \cdots + X_{n}}{n^{1 / \alpha}}, \tag {6.30}
$$

then  $Z_{n}$  converges in distribution to an  $\alpha$ -symmetric random variable.

- If  $\alpha > 2$ , and

$$
Z_{n} = \frac{X_{1} + \cdots + X_{n}}{\sqrt{n}},
$$

then  $Z_{n}$  converges in distribution to a centered normal random variable.

- If  $\alpha = 2$ , and

$$
Z_{n} = \frac{X_{1} + \cdots + X_{n}}{\sqrt{n \log n}},
$$

then  $Z_{n}$  converges in distribution to a centered normal random variable.

If  $\alpha > 2$ , then  $\operatorname{Var}[X_j] < \infty$ , and hence the result is a restatement of the central limit theorem.

We will prove the proposition for  $0 < \alpha < 2$ . Our first observation is that if  $X_{1}, X_{2}, \ldots$  are independent, identically distributed random variables whose characteristic exponent  $\Psi$  satisfies

$$
\Psi (s) = - r | s |^{\alpha} + o \left(| s |^{\alpha}\right), \quad s \rightarrow 0, \tag {6.31}
$$

then  $Z_{n}$  as defined in (6.30) converges to an  $\alpha$ -stable distribution. This follows since for each  $s$ ,

$$
\lim_{n \to \infty} \Psi_{Z_{n}} (s) = \lim_{n \to \infty} n \Psi (s / n^{1 / \alpha}) = - r | s |^{\alpha}.
$$

Therefore, we only need to show that (6.29) implies (6.31).

Let  $\phi$  denote the characteristic function of  $X_{1}$ , and note that  $-\Psi(s) = -\log \phi(s) \sim \phi(s) - 1$  as  $s \to 0$ . By changing variables, we see that if  $s > 0$ ,

$$
\begin{array}{l} \phi (s) - 1 = \int_{- \infty}^{\infty} [ e^{i s x} - 1 ] f (x) d x \\ = 2 \int_{0}^{\infty} [ \cos (s x) - 1 ] f (x) d x \\ = 2 s^{- 1} \int_{0}^{\infty} [ \cos y - 1 ] f (y / s) d y \\ = 2 s^{\alpha} \int_{0}^{\infty} [ \cos y - 1 ] s^{- (1 + \alpha)} f (y / s) d y \\ \end{array}
$$

We claim that

$$
\lim_{s \downarrow 0} \int_{0}^{\infty} [ \cos y - 1 ] s^{- (1 + \alpha)} f (y / s) d y = c I,
$$

where

$$
I = \int_{0}^{\infty} \frac{\cos y - 1}{y^{1 + \alpha}} d y,
$$

from which (6.31) follows with  $r = 2cI$ . To see this, let  $\epsilon = (2 - \alpha) / 6 > 0$  and note that

$$
\begin{array}{l} \left| \int_{0}^{s^{1 - \epsilon}} [ \cos y - 1 ] s^{- (1 + \alpha)} f (y / s) d y \right| \leq C s^{- (1 + \alpha)} \int_{0}^{s^{1 - \epsilon}} y^{2} d y \\ \leq C s^{(2 - \alpha) / 2} \longrightarrow 0. \\ \end{array}
$$

Also, for  $y \geq s^{1 - \epsilon}$ ,

$$
f (y / s) = c (y / s)^{- (1 + \alpha)} [ 1 + o (1) ],
$$

and hence

$$
\begin{array}{l} \lim_{s \downarrow 0} \int_{s^{1 - \epsilon}}^{\infty} [ \cos y - 1 ] s^{- (1 + \alpha)} f (y / s) d y \\ = c \lim_{s \downarrow 0} \int_{s^{1 - \epsilon}}^{\infty} [ \cos y - 1 ] y^{- (1 + \alpha)} d y = c I. \\ \end{array}
$$

Proposition 6.10.3 only uses stable processes for  $\alpha \leq 2$ . The next proposition that shows that there are no nontrivial stable process for  $\alpha > 2$ .

Proposition 6.10.4. Suppose  $0 < \beta < 1/2$ , and  $X_1, X_2, \ldots$  are independent, identically distributed each having the same distribution as

$$
\frac{X_{1} + \cdots + X_{n}}{n^{\beta}}.
$$

Then  $\mathbb{P}\{X_j = 0\} = 1$

We use the following lemma to prove Proposition 6.10.4.

Lemma 6.10.5. Suppose  $X$  is a nonconstant random variable with characteristic function  $\phi$ . Then there exists  $\epsilon > 0$  such that if  $|s| \leq \epsilon$ , then

$$
\left| \phi (s) \right| \leq 1 - \epsilon s^{2}.
$$

Proof. Let us first assume that  $X$  is bounded with mean  $m$  and variance  $\sigma^2 > 0$ . Then, the characteristic function satisfies

$$
\phi (s) = e^{i m s} \left[ 1 - \frac{\sigma^{2}}{2} s^{2} + O (| s |^{3}) \right], \quad s \downarrow 0,
$$

and hence there exists  $\epsilon > 0$  such that

$$
\left| \phi (s) \right| \leq \left| 1 - \frac{\sigma^{2}}{4} s^{2} \right|, \quad \left| s \right| \leq \epsilon .
$$

For general nonconstant  $X$ , we can find a bounded interval  $I$  such that  $\mathbb{P}\{X \in I\} = \rho > 0$  and such the variance  $\sigma^2$  of the conditional distribution given  $X \in I$  is positive. Then,

$$
\phi (s) = \rho \mathbb{E} [ e^{i s X} \mid X \in I ] + (1 - \rho) \mathbb{E} [ e^{i s X} \mid X \notin I ].
$$

There exists  $\epsilon > 0$  such that if  $|s| \leq \epsilon$ ,  $|\mathbb{E}[e^{isX} \mid X \in I]| \leq 1 - (\sigma^2 s^2 / 4)$  and hence

$$
| \phi (s) | \leq \rho \left(1 - \frac{\sigma^{2}}{4} s^{2}\right) + 1 - \rho = 1 - \frac{\rho \sigma^{2}}{4} s^{2}.
$$

□

To prove Proposition 6.10.4, let  $\phi$  denote the characteristic function of  $X_{j}$ . Then

$$
\phi (s) = \phi (n^{- \beta} s)^{n}.
$$

If the distribution of  $X_{j}$  is nontrivial, then there exists  $\epsilon > 0$  such that for  $|s| \leq \epsilon$ ,

$$
\left| \phi (s) \right| \leq 1 - \epsilon s^{2},
$$

and hence for every  $s \neq 0$ ,

$$
\begin{array}{l} | \phi (s) | = \lim_{n \rightarrow \infty} | \phi (n^{- \beta} s) |^{n} \leq \lim_{n \rightarrow \infty} \left(1 - \epsilon n^{- 2 \beta} s^{2}\right)^{n} \\ \leq \lim_{n \to \infty} \exp \left\{- \epsilon s^{2} n^{1 - 2 \beta} \right\} = 0. \\ \end{array}
$$

Since  $\phi$  is continuous at 0 with  $\phi(0) = 1$ , this is a contradiction. Therefore,  $\mathbb{P}\{X_j = c\} = 1$  for some  $c$  and since  $c = (c + \dots + c) / n^\beta$ ,  $c = 0$ .

# 6.11 Exercises

Exercise 6.1. Suppose  $F(t) = \mathbb{P}\{T \leq t\}$  is the distribution function of a continuous random variable  $T$ . Define the "inverse" function  $G$  by

$$
G (r) = \sup  \{t: F (t) \leq r \}.
$$

1. Suppose  $U$  is a random variable distributed uniformly on  $[0,1]$ . Show that  $G(U)$  has distribution function  $F$ .  
2. Find  $G$  in the case that  $T$  is exponential with rate  $\lambda$ .  
3. Use the waiting time method as described in Section 6.2 to sample from a Poisson process  $X_{t}$  with rate  $\lambda = 3 / 2$ . Run at least 3000 trials to estimate the distribution of  $X_{3}$ .  
4. Compare the simulations with the actual distribution for  $X_{3}$ .

Exercise 6.2. Suppose  $Y_{t}$  is a Poisson process with parameter 2.

1. Find  $\mathbb{P}\{Y_3\geq 2\}$  
2. Find  $\mathbb{P}\{Y_4\geq Y_1 + 2\mid Y_1 = 4\}$  
3. Find  $\mathbb{P}\{Y_1 = 1\mid Y_3 = 4\}$
4. Find a nonrandom function  $a(t)$  such that

$$
X_{t} = Y_{t} - a (t)
$$

is a martingale, that is, if  $s \leq t$ ,

$$
E \left[ X_{t} \mid \mathcal{F}_{s} \right] = E \left[ X_{t} \mid Y_{s} \right] = X_{s}.
$$

Here  $\mathcal{F}_t$  denotes the information in  $\{Y_s:s\leq t\}$

Exercise 6.3. Suppose  $X_{t}$  is a compound Poisson process with  $\lambda = 2$ , and measure  $\mu^{\#}$  is given by a  $N(0,1)$  distribution. In other words, the process jumps when a Poisson process of rate 2 jumps and when it jumps it chooses a jump size from a  $N(0,1)$  distribution.

- Find the function  $f$  so that the Lévy measure  $\mu$  can be written as  $d\mu = f(x)dx$ .  
Find  $\mathbb{E}[X_t]$  
Find  $\mathbb{E}[X_t^2]$  
- What is the generator  $L$  of the process  $X_{t}$ ?  
- Does there exist a process  $S_{t}$  such that for each  $t$ ,  $S_{t}$  is measurable with respect to  $\mathcal{F}_{t}$ , the information in  $\{X_{s} : 0 \leq s \leq t\}$ , and such that
- With probability one,  $S_{t}$  is differentiable with respect to  $t$ ,  
- $M_{t} = X_{t}^{2} - S_{t}$  is a martingale

If so find it.

Exercise 6.4. Let  $X_{t}$  be as in Exercise 6.3 and let

$$
Z_{t} = \exp \{X_{t} \}.
$$

1. Find  $\mathbb{E}[Z_t]$  
2. Find a continuous process  $S_{t}$ , adapted to the information in  $\{\mathcal{F}_t\}$ , with  $S_{t} > 0$  such that  $S_{t}$  is differentiable with respect to  $t$  (except at the  $t$  at which  $X_{t}$  jumps) and

$$
M_{t} = Z_{t} - S_{t}
$$

is a martingale? Explain why  $S_{t}$  is not differentiable at the jump times of  $X_{t}$ .

3. Does there exist a process  $A_{t}$ , adapted to the information in  $\{\mathcal{F}_t\}$ , with  $A_{t} > 0$  such that  $A_{t}$  is differentiable with respect to  $t$  (except at the  $t$  at which  $X_{t}$  jumps) and

$$
M_{t} = Z_{t} A_{t}
$$

is a martingale?

Exercise 6.5. Suppose  $Y_{t}$  is a Cauchy process, that is, a Lévy process such that  $Y_{1}$  has a Cauchy distribution. Show why the following statement holds: for every  $r > 0$  and  $t > 0$ ,

$$
\mathbb{P} \left\{\max_{0 \leq s \leq t} Y_{s} > r \right\} (*) 2 \mathbb{P} \{Y_{t} > r \}.
$$

Here  $(\ast)$  is one of the following:  $>, =, <$ . Your task is to figure out which of  $>$ ,  $=, <$  should go into the statement and explain why the relation holds. (Hint: go back to the derivation of the reflection principle for Brownian motion. The only things about the Cauchy process that you should need to use are that it is symmetric about the origin and has jumps. Indeed, the same answer should be true for any symmetric Lévy process with jumps.)

Exercise 6.6. Suppose  $X_{t}$  is a Poisson process with rate 1 and let  $r > 0$  with filtration  $\{\mathcal{F}_t\}$ , and

$$
\tilde {S}_{t} = e^{X_{t} - r t}.
$$

1. Find a strictly positive martingale  $M_t$  with  $M_0 = 1$  such that  $\tilde{S}_t$  is a martingale with respect to the tilted measure  $Q$  given by

$$
Q (V) = \mathbb{E} \left[ 1_{V} M_{t} \right], V \in \mathcal{F}_{t}.
$$

2. Is your choice of  $M_t$  and  $Q$  unique?

Exercise 6.7. Suppose  $f: \mathbb{R} \to \mathbb{R}$  is a function that is right continuous at every point. Let

$$
K_{f} = \sup \{| f (x) |: 0 \leq x \leq 1 \}.
$$

1. Give an example to show that it is possible that  $K_{f} = \infty$ .  
2. Show that if  $f$  is a càdlag function, then  $K_{f} < \infty$ .

Exercise 6.8. Suppose  $X_{t}$  is a generalized Poisson process with Lévy measure  $\mu$  given by

$$
d \mu (x) = \frac{d x}{x}, 0 <   x <   1.
$$

1. Is this a generalized Poisson process of Type I?  
2. Find  $\mathbb{E}[X_t]$ ,  $\operatorname{Var}[X_t]$ .  
3. What is the probability that there are no jumps of size greater than  $1/2$  by time  $t = 2$ ?  
4. Let

$$
f (t, x) = \mathbb{E} \left[ X_{t}^{4} \mid X_{0} = x \right].
$$

Find the function  $g(x)$  such that

$$
\frac{d}{d t} f (t, x) \mid_{t = 0} = g (x).
$$

Exercise 6.9. Suppose  $X_{t}$  is as in Exercise 6.8 and  $B_{t}$  is an independent standard Brownian motion. Let  $Y_{t} = X_{t} + t + 2B_{t}$  and answer the same questions for  $Y_{t}$ .

Exercise 6.10. Do Exercise 6.8 where

$$
d \mu (x) = \frac{d x}{| x |^{5 / 2}}, 0 <   | x | <   1.
$$

# Chapter 7

# Fractional Brownian motion

# 7.1 Definition

The assumptions of independent, stationary increments along with continuous paths give Brownian motion. In the last chapter we dropped the continuity assumption and obtained Lévy processes. In this chapter we will retain the assumptions of stationary increments and continuous paths, but will allow the increments to be dependent. The process  $X_{t}$  we construct is called fractional Brownian motion and depends on a parameter  $H \in (0,1)$  called the Hurst index. It measures the correlation of the increments.

- When  $H > 1/2$ , the increments are positively correlated, that is, if the process has been increasing, then it is more likely to continue increasing.  
- When  $H < 1/2$ , the increments are negatively correlated, that is, if the process has been increasing, then it is more likely to decrease in the future.  
- If  $H = 1/2$ , the increments are uncorrelated and the process is the same as Brownian motion.

We will also assume that the process is self-similar.

- If  $a > 0$ , then the distribution of

$$
Y_{t} := a^{- H} X_{a t}
$$

is the same as that of  $X_{t}$ . In particular,  $X_{t}$  has the same distribution as  $t^{H}X_{1}$ .

Our final assumption is that the process is a centered Gaussian process.

- For every  $t_1, \ldots, t_k$ , the random vector  $(X_{t_1}, \ldots, X_{t_k})$  has a joint normal distribution with mean zero.

We normalize so that  $\operatorname{Var}(X_1) = \mathbb{E}[X_1^2] = 1$  and hence

$$
\operatorname{Var} (X_{t}) = \operatorname{Var} (t^{H} X_{1}) = t^{2 H} \operatorname{Var} (X_{1}) = t^{2 H}.
$$

Definition If  $H \in (0,1)$ , the fractional Brownian motion with Hurst parameter  $H$  ( $fBm_{H}$ ) is the centered (mean zero) Gaussian process  $X_{t}$  with continuous paths such that for all  $s, t$ ,

$$
\mathbb{E} \left[ (X_{t} - X_{s})^{2} \right] = | t - s |^{2 H}.
$$

Since

$$
\mathbb{E} \left[ (X_{t} - X_{s})^{2} \right] = \mathbb{E} \left[ X_{t}^{2} \right] + \mathbb{E} \left[ X_{s}^{2} \right] - 2 \mathbb{E} \left[ X_{s} X_{t} \right],
$$

it follows that

$$
\operatorname{Cov} (X_{s}, X_{t}) = \mathbb{E} [ X_{s} X_{t} ] = \frac{1}{2} \left[ s^{2 H} + t^{2 H} - | s - t |^{2 H} \right]. \qquad (7. 1)
$$

If  $H = 1/2$ , then fractional Brownian motion is the same as usual Brownian motion.

As in the case of Brownian motion, we must show that such a process exists. We will discuss this in the next section, but for now we assume it does exist. If  $s < t$ , note that

$$
\begin{array}{l} \mathbb{E} \left[ X_{s} \left(X_{t} - X_{s}\right) \right] = \mathbb{E} \left[ X_{s} X_{t} \right] - \mathbb{E} \left[ X_{s}^{2} \right] \\ = \frac{1}{2} \left[ t^{2 H} - s^{2 H} - (t - s)^{2 H} \right] \\ \left\{ \begin{array}{l l} > 0, & H > 1 / 2 \\ = 0, & H = 1 / 2 \\ <   0, & H <   1 / 2 \end{array} \right.. \\ \end{array}
$$

Since  $X_{t + \delta} - X_t\sim N(0,\delta^{2H})$  , we can write roughly

$$
\left| X_{t + \delta} - X_{t} \right| \approx \delta^{H}.
$$

In other words, the Hölder exponent of  $fBm_{H}$  is given by the Hurst index  $H$ . If  $H > 1/2$ , the paths are "smoother" than Brownian paths and if  $H < 1/2$ , the paths are "rougher".

To determine correlations for large  $t$ , suppose  $t$  is large. Then

$$
\begin{array}{l} \mathbb{E} \left[ \left(X_{s + 1} - X_{s}\right) \left(X_{s + t + 1} - X_{s + t} \right] \right. \\ = \mathbb{E} \left[ X_{1} \left(X_{t + 1} - X_{t}\right) \right] \\ = \mathbb{E} \left[ X_{1} X_{t + 1} \right] - \mathbb{E} \left[ X_{1} X_{t} \right] \\ = \frac{1}{2} \left[ (t + 1)^{2 H} + (t - 1)^{2 H} - 2 t^{2 H} \right] \\ \sim H (2 H - 1) t^{2 H - 2}. \\ \end{array}
$$

The coefficient is positive for  $H > 1 / 2$  and negative for  $H < 1 / 2$ . As  $t$  goes to infinity the size of the correlation goes to zero like a power law.

# 7.2 Stochastic integral representation

We will give an expression for the fractional Brownian motion in terms of a stochastic integral. It will be useful to consider time going from  $-\infty$  to  $\infty$ . Suppose  $B_t^1, B_t^2$  are independent standard Brownian motions starting at the origin. If

$$
B_{t} = \left\{ \begin{array}{l l} B_{t}^{1}, & t \geq 0 \\ B_{- t}^{2}, & t \leq 0 \end{array} \right.,
$$

then  $B_{t}$  is standard Brownian motion from time  $-\infty$  to  $\infty$ . The centering  $B_{0} = 0$  is rather arbitrary; we really think of this process as a collection of increments  $\{B_{t} - B_{s}\}$  for  $s < t$ . Viewed this way, this is sometimes called white noise. We let  $\mathcal{F}_{t}$  denote the information contained in the random variables  $\{B_{s} - B_{r} : r < s \leq t\}$ .

Suppose  $f(r,t)$  is a continuous (nonrandom) function, and let

$$
Y_{t} = \int_{- \infty}^{t} f (r, t) d B_{r} = \lim_{n \to \infty} \sum f \left(\frac{k}{n}, t\right) \Delta B (k, n),
$$

where

$$
\Delta B (k, n) = B_{(k + 1) / n} - B_{k / n},
$$

and the sum is over all integers (positive and negative) with  $(k + 1) / n \leq t$ . Then  $Y_{t}$  is a limit of centered normal random variables and hence is mean zero with variance

$$
\mathbb{E} [ Y_{t}^{2} ] = \int_{- \infty}^{t} f (r, t)^{2} d r.
$$

We assume this is finite for each  $t$ . Moreover if  $s < t$ , we can write

$$
Y_{t} - Y_{s} = \int_{- \infty}^{s} \left[ f (r, t) - f (r, s) \right] d B_{r} + \int_{s}^{t} f (r, t) d B_{r}.
$$

The right-hand side is the sum of two independent normal random variables: the first is  $\mathcal{F}_s$ -measurable and the second is independent of  $\mathcal{F}_s$ . Hence  $Y_{t} - Y_{s}$  has a normal distribution. More generally, one can check that  $Y_{t}$  is a Gaussian process whose covariance is given for  $s < t$  by

$$
\mathbb{E} \left[ Y_{s} Y_{t} \right] = \int_{- \infty}^{s} f (r, s) f (r, t) d r.
$$

If we make the further assumption that  $f(r,t) = \phi (t - r)$  for a one-variable function  $\phi$ , then the process  $Y_{t}$  is stationary and has the form

$$
Y_{t} = \int_{- \infty}^{t} \phi (t - r) d B_{r}. \tag {7.2}
$$

Proposition 7.2.1. If

$$
\phi (s) = c s^{H - \frac{1}{2}},
$$

and  $Y_{t}$  is defined as in (7.2), then  $X_{t} = Y_{t} - Y_{0}$  is  $fBm_{H}$ . Here

$$
c = c_{H} = \left[ \frac{1}{2 H} + \int_{0}^{\infty} [ (1 + r)^{H - \frac{1}{2}} - r^{H - \frac{1}{2}} ]^{2} d r \right]^{- 1 / 2}.
$$

Proof. By construction,  $X_{t}$  is a Gaussian process with continuous paths. Since  $Y_{t}$  is stationary, the distribution of  $X_{t} - X_{s} = Y_{t} - Y_{s}$  is the same as that of  $X_{t - s} = Y_{t - s} - Y_{0}$ . In particular,  $\mathbb{E}[(X_t - X_s)^2 ] = \mathbb{E}[X_{t - s}^2 ]$ . Hence we only need to show that  $\mathbb{E}[X_t^2 ] = t^{2H}$ . Note that

$$
X_{t} = \int_{- \infty}^{0} [ \phi (t - r) - \phi (- r) ] d B_{r} + \int_{0}^{t} \phi (t - r) d B_{r}.
$$

The random variables on the right-hand side are independent and

$$
\begin{array}{l} c^{- 2} \mathrm{Var} \left[ \int_{- \infty}^{0} [ \phi (t - r) - \phi (- r) ] d B_{r} \right] \\ = \int_{- \infty}^{0} \left[ (t - r)^{H - \frac{1}{2}} - (- r)^{H - \frac{1}{2}} \right]^{2} d r \\ = \int_{0}^{\infty} [ (t + r)^{H - \frac{1}{2}} - r^{H - \frac{1}{2}} ]^{2} d r \\ = \int_{0}^{\infty} \left[ (t + s t)^{H - \frac{1}{2}} - (s t)^{H - \frac{1}{2}} \right]^{2} t d s \\ { = } { t^{ 2 H } \int_{ 0 }^{ \infty } [ ( 1 + s )^{ H - \frac{ 1 } { 2 } } - s^{ H - \frac{ 1 } { 2 } } ]^{ 2 } d s , } \\ \end{array}
$$

$$
c^{- 2} \operatorname{Var} \left[ \int_{0}^{t} \phi (t - r) d B_{r} \right] = \int_{0}^{t} (t - r)^{2 H - 1} d r = \frac{t^{2 H}}{2 H}.
$$

If we choose  $c$  as in (7.3), we get  $\mathbb{E}[X_t^2] = t^{2H}$ .

# 7.3 Simulation

Because the fractional Brownian motion has long range dependence it is not obvious how to do simulations. The stochastic integral representation (7.2) is difficult to use because it uses the value of the Brownian motion for all negative times. However, there is a way to do simulations that uses only the fact that  $fBm_{H}$  is a Gaussian process with continuous paths. Let us choose a step size  $\Delta t = 1 / N$ ; continuity tells us that it should suffice to sample

$$
Y_{1}, Y_{2}, \ldots
$$

where  $Y_{j} = X_{j / N}$ . For each  $n$ , the random vector  $(Y_{1},\ldots ,Y_{n})$  has a centered Gaussian distribution with covariance matrix  $\Gamma = [\Gamma_{jk}]$ . Given  $\Gamma$  we claim that we can find numbers  $a_{jk}$  with  $a_{jk} = 0$  if  $k > j$ , and independent standard normal random variables  $Z_{1},Z_{2},\ldots$  such that

$$
Y_{n} = a_{n 1} Z_{1} + \dots + a_{n n} Z_{n}. \tag {7.3}
$$

In matrix notation,  $A = [a_{jk}]$  is a lower triangular matrix such that  $\Gamma = AA^T$ .

This decomposition  $\Gamma = AA^T$  is sometimes called the Cholesky decomposition. We will now show that it exists by giving an algorithm for finding the matrix. We start by setting

$$
a_{11} = \sqrt{\Gamma_{11}}.
$$

Suppose we have found the first  $k - 1$  rows of  $A$ . This is a lower triangular  $(k - 1) \times (k - 1)$  matrix. Suppose  $j < k$ . Then,

$$
\Gamma_{j k} = \mathbb{E} \left[ Y_{j} Y_{k} \right] = \sum_{i = 1}^{j} a_{j i} a_{k i}.
$$

The coefficients  $a_{jk}$  for  $j = 1, \ldots, k - 1$  can be found by solving these  $k - 1$  linear equations in  $k - 1$  unknowns (one uses the fact that  $\Gamma$  is nonnegative definite to show there is a unique solution), and then one sets

$$
a_{k k} = \sqrt{\Gamma_{k k} - \sum_{i = 1}^{k - 1} a_{k i}^{2}}.
$$

We see that this decomposition is unique if we impose the condition  $a_{kk} \geq 0$ .

From a practical perspective, these computations are done with computer packages. Note that one only needs to compute the coefficients  $a_{jk}$  once and store them. Then multiple simulations can be done using (7.3).

The Cholesky decomposition can be derived from the Gram-Schmidt process. Consider the Hilbert space of mean-zero  $L^2$  random variables and let  $H_{n}$  denote the finite dimensional subspace spanned by  $Y_{1},\ldots ,Y_{n}$ . Let  $P_{n}$  denote the projection onto  $H_{n}$  which is the same as the conditional expectation,

$$
P_{n} X = E \left[ X \mid Y_{1}, \dots , Y_{n} \right].
$$

Then we define

$$
Z_{n} = \frac{Y_{n} - P_{n - 1} Y_{n}}{\| Y_{n} - P_{n - 1} Y_{n} \|_{2}}.
$$

Since  $H_{n}$  is also the subspace spanned by  $Z_{1},\ldots ,Z_{n}$ , we can write

$$
P_{n - 1} Y_{n} = \sum_{j = 1}^{n - 1} a_{j n} Z_{j},
$$

for unique scalars  $a_{jn}$ , and we set  $a_{nn} = \| Y_n - P_{n-1}Y_n\|_2$ .

# Chapter 8

# Harmonic functions

# 8.1 Dirichlet problem

Recall that the Laplacian of a function  $f$  on  $\mathbb{R}^d$  is defined by

$$
\nabla^{2} f (x) = \sum_{j = 1}^{d} \partial_{j j} f (x).
$$

The Laplacian is closely related to mean values of functions. The (spherical) mean value of  $f$  on the sphere of radius  $\epsilon$  about  $x$  is defined by

$$
M V (x; \epsilon , f) = \frac{\int_{| y - x | = \epsilon} f (y) d \sigma (y)}{\int_{| y - x | = \epsilon} 1 d \sigma (y)},
$$

where  $\sigma$  denotes  $(d - 1)$ -dimensional surface measure. The mean value can also be described in terms of Brownian motion. Suppose  $B_{t}$  is a  $d$ -dimensional Brownian motion starting at  $x$  and let

$$
\tau_{\epsilon} = \inf \{t: | B_{t} - B_{0} | = \epsilon \}.
$$

Since Brownian motion is rotationally invariant, the distribution of  $B_{\tau_{\epsilon}}$  is uniform over the sphere  $\{y:|y - x| = \epsilon \}$ . Hence we can write

$$
M V (x; \epsilon , f) = \mathbb{E}^{x} [ f \left(B_{\tau_{\epsilon}}\right) ]. \tag {8.1}
$$

Proposition 8.1.1. Suppose  $f$  is a  $C^2$  function in a neighborhood of  $x \in \mathbb{R}^d$ .

Then

$$
\nabla^{2} f (x) = 2 d \lim_{\epsilon \downarrow 0} \frac{M V (x ; \epsilon , f) - f (x)}{\epsilon^{2}}.
$$

Proof. Without loss of generality, assume  $x = 0$  and  $f(x) = 0$ , and write  $MV(\epsilon)$  for  $MV(0; f, \epsilon)$ . Let  $b_{j} = \partial_{j}f(0), a_{jk} = \partial_{jk}f(0)$ . Taylor's theorem implies that

$$
f (y) = \sum_{j = 1}^{d} b_{j} y_{j} + \frac{1}{2} \sum_{j = 1}^{d} a_{j k} y_{j} y_{k} + o (| y |^{2}), \quad y \to 0,
$$

where we write  $y = (y_{1},\ldots ,y_{d})$ . Therefore,

$$
M V (\epsilon) = \sum_{j = 1}^{d} b_{j} M V (0; y_{j}, \epsilon) + \frac{1}{2} \sum_{j = 1}^{d} a_{j k} M V (0; y_{j} y_{k}, \epsilon) + o (\epsilon^{2}).
$$

Note that  $MV(0;y_j,\epsilon) = 0$  since  $y_{j}$  is an odd function. Similarly,  $MV(0;y_jy_k,\epsilon) = 0$  if  $j\neq k$ . Linearity of the integral implies that

$$
\sum_{j = 1}^{d} M V (0; y_{j}^{2}, \epsilon) = M V (0; \sum_{j = 1}^{d} y_{j}^{2}, \epsilon) = M V (0; \epsilon^{2}, \epsilon) = \epsilon^{2}.
$$

Symmetry implies that  $MV(0; y_j^2, \epsilon) = MV(0; y_k^2, \epsilon)$ , and hence  $MV(y_j^2, \epsilon) = \epsilon / d$ . We therefore have

$$
M V (\epsilon) = \frac{1}{2} \sum_{j = 1}^{d} a_{j j} \left(\epsilon^{2} / d\right) + o (\epsilon^{2}) = \frac{\epsilon^{2}}{2 d} \nabla^{2} f (0) + o (\epsilon^{2}).
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/0b02acc3-26e4-4125-ae2f-f5fd9d2fbf41/af3a14a9603b79cb8ad88c24af94005dde50c76792a6cbda01573290c064c23a.jpg)

Definition Suppose  $f$  is a function defined on an open set  $D \subset \mathbb{R}^d$ .

- $f$  is harmonic in  $D$  if  $f$  is  $C^2$  and  $\nabla^2 f(x) = 0$  for all  $x \in D$ .  $f$  is harmonic at  $x$  if it is harmonic in a neighborhood of  $x$ .  
- A function  $f$  satisfies the (spherical) mean value property on  $D$  if for every  $x \in D$  and every  $\epsilon > 0$  with  $\{y : |x - y| \leq \epsilon\} \subset D$ ,

$$
f (x) = M V (f; x, \epsilon).
$$

# Proposition 8.1.2.

# 8.1. DIRICHLET PROBLEM

- Suppose  $f$  is a harmonic function defined on an open set  $D \subset \mathbb{R}^d$ . Let  $B_t$  be a standard  $d$ -dimensional Brownian motion starting at  $x \in D$  and let

$$
\tau = \inf  \{t: B_{t} \notin D \}.
$$

Then  $M_t \coloneqq f(B_{t \wedge \tau})$  is a local martingale for  $t < \tau$  satisfying

$$
d M_{t} = \nabla f (B_{t}) \cdot d B_{t}, \quad t <   \tau .
$$

- Suppose also that  $f$  is defined on  $\partial D$  so that  $f: \overline{D} \to \mathbb{R}$  is a bounded, continuous function. Then  $M_t$  is a bounded continuous martingale. If  $\mathbb{P}\{\tau < \infty\} = 1$ , then

$$
f (x) = \mathbb{E}^{x} [ f (B_{\tau}) ]. \tag {8.2}
$$

Proof. The first statement follows from Ito's formula. In fact, we already did this calculation in Theorem 3.7.2. Since bounded local martingales are martingales, the second statement follows from the optional sampling theorem.  $\square$

The expression (8.2) is a generalization of the mean value property (8.1). It states that we can take mean values over sets other than spheres as long as integrate with respect to the correct the measure. This measure is often called harmonic measure (in  $D$  starting at  $x$ ) and is defined by

$$
\operatorname{hm}_{D} (V; x) = \mathbb{P}^{x} \{B_{\tau} \in V \}, \quad V \subset \partial D.
$$

Then (8.2) can be written

$$
f (x) = \int_{\partial D} f (y) \mathrm{hm}_{D} (d y; x).
$$

The next proposition shows that we could use the mean value property to define harmonic functions. In fact, this is the more natural definition.

Proposition 8.1.3. Suppose  $f$  is a continuous function on an open set  $D \subset \mathbb{R}^d$ . Then  $f$  is harmonic in  $D$  if and only if it satisfies the mean value property on  $D$ .

Proof. If  $f$  is harmonic, then  $f$  restricted to a closed ball of radius  $\epsilon$  contained in  $D$  is bounded. Therefore, the mean value property is a particular case of (8.2).

If  $f$  is  $C^2$  and satisfies the mean value property, then  $\nabla^2 f(x) = 0$  by Proposition 8.1.1. Hence we need only show that  $f$  is  $C^2$ . We will, in fact, show that  $f$  is  $C^\infty$ .

It is a standard exercise in advanced calculus to show that for every  $\delta > 0$  we can find a nonnegative radially symmetric  $C^\infty$  function  $\phi = \phi_\delta$  such that  $\phi(y) = 0$  for  $|y| \geq \delta$  and

$$
\int \phi (y) d y = 1.
$$

Here  $dy = dy_{1} \cdots dy_{d}$ . If  $x \in D$  with  $\{y : |x - y| \leq \epsilon\} \subset D$ , and  $\phi = \phi_{\epsilon/2}$ , then the mean value property implies that

$$
f (x) = \int f (x + y) \phi (y) d y = \int f (z) \phi (z - x) d z. \tag {8.3}
$$

Since  $f$  is locally bounded and  $\phi$  is bounded and  $C^\infty$ , we can differentiate with respect to  $x$  by bringing the derivatives inside the integral.

The proof showed that we did not need to assume that  $f$  is continuous. It suffices for  $f$  to be measurable and locally bounded so that derivatives can be taken on the right-hand side of (8.3).

We will solve the classic Dirichlet problem for harmonic functions. Suppose  $D$  is a bounded open set and  $F: \partial D \to \mathbb{R}$  is a continuous function. The goal is to find a continuous function  $f: \overline{D} \to \mathbb{R}$  that is harmonic in  $D$  with  $f(x) = F(x)$  for  $x \in \partial D$ . Suppose that such a function  $f$  existed. Let  $\tau = \tau_{D} = \inf \{t \geq 0 : B_{t} \in \partial D\}$ . Since  $\overline{D}$  is compact,  $f$  must be bounded, and hence

$$
M_{t} = f \big (B_{t \wedge \tau} \big)
$$

is a continuous, bounded martingale. Arguing as in (8.2) we see that

$$
f (x) = \mathbb{E}^{x} \left[ f (B_{\tau}) \right] = \mathbb{E}^{x} \left[ F (B_{\tau}) \right]. \tag {8.4}
$$

The right-hand side gives the only candidate for the solution. The strong Markov property can be used to see that this candidate satisfies the mean value property and the last proposition gives that  $f$  is harmonic in  $D$ .

It is a little more subtle to check if  $f$  is continuous on  $\overline{D}$ . This requires further assumptions on  $D$  which can be described most easily in terms of Brownian motion. Suppose  $z \in \partial D$  and  $x \in D$  with  $x$  near  $z$ . Can we say that  $f(x)$  is near  $F(z)$ ? Since  $F$  is continuous, this will be true if  $B_{\tau}$  is near

$z$ . To make this precise, one defines a point  $z \in \partial D$  to be regular if for every  $\epsilon > 0$  there exists  $\delta > 0$  such that if  $x \in D$  with  $|x - z| < \delta$ , then

$$
\mathbb{P}^{x} \left\{\left| B_{\tau} - z \right| \geq \epsilon \right\} \leq \epsilon .
$$

Theorem 8.1.4. Suppose  $D$  is a bounded open set such that each  $z \in \partial D$  is regular. Suppose  $F$  is a continuous function on  $\partial D$ . Then there exists a unique continuous function  $f: \overline{D} \to \mathbb{R}$  that is harmonic on  $D$  and agrees with  $F$  on  $\partial D$  given by (8.4).

Example 8.1.1. Let  $D$  be the annular region

$$
D = \{x \in \mathbb{R}^{d}: r <   | x | <   R \},
$$

and let  $F(x) = 1$  if  $|x| = R$ ,  $F(x) = 0$  if  $|x| = r$ . Then for  $x \in D$ ,

$$
f (x; r, R) = \mathbb{E}^{x} \left[ F \left(B_{\tau}\right) \right] = \mathbb{P}^{x} \left\{\left| B_{\tau} \right| = R \right\}.
$$

We claim that

$$
f (x; r, R) = \frac{x - r}{R - r}, \quad d = 1,
$$

$$
f (x; r, R) = \frac{\log | x | - \log r}{\log R - \log r}, \quad d = 2,
$$

$$
f (x; r, R) = \frac{r^{d - 2} - | x |^{d - 2}}{r^{d - 2} - R^{d - 2}}, \quad d \geq 3.
$$

One can check this by noting that  $\nabla^2 f(x) = 0$  and  $f$  has the correct boundary condition. The theorem implies that there is only one such function. Note that

$$
\lim_{R \to \infty} f (x; r, R) = \left\{ \begin{array}{l l} 0, & d \leq 2 \\ 1 - (r / | x |)^{2 - d}, & d \geq 3 \end{array} \right.,
$$

$$
\lim_{r \downarrow 0} f (x; r, R) = \left\{ \begin{array}{l l} x / R & d = 1 \\ 1, & d \geq 2 \end{array} \right.. \tag {8.5}
$$

We have already seen the  $d = 1$  case as the gambler's ruin estimate for Brownian motion.

Example 8.1.2. Let  $d \geq 2$ . It follows from (8.5) that if  $x \neq 0$ , then the probability that a Brownian motion starting at  $x$  ever hits zero is zero. Let  $D = \{x \in \mathbb{R}^d : 0 < |x| < 1\}$ . Then 0 is not a regular point of  $\partial D$ , since if we start near the origin the Brownian motion will not exit  $D$  near 0. Let

$F(0) = 0$ ,  $F(y) = 1$  if  $|y| = 1$ . Then, the only candidate for the solution of the Dirichlet problem is

$$
f (x) = \mathbb{E}^{x} \left[ F \left(B_{\tau}\right) \right] = 1, \quad x \in D.
$$

If  $f(0) = 0$ , this function is not continuous at the origin.

If  $D = U_r = \{x : |x| < r\}$  is the ball of radius  $r$  about the origin, then the harmonic measure  $\mathrm{hm}_{U_r}(\cdot; x)$  is known explicitly. It is absolutely continuous with respect to  $(d - 1)$ -dimensional surface measure  $s$  on  $\partial U_r$ . Its density is called the Poisson kernel,

$$
H_{r} (x, y) = \frac{r^{2} - | x |^{2}}{r \omega_{d - 1} | x - y |^{d}},
$$

where

$$
\omega_{d - 1} = \int_{| y | = 1} d s (y)
$$

denotes the surface area of the unit ball. If  $F: \partial U_r \to \mathbb{R}$  is continuous, then the unique solution to the Dirichlet problem is

$$
f (x) = \mathbb{E}^{x} \left[ F \left(B_{\tau_{U_{r}}}\right) \right] = \int_{| y | = r} F (y) H_{r} (x, y) d s (y). \tag {8.6}
$$

To verify this, one checks by direct computation the following facts:

- If  $y \in \partial U_r$ , the function  $h(x) = H(x, y)$  is harmonic on  $U_r$ ;
- If  $x \in U_r$ ,

$$
\int_{| y | = r} H_{r} (x, y) d s (y) = 1;
$$

- For every  $\epsilon > 0$ , there exists  $\delta > 0$  such that if  $x \in U_r, y \in \partial U_r$  and  $|x - y| < \delta$ , then

$$
\int_{| z | = r, | z - y | \geq \epsilon} H_{r} (x, z) d s (z) \leq \epsilon .
$$

From these one concludes that  $f$  as defined by the right-hand side of (8.6) is harmonic in  $U_r$  and continuous on  $\overline{U}_r$ .

The reader may note that we did not need the probabilistic interpretation of the solution in order to verify that (8.6) solves the Dirichlet problem. Indeed, the solution using the Poisson kernel was discovered before the relationship with Brownian motion. An important corollary of this explicit solution is the following theorem; we leave the verification as Exercise 8.1. The key part of the theorem is the fact that the same constant  $C$  works for all harmonic functions.

# Theorem 8.1.5.

1. For every positive integer  $n$ , there exists  $C = C(d, n) < \infty$  such that if  $f$  is a harmonic function on an open set  $D \subset \mathbb{R}^d$ ,  $x \in D$ ,  $\{y : |x - y| < r\} \subset D$ , and  $j_1, \ldots, j_n \in \{1, \ldots, d\}$  then

$$
\left| \partial_{x_{j_{1}}} \dots \partial_{x_{j_{n}}} f (x) \right| \leq C r^{- n} \sup_{| y - x | <   r} | f (y) |.
$$

2. (Harnack inequality) For every  $0 < u < 1$ , there exists  $C = C(d, u) < \infty$  such that if  $f$  is a positive harmonic function on an open set  $D \subset \mathbb{R}^d$ ,  $x \in D$ ,  $\{y : |x - y| < r\} \subset D$ , then if  $|x - z| \leq ur$ ,

$$
C^{- 1} f (x) \leq f (z) \leq C f (x).
$$

# 8.2  $h$ -processes

Suppose  $h$  is a positive harmonic function on an open set  $D \subset \mathbb{R}^d$ , and let  $B_t$  be a standard Brownian motion starting at  $x \in D$ . Let  $\tau = \tau_D$  be the first time  $t$  with  $B_t \notin D$ . Then  $M_t = h(B_t)$  is a positive local martingale for  $t < \tau$  satisfying

$$
d M_{t} = \frac{\nabla h (B_{t})}{h (B_{t})} M_{t} d B_{t}, t <   \tau .
$$

Let  $\tau_{n}$  be the minimum of  $\tau$  and the first time  $t$  with  $h(B_t)\geq n$ . Then  $M_{t\wedge \tau_n}$  is a continuous bounded martingale.

We can use the Girsanov theorem to consider the measure obtained by weighting by the local martingale  $M_t$ . To be more precise, if  $V$  is an event that depends only on  $B_t$ ,  $0 \leq t \leq \tau_n$ , then

$$
\mathbb{P}^{*} (V) = h (x)^{- 1} \mathbb{E}^{*} \left[ M_{\tau_{n}} 1_{V} \right].
$$

One can use the Girsanov theorem (more precisely, a simple generalization of the theorem to  $d$ -dimensional Brownian motion), to see that

$$
d B_{t} = \frac{\nabla h (B_{t})}{h (B_{t})} d t + d W_{t},
$$

where  $W_{t}$  is a standard Brownian motion with respect to  $\mathbb{P}^*$ . The process  $B_{t}$  in the new measure  $\mathbb{P}^*$  is often called the (Doob)  $h$ -process associated to the positive harmonic function  $h$ . It is defined for  $t < \tau$ .

As an example, suppose that  $D$  is the unit ball,  $y = (1,0,\ldots,0) \in \partial D$  and

$$
h (x) = \omega_{d - 1} H_{1} (x, y) = \frac{1 - | x |^{2}}{| x - y |^{d}},
$$

is the Poisson kernel. Then the  $h$ -process can be viewed as Brownian motion "conditioned so that  $B_{\tau} = y$ ", where  $\tau = \tau_{D}$ . This is not precise because the conditioning is with respect to a event of probability zero. We claim that the  $\mathbb{P}^*$ -probability that  $B_{\tau} = y$  equals one. To see this, assume that  $B_0 = 0$  and let

$$
T_{n} = \inf \{t: h (B_{t}) = n^{3} \}, \quad T_{n}^{\prime} = \inf \{t > T_{n}: h (B_{t}) = n \}.
$$

We claim that  $\mathbb{P}^*\{T_n < \tau\} = 1$ . Indeed, if we let  $\tau_r = \inf \{t:|B_t| = r\}$ , then we can check directly that

$$
\lim_{r \uparrow 1} \mathbb{P}^{*} \{h (B_{\tau_{r}}) \geq n^{3} \} = \lim_{r \uparrow 1} \int_{| x | = 1, h (r x) \geq n^{3}} h (r x) d \sigma (x) = 1,
$$

and hence

$$
\lim_{r \uparrow 1} \mathbb{P}^{*} \{T_{n} <   \tau_{r} \} = 1.
$$

Also, since  $h(B_{T_n'}) = n^{-2}h(B_{T_n})$

$$
\mathbb{P}^{*} \{T_{n}^{\prime} <   \tau \} \leq n^{- 2},
$$

$$
\sum_{n = 1}^{\infty} \mathbb{P}^{*} \{T_{n}^{\prime} <   \tau \} <   \infty .
$$

Therefore, by the Borel-Canelli lemma, we see that with  $\mathbb{P}^*$ -probability one for all  $n$  sufficiently large  $h(B_t) \geq n$  for  $t \geq T_n$ .

# 8.3 Time changes

To prepare for the next section we will consider time changes of Brownian motion. If  $B_{t}$  is a standard Brownian motion and  $Y_{t} = B_{at}$ , then  $Y_{t}$  is a Brownian motion with variance parameter  $a$ . We can write

$$
Y_{t} = \int_{0}^{t} \sqrt{a} d W_{s},
$$

where  $W_{t} = a^{-1 / 2}B_{at}$  is a standard Brownian motion. We generalize this by considering  $Y_{t} = B_{a(t)}$  where  $a$  is a strictly increasing continuous function. We allow  $a(t)$  to be random, but it must be adapted to the Brownian motion. In other words, for each  $t$ , the random time  $a(t)$  must be a stopping time for the Brownian motion  $B_{t}$ . We will make the further assumption that  $a$  is a  $C^1$  function, that is, we can write

$$
a (t) = \int_{0}^{t} \dot {a} (s) d s,
$$

where  $s \mapsto \dot{a}(s)$  is a continuous nonnegative function. The assumption that  $a(t)$  is strictly increasing implies that there are no open intervals on which  $\dot{a}(s)$  is identically zero. If  $Y(t) = B_{a(t)}$ , then  $Y_t$  is a continuous local martingale and we can write

$$
Y_{t} = \int_{0}^{t} \sqrt{\dot {a} (s)} d W_{s},
$$

where  $W_{t}$  is the standard Brownian motion

$$
W_{t} = \int_{0}^{t} [ \dot {a} (s) ]^{- 1 / 2} d B_{a (s)}. \tag {8.7}
$$

One can verify this is a standard Brownian motion by checking that is a martingale with  $\langle W\rangle_t = t$ . More generally, if  $X_{t}$  satisfies the SDE

$$
d X_{t} = R_{t} d t + A_{t} d B_{t},
$$

and  $Y_{t} = X_{a(t)}$ , then  $Y_{t}$  satisfies the SDE

$$
d Y_{t} = \dot {a} (t) R_{a (t)} d t + \sqrt{\dot {a} (t)} A_{a (t)} d W_{t},
$$

where  $W_{t}$  is the standard Brownian motion (8.7).

Example 8.3.1. Suppose that  $X_{t}$  satisfies the Bessel equation

$$
d X_{t} = \frac{r}{X_{t}} d t + d B_{t}, \quad X_{0} = 1,
$$

where  $r \in \mathbb{R}$ . This is defined for  $t < T = \inf \{s : X_s = 0\}$ . For  $t < T$ , let  $L_t = \log X_t$ . Then Ito's formula shows that

$$
\begin{array}{l} d L_{t} = \frac{1}{X_{t}} d X_{t} - \frac{1}{2 X_{t}^{2}} d \langle X \rangle_{t} \\ = \left(r - \frac{1}{2}\right) e^{- 2 L_{t}} d t + e^{- L_{t}} d B_{t}. \\ \end{array}
$$

Consider the time change with  $\dot{a}(t) = e^{2L_t}$ , and let  $Y_{t} = L_{a(t)}$ . Then  $Y_{t}$  satisfies

$$
d Y_{t} = \left(r - \frac{1}{2}\right) d t + d W_{t},
$$

where  $W_{t}$  is a standard Brownian motion. In other words,  $Y_{t}$  is a Brownian motion with variance parameter 1 and drift  $m = r - \frac{1}{2}$ . From this we can see that  $Y_{t} \to \infty$  if  $r > 1/2$ ,  $Y_{t} \to -\infty$  if  $r < 1/2$ , and

$$
- \infty = \liminf_{t\to \infty}Y_{t} <   \limsup_{t\to \infty}Y_{t} = \infty ,
$$

if  $r = 1/2$ . One can use this to give another proof of Proposition 4.2.1. Note that if  $r < 1/2$ , then in the new time, it takes an infinite amount of time for  $L = \log X$  to reach  $-\infty$ . However, in the original time, this happens at time  $T < \infty$ . In other words,

$$
a (T) = \int_{0}^{T} \frac{d s}{\dot {a} (s)} = \infty .
$$

# 8.4 Complex Brownian motion

If  $B_t^1, B_t^2$  are independent standard Brownian motions then

$$
B_{t} = B_{t}^{1} + i B_{t}^{2}
$$

is called a (standard) complex Brownian motion. Note that this is the same as a two-dimensional Brownian motion except that the point in the plane is viewed as a complex number.

Suppose  $f: \mathbb{C} \to \mathbb{C}$  is a nonconstant holomorphic (complex differentiable) function. We will consider  $X_{t} = f(B_{t})$ . Near any point  $z$  with  $f'(z) \neq 0$ , the function looks like  $f(w) = f(z) + f'(z)(w - z)$ . Multiplication by  $f'(z)$  is the same as a dilation by  $|f'(z)|$  and a rotation by  $\arg f'(z)$ . A rotation of a standard two-dimensional Brownian motion gives a standard two-dimensional Brownian motion and a dilation gives a Brownian motion with a different variance. This leads us to believe that  $X_{t}$  is a time-change of standard Brownian motion.

Let us make this more precise. Let

$$
a (t) = \int_{0}^{t} | f^{\prime} (B_{s}) |^{2} d s.
$$

We consider the time-change in which it takes time  $a(t)$  to traverse  $f(B[0, t])$ . Equivalently, in time  $t$  one has traversed  $f(B[0, a^{-1}(t)])$ .

Theorem 8.4.1. Let  $Y_{t} = X_{a^{-1}(t)}$ . Then  $Y_{t}$  is a standard complex Brownian motion.

Proof. Write  $f = u + iv$ ,  $X_{t} = U_{t} + iV_{t}$ ,  $Y_{t} = \hat{U}_{t} + i\hat{V}_{t}$ . The Cauchy-Riemann equations imply that  $\partial_x u = \partial_y v$ ,  $\partial_y u = -\partial_x v$  and

$$
\nabla^{2} u = \partial_{x} \partial_{x} u + \partial_{y} \partial_{y} u = \partial_{x} \partial_{y} v + \partial_{y} (- \partial_{x} v) = 0.
$$

Similarly  $\nabla^2 v = 0$ . Since  $U_{t} = u(B_{t}^{1},B_{t}^{2})$ ,  $V_{t} = v(B_{t}^{1},B_{t}^{2})$ , then Ito's formula (see Theorem 3.7.2) gives

$$
d U_{t} = \nabla u (B_{t}) \cdot d B_{t} = \partial_{x} u (B_{t}) d B_{t}^{1} + \partial_{y} u (B_{t}) d B_{t}^{2}.
$$

$$
\begin{array}{l} {d V_{t} = \nabla v (B_{t}) \cdot d B_{t}} = {\partial_{x} v (B_{t}) d B_{t}^{1} + \partial_{y} v (B_{t}) d B_{t}^{2}} \\ = - \partial_{y} u (B_{t}) d B_{t}^{1} + \partial_{x} u (B_{t}) d B_{t}^{2}. \\ \end{array}
$$

Note that

$$
\begin{array}{l} {d \langle U \rangle_{t}} = {\left([ \partial_{x} u (B_{t}) ]^{2} + [ \partial_{y} u (B_{t}) ]^{2}\right) d t} \\ = \left(\left[ \partial_{x} u (B_{t}) \right]^{2} + \left[ - \partial_{x} v (B_{t}) \right]^{2}\right) d t = \left| f^{\prime} (B_{t}) \right|^{2} d t, \\ d \langle V \rangle_{t} = | f^{\prime} (B_{t}) |^{2} d t, \\ d \langle U, V \rangle_{t} = 0. \\ \end{array}
$$

Therefore,  $\hat{U}_t, \hat{V}_t$  are martingales with quadratic variation  $t$  and hence are standard Brownian motions. Since  $\langle U, V \rangle_t = 0$ , we also have  $\langle \hat{U}, \hat{V} \rangle_t = 0$  and hence  $\hat{U}_t, \hat{V}_t$  are independent.

The last theorem assumes that the function  $f$  is entire, that is, it is defined and holomorphic on all of  $\mathbb{C}$ . Suppose  $D$  is domain, that is, an open, connected subset of  $\mathbb{C}$ , and suppose that  $f$  is a nonconstant holomorphic function on  $D$ . Let  $B_{t}$  be a complex Brownian motion, and let

$$
\tau_{D} = \inf  \{t \geq 0: B_{t} \notin D \}.
$$

Then the process  $X_{t}$  as above is defined for  $t < \tau_{D}$ , and the process  $Y_{t}$  is defined for  $t < a(\tau_{D} - )$  with the processes taking values in  $f(D)$ .

Theorem 8.4.2. If  $f$  is a holomorphic function on a domain  $D$ , and  $X_{t}, Y_{t}$  are defined as above, then  $Y_{t}, 0 \leq t < a(\tau_{D} -)$  is a standard complex Brownian motion.

One very important case is when  $f$  maps  $D$  one-to-one onto  $f(D)$ . Such functions are often called conformal transformations. In this case  $f^{-1}$  is a conformal transformation from  $f(D)$  to  $D$ , and

$$
a \left(\tau_{D} -\right) = \inf  \left\{t: Y_{t} \notin f (D) \right\}.
$$

In particular, this shows that harmonic measure is a conformal invariant,

$$
\operatorname{hm}_{D} (V; z) = \operatorname{hm}_{f (D)} (f (V); f (z)).
$$

# 8.5 Exercises

Exercise 8.1. Use (8.6) to prove Theorem 8.1.5.

Exercise 8.2. Suppose  $D \subset \mathbb{C}$  is a domain and  $\phi$  is a harmonic function on  $D$  (here we are also viewing  $D$  as a subset of  $\mathbb{R}^2$ ). Let  $f: D \to f(D)$  be a conformal transformation and let

$$
\psi (w) = \phi (f^{- 1} (w)).
$$

Show that  $\psi$  is a harmonic function on  $f(D)$  in two different ways:

- Do a direct computation to show that  $\nabla^2\psi = 0$  
- Use the conformal invariance of harmonic measure and (8.2).