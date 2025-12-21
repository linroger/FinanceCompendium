---
title: Verification of the Central Limit Theorem
parent_directory: Mathematics
formatted: 2025-12-21 10:50:00 AM
formatter_model: claude-sonnet-4-5-20250929
cli_tool: claude-code
primary_tags:
  - central limit theorem
  - moment generating functions
  - normal distribution
secondary_tags:
  - statistical convergence
  - probability distributions
  - mathematical proofs
  - convergence theorems
cssclasses: academia
---

# A Verification of the Central Limit Theorem

Central Limit Theorem: If  $\{X_1, X_2, \ldots\}$  is a set of independent and identically distributed random variables with mean  $\mu$  and standard deviation  $\sigma$ , then the distribution function for the random variable

$$
Z_{n} = \frac{\bar{X} - \mu}{\sigma / \sqrt{n}}
$$

approaches the distribution function for the standard normal distribution as  $n \to \infty$ , where the sample mean random variable is defined as  $\bar{X} = \frac{\sum_{i=1}^{n} X_i}{n}$ .

Proof: We start by proving that the moment generating function (defined shortly) of the random variable  $Z_{n}$  approaches the moment generating function of the standard normal random variable  $Z$  as  $n$  approaches infinity. The point is that the moment generating function of a random variable uniquely determines the distribution function of the random variable, although we will not prove this fact. Some details in this proof will not be completely rigorous, since a rigorous proof is beyond the level of this text.

The moment generating function  $M_X(t)$  of a random variable  $X$  is defined to be the expectation of the random variable  $e^{Xt}$ :  $M_X(t) = E[e^{Xt}]$ , where  $t$  can be any real number. Since

$$
\frac{1}{\sqrt{2\pi}} e^{-z^{2}/2}
$$

is the density function for the standard normal random variable  $Z$ , then moment generating function of  $Z$  is:

$$
M_{Z}(t) = E[e^{Zt}] = \frac{1}{\sqrt{2\pi}} \int_{-\infty}^{\infty} e^{-z^{2}/2} e^{zt} dz. \tag{1}
$$

Completing the square, we have

$$
-\frac{1}{2}z^{2} + zt = -\frac{1}{2}(z-t)^{2} + \frac{1}{2}t^{2}. \tag{2}
$$

Substituting the right side of equation (2) into the right side of equation (1) yields

$$
M_{Z}(t) = \frac{1}{\sqrt{2\pi}} e^{t^{2}/2} \int_{-\infty}^{\infty} e^{-(z-t)^{2}/2} dz.
$$

Making the change of variables  $u = z - t$  results in

$$
M_{Z}(t) = \frac{1}{\sqrt{2\pi}} e^{t^{2}/2} \int_{-\infty}^{\infty} e^{-u^{2}/2} du = e^{t^{2}/2}. \tag{3}
$$

To obtain the final expression on the right side of equation (3), we used the fact that

$$
\frac{1}{\sqrt{2\pi}} \int_{-\infty}^{\infty} e^{-u^{2}/2} du = 1
$$

since  $e^{-u^2 / 2} / \sqrt{2\pi}$  is the density function for the standard normal random variable. We have left to show that  $M_{Z_n}(t) \to e^{t^2 / 2}$  as  $n \to \infty$ . We can express

$$
Z_{n} = \frac{\bar{X} - \mu}{\sigma / \sqrt{n}} = \frac{\sum_{i=1}^{n}(X_{i} - \mu)}{\sigma\sqrt{n}}.
$$

Thus, the moment generating function for  $Z_{n}$  is:

$$
M_{Z_{n}}(t) = E\left[e^{\frac{t\sum_{i=1}^{n}(X_{i} - \mu)}{\sigma\sqrt{n}}}\right]. \tag{4}
$$

Since the  $X_{i}$ 's are independent random variables, then  $Z_{n}$  has the density function

$p(x_{1})p(x_{2})\dots p(x_{n})$  where  $p(x_{i})$  is the density function for the random variable  $X_{i}$ . Referring to equation (4), we can express the moment generating function in the form

$$
\begin{array}{l} M_{Z_{n}}(t) = \int_{-\infty}^{\infty} \int_{-\infty}^{\infty} \dots \int_{-\infty}^{\infty} e^{\frac{t\sum_{i=1}^{n}(x_{i} - \mu)}{\sigma\sqrt{n}}} p(x_{1}) p(x_{2}) \dots p(x_{n}) dx_{1} dx_{2} \dots dx_{n} \\ (5) = \left[\int_{-\infty}^{\infty} e^{\frac{(x_{1} - \mu)t}{\sigma\sqrt{n}}} p(x_{1}) dx_{1}\right] \left[\int_{-\infty}^{\infty} e^{\frac{(x_{2} - \mu)t}{\sigma\sqrt{n}}} p(x_{2}) dx_{2}\right] \cdots \left[\int_{-\infty}^{\infty} e^{\frac{(x_{n} - \mu)t}{\sigma\sqrt{n}}} p(x_{n}) dx_{n}\right]. \\ \end{array}
$$

From Taylor series, we know that  $e^{x} = 1 + x + \frac{1}{2} x^{2} + \frac{1}{3!} x^{2} + \frac{1}{4!} x^{2} + \dots$ . Hence, for each  $i = 1, 2, \ldots, n$ , we have:

$$
(6) \qquad \int_{-\infty}^{\infty} e^{\frac{(x_{i} - \mu)t}{\sigma\sqrt{n}}} p(x_{i}) dx_{i} = \int_{-\infty}^{\infty} \left[1 + \frac{(x_{i} - \mu)t}{\sigma\sqrt{n}} + \frac{(x_{i} - \mu)^{2}t^{2}}{2\sigma^{2}n} + \frac{(x_{i} - \mu)^{3}t^{3}}{6\sigma^{3}n^{3/2}} \dots\right] p(x_{i}) dx_{i}
$$

Since  $p(x_{i})$  is the density function for a random variable with mean  $\mu$  and variance  $\sigma^2$ , then we know

$$
(7) \qquad \int_{-\infty}^{\infty} p(x_{i}) dx_{i} = 1, \quad \int_{-\infty}^{\infty} x_{i} p(x_{i}) dx_{i} = \mu, \quad \text{and} \quad \int_{-\infty}^{\infty} (x_{i} - \mu)^{2} p(x_{i}) dx_{i} = \sigma^{2}.
$$

Although we don't know the precise values of the following integrals, we can say that

$$
\int_{-\infty}^{\infty} (x_{i} - \mu)^{k} p(x_{i}) dx_{i} = C(k)
$$

for some constants  $C(k)$  that are independent of  $n$  for  $k = 3, 4, \ldots$ . Based on equations (7) and (8), we rewrite equation (6) in the form:

$$
(9) \quad \int_{-\infty}^{\infty} e^{\frac{(x_{i} - \mu)t}{\sigma\sqrt{n}}} p(x_{i}) dx_{i} = 1 + \frac{t^{2}}{2n} + \frac{C(3)t^{3}}{6\sigma^{3}n^{3/2}} + \frac{C(4)t^{4}}{24\sigma^{4}n^{2}} + \dots.
$$

Notice that the right side of equation (9) is the same for every  $i$ . Substituting the right side of equation (9) into equation (5) yields

$$
M_{Z_{n}}(t) = \left(1 + \frac{t^{2}}{2n} + \frac{C(3)t^{3}}{6\sigma^{3}n^{3/2}} + \frac{C(4)t^{4}}{24\sigma^{4}n^{2}} + \dots\right)^{n}.
$$

Since

$$
\frac{C(3)t^{3}}{6\sigma^{3}n^{3/2}} + \frac{C(4)t^{4}}{24\sigma^{4}n^{2}} + \dots
$$

is much smaller than  $\frac{t^2}{2n}$  as  $n\to \infty$  , then

$$
M_{Z_{n}}(t) \rightarrow \left(1 + \frac{t^{2}}{2n}\right)^{n}
$$

as  $n\to \infty$ . We know from calculus that

$$
\left(1 + \frac{a}{n}\right)^{n} \rightarrow e^{a}
$$

as  $n\to \infty$  . Choosing  $a = t^2 /2$  , this shows that

$$
M_{Z_{n}}(t) \rightarrow e^{\frac{t^{2}}{2}}
$$

as  $n\to \infty$  as we set out to verify.