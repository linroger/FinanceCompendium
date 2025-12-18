
# A Review of No Arbitrage Interest Rate Models

GERALD W. BUETOW, Jr., PhD, CFA

President and Founder, BFRC Services, LLC

FRANK J. FABOZZI, PhD, CFA, CPA

Professor of Finance, EDHEC Business School

JAMES SOCHACKI, PhD

Professor of Applied Mathematics, James Madison University

Abstract: Interest rates are commonly modeled using stochastic differential equations. One-factor models use a stochastic differential equation to represent the short rate and two-factor models use a stochastic differential equation for both the short rate and the long rate. The stochastic differential equations used to model interest rates must capture some of the market properties of interest rates such as mean reversion and/or a volatility that depends on the level of interest rates. There are two distinct approaches used to implement the stochastic differential equations into a term structure model: equilibrium and no arbitrage.

In modeling the behavior of interest rates, stochastic differential equations (SDEs) are commonly used. The SDEs used to model interest rates must capture some of the market properties of interest rates such as mean reversion and/or a volatility that depends on the level of interest rates. For a one-factor model, the SDE is used to model the behavior of the short-term rate, referred to simply as the "short rate." The addition of another factor (i.e., a two-factor model) involves extending the SDE to represent the behavior of the short rate and a long-term rate (i.e., long rate).


We implement the HW and BK trinomial models using the Hull and White approach.

Within the trinomial setting the time step remains constant and mean reversion can be explicitly incorporated. We discuss the SDEs, the properties of the SDEs, the numerical solutions to the SDEs, and the binomial and trinomial interest rate lattices for these models.

The focus of our presentation is on the end user and developer of interest rate models. We will highlight some significant differences across models. Most of these are due to the different distributions that underlie the models. This is done to emphasize the need to calibrate all models to the market prior to their use. By calibrating the models to the market we reduce the effects of the distributional differences and ensure a higher level of consistency in the metrics produced by the models.

The outline of this entry is as follows. In the next section we present the SDEs and some of their mathematical properties. We also use the mathematics to highlight properties of the short rate. We then develop the methodology used to implement our approach in both the binomial and trinomial frameworks. A comparison of some numerical results across the different models including some interest rate risk and valuation metrics is then presented.

# THE GENERAL MODELS FOR THE SHORT RATE

The models considered in this entry take the form of the following one-factor SDE:

$$ d f (r (t)) = [ \theta (t) + \rho (t) g (r (t)) ] d t + \sigma (r (t), t) d z \tag {1}
$$ where  $f$  and  $g$  are suitably chosen functions,  $\theta$  is determined by the market, and  $\rho$  can be chosen by the user of the model or dictated by the market. We will show that  $\theta$  is the drift of the short rate and  $\rho$  is the tendency to an equilibrium short rate. The term  $\sigma$  is the local volatility of the short rate. The term  $dz = \varepsilon \sqrt{dt}$  arises from a normally distributed Wiener process, since  $\varepsilon \sim N(0,1)$ , where  $N(0,1)$  is the normal


distribution with mean 0 and standard deviation of 1. This means that the term  $\sigma (r(t),t)dz$  has an average or expected value of 0.

Equation (1) has two components. The first component is the expected or average change in rates over a small period of time,  $dt$ . This is the component where certain characteristics of interest rates, such as mean reversion, are incorporated. The second component is the unknown or the risk term since it contains the random term. This term dictates the distribution characteristics of interest rates. Depending on the model, interest rates are either normally or lognormally distributed.

# The Ho-Lee Model

In the HL model or process  $f(r) = r$ ,  $g(r) = 0$ , and  $\rho = 0$  in equation (1). The HL process is, therefore, given by

$$ d r = \theta d t + \sigma d z \tag {2}
$$

Since  $z$  is a normally distributed Wiener process, we say the HL process is a normal process for the short rate. The solution to equation (2), assuming  $r(0) = r_0$  is given by

$$ r (t) = r _ {0} + \int_ {0} ^ {t} \theta d s + \int_ {t} ^ {t} \sigma d z \tag {3a}
$$ where the integral involving  $\sigma$  is a stochastic integral. If  $\theta$  is constant this can be expressed as


$$ r (t) = r _ {0} + \theta t + \int_ {0} ^ {t} \sigma d z \tag {3b}
$$

Equation (3b) shows that the HL process models an interest rate that can change proportionally with time  $t$  through the constant of proportionality,  $\theta$ , and a random disturbance determined by  $\sigma$ . That is, the larger  $\theta$  is in magnitude, the larger the average change in the short rate over time. This is why  $\theta$  is called the "drift in the short rate." Also, the smaller  $\theta$  is, the larger the influence of the random disturbance. The short rate can be negative in the HL process. This is a shortcoming of the model. Hull (2000) shows that  $\theta$  is related to the slope of the term structure.


To obtain a numerical approximation for equation (2) we approximate equation (2) by using equations (3a) and (3b). Letting  $t_k = k\tau$  and  $r_k \approx r(k\tau)$  gives

$$ r _ {k + 1} - r _ {k} = \theta_ {k} \tau + \sigma_ {k} \Delta z _ {k}
$$ or


$$ r _ {k + 1} = r _ {k} + \theta_ {k} \tau + \sigma_ {k} \Delta z _ {k} \tag {4}
$$ where  $\Delta z_{k}$  is a numerical (discrete) approximation to  $dz$ . Since  $dz = \varepsilon \sqrt{dt}$ , we can further approximate equation (4) by


$$ r _ {k + 1} = r _ {k} + \theta_ {k} \tau + \sigma_ {k} \varepsilon_ {k} \sqrt {\tau} \tag {5}
$$ where  $\varepsilon_{k}$  is a random number given by a normal distribution  $N(0,1)$ . Equation (5) is the form of the expression that is used for  $r_{k + 1}$  to build the HL binomial tree.


We first consider the solution to equation (5) without the stochastic term when  $\theta$  is constant. Equation (5) under these requirements is

$$ r _ {k + 1} = r _ {k} + \tau \theta \tag {6a}
$$ and the solution is given by


$$ r _ {k} = c + k \delta \tag {6b}
$$ where  $c$  and  $\delta$  are constants. In particular,  $c = r_0$  and  $\delta = \theta \tau$ . It is seen from this last equation that the mean short rate in the HL process increases or decreases at a constant rate  $\theta$  over time depending on the sign of  $\theta$ . As a matter of fact, equation (6b) shows that the short rate grows without bound if  $\theta > 0$  and decreases without bound (i.e. becomes very negative) if  $\theta < 0$ .


# The Hull-White Model

In the HW model or process  $f(r) = r$ ,  $g(r) = r$ , and  $\rho = -\phi$ . Therefore, the stochastic process for the HW model for the short rate is

$$ d r = (\theta - \phi r) d t + \sigma d z \tag {7}
$$

The short rate process in the HW model is seen to be normal as in the HL process. We consider the case where the parameters  $\theta$  and  $\phi$  are constant over time. Note that if  $\phi = 0$  the HL process reduces to the HW process. (The HW process will, therefore, be similar to the HL process if  $\phi$  is close to 0.) We will see that the introduction of  $\phi$  in the HW model is an attempt to incorporate mean reversion and to correct for the uncontrolled growth (or decline) in the HL model discussed later.

Eliminating the stochastic term in equation (7) gives the ordinary differential equation

$$ d r = (\theta - \phi r) d t \tag {8}
$$ whose solution is given by


$$ r (t) = \frac {\theta}{\phi} + c e ^ {- \phi t} \tag {9}
$$ where


$$ c = r _ {0} - \frac {\theta}{\phi} \tag {10}
$$

If  $\phi > 0$  we see from equation (9) that

$$
\lim _ {t \to \infty} r (t) = \frac {\theta}{\phi} = \mu
$$

Therefore, for positive mean reversion  $(\phi >0)$  the HW process will converge to the short rate,  $\mu$  .Due to this, the term  $\mu$  , is called the "target" or "long run mean rate." For negative mean reversion  $(\phi <  0)$  , the short rate grows exponentially over time.

Factoring  $\phi$  in equation (7) leads to

$$ d r = \phi (\mu - r) d t + \sigma d z
$$ and eliminating the stochastic term leads to


$$ d r = \phi (\mu - r) d t
$$

We see that if  $r > \mu$  then  $dr$  is negative and  $r$  will decrease and if  $r < \mu$  then  $dr$  is positive and  $r$  will increase. That is,  $r$  will approach the target rate  $\mu$ . The larger  $\phi$  is, the faster this approach to the target rate  $\mu$ . This is why  $\phi$  is called the "mean reversion" or "mean reversion rate." It regulates how fast the target rate is reached. However, it does not eliminate the negative rates that can occur in the HL process.

Since the target rate  $\mu$  is equal to  $\theta / \phi$ , we can solve for the drift,  $\theta$ , or the mean reversion,  $\phi$ . That is,

$$
\theta = \mu \phi \tag {11}
$$ or


$$
\phi = \frac {\theta}{\mu} \tag {12}
$$

It is seen from equations (11) and (12) that there is a strong relationship between the drift and mean reversion that can be used to reach any desired target rate. How large the mean reversion should be is an important financial question. Equations (11) and (12) can be used to set target rates. Equations (9) and (10) allow one to determine how long it takes to reach the target rate.

Approximating equation (7) gives us

$$ r _ {k + 1} = r _ {k} + \left(\theta_ {k} - \phi_ {k} r _ {k}\right) \tau + \sigma_ {k} \varepsilon_ {k} \sqrt {\tau} \tag {13}
$$

If  $\theta$  and  $\phi$  are constant and we eliminate the stochastic term, then the solution to equation (13) has the form

$$ r _ {k} = \alpha \beta^ {k} + \gamma
$$

To determine  $\alpha, \beta,$  and  $\gamma$  we substitute this form for  $r_k$  into equation (13) under these conditions and obtain that  $\beta = (1 - \phi \tau), \gamma = \theta / \phi = \mu,$  and  $\alpha = r_0 - \mu$ . Therefore,

$$ r _ {k} = \alpha (1 - \phi \tau) ^ {k} + \frac {\theta}{\phi} \tag {14}
$$

Note that if  $0 < \phi \tau < 2$  then  $-1 < 1 - \phi \tau < 1$  and

$$
\lim  _ {k \rightarrow \infty} r _ {k} = \frac {\theta}{\phi} = \mu
$$ which is the same result we obtained from equation (9) for the HW SDE. The condition  $0 < \phi \tau < 2$  is easily maintained in modeling the short rate.


# The Kalotay-Williams-Fabozzi Model

For the KWF process  $f(r) = \ln (r), g(r) = 0,$  and  $\rho = 0$  in equation (1). This leads to the differential process


$$ d \ln (r) = \theta d t + \sigma d z \tag {15a}
$$

This model is directly analogous to the HL model. If  $u = \ln r$ , then we obtain the HL process (equation (2)) for  $u$

$$ d u = \theta d t + \sigma d z \tag {15b}
$$

Because  $u$  follows a normal process,  $\ln (r)$  follows a normal process and so  $r$  follows a lognormal process. Since  $u$  follows the same process as the HL and HW models,  $u$  can become negative, but  $u = \ln (r)$  and  $r = e^u$  ensuring  $r$  is always positive. Therefore, the KWF model eliminates the problems of negative short rates that occurred in the HL and HW models.

Eliminating the stochastic term in equation (15) we obtain

$$ d \ln (r) = \theta (t) d t
$$ and


$$ d u = \theta (t) d t
$$

From equation (3a) we have

$$
\ln r (t) = u = u (0) + \int_ {0} ^ {t} \theta (s) d s
$$ since  $u(0) = \ln r(0) = \ln r_0$


$$
\ln r (t) = \ln r (0) + \int_ {0} ^ {t} \theta (s) d s
$$

Taking the exponential of both sides gives us

$$ r (t) = r _ {0} e ^ {\int_ {0} ^ {t} \theta (s) d s} \tag {16}
$$ showing that  $r(t) > 0$  since  $r(0) > 0$ . Therefore, if  $\theta (t) > 0$  the short rate in the KWF process can grow without bound and if  $\theta (t) < 0$  the short rate in the KWF process can decay to 0.


From equation (5) for the HL process the discrete approximation to equation (15b) is

$$ u _ {k + 1} = u _ {k} + \theta_ {k} \tau + \sigma_ {k} \varepsilon_ {k} \sqrt {\tau} \tag {17a}
$$ and the exponential of this equation gives the discrete approximation to equation (15a):


$$ r _ {k + 1} = r _ {k} e ^ {\theta_ {k} \tau + \sigma_ {k} \varepsilon_ {k} \sqrt {\tau}} \tag {17b}
$$

From equation (17b) and equation (16) we see that the numerical approximation to equation (15a) has similar properties to the solution to the HL SDE. That is, if  $\theta(t) > 0$  the short rate can grow without bound and if  $\theta(t) < 0$  the short rate can decay to 0.

# The Black-Karasinski Model

In the BK model we set  $f(r) = \ln r, p = -\phi$ , and  $g(r) = \ln r$  in equation (1) to obtain the SDE

$$ d \ln r = (\theta - \phi \ln r) d t + \sigma d z \tag {18a}
$$

We now work with equation (18a) using equation (7) for the HW process in a manner similar to how we used results from the HL process to develop the KWF process. If we let  $u = \ln r$  in equation (18a) we obtain

$$ d u = (\theta - \phi u) d t + \sigma d z \tag {18b}
$$ which is the HW process for  $u$ . Again, note that  $u$  has all the same properties as  $r$  in the HW model. Since  $r = e^u$  in the BK process,  $r > 0$ . This is the advantage the BK model has over the HW model. Therefore, we see that the BK process is an extension of the KWF process as the HW process is an extension of the HL process. The main difference is the BK is a lognormal extension of the lognormal KWF process. As a matter of fact, if  $\phi = 0$  the BK process reduces to the KWF process. Black and Karasinski introduced  $\phi$  to control the growth of the short rate in the KWF process.


From equation (9) we have

$$ u (t) = \frac {\theta}{\phi} + c e ^ {- \phi t}
$$ and after taking exponentials


$$ r (t) = e ^ {u (t)} = e ^ {\frac {\theta}{\phi} + c e ^ {- \phi t}} \tag {19}
$$

For  $\phi < 0$  we see that  $r$  grows without bound and that for  $\phi > 0$

$$
\lim _ {t \to \infty} r (t) = e ^ {\frac {\theta}{\phi}} = \mu
$$

The target rate for the BK process is the exponential of the target rate for the HW process.

As in the HW process, from equation (19) (or equations (9) and (10)) we see that

$$ c = \ln r _ {0} - \frac {\theta}{\phi} \tag {20}
$$ in the BK process. The closer the initial rate is to the target rate, the faster the BK process converges to the target rate. From equations (19) and (20) we see that if the initial short rate is the target rate, then  $r(t) = \mu$  for all  $t$  in the BK process, which is analogous to the HW process.


Given the target rate  $\mu$ , we can solve for the drift or the mean reversion similarly to equations (11) and (12) in the HW model. We have

$$
\theta = \phi \ln \mu \tag {21}
$$ and


$$
\phi = \frac {\theta}{\ln \mu} \tag {22}
$$

We discretize  $u = \ln r$  in equation (18b) just as we did for the HW SDEs and then let  $r = e^u$ . This is analogous to how we used the HL discrete process to get the KWF discrete process. The equations corresponding to equation (13) are

$$ u _ {k + 1} = u _ {k} + \left(\theta_ {k} - \phi_ {k} u _ {k}\right) \tau + \sigma_ {k} \varepsilon_ {k} \sqrt {\tau} \tag {23a}
$$ or after taking the exponential of both sides of equation (23a)


$$ r _ {k + 1} = r _ {k} e ^ {\left(\theta_ {k} - \varphi_ {k} \ln r _ {k}\right) \tau + \sigma_ {k} \varepsilon_ {k} \sqrt {\tau}} \tag {23b}
$$

For constant  $\theta$  and  $\phi$  (similarly to equation (14)), the solution to equation (23b) after eliminating the stochastic term is

$$ r _ {k} = e ^ {\alpha (1 - \phi r) ^ {k} + \frac {\theta}{\phi}} \tag {24}
$$

Note from equation (24) that

$$
\lim _ {k \to \infty} r _ {k} = e ^ {\frac {\theta}{\phi}} = \mu
$$ for  $0 < \phi \tau < 2$ . This is similar to the result we obtained from equation (14) for the HW SDEs.


# The Black-Derman-Toy Model

The Black-Derman-Toy (BDT) model is a lognormal model with mean reversion, but the mean reversion is endogenous to the model.

The mean reversion in the BDT model is determined by market conditions.

The equation describing the interest rate dynamics in the BDT model has  $f(r) = \ln r$  and  $g(r) = \ln r$  in equation (1) as in the BK model. Therefore, the short rate in the BDT model follows the lognormal process

$$ d \ln r + [ \theta (t) + \rho (t) \ln r ] d t + \sigma (t) d z
$$

However, in the BDT model  $\rho (t) = \frac{d}{dt}\ln \sigma (t) = \frac{\sigma'(t)}{\sigma(t)}$  giving us

$$ d \ln r = \left(\theta (t) + \frac {\sigma^ {\prime} (t)}{\sigma (t)} \ln r\right) d t + \sigma (t) d z \quad (2 5 a)
$$

Making the substitution  $u = \ln r$  leads to

$$ d u = \left(\theta (t) + \frac {\sigma^ {\prime} (t)}{\sigma (t)} u\right) d t + \sigma (t) d z \tag {25b}
$$

Notice the similarity in equations (25) and the equations (18) of the BK model. We expect

$$
\frac {\sigma^ {\prime} (t)}{\sigma (t)}
$$ to behave similarly to  $-\phi (t)$  in the BK model. This expression should give mean reversion in the short rate when it is negative. That is, we expect that if  $\sigma^{\prime}(t) < 0$  (implying  $\sigma (t)$  is decreasing) then the BDT model will give mean reversion. On the other hand, when  $\sigma^{\prime}(t) > 0$  (implying  $\sigma (t)$  is increasing) the short rates in the BDT model will grow with no mean reversion. If  $\sigma (t)$  is constant in the BDT model, then  $\sigma^{\prime}(t) = 0$  so  $\rho = 0$  and equation (25a) becomes the KWF model (equation (15)). Therefore, we will only study the case of varying local volatility for the BDT model.


Eliminating the stochastic term in equation (25) leads to

$$
\begin{array}{l} d \ln r = d u = \left(\theta (t) + \frac {\sigma^ {\prime} (t)}{\sigma (t)} u\right) d t \\ = \left(\theta (t) + \frac {\sigma^ {\prime} (t)}{\sigma (t)} \ln r\right) d t \tag {26} \\ \end{array}
$$

Solving this equation for  $u$ , as we did in the KF and BK models, gives us

$$ u (t) = \left[ \frac {u (0)}{\sigma (0)} + \int_ {0} ^ {t} \frac {\theta (s)}{\sigma (s)} d s \right] \sigma (t)
$$ or


$$ r (t) = e ^ {\left(\frac {\log (r _ {0})}{\sigma_ {0}} + \int_ {0} ^ {t} \frac {\theta (s)}{\sigma (s)} d s\right) \sigma (t)} = e ^ {\frac {\sigma (t) \log (r _ {0})}{\sigma_ {0}}} e ^ {\sigma (t) \int_ {0} ^ {t} \frac {\theta (s)}{\sigma (s)} d s}
$$ or


$$ r (t) = r _ {0} e ^ {\frac {\sigma (t) - \sigma_ {0} \log (r _ {0})}{\sigma_ {0}}} e ^ {\sigma (t) \int_ {0} ^ {t} \frac {\theta (s)}{\sigma (s)} d s} \tag {27}
$$

Note that the BDT mean short rate depends on the local volatility. If the local volatility has a decreasing structure, then the first exponential term in equation (27) has a negative exponent and will cause a decrease in the short rate and vice versa if the local volatility has an increasing structure. It is important to note that mean reversion in the BDT model comes from the local volatility structure (i.e., it is endogenous).

We now consider numerical solutions to the BDT process. To discretize equation (25a) for the BDT model we start off again by approximating  $du$  in equation (25b) by  $u$  to get

$$ u _ {k + 1} = u _ {k} + \left(\theta_ {k} + \rho_ {k} u _ {k}\right) \tau + \sigma_ {k} \varepsilon_ {k} \sqrt {\tau} \tag {28}
$$

The exponential of equation (28) gives us

$$ r _ {k + 1} = r _ {k} e ^ {\left[ \left(\theta_ {k} + \rho_ {k} \ln r _ {k}\right) \tau + \sigma_ {k} \varepsilon_ {k} \sqrt {\tau} \right]} \tag {29}
$$ where


$$
\rho_ {k} = \frac {\sigma_ {k} ^ {\prime}}{\sigma_ {k}}
$$

We approximate this term by

$$
\begin{array}{c} \underline {{\sigma_ {k + 1} - \sigma_ {k}}} \\ \hline \tau \\ \hline \sigma_ {k} \end{array}
$$

That is, we approximate  $\sigma_k^\prime$  by a discrete approximation to the derivative. We now have

$$ u _ {k + 1} = u _ {k} + \left(\theta_ {k} + \frac {\frac {\sigma_ {k + 1} - \sigma_ {k}}{\tau}}{\sigma_ {k}} u _ {k}\right) \tau + \sigma_ {k} \varepsilon_ {k} \sqrt {\tau}
$$ or


$$ u _ {k + 1} = \frac {\sigma_ {k + 1}}{\sigma_ {k}} u _ {k} + \theta_ {k} \tau + \sigma_ {k} \varepsilon_ {k} \sqrt {\tau} \tag {30}
$$

If the random term is 0 equation (30) becomes

$$ u _ {k + 1} = \frac {\sigma_ {k + 1}}{\sigma_ {k}} u _ {k} + \theta_ {k} \tau \tag {31}
$$

In particular, if

$$
\frac {\sigma_ {k + 1}}{\sigma_ {k}} = \alpha
$$ where  $\alpha$  is a constant then


$$ u _ {k} = \alpha^ {k} u _ {0} + \sum_ {j = 0} ^ {k - 1} \alpha^ {j} \theta_ {k - j - 1} \tau
$$

The exponential of this gives

$$ r _ {k} = r _ {0} e ^ {(\alpha^ {k} - 1) \ln r _ {0}} e ^ {\sum_ {j = 0} ^ {k - 1} \alpha^ {j} \theta_ {k - j - 1} \tau}
$$

This equation is interesting because  $\ln r_0 < 0$ . If  $\alpha > 1$  then the first exponential term decreases. When  $\theta < 0$  the second exponential term also decreases and the BDT short rate should approach a target rate. Conversely, when  $\theta > 0$  the second exponential term increases. In this case we can approach a target rate or the second term can dominate. If  $\alpha < 1$  then a similar situation arises. Therefore, in order to get meaningful numerical results for the BDT short rates we strongly recommend that  $\alpha$  be close to 1 and that the term structure of spot rates not have too large a slope.

The analysis of the equations without the stochastic term presented in this section is important. Recall that the characteristics of the random term are such that average influence of this term will be much smaller than the mean term in the SDEs. Consequently, the properties presented within this section will also hold under more general circumstances. The discrete approximations we developed for the models will be used to build the binomial and trinomial models in the next section. Note that we are highlighting the difference across the models and do not calibrate the models to market information.

For numerical reasons, the BK and HW models are best implemented in the trinomial framework. The HL, KWF, and BDT models are more easily implemented in the binomial framework. We will discuss the specifics of this in the next section. For the trinomial framework we use the approach of Hull and White (1994).

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/66256f4b-1176-4bdd-adf3-458dec1636a0/60b479e0cc55f80a6dcbff58adde76cd3afe247716395f57efe2f4cf1973516a.jpg)
Figure 1 Binomial Lattice

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/66256f4b-1176-4bdd-adf3-458dec1636a0/38986612a33426f1770f2c5405503e7c5d67195dee8f9a03b8fb67803cde5fc6.jpg)
Figure 2 Trinomial Lattice

# BINOMIAL AND TRINOMIAL SOLUTIONS TO THE STOCHASTIC DIFFERENTIAL EQUATIONS

In this section we present the binomial and trinomial lattice models that are obtained for the discretized versions of SDEs given in the previous section. The binomial method models the short rate in a geometrically analogous manner as equities.4 The up move has a probability  $q$  and so the down move has a probability of  $1 - q$ . We use  $q = 0.5$  within the framework of risk neutrality. This binomial process of two possible moves for the short rate in the next time period is then continued at each time to produce a binomial lattice of interest rates.

The trinomial model is similar in spirit to the binomial except there are three possible states emanating from each node. From each point in time we call the upward-most move the "up move," the downward-most move the "down move," and the center move the "middle move." The probabilities for an up move, middle move, and down move are given by  $q_{1}$ ,  $q_{2}$ , and  $q_{3}$  with  $q_{1} + q_{2} + q_{3} = 1$ .

Interest rate lattices should possess the property of recombination for them to be computationally tractable. That is, from any given node in the binomial model we will require an up move followed by a down move to get to the same point as a down move followed by an up move. This ensures that the number of nodes in the binomial lattice increase by only one at each time step. In the trinomial case recombination is a little more complicated. From any node in the trinomial lattice an up move followed by a down move will get to the same node as two successive middle moves and as a down move followed by an up move. This ensures that the number of nodes in the trinomial lattice increase by only two at each time step.


Figure 1 represents a binomial short rate lattice and Figure 2 represents a trinomial short rate lattice. The notation  $r_{j,k}$  is used to denote the short rate value at level  $j$  at time  $t_k$ . In the binomial lattice, an up move from  $r_{j,k}$  is given by  $r_{j,k+1}$  and a down move is given by  $r_{j+1,k+1}$ . At time  $t_k$  there are  $k+1$  possible values for the short rate in the binomial lattice. That is,  $j$  ranges from 1 to  $k+1$ . In the trinomial model, an up move, middle move, and down move from the short rate  $r_{j,k}$  are given by  $r_{j,k+1}, r_{j+1,k+1}$ , and  $r_{j+2,k+1}$ , respectively. In the trinomial model there are  $2k+1$  possible values for the short rate at time  $t_k$ . That is,  $j$  ranges from 1 to  $2k+1$ . The short rates forming the top of the lattice will be called the up state for the short rates and the short rates forming the bottom of the lattice will be called the down state for the short rates. For the binomial and trinomial model, the up state is the set of short rates  $r_{1,k}$  for  $0 \leq k \leq n$  and the down state for the binomial case is the set of short rates  $r_{k,k}$  for  $0 \leq k \leq n$ ; within the trinomial tree the down state is the set of short rates  $r_{2k+1,k}$  for  $0 \leq k \leq n$ .

# Hull-White Binomial Lattice

Since the HW model is a more general version of the HL model we present the binomial version only for the HW. In the HW binomial lattice the expressions for  $r_{j,k}$  that correspond to equation (13) are


$$ r _ {j, k + 1} = r _ {j, k} + \theta_ {k} \tau_ {k} - \phi_ {k} r _ {j, k} \tau_ {k} + \sigma_ {k} \sqrt {\tau} _ {k} \tag {32}
$$ for an up move and


$$ r _ {j + 1, k + 1} = r _ {j, k} + \theta_ {k} \tau_ {k} - \phi_ {k} r _ {j, k} \tau_ {k} - \sigma_ {k} \sqrt {\tau_ {k}} \tag {33}
$$ for a down move. (We are using  $\tau_{k}$  for  $\Delta t_{k}$ .)


These equations suggest that in order to have recombination the following must be true:

$$
\tau_ {k + 1} = \tau_ {k} \frac {4 \left(\frac {\sigma_ {k}}{\sigma_ {k + 1}}\right) ^ {2}}{\left[ 1 + \sqrt {1 + 4 \left(\frac {\sigma_ {k}}{\sigma_ {k + 1}}\right) ^ {2} \tau_ {k} \phi_ {k + 1}} \right] ^ {2}} \tag {34}
$$

Equation (34) illustrates that if you want a constant time step when the local volatility is constant, the mean reversion must be 0. The recombination requirement has put the stringent condition on the HW binomial lattice that the mean reversion is determined by the local volatility. To avoid this problem within the binomial framework we must allow the time step to vary with  $k$  in equations (32) through (34). As a matter of fact, for a constant time step,

$$
\phi_ {k + 1} = \frac {\sigma_ {k} - \sigma_ {k + 1}}{\sigma_ {k} \tau} \tag {35}
$$ which can also be solved for  $\sigma_{k + 1}$  to give


$$
\sigma_ {k + 1} = \sigma_ {k} \left(1 - \phi_ {k + 1} \tau\right) \tag {36}
$$

Equation (36) shows that the mean reversion can be used to match any given local volatility for a constant time step. If the local volatility is decreasing the mean reversion will be positive, and if the local volatility is increasing the mean reversion will be negative. We point out that if a variable time step is used, one does not have to have mean reversion match local volatility.

# Black-Karasinski Binomial Lattice

Since the BK model is a more general form of the KWF model, we only present the binomial version for the BK model. The expressions corre sponding to equations (32) and (33) of the HW model and from equation (23b) are


$$ r _ {j, k + 1} = r _ {j, k} e ^ {\left(\theta_ {k} - \phi_ {k} \ln (r _ {j, k})\right) \tau_ {k} + \sigma_ {k} \sqrt {\tau_ {k}}} \tag {37}
$$ for an up move and


$$ r _ {j + 1, k + 1} = r _ {j, k} e ^ {\left(\theta_ {k} - \phi_ {k} \ln (r _ {j, k})\right) \tau_ {k} - \sigma_ {k} \sqrt {\tau_ {k}}} \tag {38}
$$ for a down move.


Using equations (37) and (38) we can develop equations for the BK binomial lattice that are identical to equations (34) and (36) for the HW binomial lattice. This should be expected since the BK SDE is just a lognormal version of the HW SDE. A crucial point here is that we can use the HW and BK models to match local volatility and to compare results. It is important to point out that the HW and BK binomial lattices have a constant time step. If a variable time step is used, then interpolation is required to give the short rates at the fixed time steps. We do not offer this framework. Instead we present the HW and the BK models in the trinomial framework.

Within the binomial framework, the HW and BK models only approximate the distributional properties of their respective SDEs. The accuracy of the approximation is a function of the mean reversion. As the mean reversion increases, the accuracy decreases. Note that since the HL and KWF models have a zero mean reversion the distributional characteristics of their SDEs are perfectly matched within the binomial framework. This is the reason for using the trinomial method for the HW and BK models.

# The Trinomial Lattices

A better way to keep a constant time step and to match the appropriate distributional properties is to use a trinomial lattice instead of a binomial lattice. If we use a trinomial lattice for the HW SDEs, then from equation (13) we use

$$ r _ {j, k + 1} = r _ {j, k} + \theta_ {k} \tau - \phi_ {k} r _ {j, k} \tau + \alpha_ {k} \sigma_ {k} \sqrt {\tau} \tag {39a}
$$ for an up move,


$$ r _ {j + 2, k + 1} = r _ {j, k} + \theta_ {k} \tau - \phi_ {k} r _ {j, k} \tau - \alpha_ {k} \sigma_ {k} \sqrt {\tau} \tag {39b}
$$ for a down move, and


$$ r _ {j + 1, k + 1} = r _ {j, k} + \theta_ {k} \tau - \phi_ {k} r _ {j, k} \tau \tag {39c}
$$ for a middle move. Similarly, if we use a trinomial lattice for the BK SDEs then from equation (23b) we use


$$ r _ {j, k + 1} = r _ {j, k} e ^ {\left(\theta_ {k} - \phi_ {k} \ln (r _ {j, k})\right) \tau + \alpha_ {k} \sigma_ {k} \sqrt {\tau}} \tag {40a}
$$ for an up move,


$$ r _ {j + 2, k + 1} = r _ {j, k} e ^ {\left(\theta_ {k} - \phi_ {k} \ln (r _ {j, k})\right) \tau - \alpha_ {k} \sigma_ {k} \sqrt {\tau}} \tag {40b}
$$ for a down move, and


$$ r _ {j + 1, k + 1} = r _ {j, k} e ^ {\left(\theta_ {k} - \phi_ {k} \ln (r _ {j, k})\right) \tau} \tag {40c}
$$ for a middle move.


Note that a constant time step is now used. The expression  $\alpha_{k}$  is used to guarantee recombination. The probabilities of an up, middle, and down move are chosen to give the correct variance.

# The No Arbitrage Equations

The procedure to generate the no arbitrage equations for the binomial and trinomial lattices is outlined in the appendix. The no arbitrage polynomial for the short rates in the binomial tree is given by

$$ f _ {i} = c _ {1, i} \prod_ {j = 1} ^ {i} \left(1 + r _ {j, i} \tau\right) + \sum_ {m = 1} ^ {i} c _ {m + 1, i} \prod_ {\substack {n = 1 \\ n \neq m}} ^ {i} \left(1 + r _ {n, i} \tau\right) \tag{41}
$$ where, for  $i\geq 3$


$$ a _ {1, i} = \prod_ {n = 0} ^ {i - 1} \prod_ {m = 1} ^ {i} (1 + r _ {m, n} \tau)
$$

$$
\begin{array}{l l} a _ {2, i} = b _ {1, i - 1}, a _ {j, i} = b _ {j - 2, i - 1} + b _ {j - 1, i - 1}, & \text {f o r} \\ j = 3, \ldots , i, a _ {i + 1, j} = b _ {i - 1, i - 1}, \quad \text {a n d} & c _ {1, i} = \\ P _ {i + 1} a _ {1, i}, c _ {j + 1, i} = q ^ {i - j} (1 - q) ^ {j - 1} a _ {j + 1, i} & \text {f o r} \\ j = 1, \ldots , i. \end{array}
$$

We solve equation (41) for  $\theta_{i}$  by setting  $f_{i} = 0$ . We then use  $\theta_{i}$  to compute  $r_{j,i}$  for  $j = 1,\dots ,i$  at the ith period. The bisection method will converge quickly because there is only one root between  $-1$  and 1 for the HW binomial lattice and one root between 0 and 1 for the BK binomial lattice.


After generating the new rates we let

$$ b_{j,i} = \alpha_{j + 1,i}\prod_{\substack{m = 1\\ m\neq j}}^{i}(1 + r_{m,i}\tau)
$$

For the variable time step,  $\tau_{i}$  we replace the terms  $(1 + r_{j,i}\tau)$  by  $(1 + r_{j,i}\tau)^{\tau_i / \tau}$  and the terms  $(1 + r_{n,i}\tau)$  by

$$
(1 + r _ {n, i} \tau) ^ {\tau_ {i} / \tau}
$$ in equation (41).


Similarly, the no arbitrage polynomial for the trinomial trees is given by

$$ f _ {i} = c _ {1, i} \prod_ {j = 1} ^ {2 i - 1} \left(1 + r _ {j, i} \tau\right) + \sum_ {m = 1} ^ {2 i - 1} c _ {m + 1, i} \prod_ {\substack {n = 1 \\ n \neq m}} ^ {2 i - 1} \left(1 + r _ {n, i} \tau\right) \tag{42}
$$ where we first let


$$ a _ {1, i} = \prod_ {j = 1} ^ {2 i - 3} (1 + r _ {j, i} \tau)
$$

$$
\begin{array}{l} a _ {2, i} = q _ {1} b _ {1, i - 1} a _ {2, i - 1,} a _ {3, i} = q _ {2} b _ {1, i - 1} a _ {2, i - 1} \\ + q _ {1} b _ {2, i - 1} a _ {3, i - 1} \\ \end{array}
$$

$$
\begin{array}{c} a _ {j, i} = q _ {3} b _ {j - 3, i - 1} a _ {j - 2, i - 1,} + q _ {2} b _ {j - 2, i - 1} a _ {j - 1 + q _ {1} b _ {j - 1} i - 1} a _ {j, i - 1}, \\ \text {f o r} j = 4, \ldots , 2 i - 2, \end{array}
$$

$$
\begin{array}{l} a _ {2 i - 1, i} = q _ {3} b _ {2 i - 4, i - 1} a _ {2 i - 3, i - 1} + q _ {2} b _ {2 i - 3, i - 1} a _ {2 i - 2, i - 1}, a _ {2 i, i} \\ = q _ {3} b _ {2 i - 3, i - 1} a _ {2 i - 2, i - 1} \\ \end{array}
$$ and then let


$$ c _ {1, i} = P _ {i + 1} a _ {1, i}, c _ {j, i} = a _ {j, i} \text {f o r} j = 2, \dots , 2 i + 1
$$

We solve equation (42) for  $\theta_{i}$  by setting  $f_{i} = 0$  using the bisection method. From this the short rates for either the HW or BK trinomial lattices are determined at step  $i$ . We then let

$$ b_{n} = \prod_{\substack{j = 1\\ j\neq n}}^{2i - 1}(1 + r_{j,i}\tau)
$$ for  $n = 1,\dots ,2i - 1$  and then repeat the process. In these derivations  $P_{i} = 1 / (1 + R_{i}\tau)^{i}$  is the discount factor given by the spot rates (zero curve).


# The Hull and White Lattice

We now briefly outline the Hull and White methodology for generating HW and BK trinomial lattices. The Hull and White methodology uses

$$ r _ {j, k} = x + \left(j _ {k}\right) \Delta \rho \tag {43}
$$ for the HW trinomial lattice short rates and


$$ r _ {j, k} = e ^ {[ x + (j _ {k}) \Delta \rho ]} \tag {44}
$$ for the BK trinomial lattice short rates.


They choose  $\Delta \rho = \sigma \sqrt{3\tau}$  to minimize numerical error and introduce the mean reversion through the probabilities  $q_{1}, q_{2},$  and  $q_{3}$ . Specifically, they use

$$ q _ {1} = \frac {1}{6} + \frac {(j _ {k}) ^ {2} \phi^ {2} \tau^ {2} + (j _ {k}) \phi \tau}{2}
$$

$$ q _ {2} = \frac {2}{3} - (j _ {k}) ^ {2} \phi^ {2} \tau^ {2}
$$ and


$$ q _ {3} = \frac {1}{6} + \frac {(j _ {k}) ^ {2} \phi^ {2} \tau^ {2} - (j _ {k}) \phi \tau}{2}
$$ for the up, middle, and down moves at  $r_{j,k}$ , respectively, since this matches the expected change and variance of the short rate over the next time period. However, as they point out, these probabilities must remain positive. In order to do this they "prune" the upper and lower branches of their lattice at the level  $j$  that keeps these probabilities positive. Since  $q_{2}$  is the only one that can become negative they require the following


$$ j <   \frac {\sqrt {6}}{3 \phi \tau} \approx \frac {0 . 8 1 6}{\phi \tau}
$$

At this maximum value of  $j$ , Hull and White apply a different branching procedure with different probabilities in order to "prune" the lattice. However, as they point out, using this value of  $j$  can lead to computational problems so they actually use the first  $j$  satisfying

$$ j _ {k} > \frac {3 - \sqrt {6}}{3 \phi \tau} \approx \frac {0 . 1 8 4}{\phi \tau}
$$

This leads to a reduction in the spread of the rates.

# COMPARATIVE STUDY OF THE NUMERICAL SOLUTIONS

In this section a comparison between the methodologies is presented. In particular, we look at the effects of mean reversion and local volatility on the drift and the spread in the short rates. We present numerical results for the term structures, volatility, and mean reversion in Table 1. The table also includes the bond information for use later.

# Original Term Structure with No Mean Reversion

We first consider the original term structure with no mean reversion for the HL and HW models. In Figure 3 we present the binomial tree for the HL model and the trinomial for the HW model using the HW trinomial methodology. We use a  $10\%$  volatility throughout the trees. We see that the spread in the short rates increases over time in the models as expected.

Table 1 Input Information

<table><tr><td>Original TS</td><td>Volatility</td><td>Mean
Reversion</td></tr><tr><td>6.20\%</td><td>10.00\%</td><td>5\%</td></tr><tr><td>6.16\%</td><td>10.00\%</td><td></td></tr><tr><td>6.15\%</td><td>9.00\%</td><td></td></tr><tr><td>6.09\%</td><td>9.00\%</td><td></td></tr><tr><td>6.02\%</td><td>8.00\%</td><td></td></tr><tr><td>6.02\%</td><td>8.00\%</td><td></td></tr><tr><td>6.01\%</td><td>7.00\%</td><td></td></tr><tr><td>6.01\%</td><td>7.00\%</td><td></td></tr><tr><td>6.00\%</td><td>7.00\%</td><td></td></tr><tr><td>6.01\%</td><td>7.00\%</td><td></td></tr><tr><td colspan="3">Bond Information for ED, EC, and OAS</td></tr><tr><td colspan="2">Call Price (Regular Callable)</td><td>\$102.50</td></tr><tr><td colspan="2">Put Price (Regular Putable)</td><td>\$95.00</td></tr><tr><td colspan="2">Annual Coupon ($ per $100)</td><td>6.00</td></tr><tr><td colspan="2">Time Option Starts (years from now)</td><td>1</td></tr></table> a. The Ho-Lee Interest Rate Lattice


<table><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>136.31\%</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td>85.20\%</td><td>101.50\%</td><td>98.42\%</td><td>116.31\%</td></tr><tr><td></td><td></td><td></td><td></td><td>54.99\%</td><td>69.85\%</td><td>81.50\%</td><td>78.42\%</td><td>96.31\%</td><td></td></tr><tr><td></td><td></td><td></td><td>41.49\%</td><td>34.99\%</td><td>49.85\%</td><td>61.50\%</td><td>58.42\%</td><td>76.31\%</td><td></td></tr><tr><td></td><td>17.05\%</td><td>28.93\%</td><td>21.49\%</td><td>29.85\%</td><td>45.20\%</td><td>41.50\%</td><td>38.42\%</td><td>56.31\%</td><td></td></tr><tr><td>6.20\%</td><td>-2.95\%</td><td>8.93\%</td><td>1.49\%</td><td>25.20\%</td><td>21.50\%</td><td>18.42\%</td><td>18.42\%</td><td>36.31\%</td><td></td></tr><tr><td></td><td></td><td>-11.07\%</td><td>-18.51\%</td><td>-5.01\%</td><td>5.20\%</td><td>1.50\%</td><td>-1.58\%</td><td>16.31\%</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td>-10.15\%</td><td>-14.80\%</td><td>-18.50\%</td><td>-21.58\%</td><td>-3.69\%</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td>-30.15\%</td><td>-34.80\%</td><td>-38.50\%</td><td>-41.58\%</td><td>-23.69\%</td><td></td></tr><tr><td>Time in Years</td><td>0.0</td><td>1.0</td><td>2.0</td><td>3.0</td><td>4.0</td><td>5.0</td><td>6.0</td><td>7.0</td><td>8.0</td></tr></table> b. The Hull-White Trinomial Interest Rate Lattice Using the HW Method with No Mean Reversion


<table><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>203.31\%</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>172.58\%</td><td>185.99\%</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td>142.30\%</td><td>155.26\%</td><td>168.67\%</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td>131.70\%</td><td>124.98\%</td><td>137.94\%</td><td>151.35\%</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td>114.38\%</td><td>107.66\%</td><td>120.62\%</td><td>134.03\%</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td>84.92\%</td><td>90.46\%</td><td>97.06\%</td><td>90.34\%</td><td>103.30\%</td><td>116.71\%</td></tr><tr><td></td><td></td><td></td><td>63.71\%</td><td>67.60\%</td><td>73.14\%</td><td>79.74\%</td><td>73.02\%</td><td>85.98\%</td><td>99.39\%</td></tr><tr><td></td><td></td><td>43.65\%</td><td>46.38\%</td><td>50.28\%</td><td>55.82\%</td><td>62.42\%</td><td>55.70\%</td><td>68.66\%</td><td>82.07\%</td></tr><tr><td></td><td>24.39\%</td><td>26.33\%</td><td>29.06\%</td><td>32.96\%</td><td>38.50\%</td><td>45.10\%</td><td>38.38\%</td><td>51.34\%</td><td>64.75\%</td></tr><tr><td>6.20\%</td><td>7.07\%</td><td>9.01\%</td><td>11.74\%</td><td>15.64\%</td><td>21.18\%</td><td>27.78\%</td><td>21.06\%</td><td>34.02\%</td><td>47.43\%</td></tr><tr><td></td><td>-10.25\%</td><td>-8.31\%</td><td>-5.58\%</td><td>-1.68\%</td><td>3.86\%</td><td>10.46\%</td><td>3.74\%</td><td>16.70\%</td><td>30.11\%</td></tr><tr><td></td><td></td><td>-25.63\%</td><td>-22.90\%</td><td>-19.00\%</td><td>-13.46\%</td><td>-6.86\%</td><td>-13.58\%</td><td>-0.62\%</td><td>12.79\%</td></tr><tr><td></td><td></td><td></td><td>-40.22\%</td><td>-36.32\%</td><td>-30.78\%</td><td>-24.18\%</td><td>-30.90\%</td><td>-17.94\%</td><td>-4.53\%</td></tr><tr><td></td><td></td><td></td><td></td><td>-53.64\%</td><td>-48.10\%</td><td>-41.50\%</td><td>-48.22\%</td><td>-35.26\%</td><td>-21.85\%</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td>-65.42\%</td><td>-58.83\%</td><td>-65.54\%</td><td>-52.58\%</td><td>-39.18\%</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td>-76.15\%</td><td>-82.86\%</td><td>-69.90\%</td><td>-56.50\%</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>-100.18\%</td><td>-87.22\%</td><td>-73.82\%</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>-104.54\%</td><td>-91.14\%</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>-108.46\%</td></tr><tr><td>Time in Years</td><td>0.0</td><td>1.0</td><td>2.0</td><td>3.0</td><td>4.0</td><td>5.0</td><td>6.0</td><td>7.0</td><td>8.0</td></tr></table>

Figure 3 The HL Binomial and HW Trinomial Trees for the Original Term Structure with No Mean Reversion

We also see that the HL model can give negative short rates.

In Figure 4 we present the binomial tree for the KWF model, the trinomial for the BK model using the HW trinomial methodology, and the BDT binomial model. The KWF and BK models use the  $10\%$  volatility throughout the tree and no mean reversion. Note the volatile nature of the BDT model. This is due to the time varying volatility structure and the way mean reversion is incorporated into the BDT model through this decreasing volatility structure. Note that all the short rates are positive and that the spread in the rates is significantly less than in Figure 3.


a. The Kalotay, Williams, and Fabozzi Interest Rate Lattice

<table><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>12.92\%</td><td>14.72\%</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td>9.76\%</td><td>10.65\%</td><td>9.72\%</td><td>10.58\%</td><td>12.05\%</td></tr><tr><td></td><td></td><td></td><td></td><td>7.89\%</td><td>8.43\%</td><td>7.99\%</td><td>8.72\%</td><td>7.96\%</td><td>8.66\%</td><td>9.87\%</td></tr><tr><td></td><td></td><td>6.73\%</td><td>7.44\%</td><td>6.46\%</td><td>6.90\%</td><td>6.54\%</td><td>7.14\%</td><td>6.52\%</td><td>7.09\%</td><td>6.61\%</td></tr><tr><td></td><td>6.20\%</td><td>6.09\%</td><td>5.51\%</td><td>5.29\%</td><td>5.65\%</td><td>5.36\%</td><td>5.84\%</td><td>5.34\%</td><td>5.81\%</td><td>5.41\%</td></tr><tr><td></td><td></td><td></td><td>4.98\%</td><td>4.33\%</td><td>4.62\%</td><td>4.39\%</td><td>4.78\%</td><td>4.37\%</td><td>4.75\%</td><td>4.43\%</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td>3.79\%</td><td>3.59\%</td><td>3.92\%</td><td>3.58\%</td><td>3.89\%</td><td>3.63\%</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>3.21\%</td><td>3.19\%</td><td>2.93\%</td><td>2.97\%</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>2.61\%</td><td>2.43\%</td></tr><tr><td>Time in Years</td><td>0.0</td><td>1.0</td><td>2.0</td><td>3.0</td><td>4.0</td><td>5.0</td><td>6.0</td><td>7.0</td><td>8.0</td><td>9.0</td></tr></table> b. The Black-Karasinski Trinomial Interest Rate Lattice Using the HW Method with No Mean Reversion


<table><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>28.45\%</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>19.82\%</td><td>23.21\%</td><td>23.92\%</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td>14.08\%</td><td>16.52\%</td><td>16.67\%</td><td>16.41\%</td><td>20.12\%</td></tr><tr><td></td><td></td><td></td><td></td><td>11.31\%</td><td>11.84\%</td><td>11.68\%</td><td>11.79\%</td><td>11.61\%</td><td>11.97\%</td><td></td></tr><tr><td></td><td></td><td></td><td>9.82\%</td><td>9.51\%</td><td>9.96\%</td><td>9.83\%</td><td>9.92\%</td><td>9.76\%</td><td>10.06\%</td><td></td></tr><tr><td></td><td></td><td>8.60\%</td><td>8.26\%</td><td>8.00\%</td><td>8.37\%</td><td>8.26\%</td><td>8.34\%</td><td>8.21\%</td><td>8.46\%</td><td></td></tr><tr><td></td><td>7.25\%</td><td>7.23\%</td><td>6.95\%</td><td>6.73\%</td><td>7.04\%</td><td>6.95\%</td><td>7.01\%</td><td>6.90\%</td><td>7.12\%</td><td></td></tr><tr><td></td><td>6.09\%</td><td>6.08\%</td><td>5.75\%</td><td>5.66\%</td><td>5.92\%</td><td>5.84\%</td><td>5.90\%</td><td>5.81\%</td><td>5.98\%</td><td></td></tr><tr><td></td><td>5.12\%</td><td>5.11\%</td><td>4.91\%</td><td>4.76\%</td><td>4.98\%</td><td>4.91\%</td><td>4.96\%</td><td>4.88\%</td><td>5.03\%</td><td></td></tr><tr><td></td><td></td><td>4.30\%</td><td>4.13\%</td><td>4.00\%</td><td>4.19\%</td><td>4.13\%</td><td>4.17\%</td><td>4.11\%</td><td>4.23\%</td><td></td></tr><tr><td></td><td></td><td></td><td>3.47\%</td><td>3.37\%</td><td>3.52\%</td><td>3.48\%</td><td>3.51\%</td><td>3.45\%</td><td>3.56\%</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td>2.83\%</td><td>2.96\%</td><td>2.92\%</td><td>2.95\%</td><td>2.90\%</td><td>2.99\%</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td>2.49\%</td><td>2.46\%</td><td>2.48\%</td><td>2.44\%</td><td>2.52\%</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td>2.07\%</td><td>2.09\%</td><td>2.05\%</td><td>2.12\%</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>1.75\%</td><td>1.73\%</td><td>1.78\%</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>1.45\%</td><td>1.50\%</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>1.26\%</td><td></td></tr><tr><td>Time in Years</td><td>0.0</td><td>1.0</td><td>2.0</td><td>3.0</td><td>4.0</td><td>5.0</td><td>6.0</td><td>7.0</td><td>8.0</td><td>9.0</td></tr></table> different from those shown in Figures 3 and 4. This is a peculiarity of the Hull and White methodology. The pruning is a result of incorporating mean reversion into the model and ensuring that the distributional characteristics of the SDEs are retained.

Figure 4 The BDT and KWF Binomial and the BK Trinomial Trees for the Original Term Structure with No Mean Reversion

Table 2 presents the trinomial lattices for the HW and BK models using the information in Table 1 and a mean reversion of  $5\%$ . The volatility is  $10\%$ . Notice the pruning that takes place within the lattice when we have mean reversion. This produces lattices that are significantly


c. The Black, Derman, and Toy Interest Rate Model

<table><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>10.29\%</td><td>11.39\%</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td>9.52\%</td><td>6.47\%</td><td>8.93\%</td><td>9.89\%</td><td></td></tr><tr><td></td><td></td><td></td><td></td><td>7.12\%</td><td>7.36\%</td><td>8.10\%</td><td>6.34\%</td><td>7.76\%</td><td>8.59\%</td><td></td></tr><tr><td></td><td></td><td></td><td>7.24\%</td><td>6.79\%</td><td>6.90\%</td><td>6.21\%</td><td>6.74\%</td><td>7.46\%</td><td></td><td></td></tr><tr><td></td><td></td><td>7.44\%</td><td>6.30\%</td><td>6.78\%</td><td>6.26\%</td><td>6.08\%</td><td>5.85\%</td><td>6.47\%</td><td></td><td></td></tr><tr><td>6.20\%</td><td>6.73\%</td><td>6.09\%</td><td>5.49\%</td><td>5.66\%</td><td>5.77\%</td><td>5.95\%</td><td>5.09\%</td><td>5.62\%</td><td></td><td></td></tr><tr><td></td><td>5.51\%</td><td>4.98\%</td><td>4.78\%</td><td>4.73\%</td><td>5.32\%</td><td>5.83\%</td><td>4.42\%</td><td>4.88\%</td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td>3.95\%</td><td>4.91\%</td><td>3.63\%</td><td>5.71\%</td><td>4.24\%</td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>3.84\%</td><td>3.68\%</td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>3.33\%</td><td>3.20\%</td><td></td><td></td></tr><tr><td>Time in Years</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td></td></tr></table>

Figure 4 (Continued)
Table 2 Trinomial Model

<table><tr><td colspan="10">a. The Hull-White Trinomial Interest Rate Lattice Using the HW Method with Mean Reversion of 5\%</td></tr><tr><td></td><td></td><td></td><td></td><td>83.50\%</td><td>87.60\%</td><td>91.92\%</td><td>96.84\%</td><td>101.89\%</td><td>107.24\%</td></tr><tr><td></td><td></td><td></td><td>63.14\%</td><td>66.18\%</td><td>70.28\%</td><td>74.60\%</td><td>79.52\%</td><td>84.57\%</td><td>89.91\%</td></tr><tr><td></td><td></td><td>43.51\%</td><td>45.82\%</td><td>48.86\%</td><td>52.96\%</td><td>57.28\%</td><td>62.20\%</td><td>67.25\%</td><td>72.59\%</td></tr><tr><td rowspan="3">6.20\%</td><td>24.39\%</td><td>26.18\%</td><td>28.50\%</td><td>31.54\%</td><td>35.64\%</td><td>39.96\%</td><td>44.88\%</td><td>49.93\%</td><td>55.27\%</td></tr><tr><td>7.07\%</td><td>8.86\%</td><td>11.17\%</td><td>14.22\%</td><td>18.32\%</td><td>22.64\%</td><td>27.56\%</td><td>32.61\%</td><td>37.95\%</td></tr><tr><td>-10.25\%</td><td>-8.46\%</td><td>-6.15\%</td><td>-3.10\%</td><td>1.00\%</td><td>5.32\%</td><td>10.24\%</td><td>15.29\%</td><td>20.63\%</td></tr><tr><td></td><td></td><td>-25.78\%</td><td>-23.47\%</td><td>-20.42\%</td><td>-16.32\%</td><td>-12.00\%</td><td>-7.09\%</td><td>-2.03\%</td><td>3.31\%</td></tr><tr><td></td><td></td><td></td><td>-40.79\%</td><td>-37.75\%</td><td>-33.64\%</td><td>-29.32\%</td><td>-24.41\%</td><td>-19.35\%</td><td>-14.01\%</td></tr><tr><td></td><td></td><td></td><td></td><td>-55.07\%</td><td>-50.96\%</td><td>-46.64\%</td><td>-41.73\%</td><td>-36.67\%</td><td>-31.33\%</td></tr><tr><td>Time in Years</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td></tr></table> b. The Black-Karasinski Trinomial Interest Rate Lattice Using the HW Method with Mean Reversion of  $5\%$


<table><tr><td></td><td></td><td></td><td></td><td>11.34\%</td><td>11.87\%</td><td>11.73\%</td><td>11.84\%</td><td>11.67\%</td><td>12.03\%</td></tr><tr><td></td><td></td><td></td><td>9.83\%</td><td>9.53\%</td><td>9.99\%</td><td>9.86\%</td><td>9.96\%</td><td>9.81\%</td><td>10.12\%</td></tr><tr><td></td><td></td><td>8.60\%</td><td>8.27\%</td><td>8.02\%</td><td>8.40\%</td><td>8.29\%</td><td>8.38\%</td><td>8.25\%</td><td>8.51\%</td></tr><tr><td rowspan="3">6.20\%</td><td>7.25\%</td><td>7.26\%</td><td>6.95\%</td><td>6.74\%</td><td>7.06\%</td><td>6.98\%</td><td>7.04\%</td><td>6.94\%</td><td>7.16\%</td></tr><tr><td>6.09\%</td><td>6.08\%</td><td>5.85\%</td><td>5.67\%</td><td>5.94\%</td><td>5.87\%</td><td>5.92\%</td><td>5.84\%</td><td>6.02\%</td></tr><tr><td>5.12\%</td><td>5.11\%</td><td>4.92\%</td><td>4.77\%</td><td>4.99\%</td><td>4.93\%</td><td>4.98\%</td><td>4.91\%</td><td>5.06\%</td></tr><tr><td></td><td></td><td>4.30\%</td><td>4.14\%</td><td>4.01\%</td><td>4.20\%</td><td>4.15\%</td><td>4.19\%</td><td>4.13\%</td><td>4.26\%</td></tr><tr><td></td><td></td><td></td><td>3.48\%</td><td>3.37\%</td><td>3.53\%</td><td>3.49\%</td><td>3.52\%</td><td>3.47\%</td><td>3.58\%</td></tr><tr><td></td><td></td><td></td><td></td><td>2.84\%</td><td>2.97\%</td><td>2.93\%</td><td>2.96\%</td><td>2.92\%</td><td>3.01\%</td></tr><tr><td>Time in Years</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td></tr></table>

Table 3 Effective Duration and Effective Convexity Results

<table><tr><td>Shift==&gt;</td><td colspan="2">-500 bp</td><td colspan="2">-250 bp</td><td colspan="2">Current</td><td colspan="2">250 bp</td><td colspan="2">500 bp</td></tr><tr><td>Model/Structure</td><td>Eff.Duration</td><td>Eff.Convexity</td><td>Eff.Duration</td><td>Eff.Convexity</td><td>Eff.Duration</td><td>Eff.Convexity</td><td>Eff.Duration</td><td>Eff.Convexity</td><td>Eff.Duration</td><td>Eff.Convexity</td></tr><tr><td>Ho Lee</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Callable Bond</td><td>3.72119</td><td>-31.15230</td><td>3.62427</td><td>10.51371</td><td>3.43354</td><td>9.58153</td><td>4.19081</td><td>-6.18888</td><td>4.18588</td><td>12.92063</td></tr><tr><td>Putable Bond</td><td>6.48070</td><td>55.51213</td><td>5.96968</td><td>26.45835</td><td>4.82856</td><td>41.73014</td><td>4.33750</td><td>17.68955</td><td>3.52379</td><td>15.98202</td></tr><tr><td>BDT</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Callable Bond</td><td>0.98815</td><td>0.97643</td><td>0.96433</td><td>0.92992</td><td>5.72746</td><td>-100.52077</td><td>6.97619</td><td>31.91884</td><td>6.59872</td><td>29.24115</td></tr><tr><td>Putable Bond</td><td>8.15290</td><td>41.20380</td><td>7.75444</td><td>37.88876</td><td>6.94320</td><td>136.25219</td><td>0.91997</td><td>0.84634</td><td>0.89929</td><td>0.80871</td></tr><tr><td>KWF</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Callable Bond</td><td>0.98815</td><td>0.97643</td><td>0.96433</td><td>0.92992</td><td>5.48099</td><td>-8.70115</td><td>6.90354</td><td>18.94888</td><td>6.59875</td><td>29.22747</td></tr><tr><td>Putable Bond</td><td>8.15311</td><td>41.26110</td><td>7.75438</td><td>37.97492</td><td>6.02987</td><td>132.82680</td><td>0.91997</td><td>0.84634</td><td>0.89929</td><td>0.80871</td></tr><tr><td>HW-HW</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Callable Bond</td><td>3.35706</td><td>5.81085</td><td>3.24446</td><td>8.80890</td><td>3.33140</td><td>9.55382</td><td>3.46677</td><td>-9.19552</td><td>4.65946</td><td>14.99510</td></tr><tr><td>Putable Bond</td><td>5.82483</td><td>23.71025</td><td>5.33913</td><td>20.81987</td><td>4.79375</td><td>17.78372</td><td>4.14647</td><td>14.50538</td><td>3.30034</td><td>10.76225</td></tr><tr><td>BK-HW</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Callable Bond</td><td>0.98815</td><td>0.97643</td><td>0.96433</td><td>0.92992</td><td>5.21624</td><td>-77.28716</td><td>6.93694</td><td>31.17366</td><td>6.56855</td><td>28.88729</td></tr><tr><td>Putable Bond</td><td>8.09134</td><td>40.58931</td><td>7.70100</td><td>37.39723</td><td>6.79269</td><td>72.05773</td><td>0.91997</td><td>0.84634</td><td>0.89929</td><td>0.80871</td></tr></table>

# Comparison of the Models Using Common Risk and Value Metrics

Here we contrast the effective duration, effective convexity, and the option-adjusted spread (OAS) for 10-year callable and putable bonds each with a one-year delay on the embedded option. The information in Table 1 is used for the analysis. We computed the effective duration for the original term structures shown in Table 1 using a yield change of 25 basis points. The original term structure is then shifted up and down in a parallel manner by  $\pm 250$  basis points and by  $\pm 500$  basis points, respectively. In other words, we computed the effective duration at five different term structure levels using a yield change of 25 basis points.

Table 3 presents the effective duration and convexity results for the two securities for each model. The results are interesting. It is clear that the normal models do not agree with the lognormal models. Specifically, the normal models do not match the characteristics of the price yield relationship at extreme interest rate levels. Furthermore, each model gives slightly different results. This is an important finding and must be appreciated by any user of these models.


Table 4 presents the OAS results. We used a market price that is  $3\%$  below the model price for the OAS computation. They are consistent with the results in Table 3. Note that the normal models produce OAS values larger than any of the lognormal models. This is due to the distributional differences and the property of allowing very low and negative interest rates. Clearly, normal models are not desirable when evaluating securities with embedded options.[8]

# APPENDIX

In this appendix we outline how to obtain equations (41) and (42). For equation (41) we use Figure 1. For equation (42) we use Figure 2.

Table 4 Option-Adjusted Spread Results

<table><tr><td></td><td>Ho-Lee</td><td>BDT</td><td>KWF</td><td>HW-HW</td><td>BK-HW</td></tr><tr><td>Callable Bond</td><td>0.8454\%</td><td>0.4785\%</td><td>0.5449\%</td><td>0.8350\%</td><td>0.5063\%</td></tr><tr><td>Putable Bond</td><td>0.5884\%</td><td>0.4732\%</td><td>0.5249\%</td><td>0.5688\%</td><td>0.4774\%</td></tr></table>

We first solve for  $r_{1,1}$  and  $r_{2,1}$  in Figure 1. Equating the price from the spot rate term structure with the price from the binomial lattice gives us

$$
P _ {2} = \frac {1}{\left(1 + R _ {2} \tau\right) ^ {2}} = \frac {q p _ {1 , 1} + (1 - q) p _ {2 , 1}}{1 + r _ {1 , 0} \tau} \quad (\mathrm {A} 1)
$$

Substituting in the discount factors  $p_{j,1} = 1 / (1 + r_{j,1}\tau)$  for  $j = 1,2$  and clearing fractions we obtain

$$
\begin{array}{l} P _ {2} \left(1 + r _ {1, 0} \tau\right) \left(1 + r _ {1, 1} \tau\right) \left(1 + r _ {2, 1} \tau\right) \\ - q \left(1 + r _ {2, 1} \tau\right) - (1 - q) \left(1 + r _ {1, 1} \tau\right) = 0 \tag {A2} \\ \end{array}
$$

We let  $r_{1,0} = R_1$ . This equation can now be solved for  $\theta_{1}$ .

For the next period in the binomial lattice we have from Figure 1 that

We now introduce some variables that will help to generate the coefficients  $c_{i,k}$  for the polynomials that determine the interest rates at time period  $k$ . We start by doing it for the polynomials in equations (A4) and (A5). This is done in two steps. The first step is to notice how the coefficients are related to the interest rates at the previous time periods. Note that if we let  $a_{1,1} = 1 + r_{1,0}\tau$ ,  $a_{2,1} = -1$ , and  $a_{3,1} = -1$  then  $c_{1,1} = P_2a_{1,1}$ ,  $c_{2,1} = qa_{2,1}$ , and  $c_{3,1} = (1 - q)a_{3,1}$  in equation (A4). In order to generate equation (A5) we first let  $b_{1,1} = a_{2,1}(1 + r_{2,1}\tau)$ ,  $b_{2,1} = a_{3,1}(1 + r_{1,1}\tau)$ . We can then generate  $a_{1,2} = (1 + r_{1,0}\tau)(1 + r_{1,1}\tau)(1 + r_{2,1}\tau)$ ,  $a_{2,2} = b_{1,1}$ ,  $a_{3,2} = b_{1,1} + b_{2,1}$ , and  $a_{4,2} = b_{2,1}$ . It is now seen that  $c_{1,2} = P_3a_{1,2}$ ,  $c_{2,2} = q^2a_{2,2}$ ,  $c_{3,2} = q(1 - q)a_{3,3}$ , and  $c_{4,2} = (1 - q)^2a_{4,2}$ . We now let  $b_{1,2} = a_{3,1}(1 + r_{2,2}\tau)$

$$
P _ {3} = \frac {1}{\left(1 + R _ {3} \tau\right) ^ {3}} = \frac {q p _ {1 , 1} + (1 - q) p _ {2 , 1}}{1 + r _ {1 , 0} \tau} = \frac {q \left(\frac {q p _ {1 , 2} + (1 - q) p _ {2 , 2}}{1 + r _ {1 , 1} \tau}\right) + (1 - q) \left(\frac {q p _ {2 , 2} + (1 - q) p _ {3 , 2}}{1 + r _ {2 , 1} \tau}\right)}{1 + r _ {1 , 0} \tau}
$$ which reduces to


$$
\begin{array}{l} P _ {3} \left(1 + r _ {1, 0} \tau\right) \left(1 + r _ {1, 1} \tau\right) \left(1 + r _ {2, 1} \tau\right) \left(1 + r _ {1, 2} \tau\right) \\ \times (1 + r _ {2, 2} \tau) (1 + r _ {3, 2} \tau) \\ \end{array}
$$

$$
\begin{array}{l} - q ^ {2} \left(1 + r _ {2, 1} \tau\right) \left(1 + r _ {2, 2} \tau\right) \left(1 + r _ {3, 1} \tau\right) \\ - q (1 - q) \left[ \left(1 + r _ {1, 1} \tau\right) + \left(1 + r _ {2, 1} \tau\right) \right] \\ \end{array}
$$

$$
\begin{array}{l} \times (1 + r _ {1, 2} \tau) (1 + r _ {3, 2} \tau) - (1 - q) ^ {2} (1 + r _ {1, 1} \tau) \\ \times \left(1 + r _ {1, 2} \tau\right) \left(1 + r _ {2, 2} \tau\right) = 0 \tag {A3} \\ \end{array}
$$

We now solve equation (A3) for  $\theta_{2}$  using the bisection method.

From equation (A2) and equation (A3) we can generate the remainder of the no arbitrage equations that give the short rates in the binomial lattice. Note that equation (A2) can be written as

$$
\begin{array}{l} c _ {1, 1} \left(1 + r _ {1, 1} \tau\right) \left(1 + r _ {2, 1} \tau\right) + c _ {2, 1} \left(1 + r _ {2, 1} \tau\right) \\ + c _ {3, 1} \left(1 + r _ {1, 1} \tau\right) = 0 \tag {A4} \\ \end{array}
$$ and that equation (A3) can be written as


$$
\begin{array}{l} c _ {1, 2} \left(1 + r _ {1, 2} \tau\right) \left(1 + r _ {2, 2} \tau\right) \left(1 + r _ {3, 2} \tau\right) \\ + c _ {2, 2} \left(1 + r _ {2, 2} \tau\right) \left(1 + r _ {3, 2} \tau\right) + c _ {3, 2} \left(1 + r _ {1, 2} \tau\right) \\ \times \left(1 + r _ {3, 2} \tau\right) + c _ {4, 2} \left(1 + r _ {1, 2} \tau\right) \left(1 + r _ {2, 2} \tau\right) = 0 \tag {A5} \\ \end{array}
$$

$(1 + r_{3,2}\tau), b_{2,2} = a_{3,2}(1 + r_{1,2}\tau)(1 + r_{3,2}\tau)$ , and  $b_{3,2} = a_{4,2}(1 + r_{1,2}\tau)(1 + r_{2,2}\tau)$  and continue the process to obtain equation (41).

For the trinomial lattice no arbitrage polynomial we first solve for  $r_{1,1}$ ,  $r_{2,1}$ , and  $r_{3,1}$  in Figure 2. Equating the price from the spot rate term structure with the price from the trinomial lattice gives us

$$
P _ {2} = \frac {1}{(1 + R _ {2} \tau) ^ {2}} = \frac {q _ {1} p _ {1 , 1} + q _ {2} p _ {2 , 1} + q _ {3} p _ {3 , 1}}{1 + r _ {1 , 0} \tau}
$$ which is similar to equation (A1). Proceeding as in the binomial lattice we find that


$$
\begin{array}{l} P _ {2} \left(1 + r _ {1, 0} \tau\right) \left(1 + r _ {1, 1} \tau\right) \left(1 + r _ {2, 1} \tau\right) \left(1 + r _ {3, 1} \tau\right) \\ - q _ {1} \left(1 + r _ {2, 1} \tau\right) \left(1 + r _ {3, 1} \tau\right) - q _ {2} \left(1 + r _ {1, 1} \tau\right) \\ \times \left(1 + r _ {3, 1} \tau\right) - q _ {3} \left(1 + r _ {1, 1} \tau\right) \left(1 + r _ {2, 1} \tau\right) = 0 \tag {A6} \\ \end{array}
$$

As in the binomial case,  $r_{1,0} = R_1$  and equation (A6) is solved for  $\theta_{1}$  using the bisection method.

For the next period in the trinomial lattice (Figure 2) gives us

$$
\begin{array}{l} P _ {3} = \frac {1}{(1 + R _ {3} \tau) ^ {3}} = \frac {q p _ {1 , 1} + q _ {2} p _ {2 , 1} + q _ {3} p _ {3 , 1}}{1 + r _ {1 , 0} \tau} \\ = \frac {q _ {1} \left(\frac {q _ {1} p _ {1 , 2} + q _ {2} p _ {2 , 2} + q _ {3} p _ {3 , 2}}{1 + r _ {1 , 1} \tau}\right) + q _ {2} \left(\frac {q _ {1} p _ {2 , 2} + q _ {2} p _ {3 , 2} + q _ {3} p _ {3 , 3}}{1 + r _ {2 , 1} \tau}\right) + q _ {3} \left(\frac {q _ {1} p _ {3 , 3} + q _ {2} p _ {3 , 4} + q _ {3} p _ {3 , 5}}{1 + r _ {3 , 1} \tau}\right)}{1 + r _ {1 , 0} \tau} \\ \end{array}
$$ which simplifies to the following equation similar to equation (A3)


$$
\begin{array}{l} P _ {3} \left(1 + r _ {1, 0} \tau\right) \prod_ {j = 1} ^ {3} \left(1 + r _ {j, 1} \tau\right) \prod_ {j = 1} ^ {5} \left(1 + r _ {j, 2} \tau\right) \\ - q _ {1} ^ {2} \left(1 + r _ {2, 1} \tau\right) \left(1 + r _ {3, 1} \tau\right) \prod_ {j = 2} ^ {5} \left(1 + r _ {j, 2} \tau\right) \\ - \left[ q _ {1} q _ {2} \left(1 + r _ {2, 1} \tau\right) \left(1 + r _ {3, 1} \tau\right) + q _ {1} q _ {2} \left(1 + r _ {1, 1} \tau\right) \right. \\ \times (1 + r_{3,1}\tau)]\prod_{\substack{j = 1\\ j\neq 2}}^{5}\left(1 + r_{j,2}\tau\right) \\ - \left[ q _ {1} q _ {3} \left(1 + r _ {2, 1} \tau\right) \left(1 + r _ {3, 1} \tau\right) + q _ {2} ^ {2} \left(1 + r _ {1, 1} \tau\right) \right. \\ \times (1 + r _ {3, 1} \tau) + q _ {3} q _ {1} (1 + r _ {1, 1} \tau) (1 + r _ {2, 1} \tau) ] \\ \times \prod_ {\substack {j = 1 \\ j \neq 3}} ^ {5} \left(1 + r _ {j, 2} \tau\right) \tag{A7} \\ - \left[ q _ {2} q _ {3} \left(1 + r _ {1, 1} \tau\right) \left(1 + r _ {3, 1} \tau\right) + q _ {3} q _ {2} \left(1 + r _ {1, 1} \tau\right) \right. \\ \times (1 + r_{2,1}\tau)]\prod_{\substack{j = 1\\ j\neq 4}}^{5}\left(1 + r_{j,2}\tau\right) \\ - q _ {3} ^ {2} \left(1 + r _ {1, 1} \tau\right) \left(1 + r _ {2, 1} \tau\right) \prod_ {j = 1} ^ {4} \left(1 + r _ {j, 2} \tau\right) = 0 \\ \end{array}
$$

Equation (A7) is also solved for  $\theta_{2}$  using the bisection method. We now proceed as in the binomial lattice case to generate the no arbitrage equation for  $\theta_{i}$  given in equation (42).

# KEY POINTS

- Interest rates are commonly modeled using stochastic differential equations.
- One-factor models use a stochastic differential equation to represent the short rate and two-factor models use a stochastic differential equation for both the short rate and the long rate.


- The stochastic differential equations used to model interest rates must capture some of the market properties of interest rates such as mean reversion and/or a volatility that depends on the level of interest rates.
- The approaches used to implement the SDEs into a term structure model include equilibrium and no arbitrage.
- There are five different term structure models that evolve from three general stochastic differential equations.
- Without market calibration the models produce very different results.
- Both the end user and the developer must be aware of these properties in order to properly implement and interpret any results from the models.
- Even with calibration the models can produce different results. Calibration reduces the differences across the models but does not eliminate them.

# NOTES

1. Ho and Lee (1986).
2. Kalotay, Williams, and Fabozzi (1993).
3. See Buetow and Sochacki (2001).
4. See, for example, Cox, Ross, and Rubinstein (1979).
5. See Burden and Faires (1998).
6. For complete details see Hull and White (1994).

7. See Fabozzi, Buetow, and Johnson (2012) for more details on the behavior of putable and callable bonds.
8. Details of these phenomena are provided in Buetow, Hanke, and Fabozzi (2001).

# REFERENCES

Backus, D., Foresi, S., and Telmer, C. (2001). Affine term structure models and the forward premium anomaly. Journal of Finance 56: 279-304.
Black, F., Derman, E., and Toy, W. (1990). A one factor model of interest rates and its application to the Treasury bond options. *Financial Analyst Journal* 46: 33-39.
Black, F., and Karasinski, P. (1991). Bond and option pricing when short rates are lognormal. Financial Analyst Journal 47: 52-59.
Brennan, M., and Schwartz, E. (1979). A continuous time approach to the pricing of bonds. Journal of Banking and Finance 3: 133-155.
Brennan, M., and Schwartz, E. (1982). An equilibrium model of bond pricing and a test of market efficiency. Journal of Financial and Quantitative Analysis 17: 301-329.
Buetow, G. W., Hanke, B., and Fabozzi, F. J. (2001). The impact of different interest rate models on effective duration, effective convexity and option-adjusted spreads. Journal of Fixed Income 11: 41-53.
Buetow, G. W., and Sochacki, J. (2001). Binomial Interest Rate Models. Charlottesville, VA: AIMR Research Foundation.
Burden, R. L., and Faires, D. (1998). Numerical Methods, 2nd ed. Pacific Grove, CA: Brooks/ Cole.
Cox, J., Ingersoll, J., and Ross, S. (1985). A theory of the term structure of interest rates. *Econometrica* 53: 385-408.

Cox, J., Ross, S., and Rubinstein, M. (1979). Option pricing: A simplified approach. Journal of Financial Economics 7: 229-264.
Fabozzi, F. J., Buetow, G. W., and Johnson, R. (2012). Measuring interest rate risk. In F. J. Fabozzi (Ed.), The Handbook of Fixed Income Securities, 8th ed. New York: McGraw-Hill.
Heath, D., Jarrow, R., and Morton, A. (1992). Bond pricing and the term structure of interest rates: A new methodology. *Econometrica* 60: 77-105.
Ho, T., and Lee, S. (1986). Term structure movements and pricing interest rate contingent claims. Journal of Finance 41: 1011-1029.
