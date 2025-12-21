---
title: "Chapter 09: Convergence of the Binomial Model to the Black-Scholes-Merton Model"
parent_directory: Foundations of the Pricing of Financial Derivatives chapters
formatted: 2025-12-21 03:00:00 AM
formatter_model: obsidian-formatting-agent
cli_tool: claude-code
primary_tags:
   - binomial option pricing
   - black-scholes convergence
   - risk-neutral valuation
secondary_tags:
   - option pricing models
   - stochastic processes
   - continuous time finance
   - mathematical finance
   - derivative pricing theory
cssclasses: academia
---

# Convergence of the Binomial Model to the Black-Scholes-Merton Model

It is well known that the binomial model converges to the Black-Scholes-Merton model when the number of time periods increases to infinity and the length of each time period is infinitesimally short. This proof was provided in Cox, Ross, and Rubinstein (1979). Their proof, however, is unnecessarily long and relies on a specific case of the central limit theorem. This complication is evident on pp. 250 and 252 of their article, which refers to the fact that skewness becomes zero in the limit. Also, their results are derived only for the special case where the up and down factors are given by specific formulas they obtain that allow the distribution of the asset return to have the same parameters as the desired lognormal distribution in the limit. Effectively, their distribution converges to the lognormal in the limit. They go on to show that the binomial model then converges to the Black-Scholes-Merton model under their assumptions.<sup>1</sup>

The Cox-Ross-Rubinstein proof is elegant but far too specific. A more general proof of the convergence of the binomial to the Black-Scholes-Merton model is provided by Hsia (1983). His paper, published in The Journal of Financial Research, received virtually no attention, but it is clearly the most general overall proof. It imposes no restrictions on the choice of up and down parameters. Moreover, the proof is much shorter, easier to follow, and requires fewer cases of taking limits.[2]

```d2
direction: right

classes: {
  model: {
    style.fill: "#e3f2fd"
    style.stroke: "#1976d2"
  }
  convergence: {
    style.fill: "#fff3e0"
    style.stroke: "#f57c00"
  }
  limit: {
    style.fill: "#e8f5e9"
    style.stroke: "#388e3c"
  }
}

binomial_finite: Binomial Model (n periods) {
  class: model
  label: "Discrete time steps"
  formula: "n time periods, u/d factors"
}

binomial_infinite: Binomial Model (n → ∞) {
  class: convergence
  label: "Continuous time limit"
  formula: "Δt → 0, u/d → e^(±σ√Δt)"
}

black_scholes: Black-Scholes Model {
  class: limit
  label: "Continuous time PDE"
  formula: "∂c/∂t + ... + σ²S²∂²c/∂S² = rc"
}

cox_ross: Cox-Ross-Rubinstein (1979) {
  class: convergence
  label: "Specific u/d parameters"
  formula: "u = e^(σ√Δt), d = e^(-σ√Δt)"
}

hsia: Hsia (1983) {
  class: convergence
  label: "General proof"
  formula: "Any u/d parameters → BSM"
}

binomial_finite -> binomial_infinite: "n → ∞, Δt → 0"
binomial_infinite -> black_scholes
cox_ross -> binomial_infinite: "Specific case"
hsia -> binomial_infinite: "General case"
```

**Figure: Convergence of Binomial Model to Black-Scholes-Merton** - As the number of time periods increases and each period becomes infinitesimally short, the binomial model converges to the continuous-time Black-Scholes-Merton model, regardless of the specific choice of up/down parameters.

# 9.1 SETTING UP THE PROBLEM

We start with our ultimate objective, the Black-Scholes-Merton model for calls and puts,

$$
c_t = S_t N(d_1) - X e^{-r_c \tau} N(d_2), \tag{9.1}
$$

$$
p = c - S + X e^{-r_c \tau} = X e^{-r_c \tau} N(-d_2) - S N(-d_1), \tag{9.2}
$$

$$
d_1 = \frac{\ln(S_t / X) + (r_c + \sigma^2 / 2) \tau}{\sigma \sqrt{\tau}}, \text{and} \tag{9.3}
$$

$$
d_2 = \frac{\ln(S_t / X) + (r_c - \sigma^2 / 2) \tau}{\sigma \sqrt{\tau}}, \tag{9.4}
$$

where  $S_{t}$  is the current asset price at time  $t$ ,  $X$  is the exercise price,  $r_{c}$  is the continuously compounded risk-free rate,  $\tau$  is the time to expiration, and  $\sigma^2$  is the variance of the

continuously compounded return on the asset.  $N(d_{i})$  is the cumulative normal probability for  $i = 1$  and 2 as defined. $^{3}$

For now, we focus solely on calls as we can use put-call parity to arrive at the result for puts. The binomial model for the call where the option's life is divided into  $n$  time periods is

$$
c = \frac{\sum_{j=0}^n \binom{n}{j} \phi^n (1 - \phi)^{n - j} \max(0, u^j d^{n - j} S - X)}{(1 + r)^n}, \tag{9.5}
$$

where  $\binom{n}{j}$  is  $n! / [j!(n-j)!]$  is known as the binomial coefficient. The binomial coefficient represents the number of paths the asset can take to reach a certain point in a binomial tree where  $j$  denotes the number of up moves,  $\phi$  is the risk-neutral probability of an up move and equals  $(1+r-d)/(u-d)$ ,  $u$  and  $d$  are one plus the per-period return on the asset if it goes up and down, respectively, and  $r$  is the discrete risk-free interest rate per period. The numerator is the expected payout of the option at expiration under the risk-neutral binomial probability, and the denominator discounts the risk-neutral expected payoff to the present.

This expression can be simplified. For some outcomes,  $\max(0, u^j d^{n-j} S - X)$  is zero. Let  $a$  represent the minimum number of upward moves required for the call to finish in the money. That is,  $a$  is the smallest integer  $(a \in n)$  such that  $u^a d^{n-a} S > X$ . Then for all  $j < a$ ,  $\max(0, u^j d^{n-j} S - X) = 0$ , and for  $j > a$ ,  $\max(0, u^j d^{n-j} S - X) = u^j d^{n-j} S - X$ . Now we need count only the binomial paths from  $j = a$  to  $n$  so we can write the model as

$$
c = \frac{\sum_{j=a}^n \binom{n}{j} \phi^j (1 - \phi)^{n - j} (u^j d^{n - j} S - X)}{(1 + r)^n}. \tag{9.6}
$$

Now let us break this up into two terms based on  $S$  and  $X$ :

$$
c = S \left[ \frac{\sum_{j=a}^n \binom{n}{j} \phi^j (1 - \phi)^{n - j} u^j d^{n - j}}{(1 + r)^n} \right] - X (1 + r)^{-n} \left[ \sum_{j=a}^n \binom{n}{j} \phi^j (1 - \phi)^{n - j} \right]. \quad (9.7)
$$

Let us call the two terms in the large brackets  $B_{1}$  and  $B_{2}$ . Specifically,

$$
B_1 = \frac{\sum_{j=a}^n \binom{n}{j} \phi^j (1 - \phi)^{n - j} u^j d^{n - j}}{(1 + r)^n} \text{and} \tag{9.8}
$$

$$
B_2 = \sum_{j=a}^n \binom{n}{j} \phi^j (1 - \phi)^{n - j}, \tag{9.50}
$$

Equation (9.9) is the formula for the probability of  $a$  or more successes in  $n$  trials if the probability of success on any one trial is  $\phi$ .  $B_{1}$  is similar but cannot be expressed quite

as easily without redefining the probability. Note the following:

$$
\frac{\phi^j (1 - \phi)^{n - j} u^j d^{n - j}}{(1 + r)^n} = \left[ \left(\frac{u}{1 + r}\right) \phi \right]^j \left[ \left(\frac{d}{1 + r}\right) (1 - \phi) \right]^{n - j}. \tag{9.10}
$$

Now, it will be useful to define a modified version of the binomial probability, call it  $\phi^{*} = [u / (1 + r)]\phi$  and  $1 - \phi^{*} = [d / (1 + r)](1 - \phi)$ . Thus, we can write Equation (9.10) as  $\phi^{*j}(1 - \phi^{*})^{n - j}$ . Thus,  $B_{1}$  is a binomial probability as stated but with the probability of each trial being  $\phi^{*}$ . Now, we can write the binomial model in compact form as

$$
c = S B_1 - X e^{-r_c \tau} B_2. \tag{9.17}
$$

where

$$
B_1 = \sum_{j=a}^n \binom{n}{j} \phi^{*j} (1 - \phi^*)^{n - j} \text{ and as before } \tag{9.12}
$$

$$
B_2 = \sum_{j=a}^n \binom{n}{j} \phi^j (1 - \phi)^{n - j}. \tag{9.13}
$$

Based on put-call parity, we note that the put price is

$$
\begin{array}{l} p = c - S + X (1 + r)^{-n} = S B_1 - X (1 + r)^{-n} B_2 - S + X (1 + r)^{-n} \\ = X (1 + r)^{-n} (1 - B_2) - S (1 - B_1). \tag{9.54} \\ \end{array}
$$

Thus, we can easily move from the results for calls to arrive at the results for puts. Our objective is to get this formula to converge to the Black-Scholes-Merton formula. Obviously, we shall have to get  $B_{1}$  and  $B_{2}$  to converge to  $N(d_{1})$  and  $N(d_{2})$ , respectively.

Let us do the simple part first, the risk-free rate. Recall that  $(1 + r)^{-n}$  is the present value factor for  $n$  periods where the per-period rate is  $r$ . The per-period rate can be related to an annual rate applied for  $\tau$  years by the relationship  $(1 + r) = (1 + r_{a})^{1 / n_{y}}$  where  $n_y$  is the number of periods per year. Then,

$$
(1 + r) = (1 + r_a)^{1/n_y}
$$

$$
(1 + r)^n = (1 + r_a)^{(1/n_y) n}
$$

$$
(1 + r)^n = (1 + r_a)^\tau \text{ because } \tau = n/n_y. \tag{9.15}
$$

Thus, the present value factor for  $\tau$  years is  $(1 + r_a)^{-\tau}$ . Now we can convert discrete discounting to continuous discounting as follows:

$$
\begin{array}{l} \ln(1 + r_a)^{-\tau} = -\tau \ln(1 + r_a) \\ e^{\ln PV} = e^{-\tau \ln(1 + r_a)} \\ PV = e^{-r_c \tau} \text{ where } r_c = \ln(1 + r_a). \tag{9.16} \\ \end{array}
$$

Thus, our present value factor is equivalent to  $\exp (-r_c\tau)$  with the interest rate continuously compounded. So the binomial formula is equivalent to

$$
c = S B_1 - X e^{-r_c \tau} B_2. \tag{9.17}
$$

Now let us proceed to turn this binomial formula into the Black-Scholes-Merton formula.

Because we require  $Su^a d^{n - a} > X$  for the option to exercise, it follows that

$$
\ln S + a \ln u + (n - a) \ln d > \ln X
$$

$$
\ln S + a \ln u + n \ln d - a \ln d > \ln X
$$

$$
a (\ln u - \ln d) > \ln X - \ln S - n \ln d
$$

$$
a > \frac {\ln (X / S d ^ {n})}{\ln (u / d)} = \frac {\ln (X / S) - n \ln d}{\ln (u / d)}. \tag {9.18}
$$

By the nature of its definition as the minimum number of steps for the option to expire in-the-money,  $a$  has to be an integer, but Equation (9.18) will not likely produce an integer. For example, with  $S = 100$ ,  $X = 100$ ,  $u = 1.10$ ,  $d = 0.95$ , and  $n = 10$ , we have  $a > 3.4988$ . This means that it would take at least four upward moves for the option to finish in-the-money. We shall handle this complication by introducing a filler variable,  $\iota$ , which is a Greek lowercase iota, such that

$$
a = \frac{\ln(X / S) - n \ln d}{\ln(u / d)} + \iota, \tag{9.19}
$$

where  $\iota$  is a number added to the result from Equation (9.18) to make  $a$  an integer. In the limit, this variable will not matter as it will converge to zero with an infinite number of time steps.

To illustrate the results thus far, suppose  $S = 25$ ,  $X = 40$ ,  $u = 1.10$ ,  $d = 0.90$ ,  $n = 10$ , and  $r = 3.0\%$ . Based on this example, Table 9.1 illustrates the following potential outcomes along with probabilities.

With the binomial tree, the total number of outcomes is  $2^{\mathrm{n}}$  or  $2^{10} = 1,024$  here. The total probability whether modified or not is  $100\%$ . Finally, based on the risk-neutral approach, the expected terminal value of the asset is  $S(1 + r)^n$  or  $25(1 + 0.031)^{10} = 33.93$  here. Further, we have

$$
\begin{array}{l} a > \frac {\ln (X / S) - n \ln d}{\ln (u / d)} = \frac {\ln (4 0 / 2 5) - 1 0 \ln 0 . 9}{\ln (1 . 1 / 0 . 9)} = 7. 5 9 2 6 = a ^ {*}, \\ \iota = a - a ^ {*} > 8 - 7. 5 9 2 6 = 0. 4 0 7 4, \text {a n d} \\ a = \frac {\ln (X / S) - n \ln d}{\ln (u / d)} + \iota = a ^ {*} + \iota = 7. 5 9 2 6 + 0. 4 0 7 4 = 8. \\ \end{array}
$$

TABLE 9.1 Illustration of 10 Period Binomial Model Outcomes and Probabilities  

<table><tr><td>Counter</td><td>nchoose j</td><td>B1(j)</td><td>B2(j)</td><td>S</td></tr><tr><td>0</td><td>1</td><td>0.00001</td><td>0.0000</td><td>8.72</td></tr><tr><td>1</td><td>10</td><td>0.0001</td><td>0.0005</td><td>10.65</td></tr><tr><td>2</td><td>45</td><td>0.0015</td><td>0.0039</td><td>13.02</td></tr><tr><td>3</td><td>120</td><td>0.0092</td><td>0.0196</td><td>15.92</td></tr><tr><td>4</td><td>210</td><td>0.0374</td><td>0.0652</td><td>19.45</td></tr><tr><td>5</td><td>252</td><td>0.1041</td><td>0.1485</td><td>23.77</td></tr><tr><td>6</td><td>210</td><td>0.2012</td><td>0.2349</td><td>29.06</td></tr><tr><td>7</td><td>120</td><td>0.2668</td><td>0.2549</td><td>35.52</td></tr><tr><td>8</td><td>45</td><td>0.2322</td><td>0.1815</td><td>43.41</td></tr><tr><td>9</td><td>10</td><td>0.1197</td><td>0.0766</td><td>53.05</td></tr><tr><td>10</td><td>1</td><td>0.0278</td><td>0.0145</td><td>64.84</td></tr><tr><td>Sum</td><td>1024</td><td>1.0000</td><td>1.0000</td><td>33.93*</td></tr></table>

*Sum of the product of  ${\mathrm{B}}_{2}\mathrm{\;S}$  or the expected terminal asset price.

Thus,  $S > X$  only for outcomes where up has occurred eight or more times. Thus, we can compute the binomial probabilities from Equations (9.8) and (9.9) as

$$
\begin{array}{l} \phi = \frac {1 + r - d}{u - d} = \frac {1 + 0 . 0 3 1 - 0 . 9}{1 . 1 - 0 . 9} = 0. 6 5 5 0, \\ B _ {1} = \frac {\sum_ {j = a} ^ {n} \binom {n} {j} \phi^ {j} (1 - \phi) ^ {n - j} u ^ {j} d ^ {n - j}}{(1 + r) ^ {n}} = \frac {\sum_ {j = 8} ^ {1 0} \binom {1 0} {j} 0 . 6 5 5 0 ^ {j} (1 - 0 . 6 5 5 0) ^ {1 0 - j} 1 . 1 ^ {j} 0 . 9 ^ {1 0 - j}}{(1 + 0 . 0 3 1) ^ {1 0}}, \text {a n d} \\ = 0. 2 3 2 2 + 0. 1 1 9 7 + 0. 0 2 7 8 = 0. 3 7 9 7 \\ \end{array}
$$

$$
\begin{array}{l} B _ {2} = \sum_ {j = a} ^ {n} \binom {n} {j} \phi^ {j} (1 - \phi) ^ {n - j} = \sum_ {j = 8} ^ {1 0} \binom {1 0} {j} 0. 6 5 5 0 ^ {j} (1 - 0. 6 5 5 0) ^ {1 0 - j} \\ = 0. 1 8 1 5 + 0. 0 7 6 6 + 0. 0 1 4 5 = 0. 2 7 2 6. \\ \end{array}
$$

Thus, the option prices are

$$
c = S B _ {1} - X e ^ {- r _ {c} \tau} B _ {2} = 2 5 (0. 3 7 9 7) - 4 0 (0. 7 3 6 9) (0. 2 7 2 6) = 1. 4 6 \mathrm {a n d}
$$

$$
p = c - S + X e ^ {- r _ {c} \tau} = 1. 4 6 - 2 5 + 4 0 (0. 7 3 6 9) = 5. 9 3.
$$

# 9.2 THE HSIA PROOF

Now we proceed to work through Hsia's elegant and straightforward proof. We appeal to the famous DeMoivre-LaPlace limit theorem, which says that a binomial distribution converges to the normal distribution if  $np \to \infty$  as  $n \to \infty$ . For  $B_{1}$  we need

$$
B_1 \rightarrow \int_a^{\infty} f(j) dj, \tag{9.20}
$$

where  $f(j)$  is the density for a normal distribution. Because  $j$  is not a standard normal distribution, however, let us convert  $j$  to a standard normal variable by defining  $z = (j - E(j)) / \sigma_j$ . Then we would have

$$
\int_a^{\infty} f(j) dj = \int_d^{\infty} f(z) dz, \text{where } z = \frac{j - E(j)}{\sigma_j}. \tag{9.21}
$$

Following Hsia, however, we define

$$
d = -\frac{a - E(j)}{\sigma_j}, \tag{9.22}
$$

which allows us to write the above, due to the symmetry of the normal distribution, as

$$
\int_{-\infty}^d f(z) dz. \tag{9.23}
$$

Thus,

$$
B_1 \rightarrow \int_a^{\infty} f(j) dj = \int_{-\infty}^d f(z) dz = N(d), \tag{9.24}
$$

where  $j$  has been converted to  $z$ , a standard normal. What is happening here is that the  $N(d_{1})$  term in the Black-Scholes-Merton model is a cumulative normal probability. Therefore, it reflects the probability of the variable ranging from  $-\infty$  to  $d_{1}$ , yet it must capture a probability related to the option being exercised, which is a probability of the asset price being greater, not less, than the exercise price. This transformation solves the problem. Furthermore, an identical procedure would be applied to  $B_{2}$ .

Now let  $S_T$  be the asset price at expiration. Of course, this value is not known but we can describe its stochastic properties. After  $n$  periods and  $j$  up moves,  $S_T / S = u^j d^{n - j}$ . Thus, the log (continuously compounded) return on the asset over the life of the option is

$$
\ln\left(\frac{S_T}{S}\right) = j \ln u + (n - j) \ln d = j \ln\left(\frac{u}{d}\right) + n \ln d. \tag{9.25}
$$

Now take the expectation of (9.25),

$$
E\left[ \ln\left(\frac{S_T}{S}\right) \right] = E(j) \ln\left(\frac{u}{d}\right) + n \ln d. \tag{9.26}
$$

Rearranging to isolate  $j$ , we have

$$
E(j) = \frac{E\left[ \ln\left(\frac{S_T}{S}\right) \right] - n \ln d}{\ln\left(\frac{u}{d}\right)}. \tag{9.27}
$$

The variance of the log return on the asset over the life of the option is

$$
\operatorname{var}\left[ \ln\left(\frac{S_T}{S}\right) \right] = \operatorname{var}(j) \left[ \ln\left(\frac{u}{d}\right) \right]^2. \tag{9.28}
$$

Thus,

$$
\operatorname{var}(j) = \frac{\operatorname{var}\left[ \ln\left(\frac{S_T}{S}\right) \right]}{\left[ \ln\left(\frac{u}{d}\right) \right]^2}. \tag{9.29}
$$

Recall from Equation (9.19) that  $a$  is defined as the lowest integer  $j$  such that the call option is in-the-money where  $\iota$  is an adjustment factor forcing  $a$  to be the next integer or  $a = \frac{\ln(X / S) - n\ln d}{\ln(u / d)} + \iota$ . Therefore, based on the mean and variance results above, the upper bound defined in Equation (9.22) can be expressed as

$$
d = - \frac {a - E (j)}{\sigma_ {j}} = - \frac {\frac {\ln \left(\frac {X}{S}\right) - n \ln d}{\ln \left(\frac {u}{d}\right)} + \iota - \frac {E \left[ \ln \left(\frac {S _ {T}}{S}\right) \right] - n \ln d}{\ln \left(\frac {u}{d}\right)}}{\left\{\frac {\operatorname {v a r} \left[ \ln \left(\frac {S _ {T}}{S}\right) \right]}{\left[ \ln \left(\frac {u}{d}\right) \right] ^ {2}} \right\} ^ {1 / 2}} = \frac {\frac {\ln \left(\frac {S}{X}\right) + E \left[ \ln \left(\frac {S _ {T}}{S}\right) \right]}{\ln \left(\frac {u}{d}\right)} - \iota}{\frac {\sqrt {\operatorname {v a r} \left[ \ln \left(\frac {S _ {T}}{S}\right) \right]}}{\ln \left(\frac {u}{d}\right)}}. \tag {9.30}
$$

From the properties of the binomial distribution, it is known that  $\operatorname{var}(j) = n\phi(1 - \phi)$  where  $\phi$  is the probability per outcome. So, after some rearranging and substituting this variance result only in the second term below, we have

$$
d = \frac{\ln\left(\frac{S}{X}\right) + E\left[ \ln\left(\frac{S_T}{S}\right) \right]}{\sqrt{\operatorname{var}\left[ \ln\left(\frac{S_T}{S}\right) \right]}} - \frac{\ln\left(\frac{u}{d}\right)}{\sqrt{\phi (1 - \phi)}} \frac{\iota}{\sqrt{n}}. \tag{9.31}
$$

As  $n$  goes to infinity, the second term disappears. Our discrete binomial process is then starting to converge to a continuous lognormal process, for which it is known that  $\mathrm{var}[\ln (S_T / S)] = \sigma^2\tau$ . Thus, we have

$$
d = \frac{\ln\left(\frac{S}{X}\right) + E\left[ \ln\left(\frac{S_T}{S}\right) \right]}{\sigma \sqrt{\tau}}. \tag{9.32}
$$

We need this expression to equal  $d_{1}$  and  $d_{2}$  as defined in the Black-Scholes-Merton formula when the probabilities are  $\phi^{*}$  and  $\phi$ , respectively, as defined previously. This means that we need

$$
E\left[ \ln\left(\frac{S_T}{S}\right) \right] = \left(r_c + \frac{\sigma^2}{2}\right) \tau \text{ if the probability is } \phi^*
$$

$$
E\left[ \ln\left(\frac{S_T}{S}\right) \right] = \left(r_c - \frac{\sigma^2}{2}\right) \tau \text{ if the probability is } \phi. \tag{9.33}
$$

Now let us work on the first case. First recall that  $\phi^{*} = [u / (1 + r)][(1 + r - d) / (u - d)]$ . After some careful rearranging, we solve for  $1 + r$ ,

$$
1 + r = \frac{1}{\phi^* \left(\frac{1}{u}\right) + \left(1 - \phi^*\right) \left(\frac{1}{d}\right)}. \tag{9.34}
$$

Recall that  $(1 + r)^n = (1 + r_a)^\tau$  so

$$
(1 + r)^n = (1 + r_a)^\tau = \frac{1}{\left[ \phi^* \left(\frac{1}{u}\right) + (1 - \phi^*) \left(\frac{1}{d}\right) \right]^n}. \tag{9.35}
$$

Now note that  $S / S_{T}$  can be expressed as follows:

$$
\frac{S}{S_T} = \left(\frac{S_0}{S_1}\right) \left(\frac{S_1}{S_2}\right) \dots \left(\frac{S_{n-1}}{S_n}\right) = \prod_{i=1}^n \left(\frac{S_{i-1}}{S_i}\right). \tag{9.36}
$$

where  $S = S_{0}$  and  $S_{T} = S_{n}$ . The expectation of this expression would be

$$
E\left(\frac{S}{S_T}\right) = E\left[ \prod_{i=1}^n \left(\frac{S_{i-1}}{S_i}\right) \right] = \prod_{i=1}^n E\left(\frac{S_{i-1}}{S_i}\right). \tag{9.37}
$$

Note that our ability to express the expected value of a product as the product of the expected values comes from the independence of the asset prices. That is, we know that  $\text{cov}(xy) = E(xy) - E(x)E(y)$ . If  $x$  and  $y$  are independent, however, then  $\text{cov}(xy) = 0$  and  $E(xy) = E(x)E(y)$ .

Now recall that our probability for  $B_{1}$  is  $\phi^{*}$ . Because  $S_{i} = S_{i - 1}u$  with probability  $\phi^{*}$  and  $S_{i} = S_{i - 1}d$  with probability  $1 - \phi^{*}$ , then

$$
E\left(\frac{S_{i-1}}{S_i}\right) = \phi^* \left(\frac{1}{u}\right) + (1 - \phi^*) \left(\frac{1}{d}\right). \tag{9.38}
$$

Thus,

$$
E\left(\frac{S}{S_T}\right) = \prod_{i=1}^n \left[ \phi^* \left(\frac{1}{u}\right) + (1 - \phi^*) \left(\frac{1}{d}\right) \right] = \left[ \phi^* \left(\frac{1}{u}\right) + (1 - \phi^*) \left(\frac{1}{d}\right) \right]^n. \tag{9.39}
$$

Inverting Equation (9.39) gives

$$
\left[ E\left(\frac{S}{S_T}\right) \right]^{-1} = \left[ \phi^* \left(\frac{1}{u}\right) + (1 - \phi^*) \left(\frac{1}{d}\right) \right]^{-n}. \tag{9.40}
$$

Because  $(1 + r)^{\tau} = [\phi^{*}(1 / u) + (1 - \phi^{*})(1 / d)]^{-n}$ , then  $(1 + r)^{\tau} = E(S / S_{T})^{-1}$  or  $(1 + r)^{-\tau} = E(S / S_{T})$ . Therefore,

$$
- \tau \ln(1 + r_a) = \ln\left[ E\left(\frac{S}{S_T}\right) \right]. \tag{9.41}
$$

So now we are working with  $\ln [E(S / S_T)]$ . Because  $S_{T} / S$  is lognormally distributed, it will also be true that the inverse of a lognormal distribution is lognormally distributed.7 Thus,  $S / S_{T}$  is lognormally distributed. For any random variable  $x$  that is lognormally distributed, it will be the case that  $\ln [E(x)] = E[\ln (x)] + \mathrm{var}[\ln (x)] / 2$ . This result may not look correct, but follows from a widely used result in options: The log return is defined as  $S_{T} / S = e^{x}$  so  $\ln (S_T / S) = x$ . It is known that  $E(x) = \exp (\mu +\sigma^2 /2)$ .8 Thus,  $\ln E(x) = \mu +\sigma^2 /2$ , where  $\mu$  is  $E[\ln (x)]$  and  $\sigma$  is its standard deviation.

Because  $-\tau \ln (1 + r_a) = \ln [E(S / S_T)]$  (see Equation (9.41)), then

$$
E\left[ \ln\left(\frac{S}{S_T}\right) \right] = E\left[ -\ln\left(\frac{S_T}{S}\right) \right] + \frac{\operatorname{var}\left[ -\ln\left(\frac{S_T}{S}\right) \right]}{2} = -E\left[ \ln\left(\frac{S_T}{S}\right) \right] + \frac{\operatorname{var}\left[ \ln\left(\frac{S_T}{S}\right) \right]}{2}. \tag{9.42}
$$

Note the origin of these results,  $E[\ln(S / S_T)] = E[-\ln(S_T / S)] = -E[\ln(S_T / S)]$ , because you can always pull a minus sign out from inside an expectations operator. Also,  $\operatorname{var}[\ln(S / S_T)] = \operatorname{var}[-\ln(S_T / S)] = \operatorname{var}[\ln(S_T / S)]$ , because you can pull the constant  $(-1)$  out in front of the variance operator by squaring it, thereby obtaining one times the variance.

Now what we have is

$$
E\left[ \ln\left(\frac{S_T}{S}\right) \right] = \tau \ln(1 + r_a) + \frac{\operatorname{var}\left[ \ln\left(\frac{S_T}{S}\right) \right]}{2}. \tag{9.43}
$$

Recall that we know that  $\mathrm{var}[\ln (S_T / S)]$  is  $\sigma^2\tau$ . Thus, we have

$$
E\left[ \ln\left(\frac{S_T}{S}\right) \right] = \left[ \ln(1 + r_a) + \frac{\sigma^2}{2} \right] \tau. \tag{9.44}
$$

Because  $\ln (1 + r) = r_c$ , this is the result we want for  $B_{1}$  to converge to  $N(d_{1})$ .

For  $B_{2}$  to converge to  $N(d_{2})$ , recall the definition  $\phi = (1 + r - d) / (u - d)$ . Then  $1 + r = [\phi u + (1 - \phi)d]$ . Because  $S_{i} = S_{i - 1}u$  with probability  $\phi$  and  $S_{i} = S_{i - 1}d$  with probability  $1 - \phi$ , then  $E(S_{i} / S_{i - 1}) = \phi u + (1 - \phi)d = 1 + r$ . Because

$$
E \left(\frac {S _ {T}}{S}\right) = E \left[ \prod_ {i = 1} ^ {n} \left(\frac {S _ {i}}{S _ {i - 1}}\right) \right] = \prod_ {i = 1} ^ {n} E \left(\frac {S _ {i}}{S _ {i - 1}}\right) = [ \phi u + (1 - \phi) d ] ^ {n} = (1 + r) ^ {n} = (1 + r _ {a}) ^ {\tau}, \tag {9.45}
$$

it follows that

$$
\ln \left[ E \left(\frac {S _ {T}}{S}\right) \right] = \tau \ln \left(1 + r _ {a}\right). \tag {9.46}
$$

Again, recall

$$
\ln \left[ E \left(\frac {S _ {T}}{S}\right) \right] = E \left[ \ln \left(\frac {S _ {T}}{S}\right) \right] + \frac {\mathrm {v a r} \left[ \ln \left(\frac {S _ {T}}{S}\right) \right]}{2}.
$$

Substituting our previous result, and note the switch to solving for  $E[\ln (S_T / S)]$  and recall  $\mathrm{var}[\ln (S_T / S)] = \sigma^2\tau$ , we have

$$
E\left[ \ln\left(\frac{S_T}{S}\right) \right] = \left[ \ln(1 + r_a) + \frac{\sigma^2}{2} \right] \tau. \tag{9.44}
$$

Because  $\ln (1 + r_a) = r_c$ , this is the result we needed to obtain convergence of  $B_{2}$  to  $N(d_2)$ . Thus, we have shown that the binomial model for a call can be expressed as

$$
c = S B_1 - X e^{-r_c \tau} B_2, \tag{9.11}
$$

where

$$
B_1 = e^{-r_c \tau} \sum_{j=a}^n \binom{n}{j} \phi^j (1 - \phi)^{n - j} u^j d^{n - j} \text{ and } \tag{9.49}
$$

$$
B_2 = \sum_{j=a}^n \binom{n}{j} \phi^j (1 - \phi)^{n - j}. \tag{9.13}
$$

which will converge to the Black-Scholes-Merton model in the limit as  $n\to \infty$  , expressed as

$$
c_t = S_t N(d_1) - X e^{-r_c \tau} N(d_2), \tag{9.51}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/cfd07cc8017c764f43ec4c31527d125a80b21ad0d7ae30457b4f45275ca2d29d.jpg)  
FIGURE 9.1 Convergence of the Binomial Model for Calls to the Black-Scholes-Merton

where

$$
d_1 = \frac{\ln(S_t / X) + (r_c + \sigma^2 / 2) \tau}{\sigma \sqrt{\tau}}, \text{ and } \tag{9.52}
$$

$$
d_2 = \frac{\ln(S_t / X) + (r_c - \sigma^2 / 2) \tau}{\sigma \sqrt{\tau}}. \tag{9.53}
$$

For example, suppose  $S = 100$ ,  $X = 100$ ,  $r = 5.0\%$ ,  $\sigma = 30\%$ , and  $\tau = 1$  year. Figure 9.1 illustrates the call prices as the number of time steps increases. The binomial call price quickly converges to the Black-Scholes-Merton price of 14.23. The zig-zag pattern is well known. An odd number of steps produces values on the high side, and an even number of steps produces values on the low side.

## 9.3 PUT OPTIONS

Based on put-call parity, we have

$$
p = S B _ {1} - X e ^ {- r _ {c} \tau} B _ {2} - S + X e ^ {- r _ {c} \tau} = X e ^ {- r _ {c} \tau} \left(1 - B _ {2}\right) - S \left(1 - B _ {1}\right). \tag {9.54}
$$

This binomial result will converge to the Black-Scholes-Merton put model in the limit as  $n \to \infty$  or

$$
p_t = c_t - S_t + X e^{-r_c \tau} = X e^{-r_c \tau} N(-d_2) - S_t N(-d_1). \tag{9.55}
$$

The convergence properties are the same as the call results as illustrated in Figure 9.2. This identical pattern is driven by put-call parity. Put-call parity can be expressed as  $\mathrm{asc}_t =$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/25799c40e8db0f104b5ae1e9489ad320e0b415094efac0a9563d7fd72672e857.jpg)  
FIGURE 9.2 Convergence of the Binomial Model for Puts to the Black-Scholes-Merton

$p_{t} = S_{t} - X^{-r_{c}\tau}$ . Thus, the binomial convergence of the put is simply shifted by the difference between the asset price and the present value of the strike price.

We now explore the important role of dividends, which can occur if the underlying asset is a stock or index.

# 9.4 DIVIDENDS

The payment of dividends has the effect of lowering the expected growth rate of the stock based on the risk-neutral probability measure. Hence, solely increasing dividends will lower the call price and raise the put price. Thus, we need an efficient way to incorporate dividends into the Black-Scholes-Merton model for European options.

As discussed in Chapter 7, dividends pose a significant problem within the binomial model. Based on the escrow method, we work backward through the tree checking whether the binomial model value is below the exercise value. Recall it may be optimal for the call buyer to exercise immediately before the ex-dividend date whereas the put buyer would exercise immediately after the ex-dividend date so as to enable the stock to drop, which benefits the put buyer. The escrow method works well with short dated options on individual stocks or other instruments with relatively few dividend payments over the life of the option.

Alternatively, we may assume a known continuous dividend yield. The dividend yield approach is useful for index options that contain a large number of relatively small dividends. As with discrete dividends, the continuous dividend yield will have the effect of lowering the expected growth rate of the stock. Thus, the risk-neutral probability of an up move occurring can be expressed as

$$
\phi = \frac {e ^ {\left(r _ {c} - \delta_ {c}\right) \Delta t} - d}{u - d}, \tag {9.56}
$$

where  $\delta_c$  denotes the annualized, continuously compounded dividend yield. In this case, the dividend adjusted binomial model converges to the dividend adjusted Black-Scholes-Merton model or

$$
c _ {t} = S _ {t} e ^ {- \delta_ {c} \tau} N (d _ {1}) - X e ^ {- r _ {c} \tau} N (d _ {2}), \tag {9.57}
$$

where

$$
d _ {1} = \frac {\ln \left(S _ {t} / X\right) + \left(r _ {c} - \delta_ {c} + \sigma^ {2} / 2\right) \tau}{\sigma \sqrt {\tau}}, \text {a n d} \tag {9.58}
$$

$$
d _ {2} = \frac {\ln \left(S _ {t} / X\right) + \left(r _ {c} - \delta_ {c} - \sigma^ {2} / 2\right) \tau}{\sigma \sqrt {\tau}}. \tag {9.59}
$$

# 9.5 RECAP AND PREVIEW

We have shown in this chapter that the binomial model converges to the Black-Scholes-Merton model. We made no assumptions regarding what the probabilities were, and we

did not have to specify a particular formula for  $u$  and  $d$ . Hsia's proof requires only the condition of the DeMoivre-LaPlace limit theorem, which is that  $np \to \infty$  as  $n \to \infty$ . This condition will not be met only if the probability per period approaches zero. This is clearly not the case. If the probability of an up move approaches zero, then the probability of a down move would approach one. The model would then be meaningless as there would be no uncertainty. In fact, it is well known that the probability value converges to  $1/2$ .<sup>10</sup>

This completes Part II. In Part III, we move into the continuous time world of Black, Scholes, and Merton. Chapter 10 introduces the statistical process that we shall use to describe movements in the underlying asset.

# QUESTIONS AND PROBLEMS

1 When selecting the lowest integer within the binomial sum where the call option is in-the-money, we have the following relationships,

$$
\begin{array}{l} a ^ {*} = \frac {\ln (X / S) - n \ln d}{\ln (u / d)} \mathrm {a n d} \\ \iota = a - a ^ {*}. \\ \end{array}
$$

If we assume that  $d = 1 / u$ , explain the behavior of  $\phi$  as  $n$  increases. Further, illustrate your results for  $S = 100$ ,  $X = 100$ ,  $u = 1.25$ , and  $n = 1, 2, 3, 4, 5, 100$ , and 101.

2 Suppose  $S = 90$ ,  $X = 100$ ,  $u = 1.25$ ,  $d = 0.80$ ,  $n = 5$ , and  $r = 5.0\%$ . Compute  $B_{1}(j)$  and  $B_{2}(j)$  for all six outcomes. With these results as well as the data provided here, calculate the call and put prices.

<table><tr><td>Counter</td><td>n choose j</td><td>S</td></tr><tr><td>0</td><td>1</td><td>29.49</td></tr><tr><td>1</td><td>5</td><td>46.08</td></tr><tr><td>2</td><td>10</td><td>72.00</td></tr><tr><td>3</td><td>10</td><td>112.50</td></tr><tr><td>4</td><td>5</td><td>175.78</td></tr><tr><td>5</td><td>1</td><td>274.66</td></tr><tr><td>Sum</td><td>1,024</td><td>114.87*</td></tr></table>

*Sum of the product of  ${\mathrm{B}}_{2}\mathrm{\;S}$  or the expected terminal stock price.

3 Prove:  $Var\left[\ln \left(\frac{S_T}{S}\right)\right] = n\phi (1 - \phi)\left[\ln \left(\frac{u}{d}\right)\right]^2.$  
4 Prove  $B_{1}$  is always greater than or equal to  $B_{2}$ .  
5 Within the vast literature related to the multiplicative binomial model, there has emerged what are known as coherent conditions. Coherent conditions address the

conditions necessary to ensure that regardless of the number of time steps, the binomial model is consistent (coherent) with the parameters of the lognormal distribution. To be coherent, the following two conditions must hold at any point in time  $t$ , and any node  $j$ :

$$
e ^ {r \Delta t} = \phi u + (1 - \phi) d \text {a n d} \tag {1}
$$

$$
\sigma^ {2} \Delta t = \phi (1 - \phi) \left[ \ln \left(\frac {u}{d}\right) \right]. \tag {2}
$$

Based on these two conditions, identify the relationships among  $\phi, u$ , and  $d$ .

# NOTES

1. An alternative approach is provided by Jarrow and Rudd (1983), whose up and down factors are different from those of Cox, Ross, and Rubinstein, and these values hold for any number of time steps, not just in the limit. They then provide a general sketch of how the binomial model converges to the Black-Scholes-Merton model.  
2. Chance (2008) provides a review of binomial option pricing models and the various formulas that have been used to convert volatility to the up and down factors. He shows that they all converge to a risk neutral probability of  $\frac{1}{2}$ .  
3. For ease of exposition, we suppress the time subscript  $t$ .  
4. Note the symbol  $\in$  is read as "is an element of." Thus,  $(a\in n)$  is read "  $a$  is an element of  $n$  .  
5. Although it is not particularly important, note that  $r$  is the harmonic mean return on the asset when the probability is  $\phi^*$ .  
6. Note that this expression is the inverse of the return. That is, it is the earlier price over the later price.  
7. Let  $x$  be distributed lognormally meaning that  $\ln x$  is distributed normally. Let  $y = 1 / x$ . Is  $\ln y$  distributed normally?  $\ln y = \ln 1 - \ln x = -\ln x$ . Given that  $\ln x$  is distributed normally, changing its sign will not change its status as a normally distributed variable. It simply changes all positive outcomes to negative and vice versa. It does not change the normal distribution into some other type of distribution.  
8. This result is obtained by evaluating the integral of the normally distributed random variable  $x$  using the normal density function.  
9. Another convergence result is provided in the Randleman and Bartter (1979) version of the model. Their proof seems somewhat more complex than the Cox-Ross-Rubinstein proof and requires the condition that the probabilities converge to  $\frac{1}{2}$ . Although this condition is met, nonetheless, it is not necessary to impose it to obtain the proof.  
10. For the Jarrow and Rudd proof, they simply set the probability to  $\frac{1}{2}$  and then do not alter it as time steps are added (p. 188). In other applications of the binomial model, such as elsewhere in the Jarrow-Rudd book, the probability is not arbitrarily set to  $\frac{1}{2}$ , but simulations would show that it converges to  $\frac{1}{2}$ , given their formulas for  $u$  and  $d$ , as the number of time steps increases. Of course, as noted, Chance (2008) demonstrated that in all of the well-known formulas the probability converges to  $\frac{1}{2}$ .

