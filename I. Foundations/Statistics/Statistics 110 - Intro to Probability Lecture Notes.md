# Statistics 110—Intro to Probability

Lectures by Joe Blitzstein

Notes by Max Wang

Harvard University, Fall 2011

Lecture 2:  $9 / 2 / 11$  1  
Lecture 3: 9/7/11. 1  
Lecture 4: 9/9/11. 1  
Lecture 5: 9/12/11 2  
Lecture 6: 9/14/11 3  
Lecture 7: 9/16/11 3  
Lecture 8: 9/19/11 4  
Lecture 9: 9/21/11 5  
Lecture 10: 9/23/11 6  
Lecture 11: 9/26/11 7  
Lecture 12: 9/28/11 8  
Lecture 13: 9/30/11 8  
Lecture 14: 10/3/11 10  
Lecture 15:  $10 / 5 / 11$  11  
Lecture 17: 10/14/11. 12  
Lecture 18: 10/17/11. 13

Lecture 19: 10/19/11. 14  
Lecture 20: 10/21/11. 15  
Lecture 21: 10/24/11. 16  
Lecture 22: 10/26/11. 17  
Lecture 23: 10/28/11. 18  
Lecture 24: 10/31/11. 19  
Lecture 25: 11/2/11 20  
Lecture 26: 11/4/11 21  
Lecture 27: 11/7/11 22  
Lecture 28: 11/9/11 24  
Lecture 29: 11/14/11. 25  
Lecture 30: 11/16/11 26  
Lecture 31: 11/18/11 27  
Lecture 32: 11/21/11. 28  
Lecture 33: 11/28/11. 29

# Introduction

Statistics 110 is an introductory statistics course offered at Harvard University. It covers all the basics of probability—counting principles, probabilistic events, random variables, distributions, conditional probability, expectation, and Bayesian inference. The last few lectures of the course are spent on Markov chains.

These notes were partially live-TEXed—the rest were TEXed from course videos—then edited for correctness and clarity. I am responsible for all errata in this document, mathematical or otherwise; any merits of the material here should be credited to the lecturer, not to me.

Feel free to email me at mxawng@gmail.com with any comments.

# Acknowledgments

In addition to the course staff, acknowledgment goes to Zev Chonoles, whose online lecture notes (http://math.uchicago.edu/~chonoles/expository-notes/) inspired me to post my own. I have also borrowed his format for this introduction page.

The page layout for these notes is based on the layout I used back when I took notes by hand. The  $\mathrm{LATEX}$  styles can be found here: https://github.com/mxw/latex-custom.

# Copyright

Copyright © 2011 Max Wang.

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License. This means you are free to edit, adapt, transform, or redistribute this work as long as you

- include an attribution of Joe Blitzstein as the instructor of the course these notes are based on, and an attribution of Max Wang as the note-taker;  
- do so in a way that does not suggest that either of us endorses you or your use of this work;  
- use this work for noncommercial purposes only; and  
- if you adapt or build upon this work, apply this same license to your contributions.

See http://creativecommons.org/licenses/by-nc-sa/4.0/ for the license details.

# Lecture 2 — 9/2/11

Definition 2.1. A sample space  $S$  is the set of all possible outcomes of an experiment.

Definition 2.2. An event  $A \subseteq S$  is a subset of a sample space.

Definition 2.3. Assuming that all outcomes are equally likely and that the sample space is finite,

$$
P (A) = \frac {\# \text {f a v o r a b l e o u t c o m e s}}{\# \text {p o s s i b l e o u t c o m e s}}
$$

is the probability that  $A$  occurs.

Proposition 2.4 (Multiplication Rule). If there are  $r$  experiments and each experiment has  $n_i$  possible outcomes, then the overall sample space has size

$$
n _ {1} n _ {2} \dots n _ {r}
$$

Example. The probability of a full house in a five card poker hand (without replacement, and without other players) is

$$
P (\text {f u l l h o u s e}) = \frac {1 3 \binom {4} {3} \cdot 1 2 \binom {4} {2}}{\binom {5 2} {5}}
$$

Definition 2.5. The binomial coefficient is given by

$$
\binom {n} {k} = \frac {n !}{(n - k) ! k !}
$$

or 0 if  $k > n$ .

Theorem 2.6 (Sampling Table). The number of subsets of size  $k$  chosen from a set of  $n$  distinct elements is given by the following table:

<table><tr><td></td><td>ordered</td><td>unordered</td></tr><tr><td>replacement</td><td>nk</td><td>(n+k-1/k)</td></tr><tr><td>no replacement</td><td>n!/(n-k)!</td><td>(n/k)</td></tr></table>

# Lecture 3 — 9/7/11

Proposition 3.1. The number of ways to choose  $k$  elements from a set of order  $n$ , with replacement and where order doesn't matter, is

$$
\left( \begin{array}{c} n + k - 1 \\ k \end{array} \right)
$$

Proof. This count is equivalent to the number of ways to put  $k$  indistinguishable particles in  $n$  distinguishable boxes. Suppose we order the particles; then this count is simply the number of ways to place "dividers" between the particles, e.g.,

$$
\bullet \bullet \bullet | \bullet | \bullet \bullet | | \bullet | \bullet
$$

There are

$$
\binom {n + k - 1} {k} = \binom {n + k - 1} {n - 1}
$$

ways to place the particles, which determines the placement of the divisors (or vice versa); this is our result.

Example. 1.  $\binom{n}{k} = \binom{n}{n-k}$

2.  $n\binom{n-1}{k-1}=k\binom{n}{k}$

Pick  $k$  people out of  $n$ , then designate one as special. The RHS represents how many ways we can do this by first picking the  $k$  individuals and then making our designation. On the LHS, we see the number of ways to pick a special individual and then pick the remaining  $k - 1$  individuals from the remaining pool of  $n - 1$ .

3. (Vandermonde)

$$
\binom {n + m} {k} = \sum_ {i = 0} ^ {k} \binom {n} {i} \binom {m} {k - i}
$$

On the LHS, we choose  $k$  people out of  $n + m$ . On the RHS, we sum up, for every  $i$ , how to choose  $i$  from the  $n$  people and  $k - i$  from the  $m$  people.

Definition 3.2. A probability space consists of a sample space  $S$  along with a function  $P: \mathcal{P}(S) \to [0,1]$  taking events to real numbers, where

1.  $P(\emptyset) = 0$ ,  $P(S) = 1$  
2.  $P(\bigcup_{n = 1}^{\infty}A_n) = \sum_{n = 1}^{\infty}P(A_n)$  if the  $A_{n}$  are disjoint

# Lecture 4 — 9/9/11

Example (Birthday Problem). The probability that at least two people among a group of  $k$  share the same birthday, assuming that birthdays are evenly distributed across the 365 standard days, is given by

$$
\begin{array}{l} P (\text {m a t c h}) = 1 - P (\text {n o m a t c h}) \\ = 1 - \frac {3 6 5 \cdot 3 6 4 \cdots (3 6 5 - k + 1)}{3 6 5 ^ {k}} \\ \end{array}
$$

Proposition 4.1.

1.  $P(A^C) = 1 - P(A)$  
2. If  $A \subseteq B$ , then  $P(A) \leq P(B)$ .

3.  $P(A\cup B) = P(A) + P(B) - P(A\cap B).$

Proof. All immediate.

Corollary 4.2 (Inclusion-Exclusion). Generalizing 3 above,

$$
\begin{array}{l} P \left(\bigcup_ {i = 1} ^ {n} A _ {i}\right) = \sum_ {i = 1} ^ {n} P (A _ {i}) - \sum_ {i <   j} P \left(A _ {i} \cap A _ {j}\right) \\ + \sum_ {i <   j <   k} P \left(A _ {i} \cap A _ {j} \cap A _ {k}\right) - \dots \\ + (- 1) ^ {n + 1} P \left(\bigcap_ {i = 1} ^ {n} A _ {i}\right) \\ \end{array}
$$

Example (deMontmort's Problem). Suppose we have  $n$  cards labeled  $1, \ldots, n$ . We want to determine the probability that for some card in a shuffled deck of such cards, the  $i$ th card has value  $i$ . Since the number of orderings of the deck for which a given set of matches occurs is simply the permutations on the remaining cards, we have

$$
P (A _ {i}) = \frac {(n - 1) !}{n !} = \frac {1}{n}
$$

$$
P (A _ {1} \cap A _ {2}) = \frac {(n - 2) !}{n !} = \frac {1}{n (n - 1)}
$$

$$
P (A _ {1} \cap \dots \cap A _ {k}) = \frac {(n - k) !}{n !}
$$

So using the above corollary,

$$
\begin{array}{l} P \left(A _ {1} \cup \dots \cup A _ {n}\right) = n \cdot \frac {1}{n} - \frac {n (n - 1)}{2 !} \cdot \frac {1}{n (n - 1)} \\ + \frac {n (n - 1) (n - 2)}{3 !} \cdot \frac {1}{n (n - 1) (n - 2)} \\ = 1 - \frac {1}{2 !} + \frac {1}{3 !} - \dots + (- 1) ^ {n} \frac {1}{n !} \\ \approx 1 - \frac {1}{e} \\ \end{array}
$$

Lecture 5 — 9/12/11

Note. Translation from English to inclusion-exclusion:

- Probability that at least one of the  $A_{i}$  occurs:

$$
P (A _ {1} \cup \dots \cup A _ {n})
$$

- Probability that none of the  $A_{i}$  occurs:

$$
1 - P \left(A _ {1} \cup \dots \cup A _ {n}\right)
$$

- Probability that all of the  $A_{i}$  occur:

$$
P \left(A _ {1} \cap \dots \cap A _ {n}\right) = 1 - P \left(A _ {1} ^ {C} \cup \dots \cup A _ {n} ^ {C}\right)
$$

Definition 5.1. The probability of two events  $A$  and  $B$  are independent if

$$
P (A \cap B) = P (A) P (B)
$$

In general, for  $n$  events  $A_{1},\ldots ,A_{n}$ , independence requires  $i$ -wise independence for every  $i = 2,\dots ,n$ ; that is, say, pairwise independence alone does not imply independence.

Note. We will write  $P(A \cap B)$  as  $P(A, B)$ .

Example (Newton-Pepys Problem). Suppose we have some fair dice; we want to determine which of the following is most likely to occur:

1. At least one 6 given 6 dice.  
2. At least two 6's with 12 dice.  
3. At least three 6's with 18 dice.

For the first case, we have

$$
P (A) = 1 - \left(\frac {- 1}{5}\right) ^ {6}
$$

For the second,

$$
P (B) = 1 - \left(\frac {- 1}{5}\right) ^ {1 2} - 1 2 \left(\frac {- 1}{1}\right) \left(\frac {- 1}{5}\right) ^ {1 1}
$$

and for the third,

$$
P (C) = 1 - \sum_ {k = 0} ^ {2} \binom {1 8} {k} \left(\frac {- 1}{1}\right) ^ {k} \left(\frac {- 1}{5}\right) ^ {1 8 - k}
$$

(The summand on the RHS is called a binomial probability.)

Thus far, all the probabilities with which we have concerned ourselves have been unconditional. We now turn to conditional probability, which concerns how to update our beliefs (and computed probabilities) based on new evidence?

Definition 5.2. The probability of an event  $A$  given  $B$  is

$$
P (A | B) = \frac {P (A \cap B)}{P (B)}
$$

if  $P(B) > 0$

Corollary 5.3.

$$
P (A \cap B) = P (B) P (A | B) = P (A) P (B | A)
$$

or, more generally,

$$
\begin{array}{l} P \left(A _ {1} \cap \dots \cap A _ {n}\right) = P \left(A _ {1}\right) \cdot P \left(A _ {2} \mid A _ {1}\right) \cdot P \left(A _ {3} \mid A _ {1}, A _ {2}\right) \\ \dots P \left(A _ {n} \mid A _ {1}, \dots , A _ {n - 1}\right) \\ \end{array}
$$

Theorem 5.4 (Bayes' Theorem).

$$
P (A | B) = \frac {P (B | A) P (A)}{P (B)}
$$

# Lecture 6 — 9/14/11

Theorem 6.1 (Law of Total Probability). Let  $S$  be a sample space and  $A_{1},\ldots ,A_{n}$  a partition of  $S$ . Then

$$
\begin{array}{l} P (B) = P \left(B \cap A _ {1}\right) + \dots + P \left(B \cap A _ {n}\right) \\ = P (B \mid A _ {1}) P (A _ {1}) + \dots + P (B \mid A _ {n}) P (A _ {n}) \\ \end{array}
$$

Example. Suppose we are given a random two-card hand from a standard deck.

1. What is the probability that both cards are aces given that we have an ace?

$$
\begin{array}{l} P (\text {b o t h a c e s} \mid \text {h a v e a c e}) = \frac {P (\text {b o t h a c e s} , \text {h a v e a c e})}{P (\text {h a v e a c e})} \\ = \frac {\binom {4} {2} / \binom {5 2} {2}}{1 - \binom {4 8} {2} / \binom {5 2} {2}} \\ = \frac {1}{3 3} \\ \end{array}
$$

2. What is the probability that both cards are aces given that we have the ace of spades?

$$
P (\text {b o t h a c e s} \mid \text {a c e o f s p a d e s}) = \frac {3}{5 1} = \frac {1}{1 7}
$$

Example. Suppose that a patient is being tested for a disease and it is known that  $1\%$  of similar patients have the disease. Suppose also that the patient tests positive and that the test is  $95\%$  accurate. Let  $D$  be the event that the patient has the disease and  $T$  the event that he tests positive. Then we know  $P(T|D) = 0.95 = P(T^{C}|D^{C})$ . Using Bayes' theorem and the Law of Total Probability, we can compute

$$
\begin{array}{l} P (D | T) = \frac {P (T | D) P (D)}{P (T)} \\ = \frac {P (T | D) P (D)}{P (T | D) P (D) + P (T | D ^ {C}) P (D ^ {C})} \\ \approx 0. 1 6 \\ \end{array}
$$

Definition 6.2. Two events  $A$  and  $B$  are conditionally independent of an event  $C$  if

$$
P ((A \cap B) \mid C) = P (A | C) P (B | C)
$$

Example. Two conditionally independent events are not necessarily unconditionally independent. For instance, suppose we have a chess opponent of unknown strength. We might say that conditional on the opponent's strength, all games outcomes would be independent. However, without knowing the opponent's strength, earlier games would give us useful information about the opponent's strength; hence, without the conditioning, the game outcomes are not independent.

Example. Two independent events are not necessarily conditionally independent. Suppose we know that a fire alarm goes off (event  $A$ ). Suppose there are only two possible causes, that a fire happened,  $F$ , or that someone was making popcorn,  $C$ , and suppose moreover that these events are independent. Given, however, that the alarm went off, we have

$$
P (F | (A \cap C ^ {C})) = 1
$$

and hence we do not have conditional independence.

# Lecture 7 — 9/16/11

Example (Monty Hall Problem). Suppose there are three doors, behind two of which are goats and behind one of which is a car. Monty Hall, the game show host, knows the contents of each door, but we, the player, do not, and have one chance to choose the car. After choosing a door, Monty then opens one of the two remaining doors to reveal a goat (if both remaining doors have goats, he chooses with equal probability). We are then given the option to change our choice—should we do so?

In fact, we should; the chance that switching will give us the car is the same as the chance that we did not originally pick the car, which is  $\frac{2}{3}$ . However, we can also solve the problem by conditioning. Suppose we have chosen a door (WLOG, say the first). Let  $S$  be the event of finding the car by switching, and let  $D_{i}$  be the event that the car is in door  $i$ . Then by the Law of Total Probability,

$$
\begin{array}{l} P (S) = P (S \mid D _ {1}) \frac {1}{3} + P (S \mid D _ {2}) \frac {1}{3} + P (S \mid D _ {3}) \frac {1}{3} \\ = 0 + 1 \cdot \frac {1}{3} + 1 \cdot \frac {1}{3} \\ = \frac {2}{3} \\ \end{array}
$$

By symmetry, the probability that we succeed conditioned on the door Monty opens is the same.

Example (Simpson's Paradox). Suppose we have the two following tables:

<table><tr><td colspan="3">Hibbert</td></tr><tr><td></td><td>heart</td><td>band-aid</td></tr><tr><td>success</td><td>70</td><td>10</td></tr><tr><td>failure</td><td>20</td><td>0</td></tr></table>

<table><tr><td></td><td colspan="2">Nick</td></tr><tr><td></td><td>heart</td><td>band-aid</td></tr><tr><td>success</td><td>2</td><td>81</td></tr><tr><td>failure</td><td>8</td><td>9</td></tr></table>

for the success of two doctors for two different operations.

Note that although Hibbert has a higher success rate conditional on each operation, Nick's success rate is higher overall. Let us denote  $A$  to be the event of a successful operation,  $B$  the event of being treated by Nick, and  $C$  the event of having heart surgery. In other words, then, we have

$$
P (A | B, C) <   P (A | B ^ {C}, C)
$$

and

$$
P (A | B, C ^ {C}) <   P (A | B ^ {C}, C ^ {C})
$$

but

$$
P (A | B) > P (A | B ^ {C})
$$

In this example,  $C$  is the confounder.

# Lecture 8 — 9/19/11

Definition 8.1. A one-dimensional random walk models a (possibly infinite) sequence of successive steps along the number line, where, starting from some position  $i$ , we have a probability  $p$  of moving  $+1$  and a probability  $q = 1 - p$  of moving  $-1$ .

Example. An example of a one-dimensional random walk is the gambler's ruin problem, which asks: Given two individuals  $A$  and  $B$  playing a sequence of successive rounds of a game in which they bet $1, with  $A$  winning  $B$ 's dollar with probability  $p$  and  $A$  losing a dollar to  $B$  with probability  $q = 1 - p$ , what is the probability that  $A$  wins the game (supposing  $A$  has  $i$  dollars and  $B$  has  $n - i$  dollars)? This problem can be modeled by a random walk with absorbing states at 0 and  $n$ , starting at  $i$ .

To solve this problem, we perform first-step analysis; that is, we condition on the first step. Let  $p_i = P(A \text{ wins game} | A \text{ start at } i)$ . Then by the Law of Total Probability, for  $1 \leq i \leq n - 1$

$$
p _ {i} = p p _ {i + 1} + q p _ {i - 1}
$$

and of course we have  $p_0 = 0$  and  $p_n = 1$ . This equation is a difference equation.

To solve this equation, we start by guessing

$$
p _ {i} = x ^ {i}
$$

Then we have

$$
x ^ {i} = p x ^ {i + 1} + q x ^ {i - 1}
$$

$$
\begin{array}{l} p x ^ {2} - x ^ {i} + q = 0 \\ x = \frac {1 \pm \sqrt {1 - 4 p q}}{2 p} \\ = \frac {1 \pm \sqrt {1 - 4 p (1 - p)}}{2 p} \\ \end{array}
$$

$$
\begin{array}{l} = \frac {1 \pm \sqrt {4 p ^ {2} - 4 p + 1}}{2 p} \\ = \frac {1 \mp (2 p - 1)}{2 p} \\ = 1, \frac {q}{p} \\ \end{array}
$$

As with differential equations, this gives a general solution of the form

$$
p _ {i} = A 1 ^ {i} + B \left(\frac {- 1}{q}\right) ^ {i}
$$

for  $p \neq q$  (to avoid a repeated root). Our boundary conditions for  $p_0$  and  $p_n$  give

$$
B = - A
$$

and

$$
1 = A \left(1 - \frac {q}{p}\right) ^ {n}
$$

To solve for the case where  $p = q$ , we can guess  $x = \frac{q}{p}$  and take

$$
\lim  _ {x \rightarrow 1} \frac {1 - x ^ {i}}{1 - x ^ {n}} = \lim  _ {x \rightarrow 1} \frac {i x ^ {i - 1}}{n x ^ {n - 1}} = \frac {i}{n}
$$

So we have

$$
p _ {i} = \left\{ \begin{array}{l l} \frac {1 - \left(\frac {- 1}{q}\right) ^ {i}}{1 - \left(\frac {- 1}{q}\right) ^ {n}} & p \neq q \\ \frac {i}{n} & p = q \end{array} \right.
$$

Now suppose that  $p = 0.49$  and  $i = n - i$ . Then we have the following surprising table

<table><tr><td>N</td><td>P(A wins)</td></tr><tr><td>20</td><td>0.40</td></tr><tr><td>100</td><td>0.12</td></tr><tr><td>200</td><td>0.02</td></tr></table>

Note that this table is true when the odds are only slightly against  $A$  and when  $A$  and  $B$  start off with equal funding; it is easy to see that in a typical gambler's situation, the chance of winning is extremely small.

Definition 8.2. A random variable is a function

$$
X: S \to \mathbb {R}
$$

from some sample space  $S$  to the real line. A random variable acts as a "summary" of some aspect of an experiment.

Definition 8.3. A random variable  $X$  is said to have the Bernoulli distribution if  $X$  has only two possible values, 0 and 1, and there is some  $p$  such that

$$
P (X = 1) = p \quad P (X = 0) = 1 - p
$$

We say that

$$
X \sim \operatorname {B e r n} (p)
$$

Note. We write  $X = 1$  to denote the event

$$
\{s \in S: X (s) = 1 \} = X ^ {- 1} \{1 \}
$$

Definition 8.4. The distribution of successes in  $n$  independent Bern( $p$ ) trials is called the binomial distribution and is given by

$$
P (X = k) = \binom {n} {k} p ^ {k} (1 - p) ^ {n - k}
$$

where  $0 \leq k \leq n$ . We write

$$
X \sim \operatorname {B i n} (n, p)
$$

Definition 8.5. The probability mass function (PMF) of a discrete random variable (a random variable with enumerable values) is a function that gives the probability that the random variable takes some value. That is, given a discrete random variable  $X$ , its PMF is

$$
f _ {X} (x) = P (X = x)
$$

# Lecture 9 — 9/21/11

In addition to our definition of the binomial distribution by its PMF, we can also express a random variable  $X \sim \operatorname{Bin}(n,p)$  as a sum of indicator random variables,

$$
X = X _ {1} + \dots + X _ {n}
$$

where

$$
X _ {i} = \left\{ \begin{array}{l l} 1 & i \text {t h t r i a l s u c c e e d s} \\ 0 & \text {o t h e r w i s e} \end{array} \right.
$$

In other words, the  $X_{i}$  are i.i.d. (independent, identically distributed)  $\operatorname{Bern}(p)$ .

Definition 9.1. The cumulative distribution function (CDF) of a random variable  $X$  is

$$
F _ {X} (x) = P (X \leq x)
$$

Note. The requirements for a PMF with values  $p_i$  is that each  $p_i \geq 0$  and  $\sum_{i} p_i = 1$ . For  $\operatorname{Bin}(n, p)$ , we can easily verify this with the binomial theorem, which yields

$$
\sum_ {k = 0} ^ {n} \binom {n} {k} p ^ {k} q ^ {n - k} = (p + q) ^ {n} = 1
$$

Proposition 9.2. If  $X, Y$  are independent random variables and  $X \sim \mathrm{Bin}(n,p)$ ,  $Y \sim \mathrm{Bin}(m,p)$ , then

$$
X + Y \sim \operatorname {B i n} (n + m, p)
$$

Proof. This is clear from our "story" definition of the binomial distribution, as well as from our indicator r.v.'s. Let us also check this using PMFs.

$$
\begin{array}{l} P (X + Y = k) = \sum_ {j = 0} ^ {k} P (X + Y = k \mid X = j) P (X = j) \\ = \sum_ {j = 0} ^ {k} P (Y = k - j \mid X - j) \binom {n} {j} p ^ {j} q ^ {n - j} \\ \end{array}
$$

independence  $= \sum_{j = 0}^{k}P(Y = k - j)\binom{n}{j}p^{j}q^{n - j}$

$$
\begin{array}{l} = \sum_ {j = 0} ^ {k} \binom {m} {k - j} p ^ {k - j} q ^ {m - (k - j)} \binom {n} {j} p ^ {j} q ^ {n - j} \\ = p ^ {k} q ^ {n + m - k} \sum_ {j = 0} ^ {k} \binom {m} {k - j} \binom {n} {j} \\ \end{array}
$$

Vandermonde  $= \binom{n+m}{k} p^k q^{n+m-k}$

Example. Suppose we draw a random 5-card hand from a standard 52-card deck. We want to find the distribution of the number of aces in the hand. Let  $X = \#$  aces. We want to determine the PMF of  $X$  (or the CDF—but the PMF is easier). We know that  $P(X = k) = 0$  except if  $k = 0,1,2,3,4$ . This is clearly not binomial since the trials (of drawing cards) are not independent. For  $k = 0,1,2,3,4$ , we have

$$
P (X = k) = \frac {\binom {4} {k} \binom {4 8} {5 - k}}{\binom {5 2} {5}}
$$

which is just the probability of choosing  $k$  out of the 4 aces and  $5 - k$  of the non-aces. This is reminiscent of the elk problem in the homework.

Definition 9.3. Suppose we have  $w$  white and  $b$  black marbles, out of which we choose a simple random sample of  $n$ . The distribution of  $\#$  of white marbles in the sample, which we will call  $X$ , is given by

$$
P (X = k) = \frac {\binom {w} {k} \binom {b} {n - k}}{\binom {w + b} {n}}
$$

where  $0 \leq k \leq w$  and  $0 \leq n - k \leq b$ . This is called the hypergeometric distribution, denoted  $\mathrm{HGeom}(w,b,n)$ .

Proof. We should show that the above is a valid PMF. It is clearly nonnegative. We also have, by Vandermonde's identity,

$$
\sum_ {k = 0} ^ {w} \frac {\binom {w} {k} \binom {b} {n - k}}{\binom {w + b} {n}} = \frac {\binom {w + b} {n}}{\binom {w + b} {n}} = 1
$$

Note. The difference between the hypergometric and binomial distributions is whether or not we sample with replacement. We would expect that in the limiting case of  $n\to \infty$  , they would behave similarly.

# Lecture 10 — 9/23/11

Proposition 10.1 (Properties of CDFs). A function  $F_{X}$  is a valid CDF iff the following hold about  $F_{X}$ :

1. monotonically nondecreasing  
2. right-continuous  
3.  $\lim_{x\to -\infty}F_X(x) = 0$  and  $\lim_{x\to \infty}F_X(x) = 1$

Definition 10.2. Two random variables  $X$  and  $Y$  are independent if  $\forall x, y$ ,

$$
P (X \leq x, Y \leq y) = P (X \leq x) P (Y \leq y)
$$

In the discrete case, we can say equivalently that

$$
P (X = x, Y = y) = P (X = x) P (Y = y)
$$

Note. As an aside before we move on to discuss averages and expected values, recall that

$$
\frac {1}{n} \sum_ {i = 1} ^ {n} i = \frac {n + 1}{2}
$$

Example. Suppose we want to find the average of  $1, 1, 1, 1, 1, 3, 3, 5$ . We could just add these up and divide by 8, or we could formulate the average as a weighted average,

$$
\frac {5}{8} \cdot 1 + \frac {2}{8} \cdot 3 + \frac {1}{8} \cdot 5
$$

Definition 10.3. The expected value or average of a discrete random variable  $\overline{X}$  is

$$
E (X) = \sum_ {x \in \operatorname {I m} (X)} x P (X = x)
$$

Observation 10.4. Let  $X \sim \operatorname{Bern}(p)$ . Then

$$
E (X) = 1 \cdot P (X = 1) + 0 \cdot P (X = 0) = p
$$

Definition 10.5. If  $A$  is some event, then an indicator random variable for  $A$  is

$$
X = \left\{ \begin{array}{l l} 1 & A \text {o c c u r s} \\ 0 & \text {o t h e r w i s e} \end{array} \right.
$$

By definition,  $X \sim \operatorname{Bern}(P(A))$ , and by the above,

$$
E (X) = P (A)
$$

The above shows that to get the probability of an event, we can simply compute the expected value of an indicator.

Observation 10.6. Let  $X \sim \operatorname{Bin}(n, p)$ . Then (using the binomial theorem),

$$
\begin{array}{l} E (X) = \sum_ {k = 0} ^ {n} k \binom {n} {k} p ^ {k} q ^ {n - k} \\ = \sum_ {k = 1} ^ {n} k \binom {n} {k} p ^ {k} q ^ {n - k} \\ = \sum_ {k = 1} ^ {n} n \binom {n - 1} {k - 1} p ^ {k} q ^ {n - k} \\ = n p \sum_ {k = 1} ^ {n} \binom {n - 1} {k - 1} p ^ {k - 1} q ^ {n - k} \\ = n p \sum_ {j = 0} ^ {n - 1} \binom {n - 1} {j} p ^ {j} q ^ {n - 1 - j} \\ = n p \\ \end{array}
$$

Proposition 10.7. Expected value is linear; that is, for random variables  $X$  and  $Y$  and some constant  $c$ ,

$$
E (X + Y) = E (X) + E (Y)
$$

and

$$
E (c X) = c E (X)
$$

Observation 10.8. Using linearity, given  $X \sim \mathrm{Bin}(n,p)$ , since we know

$$
X = X _ {1} + \dots + X _ {n}
$$

where the  $X_{i}$  are i.i.d.  $\operatorname {Bern}(p)$  , we have

$$
X = p + \dots + p = n p
$$

Example. Suppose that, once again, we are choosing a five card hand out of a standard deck, with  $X = \#$  aces. If  $X_{i}$  is an indicator of the  $i$ th card being an ace, we have

$$
\begin{array}{l} E (X) = E \left(X _ {1} + \dots + X _ {5}\right) \\ = E \left(X _ {1}\right) + \dots + E \left(X _ {5}\right) \\ \end{array}
$$

by symmetry  $= 5E(X_{1})$

$$
\begin{array}{l} = 5 P (\text {f i r s t c a r d i s a c e}) \\ = \frac {5}{1 3} \\ \end{array}
$$

Note that this holds even though the  $X_{i}$  are dependent.

Definition 10.9. The geometric distribution,  $\operatorname{Geom}(p)$ , is the number of failures of independent Bern(p) trials before the first success. Its PMF is given by (for  $X \sim \operatorname{Geom}(p)$ )

$$
P (X = k) = q ^ {k} p
$$

for  $k\in \mathbb{N}$  . Note that this PMF is valid since

$$
\sum_ {k = 0} ^ {\infty} p q ^ {k} = p \cdot \frac {1}{1 - q} = 1
$$

Observation 10.10. Let  $X \sim \operatorname{Geom}(p)$ . We have our formula for infinite geometric series,

$$
\sum_ {k = 0} ^ {\infty} q ^ {k} = \frac {1}{1 - q}
$$

Taking the derivative of both sides gives

$$
\sum_ {k = 1} ^ {\infty} k q ^ {k - 1} = \frac {1}{(1 - q) ^ {2}}
$$

Then

$$
E (X) = \sum_ {k = 0} ^ {\infty} k p q ^ {k} = p \sum_ {k = 0} ^ {\infty} k q ^ {k} = \frac {p q}{(1 - q) ^ {2}} = \frac {q}{p}
$$

Alternatively, we can use first step analysis and write a recursive formula for  $E(X)$ . If we condition on what happens in the first Bernoulli trial, we have

$$
E (X) = 0 \cdot p + (1 + E (X)) q
$$

$$
E (X) - q E (X) = q
$$

$$
E (X) = \frac {q}{1 - q}
$$

$$
E (X) = \frac {q}{p}
$$

# Lecture 11 — 9/26/11

Recall our assertion that  $E$ , the expected value function, is linear. We now prove this statement.

Proof. Let  $X$  and  $Y$  be discrete random variables. We want to show that  $E(X + Y) = E(X) + E(Y)$ .

$$
\begin{array}{l} E (X + Y) = \sum_ {t} t P (X + Y = t) \\ = \sum_ {s} (X + Y) (s) P (\{s \}) \\ = \sum_ {s} (X (s) + Y (s)) P (\{s \}) \\ = \sum_ {s} X (s) P (\{s \}) + \sum_ {s} Y (s) P (\{s \}) \\ = \sum_ {x} x P (X = x) + \sum_ {y} y P (Y = y) \\ = E (X) + E (Y) \\ \end{array}
$$

The proof that  $E(cX) = cE(X)$  is similar.

Definition 11.1. The negative binomial distribution,  $\mathrm{NB}(r,p)$ , is given by the number of failures of independent Bern  $(p)$  trials before the  $r$ th success. The PMF for  $X \sim \mathrm{NB}(r,p)$  is given by

$$
P (X = n) = \left( \begin{array}{c} n + r - 1 \\ r - 1 \end{array} \right) p ^ {r} (1 - p) ^ {n}
$$

for  $n\in \mathbb{N}$

Observation 11.2. Let  $X \sim \mathrm{NB}(r, p)$ . We can write  $X = X_{1} + \dots + X_{r}$  where each  $X_{i}$  is the number of failures between the  $(i - 1)$ th and  $i$ th success. Then  $X_{i} \sim \operatorname{Geom}(p)$ . Thus,

$$
E (X) = E (X _ {1}) + \dots + E (X _ {r}) = \frac {r q}{p}
$$

Observation 11.3. Let  $X \sim \operatorname{FS}(p)$ , where  $\operatorname{FS}(p)$  is the time until the first success of independent Bern(p) trials, counting the success. Then if we take  $Y = X - 1$ , we have  $Y \sim \operatorname{Geom}(p)$ . So,

$$
E (X) = E (Y) + 1 = \frac {q}{p} + 1 = \frac {1}{p}
$$

Example. Suppose we have a random permutation of  $\{1, \ldots, n\}$  with  $n \geq 2$ . What is the expected number of local maxima—that is, numbers greater than both its neighbors?

Let  $I_{j}$  be the indicator random variable for position  $j$  being a local maximum  $(1 \leq j \leq n)$ . We are interested in

$$
E \left(I _ {1} + \dots + I _ {n}\right) = E \left(I _ {1}\right) + \dots + E \left(I _ {n}\right)
$$

For the non-endpoint positions, in each local neighborhood of three numbers, the probability that the largest number is in the center position is  $\frac{1}{3}$ .

$$
5, 2, \dots , \underbrace {2 8 , 3 , 8} _ {\cdot}, \dots , 1 4
$$

Moreover, these positions are all symmetrical. Analogously, the probability that an endpoint position is a local maximum is  $\frac{1}{2}$ . Then we have

$$
E \left(I _ {1}\right) + \dots + E \left(I _ {n}\right) = \frac {n - 2}{3} + \frac {2}{2} = \frac {n + 1}{3}
$$

Example (St. Petersburg Paradox). Suppose you are given the offer to play a game where a coin is flipped until a heads is landed. Then, for the number of flips  $i$  made up to and including the heads, you receive  $\$ 2^{i}$ . How much should you be willing to pay to play this game? That is, what price would make the game fair, or the expected value zero?

Let  $X$  be the number of flips of the fair coin up to and including the first heads. Clearly,  $X \sim FS\left(\frac{1}{2}\right)$ . If we let  $Y = 2^{X}$ , we want to find  $E(Y)$ . We have

$$
E (Y) = \sum_ {k = 1} ^ {\infty} 2 ^ {k} \cdot \frac {1}{2 ^ {k}} = \sum_ {k = 1} ^ {\infty} 1
$$

This assumes, however, that our cash source is boundless. If we bound it at  $2^{K}$  for some specific  $K$ , we should only bet  $K$  dollars for a fair game—this is a sizeable difference.

# Lecture 12 — 9/28/11

Definition 12.1. The Poisson distribution,  $\mathrm{Pois}(\lambda)$ , is given by the PMF

$$
P (X = k) = \frac {e ^ {- \lambda} \lambda^ {k}}{k !}
$$

for  $k\in \mathbb{N}$ $X\sim \mathrm{Pois}(\lambda)$  . We call  $\lambda$  the rate parameter.

Observation 12.2. Checking that this PMF is indeed valid, we have

$$
\sum_ {k = 0} ^ {\infty} e ^ {- \lambda} \frac {\lambda^ {k}}{k !} = e ^ {- \lambda} e ^ {\lambda} = 1
$$

Its mean is given by

$$
\begin{array}{l} E (X) = e ^ {- \lambda} \sum_ {k = 0} ^ {\infty} k \frac {\lambda^ {k}}{k !} \\ = e ^ {- \lambda} \sum_ {k = 1} ^ {\infty} \frac {\lambda^ {k}}{(k - 1) !} \\ = \lambda e ^ {- \lambda} \sum_ {k = 1} ^ {\infty} \frac {\lambda^ {k - 1}}{(k - 1) !} \\ = \lambda e ^ {- \lambda} e ^ {\lambda} \\ = \lambda \\ \end{array}
$$

The Poisson distribution is often used for applications where we count the successes of a large number of trials where the per-trial success rate is small. For example, the Poisson distribution is a good starting point for counting the number of people who email you over the course of an hour. The number of chocolate chips in a chocolate chip cookie is another good candidate for a Poisson distribution, or the number of earthquakes in a year in some particular region.

Since the Poisson distribution is not bounded, these examples will not be precisely Poisson. However, in general, with a large number of events  $A_{i}$  with small  $P(A_{i})$ , and where the  $A_{i}$  are all independent or "weakly dependent," then the number of the  $A_{i}$  that occur is approximately  $\mathrm{Pois}(\lambda)$ , with  $\lambda \approx \sum_{i=1}^{n} P(A_{i})$ . We call this a Poisson approximation.

Proposition 12.3. Let  $X \sim \operatorname{Bin}(n, p)$ . Then as  $n \to \infty$ ,  $p \to 0$ , and where  $\lambda = np$  is held constant, we have  $X \sim \operatorname{Pois}(\lambda)$ .

Proof. Fix  $k$ . Then as  $n \to \infty$  and  $p \to 0$ ,

$$
\begin{array}{l} \lim_{\substack{n\to \infty \\ p\to 0}}P(X = k) = \lim_{\substack{n\to \infty \\ p\to 0}}\binom {n}{k}p^{k}(1 - p)^{n - k} \\ = \lim_{\substack{n\to \infty \\ p\to 0}}\frac{n(n - 1)\cdots(n - k + 1)}{k!}\left(\frac{-1}{\lambda}\right)^{k}. \\ \left(1 - \frac {\lambda}{n}\right) ^ {n} \left(1 - \frac {\lambda}{n}\right) ^ {- k} \\ = \frac {\lambda^ {k}}{k !} \cdot e ^ {- \lambda} \\ \end{array}
$$

Example. Suppose we have  $n$  people and we want to know the approximate probability that at least three individuals have the same birthday. There are  $\binom{n}{3}$  triplets of people; for each triplet, let  $I_{ijk}$  be the indicator r.v. that persons  $i$ ,  $j$ , and  $k$  have the same birthday. Let  $X = \#$  triple matches. Then we know that

$$
E (X) = \binom {n} {3} \frac {1}{3 6 5 ^ {2}}
$$

To approximate  $P(X \geq 1)$ , we approximate  $X \sim \mathrm{Pois}(\lambda)$  with  $\lambda = E(X)$ . Then we have

$$
P (X \geq 1) = 1 - P (X = 0) = 1 - e ^ {- \lambda} \frac {\lambda^ {0}}{0 !} = 1 - e ^ {- \lambda}
$$

# Lecture 13 — 9/30/11

Definition 13.1. Let  $X$  be a random variable. Then  $X$  has a probability density function (PDF)  $f_{X}(x)$  if

$$
P (a \leq X \leq b) = \int_ {a} ^ {b} f _ {X} (x) \mathrm {d} x
$$

A valid PDF must satisfy

1.  $\forall x, f_{X}(x) \geq 0$  
2.  $\int_{-\infty}^{\infty}f_X(x)\mathrm{d}x = 1$

Note. For  $\epsilon > 0$  very small, we have

$$
f _ {X} (x _ {0}) \cdot \epsilon \approx P \left(X \in (x _ {0} - \frac {\epsilon}{2}, x _ {0} + \frac {\epsilon}{2})\right)
$$

Theorem 13.2. If  $X$  has PDF  $f_{X}$ , then its CDF is

$$
F _ {X} (x) = P (X \leq x) = \int_ {- \infty} ^ {x} f _ {X} (t) \mathrm {d} t
$$

If  $X$  is continuous and has CDF  $F_{X}$ , then its PDF is

$$
f _ {X} (x) = F _ {X} ^ {\prime} (x)
$$

Moreover,

$$
P (a <   X <   b) = \int_ {a} ^ {b} f _ {X} (x) \mathrm {d} x = F _ {X} (b) - F _ {X} (a)
$$

Proof. By the Fundamental Theorem of Calculus.

The CDF, then, is given by

Definition 13.3. The expected value of a continuous random variable  $X$  is given by

$$
E (X) = \int_ {- \infty} ^ {\infty} x f _ {X} (x) \mathrm {d} x
$$

Giving the expected value is like giving a one number summary of the average, but it provides no information about the spread of a distribution.

Definition 13.4. The variance of a random variable  $X$  is given by

$$
\operatorname {V a r} (X) = E \left(\left(X - E X\right) ^ {2}\right)
$$

which is the expected value of the distance from  $X$  to its mean; that is, it is, on average, how far  $X$  is from its mean.

We can't use  $E(X - EX)$  because, by linearity, we have

$$
E (X - E X) = E X - E (E X) = E X - E X = 0
$$

We would like to use  $E|X - EX|$ , but absolute value is hard to work with; instead, we have

Definition 13.5. The standard deviation of a random variable  $X$  is

$$
\operatorname {S D} (X) = \sqrt {\operatorname {V a r} (X)}
$$

Note. Another way we can write variance is

$$
\begin{array}{l} \operatorname {V a r} (X) = E \left(\left(X - E X\right) ^ {2}\right) \\ = E \left(X ^ {2} - 2 X (E X) + (E X) ^ {2}\right) \\ = E \left(X ^ {2}\right) - 2 E (X) E (X) + (E X) ^ {2} \\ = E (X ^ {2}) - (E X) ^ {2} \\ \end{array}
$$

Definition 13.6. The uniform distribution,  $\operatorname{Unif}(a,b)$ , is given by a completely random point chosen in the interval  $[a,b]$ . Note that the probability of picking a given point  $x_0$  is exactly 0; the uniform distribution is continuous. The PDF for  $U \sim \operatorname{Unif}(a,b)$  is given by

$$
f _ {U} (x) = \left\{ \begin{array}{l l} c & a \leq x \leq b \\ 0 & \text {o t h e r w i s e} \end{array} \right.
$$

for some constant  $c$ . To find  $c$ , we note that, by the definition of PDF, we have

$$
\begin{array}{l} \int_ {a} ^ {b} c \mathrm {d} x = 1 \\ c (b - a) = 1 \\ c = \frac {1}{b - a} \\ \end{array}
$$

$$
\begin{array}{l} F _ {U} (x) = \int_ {- \infty} ^ {x} f _ {U} (t) \mathrm {d} t = \int_ {a} ^ {x} f _ {U} (t) \mathrm {d} t \\ = \int_ {a} ^ {x} \frac {1}{b - a} d t \\ = \frac {x - a}{b - a} \\ \end{array}
$$

Observation 13.7. The expected value of an r.v.  $U \sim \mathrm{Unif}(a, b)$  is

$$
\begin{array}{l} E (U) = \int_ {a} ^ {b} \frac {x}{b - a} d x \\ = \left. \frac {x ^ {2}}{2 (b - a)} \right| _ {a} ^ {b} \\ = \frac {b ^ {2} - a ^ {2}}{2 (b - a)} \\ = \frac {(b + a) (b - a)}{2 (b - a)} \\ = \frac {b + a}{2} \\ \end{array}
$$

This is the midpoint of the interval  $[a,b]$ .

Finding the variance of  $U \sim \mathrm{Unif}(a, b)$ , however, is a bit more trouble. We need to determine  $E(U^2)$ , but it is too much of a hassle to figure out the PDF of  $U^2$ . Ideally, things would be as simple as

$$
E (U ^ {2}) = \int_ {- \infty} ^ {\infty} x ^ {2} f _ {U} (x) \mathrm {d} x
$$

Fortunately, this is true:

Theorem 13.8 (Law of the Unconscious Statistician (LOTUS)). Let  $X$  be a continuous random variable,  $g: \mathbb{R} \to \mathbb{R}$  continuous. Then

$$
E (g (X)) = \int_ {- \infty} ^ {\infty} g (x) f _ {X} (x) d x
$$

where  $f_{X}$  is the PDF of  $X$ . This allows us to determine the expected value of  $g(X)$  without knowing its distribution.

Observation 13.9. The variance of  $U \sim \mathrm{Unif}(a, b)$  is given by

$$
\begin{array}{l} \operatorname {V a r} (U) = E \left(U ^ {2}\right) - (E U) ^ {2} \\ = \int_ {a} ^ {b} x ^ {2} f _ {U} (x) \mathrm {d} x - \left(\frac {b + a}{2}\right) ^ {2} \\ = \frac {1}{b - a} \int_ {a} ^ {b} x ^ {2} \mathrm {d} x - \left(\frac {b + a}{2}\right) ^ {2} \\ \end{array}
$$

$$
\begin{array}{l} = \frac {1}{b - a} \cdot \frac {x ^ {3}}{3} \Bigg | _ {a} ^ {b} - \left(\frac {b + a}{2}\right) ^ {2} \\ = \frac {b ^ {3}}{3 (b - a)} - \frac {a ^ {3}}{3 (b - a)} - \frac {(b + a) ^ {2}}{4} \\ = \frac {(b - a) ^ {2}}{1 2} \\ \end{array}
$$

The following table is useful for comparing discrete and continuous random variables:

<table><tr><td></td><td>discrete</td><td>continuous</td></tr><tr><td>P?F</td><td>PMF P(X=x)</td><td>PDF fX(x)</td></tr><tr><td>CDF</td><td>FX(x)=P(X≤x)</td><td>FX(x)=P(X≤x)</td></tr><tr><td>E(X)</td><td>∑x xP(X=x)</td><td>∫∞-∞ x fX(x) dx</td></tr><tr><td>Var(X)</td><td>EX2-(EX)2</td><td>EX2-(EX)2</td></tr><tr><td>E(g(X))</td><td>∑x g(x)P(X=x)</td><td>∫∞-∞ g(x) fX(x) dx</td></tr><tr><td>[LOTUS]</td><td></td><td></td></tr></table>

# Lecture 14 — 10/3/11

Theorem 14.1 (Universality of the Uniform). Let us take  $U \sim \mathrm{Unif}(0,1)$ ,  $F$  a strictly increasing CDF. Then for  $X = F^{-1}(U)$ , we have  $X \sim F$ . Moreover, for any random variable  $X$ , if  $X \sim F$ , then  $F(X) \sim \mathrm{Unif}(0,1)$ .

Proof. We have

$$
P (X \leq x) = P \left(F ^ {- 1} (U) \leq x\right) = P (U \leq F (x)) = F (x)
$$

since  $P(U \leq F(x))$  is the length of the interval  $[0, F(x)]$ , which is  $F(x)$ . For the second part,

$$
P (F (X) \leq x) = P (X \leq F ^ {- 1} (x)) = F (F ^ {- 1} (x)) = x
$$

since  $F$  is  $X$ 's CDF. But this shows that  $F(X) \sim \mathrm{Unif}(0,1)$ .

Example. Let  $F(x) = 1 - e^{-x}$  with  $x > 0$  be the CDF of an r.v.  $X$ . Then  $F(X) = 1 - e^{-X}$  by an application of the second part of Universality of the Uniform.

Example. Let  $F(x) = 1 - e^{-x}$  with  $x > 0$ , and also let  $U \sim \mathrm{Unif}(0,1)$ . Suppose we want to simulate  $F$  with a random variable  $X$ ; that is,  $X \sim F$ . Then computing the inverse

$$
F ^ {- 1} (u) = - \ln (1 - u)
$$

yields  $F^{-1}(U) = -\ln (1 - U)\sim F$

Proposition 14.2. The standard uniform distribution is symmetric; that is, if  $U \sim \mathrm{Unif}(0,1)$ , then also  $1 - U \sim \mathrm{Unif}(0,1)$ .

Intuitively, this is true because there is no difference between measuring  $U$  from the right vs. from the left of [0, 1].

The general uniform distribution is also linear; that is,  $a + bU$  is uniform on some interval  $[a,b]$ . If a distribution is nonlinear, it is hence nonuniform.

Definition 14.3. We say that random variables  $X_{1},\ldots ,X_{n}$  are independent if

for continuous,  $P(X_{1}\leq x_{1},\ldots ,X_{n}\leq x_{n}) = P(X_{1}\leq x_{1})\dots P(X_{n}\leq x_{n})$  
- for discrete,  $P(X_{1} = x_{1},\ldots ,X_{n} = x_{n}) = P(X_{1} = x_{1})\dots P(X_{n} = x_{n})$

The expressions on the LHS are called joint CDFs and joint PMFs respectively.

Note that pairwise independence does not imply independence.

Example. Consider the penny matching game, where  $X_{1}, X_{2} \sim \operatorname{Bern}\left(\frac{1}{2}\right)$ , i.i.d., and let  $X_{3}$  be the indicator r.v. for the event  $X_{1} = X_{2}$  (the r.v. for winning the game). All of these are pairwise independent, but the  $X_{3}$  is clearly dependent on the combined outcomes of  $X_{1}$  and  $X_{2}$ .

Definition 14.4. The normal distribution, given by  $\mathcal{N}(0,1)$ , is defined by PDF

$$
f (z) = c e ^ {- z ^ {2} / 2}
$$

where  $c$  is the normalizing constant required to have  $f$  integrate to 1.

Proof. We want to prove that our PDF is valid; to do so, we will simply determine the value of the normalizing constant that makes it so. We will integrate the square of the PDF sans constant because it is easier than integrating naively

$$
\begin{array}{l} \int_ {- \infty} ^ {\infty} e ^ {- z ^ {2} / 2} d z \int_ {- \infty} ^ {\infty} e ^ {- z ^ {2} / 2} d z \\ = \int_ {- \infty} ^ {\infty} e ^ {- x ^ {2} / 2} d x \int_ {- \infty} ^ {\infty} e ^ {- y ^ {2} / 2} d y \\ = \int_ {- \infty} ^ {\infty} \int_ {- \infty} ^ {\infty} e ^ {- (x ^ {2} + y ^ {2}) / 2} d x d y \\ = \int_ {0} ^ {2 \pi} \int_ {0} ^ {\infty} e ^ {- r ^ {2} / 2} r \mathrm {d} r \mathrm {d} \theta \\ \end{array}
$$

Substituting  $u = \frac{r^2}{2}$ ,  $\mathrm{d}u = r \, \mathrm{d}r$

$$
\begin{array}{l} = \int_ {0} ^ {2 \pi} \left(\int_ {0} ^ {\infty} e ^ {- u} d u\right) d \theta \\ = 2 \pi \\ \end{array}
$$

So our normalizing constant is  $c = \frac{1}{\sqrt{2\pi}}$ .

Observation 14.5. Let us compute the mean and variance of  $Z \sim \mathcal{N}(0,1)$ . We have

$$
E Z = \frac {1}{\sqrt {2 \pi}} \int_ {- \infty} ^ {\infty} z e ^ {- z ^ {2} / 2} \mathrm {d} z = 0
$$

by symmetry (the integrand is odd). The variance reduces to

$$
\operatorname {V a r} (Z) = E \left(Z ^ {2}\right) - (E Z) ^ {2} = E \left(Z ^ {2}\right)
$$

By LOTUS,

$$
E (Z ^ {2}) = \frac {1}{\sqrt {2 \pi}} \int_ {- \infty} ^ {\infty} z ^ {2} e ^ {- z ^ {2} / 2} d z
$$

evenness  $\begin{array}{r l}{=  \frac{2}{\sqrt{2\pi}}\int_{0}^{\infty}z^{2}e^{-z^{2} / 2}\mathrm{d}z} & {} \end{array}$

by parts  $\begin{array}{rl}{=}&{\frac{2}{\sqrt{2\pi}}\int_{0}^{\infty}\underbrace{z}_{u}\underbrace{ze^{-z^{2}/2}\mathrm{d}z}_{\mathrm{d}v}}\end{array}$

$$
\begin{array}{l} = \frac {2}{\sqrt {2 \pi}} \left(u v \bigg | _ {0} ^ {\infty} + \int_ {0} ^ {\infty} e ^ {- z ^ {2} / 2} d z\right) \\ = \frac {2}{\sqrt {2 \pi}} \left(0 + \frac {\sqrt {2 \pi}}{2}\right) \\ = 1 \\ \end{array}
$$

We use  $\Phi$  to denote the standard normal CDF; so

$$
\Phi (z) = \frac {1}{\sqrt {2 \pi}} \int_ {- \infty} ^ {z} e ^ {- t ^ {2} / 2} d t
$$

By symmetry, we also have

$$
\Phi (- z) = 1 - \Phi (z)
$$

# Lecture 15 — 10/5/11

Recall the standard normal distribution. Let  $Z$  be an r.v.,  $Z \sim \mathcal{N}(0,1)$ . Then  $Z$  has CDF  $\Phi$ ; it has  $E(Z) = 0$ ,  $\operatorname{Var}(Z) = E(Z^2) = 1$ , and  $E(Z^3) = 0$ . By symmetry, also  $-Z \sim \mathcal{N}(0,1)$ .

Definition 15.1. Let  $X = \mu + \sigma Z$ , with  $\mu \in \mathbb{R}$  (the mean or center),  $\sigma > 0$  (the SD or scale). Then we say  $X \sim \mathcal{N}(\mu, \sigma^2)$ . This is the general normal distribution.

If  $X \sim \mathcal{N}(\mu, \sigma^2)$ , we have  $E(X) = \mu$  and  $\operatorname{Var}(\mu + \sigma Z) = \sigma^2 \operatorname{Var}(Z) = \sigma^2$ . We call  $Z = \frac{X - \mu}{\sigma}$  the standardization of  $X$ .  $X$  has CDF

$$
P (X \leq x) = P \left(\frac {X - \mu}{\sigma} \leq \frac {x - \mu}{\sigma}\right) = \Phi \left(\frac {x - \mu}{\sigma}\right)
$$

which yields a PDF of

$$
f _ {X} (x) = \frac {1}{\sigma \sqrt {2 \pi}} e ^ {- \left(\frac {x - \mu}{\sigma}\right) ^ {2} / 2}
$$

We also have  $-X = -\mu + \sigma(-Z) \sim \mathcal{N}(-\mu, \sigma^2)$ .

Later, we will show that if  $X_{i}\sim \mathcal{N}(\mu_{i},\sigma_{i}^{2})$  are independent, then

$$
X _ {i} + X _ {j} \sim \mathcal {N} \left(\mu_ {i} + \mu_ {j}, \sigma_ {i} ^ {2} + \sigma_ {j} ^ {2}\right)
$$

and

$$
X _ {i} - X _ {j} \sim \mathcal {N} \left(\mu_ {i} - \mu_ {j}, \sigma_ {i} ^ {2} + \sigma_ {j} ^ {2}\right)
$$

Observation 15.2. If  $X\sim \mathcal{N}(\mu ,\sigma^2)$  , we have

$$
\begin{array}{l} P(|X - \mu |\leq \sigma)\approx 68\% \\ P(|X - \mu |\leq 2\sigma)\approx 95\% \\ P(|X - \mu |\leq 3\sigma)\approx 99.7\% \\ \end{array}
$$

Observation 15.3. We observe some properties of the variance.

$$
\operatorname {V a r} (X) = E \left(\left(X - E X\right) ^ {2}\right) = E X ^ {2} - (E X) ^ {2}
$$

For any constant  $c$ ,

$$
\begin{array}{l} \operatorname {V a r} (X + c) = \operatorname {V a r} (X) \\ \operatorname {V a r} (c X) = c ^ {2} \operatorname {V a r} (X) \\ \end{array}
$$

Since variance is not linear, in general,  $\operatorname{Var}(X + Y) \neq \operatorname{Var}(X) + \operatorname{Var}(Y)$ . However, if  $X$  and  $Y$  are independent, we do have equality. On the other extreme,

$$
\operatorname {V a r} (X + X) = \operatorname {V a r} (2 X) = 4 \operatorname {V a r} (X)
$$

Also, in general,

$$
\begin{array}{l} \operatorname {V a r} (X) \geq 0 \\ \operatorname {V a r} (X) = 0 \iff \exists a: P (X = a) = 1 \\ \end{array}
$$

Observation 15.4. Let us compute the variance of the Poisson distribution. Let  $X \sim \mathrm{Pois}(\lambda)$ . We have

$$
E (X ^ {2}) = \sum_ {k = 0} ^ {\infty} k ^ {2} \frac {e ^ {- \lambda} \lambda^ {k}}{k !}
$$

To reduce this sum, we can do the following:

$$
\sum_ {k = 0} ^ {\infty} \frac {\lambda^ {k}}{k !} = e ^ {\lambda}
$$

Taking the derivative w.r.t.  $\lambda$

$$
\begin{array}{l} \sum_ {k = 1} ^ {\infty} \frac {k \lambda^ {k - 1}}{k !} = e ^ {\lambda} \\ \lambda \sum_ {k = 0} ^ {\infty} \frac {k \lambda^ {k - 1}}{k !} = \lambda e ^ {\lambda} \\ \end{array}
$$

$$
\sum_ {k = 1} ^ {\infty} \frac {k \lambda^ {k}}{k !} = \lambda e ^ {\lambda}
$$

Repeating,

$$
\begin{array}{l} \sum_ {k = 1} ^ {\infty} \frac {k ^ {2} \lambda^ {k - 1}}{k !} = \lambda e ^ {\lambda} + e ^ {\lambda} \\ \sum_ {k = 1} ^ {\infty} \frac {k ^ {2} \lambda^ {k}}{k !} = \lambda e ^ {\lambda} (\lambda + 1) \\ \end{array}
$$

So,

$$
\begin{array}{l} E (X ^ {2}) = \sum_ {k = 0} ^ {\infty} k ^ {2} \frac {e ^ {- \lambda} \lambda^ {k}}{k !} \\ = e ^ {- \lambda} e ^ {\lambda} \lambda (\lambda + 1) \\ = \lambda^ {2} + \lambda \\ \end{array}
$$

So for our variance, we have

$$
\operatorname {V a r} (X) = (\lambda^ {2} + \lambda) - \lambda^ {2} = \lambda
$$

Observation 15.5. Let us compute the variance of the binomial distribution. Let  $X \sim \mathrm{Bin}(n,p)$ . We can write

$$
X = I _ {1} + \dots + I _ {n}
$$

where the  $I_{j}$  are i.i.d.  $\operatorname {Bern}(p)$  . Then,

$$
X ^ {2} = I _ {1} ^ {2} + \dots + I _ {n} ^ {2} + 2 I _ {1} I _ {2} + 2 I _ {1} I _ {3} + \dots + 2 I _ {n - 1} I _ {n}
$$

where  $I_{i}I_{j}$  is the indicator of success on both  $i$  and  $j$ .

$$
\begin{array}{l} E (X ^ {2}) = n E (I _ {1} ^ {2}) + 2 \binom {n} {2} E (I _ {1} I _ {2}) \\ = n p + n (n - 1) p ^ {2} \\ = n p + n ^ {2} p ^ {2} - n p ^ {2} \\ \end{array}
$$

So,

$$
\begin{array}{l} \operatorname {V a r} (X) = (n p + n ^ {2} p ^ {2} - n p ^ {2}) - n ^ {2} p ^ {2} \\ = n p (1 - p) \\ = n p q \\ \end{array}
$$

Proof. (of Discrete LOTUS)

We want to show that  $E(g(X) = \sum_{x} g(x)P(X = x)$ . To do so, once again we can "ungroup" our expected value expression:

$$
\sum_ {x} g (x) P (X = x) = \sum_ {s \in S} g (X (s)) P (\{s \})
$$

We can rewrite this as

$$
\begin{array}{l} \sum_ {x} \sum_ {s: X (s) = x} g (X (s)) P (\{s \}) = \sum_ {x} g (x) \sum_ {s: X (s) = x} P (\{s \}) \\ = \sum_ {x} g (x) P (X = x) \\ \end{array}
$$

Lecture 17 — 10/14/11

Definition 17.1. The exponential distribution,  $\operatorname{Expo}(\lambda)$ , is defined by PDF

$$
f (x) = \lambda e ^ {- \lambda x}
$$

for  $x > 0$  and 0 elsewhere. We call  $\lambda$  the rate parameter.

Integrating clearly yields 1, which demonstrates validity. Our CDF is given by

$$
\begin{array}{l} F (x) = \int_ {0} ^ {x} \lambda e ^ {- \lambda t} d t \\ = \left\{ \begin{array}{l l} 1 - e ^ {- \lambda x} & x > 0 \\ 0 & \text {o t h e r w i s e} \end{array} \right. \\ \end{array}
$$

Observation 17.2. We can normalize any  $X \sim \mathrm{Expo}(\lambda)$  by multiplying by  $\lambda$ , which gives  $Y = \lambda X \sim \mathrm{Expo}(1)$ . We have

$$
P (Y \leq y) = P (X \leq \frac {y}{\lambda}) = 1 - e ^ {- \lambda y / \lambda} = 1 - e ^ {- y}
$$

Let us now compute the mean and variance of  $Y \sim \mathrm{Expo}(1)$ . We have

$$
\begin{array}{l} E (Y) = \int_ {0} ^ {\infty} y e ^ {- y} d y \\ = (- y e ^ {- y}) \left| _ {0} ^ {\infty} + \int_ {0} ^ {\infty} e ^ {- y} d y \right. \\ = 1 \\ \end{array}
$$

for the mean. For the variance,

$$
\begin{array}{l} \operatorname {V a r} (Y) = E Y ^ {2} - (E Y) ^ {2} \\ = \int_ {0} ^ {\infty} y ^ {2} e ^ {- y} d y - 1 \\ = 1 \\ \end{array}
$$

Then for  $X = \frac{Y}{\lambda}$ , we have  $E(X) = \frac{1}{\lambda}$  and  $\operatorname{Var}(X) = \frac{1}{\lambda^2}$ .

Definition 17.3. A random variable  $X$  has a memoryless distribution if

$$
P (X \geq s + t \mid X \geq s) = P (X \geq t)
$$

Intuitively, if we have a random variable that we interpret as a waiting time, memorylessness means that no matter how long we have already waited, the probability of having to wait a given time more is invariant.

Proposition 17.4. The exponential distribution is memoryless.

Proof. Let  $X \sim \mathrm{Expo}(\lambda)$ . We know that

$$
P (X \geq t) = 1 - P (X \leq t) = e ^ {- \lambda t}
$$

Meanwhile,

$$
\begin{array}{l} P (X \geq s + t \mid X \geq s) = \frac {P (X \geq s + t , X \geq s)}{P (X \geq s)} \\ = \frac {P (X \geq s + t)}{P (X \geq s)} \\ = \frac {e ^ {- \lambda (s + t)}}{e ^ {- \lambda s}} \\ = e ^ {- \lambda t} \\ = P (X \geq t) \\ \end{array}
$$

which is our desired result.

Example. Let  $X \sim \mathrm{Expo}(\lambda)$ . Then by linearity and by the memorylessness,

$$
\begin{array}{l} E (X \mid X > a) = a + E (X - a \mid X > a) \\ = a + \frac {1}{\lambda} \\ \end{array}
$$

# Lecture 18 — 10/17/11

Theorem 18.1. If  $X$  is a positive, continuous random variable that is memoryless (i.e., its distribution is memoryless), then there exists  $\lambda \in \mathbb{R}$  such that  $X \sim \mathrm{Expo}(\lambda)$ .

Proof. Let  $F$  be the CDF of  $X$  and  $G = 1 - F$ . By memorylessness,

$$
G (s + t) = G (s) G (t)
$$

We can easily derive from this identity that  $\forall k\in \mathbb{Q}$

$$
G (k t) = G (t) ^ {k}
$$

This can be extended to all  $k \in \mathbb{R}$ . If we take  $t = 1$ , then we have

$$
G (x) = G (1) ^ {x} = e ^ {x \ln G (1)}
$$

But since  $G(1) < 1$ , we can define  $\lambda = -\ln G(1)$ , and we will have  $\lambda > 0$ . Then this gives us

$$
F (x) = 1 - G (x) = 1 - e ^ {- \lambda x}
$$

as desired.

Definition 18.2. A random variable  $X$  has moment-generating function (MGF)

$$
M (t) = E \left(e ^ {t X}\right)
$$

if  $M(t)$  is bounded on some interval  $(-\epsilon, \epsilon)$  about zero.

Observation 18.3. We might ask why we call  $M$  "moment-generating." Consider the Taylor expansion of  $M$ :

$$
E \left(e ^ {t X}\right) = E \left(\sum_ {n = 0} ^ {\infty} \frac {X ^ {n} t ^ {n}}{n !}\right) = \sum_ {n = 0} ^ {\infty} \frac {E \left(X ^ {n}\right) t ^ {n}}{n !}
$$

Note that we cannot simply make use of linearity since our sum is infinite; however, this equation does hold for reasons beyond the scope of the course.

This observation also shows us that

$$
E (X ^ {n}) = M ^ {(n)} (0)
$$

Claim 18.4. If  $X$  and  $Y$  have the same MGF, then they have the same CDF.

We will not prove this claim.

Observation 18.5. If  $X$  has MGF  $M_X$  and  $Y$  has MGF  $M_Y$ , then

$$
M _ {X + Y} = E \left(e ^ {t (X + Y)}\right) = E \left(e ^ {t X}\right) E \left(e ^ {t Y}\right) = M _ {X} M _ {Y}
$$

The second inequality comes from the claim (which we will prove later) that if for  $X, Y$  independent,  $E(XY) = E(X)E(Y)$ .

Example. Let  $X \sim \operatorname{Bern}(p)$ . Then

$$
M (t) = E \left(e ^ {t X}\right) = p e ^ {t} + q
$$

Suppose now that  $X \sim \operatorname{Bin}(n, p)$ . Again, we write  $X = I_1 + \dots + I_n$  where the  $I_j$  are i.i.d Bern( $p$ ). Then we see that

$$
M (t) = \left(p e ^ {t} + q\right) ^ {n}
$$

Example. Let  $Z \sim \mathcal{N}(0,1)$ . We have

$$
M (t) = \frac {1}{\sqrt {2 \pi}} \int_ {- \infty} ^ {\infty} e ^ {t z - z ^ {2} / 2} d z
$$

completing the square  $= \frac{e^{t^2 / 2}}{\sqrt{2\pi}}\int_{-\infty}^{\infty}e^{-(1 / 2)(z - t)^2}\mathrm{d}z$

$$
= e ^ {t ^ {2} / 2}
$$

Example. Suppose  $X_1, X_2, \ldots$  are conditionally independent (given  $p$ ) random variables that are  $\operatorname{Bern}(p)$ . Suppose also that  $p$  is unknown. In the Bayesian approach, let us treat  $p$  as a random variable. Let  $p \sim \mathrm{Unif}(0, 1)$ ; we call this the prior distribution.

Let  $S_{n} = X_{1} + \dots +X_{n}$ . Then  $S_{n}\mid p\sim \mathrm{Bin}(n,p)$ . We want to find the posterior distribution,  $p\mid S_n$ , which will give us  $P(X_{n + 1} = 1\mid S_n = k)$ . Using "Bayes' Theorem,"

$$
f (p \mid S _ {n} = k) = \frac {P (S _ {n} = k \mid p) f (p)}{P (S _ {n} = k)}
$$

$$
\begin{array}{l} = \frac {P (S _ {n} = k \mid p)}{P (S _ {n} = k)} \\ \propto p ^ {k} (1 - p) ^ {n - k} \\ \end{array}
$$

In the specific case of  $S_{n} = n$ , normalizing is easier:

$$
f (p \mid S _ {n} = n) = (n + 1) p ^ {n}
$$

Computing  $P(X_{n + 1} = 1 \mid S_n = k)$  simply requires finding the expected value of an indicator with the above probability  $p \mid S_n = n$ .

$$
P \left(X _ {n + 1} = 1 \mid S _ {n} = n\right) = \int_ {0} ^ {1} p (n + 1) p ^ {n} \mathrm {d} p = \frac {n + 1}{n + 2}
$$

# Lecture 19 — 10/19/11

Observation 19.1. Let  $X \sim \operatorname{Expo}(1)$ . We want to determine the MGF  $M$  of  $X$ . By LOTUS,

$$
\begin{array}{l} M (t) = E \left(e ^ {t X}\right) \\ = \int_ {0} ^ {\infty} e ^ {t x} e ^ {- x} d x \\ = \int_ {0} ^ {\infty} e ^ {- x (1 - t)} d x \\ = \frac {1}{1 - t}, t <   1 \\ \end{array}
$$

If we write

$$
\frac {1}{1 - t} = \sum_ {n = 0} ^ {\infty} t ^ {n} = \sum_ {n = 0} ^ {\infty} n! \frac {t ^ {n}}{n !}
$$

we get immediately that

$$
E (X ^ {n}) = n!
$$

Now take  $Y \sim \operatorname{Expo}(1)$  and let  $X = \lambda Y \sim \operatorname{Expo}(1)$ . So  $Y^n = \frac{X^n}{\lambda^n}$ , and hence

$$
E (Y ^ {n}) = \frac {n !}{\lambda^ {n}}
$$

Observation 19.2. Let  $Z \sim \mathcal{N}(0,1)$ , and let us determine all its moments. We know that for  $n$  odd, by symmetry,

$$
E (Z ^ {n}) = 0
$$

We previously showed that

$$
M (t) = e ^ {t ^ {2} / 2}
$$

But we can write

$$
\sum_ {n = 0} ^ {\infty} \frac {(t ^ {2} / 2) ^ {n}}{n !} = \sum_ {n = 0} ^ {\infty} \frac {t ^ {2 n}}{2 ^ {n} n !} = \sum_ {n = 0} ^ {\infty} \frac {(2 n) !}{2 ^ {n} n !} \frac {t ^ {2 n}}{(2 n) !}
$$

So

$$
E (Z ^ {2 n}) = \frac {(2 n) !}{2 ^ {n} n !}
$$

Observation 19.3. Let  $X \sim \mathrm{Pois}(\lambda)$ . By LOTUS, its MGF is given by

$$
\begin{array}{l} E (e ^ {t X}) = \sum_ {k = 0} ^ {\infty} e ^ {t k} e ^ {- \lambda} \frac {\lambda^ {k}}{k !} \\ = e ^ {- \lambda} e ^ {\lambda e ^ {t}} \\ = e ^ {\lambda (e ^ {t} - 1)} \\ \end{array}
$$

Observation 19.4. Now let  $X \sim \mathrm{Pois}(\lambda)$  and  $Y \sim \mathrm{Pois}(\mu)$  independent. We want to find the distribution of  $X + Y$ . We can simply multiply their MGFs, yielding

$$
\begin{array}{l} M _ {X} (t) M _ {Y} (t) = e ^ {\lambda \left(e ^ {t} - 1\right)} e ^ {\mu \left(e ^ {t} - 1\right)} \\ = e ^ {(\lambda + \mu) (e ^ {t} - 1)} \\ \end{array}
$$

Thus,  $X + Y\sim \mathrm{Pois}(\lambda +\mu)$

Example. Suppose  $X, Y$  above are dependent; specifically, take  $X = Y$ . Then  $X + Y = 2X$ . But this cannot be Poisson since it only takes on even values. We could also compute the mean and variance

$$
E (2 X) = 2 \lambda \quad \operatorname {V a r} (2 X) = 4 \lambda
$$

but they should be equal for the Poisson.

We now turn to the study of joint distributions. Recall that joint distributions for independent random variables can be given simply by multiplying their CDFs; we want also to study cases where random variables are not independent.

Definition 19.5. Let  $X, Y$  be random variables. Their joint CDF is given by

$$
F (x, y) = P (X \leq x, Y \leq y)
$$

In the discrete case,  $X$  and  $Y$  have a joint PMF given by

$$
P (X = x, Y = y)
$$

and in the continuous case,  $X$  and  $Y$  have a joint PDF given by

$$
f (x, y) = \frac {\partial}{\partial x \partial y} F (x, y)
$$

and we can compute

$$
P ((X, Y) \in B) = \iint_ {B} f (x, y) d x d y
$$

Their separate CDFs and PMFs (e.g.,  $P(X \leq x)$ ) are referred to as marginal CDFs, PMFs, or PDFs.  $X$  and  $Y$  are independent precisely when the joint CDF is equal to the product of the marginal CDFs:

$$
F (x, y) = F _ {X} (x) F _ {Y} (y)
$$

We can show that, equivalently, we can say

$$
P (X = x, Y = y) = P (X = x) P (Y = y)
$$

or

$$
f (x, y) = f _ {X} (x) f _ {Y} (y)
$$

for all  $x,y\in \mathbb{R}$

Definition 19.6. To get the marginal PMF or PDF of a random variable  $X$  from its joint PMF or PDF with another random variable  $Y$ , we can marginalize over  $Y$  by computing

$$
P (X = x) = \sum_ {y} P (X = x, Y = y)
$$

or

$$
f _ {X} (x) = \int_ {- \infty} ^ {\infty} f _ {X, Y} (x, y) d y
$$

Example. Let  $X \sim \operatorname{Bern}(p)$ ,  $X \sim \operatorname{Bern}(q)$ . Suppose they have joint PMF given by

<table><tr><td></td><td>Y=0</td><td>Y=1</td><td></td></tr><tr><td>X=0</td><td>2/6</td><td>1/6</td><td>3/6</td></tr><tr><td>X=1</td><td>2/6</td><td>1/6</td><td>3/6</td></tr><tr><td></td><td>4/6</td><td>2/6</td><td></td></tr></table>

Here we have computed the marginal probabilities (in the margin), and they demonstrate that  $X$  and  $Y$  are independent.

Example. Let us define the uniform distribution on the unit square,  $\{(x,y):x,y\in [0,1]\}$ . We want the joint PDF to be constant everywhere in the square and 0 otherwise; that is,

$$
f (x, y) = \left\{ \begin{array}{l l} c & 0 \leq x \leq 1, 0 \leq y \leq 1 \\ 0 & \text {o t h e r w i s e} \end{array} \right.
$$

Normalizing, we simply need  $c = \frac{1}{\text{area}} = 1$ . It is apparent that the marginal PDFs are both uniform.

Example. Let us define the uniform distribution on the unit disc,  $\{(x,y):x^2 +y^2\leq 1\}$ . Their joint PDF can be given by

$$
f (x, y) = \left\{ \begin{array}{l l} \frac {1}{\pi} & x ^ {2} + y ^ {2} \leq 1 \\ 0 & \text {o t h e r w i s e} \end{array} \right.
$$

Given  $X = x$ , we have  $-\sqrt{1 - x^2} \leq y \leq \sqrt{1 - x^2}$ . We might guess that  $Y$  is uniform, but clearly  $X$  and  $Y$  are dependent in this case, and it turns out that this is not the case.

Lecture 20 — 10/21/11

Definition 20.1. Let  $X$  and  $Y$  be random variables. Then the conditional PDF of  $Y|X$  is

$$
f _ {Y \mid X} (y | x) = \frac {f _ {X , Y} (x , y)}{f _ {X} (x)} = \frac {f _ {X \mid Y} (x \mid y) f _ {Y} (y)}{f _ {X} (x)}
$$

Note that  $Y|X$  is shorthand for  $Y \mid X = x$ .

Example. Recall the PDF for our uniform distribution on the disk,

$$
f (x, y) = \left\{ \begin{array}{l l} \frac {1}{\pi} & y ^ {2} = 1 - x ^ {2} \\ 0 & \text {o t h e r w i s e} \end{array} \right.
$$

and marginalizing over  $Y$ , we have

$$
f _ {X} (x) = \int_ {- \sqrt {1 - x ^ {2}}} ^ {\sqrt {1 - x ^ {2}}} \frac {1}{\pi} \mathrm {d} y = \frac {2}{\pi} \sqrt {1 - x ^ {2}}
$$

for  $-1 \leq x \leq 1$ . As a check, we could integrate this again with respect to  $\mathrm{d}x$  to ensure that it is 1. From this, it is easy to find the conditional PDF,

$$
f _ {Y | X} (y | x) = \frac {1 / \pi}{\frac {2}{\pi} \sqrt {1 - x ^ {2}}} = \frac {1}{2 \sqrt {1 - x ^ {2}}}
$$

for  $-\sqrt{1 - x^2} \leq y \leq \sqrt{1 - x^2}$ . Since we are holding  $x$  constant, we see that  $Y|X \sim \mathrm{Unif}(-\sqrt{1 - x^2}, \sqrt{1 - x^2})$ . From these computations, it is clear, in many ways, that  $X$  and  $Y$  are not independent. It is not true that  $f_{X,Y} = f_X f_Y$ , nor that  $f_{Y|X} = f_Y$

Proposition 20.2. Let  $X, Y$  have joint PDF  $f$ , and let  $g: \mathbb{R}^2 \to \mathbb{R}$ . Then

$$
E (g (X, Y)) = \int_ {- \infty} ^ {\infty} \int_ {- \infty} ^ {\infty} g (x, y) f (x, y) d x d y
$$

This is LOTUS in two dimensions.

Theorem 20.3. If  $X, Y$  are independent random variables, then  $E(XY) = E(X)E(Y)$ .

Proof. We will prove this in the continuous case. Using LOTUS, we have

$$
E (X Y) = \int_ {- \infty} ^ {\infty} \int_ {- \infty} ^ {\infty} x y f _ {X, Y} (x, y) d x d y
$$

by independence  $= \int_{-\infty}^{\infty}\int_{-\infty}^{\infty}xyf_{X}(x)f_{Y}(y)\mathrm{d}x\mathrm{d}y$

$$
\begin{array}{l} = \int_ {- \infty} ^ {\infty} E (X) y f _ {Y} (y) d y \\ = E (X) E (Y) \\ \end{array}
$$

as desired.

Example. Let  $X, Y \sim \mathrm{Unif}(0,1)$  i.i.d.; we want to find  $E|X - Y|$ . By LOTUS (and since the joint PDF is 1), we want to integrate

$$
\begin{array}{l} E | X - Y | = \int_ {0} ^ {1} \int_ {0} ^ {1} | x - y | \mathrm {d} x \mathrm {d} y \\ = \iint_ {x > y} (x - y) d x d y + \iint_ {x \leq y} (y - x) d x d y \\ \end{array}
$$

by symmetry  $= 2\iint_{x > y}(x - y)\mathrm{d}x\mathrm{d}y$

$$
\begin{array}{l} = \int_ {0} ^ {1} \int_ {y} ^ {1} (x - y) \mathrm {d} x \mathrm {d} y \\ = 2 \int_ {0} ^ {1} \left(\frac {x ^ {2}}{2} - y x\right) \Bigg | _ {y} ^ {1} d y \\ = \frac {1}{3} \\ \end{array}
$$

If we let  $M = \max \{X, Y\}$  and  $L = \min \{X, Y\}$ , then we would have  $|X - Y| = M - L$ , and hence also

$$
E (M - L) = E (M) - E (L) = \frac {1}{3}
$$

We also have

$$
E (X + Y) = E (M + L) = E (M) + E (L) = 1
$$

This gives

$$
E (M) = \frac {2}{3} E (L) = \frac {1}{3}
$$

Example (Chicken-Egg Problem). Suppose there are  $N \sim \operatorname{Pois}(\lambda)$  eggs, each hatching with probability  $p$ , independent (these are Bernoulli). Let  $X$  be the number of eggs that hatch. Thus,  $X|N \sim \operatorname{Bin}(N,p)$ . Let  $Y$  be the number that don't hatch. Then  $X + Y = N$ .

Let us find the joint PMF of  $X$  and  $Y$ .

$$
\begin{array}{l} P (X = i, Y = j) = \sum_ {n = 0} ^ {\infty} P (X = i, Y = j \mid N = n) P (N = n) \\ = P (X = i, Y = j \mid N = i + j) P (N = i + j) \\ = P (X = i \mid N = i + j) P (N = i + j) \\ = \frac {(i + j) !}{i ! j !} p ^ {i} q ^ {j} e ^ {- \lambda} \frac {\lambda^ {i + j}}{(i + j) !} \\ = \left(e ^ {- \lambda p} \frac {(\lambda p) ^ {i}}{i !}\right) \left(e ^ {- \lambda q} \frac {(\lambda q) ^ {j}}{j !}\right) \\ \end{array}
$$

In other words, the randomness of the number of eggs offsets the dependence of  $Y$  on  $X$  given a fixed number of  $X$ . This is a special property of the Poisson distribution.

Lecture 21 — 10/24/11

Theorem 21.1. Let  $X \sim \mathcal{N}(\mu_1, \sigma_1^2)$  and  $Y \sim \mathcal{N}(\mu_2, \sigma_2^2)$  be independent random variables. Then  $X + Y \sim \mathcal{N}(\mu_1 + \mu_2, \sigma_1^2 + \sigma_2^2)$ .

Proof. Since  $X$  and  $Y$  are independent, we can simply multiply their MGFs. This is given by

$$
\begin{array}{l} M _ {X + Y} (t) = M _ {X} (t) M _ {Y} (t) \\ = \exp \left(\mu_ {1} t + \sigma_ {1} \frac {t ^ {2}}{2}\right) \exp \left(\mu_ {2} t + \sigma_ {2} \frac {t ^ {2}}{2}\right) \\ = \exp \left(\left(\mu_ {1} + \mu_ {2}\right) t + \left(\sigma_ {1} ^ {2} + \sigma_ {2} ^ {2}\right) \frac {t ^ {2}}{2}\right) \\ \end{array}
$$

which yields our desired result.

Example. Let  $Z_{1}, Z_{2} \sim \mathcal{N}(0,1)$ , i.i.d.; let us find  $E|Z_{1} - Z_{2}|$ . By the above,  $Z_{1} - Z_{2} \sim \mathcal{N}(0,2)$ . Let  $Z \sim \mathcal{N}(0,1)$ . Then

$$
\begin{array}{l} E \left| Z _ {1} - Z _ {2} \right| = E \left| \sqrt {2} Z \right| \\ = \sqrt {2} E | Z | \\ = \int_ {- \infty} ^ {\infty} | z | \frac {1}{\sqrt {2 \pi}} e ^ {- z ^ {2} / 2} d z \\ \end{array}
$$

$$
\begin{array}{l} \mathrm {e v e n n e s s} = 2 \int_ {0} ^ {\infty} | z | \frac {1}{\sqrt {2 \pi}} e ^ {- z ^ {2} / 2} \mathrm {d} z \\ = \sqrt {\frac {2}{\pi}} \\ \end{array}
$$

Definition 21.2. Let  $\mathbf{X} = (X_1, \ldots, X_k)$  be a multivariate random variable,  $\mathbf{p} = (p_1, \ldots, p_k)$  a probability vector with  $p_j \geq 0$  and  $\sum_{j} p_j = 1$ . The multinomial distribution is given by assorting  $n$  objects into  $k$  categories, each object having probability  $p_j$  of being in category  $j$ , and taking the number of objects in each category,  $X_j$ . If  $X$  has the multinomial distribution, we write  $X \sim \mathrm{Mult}_k(n, \mathbf{p})$ .

The PMF of  $X$  is given by

$$
P \left(X _ {1} = n _ {1}, \dots , X _ {k} = n _ {k}\right) = \frac {n !}{n _ {1} ! \cdots n _ {k} !} p _ {1} ^ {n _ {1}} \dots p _ {k} ^ {n _ {k}}
$$

if  $\sum_{k}n_{k} = n$ , and 0 otherwise.

Observation 21.3. Let  $X \sim \mathrm{Mult}_k(n,p)$ . Then the marginal distribution of  $X_j$  is simply  $X_j \sim \mathrm{Bin}(n,p_j)$ , since each object is either in  $j$  or not, and we have

$$
E (X _ {j}) = n p _ {j} \quad \operatorname {V a r} (X _ {j}) = n p _ {j} (1 - p _ {j})
$$

Observation 21.4. If we "lump" some of our categories together for  $X \sim \mathrm{Mult}_k(n,p)$ , then the result is still multinomial. That is, taking

$$
Y = \left(X _ {1}, \dots , X _ {l - 1}, X _ {l} + \dots + X _ {k}\right)
$$

and

$$
p ^ {\prime} = \left(p _ {1}, \dots , p _ {l - 1}, p _ {l} + \dots + p _ {k}\right)
$$

we have  $Y \sim \mathrm{Mult}_l(n, p')$ , and this is true for any combinations of lumpings.

Observation 21.5. Let  $X \sim \mathrm{Mult}_k(n,p)$ . Then given  $X_1 = n_1$ ,

$$
\left(X _ {2}, \dots , X _ {k}\right) \sim \operatorname {M u l t} _ {k - 1} \left(n - n _ {1}, \left(p _ {2} ^ {\prime}, \dots , p _ {k} ^ {\prime}\right)\right)
$$

where

$$
p _ {j} ^ {\prime} = \frac {p _ {j}}{1 - p _ {1}} = \frac {p _ {j}}{p _ {2} + \cdots + p _ {k}}
$$

This is symmetric for all  $j$ .

Definition 21.6. The Cauchy distribution is a distribution of  $T = \frac{X}{Y}$  with  $X, Y \sim \mathcal{N}(0,1)$  i.i.d.

Note. The Cauchy distribution has no mean, but has the property that an average of many Cauchy distributions is still Cauchy.

Observation 21.7. Let us compute the PDF of  $X$  with the Cauchy distribution. The CDF is given by

$$
\begin{array}{l} P \left(\frac {X}{Y} \leq t\right) = P \left(\frac {X}{| Y |} \leq t\right) \\ = P (X \leq t | Y |) \\ = \int_ {- \infty} ^ {\infty} \int_ {- \infty} ^ {t | y |} \frac {1}{\sqrt {2 \pi}} e ^ {- x ^ {2} / 2} \frac {1}{\sqrt {2 \pi}} e ^ {- y ^ {2} / 2} d x d y \\ = \frac {1}{\sqrt {2 \pi}} \int_ {- \infty} ^ {\infty} e ^ {- y ^ {2} / 2} \int_ {- \infty} ^ {t | y |} \frac {1}{\sqrt {2 \pi}} e ^ {- x ^ {2} / 2} d x d y \\ = \frac {1}{\sqrt {2 \pi}} \int_ {- \infty} ^ {\infty} e ^ {- y ^ {2} / 2} \Phi (t | y |) d y \\ = \sqrt {\frac {2}{\pi}} \int_ {0} ^ {\infty} e ^ {- y ^ {2} / 2} \Phi (t y) d y \\ \end{array}
$$

There is little we can do to compute this integral. Instead, let us compute the PDF, calling the CDF above  $F(t)$ . Then we have

$$
\begin{array}{l} F ^ {\prime} (t) = \sqrt {\frac {2}{\pi}} \int_ {0} ^ {\infty} y e ^ {- y ^ {2} / 2} \frac {1}{\sqrt {2 \pi}} e ^ {- t ^ {2} y ^ {2} / 2} d y \\ = \frac {1}{\pi} \int_ {0} ^ {\infty} y e ^ {- (1 + t ^ {2}) y ^ {2} / 2} d y \\ \end{array}
$$

$$
\begin{array}{l} \text {S u b s t i t u t i n g} u = \frac {\left(1 + t ^ {2}\right) y ^ {2}}{2} \Longrightarrow \mathrm {d} u = (1 + t ^ {2}) y \mathrm {d} y, \\ = \frac {1}{\pi (1 + t) ^ {2}} \\ \end{array}
$$

We could also have performed this computation using the Law of Total Probability. Let  $\phi$  be the standard normal PDF. We have

$$
P (X \leq t | Y |) = \int_ {- \infty} ^ {\infty} P (X \leq t | Y | \mid Y = y) \phi (y) d y
$$

$$
\begin{array}{l} \text {b y} = \int_ {- \infty} ^ {\infty} P (X \leq t y) \phi (y) d y \\ = \int_ {- \infty} ^ {\infty} \Phi (t y) \phi (y) d y \\ \end{array}
$$

and then we proceed as before.

# Lecture 22 — 10/26/11

Definition 22.1. The covariance of random variables  $X$  and  $Y$  is

$$
\operatorname {C o v} (X, Y) = E \left(\left(X - E X\right) \left(Y - E Y\right)\right)
$$

Note. The following properties are immediately true of covariance:

1.  $\operatorname{Cov}(X, X) = \operatorname{Var}(X)$  
2.  $\operatorname {Cov}(X,Y) = \operatorname {Cov}(Y,X)$  
3.  $\operatorname{Cov}(X,Y) = E(XY) - E(X)E(Y)$  
4.  $\forall c\in \mathbb{R}$ $\operatorname {Cov}(X,c) = 0$  
5.  $\forall c\in \mathbb{R}$ $\operatorname {Cov}(cX,Y) = c\operatorname {Cov}(X,Y)$  
6.  $\operatorname {Cov}(X,Y + Z) = \operatorname {Cov}(X,Y) + \operatorname {Cov}(X,Z)$

The last two properties demonstrate that covariance is bilinear. In general,

$$
\operatorname {C o v} \left(\sum_ {i = 1} ^ {m} a _ {i} X _ {i}, \sum_ {j = 1} ^ {n} b _ {j} Y _ {j}\right) = \sum_ {i, j} a _ {i} b _ {j} \operatorname {C o v} \left(X _ {i}, Y _ {j}\right)
$$

Observation 22.2. We can use covariance to compute the variance of sums:

$$
\begin{array}{l} \operatorname {V a r} (X + Y) = \operatorname {C o v} (X, X) + \operatorname {C o v} (X, Y) \\ + \operatorname {C o v} (Y, X) + \operatorname {C o v} (Y, Y) \\ = \operatorname {V a r} (X) + 2 \operatorname {C o v} (X, Y) + \operatorname {V a r} (Y) \\ \end{array}
$$

and more generally,

$$
\operatorname {V a r} (\sum X) = \sum \operatorname {V a r} (X) + 2 \sum_ {i <   j} \operatorname {C o v} \left(X _ {i}, X _ {j}\right)
$$

Theorem 22.3. If  $X, Y$  are independent, then  $\operatorname{Cov}(X, Y) = 0$  (we say that they are uncorrelated).

Example. The converse of the above is false. Let  $Z \sim \mathcal{N}(0,1)$ ,  $X = Z$ ,  $Y = Z^2$ , and let us compute the covariance.

$$
\begin{array}{l} \operatorname {C o v} (X, Y) = E (X Y) - (E X) (E Y) \\ = E \left(Z ^ {3}\right) - (E Z) \left(E Z ^ {2}\right) \\ = 0 \\ \end{array}
$$

But  $X$  and  $Y$  are very dependent, since  $Y$  is a function of  $X$ .

Definition 22.4. The correlation of two random variables  $X$  and  $Y$  is

$$
\begin{array}{l} \operatorname {C o r} (X, Y) = \frac {\operatorname {C o v} (X , Y)}{\operatorname {S D} (X) \operatorname {S D} (Y)} \\ = \operatorname {C o v} \left(\frac {X - E X}{\operatorname {S D} (X)}, \frac {Y - E Y}{\operatorname {S D} (Y)}\right) \\ \end{array}
$$

The operation of

$$
\frac {X - E X}{\operatorname {S D} (X)}
$$

is called standardization; it gives the result a mean of 0 and a variance of 1.

Theorem 22.5.  $|\operatorname{Cor}(X,Y)| \leq 1$ .

Proof. We could apply Cauchy-Schwartz to get this result immediately, but we shall also provide a direct proof. WLOG, assume  $X$  and  $Y$  are standardized. Let  $\rho = \operatorname{Cor}(X, Y)$ . We have

$$
\operatorname {V a r} (X + Y) = \operatorname {V a r} (X) + \operatorname {V a r} (Y) + 2 \rho = 2 + 2 \rho
$$

and we also have

$$
\operatorname {V a r} (X - Y) = \operatorname {V a r} (X) + \operatorname {V a r} (Y) - 2 \rho = 2 - 2 \rho
$$

But since  $\operatorname{Var} \geq 0$ , this yields our result.

Example. Let  $(X_{1},\ldots ,X_{k})\sim \mathrm{Mult}_{k}(n,p)$ . We shall compute  $\operatorname {Cov}(X_i,X_j)$  for all  $i,j$ . If  $i = j$ , then

$$
\operatorname {C o v} \left(X _ {i}, X _ {i}\right) = \operatorname {V a r} \left(X _ {i}\right) = n p _ {i} \left(1 - p _ {i}\right)
$$

Suppose  $i \neq j$ . We can expect that the covariance will be negative, since more objects in category  $i$  means less in category  $j$ . We have

$$
\operatorname {V a r} \left(X _ {i} + X _ {j}\right) = n p _ {i} \left(1 - p _ {i}\right) + n p _ {j} \left(1 - p _ {j}\right) + 2 \operatorname {C o v} \left(X _ {i}, X _ {j}\right)
$$

But by "lumping"  $i$  and  $j$  together, we also have

$$
\operatorname {V a r} \left(X _ {i} + X _ {j}\right) = n \left(p _ {i} + p _ {j}\right) \left(1 - \left(p _ {i} + p _ {j}\right)\right)
$$

Then solving for  $c$ , we have

$$
\operatorname {C o v} \left(X _ {i}, X _ {j}\right) = - n p _ {i} p _ {j}
$$

Note. Let  $A$  be an event and  $I_A$  its indicator random variable. It is clear that

$$
I _ {A} ^ {n} = I _ {A}
$$

for any  $n\in \mathbb{N}$  . It is also clear that

$$
I _ {A} I _ {B} = I _ {A \cap B}
$$

Example. Let  $X \sim \operatorname{Bin}(n, p)$ . Write  $X = X_1 + \dots + X_n$  where the  $X_j$  are i.i.d.  $\operatorname{Bern}(p)$ . Then

$$
\begin{array}{l} \operatorname {V a r} \left(X _ {j}\right) = E X _ {j} ^ {2} - \left(E X _ {j}\right) ^ {2} \\ = p - p ^ {2} \\ = p (1 - p) \\ \end{array}
$$

It follows that

$$
\operatorname {V a r} (X) = n p (1 - p)
$$

since  $\operatorname{Cor}(X_i, X_j) = 0$  for  $i \neq j$  by independence.

# Lecture 23 — 10/28/11

Example. Let  $X \sim \mathrm{HGeom}(w, b, n)$ . Let us write  $p = \frac{w}{w + b}$  and  $N = w + b$ . Then we can write  $X = X_1 + \dots + X_n$  where the  $X_j$  are  $\operatorname{Bern}(p)$ . (Note, however, that unlike with the binomial, the  $X_j$  are not independent.) Then

$$
\begin{array}{l} \operatorname {V a r} (X) = n \operatorname {V a r} (X _ {1}) + 2 \binom {n} {2} \operatorname {C o v} (X _ {1}, X _ {2}) \\ = n p (1 - p) + 2 \binom {n} {2} \operatorname {C o v} (X _ {1}, X _ {2}) \\ \end{array}
$$

Computing the covariance, we have

$$
\begin{array}{l} \operatorname {C o v} \left(X _ {1}, X _ {2}\right) = E \left(X _ {1} X _ {2}\right) - \left(E X _ {1}\right) \left(E X _ {2}\right) \\ = \frac {w}{w + b} \left(\frac {w - 1}{w + b - 1}\right) - \left(\frac {w}{w + b}\right) ^ {2} \\ = \frac {w}{w + b} \left(\frac {w - 1}{w + b - 1}\right) - p ^ {2} \\ \end{array}
$$

and simplifying,

$$
\operatorname {V a r} (X) = \frac {N - n}{N - 1} n p (1 - p)
$$

The term  $\frac{N - n}{N - 1}$  is called the finite population correction; it represents the "offset" from the binomial due to lack of replacement.

Theorem 23.1. Let  $X$  be a continuous random variable with PDF  $f_{X}$ , and let  $Y = g(X)$  where  $g$  is differentiable and strictly increasing. Then the PDF of  $Y$  is given by

$$
f _ {Y} (y) = f _ {X} (x) \frac {\mathrm {d} x}{\mathrm {d} y}
$$

where  $y = g(x)$  and  $x = g^{-1}(y)$ . (Also recall from calculus that  $\frac{\mathrm{d}x}{\mathrm{d}y} = \left(\frac{\mathrm{d}y}{\mathrm{d}x}\right)^{-1}$ .)

Proof. From the CDF of  $Y$ , we get

$$
P (Y \leq y) = P (g (X) \leq y)
$$

$$
\begin{array}{l} = P (X \leq g ^ {- 1} (y)) \\ = F _ {X} (g ^ {- 1} (y)) \\ = F _ {X} (x) \\ \end{array}
$$

Then, differentiating, we get by the Chain Rule that

$$
f _ {Y} (y) = f _ {X} (x) \frac {\mathrm {d} x}{\mathrm {d} y}
$$

Example. Consider the log normal distribution, which is given by  $Y = e^{Z}$  for  $Z \sim \mathcal{N}(0,1)$ . We have

$$
f _ {Y} (y) = \frac {1}{\sqrt {2 \pi}} e ^ {- z ^ {2} / 2}
$$

To put this in terms of  $y$ , we substitute  $z = \ln y$ . Moreover, we know that

$$
{\frac {\mathrm {d} y}{\mathrm {d} z}} = e ^ {z} = y
$$

and so,

$$
f _ {Y} (y) = \frac {1}{y} \frac {1}{\sqrt {2 \pi}} e ^ {- \ln y / 2}
$$

Theorem 23.2. Suppose that  $X$  is a continuous random variable in  $n$  dimensions,  $Y = g(X)$  where  $g: \mathbb{R}^n \to \mathbb{R}^n$  is continuously differentiable and invertible. Then

$$
f _ {Y} (y) = f _ {X} (x) \left| \det  \frac {\mathrm {d} x}{\mathrm {d} y} \right|
$$

where

$$
\frac {\mathrm {d} x}{\mathrm {d} y} = \left( \begin{array}{c c c} \frac {\partial x _ {1}}{\partial y _ {1}} & \dots & \frac {\partial x _ {n}}{\partial y _ {n}} \\ \vdots & \ddots & \vdots \\ \frac {\partial x _ {n}}{\partial y _ {1}} & \dots & \frac {\partial x _ {n}}{\partial y _ {n}} \end{array} \right)
$$

is the Jacobian matrix.

Observation 23.3. Let  $T = X + Y$ , where  $X$  and  $Y$  are independent. In the discrete case, we have

$$
P (T = t) = \sum_ {x} P (X = x) P (Y = t - x)
$$

For the continuous case, we have

$$
\begin{array}{l} f _ {T} (t) = \left(f _ {X} * f _ {Y}\right) (t) \\ = \int_ {- \infty} ^ {\infty} f _ {X} (x) f _ {Y} (t - x) d x \\ \end{array}
$$

This is true because we have

$$
\begin{array}{l} F _ {T} (t) = P (T \leq t) \\ = \int_ {- \infty} ^ {\infty} P (X + Y \leq t \mid X = x) f _ {X} (x) d x \\ \end{array}
$$

$$
= \int_ {- \infty} ^ {\infty} F _ {Y} (t - x) f _ {X} (x) \mathrm {d} x
$$

Then taking the derivative of both sides,

$$
f _ {T} (t) = \int_ {- \infty} ^ {\infty} f _ {X} (x) f _ {Y} (t - x) d x
$$

We now briefly turn our attention to proving the existence of objects with some desired property  $A$  using probability. We want to show that  $P(A) > 0$  for some random object, which implies that some such object must exist.

Reframing this question, suppose each object in our universe of objects has some kind of "score" associated with this property; then we want to show that there is some object with a "good" score. But we know that there is an object with score at least equal to the average score, i.e., the score of a random object. Showing that this average is "high enough" will prove the existence of an object without specifying one.

Example. Suppose there are 100 people in 15 committees of 20 people each, and that each person is on exactly 3 committees. We want to show that there exist 2 committees with overlap  $\geq 3$ . Let us find the average of two random committees. Using indicator random variables for the probability that a given person is on both of those two committees, we get

$$
E (\mathrm {o v e r l a p}) = 1 0 0 \cdot \frac {\binom {3} {2}}{\binom {1 5} {2}} = \frac {3 0 0}{1 0 5} = \frac {2 0}{7}
$$

Then there exists a pair of committees with overlap of at least  $\frac{20}{7}$ . But since all overlaps must be integral, there is a pair of committees with overlap  $\geq 3$ .

# Lecture 24 — 10/31/11

Definition 24.1. The beta distribution,  $\operatorname{Beta}(a,b)$  for  $a,b > 0$ , is defined by  $\mathrm{PDF}$

$$
f (x) = \left\{ \begin{array}{l l} c x ^ {a - 1} (1 - x) ^ {b - 1} & 0 <   x <   1 \\ 0 & \text {o t h e r w i s e} \end{array} \right.
$$

where  $c$  is a normalizing constant (defined by the beta function).

The beta distribution is a flexible family of continuous distributions on  $(0,1)$ . By flexible, we mean that the appearance of the distribution varies significantly depending on the values of its parameters. If  $a = b = 1$ , the beta reduces to the uniform. If  $a = 2$  and  $b = 1$ , the beta appears as a line with positive slope. If  $a = b = \frac{1}{2}$ , the beta appears to be concave-up and parabolic; if  $a = b = 2$ , it is concave down.

The beta distribution is often used as a prior distribution for some parameter on  $(0,1)$ . In particular, it is the conjugate prior to the binomial distribution.

Observation 24.2. Suppose that, based on some data, we have  $X \mid p \sim \operatorname{Bin}(n,p)$ , and that our prior distribution for  $p$  is  $p \sim \operatorname{Beta}(a,b)$ . We want to determine the posterior distribution of  $p, p \mid X$ . We have

$$
\begin{array}{l} f (p \mid X = k) = \frac {P (X = k \mid p) f (p)}{P (X = k)} \\ = \frac {\binom {n} {k} p ^ {k} (1 - p) ^ {n - k} c p ^ {a - 1} (1 - p) ^ {b - 1}}{P (X = k)} \\ \propto c p ^ {a + k - 1} (1 - p) ^ {b + n - k - 1} \\ \end{array}
$$

So, we have  $p \mid X \sim \operatorname{Beta}(a + X, b + n - X)$ . We call the Beta the conjugate prior to the binomial because both its prior and posterior distribution are Beta.

Observation 24.3. Let us find a specific case of the normalizing constant

$$
c ^ {- 1} = \int_ {0} ^ {1} x ^ {k} (1 - x) ^ {n - k} d x
$$

To do this, consider the story of "Bayes' billiards." Suppose we have  $n + 1$  billiard balls, all white; then we paint one pink and throw them along (0,1) all independently. Let  $X$  be the number of balls to the left of the pink ball. Then conditioning on where the pink ball ends up, we have

$$
\begin{array}{l} P (X = k) = \int_ {0} ^ {1} P (X = k \mid p) \underbrace {f (p)} _ {1} \mathrm {d} p \\ = \int_ {0} ^ {1} \binom {n} {k} p ^ {k} (1 - p) ^ {n - k} \mathrm {d} p \\ \end{array}
$$

where, given the pink ball's location,  $X$  is simply binomial (each white ball has an independent chance  $p$  of landing to the left). Note, however, that painting a ball pink and then throwing the balls along  $(0,1)$  is the same as throwing the balls along the real line and then painting one pink. But then it is clear that there is an equal chance for any given number from 0 to  $n$  of white balls to be to the pink ball's left. So we have

$$
\int_ {0} ^ {1} \binom {n} {k} p ^ {k} (1 - p) ^ {n - k} \mathrm {d} p = \frac {1}{n + 1}
$$

Lecture 25 — 11/2/11

Definition 25.1. The gamma function is given by

$$
\begin{array}{l} \Gamma (a) = \int_ {0} ^ {\infty} x ^ {a - 1} e ^ {- x} d x \\ = \int_ {0} ^ {\infty} x ^ {a} e ^ {- x} \frac {1}{x} d x \\ \end{array}
$$

for any  $a > 0$ . The gamma function is a continuous extension of the factorial operator on natural numbers. For  $n$  a positive integer,

$$
\Gamma (n) = (n - 1)!
$$

More generally,

$$
\Gamma (x + 1) = x \Gamma (x)
$$

Definition 25.2. The standard gamma distribution,  $\operatorname{Gamma}(a,1)$ , is defined by PDF

$$
\frac {1}{\Gamma (a)} x ^ {a - 1} e ^ {- x}
$$

for  $x > 0$ , which is simply the integrand of the normalized Gamma function. More generally, let  $X \sim \mathrm{Gamma}(a,1)$  and  $Y = \frac{X}{\lambda}$ . We say that  $Y \sim \mathrm{Gamma}(a,\lambda)$ . To get the PDF of  $Y$ , we simply change variables; we have  $x = \lambda y$ , so

$$
\begin{array}{l} f _ {Y} (y) = f _ {X} (x) \frac {\mathrm {d} x}{\mathrm {d} y} \\ = \frac {1}{\Gamma (a)} (\lambda y) ^ {a} e ^ {- \lambda y} \frac {1}{\lambda y} \lambda \\ = \frac {1}{\Gamma (a)} (\lambda y) ^ {a} e ^ {- \lambda y} \frac {1}{y} \\ \end{array}
$$

Definition 25.3. We define a Poisson process as a process in which events occur continuously and independently such that in any time interval  $t$ , the number of events which occur is  $N_{t} \sim \mathrm{Pois}(\lambda t)$  for some fixed rate parameter  $\lambda$ .

Observation 25.4. The time  $T_{1}$  until the first event occurs is  $\mathrm{Expo}(\lambda)$ :

$$
P \left(T _ {1} > t\right) = P \left(N _ {t} = 0\right) = e ^ {- \lambda t}
$$

which means that

$$
P (T _ {1} \leq t) = 1 - e ^ {- \lambda t}
$$

as desired. More generally, the time until the next event is always  $\mathrm{Expo}(\lambda)$ ; this is clear from the memoryless property.

Proposition 25.5. Let  $T_{n}$  be the time of the nth event in a Poisson process with rate parameter  $\lambda$ . Then, for  $X_{j}$  i.i.d.  $\mathrm{Expo}(\lambda)$ , we have

$$
T _ {n} = \sum_ {j = 1} ^ {n} X _ {j} \sim \operatorname {G a m m a} (n, \lambda)
$$

The exponential distribution is the continuous analogue of the geometric distribution; in this sense, the gamma distribution is the continuous analogue of the negative binomial distribution.

Proof. One method of proof, which we will not use, would be to repeatedly convolve the PDFs of the i.i.d.  $X_{j}$ . Instead, we will use MGFs. Suppose that the  $X_{j}$  are i.i.d. Expo(1); we will show that their sum is Gamma(n, 1).

The MGF of  $X_{j}$  is given by

$$
M _ {X _ {j}} (t) = \frac {1}{1 - t}
$$

for  $t < 1$ . Then the MGF of  $T_{n}$  is

$$
M _ {T _ {n}} (t) = \left(\frac {- 1}{1}\right) ^ {n}
$$

also for  $t < 1$ . We will show that the gamma distribution has the same MGF.

Let  $Y\sim \mathrm{Gamma}(n,1)$  . Then by LOTUS,

$$
\begin{array}{l} E (e ^ {t Y}) = \frac {1}{\Gamma (n)} \int_ {0} ^ {\infty} e ^ {t y} y ^ {n} e ^ {- y} \frac {1}{y} \mathrm {d} y \\ = \frac {1}{\Gamma (n)} \int_ {0} ^ {\infty} y ^ {n} e ^ {(1 - t) y} \frac {1}{y} d y \\ \end{array}
$$

Changing variables, with  $x = (1 - t)y$ , then

$$
\begin{array}{l} E (e ^ {t Y}) = \frac {(1 - t) ^ {- n}}{\Gamma (n)} \int_ {0} ^ {\infty} x ^ {n} e ^ {- x} \frac {1}{x} d x \\ = \left(\frac {- 1}{1}\right) ^ {n} \frac {\Gamma (n)}{\Gamma (n)} \\ = \left(\frac {- 1}{1}\right) ^ {n} \\ \end{array}
$$

Note that this is the MGF for any  $n > 0$ , although the sum of exponentials expression requires integral  $n$ .

Observation 25.6. Let us compute the moments of  $X \sim \mathrm{Gamma}(a,1)$ . We want to compute  $E(X^c)$ . We have

$$
\begin{array}{l} E (X ^ {c}) = \frac {1}{\Gamma (a)} \int_ {0} ^ {\infty} x ^ {c} x ^ {a} e ^ {- x} \frac {1}{x} \mathrm {d} x \\ = \frac {1}{\Gamma (a)} \int_ {0} ^ {\infty} x ^ {a + c} e ^ {- x} \frac {1}{x} d x \\ = \frac {\Gamma (a + c)}{\Gamma (a)} \\ = \frac {a (a + 1) \cdots (a + c) \Gamma (a)}{\Gamma (a)} \\ = a (a + 1) \dots (a + c) \\ \end{array}
$$

If instead, we take  $X \sim \mathrm{Gamma}(a, \lambda)$ , then we will have

$$
E (X ^ {c}) = \frac {a (a + 1) \cdots (a + c)}{\lambda^ {c}}
$$

# Lecture 26 — 11/4/11

Observation 26.1 (Gamma-Beta). Let us take  $X \sim \mathrm{Gamma}(a, \lambda)$  to be your waiting time in line at the bank, and  $Y \sim \mathrm{Gamma}(b, \lambda)$  your waiting time in line at the post office. Suppose that  $X$  and  $Y$  are independent. Let  $T = X + Y$ ; we know that this has distribution  $\mathrm{Gamma}(a + b, \lambda)$ .

Let us compute the joint distribution of  $T$  and of  $W = \frac{X}{X + Y}$ , the fraction of time spent waiting at the bank. For simplicity of notation, we will take  $\lambda = 1$ . The joint PDF is given by

$$
\begin{array}{l} f _ {T, W} (t, w) = f _ {X, Y} (x, y) \left| \det  \frac {\partial (x , y)}{\partial (t , w)} \right| \\ = \frac {1}{\Gamma (a) \Gamma (b)} x ^ {a} e ^ {- x} y ^ {b} e ^ {- y} \frac {1}{x y} \left| \det  \frac {\partial (x , y)}{\partial (t , w)} \right| \\ \end{array}
$$

We must find the determinant of the Jacobian (here expressed in silly-looking notation). We know that

$$
x + y = t \quad \frac {x}{x + y} = w
$$

Solving for  $x$  and  $y$ , we easily find that

$$
x = t w \quad y = t (1 - w)
$$

Then the determinant of our Jacobian is given by

$$
\left| \begin{array}{c c} w & t \\ 1 - w & - t \end{array} \right| = - t w - t (1 - w) = - t
$$

Taking the absolute value, we then get

$$
\begin{array}{l} f _ {T, W} (t, w) = \frac {1}{\Gamma (a) \Gamma (b)} x ^ {a} e ^ {- x} y ^ {b} e ^ {- y} \frac {1}{x y} t \\ = \frac {1}{\Gamma (a) \Gamma (b)} w ^ {a - 1} (1 - w) ^ {b - 1} t ^ {a + b} e ^ {- t} \frac {1}{t} \\ = \frac {\Gamma (a + b)}{\Gamma (a) \Gamma (b)} w ^ {a - 1} (1 - w) ^ {b - 1} \frac {1}{\Gamma (a + b)} t ^ {a + b} e ^ {- t} \frac {1}{t} \\ \end{array}
$$

This is a product of some function of  $w$  with the PDF of  $T$ , so we see that  $T$  and  $W$  are independent. To find the marginal distribution of  $W$ , we note that the PDF of  $T$  integrates to 1 just like any PDF, so we have

$$
\begin{array}{l} f _ {W} (w) = \int_ {- \infty} ^ {\infty} f _ {T, W} (t, w) \mathrm {d} t \\ = \frac {\Gamma (a + b)}{\Gamma (a) \Gamma (b)} w ^ {a - 1} (1 - w) ^ {b - 1} \\ \end{array}
$$

This yields  $W \sim \operatorname{Beta}(a, b)$  and also gives the normalizing constant of the beta distribution.

It turns out that if  $X$  were distributed according to any other distribution, we would not have independence, but proving so is out of the scope of the course.

Observation 26.2. Let us find  $E(W)$  for  $W \sim \operatorname{Beta}(a, b)$ . Let us write  $W = \frac{X}{X + Y}$  with  $X$  and  $Y$  defined as above. We have

$$
E \left(\frac {- 1}{X}\right) = \frac {E (X)}{E (X + Y)} = \frac {a}{a + b}
$$

Note that in general, the first equality is false! However, because  $X + Y$  and  $\frac{X}{X + Y}$ , they are uncorrelated and hence linear. So

$$
E \left(\frac {- 1}{X}\right) E (X + Y) = E (X)
$$

Definition 26.3. Let  $X_{1},\ldots ,X_{n}$  be i.i.d. The order statistics of this sequence is

$$
X _ {(1)} \leq X _ {(2)} \leq \dots \leq X _ {(n)}
$$

where

$$
X _ {(1)} = \min  \left\{X _ {1}, \dots , X _ {n} \right\}
$$

$$
X _ {(n)} = \max  \left\{X _ {1}, \dots , X _ {n} \right\}
$$

and the remaining  $X_{(j)}$  fill out the order. If  $n$  is odd, we have the median  $X\left(\frac{-1}{n + 1}\right)$ . The order statistics let us find arbitrary quantiles for the sequence.

The order statistics are hard to work with because they are dependent (and positively correlated), even though we started with i.i.d. random variables. They are particularly tricky in the discrete case because of ties, so we will assume that the  $X_{j}$  are continuous.

Observation 26.4. Let  $X_{1},\ldots ,X_{n}$  be i.i.d. continuous with PDF  $f_{j}$  and CDF  $F_{j}$ . We want to find the CDF and PDF of  $X_{(j)}$ . For the CDF, we have

$$
\begin{array}{l} P (X _ {(j)} \leq x) = P (\text {a t l e a s t} j \text {o f t h e} X _ {j} \text {s a r e} \leq x) \\ = \sum_ {k = j} ^ {n} \binom {n} {k} P (X _ {1} \leq x) ^ {k} (1 - P (X _ {1} \leq x)) ^ {n - k} \\ = \sum_ {k = j} ^ {n} \binom {n} {k} F (x) ^ {k} (1 - F (x)) ^ {n - k} \\ \end{array}
$$

Turning now to the PDF, recall that a PDF gives a density rather than a probability. We can multiply the PDF of  $X_{(j)}$  at a point  $x$  by a tiny interval  $\mathrm{d}x$  about  $x$  in order to obtain the probability that  $X_{(j)}$  is in that interval. Then we can simply count the number of ways to have one of the  $X_{i}$  be in that interval and precisely  $j - 1$  of the  $X_{i}$  below the interval. So,

$$
\begin{array}{l} f_{X_{(j)}}(x)\mathrm{d}x = n(f(x)\mathrm{d}x)\binom {n - 1}{j - 1}F(x)^{j - 1}(1 - F(x))^{n - j} \\ f_{X_{(j)}}(x) = n\binom {n - 1}{j - 1}F(x)^{j - 1}(1 - F(x))^{n - j}f(x) \\ \end{array}
$$

Example. Let  $U_{1},\ldots ,U_{n}$  be i.i.d. Unif(0,1), and let us determine the distribution of  $U_{(j)}$ . Applying the above result, we have

$$
f _ {U _ {(j)}} (x) = n \binom {n - 1} {j - 1} x ^ {j - 1} (1 - x) ^ {n - j}
$$

for  $0 < x < 1$ . Thus, we have  $U_{(j)} \sim \mathrm{Beta}(j, n - j + 1)$ . This confirms our earlier result that, for  $U_1$  and  $U_2$  i.i.d.  $\mathrm{Unif}(0,1)$ , we have

$$
E | U _ {1} - U _ {2} | = E (U _ {\mathrm {m a x}}) - E (U _ {\mathrm {m i n}}) = \frac {1}{3}
$$

because  $U_{\mathrm{max}} \sim \mathrm{Beta}(2,1)$  and  $U_{\mathrm{min}} \sim \mathrm{Beta}(1,2)$ , which have means  $\frac{2}{3}$  and  $\frac{1}{3}$  respectively.

# Lecture 27 — 11/7/11

Example (Two Envelopes Paradox). Suppose we have two envelopes containing sums of money  $X$  and  $Y$ , and suppose we are told that one envelope has twice as much money as the next. We choose one envelope; by symmetry, take  $X$  WLOG. Then it appears that  $Y$  has equal probabilities of containing  $\frac{X}{2}$  and of  $2X$ , and thus averages  $1.25X$ . So it seems that we ought to switch to envelope  $Y$ . But then, by the same reasoning, it would seem we ought to switch back to  $X$ .

We can argue about this paradox in two ways. First, we can say, by symmetry, that

$$
E (X) = E (Y)
$$

which is simple and straightforward. We might also, however, try to condition on the value of  $Y$  with respect to  $X$  using the Law of Total Probability

$$
\begin{array}{l} E (Y) = E (Y \mid Y = 2 X) P (Y = 2 X) \\ + E (Y \mid Y = \frac {X}{2}) P (Y = \frac {X}{2}) \\ = E (2 X) \frac {1}{2} + E (\frac {X}{2}) \frac {1}{2} \\ = \frac {5}{4} E (X) \\ \end{array}
$$

Assuming that  $X$  and  $Y$  are not 0 or infinite, these cannot both be correct, and the argument from symmetry is immediately correct.

The flaw in our second argument is that, in general,

$$
E (Y \mid Y = Z) \neq E (Z)
$$

because we cannot drop the condition that  $Y = Z$ ; we must write

$$
E (Y \mid Y = Z) = E (Z \mid Y = Z)
$$

In other words, if we let  $I$  be the indicator for  $Y = 2X$ , we are saying that  $X$  and  $I$  are dependent.

Example (Patterns in coin flips). Suppose we repeatedly flip a fair coin. We want to determine how many flips it takes until  $HT$  is observed (including the  $H$  and  $T$ ); similarly, we can ask how many flips it takes to get  $HH$ . Let us call these random variables  $W_{HT}$  and  $W_{HH}$  respectively. Note that, by symmetry,

$$
E (W _ {H H}) = E (W _ {T T})
$$

and

$$
E \left(W _ {H T}\right) = E \left(W _ {T H}\right)
$$

Let us first consider  $W_{HT}$ . This is the time to the first  $H$ , which we will call  $W_{1}$ , plus the time  $W_{2}$  to the next  $T$ . Then we have

$$
E \left(W _ {H T}\right) = E \left(W _ {1}\right) + E \left(W _ {2}\right) = 2 + 2 = 4
$$

because  $W_{i} - 1 \sim \mathrm{Geom}(\frac{1}{2})$ .

Now let us consider  $W_{HH}$ . The distinction here is that no "progress" can be easily made; once we get a heads, we are not decidedly halfway to the goal, because if the next flip is tails, we lose all our work. Instead, we make use of conditional expectation. Let  $H_{i}$  be the event that the  $i$ th toss is heads,  $T_{i} = H_{i}^{C}$  the event that it is tails. Then

$$
\begin{array}{l} E \left(W _ {H H}\right) = E \left(W _ {H H} \mid H _ {1}\right) \frac {1}{2} + E \left(W _ {H H} \mid T _ {1}\right) \frac {1}{2} \\ = \left(E \left(W _ {H H} \mid H _ {1}, H _ {2}\right) \frac {1}{2} + E \left(W _ {H H} \mid H _ {1}, T _ {2}\right) \frac {1}{2}\right) \frac {1}{2} \\ + (1 + E \left(W _ {H H}\right)) \frac {1}{2} \\ = \left(1 + (2 + E (W _ {H H})) \frac {1}{2}\right) \frac {1}{2} + (1 + E (W _ {H H})) \frac {1}{2} \\ \end{array}
$$

Solving for  $E(W_{HH})$  gives

$$
E (W _ {H H}) = 6
$$

So far, we have been conditioning expectations on events. Let  $X$  and  $Y$  be random variables; then this kind of conditioning includes computing  $E(Y \mid X = x)$ . If  $Y$  is discrete, then

$$
E (Y \mid X = x) = \sum_ {y} y P (Y = y \mid X = x)
$$

and if  $Y$  is continuous,

$$
E (Y \mid X = x) = \int_ {- \infty} ^ {\infty} y f _ {Y \mid X = x} (y | x) d y
$$

if  $X$  continuous  $\begin{array}{rl}{=  \int_{-\infty}^{\infty}y\frac{f_{X,Y}(x,y)}{f_X(x)}  \mathrm{d}y} \end{array}$

Definition 27.1. Now let us write

$$
g (x) = E (Y \mid X = x)
$$

Then

$$
E (Y | X) = g (X)
$$

So, suppose for instance that  $g(x) = x^2$ ; then  $g(X) = X^2$ . We can see that  $E(Y|X)$  is a random variable and a function of  $X$ . This is a conditional expectation.

Example. Let  $X$  and  $Y$  be i.i.d. Pois( $\lambda$ ). Then

$$
E (X + Y \mid X) = E (X | X) + E (Y | X)
$$

$X$  is a function of itself  $= X + E(Y|X)$

$X$  and  $Y$  independent)  $= X + E(Y)$

$$
= X + \lambda
$$

Note that, in general,

$$
E (h (X) \mid X) = h (X)
$$

Now let us determine  $E(X \mid X + Y)$ . We can do this in two different ways. First, let  $T = X + Y$  and let us find the conditional PMF.

$$
\begin{array}{l} P (X = k \mid T = n) = \frac {P (T = n \mid X = k) P (X = k)}{P (T = n)} \\ = \frac {P (Y = n - k) P (X = k)}{P (T = n)} \\ = \frac {\frac {e ^ {- \lambda} \lambda^ {n - k}}{(n - k) !} e ^ {- \lambda} \frac {\lambda^ {k}}{k !}}{e ^ {- 2 \lambda} \frac {(2 \lambda) ^ {n}}{n !}} \\ = \binom {n} {k} \left(\frac {- 1}{1}\right) ^ {n} \\ \end{array}
$$

That is,  $X \mid T = n \sim \operatorname{Bin}(n, \frac{1}{2})$ . Thus, we have

$$
E (X \mid T = n) = \frac {n}{2}
$$

which means that

$$
E (X | T) = \frac {T}{2}
$$

In our second method, first we note that

$$
E (X \mid X + Y) = E (Y \mid X + Y)
$$

by symmetry (since they are i.i.d.). We have

$$
\begin{array}{l} E (X \mid X + Y) + E (Y \mid X + Y) = E (X + Y \mid X + Y) \\ = X + Y \\ = T \\ \end{array}
$$

So, without even using the Poisson,  $E(X|T) = \frac{T}{2}$ .

Proposition 27.2 (Adam's Law). Let  $X$  and  $Y$  be random variables. Then

$$
E (E (Y | X)) = E (Y)
$$

# Lecture 28 — 11/9/11

Example. Let  $X \sim \mathcal{N}(0,1)$ ,  $Y = X^2$ . Then

$$
E (Y | X) = E (X ^ {2} | X) = X ^ {2} = Y
$$

On the other hand,

$$
E (X | Y) = E (X | X ^ {2}) = 0
$$

since, after observing  $X^2 = a$ , then  $X = \pm \sqrt{a}$  with equal likelihood of being positive or negative (since the standard normal is symmetric about 0). Note that this doesn't mean  $X$  and  $X^2$  are independent.

Example. Suppose we have a stick, break off a random piece, and then break off another random piece. We can model this as  $X \sim \operatorname{Unif}(0,1)$ ,  $Y|X \sim \operatorname{Unif}(0,X)$ . We know that

$$
E (Y \mid X = x) = \frac {x}{2}
$$

and hence

$$
E (Y | X) = \frac {X}{2}
$$

Note that

$$
E (E (Y | X)) = \frac {1}{4} = E (Y)
$$

That is, on average, we take half the stick and then take half of that stick, which matches our intuition.

Proposition 28.1. Let  $X$  and  $Y$  be random variables.

1.  $E(h(X)Y \mid X) = h(X)E(Y|X)$ .  
2.  $E(Y|X) = E(Y)$  if  $X$  and  $Y$  are independent (the converse, however, is not true in general).  
3.  $E(E(Y|X)) = E(Y)$ . This is called iterated expectation or Adam's Law; it is usually more useful to think of this as computing  $E(Y)$  by choosing a simple  $X$  to work with.  
4.  $E((Y - E(Y|X))h(X)) = 0$ . In words, the residual (i.e.,  $Y - E(Y|X)$ ) is uncorrelated with  $h(X)$ :

$$
\begin{array}{l} \operatorname {C o v} (Y - E (Y | X), h (X)) \\ = \underbrace {E ((Y - E (Y | X)) h (X))} _ {0} - \underbrace {E (Y - E (Y | X))} _ {0} E (h (X)) \\ \end{array}
$$

To better understand (4), we can think of the functions  $X$  and  $Y$  as vectors (the vector space has inner product  $\langle X, Y \rangle = E(XY)$ ). We can think of  $E(Y|X)$  as the projection of  $Y$  onto the plane consisting of all functions of  $X$ . In this picture, the residual vector  $Y - E(Y|X)$  is orthogonal to the plane of all functions of  $X$ , and thus  $\langle Y - E(Y|X), h(X) \rangle = 0$ .

Proof. We will prove all the properties above.

1. Since we know  $X$ , we know  $h(X)$ , and this is equivalent to factoring out at constant (by linearity).  
2. Immediate.  
3. We will prove the discrete case. Let  $E(Y|X) = g(X)$ . Then by discrete LOTUS, we have

$$
\begin{array}{l} E g (X) = \sum_ {x} g (x) P (X = x) \\ = \sum_ {x} E (Y \mid X = x) P (X = x) \\ = \sum_ {x} \left(\sum_ {y} y P (Y = y \mid X = x)\right) P (X = x) \\ = \sum_ {x} \left(\sum_ {y} y P (Y = y \mid X = x) P (X = x)\right) \\ \end{array}
$$

conditional PMF times marginal  $\mathrm{PMF} =$  joint PMF

$$
\begin{array}{l} = \sum_ {x} \sum_ {y} y P (Y = y, X = x) \\ = \sum_ {y} \sum_ {x} y P (Y = y, X = x) \\ = \sum_ {y} y P (Y = y) \\ = E (Y) \\ \end{array}
$$

4. We have

$$
\begin{array}{l} E \left(\left(Y - E (Y | X)\right) h (X)\right) \\ = E (Y h (X)) - E (E (Y | X) h (X)) \\ = E (Y h (X)) - E (E (h (X) Y | X)) \\ = E (Y h (X)) - E (Y h (X)) \\ = 0 \\ \end{array}
$$

Definition 28.2. We can define the conditional variance much as we did conditional expectation. Let  $X$  and  $Y$  be random variables. Then

$$
\begin{array}{l} \operatorname {V a r} (Y | X) = E \left(Y ^ {2} | X\right) - \left(E (Y | X)\right) ^ {2} \\ = E \left(\left(Y - E (Y | X)\right) ^ {2} \mid X\right) \\ \end{array}
$$

Proposition 28.3 (Eve's Law).

$$
\operatorname {V a r} (Y) = E (\operatorname {V a r} (Y | X)) + \operatorname {V a r} (E (Y | X))
$$

Example. Suppose we have three populations, where  $X = 1$  is the first,  $X = 2$  the second, and  $X = 3$  the third, and suppose we know the mean and variance of the height  $Y$  of individuals in each of the separate populations. Then Eve's law says we can take the variance of all three means, and add it to the mean of all three variances, to get the total variance.

Example. Suppose we choose a random city and then choose a random sample of  $n$  people in that city. Let  $X$  be the number of people with a particular disease, and  $Q$  the proportion of people in the chosen city with the disease. Let us determine  $E(X)$  and  $\operatorname{Var}(X)$ , assuming  $Q \sim \operatorname{Beta}(a, b)$  (a mathematically convenient, flexible distribution).

Assume that  $X|Q \sim \operatorname{Bin}(n, Q)$ . Then

$$
\begin{array}{l} E (X) = E \left(E (X | Q)\right) \\ = E (n Q) \\ = n \frac {a}{a + b} \\ \end{array}
$$

and

$$
\begin{array}{l} \operatorname {V a r} (X) = E (\operatorname {V a r} (X | Q)) + \operatorname {V a r} (E (X | Q)) \\ = E (n Q (1 - Q)) + n ^ {2} \operatorname {V a r} (Q) \\ \end{array}
$$

We have

$$
\begin{array}{l} E (Q (1 - Q)) = \frac {\Gamma (a + b)}{\Gamma (a) \Gamma (b)} \int_ {0} ^ {1} q ^ {a} (1 - q) ^ {b} d q \\ = \frac {\Gamma (a + b)}{\Gamma (a) \Gamma (b)} \frac {\Gamma (a + 1) \Gamma (b + 1)}{\Gamma (a + b + 2)} \\ = \frac {a b \Gamma (a + b)}{(a + b + 1) (a + b) \Gamma (a + b)} \\ = \frac {a b}{(a + b) (a + b + 1)} \\ \end{array}
$$

and

$$
\operatorname {V a r} (Q) = \frac {\mu (1 - \mu)}{a + b + 1}
$$

where  $\mu = \frac{a}{a + b}$ . This gives us all the information we need to easily compute  $\operatorname{Var}(X)$ .

# Lecture 29 — 11/14/11

Example. Consider a store with a random number  $N$  of customers. Let  $X_{j}$  be the amount the  $j$ th customer spends, with  $E(X_{j}) = \mu$  and  $\operatorname{Var}(X_j) = \sigma^2$ . Assume that  $N, X_1, X_2, \ldots$  are independent. We want to determine the mean and variance of

$$
X = \sum_ {j = 1} ^ {N} X _ {j}
$$

We might, at first, mistakenly invoke linearity to claim that  $E(X) = N\mu$ . But this is incoherent; the LHS is a real number whereas the RHS is a random variable. However, this error highlights something useful: we want to

make  $N$  a constant, so let us condition on  $N$ . Then using the Law of Total Probability, we have

$$
\begin{array}{l} E (X) = \sum_ {n = 0} ^ {\infty} E (X \mid N = n) P (N = n) \\ = \sum_ {n = 0} ^ {\infty} \mu n P (N = n) \\ = \mu E (N) \\ \end{array}
$$

Note that we can drop the conditional because  $N$  and the  $X_{j}$  are independent; otherwise, this would not be true.

We could also apply Adam's Law to get

$$
E (X) = E (E (X | N)) = E (\mu N) = \mu E (N)
$$

To get the variance, we apply Eve's Law to get

$$
\begin{array}{l} \operatorname {V a r} (X) = E (\operatorname {V a r} (X | N)) + \operatorname {V a r} (E (X | N)) \\ = E \left(N \sigma^ {2}\right) + \operatorname {V a r} (\mu N) \\ = \sigma^ {2} E (N) + \mu^ {2} \operatorname {V a r} (N) \\ \end{array}
$$

We now turn our attention to statistical inequalities.

Theorem 29.1 (Cauchy-Schwartz Inequality).

$$
\left| E (X Y) \right| \leq \sqrt {E \left(X ^ {2}\right) E \left(Y ^ {2}\right)}
$$

If  $X$  and  $Y$  are uncorrelated,  $E(XY) = (EX)(EY)$ , so we don't need inequality.

We will not prove this inequality in general. However, if  $X$  and  $Y$  have mean 0, then

$$
| \operatorname {C o r r} (X, Y) | = \left| \frac {E (X Y)}{\sqrt {E (X ^ {2}) E (Y ^ {2})}} \right| \leq 1
$$

Theorem 29.2 (Jensen's Inequality). If  $g: \mathbb{R} \to \mathbb{R}$  is convex (i.e.,  $g'' > 0$ ), then

$$
E g (X) \geq g (E X)
$$

If  $g$  is concave (i.e.,  $g'' < 0$ ), then

$$
E g (X) \leq g (E X)
$$

Example. If  $X$  is positive, then

$$
E (\frac {1}{X}) \geq \frac {1}{E X}
$$

and

$$
E (\ln X) \leq \ln (E X)
$$

Proof. It is true of any convex function  $g$  that

$$
g (x) \geq a + b x
$$

if  $a + bx$  is the line tangent to any point  $(x_0, g(x_0))$  on the graph of  $g$ . Take  $x_0 = E(X)$ . Then we have

$$
g (x) \geq a + b x
$$

$$
g (X) \geq a + b X
$$

$$
\begin{array}{l} E g (X) \geq E (a + b X) \\ = a + b E (X) \\ = g (E X) \\ \end{array}
$$

Theorem 29.3 (Markov Inequality).

$$
P (| X | \geq a) \leq \frac {E | X |}{a}
$$

for any  $a > 0$

Proof. Let  $I_{|X| \geq a}$  be the indicator random variable for the event  $|X| \geq a$ . It is always true that

$$
a I _ {| X | \geq a} \leq | X |
$$

because if  $I_{|X| \geq a} = 1$ , then  $|X| \geq a$  and then inequality holds, and if  $I_{|X| \geq a} = 0$ , the inequality is trivial since  $|X| \geq 0$ . Then, taking expected values, we have

$$
a E I _ {| X | \geq a} \leq E | X |
$$

as desired.

Example. Suppose we have 100 people. It is easily possible that at least  $95\%$  of the people are younger than average in the group. However, it is not possible that at least  $50\%$  are older than twice the average age.

Theorem 29.4 (Chebyshev Inequality).

$$
P (| X - \mu | \geq a) \leq \frac {\operatorname {V a r} (X)}{a ^ {2}}
$$

for  $\mu = EX$  and  $a > 0$ . Alternatively, we can write

$$
P (| X - \mu | \geq c \mathrm {S D} (X)) \leq \frac {1}{c ^ {2}}
$$

for  $c > 0$

Proof.

$$
P \left(| X - \mu | \leq a\right) = P \left((X - \mu) ^ {2} \leq a ^ {2}\right)
$$

$$
\begin{array}{l} \text {b y} \quad \operatorname {M a r k o v} \quad \leq \frac {E \left(\left(X - \mu\right) ^ {2}\right)}{a ^ {2}} \\ = \frac {\operatorname {V a r} (X)}{a ^ {2}} \\ \end{array}
$$

Lecture 30 — 11/16/11

Definition 30.1. Let  $X_{1}, X_{2}, \ldots$  be i.i.d. random variables with mean  $\mu$  and variance  $\sigma^2$ . The sample mean of the first  $n$  random variables is

$$
\bar {X} _ {n} = \frac {1}{n} \sum_ {j = 1} ^ {n} X _ {j}
$$

We want to answer the question: What happens to the sample mean when  $n$  gets large?

Theorem 30.2 (Law of Large Numbers). With probability 1, as  $n \to \infty$ ,

$$
\bar {X} _ {n} \to \mu
$$

pointwise. That is, the sample mean of a collection of i.i.d. random variables converges to the true mean.

Example. Suppose that  $X_{j} \sim \operatorname{Bern}(p)$ . The Law of Large Numbers says that  $\frac{1}{n} (X_1 + \dots + X_n) \to p$ .

Note that the Law of Large Numbers says nothing about the value of any individual  $X_{j}$ . For instance, in the above example with simple success and failures (which we may model as a series of coin flips), flipping heads many times does not mean that a tails is on its way. Rather, it means that the large but finite string of heads is "swamped" by the infinite flips yet to come.

Theorem 30.3 (Weak Law of Large Numbers). For any  $c > 0$ , as  $n \to 0$ ,

$$
P (| \bar {X} _ {n} - \mu | > c) \rightarrow 0
$$

Proof. (of Weak LoLN) By Chebyshev's inequality,

$$
\begin{array}{l} P \left(\left| \bar {X} _ {n} - \mu \right| > c\right) \leq \frac {\operatorname {V a r} \left(\bar {X} _ {n}\right)}{c ^ {2}} \\ = \frac {\frac {1}{n ^ {2}} n \sigma^ {2}}{c ^ {2}} \\ = \frac {\sigma^ {2}}{n c ^ {2}} \\ \rightarrow 0 \\ \end{array}
$$

Note that the Law of Large Numbers does not tell us anything about the distribution of  $\bar{X}_n$ . To study this distribution, and in particular the rate at which  $\bar{X}_n \to 0$ , we might consider

$$
n ^ {i} (\bar {X} _ {n} - \mu)
$$

for various values of  $i$ .

Theorem 30.4 (Central Limit Theorem). As  $n\to \infty$

$$
n ^ {1 / 2} \frac {\left(\bar {X} _ {n} - \mu\right)}{\sigma} \rightarrow \mathcal {N} (0, 1)
$$

in distribution; that is, the CDFs converge. Equivalently,

$$
\frac {\sum_ {j = 1} ^ {n} X _ {j} - n \mu}{\sqrt {n} \sigma} \rightarrow \mathcal {N} (0, 1)
$$

Proof. We will prove the CLT assuming that the MGF  $M(t)$  of the  $X_{j}$  exists (note that we have been assuming all along that the first two moments exist). We will show that the MGFs converge, which will imply that the CDFs converge (however, we will not show this fact).

Let us assume WLOG that  $\mu = 0$  and  $\sigma = 1$ . Let

$$
S _ {n} = \sum_ {j = 1} ^ {n} X _ {j}
$$

We will show that the MGF of  $\frac{S_n}{\sqrt{n}}$  converges to the MGF of  $\mathcal{N}(0,1)$ . We have

$$
E \left(e ^ {t S _ {n} / \sqrt {n}}\right)
$$

uncorrelated since independent

$$
\begin{array}{l} = E \left(e ^ {t X _ {1} / \sqrt {n}}\right) \dots E \left(e ^ {t X _ {n} / \sqrt {n}}\right) \\ = E (e ^ {t X _ {j} / \sqrt {n}}) ^ {n} \\ = M \left(\frac {t}{\sqrt {n}}\right) ^ {n} \\ \end{array}
$$

Taking the limit results in the indeterminate form  $1^{\infty}$ , which is hard to work with. Instead, we take the log of both sides and then take the limit, to get

$$
\lim  _ {n \rightarrow \infty} n \ln M \left(\frac {t}{\sqrt {n}}\right) = \lim  _ {n \rightarrow \infty} \frac {\ln M (\frac {t}{\sqrt {n}})}{\frac {1}{n}}
$$

$$
\begin{array}{l} \mathrm {s u b s t i t u t e} y = \frac {1}{\sqrt {n}} \\ = \lim  _ {y \rightarrow 0} \frac {\ln M (t y)}{y ^ {2}} \\ \end{array}
$$

$$
\text {L'H o p i t a l ' s} = \lim  _ {y \rightarrow 0} \frac {t M ^ {\prime} (t y)}{2 y M (t y)}
$$

$$
\begin{array}{l} {[ M (0) = 1, M ^ {\prime} (0) = 0 ]} {= \frac {t}{2} \lim _ {y \to 0} \frac {M ^ {\prime} (t y)}{y}} \\ \text {L'H o p i t a l's} = \frac {t ^ {2}}{2} \lim  _ {y \rightarrow 0} \frac {M ^ {\prime \prime} (t y)}{1} \\ = \frac {t ^ {2}}{2} \\ = \ln e ^ {t ^ {2} / 2} \\ \end{array}
$$

and  $e^{t^2 /2}$  is the  $\mathcal{N}(0,1)$  MGF.

Corollary 30.5. Let  $X \sim \operatorname{Bin}(n,p)$  with  $X = \sum_{j=1}^{n} X_j$ ,  $X_j \sim \operatorname{Bern}(p)$  i.i.d.

$$
\begin{array}{l} P (a \leq X \leq b) = P \left(\frac {a - n p}{\sqrt {n p q}} \leq \frac {X - n p}{\sqrt {n p q}} \leq \frac {b - n p}{\sqrt {n p q}}\right) \\ \approx \Phi \left(\frac {- 1}{b - n p}\right) - \Phi \left(\frac {- 1}{a - n p}\right) \\ \end{array}
$$

The Poisson approximation works well when  $n$  is large,  $p$  is small, and  $\lambda = np$  is moderate. In contrast, the Normal approximation works well when  $n$  is large and  $p$  is near  $\frac{1}{2}$  (to match the symmetry of the normal).

It seems a little strange that we are approximating a discrete distribution with a continuous distribution. In general, to correct for this, we can write

$$
P (X = a) = P (a - \epsilon <   X <   a + \epsilon)
$$

where  $(a - \epsilon, a + \epsilon)$  contains only  $a$

# Lecture 31 — 11/18/11

Definition 31.1. Let  $V = Z_1^2 + \dots + Z_n^2$  where the  $Z_j \sim \mathcal{N}(0,1)$  i.i.d. Then  $V$  has the chi-squared distribution with  $n$  degrees of freedom,  $V \sim \overline{\chi_n^2}$ .

Observation 31.2. It is true, but we will not prove, that

$$
\chi_ {1} ^ {2} = \operatorname {G a m m a} (\frac {1}{2}, \frac {1}{2})
$$

Since  $\chi_n^2 = \sum \chi_1^2$ , we have

$$
\chi_ {n} ^ {2} = \mathrm {G a m m a} (\frac {n}{2}, \frac {1}{2})
$$

Definition 31.3. Let  $Z \sim \mathcal{N}(0,1)$  and  $V \sim \chi_n^2$  be independent. Let

$$
T = \frac {Z}{\sqrt {V / n}}
$$

Then  $T$  has the Student- $t$  distribution with  $n$  degrees of freedom,  $T \sim t_n$ .

Observation 31.4. The Student- $t$  is symmetric; that is  $-T \sim t_n$ . Note that if  $n = 1$ , then  $T$  is the ratio of two i.i.d. standard normals, so  $T$  becomes the Cauchy distribution (and hence has no mean).

If  $n\geq 2$  , then

$$
E (T) = E (Z) E (\frac {1}{\sqrt {V / n}}) = 0
$$

Note that in general,  $T \sim t_n$  will only have moments up to (but not including) the  $n$ th.

Observation 31.5. We proved that

$$
E (Z ^ {2}) = 1, \quad E (Z ^ {4}) = 1 \cdot 3, \quad E (Z ^ {6}) = 1 \cdot 3 \cdot 5
$$

using MGFs. We can also prove this by noting that

$$
E (Z ^ {2 n}) = E ((Z ^ {2}) ^ {n})
$$

and that  $Z^2 \sim \chi_1^2 = \mathrm{Gamma}(\frac{1}{2},\frac{1}{2})$ . Then we can simply use LOTUS to get our desired mean.

Observation 31.6. The Student- $t$  distribution looks much like the normal distribution but is heavier-tailed, especially if  $n$  is small. As  $n \to \infty$ , we claim that the Student- $t$  converges to the standard normal.

Let

$$
T _ {n} = \frac {Z}{\sqrt {V _ {n} / n}}
$$

where  $Z_{1}, Z_{2}, \ldots \sim \mathcal{N}(0, 1)$  i.i.d.,  $V_{n} = Z_{1}^{2} + \dots + Z_{n}^{2}$ , and  $Z \sim \mathcal{N}(0, 1)$  independent of the  $Z_{j}$ . By the Law of Large numbers, with probability 1,

$$
\lim  _ {n \to \infty} \frac {V _ {n}}{n} = 1
$$

So  $T_{n} \to Z$ , which is standard normal as desired.

Definition 31.7. Let  $X = (X_{1},\ldots ,X_{k})$  be a random vector. We say that  $X$  has the multivariate normal distribution (MVN) if every linear combination

$$
t _ {1} X _ {1} + \dots t _ {k} X _ {k}
$$

of the  $X_{j}$  is normal.

Example. Let  $Z$ ,  $W$  be i.i.d.  $\mathcal{N}(0,1)$ . Then  $(Z + 2W, 3Z + 5W)$  is MVN, since

$$
s (Z + 2 W) + t (3 Z + 5 W) = (s + 3 t) Z + (2 s + 5 t) W
$$

is a sum of independent normals and hence normal.

Example. Let  $Z \sim \mathcal{N}(0,1)$ . Let  $S$  be a random sign (±1 with equal probabilities) independent of  $Z$ . Then  $Z$  and  $SZ$  are marginally standard normal. However,  $(Z, SZ)$  is not multivariate normal, since  $Z + SZ$  is 0 with probability  $\frac{1}{2}$ .

Observation 31.8. Recall that the MGF for  $X \sim \mathcal{N}(\mu, \sigma^2)$  is given by

$$
E \left(e ^ {t X}\right) = e ^ {t \mu + t ^ {2} \sigma^ {2} / 2}
$$

Suppose that  $X = (X_{1},\ldots ,X_{k})$  is MVN. Let  $\mu_j = EX_j$ . Then the MGF of  $X$  is given by

$$
\begin{array}{l} E \left(e ^ {t _ {1} X _ {1} + \dots + t _ {k} X _ {k}}\right) \\ = \exp \left(t _ {1} \mu_ {1} + \dots + t _ {k} \mu_ {k} + \frac {1}{2} \operatorname {V a r} \left(t _ {1} X _ {1} + \dots + t _ {k} X _ {k}\right)\right) \\ \end{array}
$$

Theorem 31.9. Let  $X = (X_{1},\ldots ,X_{k})$  be MVN. Then within  $X$ , uncorrelated implies independence. For instance, if we write  $X = (\mathbf{X}_1,\mathbf{X}_2)$ , if every component of  $\mathbf{X_1}$  is uncorrelated with every component of  $\mathbf{X_2}$ , then  $\mathbf{X_1}$  is independent of  $\mathbf{X_2}$ .

Example. Let  $X, Y$  be i.i.d.  $\mathcal{N}(0,1)$ . Then  $(X + Y, X - Y)$  is MVN. We also have that

$$
\begin{array}{l} \operatorname {C o v} (X + Y, X - Y) \\ = \operatorname {V a r} (X) + \operatorname {C o v} (X, Y) - \operatorname {C o v} (X, Y) - \operatorname {V a r} (Y) \\ = 0 \\ \end{array}
$$

So by our above theorem,  $X + Y$  and  $X - Y$  are independent.

# Lecture 32 — 11/21/11

Definition 32.1. Let  $X_0, X_1, X_2, \ldots$  be sequence of random variables. We think of  $X_n$  as the state of a finite system at a discrete time  $n$  (that is, the  $X_n$  have discrete indices and each has finite range). The sequence has the Markov property if

$$
\begin{array}{l} P \left(X _ {n + 1} = j \mid X _ {n} = i, X _ {n - 1} = i _ {n - 1}, \dots , X _ {0} = i _ {0}\right) \\ = P \left(X _ {n + 1} = j \mid X _ {n} = i\right) \\ \end{array}
$$

In casual terms, in a system with the Markov property, the past and future are conditionally independent given the present. Such a system is called a Markov chain.

If  $P(X_{n + 1} = j \mid X_n = i)$  does not depend on time  $n$ , then we denote

$$
q _ {i j} := P \left(X _ {n + 1} = j \mid X _ {n} = i\right)
$$

called the transition probability, and we call the sequence a homogenous Markov chain.

To describe a homogenous Markov chain we simply need to show the states of the process and the transition probabilities. We could, instead, array the  $q_{ij}$ 's as a matrix,

$$
Q = \left(q _ {i j}\right)
$$

called the transition matrix.

Note. More generally, we could consider continuous systems (i.e., spaces) at continuous times and more broadly study stochastic processes. However, in this course, we will restrict our study to homogenous Markov chains.

Example. The following diagram describes a (homogeneous) Markov chain:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6ec590f5-ab35-440f-94c1-0d89bd8ceb3c/65939e2ecd8c330c717e34f2662de9c2705b2c365624d34fb8a3c66a845f3532.jpg)

We could alternatively describe the same Markov chain by specifying its transition matrix

$$
Q = \left( \begin{array}{c c c c} \frac {1}{3} & \frac {2}{3} & 0 & 0 \\ \frac {1}{2} & 0 & \frac {1}{2} & 0 \\ 0 & 0 & 0 & 1 \\ \frac {1}{2} & 0 & \frac {1}{4} & \frac {1}{4} \end{array} \right)
$$

Observation 32.2. Suppose that at time  $n$ ,  $X_{n}$  has distribution  $s$  (a row vector in the transition matrix, which represents the PMF). Then

$$
\begin{array}{l} P (X _ {n + 1} = j) = \sum_ {i} P (X _ {n + 1} = j \mid X _ {n} = i) P (X _ {n} = i) \\ = \sum_ {i} q _ {i j} s _ {i} \\ = s Q \\ \end{array}
$$

So  $sQ$  is the distribution of  $X_{n+1}$ . More generally, we have that  $sQ^j$  is the distribution of  $X_{n+j}$ .

We can also compute the two-step transition probability:

$$
\begin{array}{l} P \left(X _ {n + 2} = j \mid X _ {n} = i\right) \\ = \sum_ {k} P \left(X _ {n + 2} = j \mid X _ {n + 1} = k, X _ {n} = i\right) \\ P \left(X _ {n + 1} = k \mid X _ {n} = i\right) \\ = \sum_ {k} P \left(X _ {n + 2} = j \mid X _ {n + 1} = k\right) P \left(X _ {n + 1} = k \mid X _ {n} = i\right) \\ = \sum_ {k} q _ {k j} q _ {i k} \\ = \sum_ {k} q _ {i k} q _ {k j} \\ = (Q ^ {2}) _ {i j} \\ \end{array}
$$

More generally, we have

$$
P \left(X _ {n + m} = j \mid X _ {n} = i\right) = \left(Q ^ {m}\right) _ {i j}
$$

Definition 32.3. Let  $s$  be some probability vector for a Markov chain with transition matrix  $Q$ . We say that  $s$  is stationary for the chain if

$$
s Q = s
$$

We also call  $s$  a stationary distribution. Note that this is the transpose of an eigenvector equation.

This definition raises the following questions:

1. Does a stationary distribution exist for every Markov chain?  
2. Is the stationary distribution unique?  
3. Does the chain (in some sense) converge to the stationary distribution?  
4. How can we compute it (efficiently)?

# Lecture 33 — 11/28/11

Example. The following are some pathological examples of Markov chains (sans transition probabilities), in statediagram form:

1. Unpathological Markov chain

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6ec590f5-ab35-440f-94c1-0d89bd8ceb3c/e784eeac3ece3e0ef1d71727a4bf8ba87bba25aa9e0d3fe035a0659de5f75044.jpg)

2. Disconnected Markov chain

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6ec590f5-ab35-440f-94c1-0d89bd8ceb3c/480ff9f9faa4cee94f58c99c366462208f86f74d21db37e88670c12cb71fb782.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6ec590f5-ab35-440f-94c1-0d89bd8ceb3c/77982e6f3dbbf67f0be4691977509724f06544ebd93a08f5ea282429d373c2ea.jpg)

3. Markov chain with absorbing states

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6ec590f5-ab35-440f-94c1-0d89bd8ceb3c/90cef96cb55351fcdcae161a0608f477424b55075c465a38fbfd5ff76335ff15.jpg)

4. Periodic Markov chain

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6ec590f5-ab35-440f-94c1-0d89bd8ceb3c/6d1844daecf67a4f45d140a3d6cff3d20856510ebd89285ea4c1ccc5cde292d7.jpg)

Definition 33.1. A state is recurrent if, starting from that state, there is probability 1 of transitioning back to that state after a finite number of transitions. If a state is not recurrent, it is transient.

Definition 33.2. A Markov chain is irreducible if it is possible (with positive probability) to transition from any state to any other state in a finite number of transitions. Note that in an irreducible chain, all states are recurrent; over an infinite number of transitions, any nonzero probability of returning to a state means that the event of return will occur with probability 1.

Observation 33.3. In our example above, Markov chains 1 and 4 are irreducible; chains 2 and 3 are not. All the states of chain 2 are recurrent; even though the chain itself has two connected components, we will always (i.e., with probability 1), return to the state which we started from.

However, in chain 3, states 1 and 2 are transient. With probability 1, from states 1 and 2, we will at some point transition to state 0 or 3; after that point, we will never return to state 1 or 2. On the other hand, if we start in 0 or 3, we stay there forever; they are clearly recurrent.

Theorem 33.4. For any irreducible Markov chain,

1. A stationary distribution  $s$  exists.

2.  $s$  is unique.  
3.  $s_i = \frac{1}{r_i}$ , where  $r_i$  is the average time to return to state  $i$  starting from state  $i$ .  
4. If  $Q^m$  is strictly positive for some  $m$ , then

$$
\lim  _ {n \to \infty} P (X _ {n} = i) = s _ {i}
$$

Alternatively, if  $t$  is any (starting-state) probability vector, then

$$
\lim  _ {n \to \infty} t Q = s
$$

Definition 33.5. A Markov chain with transition matrix  $Q$  is reversible if there is a probability vector  $s$  such that

$$
s _ {i} q _ {i j} = s _ {j} q _ {j i}
$$

for all pairs of states  $i$  and  $j$ .

Reversibility is also known as time-reversibility. Intuitively, the progression of a reversible Markov chain could be played back backwards, and the probabilities would be consistent with the original Markov chain.

Theorem 33.6. If a Markov chain is reversible with respect to  $s$ , then  $s$  is stationary.

Proof. We know that  $s_i q_{ij} = s_j q_{ji}$  for some  $s$ . Summing over all states,

$$
\begin{array}{l} \sum_ {i} s _ {i} q _ {i j} = \sum_ {j} s _ {j} q _ {j i} \\ = s _ {j} \sum_ {j} q _ {j i} \\ = s _ {j} \\ \end{array}
$$

But since this is true for every  $j$ , this is exactly the statement of

$$
s Q = s
$$

as desired.

Example (Random walk on an undirected network). Consider the following example undirected Markov chain

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-10/6ec590f5-ab35-440f-94c1-0d89bd8ceb3c/c23216e9dbe36417124e1f327a337d92d6e2a80fd5eaaf0d2ba840d44dd26d50.jpg)

Let  $d_{i}$  be the degree of  $i$  (so,  $d_{1} = 2$ ,  $d_{2} = 2$ ,  $d_{3} = 3$ ,  $d_{4} = 1$ ). Then we claim that (in general)

$$
d _ {i} q _ {i j} = d _ {j} q _ {j i}
$$

for all  $i,j$

Assume  $i \neq j$ . Since the Markov chain is undirected,  $q_{ij}$  and  $q_{ji}$  are either both zero or both nonzero. If  $(i,j)$  is an edge, then

$$
q _ {i j} = \frac {1}{d _ {i}}
$$

since our Markov chain represents a random walk. But this suffices to prove our claim.

Let us now normalize  $d_{i}$  to a stationary vector  $s_{i}$ . This is easy; we can simply take

$$
s _ {i} = \frac {d _ {i}}{\sum_ {j} d _ {j}}
$$

and we have thus found our desired stationary distribution.