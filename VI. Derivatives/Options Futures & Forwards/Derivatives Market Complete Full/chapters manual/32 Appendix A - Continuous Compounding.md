---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: Appendix A - Continuous Compounding
linter-yaml-title-alias: Appendix A - Continuous Compounding
---

# Appendix A - Continuous Compounding

Effective annual interest rates and continuously compounded interest rates are simply different conventions for expressing the same idea: If you invest  \$1 today, how much will you have after 1 year? One simple unambiguous way to answer this question is using zero-coupon bonds. If you invest\$ 1 in zero-coupon bonds costing  $P(0, T)$  for a \$1 maturity payoff at time  $T$ , then at time  $T$  you will have  $1 / P(0, T)$  dollars. However, it is more common to answer the question using interest rates rather than zero-coupon bond prices.

Interest rates measure the rate of appreciation of an investment, but there are innumerable ways of quoting interest rates. Continuous compounding turns out to provide a particularly simple quoting convention, though it may not seem so simple at first. Since in practice option pricing formulas and other financial formulas make use of continuous compounding, it is important to be comfortable with it.

You might think that continuous compounding is not much used in the real world and, hence, there is no point in using it when studying derivatives. It is true that an auto dealer is likely to give you a blank stare if you inquire about the continuously compounded loan rate for your new car. However, continuous compounding does have advantages, and it is not often appreciated that almost all interest rate quoting conventions are complicated, some devilishly so.

# I. THE LANGUAGE OF INTEREST RATES

We begin with definitions. There are two terms that we will use often to refer to interest rates:

Effective annual rate. If  $r$  is quoted as an effective annual rate, this means that if you invest  $1, n$  years later you will have  $(1 + r)^n$ . If you invest  $x_0$  and earn  $x_n$  years later, then the implied effective annual rate is  $\left(x_n / x_0\right)^{1/n} - 1$ .

Continuously compounded rate. If  $r$  is quoted as an annualized continuously compounded rate, this means that if you invest  $1, n$  years later you will have  $e^{rn}$ . If you invest  $x_0$  and earn  $x_n$  years later, then the implied annual continuously compounded rate is  $\ln \left( \frac{x_n}{x_0} \right) / n$ .

Let's look at this definition in more detail.

From Appendix B of Derivatives Markets, Third Edition, Robert McDonald. Copyright © 2013 by Pearson Education, Inc. Published by Pearson Prentice Hall. All rights reserved.

# 2. THE LOGARITHMIC AND EXPONENTIAL FUNCTIONS

Interest rates are typically quoted as " $r\%$  per year, compounded  $n$  times per year." As every beginning finance student learns, this has the interpretation that you will earn an interest rate of  $r/n$  per period for  $n$  periods. Thus, if you invest 1 today, in 1 year you will have

$$
\left(1 + \frac {r}{n}\right) ^ {n}
$$

In  $T$  years you will have

$$
\left(1 + \frac {r}{n}\right) ^ {n T} \tag {1}
$$

What happens if we let  $n$  get very large, that is, if interest is compounded many times a year (even daily or hourly)? If, for example, the interest rate is  $10\%$ , after 3 years we will have

- (\ 1 + 0.1)^3 = \$ 1.331 with annual compounding,
- (\ 1 + 0.1 / 12)^{36} = \$ 1.3482 with monthly compounding,
- (\ 1 + 0.1 / 365)^{1095} = \$ 1.34980 with daily compounding, and
- (\ 1 + 0.1 / 8760)^{26,280} = \$ 1.349856 with hourly compounding.

The exponential function is  $e^x$ , where  $e$  is a constant approximately equal to 2.71828. If compounding is continuous—that is, if interest accrues every instant—then we can use the exponential function to compute future values. For example, with a  $10\%$  continuously compounded rate, after 3 years we will have a future value of

$$ e ^ {0. 1 \times 3} = \\ \\text{\1.349859}
$$

Notice that assuming continuous compounding gives us a result very close to that assuming daily compounding. In Excel, we compute continuously compounded results using the built-in exponential function.

The above example is computed as  $\exp (0.1\times 3)$

Why does the exponential function work? The number  $e$  is defined as

$$ e ^ {r T} \equiv \lim  _ {n \rightarrow \infty} \left(1 + \frac {r}{n}\right) ^ {n T} \tag {2}
$$

Thus, the expression defining  $e$  is the same expression used for interest compounding calculations, equation (1)! By using  $e$ , you can compute a future value.

If you know how much you have earned from a 1 investment, you can determine the continuously compounded rate of return by using the natural logarithm, ln. The function \ln is the inverse of the exponential function in that it takes a dollar amount and gives you a rate of return. In other words, if you apply the logarithmic function to the exponential function, you compute the original argument to the exponential function. Here is an example:

$$
\ln (e ^ {r t}) = r t
$$

Example I. Suppose you have a zero-coupon bond that matures in 5 years. The price today is \$62.092 for a bond that pays \$100. The annually compounded rate of return is

$$
\left(\frac {\mathbb {S} 1 0 0}{\mathbb {S} 6 2 . 0 9 2}\right) ^ {1 / 5} - 1 = 0. 1 0
$$

The continuously compounded rate of return is

$$
\frac {\ln (\mathbb {S} 1 0 0 / \mathbb {S} 6 2 . 0 9 2)}{5} = \frac {0 . 4 7 6 5 5}{5} = 0. 0 9 5 3 1
$$

The continuously compounded rate of return of  $9.53\%$  corresponds to the annually compounded rate of return of  $10\%$ . To verify this, observe that

$$ e ^ {0. 0 9 5 3} = 1. 1 0
$$

Finally, note that

$$
\ln (1. 1 0) = \ln \left(e ^ {0. 0 9 5 3}\right) = 0. 0 9 5 3
$$

# Changing Interest Rates

When we multiply exponentials, exponents add. So we have

$$ e ^ {x} e ^ {y} = e ^ {x + y}
$$

Suppose you can invest for 4 years, earning a continuously compounded return of  $5\%$  the first 2 years and  $6\%$  the second 2 years. If you invest 1 today, after 4 years you will have

$$ e ^ {2 \times 0. 0 5} e ^ {2 \times 0. 0 6} = e ^ {0. 1 0 + 0. 1 2} = \$ 1. 2 4 6 1

$$

We could of course do the same calculation using effective annual rates. For the first 2 years, we earn  $e^{0.05} - 1 = 5.127\%$ , and for the second 2 years,  $e^{0.06} = 6.184\%$ . The future value of 1 is

$$
1. 0 5 1 2 7 ^ {2} 1. 0 6 1 8 4 ^ {2} = \$ 1. 2 4 6 1
$$

This calculation gives us the same answer.

What is the average annual rate earned over the 4 years? The average annual continuously compounded rate is

$$

\frac {1}{4} \ln (1. 2 4 6 0 8) = 0. 0 5 5

$$ which is the average of  $5\%$  and  $6\%$ .

However, if we express the answer in terms of effective annual rates, we get

$$
1.24608 ^ {0.25} - 1 = 5.6541 \%
$$

This is not the average of  $5.127\%$  and  $6.184\%$ , which is 5.6555. This makes calculations with continuous compounding easier.

# Symmetry for Increases and Decreases

On March 4, 1999, the NASDAQ composite index closed at 2292.89. On March 10, 2000, the index closed at 5048.62. On January 2, 2001, the index closed at 2291.86, essentially the same level as in March 1999. The percentage increase from March 1999 to March 2000 was

$$
\frac{5048.62}{2292.89} -1 = 120.19\%
$$

The subsequent decrease was

$$
\frac{2291.86}{5048.62} -1 = -54.60\%
$$

When computing simple rates of return, a price can have an increase exceeding  $100\%$ , but its decrease can never be greater than  $100\%$ .

We can do the same calculations using continuous compounding. The continuously compounded increase from March 1999 to March 2000 was

$$
\ln (5048.62 / 2292.89) = 78.93 \%
$$ while the subsequent decrease was


$$

\ln (2291.86 / 5048.62) = -78.97 \%

$$

When using continuous compounding, increases and decreases are symmetric.

Moreover, if the index dropped to 1000, the continuously compounded return from the peak would be

$$

\ln (1000 / 5048.62) = -161.91 \%

$$

Continuously compounded returns can be less than  $-100\%$ .
