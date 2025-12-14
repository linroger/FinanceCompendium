---
aliases:
  - American Call Option Pricing
tags:
key_concepts:
parent_directory: Foundations of the Pricing of Financial Derivatives chapters
cssclasses: academia
title: "Chapter 19: American Call Option Pricing"
linter-yaml-title-alias: "Chapter 19: American Call Option Pricing"
---

# American Call Option Pricing

It is well known, as we covered in Chapter 2, that an American call option on an asset that makes no cash payments, such as dividends on stocks, during the life of the option will not be exercised early and, hence, can be valued as a European option with the standard Black-Scholes-Merton formula. If the underlying asset makes a cash payment during the life of the option, early exercise could possibly be optimal, thereby giving the American call a premium over a European call and rendering the Black-Scholes-Merton model inappropriate.<sup>1</sup> As we showed when covering the binomial model, valuation of such an option can be done by numerical methods, such as the binomial model, but it is also possible to obtain a closed-form valuation model. For an asset making a single payment during the life of the option, the model is called the Roll-Geske-Whaley model after Roll (1977), Geske (1979a, 1981), and Whaley (1981), and it is based on Geske's (1979b) compound option model.

Similar to Chapter 18, the analysis in this chapter will require more precise notation as we will work our way toward more than one dividend payment. Figure 19.1 illustrates this notation for a single dividend payment. Recall with a compound option we used  $T_{2}$  to denote the underlying option expiration, whereas here we will use  $T_{A}$  to denote the expiration of the American option. Thus,  $\tau_{A}$  denotes the time to expiration of an American option. As we will see, interim dividend payments are creating a condition analogous to the exercise of compound options. We denote the dividend dates as  $T_{1}, T_{2}$ , and so forth to allow for generalizations. Similarly,  $\tau_{1}$  denotes the time until the first dividend payment and  $\tau_{1A}$  denotes the time between the first dividend payment and the option time to expiration. The values of different instruments, such as assets and options, will use only the subscript to denote the observation date. For example,  $S_{1}$  denotes the asset value at time  $T_{1}$ . Where possible, we will drop the subscript  $t$  as it will be understood, thus  $S_{t} = S$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/e2c3cafed12723dbca6c9db80dd1e3ad016b3b1e18c79317d89b2b68653e60aa.jpg)  
FIGURE 19.1 American Option with Single Dividend Payment Timeline

# 19.1 CLOSED-FORM AMERICAN CALL PRICING: ROLL-GESKE-WHALEY

The Roll-Geske-Whaley (RGW) model requires that there be only one known cash payment made over the life of the option, such as a stock that pays quarterly dividends but with only one dividend to be paid before the option expires.

The amount of the payment is assumed to be known with certainty and is the amount  $D$ , and again the time in years until the payment date is  $\tau_{1}$ .<sup>2</sup> We assume that as the payment is made, the asset price falls by the amount of the payment, although this assumption can be relaxed such that it falls by a proportion of the payment. We are also given the asset volatility,  $\sigma$ , and the continuously compounded risk-free rate,  $r_{c}$ . Let us first define the following value  $S - De^{-r_c\tau_1}$ , which is simply the asset price minus the present value of the cash payment. We assume that this adjusted asset price follows the standard lognormal diffusion that is typically used in modeling asset price dynamics.<sup>3</sup> We denote the price of a European call on this asset as  $c$  and the price of an American call on this asset as  $C$ .

We can replicate the American call with three option positions, denoted OP1, OP2, and OP3. Thus, consider the following combination of option positions:

(OP1) A long position in a European call where the underlying is the stock that pays the known dividend with time to expiration  $\tau_{A}$  and exercise price  $X$ . So this option expires at the expiration of the American option we are pricing.  
(OP2) A short position in a European compound call option where the underlying option is the European call in (OP1). This compound option has a time to expiration of  $\tau_{1}$ , meaning that it expires when the dividend payment is made, and it has an exercise price of  $S_{1}^{*} + D - X$ , where  $S_{1}^{*}$  is defined next.  
(OP3) A long position in a European call option where the underlying is the stock that pays the known dividend with time to expiration of  $\tau_{1}$  and exercise price of  $S_{1}^{*}$  where  $S_{1}^{*}$  will be defined next.

The value  $S_{1}^{*}$  is the critical ex-dividend asset price above which the compound option will be exercised. The corresponding underlying call price  $(c^{*})$  is also found such that

$$
c ^ {*} = S _ {1} ^ {*} + D - X. \tag {19.1}
$$

In other words,  $S_1^*$  is the ex-dividend asset price that triggers early exercise.

To understand how these options combine to replicate the American call, let us assume that we are now positioned an instant before the cash payment is to be made at time  $T_{1}$ . The asset price is  $S_{1}^{+}$ . As soon as the payment is made, it will fall to  $S_{1}^{-}$ . Thus, to make the exercise decision, one would compare  $S_{1}^{-}$  to  $S_{1}^{*}$ . This critical price will be found by iteration, as we will shortly cover. Now, let us look at the payoffs of the three options: (OP1), (OP2), and (OP3).

$S_{1}^{-}\leq S_{1}^{*}$  (post-payment price is less than or equal to the critical price):

(OP1) Regardless of the post-payment price, this is a European call and cannot be exercised until its expiration  $T_{A}$ . It is simply worth its standard Black-Scholes-Merton value with remaining time  $\tau_{1A}$ .

(OP2) This compound option will be exercised or not depending on whether the value of (OP1) exceeds the exercise price of the compound option,  $S_{1}^{*} + D - X$ . The critical ex-dividend asset price is the one at which the option in (OP1) is precisely equal in value to  $S_{1}^{*} + D - X$ . Because the asset price  $S_{1}^{-}$  is less than  $S_{1}^{*}$ , as assumed in this case, then the value of the corresponding call  $(c_{1}^{-}) c_{1}^{-} < c^{*}$ , but by definition  $c^{*} = S_{1}^{*} + D - X$ . Thus  $c_{1}^{-} < S_{1}^{*} + D - X$ . Consequently, the compound option is out-of-the-money and is not exercised.  
(OP3) This is an expiring European call. Its exercise price  $S_{1}^{*}$  exceeds the ex-dividend price, so it expires worthless.

Thus if  $S_1^- < S_1^*$ , this combination of options produces no cash flow at this point and leaves us holding a European call with remaining expiration  $\tau_{1A}$ . Note that this is similar to an American call. If it does not get exercised early at the ex-dividend date, we are left holding a European call. Now consider the other possibility.  $S_1^- > S_1^*$  (ex-dividend price is greater than critical price):

(OP1) This call will be worth  $c_{1}$  when the stock goes ex-dividend. It has an exercise price of  $X$  and a remaining time of  $\tau_{1A}$ .  
(OP2) The compound option is expiring. Using the presented arguments, this option is now in-the-money and is exercised. Because we are short this option, we deliver the option in (OP1) and receive the exercise price  $S_1^* + D - X$ .  
(OP3) This option is a European call expiring right now. Its exercise price  $S_{1}^{*}$  is less than the current asset price  $S_{1}$  so it expires in-the-money. We own this option so we pay  $S_{1}^{*}$  and receive an asset worth  $S_{1}^{-}$ .

Thus if  $S_1^- \geq S_1^*$  the overall cash flow is  $S_1^- - S_1^* + S_1^* + D - X = S_1^- + D - X$ . Thus, we paid out  $X$  and received an asset worth  $S_1^-$  and its cash payment,  $D$ . We see that this combination of two standard European options, one long and one short with different exercise prices and expirations, and one compound option produce the same results as an American option. That is, if the ex-dividend asset price is below the critical price for justification of early exercise, the American call option holder is left holding an option with exercise price  $X$  and time to expiration  $\tau_{1A}$ . If the ex-dividend asset price is above the critical price for justification of early exercise, the American call option holder exercises the option, paying out  $X$  and receiving the dividend  $D$  and is left holding an asset worth  $S_1^-$ . These same results are obtained with the combination of options (OP1), (OP2), and (OP3).

The critical asset price for justification of exercise is the one such that it produces a Black-Scholes-Merton value of  $S_1^* + D - X$  for a European call with exercise price of  $X$  and a time to expiration of  $\tau_{1A}$ . This value must be derived iteratively by plugging in values into the Black-Scholes-Merton model with time to expiration of  $\tau_{1A}$  until the option value equals  $S_1^* + D - X$ . A good starting point estimate of  $S_1^*$  is  $X - D$  because the option would have to give a positive payoff to justify exercise, but the actual value of  $S_1^*$  will be much higher. Standard iterative equation-solving techniques such as Newton-Raphson can speed up the search. If early exercise is not justified at any price, due to too small of a cash

payment relative to the other values in the model,  $S_1^*$  will be infinite. In that case, our final solution will converge to Black-Scholes-Merton.

Because our combination of the three options replicates the American call, we can easily find the value of the American call by adding the values of options (OP1) and (OP3), which are given by the Black-Scholes-Merton model, and subtracting the value of option (OP2), which as a compound option is given by Geske's compound option formula. The values of these three options can be written as

$$
O P 1 = \left(S - D e ^ {- r _ {c} \tau_ {1}}\right) N _ {1} (a) - X e ^ {- r _ {c} \tau_ {A}} N _ {1} \left(a _ {2}\right)
$$

$$
O P 2 = \left(S - D e ^ {- r _ {c} \tau_ {1}}\right) N _ {2} \big (b _ {1}, a _ {1}, \rho \big) - X e ^ {- r _ {c} \tau_ {A}} N _ {2} \big (b _ {2}, a _ {2}, \rho \big) - \left(S _ {t} ^ {*} + D - X\right) e ^ {- r _ {c} \tau_ {1}} N _ {1} \big (b _ {2}, a _ {2}, \rho \big).
$$

$$
O P 3 = \left(S - D e ^ {- r _ {c} \tau_ {1}}\right) N _ {1} \left(b _ {1}\right) - S _ {t} ^ {*} e ^ {- r _ {c} \tau_ {1}} N _ {1} \left(b _ {2}\right), \tag {19.2}
$$

where

$$
a _ {1} = \frac {\ln \left[ (S - D e ^ {- r _ {c} \tau_ {1}}) / X \right] + (r _ {c} + \sigma^ {2} / 2) \tau_ {A}}{\sigma \sqrt {\tau_ {A}}}
$$

$$
a _ {2} = a _ {1} - \sigma \sqrt {\tau_ {A}}
$$

$$
b _ {1} = \frac {\ln \left[ (S - D e ^ {- r _ {c} \tau_ {1}}) / S _ {1} ^ {*} \right] + (r _ {c} + \sigma^ {2} / 2) \tau_ {1 A}}{\sigma \sqrt {\tau_ {1 A}}}
$$

$$
b _ {2} = b _ {1} - \sigma \sqrt {\tau_ {1 A}}
$$

$$
\rho = \sqrt {\tau_ {1} / \tau_ {A}}, \tag {19.3}
$$

where  $N_{1}(.)$  is the univariate normal probability and  $N_{2}(.)$  is the bivariate normal probability. These formulas can be consolidated to equal

$$
\begin{array}{l} C = O P 1 - O P 2 + O P 3 \\ = (S - D e ^ {- r _ {c} \tau_ {1}}) N _ {1} (a _ {1}) - (X - D) e ^ {- r _ {c} \tau_ {1}} N _ {1} (b _ {2}) \\ + (S - D e ^ {- r _ {c} \tau_ {1}}) \left[ N _ {1} (b _ {1}) - N _ {2} (b _ {1}, a _ {1}; \rho) \right] - X e ^ {- r _ {c} \tau_ {A}} \left[ N _ {1} (a _ {2}) - N _ {2} (b _ {2}, a _ {2}; \rho) \right]. (1 9. 4) \\ \end{array}
$$

The following relationships are known to exist between the univariate and the bivariate normal distributions:

$$
N _ {1} (x) - N _ {2} (x, y; \rho) = N _ {2} (x, - y; - \rho)
$$

$$
N _ {2} (x, y; \rho) = N _ {2} (y, x; \rho). \tag {19.5}
$$

Therefore, the third expression in Equation (19.4) can be written as

$$
(S - D e ^ {- \tau_ {c} \tau_ {1}}) N _ {2} \left(b _ {1}, - a _ {1}; - \rho\right), \tag {19.6}
$$

and the fourth expression can be written as

$$
X e ^ {- r _ {c} \tau_ {A}} \left[ N _ {1} (a _ {2}) - N _ {2} (a _ {2}, b _ {2}; \rho) \right] = X e ^ {- r _ {c} \tau_ {A}} N _ {2} (a _ {2}, - b _ {2}; - \rho). \tag {19.7}
$$

Thus, our formula now becomes

$$
\begin{array}{l} C = (S - D e ^ {- r _ {c} \tau_ {1}}) N _ {1} (a _ {1}) + (S - D e ^ {- r _ {c} \tau_ {1}}) N _ {2} (b _ {1}, - a _ {1}; - \rho) \\ - X e ^ {- r _ {c} \tau_ {A}} N _ {2} \left(a _ {2}, - b _ {2}; - \rho\right) - (X - D) e ^ {- r _ {c} \tau_ {1}} N _ {1} \left(b _ {2}\right). \tag {19.8} \\ \end{array}
$$

Now we can use the following relationship:

$$
N _ {1} \left(a _ {1}\right) + N _ {2} \left(b _ {1}, - a _ {1}; - \rho\right) = N _ {1} \left(b _ {1}\right) + N _ {2} \left(a _ {1}, - b _ {1}; - \rho\right). \tag {19.9}
$$

Substituting we obtain the overall solution as

$$
\begin{array}{l} C = (S - D e ^ {- r _ {c} \tau_ {1}}) N _ {1} (b _ {1}) + (S - D e ^ {- r _ {c} \tau_ {1}}) N _ {2} (a _ {1}, - b _ {1}; - \rho) \\ - X e ^ {- r _ {c} \tau_ {A}} N _ {2} (a _ {2}, - b _ {2}; - \rho) - (X - D) e ^ {- r _ {c} \tau_ {1}} N _ {1} (b _ {2}) o r \tag {19.10} \\ \end{array}
$$

$$
\begin{array}{l} C = (S - D e ^ {- r _ {c} \tau_ {1}}) N _ {1} (b _ {1}) - (X - D) e ^ {- r _ {c} \tau_ {1}} N _ {1} (b _ {2}) \\ + \left(S - D e ^ {- r _ {c} \tau_ {1}}\right) N _ {2} \left(a _ {1}, - b _ {1}; - \rho\right) - X e ^ {- r _ {c} \tau_ {A}} N _ {2} \left(a _ {2}, - b _ {2}; - \rho\right). \tag {19.11} \\ \end{array}
$$

Let us examine each of these four terms, using the interpretation based on the assumption of risk neutrality. The first term,  $(S - De^{-r_c\tau_1})N_1(b_1)$ , is the discounted expected value of the asset price at the payment day, conditional on the asset price exceeding the critical price. This term reflects the expected receipt of the asset on exercise of the option immediately before the dividend payment day. The term  $(X - D)e^{-r_c\tau_1}N_1(b_2)$  is the discounted expected payout at the payment day from exercise of the option. The probability term is the univariate probability of early exercise. The term,  $(S - De^{-r_c\tau_1})N_2(a_1, -b_1; -\rho)$ , is the discounted expected value of the asset price at the expiration, given that the option was not exercised early and ends up in-the-money. The other term,  $Xe^{-r_c\tau_A}N_2(a_2, -b_2; -\rho)$ , is the discounted expected payout of the exercise price at expiration, conditional on the option not having been exercised early and ends up in-the-money at expiration. Each of these interpretations is based on risk neutrality, which as we know is not an assumption about investor preferences but permits correct pricing of options. Thus, when we say one of these probabilities is the probability of something occurring, we mean the probability if investors were risk neutral.

Now let us observe how the formula converges to the Black-Scholes-Merton formula for the case of zero dividends. Letting  $D = 0$ , we have

$$
\begin{array}{l} C = S N _ {1} (b _ {1}) + S N _ {2} (a _ {1}, - b _ {1}; - \rho) \\ - X e ^ {- r _ {c} \tau_ {A}} N _ {2} \left(a _ {2}, - b _ {2}; - \rho\right) - X e ^ {- r _ {c} \tau_ {1}} N _ {1} \left(b _ {1}\right), \tag {19.12} \\ \end{array}
$$

with  $D = 0$ ,  $S_{t}^{*} \to \infty$ . Then  $b_{1} \to -\infty$  and  $b_{2} \to -\infty$ . Then  $N(b_{1}) = N(b_{2}) = 0$ . So this leaves us with

$$
C = S N _ {2} \left(a _ {1}, - b _ {1}; - \rho\right) - X e ^ {- r _ {c} \tau_ {A}} N _ {2} \left(a _ {2}, - b _ {2}; - \rho\right). \tag {19.13}
$$

The first probability in Equation (19.12) is defined as

$$
N _ {2} (a _ {1}, - b _ {1}; - \rho) = N _ {1} (a _ {1}) \int_ {- \infty} ^ {- b _ {1}} \frac {1}{\sqrt {2 \pi (1 - \rho^ {2})}} \exp \left(- \frac {1}{2} \frac {x ^ {2} - 2 \rho x y + y ^ {2}}{1 - \rho^ {2}}\right) d y. \tag {19.14}
$$

With  $-b_{1} \to \infty$ , then  $N_{2}(a_{1}, -b_{1}; -\rho) = N_{2}(a_{1}, \infty; -\rho)$  is the joint probability that  $x \leq a_{1}$  and  $b \leq \infty$ . This is simply  $N_{1}(a_{1})$ . Similarly,  $N_{2}(a_{2}, -b_{2}; -\rho) = N_{2}(a_{2}, \infty; -\rho) = N_{1}(a_{2})$ . This reduces the overall expression to

$$
S N _ {1} \left(a _ {1}\right) - X e ^ {- r _ {c} \tau_ {A}} N _ {1} \left(a _ {2}\right), \tag {19.15}
$$

which is the Black-Scholes-Merton formula, where  $a$  takes the place of  $d$  in the normal probability.

A numerical example of the one-dividend case is presented in Appendix 19A. Let us now take a look at the two-dividend case.

# 19.2 THE TWO-PAYMENT CASE

The single dividend model has been extended to cover the case of two known payments during the life of the option (Welch and Chen (1988) and Stephan and Whaley (1990)). Figure 19.2 illustrates the notation for the two-payment case. The notation follows closely the one-payment case and can easily be generalized.

Let the first payment be  $D_{1}$  and the time to the payment date be  $\tau_{1}$  and the second payment be  $D_{2}$  and the time to the second ex-dividend date be  $\tau_{2}$ . The solution is<sup>4</sup>

$$
\begin{array}{l} C = \left(S - D _ {1} e ^ {- r _ {c} \tau_ {1}}\right) \left(1 - N _ {3} \Big (- a _ {1,} - b _ {1}, - \hat {c} _ {1}; \sqrt {\tau_ {1} / \tau_ {A}}, \sqrt {\tau_ {2} / \tau_ {A}}, \sqrt {\tau_ {1} / \tau_ {2}} \Big)\right) \\ - X \left[ e ^ {- r _ {c} \tau_ {1}} N _ {1} (\hat {c} _ {2}) + e ^ {- r _ {c} \tau_ {2}} N _ {2} \Big (b _ {2}, - \hat {c} _ {2}; - \sqrt {\tau_ {1} / \tau_ {2}} \Big) \right] \\ + e ^ {- r _ {c} \tau_ {A}} N _ {3} \Big (a _ {2}, - b _ {2}, - \widehat {c} _ {2}; - \sqrt {\tau_ {1} / \tau_ {A}}, \sqrt {\tau_ {2} / \tau_ {A}}, \sqrt {\tau_ {1} / \tau_ {2}} \Big) \\ + D _ {1} e ^ {- r _ {c} \tau_ {1}} N _ {1} (\widehat {c} _ {2}) + D _ {2} e ^ {- r _ {c} \tau_ {2}} \left[ N _ {1} (\widehat {c} _ {1}) + N _ {2} (\widehat {b} _ {2}, - \widehat {c} _ {2}; - \sqrt {\tau_ {1} / \tau_ {2}}) \right], \tag {19.16} \\ \end{array}
$$

where

$$
a _ {1} = \frac {\ln \left[ \left(S - D _ {1} e ^ {- r _ {c} \tau_ {1}} - D _ {2} e ^ {- r _ {c} \tau_ {2}}\right) / X \right] + \left(r _ {c} + \sigma^ {2} / 2\right) \tau_ {A}}{\sigma \sqrt {\tau_ {A}}}
$$

$$
a _ {2} = a _ {1} - \sigma \sqrt {\tau_ {A}}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-11-29/1544da6e-16aa-40d8-b440-e595d80144c8/9bb0b94ef61747a7acb21d3dbda0ca2f22c357efacf035d695df37b5ceb017de.jpg)  
FIGURE 19.2 American Option with Two Dividend Payments Timeline

$$
b _ {1} = \frac {\ln \left[ \left(S - D _ {1} e ^ {- r _ {c} \tau_ {1}} - D _ {2} e ^ {- r _ {c} \tau_ {2}}\right) / S _ {t _ {2}} ^ {*} \right] + \left(r _ {c} + \sigma^ {2} / 2\right) \tau_ {2}}{\sigma \sqrt {\tau_ {2}}}
$$

$$
b _ {2} = b _ {1} - \sigma \sqrt {\tau_ {2}}
$$

$$
\hat {c} _ {1} = \frac {\ln \left[ \left(S - D _ {1} e ^ {- r _ {c} \tau_ {1}} - D _ {2} e ^ {- r _ {c} \tau_ {2}}\right) / S _ {t _ {1}} ^ {*} \right] + \left(r _ {c} + \sigma^ {2} / 2\right) \tau_ {1}}{\sigma \sqrt {\tau_ {1}}}
$$

$$
\hat {c} _ {2} = \hat {c} _ {1} - \sigma \sqrt {\tau_ {1}}. \tag {19.17}
$$

The critical stock prices are defined by the relationships,

$$
c _ {1} ^ {*} = S _ {t _ {1}} ^ {*} + D _ {1} + D _ {2} e ^ {- r _ {c} \left(\tau_ {2} - \tau_ {1}\right)} - X
$$

$$
c _ {2} ^ {*} = S _ {t _ {2}} ^ {*} + D _ {2} - X. \tag {19.18}
$$

Note that in the first case, the critical stock price at the first payment date must equate the exercise value, the right-hand side, to the value of an American call. This American call price would come from the one-payment American call formula that we derived in the previous section. At the second payment date, the critical price equates the exercise value with the Black-Scholes-Merton price of a European call with time  $T - t_{2}$  remaining.

The probability  $N_{3}\big(x,y,z;\rho_{xy},\rho_{xz},\rho_{yz}\big)$  is the trivariate normal probability. It can be calculated by defining it in relation to the univariate normal probability as follows:

$$
N _ {3} (x, y, z; \rho_ {x y}, \rho_ {x z}, \rho_ {y z}) = \int_ {- \infty} ^ {y} N _ {1} \left(\frac {y - \rho_ {x y} q}{\sqrt {1 - \rho_ {x y} ^ {2}}}\right) N _ {1} \left(\frac {z - \rho_ {y z} q}{\sqrt {1 - \rho_ {y z} ^ {2}}}\right) N _ {1} (q) d q, \tag {19.19}
$$

where  $n_1(q)$  is the univariate normal density function. Numerical integration can usually be used to evaluate this integral.

In the two-payment case, the problem can sometimes be simplified. Simplification can be very beneficial in coding. In particular, great savings can be amassed when not having to solve for the critical stock prices that trigger early exercise. Consider the following cases, which are collectively exhaustive:

$D_{1} = D_{2} = 0$  : Use the Black-Scholes-Merton model.

$D_{1} < X\left(1 - e^{-r_{c}(\tau_{2} - \tau_{1})}\right), D_{2} = 0:$  The first cash payment is too small to justify early exercise. Then use the Black-Scholes-Merton model with  $S - D_{1}e^{-r_{c}\tau_{1}}$  as the asset price.

$D_{1} > X\left(1 - e^{-r_{c}(\tau_{2} - \tau_{1})}\right), D_{2} = 0:$  Early exercise is possible at the first payment date, but not at the second. Then use the one-payment American call formula.

$D_{1} < X\left(1 - e^{-r_{c}(\tau_{2} - \tau_{1})}\right)$  and  $D_{2} < X\left(1 - e^{-r_{c}(\tau_{A} - \tau_{2})}\right)$ : Both payments are too small to justify early exercise. Then use  $S - D_{1}e^{-r_{c}\tau_{1}} - D_{2}e^{-r_{c}\tau_{2}}$  as the asset price in the Black-Scholes-Merton model.

$D_{1} < X\left(1 - e^{-r_{c}(\tau_{2} - \tau_{1})}\right)$  and  $D_{2} > X\left(1 - e^{-r_{c}(\tau_{A} - \tau_{2})}\right)$ : The option will not be exercised at the first payment date because  $D_{1}$  is too small, but it could be exercised at the second. Use the one-payment American call formula, but we will still need to subtract the present value of both payments from the asset price.

$D_{1} > X\left(1 - e^{-r_{c}(\tau_{2} - \tau_{1})}\right)$  and  $D_{2} < X\left(1 - e^{-r_{c}(\tau_{A} - \tau_{2})}\right)$ : The option could be exercised at the first payment date but not the second. Use the one-payment American call formula, but we will still need to subtract the present value of both payments from the asset price.

$D_{1} > X\left(1 - e^{-r_{c}(\tau_{2} - \tau_{1})}\right)$  and  $D_{2} > X\left(1 - e^{-r_{c}(\tau_{A} - \tau_{2})}\right)$ : The option could be exercised at either payment date. Then use the two-payment American call formula as described.

The advantage of recognizing these special cases where the two-payment model reverts to something simpler lies in programming efficiency. If any of those conditions are met, the program can execute the simpler formula.

For more than two payments, the model would extend in the same manner. For  $n$  payments, one would be required to evaluate an  $(n + 1)$  variate normal probability distribution, but computation of multivariate normal integrals is quite difficult. In that case, one usually would use a numerical method such as a binomial model or finite difference approach, the latter of which we cover in Chapter 24.

In addition, Macmillan (1986) and Barone-Adesi and Whaley (1987) have developed approximation techniques for American options. They split the option price into two components: the European option value and the early exercise premium. They then obtain the partial differential equation for the early exercise premium, make some simplifying assumptions, and obtain a quadratic equation that approximates the solution. This method was very useful during the era in which computers did not have the speed they have today. In more current times, exact multivariate calculations and binomial methods are much more feasible. Research has continued to provide other formulas, but ultimately the best methods for American call option pricing are the Roll-Geske-Whaley technique and the binomial model.

# 19.3 RECAP AND PREVIEW

In this chapter, we looked at the pricing of American call options. We had previously learned how to price them using the binomial model, but here we see that a closed-form solution, which uses the compound option pricing model, is possible. We saw that the complicating factor is the existence of a dividend during the life of the option. The model must accommodate whether the holder exercises early to get the dividend or holds on to the option. The bivariate normal distribution is used to accommodate the existence of two exercise decisions—the one early and the one at expiration. Multiple dividends can be handled using a multivariate normal distribution.

In Chapter 20, we show that this approach can also be applied to put options.

# APPENDIX 19A

# Numerical Example of the One-Dividend Model

Consider a stock priced at  $S = 100$  with a volatility of  $20\%$  and a time to expiration of  $\tau_{A} = 1$  (one year). Suppose in nine months, the stock pays a dividend of 2.0. Thus,  $D_{1} = 2.0$ , and  $\tau_{1} = 0.75$ . The continuously compounded risk-free rate is  $4\%$ . Let us first calculate the price if this option were European. Recall that we determine the stock price minus the present value of the dividends, which is

$$
S _ {t} - D e ^ {- r _ {c} \tau_ {1}} = 1 0 0 - 2 e ^ {- 0. 0 4 (0. 7 5)} = 9 8. 0 5 9 1.
$$

We then insert this value for the stock price into the Black-Scholes-Merton formula, and we obtain a value of 8.7622.

For the compound option model, we must first find the critical ex-dividend price for early exercise. Remember that we are looking for a stock price,  $S^*$ , that forces the value of a standard European option to equal,  $S^* + D - X = S^* + 2 - 100 = S^* - 98$ . By trial and error, we find that this price is 108.5172. To demonstrate that this is true, simply plug 108.5172 into the Black-Scholes-Merton model with time to expiration of 0.25. We would obtain 10.5197. Then find  $S^* - 98 = 108.5172 - 98 = 10.5172$ . These values are close enough. $^5$

Recall that the American call formula is Equation (19.11), which is as follows:

$$
\begin{array}{l} \left(1 0 0 - 2 e ^ {- 0. 0 4 (0. 7 5)}\right) N _ {1} \left(b _ {1}\right) + \left(1 0 0 - 2 e ^ {- 0. 0 4 (0. 7 5)}\right) N _ {2} \left(a _ {1}, - b _ {1}; - \rho\right) \\ - 1 0 0 e ^ {- 0. 0 4 (1)} N _ {2} \left(a _ {2}, - b _ {2}; - \rho\right) - (1 0 0 - 2) e ^ {- 0. 0 4 (0. 7 5)} N _ {1} \left(b _ {2}\right). \\ \end{array}
$$

The various values that go into the normal probabilities are as follows:

$$
\begin{array}{l} a _ {1} = \frac {\ln \left[ \left(1 0 0 - 2 e ^ {- 0 . 0 4 (0 . 7 5)}\right) / 1 0 0 \right] + \left(0 . 0 4 + (0 . 2) ^ {2} / 2\right) (1)}{0 . 2 \sqrt {1}} = 0. 2 0 2 0 0 1 \\ a _ {2} = 0. 2 0 2 0 0 1 - 0. 2 \sqrt {1} = 0. 0 0 2 0 0 1 \\ b _ {1} = \frac {\ln \left[ \left(1 0 0 - 2 e ^ {- 0 . 0 4 (0 . 7 5)}\right) / 1 0 8 . 5 1 7 2 \right] + \left(0 . 0 4 + (0 . 2) ^ {2} / 2\right) (0 . 7 5)}{0 . 2 \sqrt {0 . 7 5}} = - 0. 3 2 5 2 7 \\ b _ {2} = 0. 3 2 5 2 7 - 0. 2 \sqrt {1 - 0 . 2 5} = - 0. 4 9 8 4 7 \\ \rho = \sqrt {0 . 7 5 / 1} = 0. 8 6 6 0. \\ \end{array}
$$

Now we calculate the probabilities using spreadsheet routines as covered in Chapter 5:

$$
\begin{array}{l} N _ {1} (b _ {1}) = N _ {1} (- 0. 3 2 5 2 7) = 0. 3 7 2 4 8 9 \\ N _ {2} \left(a _ {1}, - b _ {1}; - \rho\right) = N _ {2} (0. 2 0 2 0 0 1, 0. 3 2 5 2 7; - 0. 8 6 6 0) = 0. 2 2 4 4 9 2 \\ \end{array}
$$

$$
N _ {2} \big (a _ {2}, - b _ {2}; - \rho \big) = N _ {2} (0. 0 0 2 0 0 1, 0. 4 9 8 4 7; - 0. 8 6 6 0) = 0. 2 0 9 8 4 9
$$

$$
N _ {1} \left(b _ {2}\right) = N _ {1} (- 0. 4 9 8 4 7) = 0. 3 0 9 0 7 5.
$$

The option value is, therefore,

$$
\begin{array}{l} 9 8. 0 5 9 1 (0. 3 7 2 4 8 9) + 9 8. 0 5 9 1 (0. 2 2 4 4 9 2) \\ - 1 0 0 e ^ {- 0. 0 4 (1)} 0. 2 0 9 8 4 9 - (1 0 0 - 2) e ^ {- 0. 0 4 (0. 7 5)} (0. 3 0 9 0 7 5) \\ = 8. 9 8 3 1 5 5. \\ \end{array}
$$

# QUESTIONS AND PROBLEMS

1 "An American call option on a stock that does not pay a dividend during the life of the option will not be exercised early and, hence, can be valued as a European option with the standard Black-Scholes-Merton formula." Prove this statement.  
2 An American call option with one dividend payment can be valued based on the following equation. Provide an interpretation of this expression:

$$
\begin{array}{l} C = \left(S - D e ^ {- r _ {c} \tau_ {1}}\right) N _ {1} \left(b _ {1}\right) - (X - D) e ^ {- r _ {c} \tau_ {1}} N _ {1} \left(b _ {2}\right) \\ + \left(S - D e ^ {- r _ {c} \tau_ {1}}\right) N _ {2} \big (a _ {1}, - b _ {1}; - \rho \big) - X e ^ {- r _ {c} \tau_ {A}} N _ {2} \big (a _ {2}, - b _ {2}; - \rho \big). \\ \end{array}
$$

3 Explain the variable,  $S_{t}^{*}$ , contained in the American call option model with one dividend presented in this chapter.  
4 Explain the variables  $S_{t_1}^*$  and  $S_{t_2}^*$  contained in the American call option model with two dividends presented in this chapter.  
5 Interpret the variable  $N_{3}(x,y,z;\rho_{xy},\rho_{xz},\rho_{yz})$  contained in the American call option model with two dividends presented in this chapter.  
[Contributed by Jason Priddle] Explain why it is necessary to use a compound option to value an American call on a dividend-paying stock.  
[Contributed by Dennel McKenzie] Write out the equations that implicitly solve for the critical stock price for early exercise of an American call if the underlying stock pays three dividends,  $D_{1}$ ,  $D_{2}$ , and  $D_{3}$ , with respective times with ex-dividend dates of  $t_{1}$ ,  $t_{2}$ , and  $t_{3}$ . There will be three equations, one for each ex-dividend date.

# NOTES

1. It is well known that the lower bound of an American call on an asset that makes cash payments is  $S - PV(X) - PV(D)$ , where  $S$  is the current asset price,  $\mathrm{PV}(X)$  is the present value of the exercise price, and  $\mathrm{PV}(D)$  is the present value of the cash payments (dividends) over the life of the option. If this option were exercised, it would give a payoff of  $S - X$ . Clearly if  $X - PV(X) > PV(D)$ , meaning, the interest forgone on paying the exercise price early exceeds the benefit of the dividends, early exercise will not be justified. This scenario will occur with a combination of small

cash payments, a high interest rate, and a high exercise price. Because such options will not be exercised early, they can, therefore, be valued using the Black-Scholes-Merton model with the asset price reduced by the present value of the dividends. Because this condition is not always met, it could be possible to justify early exercise.

2. For stocks, the relevant date is the ex-dividend date, because that is the date on which the stock price falls to reflect the fact that anyone holding the stock after that time forgoes the dividend. If the ex-dividend day is 35 days from now,  $\tau_{1} = 35 / 365$ . We ignore the delay between the ex-dividend date and the actual payment date a few weeks later.  
3. Roll (1977) assumed that the asset price follows the lognormal diffusion, but this cannot be true if the dividend component of the asset price is non-stochastic. This correction was made by Whaley (1981). In other words, the statistical process that follows a lognormal diffusion is the asset price minus the present value of the dividends.  
4. We use  $\hat{c}$  to distinguish these values from the call price.  
5. How close we make them depends on what we tell the iterative technique about how close is close enough so that it can stop. Here we are within a tenth of a penny.

