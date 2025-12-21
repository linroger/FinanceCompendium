---
title: "Chapter 15: Girsanov's Theorem in Option Pricing"
parent_directory: Foundations of the Pricing of Financial Derivatives chapters
formatted: 2025-12-21 02:30:00 AM
formatter_model: claude-sonnet-4
cli_tool: claude-code
primary_tags:
  - girsanovs theorem
  - martingale representation
  - radon nikodym derivative
  - change of measure
  - risk neutral pricing
secondary_tags:
  - stochastic processes
  - probability measures
  - ito calculus
  - derivative pricing
  - stochastic differential equations
  - martingale property
  - novikov condition
  - probability transformation
  - drift change
  - risk premium
  - market price of risk
  - empirical asset pricing
  - hedging strategy
  - partial differential equation
  - wiener process
cssclasses: academia
---

# Girsanov's Theorem in Option Pricing

At this point we have already derived the Black-Scholes-Merton model. Therefore, it would seem that little else needs to be done. Indeed, that is partially correct, but there are some additional results that are useful to understand to gain a better perspective on this model as well as give you the tools to create your own models. In this chapter, we cover one of those results, which is called Girsanov's theorem. Good references on this material are Karatzas and Shreve (1991) and Neftci (2000).

Girsanov's theorem appears to be a somewhat complex rule that at best provides limited marginal value if one already understands derivative pricing. Indeed, it is quite possible to obtain a solid understanding of derivative pricing without encountering Girsanov's theorem. Nowhere did it appear in the literature on derivatives for many years, despite many exceptionally powerful advances developed by financial economists. Yet Girsanov's theorem provides the foundation for the mathematical rigor that underlies derivative pricing. Unfortunately, Girsanov's theorem in its raw form provides virtually no intuition and is rarely, if ever, presented with any economic insights. In short, mathematicians often approach the derivative pricing problem in their own ways, one being the application of Girsanov's theorem, and financial economists approach it in other ways. That these two groups arrive at the same answer is not surprising, but they speak different languages and travel different routes. Here we cause them to converge. The material is admittedly more mathematical than financial, but that is because the readership of this book is likely to be more financial than mathematical and is more in need of seeing the mathematics and being reminded of when the mathematicians are saying something that a financial economist recognizes.

# 15.1 THE MARTINGALE REPRESENTATION THEOREM

In applying Girsanov's theorem, what we do is alter the probability distribution of the asset return such that it follows a stochastic process known as a martingale. A martingale is a process without a drift, that is, it has a zero price change. $^{1}$  In that case, we can obtain the value today of the derivative by determining the expected future value of the derivative, where the expectation is arrived at by using the altered probability distribution. In doing it this way, we avoid the problem of having to solve a differential equation.

First, however, let us identify why we are doing this. One of the important results of mathematical finance is that any two stochastic processes that are both martingales can be

related to each other via a simple transformation. For example, given one martingale,  $x_{t}$ , and another,  $y_{t}$ , the relationship,

$$
y _ {t} = y _ {0} + \int_ {0} ^ {t} \lambda_ {j} d x _ {j}, \tag {15.1}
$$

represents one martingale in terms of the other. Accordingly, this specification is referred to as the martingale representation theorem. It is important to note, however, and often overlooked in the mathematical finance literature that these two processes cannot simply be any two martingales. They must be rationally connected as we explain next.

Suppose we consider  $x$  and  $y$ , which we specify to be two independent stochastic variables with expected returns of zero. The variable  $x$  may be the stock price of a gas company in Warsaw, Poland, whereas  $y$  might be the price of corn in Madison County, Iowa. There is no amount of mathematical wizardry that can convert the price of a gas company in Warsaw to the price of corn in Iowa, even though both may be martingales given the probability distribution of states of the global economy. The martingale representation theorem seems to say that these variables can be expressed in terms of each other, but what is missing can be easily seen by recalling the binomial model.

Suppose  $x$  can go up to  $x^{+}$  or down to  $x^{-}$ . Now we want to model  $y$ . Intuitively we might specify that  $y$  can go up to  $y^{+}$  or down to  $y^{-}$ . If we allow only two states of nature and jointly consider  $x$  and  $y$  in the same model, then whenever  $x$  is  $x^{+}$ ,  $y$  is  $y^{+}$ , and whenever  $x$  is  $x^{-}$ ,  $y$  is  $y^{-}$ . In that case, the variables  $x$  and  $y$  are perfectly related to each other. If you know the value of one, you know the value of the other. In a very loose sense  $x$  and  $y$  can be thought of as perfectly correlated, though correlation is a specific and rather strong type of relationship that does not have to hold to make this point. In our example, it is obvious that when the price of corn is up, the price of the Polish gas company can be up or down. There is probably little relation between our  $x$  and  $y$ . Furthermore, we do not require such an extreme example to make this point. The variable  $x$  could be the price of Microsoft and  $y$  is the price of Exxon. Though both share a common relationship as driven by general stock market movements, there is no way that we can completely determine the value of one from the other. So, if Microsoft and Exxon were martingales, we could not relate one to the other as the martingale representation theorem seems to suggest. Even two stocks in the same industry, such as Ford and General Motors, cannot be related by the martingale representation theorem.

But if  $x$  is the price of Microsoft stock and  $y$  is the price of a call option on Microsoft, we can connect the two, because the price of the latter is completely determined by the price of the former. In the binomial sense, we can easily see this point. The option payoff at expiration for a given outcome is completely identified by the underlying asset price in that outcome. Thus, the martingale representation theorem requires that one variable be completely determined by the other. Well, that was the binomial case, which applies in a discrete time world. In a continuous time world, Girsanov's theorem will provide the connection.

How we use the martingale representation theorem is in the following manner. If the price of an asset, as indicated by the  $x$  variable, is a martingale, then by the described transformation, we can turn it into the  $y$  variable, if  $y$  is completely determined by  $x$ . If  $y$  is the option on  $x$ , then we have replicated  $y$  with  $x$ . It should be apparent that  $\lambda$  is likely to represent a certain number of shares of  $x$  held to replicate  $y$ .

Those who have studied option pricing theory from a financial economics perspective, however, may find this result a bit disconcerting because they know that one must hold bonds as well as shares to replicate an option. The martingale representation theorem gives us only the condition under which the uncertainty in  $y$  can be captured by the uncertainty in  $x$ . More formally, if we differentiate  $y_{t}$  with respect to  $x_{t}$  from Equation (15.1) we obtain

$$
d y _ {t} = \lambda_ {t} d x _ {t}. \tag {15.2}
$$

This is the result we need and the one that clearly indicates that the uncertainty in  $y$  is driven by the uncertainty in  $x$ . The bonds we must hold for replication introduce no element of uncertainty.

So the martingale representation theorem tells us that we must find a stochastic process  $\lambda_{t}$  such that we are holding just the right number of units of  $x$ . In addition, we must invest a certain amount in risk-free bonds such that we replicate  $y$ . Formally,

$$
y _ {t} = \lambda_ {t} x _ {t} + \theta_ {t} B _ {t}, \tag{15.3}
$$

where  $B_{t}$  is the value of the bonds, and which accrues value by the factor  $e^{r_c dt}$ . Note that  $\lambda$  and  $\theta$  are variables. They are indexed by  $t$  and are determined as the asset evolves along its stochastic paths. We need to know their values at  $t$ .<sup>3</sup> They change as we move through time, but they are completely determined once we know the new price of the asset. Financial economists know this as the dynamic nature of the option delta. Indeed delta is what we are currently designating as  $\lambda_t$ .

Mathematical finance formally tells us that if the asset can be transformed into a martingale, we can find a stochastic process such that the asset can be transformed into another martingale that replicates the option. Once we have replicated the option, we can price it using the asset price, the number of units of the asset we hold, the investment in risk-free bonds, and the interest rate, and so on, or in other words, all known values. We can obtain the option value by finding the expectation of the future value of this process.

Now let us proceed to examine the mathematics of how derivative prices are found. Our first step is to learn how to change the drift, that is, the expected return of a random variable.

# 15.2 INTRODUCING THE RADON-NIKODYM DERIVATIVE BY CHANGING THE DRIFT FOR A SINGLE RANDOM VARIABLE

Let us begin by examining the process of changing a probability distribution for a general random variable. We start with a random variable  $x$ , which is simply a single unknown outcome and not a stochastic process. We shall take  $x$  as distributed normally with expected value  $\mu$  and variance  $\sigma^2$ . The probability density of  $x$  is

$$
f (x) = \frac {1}{\sigma \sqrt {2 \pi}} e ^ {- \frac {\left(\frac {x - \mu}{\sigma}\right) ^ {2}}{2}} = \frac {d \Pr (x)}{d x}, \tag {15.4}
$$

where the probability distribution function or cumulative probability is  $\operatorname{Pr}(x)$ . Now suppose that we wanted to change the location of this probability distribution. Specifically,

we wish to shift the expected value by an amount  $\gamma$ , such that the expected value is  $\mu + \gamma$ . Then the density we want is

$$
f (x) = \frac {1}{\sigma \sqrt {2 \pi}} e ^ {- \frac {\left(\frac {x - \mu - \gamma}{\sigma}\right) ^ {2}}{2}}. \tag {15.5}
$$

Note that the numerator of the exponent takes  $x$  and subtracts our shifted expected value  $\mu + \gamma$ .

We have changed the expected value but not the variance, meaning that we have changed the location but not the shape of the distribution. We need not specify if  $\gamma$  is positive or negative, because we could shift the expected value upward or downward. Let us call this new density  $f^{\mathcal{Q}}(x)$  and the new distribution function  $\operatorname{Pr}^{\mathcal{Q}}(\mathrm{x})$ , so  $f^{\mathcal{Q}}(x) = d\operatorname{Pr}^{\mathcal{Q}}(x) / dx$ . Let us see how we can make this distribution change so that  $\operatorname{Pr}(x)$  is replaced by  $\operatorname{Pr}^{\mathcal{Q}}(x)$ .

Look at the expression in the previous exponent,  $-[(x - \mu -\gamma) / \sigma ]^2 /2$  , and note that it equals  $-(1 / 2\sigma^{2})(x^{2} - 2x\mu - 2\gamma x + 2\mu \gamma +\mu^{2} - \gamma^{2})$  . If we compare this expression to what we started with,  $-[(x - \mu) / \sigma ]^2 /2 = -(1 / 2\sigma^2)(x^2 - 2x\mu +\mu^2)$  , we see that we can get the new expression by multiplying the original expression by a certain factor. That is,

$$
\frac {1}{\sigma \sqrt {2 \pi}} e ^ {- \left(\frac {x - \mu - \gamma}{\sigma}\right) ^ {2}} = \left(\frac {1}{\sigma \sqrt {2 \pi}} e ^ {- \left(\frac {x - \mu}{\sigma}\right) ^ {2}}\right) \left(e ^ {- \frac {\left(2 \gamma x - 2 \gamma \mu - \gamma^ {2}\right)}{2 \sigma^ {2}}}\right). \tag {15.6}
$$

Let us now designate this new multiplier as

$$
\phi (x) = e ^ {- \frac {\left(2 \gamma x - 2 \gamma \mu - \gamma^ {2}\right)}{2 \sigma^ {2}}}. \tag {15.7}
$$

Because  $f(x) = d\operatorname*{Pr}(x) / dx$ , then  $f(x)dx = d\operatorname*{Pr}(x)$ . What we want is  $f^{\mathcal{Q}}(x)dx = d\operatorname*{Pr}^{\mathcal{Q}}(x)$ , where we have a new probability measure  $\operatorname*{Pr}^{\mathcal{Q}}(x)$ . Because  $f(x)\phi (x) = f^{\mathcal{Q}}(x)$ , then  $f(x)dx\phi (x) = f^{\mathcal{Q}}(x)dx$ . Then

$$
\frac {f ^ {\mathcal {Q}} (x)}{f (x)} = \phi (x). \tag {15.8}
$$

It follows that

$$
\frac {d \Pr^ {\mathcal {Q}} (x)}{d \Pr (x)} = \frac {f ^ {\mathcal {Q}} (x) d x}{f (x) d x} = \phi (x). \tag {15.9}
$$

Our multiplier  $\phi(x)$  can be thought of as an adjustment that converts one probability measure,  $\operatorname{Pr}(x)$ , into another,  $\operatorname{Pr}^{\mathcal{Q}}(x)$ . We must be careful, however, in that one cannot just arbitrarily multiply one measure by some other factor because the resulting measure should be of the same type of distribution as the one we started with. In this case, we started with the normal distribution, and we end with the normal distribution but with a different expected value. In some cases, our random variable will be standard normal, meaning that  $\mu = 0$  and  $\sigma = 1$ . In that case,

$$
\phi (x) = e ^ {\frac {x \gamma - \gamma^ {2}}{2}}. \tag {15.10}
$$

This special function  $\phi (\mathbf{x})$ , which we noted can be expressed as  $d\mathrm{Pr}^{\mathcal{Q}}(x) / d\mathrm{Pr}(x)$ , is a derivative itself and is called the Radon-Nikodym derivative. For this derivative to exist, it is necessary that the function  $\operatorname {Pr}^{\mathcal{Q}}(x)$  and the function  $\operatorname *{Pr}(x)$  be considered equivalent probability measures. What this means is that if an event is possible under one measure, then it is possible under the other measure. In other words, events that cannot occur in the first place cannot be made possible by simply changing the probability measure. Likewise events that can occur in the first place cannot be made impossible by changing the probability measure. The probability of a possible event, however, can and will be changed by this change of measure.

Before providing a formal statement of Girsanov's theorem, we introduce a complete probability space with a particular interest in how it is applicable to financial modeling.

# 15.3 A COMPLETE PROBABILITY SPACE

The complete probability space is a very formal mathematical representation of our perceptions of the possible uncertain outcomes and their probabilities, such as the random movements in asset prices. In financial practice, one always faces uncertainty where both likelihood and outcome are unknown. In finance, uncertainty means we do not know the potential outcomes and/or their corresponding likelihoods. Risk means we can assert both the potential outcomes and their corresponding likelihoods. Most quantitative tasks seek to model uncertainty with some risk-based framework. With the complete probability space, uncertainty is reduced to risk, again where both likelihood and outcome are known. For a thorough treatment of this topic, see Harrison and Kreps (1979) and Harrison and Pliska (1981).

Girsanov's theorem relies on a formal mathematical structure. Hence, we introduce some of the formalities here. We assume a finite time horizon; that is, time is modeled as a real number over  $(0,\widehat{T})$ , for fixed  $0\leq t\leq \widehat{T}$ , where  $\widehat{T} < \infty$

The uncertainty is characterized by a complete probability space expressed as  $(\Omega, I, P)$ , where the state space  $\Omega$  is the set of all possible realizations of the stochastic economy between time 0 and time  $\hat{T}$  and has a typical element  $\omega$  representing a single sample path,  $I$  is called the sigma field of distinguishable events denoted  $I$  for information at time  $\hat{T}$ , and  $P$  is a probability measure defined on the elements of  $I$ .  $P$  is short for  $\operatorname{Pr}(x)$ . A sigma field is a means of keeping track of what is known and unknown as illustrated next.

To illustrate a complete probability space, consider a three-period binomial example where each period is one year and the likelihood of an up move is  $60\%$ . Thus, the state space can be represented as:

$$
\Omega = \left\{ \begin{array}{l} \emptyset , \{d \}, \{u \}, \{d, d \}, \{d, u \}, \{u, d \}, \{u, u \}, \{d, d, d \}, \{d, d, u \}, \\ \{d, u, d \}, \{d, u, u \}, \{u, d, d \}, \{u, d, u \}, \{u, u, d \}, \{u, u, u \} \end{array} \right\},
$$

where  $\varnothing$  represents the null set. The initial time period, 0, in this illustration is  $\hat{T} - 3$ . For example, one element of the state space is  $\omega = \{u, d, u\}$ . The sigma field of distinguishable

events,  $I$ , keeps track of the information along the complete past sample path, where the percentages in parentheses here are probabilities:

$$
t = 0 \quad I _ {0} = \left\{ \begin{array}{l} \emptyset , \{d \}, \{u \}, \{d, d \}, \{d, u \}, \{u, d \}, \{u, u \}, \\ \{d, d, d \}, \{d, d, u \}, \{d, u, d \}, \{d, u, u \}, \\ \{u, d, d \}, \{u, d, u \}, \{u, u, d \}, \{u, u, u \} \end{array} \right\} (100 \% )
$$

$$
\begin{array}{l} t = 1: \quad I _ {1} = \left\{\left\{d \right\}, \left\{d, d \right\}, \left\{d, u \right\}, \left\{d, d, d \right\}, \left\{d, d, u \right\}, \left\{d, u, d \right\}, \left\{d, u, u \right\} \right\} (40 \% \\ I _ {0} = \left\{ \begin{array}{l} \{u \}, \{u, d \}, \{u, u \}, \{u, d, d \}, \\ \{u, d, u \}, \{u, u, d \}, \{u, u, u \} \end{array} \right\} (60 \% \\ \end{array}
$$

$$
\begin{array}{l} t = 2: \quad I _ {2} = \{\{d d \}, \{d d d \}, \{d d u \} \} (16 \% ) \\ I _ {2} = \{\{d u \}, \{d u d \}, \{d u u \} \} (24 \% ) \\ I _ {2} = \{\{u d \}, \{u d d \}, \{u d u \} \} (24 \% ) \\ I _ {2} = \{\{u u \}, \{u u d \}, \{u u u \} \} (36 \% ) \\ \end{array}
$$

$$
\begin{array}{l} t = 3: \quad I _ {3} = \{\{d, d, d \} \} (6.4 \% \\ I _ {3} = \{\{d, d, u \} \} (9.6 \% \\ I _ {3} = \{\{d, u, d \} \} (9.6 \% \\ I _ {3} = \{\{d, u, u \} \} (14.4 \% \\ I _ {3} = \{\{u, d, d \} \} (9.6 \% \\ I _ {3} = \{\{u, d, u \} \} (14.4 \% \\ I _ {3} = \{\{u, u, d \} \} (14.4 \% \\ I _ {3} = \{\{u, u, u \} \} (21.6 \%) \\ \end{array}
$$

An adapted process on a complete probability space is non-anticipating. Generally, process  $x$  is said to be adapted if and only if for every outcome  $x_{t}, x_{t}$  is known at time  $t$ . Itô processes are adapted processes.

There are several other highly technical assumptions, but we leave them for further study in the mentioned references. With this foundation, we are now ready for a formal statement of Girsanov's theorem.

# 15.4 FORMAL STATEMENT OF GIRSANOV'S THEOREM

Define the complete probability space as  $(\Omega, I, P)$ . Let  $Q$  be a probability measure defined on  $I$ .  $Q$  is equivalent to  $P$  if for every  $A$  that is an element of  $I$ ,  $P(A) = 0$  if and only if  $Q(A) = 0$ .

Assuming equivalent probability measures for  $P$  and  $Q$ , the Radon-Nikodym derivative of  $Q$  with respect to  $P$  is defined as

$$
Z \equiv \frac {d Q}{d P} = \frac {\operatorname * {P r} ^ {Q} (x)}{\operatorname * {P r} (x)}. \tag {15.11}
$$

For our purposes here, recall the properties of the standard Wiener processes based on the notation used here:

- Let  $W$  and  $Z$  be standard Wiener processes on probability measures  $P$  and  $Q$ , respectively. Then  $W_0 = 0$  and  $Z_0 = 0$ .  
- $W_{u} - W_{t}$  and  $W_{s} - W_{t}$ ,  $Z_{u} - Z_{t}$ ,  $Z_{s} - Z_{t}$  are  $P$ -independent and  $Q$ -independent if  $0 \leq s < t < u$ .  
- $W_{u} - W_{t}, Z_{u} - Z_{t}$  are  $N(0, u - t)$ -distributed under  $P$  and  $Q$ , respectively.

We are now ready for a formal statement of Girsanov's theorem. We will then proceed to explain various aspects of it.

Girsanov's theorem: Let  $W_{t}$  be a standard Wiener process with respect to probability measure  $P$  on  $I_{t}$ . Let  $(\gamma_{t})$  be an adapted process such that  $\int_{0}^{t} \gamma_{j} dW_{j}$  is defined. Define a martingale,  $M_{t}$ , as  $M_{t} \equiv e^{\int_{0}^{t} \gamma_{j} dW_{j} - \frac{1}{2} \int_{0}^{t} \gamma_{j}^{2} dj}$ . Define a new probability measure  $Q$  on  $I_{t}$  as  $Q(A) \equiv E(1_{A} M_{t}); A \in I_{t}$ . Then  $\int_{0}^{t} d\widehat{W}_{j} \equiv \int_{0}^{t} dW_{j} - \int_{0}^{t} \gamma_{j} dj$  is a standard Wiener process with respect to  $Q$ .

# 15.5 CHANGING THE DRIFT IN A CONTINUOUS TIME STOCHASTIC PROCESS

For applications of Girsanov's theorem in finance, the random variable we deal with is often a stochastic process, and in many cases, the random variable will be a Brownian motion,  $W_{t}$ , such that

$$
W _ {t} = \int_ {0} ^ {t} d W _ {j}, \tag {15.12}
$$

where we set  $W_0 = 0$  and the increments are distributed with expected value zero and variance  $dt$ . The density of  $W_t$  is

$$
f \left(W _ {t}\right) = \frac {1}{\sqrt {2 \pi t}} e ^ {- \frac {1}{2} \frac {W _ {t} ^ {2}}{t}}. \tag {15.13}
$$

We wish to change this Brownian motion into another process that has a new probability measure  $\mathcal{Q}$ . We shall shift the distribution by the amount  $\gamma_{t}$ . In later applications, we shall see that  $\gamma_{t}$  will become an extremely simple function of  $t$ , but for now let us leave it unspecified.

So what we want is a new Brownian motion that has expected value of  $\gamma_{t}$ . What will accomplish this trick is to designate

$$
\phi_ {t} = e ^ {\int \gamma_ {u} d W _ {u} - \frac {1}{2} \int_ {0} ^ {t} \gamma_ {u} ^ {2} d u}. \tag {15.14}
$$

For this transformation to be possible, we must impose a constraint on the behavior of  $\gamma_{u}$ . Specifically, we require that

$$
E\left(\int_{0}^{t} \gamma_{u}^{2} du\right) < \infty. \tag{15.15}
$$

This statement is called the Novikov condition. In simple terms it means that the variation in  $\gamma_{\mu}$  must be finite. For all our applications, the Novikov condition will be met.<sup>6</sup>

If these requirements are met, then  $\gamma_{t}$  can be shown to be a martingale. Let us first apply Ito's lemma on  $\phi_t$ :

$$
d \phi_ {t} = \frac {\partial \phi_ {t}}{\partial W _ {t}} d W _ {t} + \frac {1}{2} \frac {\partial^ {2} \phi_ {t}}{\partial W _ {t} ^ {2}} d W _ {t} ^ {2}. \tag {15.16}
$$

First, we find the partials

$$
\frac{\partial \phi_{t}}{\partial W_{t}} = \frac{\partial \left(e^{\int_{0}^{t} \gamma_{u} d W_{u} - \frac{1}{2} \int_{0}^{t} \gamma_{u}^{2} du}\right)}{\partial W_{t}} = \phi_{t} \frac{\partial \left(\int_{0}^{t} \gamma_{u} d W_{u} - \frac{1}{2} \int_{0}^{t} \gamma_{u}^{2} du\right)}{\partial W_{t}} = \phi_{t} \gamma_{t}. \tag{15.17}
$$

And, because  $\gamma_{t}$  is not determined by  $\mathbb{W}_t$ , the second derivative is

$$
\frac {\partial^ {2} \phi_ {t}}{\partial W _ {t} ^ {2}} = 0. \tag {15.18}
$$

So

$$
d \phi_ {t} = \phi_ {t} \gamma_ {t} d W _ {t} = e ^ {\int_ {0} ^ {t} \gamma_ {u} d W _ {u} - \frac {1}{2} \int_ {0} ^ {t} \gamma_ {u} ^ {2} d u} \gamma_ {t} d W _ {t}. \tag {15.19}
$$

Now let us consider the value at  $t = 0$ :

$$
\phi_ {0} = e ^ {\int_ {0} ^ {0} \gamma_ {u} d W _ {u} - \frac {1}{2} \int_ {0} ^ {0} \gamma_ {u} ^ {2} d u} \gamma_ {0} d W _ {0} = e ^ {0} = 1. \tag {15.20}
$$

Now we have

$$
\int_ {0} ^ {t} d \phi_ {u} = \int_ {0} ^ {t} \phi_ {u} \gamma_ {u} d W _ {u} = \phi_ {t} - \phi_ {0}, \text {s o} \tag {15.21}
$$

$$
\phi_{t} - 1 = \int_{0}^{t} \phi_{u} \gamma_{u} d W_{u},
$$

$$
\text {a n d} \phi_ {t} = 1 + \int_ {0} ^ {t} \phi_ {u} \gamma_ {u} d W _ {u}. \tag {15.22}
$$

Because  $dW_{u}$  on the right-hand side is known to be a martingale, its expectation is zero and, therefore,  $E(\phi_t) = 1 = \phi_0$ . Consequently,  $\phi_t$  is a martingale.

Thus, we can now be certain that Girsanov's theorem applies. Our Brownian motion can be transformed as follows:

$$
W _ {t} ^ {Q} = W _ {t} - \int_ {0} ^ {t} \gamma_ {u} d u, \tag {15.23}
$$

where  $W_{t}^{Q}$  is a Wiener process under the new probability measure  $\mathrm{Pr}^Q$  such that

$$
\frac{d \Pr^{Q}}{d \Pr} = \phi_{t}. \tag{15.24}
$$

Remember that  $\phi$  is the Radon-Nikodym derivative.

We shall ultimately need the Wiener differential,  $dW_{t}^{Q}$ , which is obtained as follows:

$$
\begin{array}{l} W _ {t} ^ {Q} = W _ {t} - \int_ {0} ^ {t} \gamma_ {u} d u, \\ W _ {t} ^ {Q} - W _ {t} = - \int_ {0} ^ {t} \gamma_ {u} d u \quad \text {i m p l i e s} \\ d W _ {t} ^ {Q} - d W _ {t} = - \gamma_ {t} d t, \quad \text {s o} \\ d \mathrm {W} _ {t} ^ {\mathrm {Q}} = d \mathrm {W} _ {t} - \gamma_ {t} d t. \tag {15.25} \\ \end{array}
$$

Now let us step back and think about how this result is important for our purposes. We shall want to convert our asset price process to a martingale. This will remove the drift and permit us to price the option by evaluating its expected future value under the new probability measure. When we remove the drift, what we are doing is removing the risk premium and the risk-free rate. If we know the value of the risk premium, it would be no problem: We would simply subtract it out. But we do not know what the risk premium is. We do not know how much of the asset's expected return to remove. We do know, however, that if we remove just enough that the asset return is a martingale, then we require no discounting whatsoever. So the trick is to change the probability distribution so that the asset return is a martingale. Here is where the finance ends and the math takes over. Girsanov's theorem tells us how to change a probability distribution to leave it the same type of distribution with the same variance but with a different drift. What we have just seen is that the Brownian motion process,  $W_{t}$ , can be changed such that it is still a martingale. Because the asset price process is a simple transformation of the Brownian motion process, it should be easy to transform it as well into a martingale.

We have seen that we are subtracting a function  $\gamma_{t}$ . This means that  $\gamma$  can potentially change with  $t$ . We are somewhat lucky here, because for our purposes  $\gamma_{t}$  is a very simple function of  $t$ :  $\gamma_{t} = \gamma t$ . Now notice what we obtain for our Radon-Nikodym derivative:

$$
\phi_ {t} = e ^ {\int_ {0} ^ {t} \gamma d W _ {u} - \frac {1}{2} \int_ {0} ^ {t} \gamma^ {2} d u} = e ^ {\gamma \int_ {0} ^ {t} d W _ {u} - \frac {1}{2} \gamma^ {2} \int_ {0} ^ {t} d u}. \tag {15.26}
$$

In other words, if we multiply the density function of  $W_{t}$  by  $\phi_t$  as specified, we should obtain the density function for a new Brownian motion, which we shall call  $W_{t}^{\mathcal{Q}}$ , and in which the expected value has been shifted by  $\gamma t$ . Let us see. Given,

$$
f (\mathrm {W} _ {t}) = \frac {1}{\sqrt {2 \pi t}} e ^ {- (\mathrm {W} _ {t} ^ {2}) / 2 t}, \quad \mathrm {a n d}
$$

$$
\frac {d \Pr^ {Q}}{d \Pr} = e ^ {(\gamma W _ {t} - \gamma^ {2} t) / 2}, \tag {15.27}
$$

we obtain by multiplication

$$
\begin{array}{l} f \left(\mathrm {W} _ {t}\right) = \frac {d \Pr^ {\mathcal {Q}}}{d \Pr} = \frac {1}{\sqrt {2 \pi t}} e ^ {- \left(\mathrm {W} _ {t} ^ {2} / 2 t + \gamma \mathrm {W} _ {t} - \gamma^ {2} t / 2\right)} \\ = \frac {1}{\sqrt {2 \pi t}} e ^ {- (1 / 2) \left(\frac {\mathrm {W} _ {t} - \gamma_ {t}}{t}\right) ^ {2}}. \tag {15.28} \\ \end{array}
$$

Equation (15.28) is the density for a Brownian motion with its zero expected value shifted by  $-\gamma t$ . So

$$
\mathrm {W} _ {t} ^ {\mathrm {Q}} = \mathrm {W} _ {t} - \gamma t. \tag {15.29}
$$

To recap, we have that  $W_{t}$  is a Brownian motion under the probability measure  $\mathrm{Pr}$ , such that

$$
\begin{array}{l} E ^ {P} (W _ {t}) = W _ {0} = 0 \\ E ^ {P} (\mathsf {W} _ {t} ^ {Q}) = E ^ {P} (\mathsf {W} _ {t} - \gamma t) = E ^ {P} (\mathsf {W} _ {t}) - \gamma t \\ = 0 - \gamma t. \tag {15.30} \\ \end{array}
$$

The first statement defines that  $W_{t}$  is a Brownian motion under  $\operatorname{Pr}$ . The second statement says that under  $\operatorname{Pr}$ ,  $W_{t}^{\mathcal{Q}}$  is not a Brownian motion. Its expectation,  $-\gamma t$ , is not zero, except at  $t = 0$ , and varies with  $t$ . But  $W_{t}^{\mathcal{Q}}$  is a Brownian motion under  $\mathcal{Q}$ :

$$
E ^ {Q} \left(W _ {t} ^ {Q}\right) = W _ {0} ^ {Q} = 0. \tag {15.31}
$$

This statement follows because  $W_{t}$  and  $W_{t}^{\mathcal{Q}}$  both start at a value of zero. Under  $\mathcal{Q}$ ,  $W_{t}$  is not a Brownian motion because

$$
E ^ {Q} \left(W _ {t}\right) = E ^ {Q} \left(W _ {t} ^ {Q} + \gamma t\right) = E ^ {Q} \left(W _ {t} ^ {Q}\right) + \gamma t = \gamma t. \tag {15.32}
$$

When we say that some random process, such as  $W_{t}$  or  $W_{t}^{Q}$ , is a Brownian motion under a given measure, we are saying that the probabilities of its possible paths are assigned such that its central property, a constant expectation of zero, is preserved. When the probabilities are changed such that the process no longer has a zero expected value, it is no longer the same thing. But another process can and in this case does have the property of a Brownian motion under the new probability measure.

# 15.6 CHANGING THE DRIFT OF AN ASSET PRICE PROCESS

We previously obtained the familiar stochastic process for an asset:

$$
\frac {d S _ {t}}{S _ {t}} = \alpha d t + \sigma d W _ {t}. \tag {15.33}
$$

If we change  $W_{t}$  such that now  $W_{t} = W_{t}^{Q} + \gamma t$ , from Equation (15.29), then we can substitute its differential,  $dW_{t} = dW_{t}^{Q} + \gamma dt$ , into Equation (15.33) to obtain

$$
\begin{array}{l} \frac {d S _ {t} ^ {\mathcal {Q}}}{S _ {t} ^ {\mathcal {Q}}} = \alpha d t + \sigma (d \mathrm {W} _ {t} ^ {\mathcal {Q}} + \gamma d t) \\ = (\alpha + \sigma \gamma) d t + \sigma d W _ {t} ^ {Q}. \tag {15.34} \\ \end{array}
$$

So if we change the probability measure for  $W_{t}$ , which is the same probability that drives  $S_{t}$ , we are now working with this new stochastic process and a new and different set of probabilities. But have we converted  $S_{t}^{\mathcal{Q}}$  to a martingale? Well, not yet. If, however, we specify that  $\gamma = -\alpha / \sigma$ , the drift becomes zero, leaving us with

$$
\frac {d S _ {t} ^ {Q}}{S _ {t} ^ {Q}} = \sigma d W _ {t} ^ {Q}, \tag {15.35}
$$

which is clearly a martingale. From this result, we can assign an obvious interpretation to  $\gamma = -\alpha /\sigma$ , an interpretation at which we have already arrived. First, ignoring the minus sign, the expression  $\alpha$  in the numerator is the expected return. The denominator is clearly the risk. Thus,  $\gamma$  is the return over the risk, which makes it a measure of a risk-return trade-off. It is somewhat more natural, however, to specify  $\gamma$  in a slightly different manner:

$$
\gamma = - \frac {\alpha - r _ {c}}{\sigma}, \tag {15.36}
$$

which, when substituted back into the stochastic differential equation, gives us

$$
\frac {d S _ {t} ^ {\mathrm {Q}}}{S _ {t} ^ {\mathrm {Q}}} = r _ {c} d t + \sigma d W _ {t} ^ {\mathrm {Q}}. \tag {15.37}
$$

Now we have a more natural interpretation of  $\gamma$ . Again, ignoring the minus sign, the numerator is the expected return minus the risk-free rate or the risk premium. The denominator is the risk.<sup>9</sup> In financial economics, this ratio is the risk premium per unit of risk and is sometimes called the market price of risk. It reflects the relative risk-return trade-off, that is, the additional expected return necessary to induce investors to assume risk.<sup>10</sup>

Now the adjustment is, more or less, just a subtraction of the risk premium per unit of risk, but the beauty of it all is that we never have to obtain the risk premium. By converting the process to a martingale, we automatically remove the risk premium.

For the log process, recall that its drift,  $\mu$ , is equal to  $\alpha - \sigma^2 / 2$ , so then

$$
\gamma = - \frac {\mu + \sigma^ {2} / 2 - r _ {c}}{\sigma}. \tag {15.38}
$$

But if you have been paying close enough attention, you should note that it appears we no longer have  $S_{t}$  in the form of a martingale. After all, its new expected return is

$$
E \left(\frac {d S _ {t} ^ {Q}}{S _ {t}}\right) = r _ {c} d t, \tag {15.39}
$$

which is typically not zero. With positive interest rates, we have now specified that the asset drifts upward at the risk-free rate. Now we seem to have a problem, but a slightly different spin on things saves the day.

First, we should be comforted in knowing that by removing the risk premium, we have taken out the most difficult part of the problem: the estimation of the risk premium for applied use or empirical research. There is an entire subdiscipline of financial economics called empirical asset pricing that is devoted to estimating risk premiums. We should be able to avoid this concern and solve the option pricing problem from what we now know, and indeed that is the case. Financial economists have long known that if we change the asset's expected return to the risk-free rate, we can then evaluate the expected option payoff under the assumption that the asset price is randomly generated by the standard stochastic differential equation with a drift set at the risk-free rate. Economists then go on to explain that everything we need to know about how investors feel about risk is impounded into the asset price. It is not necessary to reflect any effect of investors' risk preferences on the option price. Consequently, we can proceed to evaluate the option as if the expected return on the asset is the risk-free rate. This approach is often called risk-neutral pricing, and we have covered it previously. What we have done is equivalent to the well-known procedure of taking a short position in an option, hedging it with a long position in units of the underlying asset, thereby eliminating the risk, followed by setting the return on this hedged portfolio to the risk-free rate. From there we obtain a partial differential equation whose solution is the option pricing model. But how do we salvage our approach, which now leaves us with  $S_{t}$  no longer a martingale?

The trick lies in recognizing that we can work with the discounted value of  $S_{t}$ . In other words, say we start off at time 0 with a value of  $S_{0}$ . Then at time  $t$ , we have a new value,  $S_{t}$ . But suppose we transform our asset price into its discounted value,  $S_{t}e^{-r_{c}t}$ . Now let us look at some of our previous results. Recall that the solution to the stochastic differential equation that gives us  $S_{t}$  in terms of  $S_{0}$  was

$$
S _ {t} = S _ {0} e ^ {\mu t + \sigma W _ {t}}. \tag {15.40}
$$

Suppose that instead of working with  $S_{t}$ , we work with its discounted value,  $S_{t}e^{-r_{c}t}$ . Then multiplying the previous equation by  $e^{-r_{c}t}$ , we obtain

$$
S _ {t} e ^ {- r _ {c} t} = S _ {0} e ^ {(\mu - r _ {c}) t + \sigma W _ {t}}. \tag {15.41}
$$

Right now, however, we are under the original probability measure. Substituting  $W_{t}^{Q} + \gamma t$  for  $W_{t}$ , we obtain

$$
S _ {t} e ^ {- r _ {c} t} = S _ {0} e ^ {(\mu - r _ {c}) t + \sigma \left(W _ {t} ^ {Q} + \gamma t\right)}. \tag {15.42}
$$

Noting that we defined  $\gamma$  as  $-(\mu -\sigma^2 /2 - r_c) / \sigma$  and substituting this result, we obtain

$$
S _ {t} e ^ {- r _ {c} t} = S _ {0} e ^ {- \sigma^ {2} t / 2 + \sigma W _ {t} ^ {Q}}. \tag {15.43}
$$

You may wish to look back to Chapter 12, Section 5, where we used this result for  $S_{t}$ , along with the density function for a normally distributed  $W_{t}$  to obtain the expected future asset price:

$$
E \left(S _ {t}\right) = S _ {0} e ^ {\left(\mu + \sigma^ {2} / 2\right) t}. \tag {15.44}
$$

If we follow that same procedure here for  $S_{t}e^{-r_{c}t}$ , we obtain

$$
E \left(S _ {t} e ^ {- r _ {c} t}\right) = S _ {0} e ^ {- \sigma^ {2} t / 2} e ^ {\sigma^ {2} t / 2} = S _ {0}. \tag {15.45}
$$

The absence of a positive expected return shows that the discounted price is a martingale. Let us take one more step. We shall apply Ito's lemma to the discounted asset price. First, for simplicity of notation, let us use  $S_{t}^{*}$  as  $S_{t}e^{-r_{c}t}$ . Now applying Ito's lemma to  $S_{t}^{*}$ , we obtain

$$
d S _ {t} ^ {*} = \frac {\partial S _ {t} ^ {*}}{\partial W _ {t}} d W _ {t} + \frac {\partial S _ {t} ^ {*}}{\partial t} d t + \frac {1}{2} \frac {\partial^ {2} S _ {t} ^ {*}}{\partial W _ {t} ^ {2}} d W _ {t} ^ {2}. \tag {15.46}
$$

Using Equation (15.41), we can obtain the partial derivatives:

$$
\frac {\partial S _ {t} ^ {*}}{\partial W _ {t}} = S _ {t} ^ {*} \sigma
$$

$$
\frac {\partial^ {2} S _ {t} ^ {*}}{\partial W _ {t} ^ {2}} = S _ {t} ^ {*} \sigma^ {2}
$$

$$
\frac {\partial S _ {t} ^ {*}}{\partial t} = S _ {t} ^ {*} \left(\mu - r _ {c}\right). \tag {15.47}
$$

Substituting these results into Equation (15.46), and with  $dW_{t}^{2} = dt$ , we obtain the following stochastic differential equation for  $S_{t}^{*}$ :

$$
\begin{array}{l} \frac {d S _ {t} ^ {*}}{S _ {t} ^ {*}} = (\mu - r _ {c} + \sigma^ {2} / 2) d t + \sigma d W _ {t} \\ = \left(\alpha - r _ {c}\right) d t + \sigma d W _ {t}. \tag {15.48} \\ \end{array}
$$

We see that once we have taken the risk-free rate into effect in specifying the underlying variable, we no longer account for the risk-free rate in the drift. But we still do not have a martingale. Recall that to obtain a martingale, we need to substitute  $dW_t^Q + \gamma t$  where  $\gamma = -(\alpha - r_c) / \sigma$  into Equation (15.48), giving us

$$
\frac {d S _ {t} ^ {*}}{S _ {t} ^ {*}} = \sigma d W _ {t} ^ {Q}, \tag {15.49}
$$

which is clearly a martingale, because there is no drift.

To summarize, we adjust the drift of the asset price process by changing the probabilities such that we obtain a martingale. What we also must do is to discount the asset price at the risk-free rate and then work with the discounted asset price to change the probability measure, leaving us with a martingale. Then we easily evaluate the option by applying the probability distribution of the discounted asset price to the option payoff. In this way the option price is found as the expected payoff of the option at expiration, without any discounting, because it has already been done.

If we do the one—discounting the asset price—without the other—changing the measure—we have technically not completed the process, but as it turns out, we can get away with changing the measure without discounting the asset price. Recall that  $dS_{t} / S_{t} = r_{c}dt + \sigma dW_{t}$ . So, let us substitute  $dW_{t}^{Q} + \gamma dt$  and  $\gamma = -(\alpha -r_c) / \sigma$  to obtain

$$
\frac {d S _ {t}}{S _ {t}} = r _ {c} d t + \sigma d W _ {t} ^ {Q}. \tag {15.50}
$$

We can work with this model and do the discounting later, that is, after we have evaluated the expected option payoff at expiration. That is because whether we discount before we have derived the expectation or after, we have not altered the fundamental process or the results of taking expectations other than by the simple linear adjustment,  $e^{-r_ct}$ . Although mathematicians would probably prefer that we convert the asset price to a martingale, requiring that we do the discounting beforehand, financial economists would probably prefer to do the discounting afterwards. That is because the latter approach is more in line with the intuition provided by economic theory: The price of any asset is its expected future value, discounted to the present at an appropriate rate. One typically finds the expectation first and then does the discounting. The fact that in this case the appropriate rate is the risk-free rate is quite intuitive. The risk has been removed via the risk-free hedge, or alternatively, the risk can be viewed as being fully embedded into the price of the underlying asset and, therefore, cannot legitimately be incorporated again without double counting. Moreover, if the risk is either not present or removed, investors' risk preferences are irrelevant to the valuation process. In that case, one might just as well use the simplest form of risk preferences—risk neutrality—wherein investors discount future values at the risk-free rate.

Finally, we might just simply say that if the price of the underlying asset is given, any two investors regardless of their feelings about risk will value the option in the same manner. Consequently, we can treat both investors as though they had the simplest risk preferences of all, risk neutrality.

# 15.7 RECAP AND PREVIEW

Girsanov's theorem shows that a martingale can often be represented by another martingale with a change in the location or drift of the process. This result is a pure mathematical concept, but it has great relevance to finance in that it shows that the stochastic process for an asset can be changed into another stochastic process with the expected return equal to the risk-free rate. This result, which we called the change of measure, plays a subtle but important role in derivatives pricing. In this chapter, we showed how this result is derived,

and we applied it to the return on an asset on which we would be interested in valuing a derivative.

In Chapter 16, we illustrate how the discrete and continuous stochastic processes we have been working with are related. In doing so, we will show how the discrete change of measure relates to the continuous change of measure.


2. Of course, the exercise price also determines the option payoff, but it is not random, so it causes us no problems.  
3. Mathematicians call this property previsibility.  
4. Recall that specifically,  $d\mathrm{W}_t = \varepsilon_t\sqrt{dt}$  where  $\varepsilon_{t}$  is a standard normal random variable.  
5. The following specification is because  $W_{t}$  has expected value of zero, as it starts off at  $W_{0} = 0$ , and has a variance of  $t$ . The term in parentheses is the value of the random variable minus its expected value divided by its variance.  
6. As we shall ultimately see,  $\gamma_{u}$  will be a very simple constraint that in any rational financial market the variation is finite.  
7. The result on the third line is obtained from the result on the second line by differentiating the stochastic integral at the end point.  
8. If this were not the case, we would see that our method would not work later on.  
9. It is even more natural that instead of defining  $\gamma$  as  $-\left(\alpha - r_{c}\right) / \sigma$ , we define it as  $(\alpha - r_{c}) / \sigma$  and then change the sign such that instead of adding  $\gamma$  to  $\alpha$ , we are subtracting it. In that way, we appear to be subtracting a risk premium, a more sensible way to describe what is happening.  
10. In the study of general market equilibrium, such as the capital asset pricing model, the appropriate measure of risk is not the standard deviation, but the systematic risk, also known as  $\beta$ . The derivatives pricing framework, however, takes the general equilibrium as given and as fully reflected in the price of the underlying asset. Risk is measured in isolation and  $\sigma$  is the only measure of risk recognized within option pricing theory. You may also recognize that this return/risk ratio is the Sharpe ratio, which is widely used in investment performance evaluation.  
11. Let us emphasize that this is not a new definition for  $\gamma$ . It simply expresses  $\gamma$  in terms of the log return.

