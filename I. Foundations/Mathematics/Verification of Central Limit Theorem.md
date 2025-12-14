---
parent_directory: I. Foundations/Mathematics
title: "A Verification of the Central Limit Theorem"
tags:
aliases:
  - Verification of the Central Limit Theorem
parent_folder: Mathematics
subfolder:
key_concepts:
cssclasses: academia
linter-yaml-title-alias: "A Verification of the Central Limit Theorem"
---

# A Verification of the Central Limit Theorem

Central Limit Theorem: If  $\{X_1, X_2, \ldots\}$  is a set of independent and identically distributed random variables with mean  $\mu$  and standard deviation  $\sigma$ , then the distribution function for the random variable

$$
Z _ {n} = \frac {\bar {X} - \mu}{\sigma / \sqrt {n}}
$$

approaches the distribution function for the standard normal distribution as  $n \to \infty$ , where the sample mean random variable is defined as  $\bar{X} = \frac{\sum_{i=1}^{n} X_i}{n}$ .

Proof: We start by proving that the moment generating function (defined shortly) of the random variable  $Z_{n}$  approaches the moment generating function of the standard normal random variable  $Z$  as  $n$  approaches infinity. The point is that the moment generating function of a random variable uniquely determines the distribution function of the random variable, although we will not prove this fact. Some details in this prove will not be completely rigorous, since a rigorous proof is beyond the level of this text.

The moment generating function  $M_X(t)$  of a random variable  $X$  is defined to be the expectation of the random variable  $e^{Xt}$ :  $M_X(t) = E[e^{Xt}]$ , where  $t$  can be any real number. Since

$$
\frac {1}{\sqrt {2 \pi}} e ^ {- z ^ {2} / 2}
$$

is the density function for the standard normal random variable  $Z$ , then moment generating function of  $Z$  is:

$$
M _ {Z} (t) = E [ e ^ {Z t} ] = \frac {1}{\sqrt {2 \pi}} \int_ {- \infty} ^ {\infty} e ^ {- z ^ {2} / 2} e ^ {z t} d z. \tag {1}
$$

Completing the square, we have

$$
- \frac {1}{2} z ^ {2} + z t = - \frac {1}{2} (z - t) ^ {2} + \frac {1}{2} t ^ {2}. \tag {2}
$$

Substituting the right side of equation (2) into the right side of equation (1) yields

$$
M _ {Z} (t) = \frac {1}{\sqrt {2 \pi}} e ^ {t ^ {2} / 2} \int_ {- \infty} ^ {\infty} e ^ {- (z - t) ^ {2} / 2} d z.
$$

Making the change of variables  $u = z - t$  results in

$$
M _ {Z} (t) = \frac {1}{\sqrt {2 \pi}} e ^ {t ^ {2} / 2} \int_ {- \infty} ^ {\infty} e ^ {- u ^ {2} / 2} d u = e ^ {t ^ {2} / 2}. \tag {3}
$$

To obtain the final expression on the right side of equation (3), we used the fact that

$$
\frac {1}{\sqrt {2 \pi}} \int_ {- \infty} ^ {\infty} e ^ {- u ^ {2} / 2} d u = 1
$$

since  $e^{-u^2 / 2} / \sqrt{2\pi}$  is the density function for the standard normal random variable. We have left to show that  $M_{Z_n}(t) \to e^{t^2 / 2}$  as  $n \to \infty$ . We can express

$$
Z _ {n} = \frac {\bar {X} - \mu}{\sigma / \sqrt {n}} = \frac {\sum_ {i = 1} ^ {n} (X _ {i} - \mu)}{\sigma \sqrt {n}}.
$$

Thus, the moment generating function for  $Z_{n}$  is:

$$
M _ {Z _ {n}} (t) = E \left[ e ^ {\frac {t \sum_ {i = 1} ^ {n} (X _ {i} - \mu)}{\sigma \sqrt {n}}} \right]. \tag {4}
$$

Since the  $X_{i}$ 's are independent random variables, then  $Z_{n}$  has the density function

$p(x_{1})p(x_{2})\dots p(x_{n})$  where  $p(x_{i})$  is the density function for the random variable  $X_{i}$ . Referring to equation (4), we can express the moment generating function in the form

$$
\begin{array}{l} M _ {Z _ {n}} (t) = \int_ {- \infty} ^ {\infty} \int_ {- \infty} ^ {\infty} \dots \int_ {- \infty} ^ {\infty} e ^ {\frac {t \sum_ {i = 1} ^ {n} (x _ {i} - \mu)}{\sigma \sqrt {n}}} p (x _ {1}) p (x _ {2}) \dots p (x _ {n}) d x _ {1} d x _ {2} \dots d x _ {n} \\ { ( 5 ) } { = \left[ \int _ { - - \infty } ^ { \infty } e ^ { \frac { ( x _ { 1 } - \mu ) t } { \sigma \sqrt { n } } } p ( x _ { 1 } ) d x _ { 1 } \right] \left[ \int _ { - - \infty } ^ { \infty } e ^ { \frac { ( x _ { 2 } - \mu ) t } { \sigma \sqrt { n } } } p ( x _ { 2 } ) d x _ { 2 } \right] \cdots \left[ \int _ { - - \infty } ^ { \infty } e ^ { \frac { ( x _ { n } - \mu ) t } { \sigma \sqrt { n } } } p ( x _ { n } ) d x _ { n } \right] . } \\ \end{array}
$$

From Taylor series, we know that  $e^{x} = 1 + x + \frac{1}{2} x^{2} + \frac{1}{3!} x^{2} + \frac{1}{4!} x^{2} + \dots$ . Hence, for each  $i = 1, 2, \ldots, n$ , we have:

$$
(6) \qquad \int_ {- \infty} ^ {\infty} e ^ {\frac {(x _ {i} - \mu) t}{\sigma \sqrt {n}}} p (x _ {i}) d x _ {i} = \int_ {- \infty} ^ {\infty} [ 1 + \frac {(x _ {i} - \mu) t}{\sigma \sqrt {n}} + \frac {(x _ {i} - \mu) ^ {2} t ^ {2}}{2 \sigma^ {2} n} + \frac {(x _ {i} - \mu) ^ {3} t ^ {3}}{6 \sigma^ {3} n ^ {3 / 2}} \dots ] p (x _ {i}) d x _ {i}
$$

Since  $p(x_{i})$  is the density function for a random variable with mean  $\mu$  and variance  $\sigma^2$ , then we know

$$
(7) \qquad \int_ {- \infty} ^ {\infty} p (x _ {i}) d x _ {i} = 1, \int_ {- \infty} ^ {\infty} x _ {i} p (x _ {i}) d x _ {i} = \mu , a n d \int_ {- \infty} ^ {\infty} (x _ {i} - \mu) ^ {2} p (x _ {i}) d x _ {i} = \sigma^ {2}.
$$

Although we don't know the precise values of the following integrals, we can say that

$$
\int_ {- \infty} ^ {\infty} (x _ {i} - \mu) ^ {k} p (x _ {i}) d x _ {i} = C (k)
$$

for some constants  $C(k)$  that are independent of  $n$  for  $k = 3, 4, \ldots$ . Based on equations (7) and (8), we rewrite equation (6) in the form:

# Chapter 2 Additional Readings

$$
(9) \int_ {- \infty} ^ {\infty} e ^ {\frac {(x _ {i} - \mu) t}{\sigma \sqrt {n}}} p (x _ {i}) d x _ {i} = 1 + \frac {t ^ {2}}{2 n} + \frac {C (3) t ^ {3}}{6 \sigma^ {3} n ^ {3 / 2}} + \frac {C (4) t ^ {4}}{2 4 \sigma^ {4} n ^ {2}} + \dots .
$$

Notice that the right side of equation (9) is the same for every  $i$ . Substituting the right side of equation (9) into equation (5) yields

$$
M _ {Z _ {n}} (t) = (1 + \frac {t ^ {2}}{2 n} + \frac {C (3) t ^ {3}}{6 \sigma^ {3} n ^ {3 / 2}} + \frac {C (4) t ^ {4}}{2 4 \sigma^ {4} n ^ {2}} + \dots) ^ {n}.
$$

Since

$$
\frac {C (3) t ^ {3}}{6 \sigma^ {3} n ^ {3 / 2}} + \frac {C (4) t ^ {4}}{2 4 \sigma^ {4} n ^ {2}} + \dots
$$

is much smaller than  $\frac{t^2}{2n}$  as  $n\to \infty$  , then

$$
M _ {Z _ {n}} (t) \rightarrow (1 + \frac {t ^ {2}}{2 n}) ^ {n}
$$

as  $n\to \infty$  .We know from calculus that

$$
\left(1 + \frac {a}{n}\right) ^ {n} \rightarrow e ^ {a}
$$

as  $n\to \infty$  . Choosing  $a = t^2 /2$  , this shows that

$$
M _ {Z _ {n}} (t) \rightarrow e ^ {\frac {t ^ {2}}{2}}
$$

as  $n\to \infty$  as we set out to verify.